; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/configure.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ConfigureMapInfo = type { ptr, ptr }
%struct._ConfigureInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@configure_semaphore = internal global ptr null, align 8, !dbg !0
@configure_cache = internal unnamed_addr global ptr null, align 8, !dbg !236
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/configure.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Searching for configure file: \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UnableToOpenConfigureFile\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"MAGICK_CONFIGURE_PATH\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"MAGICK_HOME\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s/etc/%s/\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ImageMagick-6\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s/share/%s/\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"/usr/lib64/ImageMagick-6.8.9//config-Q16/\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%s%s.config%sImageMagick%s\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%s%s.magick%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Name           Value\0A\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"configure.xml\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@ConfigureMap = internal unnamed_addr constant [3 x %struct._ConfigureMapInfo] [%struct._ConfigureMapInfo { ptr @.str.42, ptr @.str.43 }, %struct._ConfigureMapInfo { ptr @.str.44, ptr @.str.45 }, %struct._ConfigureMapInfo { ptr @.str.46, ptr @.str.2 }], align 16, !dbg !239
@.str.28 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Loading configure file \22%s\22 ...\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"<configure\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ImageMagick\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"QuantumDepth\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"FEATURES\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ConfigureComponentGenesis() local_unnamed_addr #0 !dbg !257 {
entry:
  %0 = load ptr, ptr @configure_semaphore, align 8, !dbg !261, !tbaa !263
  %cmp = icmp eq ptr %0, null, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #11, !dbg !269
  store ptr %call, ptr @configure_semaphore, align 8, !dbg !270, !tbaa !263
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !272
}

declare !dbg !273 ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ConfigureComponentTerminus() local_unnamed_addr #0 !dbg !276 {
entry:
  %0 = load ptr, ptr @configure_semaphore, align 8, !dbg !279, !tbaa !263
  %cmp = icmp eq ptr %0, null, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #11, !dbg !283
  %.pre = load ptr, ptr @configure_semaphore, align 8, !dbg !284, !tbaa !263
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !284
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !285
  %2 = load ptr, ptr @configure_cache, align 8, !dbg !286, !tbaa !263
  %cmp1.not = icmp eq ptr %2, null, !dbg !288
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !289

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %2, ptr noundef nonnull @DestroyConfigureElement) #11, !dbg !290
  br label %if.end3, !dbg !291

if.end3:                                          ; preds = %if.then2, %if.end
  store ptr null, ptr @configure_cache, align 8, !dbg !292, !tbaa !263
  %3 = load ptr, ptr @configure_semaphore, align 8, !dbg !293, !tbaa !263
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #11, !dbg !294
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @configure_semaphore) #11, !dbg !295
  ret void, !dbg !296
}

declare !dbg !297 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !301 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !304 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyConfigureElement(ptr noundef %configure_info) #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata ptr %configure_info, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %configure_info, metadata !313, metadata !DIExpression()), !dbg !314
  %exempt = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info, i64 0, i32 3, !dbg !315
  %0 = load i32, ptr %exempt, align 8, !dbg !315, !tbaa !317
  %cmp = icmp eq i32 %0, 0, !dbg !320
  br i1 %cmp, label %if.then, label %if.end17, !dbg !321

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info, i64 0, i32 2, !dbg !322
  %1 = load ptr, ptr %value, align 8, !dbg !322, !tbaa !325
  %cmp1.not = icmp eq ptr %1, null, !dbg !326
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !327

if.then2:                                         ; preds = %if.then
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #11, !dbg !328
  store ptr %call, ptr %value, align 8, !dbg !329, !tbaa !325
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then2, %if.then
  %name = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info, i64 0, i32 1, !dbg !331
  %2 = load ptr, ptr %name, align 8, !dbg !331, !tbaa !333
  %cmp5.not = icmp eq ptr %2, null, !dbg !334
  br i1 %cmp5.not, label %if.end10, label %if.then6, !dbg !335

if.then6:                                         ; preds = %if.end
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %2) #11, !dbg !336
  store ptr %call8, ptr %name, align 8, !dbg !337, !tbaa !333
  br label %if.end10, !dbg !338

if.end10:                                         ; preds = %if.then6, %if.end
  %3 = load ptr, ptr %configure_info, align 8, !dbg !339, !tbaa !341
  %cmp11.not = icmp eq ptr %3, null, !dbg !342
  br i1 %cmp11.not, label %if.end17, label %if.then12, !dbg !343

if.then12:                                        ; preds = %if.end10
  %call14 = tail call ptr @DestroyString(ptr noundef nonnull %3) #11, !dbg !344
  store ptr %call14, ptr %configure_info, align 8, !dbg !345, !tbaa !341
  br label %if.end17, !dbg !346

if.end17:                                         ; preds = %if.end10, %if.then12, %entry
  %call18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %configure_info) #11, !dbg !347
  call void @llvm.dbg.value(metadata ptr %call18, metadata !313, metadata !DIExpression()), !dbg !314
  ret ptr null, !dbg !348
}

declare !dbg !349 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !350 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyConfigureOptions(ptr noundef %options) local_unnamed_addr #0 !dbg !351 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !355, metadata !DIExpression()), !dbg !356
  %call = tail call ptr @DestroyLinkedList(ptr noundef %options, ptr noundef nonnull @DestroyOptions) #11, !dbg !357
  ret ptr %call, !dbg !358
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyOptions(ptr noundef %option) #0 !dbg !359 {
entry:
  call void @llvm.dbg.value(metadata ptr %option, metadata !361, metadata !DIExpression()), !dbg !362
  %call = tail call ptr @DestroyStringInfo(ptr noundef %option) #11, !dbg !363
  ret ptr %call, !dbg !364
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureInfo(ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !365 {
entry:
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !382, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata ptr %exception, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata ptr %exception, metadata !386, metadata !DIExpression()) #11, !dbg !391
  %0 = load ptr, ptr @configure_cache, align 8, !dbg !394, !tbaa !263
  %cmp.i = icmp eq ptr %0, null, !dbg !396
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !397

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @configure_semaphore, align 8, !dbg !398, !tbaa !263
  %cmp1.i = icmp eq ptr %1, null, !dbg !401
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !402

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #11, !dbg !403
  %.pre.i = load ptr, ptr @configure_semaphore, align 8, !dbg !404, !tbaa !263
  br label %if.end.i, !dbg !403

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !404
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !405
  %3 = load ptr, ptr @configure_cache, align 8, !dbg !406, !tbaa !263
  %cmp3.i = icmp eq ptr %3, null, !dbg !408
  br i1 %cmp3.i, label %if.then4.i, label %IsConfigureCacheInstantiated.exit, !dbg !409

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !410, metadata !DIExpression()) #11, !dbg !432
  call void @llvm.dbg.value(metadata ptr %exception, metadata !415, metadata !DIExpression()) #11, !dbg !432
  %call.i.i = tail call ptr @NewLinkedList(i64 noundef 0) #11, !dbg !434
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !417, metadata !DIExpression()) #11, !dbg !432
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !435
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !436

if.then.i.i:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #11, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !425, metadata !DIExpression()) #11, !dbg !437
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #11, !dbg !437
  %call2.i.i = tail call ptr @__errno_location() #12, !dbg !437
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !437, !tbaa !438
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #11, !dbg !437
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !422, metadata !DIExpression()) #11, !dbg !440
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %call3.i.i) #11, !dbg !437
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #11, !dbg !437
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !422, metadata !DIExpression()) #11, !dbg !440
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #11, !dbg !437
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #11, !dbg !437
  call void @MagickCoreTerminus() #11, !dbg !437
  call void @_exit(i32 noundef 1) #13, !dbg !437
  unreachable, !dbg !437

if.end.i.i:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !419, metadata !DIExpression()) #11, !dbg !432
  %call7.i.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.26, ptr noundef %exception) #11, !dbg !441
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !418, metadata !DIExpression()) #11, !dbg !432
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #11, !dbg !442
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !416, metadata !DIExpression()) #11, !dbg !432
  %cmp9.not1.i.i = icmp eq ptr %call8.i.i, null, !dbg !443
  br i1 %cmp9.not1.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !444

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.03.i.i = phi ptr [ %call13.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  %status.02.i.i = phi i32 [ %and.i.i, %while.body.i.i ], [ 1, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.03.i.i, metadata !416, metadata !DIExpression()) #11, !dbg !432
  call void @llvm.dbg.value(metadata i32 %status.02.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  %call10.i.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.03.i.i) #11, !dbg !445
  %call11.i.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.03.i.i) #11, !dbg !447
  %call12.i.i = tail call fastcc i32 @LoadConfigureCache(ptr noundef nonnull %call.i.i, ptr noundef %call10.i.i, ptr noundef %call11.i.i, i64 noundef 0, ptr noundef %exception) #11, !dbg !448
  %and.i.i = and i32 %call12.i.i, %status.02.i.i, !dbg !449
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  %call13.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #11, !dbg !450
  call void @llvm.dbg.value(metadata ptr %call13.i.i, metadata !416, metadata !DIExpression()) #11, !dbg !432
  %cmp9.not.i.i = icmp eq ptr %call13.i.i, null, !dbg !443
  br i1 %cmp9.not.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !444, !llvm.loop !451

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  %status.0.lcssa.i.i = phi i32 [ 1, %if.end.i.i ], [ %and.i.i, %while.body.i.i ], !dbg !432
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !355, metadata !DIExpression()) #11, !dbg !455
  %call.i.i.i = tail call ptr @DestroyLinkedList(ptr noundef %call7.i.i, ptr noundef nonnull @DestroyOptions) #11, !dbg !457
  call void @llvm.dbg.value(metadata ptr undef, metadata !418, metadata !DIExpression()) #11, !dbg !432
  call void @llvm.dbg.value(metadata i64 0, metadata !421, metadata !DIExpression()) #11, !dbg !432
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  br label %for.body.i.i, !dbg !458

for.body.i.i:                                     ; preds = %cleanup.i.i, %while.end.i.i
  %status.16.i.i = phi i32 [ %status.0.lcssa.i.i, %while.end.i.i ], [ %status.2.i.i, %cleanup.i.i ]
  %i.04.i.i = phi i64 [ 0, %while.end.i.i ], [ %inc.i.i, %cleanup.i.i ]
  call void @llvm.dbg.value(metadata i32 %status.16.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  call void @llvm.dbg.value(metadata i64 %i.04.i.i, metadata !421, metadata !DIExpression()) #11, !dbg !432
  %add.ptr.i.i = getelementptr inbounds %struct._ConfigureMapInfo, ptr @ConfigureMap, i64 %i.04.i.i, !dbg !459
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i, metadata !430, metadata !DIExpression()) #11, !dbg !460
  %call16.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !461
  call void @llvm.dbg.value(metadata ptr %call16.i.i, metadata !426, metadata !DIExpression()) #11, !dbg !460
  %cmp17.i.i = icmp eq ptr %call16.i.i, null, !dbg !462
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !464

if.then18.i.i:                                    ; preds = %for.body.i.i
  %5 = load ptr, ptr %add.ptr.i.i, align 16, !dbg !465, !tbaa !467
  %call19.i.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 200, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %5) #11, !dbg !469
  br label %cleanup.i.i, !dbg !470

if.end20.i.i:                                     ; preds = %for.body.i.i
  %call21.i.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call16.i.i, i32 noundef 0, i64 noundef 56) #11, !dbg !471
  store ptr @.str.28, ptr %call16.i.i, align 8, !dbg !472, !tbaa !341
  %6 = load ptr, ptr %add.ptr.i.i, align 16, !dbg !473, !tbaa !467
  %name23.i.i = getelementptr inbounds %struct._ConfigureInfo, ptr %call16.i.i, i64 0, i32 1, !dbg !474
  store ptr %6, ptr %name23.i.i, align 8, !dbg !475, !tbaa !333
  %value.i.i = getelementptr inbounds %struct._ConfigureMapInfo, ptr @ConfigureMap, i64 %i.04.i.i, i32 1, !dbg !476
  %7 = load ptr, ptr %value.i.i, align 8, !dbg !476, !tbaa !477
  %value24.i.i = getelementptr inbounds %struct._ConfigureInfo, ptr %call16.i.i, i64 0, i32 2, !dbg !478
  store ptr %7, ptr %value24.i.i, align 8, !dbg !479, !tbaa !325
  %exempt.i.i = getelementptr inbounds %struct._ConfigureInfo, ptr %call16.i.i, i64 0, i32 3, !dbg !480
  store i32 1, ptr %exempt.i.i, align 8, !dbg !481, !tbaa !317
  %signature.i.i = getelementptr inbounds %struct._ConfigureInfo, ptr %call16.i.i, i64 0, i32 7, !dbg !482
  store i64 2880220587, ptr %signature.i.i, align 8, !dbg !483, !tbaa !484
  %call25.i.i = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call16.i.i) #11, !dbg !485
  %and26.i.i = and i32 %call25.i.i, %status.16.i.i, !dbg !486
  call void @llvm.dbg.value(metadata i32 %and26.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  %cmp27.i.i = icmp eq i32 %and26.i.i, 0, !dbg !487
  br i1 %cmp27.i.i, label %if.then28.i.i, label %cleanup.i.i, !dbg !489

if.then28.i.i:                                    ; preds = %if.end20.i.i
  %8 = load ptr, ptr %name23.i.i, align 8, !dbg !490, !tbaa !333
  %call30.i.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 212, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %8) #11, !dbg !491
  br label %cleanup.i.i, !dbg !492

cleanup.i.i:                                      ; preds = %if.then28.i.i, %if.end20.i.i, %if.then18.i.i
  %status.2.i.i = phi i32 [ %status.16.i.i, %if.then18.i.i ], [ 0, %if.then28.i.i ], [ %and26.i.i, %if.end20.i.i ], !dbg !432
  call void @llvm.dbg.value(metadata i32 %status.2.i.i, metadata !419, metadata !DIExpression()) #11, !dbg !432
  %inc.i.i = add nuw nsw i64 %i.04.i.i, 1, !dbg !493
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !421, metadata !DIExpression()) #11, !dbg !432
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 3, !dbg !494
  br i1 %exitcond.not.i.i, label %AcquireConfigureCache.exit.i, label %for.body.i.i, !dbg !458, !llvm.loop !495

AcquireConfigureCache.exit.i:                     ; preds = %cleanup.i.i
  store ptr %call.i.i, ptr @configure_cache, align 8, !dbg !497, !tbaa !263
  br label %IsConfigureCacheInstantiated.exit, !dbg !498

IsConfigureCacheInstantiated.exit:                ; preds = %if.end.i, %AcquireConfigureCache.exit.i
  %9 = load ptr, ptr @configure_semaphore, align 8, !dbg !499, !tbaa !263
  tail call void @UnlockSemaphoreInfo(ptr noundef %9) #11, !dbg !500
  %.pre8.i = load ptr, ptr @configure_cache, align 8, !dbg !501, !tbaa !263
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !502
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !503

if.end:                                           ; preds = %entry, %IsConfigureCacheInstantiated.exit
  %10 = load ptr, ptr @configure_semaphore, align 8, !dbg !504, !tbaa !263
  tail call void @LockSemaphoreInfo(ptr noundef %10) #11, !dbg !505
  %11 = load ptr, ptr @configure_cache, align 8, !dbg !506, !tbaa !263
  tail call void @ResetLinkedListIterator(ptr noundef %11) #11, !dbg !507
  %12 = load ptr, ptr @configure_cache, align 8, !dbg !508, !tbaa !263
  %call1 = tail call ptr @GetNextValueInLinkedList(ptr noundef %12) #11, !dbg !509
  call void @llvm.dbg.value(metadata ptr %call1, metadata !384, metadata !DIExpression()), !dbg !385
  %cmp2 = icmp eq ptr %name, null, !dbg !510
  br i1 %cmp2, label %cleanup.sink.split, label %lor.lhs.false, !dbg !512

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str) #11, !dbg !513
  %cmp4 = icmp eq i32 %call3, 0, !dbg !514
  br i1 %cmp4, label %cleanup.sink.split, label %while.cond.preheader, !dbg !515

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %call1, metadata !384, metadata !DIExpression()), !dbg !385
  %cmp7.not31 = icmp eq ptr %call1, null, !dbg !516
  br i1 %cmp7.not31, label %cleanup.sink.split, label %while.body, !dbg !517

while.body:                                       ; preds = %while.cond.preheader, %if.end12
  %p.032 = phi ptr [ %call13, %if.end12 ], [ %call1, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !384, metadata !DIExpression()), !dbg !385
  %name8 = getelementptr inbounds %struct._ConfigureInfo, ptr %p.032, i64 0, i32 1, !dbg !518
  %13 = load ptr, ptr %name8, align 8, !dbg !518, !tbaa !333
  %call9 = tail call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef %13) #11, !dbg !521
  %cmp10 = icmp eq i32 %call9, 0, !dbg !522
  %14 = load ptr, ptr @configure_cache, align 8, !dbg !385, !tbaa !263
  br i1 %cmp10, label %if.then15, label %if.end12, !dbg !523

if.end12:                                         ; preds = %while.body
  %call13 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #11, !dbg !524
  call void @llvm.dbg.value(metadata ptr %call13, metadata !384, metadata !DIExpression()), !dbg !385
  %cmp7.not = icmp eq ptr %call13, null, !dbg !516
  br i1 %cmp7.not, label %cleanup.sink.split, label %while.body, !dbg !517, !llvm.loop !525

if.then15:                                        ; preds = %while.body
  %call16 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %14, ptr noundef nonnull %p.032) #11, !dbg !527
  %call17 = tail call i32 @InsertValueInLinkedList(ptr noundef %14, i64 noundef 0, ptr noundef %call16) #11, !dbg !529
  br label %cleanup.sink.split, !dbg !530

cleanup.sink.split:                               ; preds = %if.end12, %if.then15, %while.cond.preheader, %if.end, %lor.lhs.false
  %retval.0.ph = phi ptr [ %call1, %lor.lhs.false ], [ %call1, %if.end ], [ %p.032, %if.then15 ], [ null, %while.cond.preheader ], [ null, %if.end12 ]
  %15 = load ptr, ptr @configure_semaphore, align 8, !dbg !385, !tbaa !263
  tail call void @UnlockSemaphoreInfo(ptr noundef %15) #11, !dbg !385
  br label %cleanup, !dbg !531

cleanup:                                          ; preds = %cleanup.sink.split, %IsConfigureCacheInstantiated.exit
  %retval.0 = phi ptr [ null, %IsConfigureCacheInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !385
  ret ptr %retval.0, !dbg !531
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !532 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

declare !dbg !535 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

declare !dbg !538 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !541 i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !547 ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_options, ptr noundef %exception) local_unnamed_addr #0 !dbg !550 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !555, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !556, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata ptr %exception, metadata !557, metadata !DIExpression()), !dbg !561
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 458, ptr noundef nonnull @.str.3, ptr noundef %pattern) #11, !dbg !562
  store i64 0, ptr %number_options, align 8, !dbg !563, !tbaa !564
  %call1 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !565
  call void @llvm.dbg.value(metadata ptr %call1, metadata !559, metadata !DIExpression()), !dbg !561
  %cmp = icmp eq ptr %call1, null, !dbg !566
  br i1 %cmp, label %cleanup, label %if.end, !dbg !568

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @configure_cache, align 8, !dbg !569, !tbaa !263
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #11, !dbg !570
  %add = add i64 %call2, 1, !dbg !571
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !572
  call void @llvm.dbg.value(metadata ptr %call3, metadata !558, metadata !DIExpression()), !dbg !561
  %cmp4 = icmp eq ptr %call3, null, !dbg !573
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !575

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @configure_semaphore, align 8, !dbg !576, !tbaa !263
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !577
  %2 = load ptr, ptr @configure_cache, align 8, !dbg !578, !tbaa !263
  tail call void @ResetLinkedListIterator(ptr noundef %2) #11, !dbg !579
  %3 = load ptr, ptr @configure_cache, align 8, !dbg !580, !tbaa !263
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #11, !dbg !581
  call void @llvm.dbg.value(metadata ptr %call7, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !561
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !582
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !585

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !559, metadata !DIExpression()), !dbg !561
  %stealth = getelementptr inbounds %struct._ConfigureInfo, ptr %p.032, i64 0, i32 4, !dbg !586
  %4 = load i32, ptr %stealth, align 4, !dbg !586, !tbaa !589
  %cmp9 = icmp eq i32 %4, 0, !dbg !590
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !591

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._ConfigureInfo, ptr %p.032, i64 0, i32 1, !dbg !592
  %5 = load ptr, ptr %name, align 8, !dbg !592, !tbaa !333
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #11, !dbg !593
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !594
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !595

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !596
  call void @llvm.dbg.value(metadata i64 %inc, metadata !560, metadata !DIExpression()), !dbg !561
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !597
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !598, !tbaa !263
  br label %if.end13, !dbg !597

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !599
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !560, metadata !DIExpression()), !dbg !561
  %6 = load ptr, ptr @configure_cache, align 8, !dbg !600, !tbaa !263
  %call14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #11, !dbg !601
  call void @llvm.dbg.value(metadata ptr %call14, metadata !559, metadata !DIExpression()), !dbg !561
  %cmp8.not = icmp eq ptr %call14, null, !dbg !582
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !585, !llvm.loop !602

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !599
  %7 = load ptr, ptr @configure_semaphore, align 8, !dbg !604, !tbaa !263
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #11, !dbg !605
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @ConfigureInfoCompare) #11, !dbg !606
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !607
  store ptr null, ptr %arrayidx15, align 8, !dbg !608, !tbaa !263
  store i64 %i.0.lcssa, ptr %number_options, align 8, !dbg !609, !tbaa !564
  br label %cleanup, !dbg !610

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !561
  ret ptr %retval.0, !dbg !611
}

declare !dbg !612 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !617 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !621 i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

declare !dbg !626 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare !dbg !631 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @ConfigureInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !639 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !641, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %y, metadata !642, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %x, metadata !643, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %y, metadata !644, metadata !DIExpression()), !dbg !645
  %0 = load ptr, ptr %x, align 8, !dbg !646, !tbaa !263
  %1 = load ptr, ptr %0, align 8, !dbg !648, !tbaa !341
  %2 = load ptr, ptr %y, align 8, !dbg !649, !tbaa !263
  %3 = load ptr, ptr %2, align 8, !dbg !650, !tbaa !341
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #11, !dbg !651
  %cmp = icmp eq i32 %call, 0, !dbg !652
  %4 = load ptr, ptr %x, align 8, !dbg !645, !tbaa !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !653

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._ConfigureInfo, ptr %4, i64 0, i32 1, !dbg !654
  %5 = load ptr, ptr %y, align 8, !dbg !655, !tbaa !263
  %name2 = getelementptr inbounds %struct._ConfigureInfo, ptr %5, i64 0, i32 1, !dbg !656
  br label %cleanup, !dbg !657

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %y, align 8, !dbg !658, !tbaa !263
  br label %cleanup, !dbg !659

cleanup:                                          ; preds = %if.end, %if.then
  %.sink13 = phi ptr [ %6, %if.end ], [ %name2, %if.then ]
  %.sink.in = phi ptr [ %4, %if.end ], [ %name, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !645, !tbaa !263
  %7 = load ptr, ptr %.sink13, align 8, !dbg !645, !tbaa !263
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #11, !dbg !645
  ret i32 %call6, !dbg !660
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_options, ptr noundef %exception) local_unnamed_addr #0 !dbg !661 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !665, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !666, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata ptr %exception, metadata !667, metadata !DIExpression()), !dbg !671
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 552, ptr noundef nonnull @.str.3, ptr noundef %pattern) #11, !dbg !672
  store i64 0, ptr %number_options, align 8, !dbg !673, !tbaa !564
  %call1 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !674
  call void @llvm.dbg.value(metadata ptr %call1, metadata !669, metadata !DIExpression()), !dbg !671
  %cmp = icmp eq ptr %call1, null, !dbg !675
  br i1 %cmp, label %cleanup, label %if.end, !dbg !677

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @configure_cache, align 8, !dbg !678, !tbaa !263
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #11, !dbg !679
  %add = add i64 %call2, 1, !dbg !680
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !681
  call void @llvm.dbg.value(metadata ptr %call3, metadata !668, metadata !DIExpression()), !dbg !671
  %cmp4 = icmp eq ptr %call3, null, !dbg !682
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !684

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @configure_semaphore, align 8, !dbg !685, !tbaa !263
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !686
  %2 = load ptr, ptr @configure_cache, align 8, !dbg !687, !tbaa !263
  tail call void @ResetLinkedListIterator(ptr noundef %2) #11, !dbg !688
  %3 = load ptr, ptr @configure_cache, align 8, !dbg !689, !tbaa !263
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #11, !dbg !690
  call void @llvm.dbg.value(metadata ptr %call7, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 0, metadata !670, metadata !DIExpression()), !dbg !671
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !691
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !694

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !669, metadata !DIExpression()), !dbg !671
  %stealth = getelementptr inbounds %struct._ConfigureInfo, ptr %p.034, i64 0, i32 4, !dbg !695
  %4 = load i32, ptr %stealth, align 4, !dbg !695, !tbaa !589
  %cmp9 = icmp eq i32 %4, 0, !dbg !698
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !699

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._ConfigureInfo, ptr %p.034, i64 0, i32 1, !dbg !700
  %5 = load ptr, ptr %name, align 8, !dbg !700, !tbaa !333
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #11, !dbg !701
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !702
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !703

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !704, !tbaa !333
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #11, !dbg !705
  %inc = add nsw i64 %i.035, 1, !dbg !706
  call void @llvm.dbg.value(metadata i64 %inc, metadata !670, metadata !DIExpression()), !dbg !671
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !707
  store ptr %call14, ptr %arrayidx, align 8, !dbg !708, !tbaa !263
  br label %if.end15, !dbg !707

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !709
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !670, metadata !DIExpression()), !dbg !671
  %7 = load ptr, ptr @configure_cache, align 8, !dbg !710, !tbaa !263
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #11, !dbg !711
  call void @llvm.dbg.value(metadata ptr %call16, metadata !669, metadata !DIExpression()), !dbg !671
  %cmp8.not = icmp eq ptr %call16, null, !dbg !691
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !694, !llvm.loop !712

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !709
  %8 = load ptr, ptr @configure_semaphore, align 8, !dbg !714, !tbaa !263
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #11, !dbg !715
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @ConfigureCompare) #11, !dbg !716
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !717
  store ptr null, ptr %arrayidx17, align 8, !dbg !718, !tbaa !263
  store i64 %i.0.lcssa, ptr %number_options, align 8, !dbg !719, !tbaa !564
  br label %cleanup, !dbg !720

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !671
  ret ptr %retval.0, !dbg !721
}

declare !dbg !722 ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ConfigureCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !725 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !727, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %y, metadata !728, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %x, metadata !729, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %y, metadata !730, metadata !DIExpression()), !dbg !731
  %0 = load ptr, ptr %x, align 8, !dbg !732, !tbaa !263
  %1 = load ptr, ptr %y, align 8, !dbg !733, !tbaa !263
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11, !dbg !734
  ret i32 %call, !dbg !735
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureOption(ptr noundef %option) local_unnamed_addr #0 !dbg !736 {
entry:
  call void @llvm.dbg.value(metadata ptr %option, metadata !738, metadata !DIExpression()), !dbg !742
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 613, ptr noundef nonnull @.str.3, ptr noundef %option) #11, !dbg !743
  %call1 = tail call ptr @AcquireExceptionInfo() #11, !dbg !744
  call void @llvm.dbg.value(metadata ptr %call1, metadata !741, metadata !DIExpression()), !dbg !742
  %call2 = tail call ptr @GetConfigureInfo(ptr noundef %option, ptr noundef %call1), !dbg !745
  call void @llvm.dbg.value(metadata ptr %call2, metadata !740, metadata !DIExpression()), !dbg !742
  %call3 = tail call ptr @DestroyExceptionInfo(ptr noundef %call1) #11, !dbg !746
  call void @llvm.dbg.value(metadata ptr %call3, metadata !741, metadata !DIExpression()), !dbg !742
  %cmp = icmp eq ptr %call2, null, !dbg !747
  br i1 %cmp, label %cleanup, label %if.end, !dbg !749

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call2, metadata !750, metadata !DIExpression()) #11, !dbg !755
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 973, ptr noundef nonnull @.str.19) #11, !dbg !757
  %value.i = getelementptr inbounds %struct._ConfigureInfo, ptr %call2, i64 0, i32 2, !dbg !758
  %0 = load ptr, ptr %value.i, align 8, !dbg !758, !tbaa !325
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !742
  %cmp5 = icmp eq ptr %0, null, !dbg !759
  br i1 %cmp5, label %cleanup, label %lor.lhs.false, !dbg !761

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, ptr %0, align 1, !dbg !762, !tbaa !763
  %cmp6 = icmp eq i8 %1, 0, !dbg !764
  br i1 %cmp6, label %cleanup, label %if.end9, !dbg !765

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @ConstantString(ptr noundef nonnull %0) #11, !dbg !766
  br label %cleanup, !dbg !767

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end9
  %retval.0 = phi ptr [ %call10, %if.end9 ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], !dbg !742
  ret ptr %retval.0, !dbg !768
}

declare !dbg !769 ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare !dbg !772 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureValue(ptr nocapture noundef readonly %configure_info) local_unnamed_addr #0 !dbg !751 {
entry:
  call void @llvm.dbg.value(metadata ptr %configure_info, metadata !750, metadata !DIExpression()), !dbg !775
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 973, ptr noundef nonnull @.str.19) #11, !dbg !776
  %value = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info, i64 0, i32 2, !dbg !777
  %0 = load ptr, ptr %value, align 8, !dbg !777, !tbaa !325
  ret ptr %0, !dbg !778
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureOptions(ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !779 {
entry:
  %path = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !781, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr %exception, metadata !782, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #11, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %path, metadata !783, metadata !DIExpression()), !dbg !790
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 668, ptr noundef nonnull @.str.3, ptr noundef %filename) #11, !dbg !791
  %call1 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef %filename, i64 noundef 4096) #11, !dbg !792
  %call2 = call ptr @NewLinkedList(i64 noundef 0) #11, !dbg !793
  call void @llvm.dbg.value(metadata ptr %call2, metadata !785, metadata !DIExpression()), !dbg !788
  %call3 = call ptr @GetConfigurePaths(ptr noundef %filename, ptr undef), !dbg !794
  call void @llvm.dbg.value(metadata ptr %call3, metadata !786, metadata !DIExpression()), !dbg !788
  %cmp.not = icmp eq ptr %call3, null, !dbg !795
  br i1 %cmp.not, label %if.end17, label %if.then, !dbg !797

if.then:                                          ; preds = %entry
  call void @ResetLinkedListIterator(ptr noundef nonnull %call3) #11, !dbg !798
  %call4 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call3) #11, !dbg !800
  call void @llvm.dbg.value(metadata ptr %call4, metadata !784, metadata !DIExpression()), !dbg !788
  %cmp5.not37 = icmp eq ptr %call4, null, !dbg !801
  br i1 %cmp5.not37, label %while.end, label %while.body, !dbg !802

while.body:                                       ; preds = %if.then, %if.end
  %element.038 = phi ptr [ %call15, %if.end ], [ %call4, %if.then ]
  call void @llvm.dbg.value(metadata ptr %element.038, metadata !784, metadata !DIExpression()), !dbg !788
  %call7 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %element.038, ptr noundef %filename) #11, !dbg !803
  %call9 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 683, ptr noundef nonnull @.str.5, ptr noundef nonnull %path) #11, !dbg !805
  %call11 = call ptr @ConfigureFileToStringInfo(ptr noundef nonnull %path) #11, !dbg !806
  call void @llvm.dbg.value(metadata ptr %call11, metadata !787, metadata !DIExpression()), !dbg !788
  %cmp12.not = icmp eq ptr %call11, null, !dbg !807
  br i1 %cmp12.not, label %if.end, label %if.then13, !dbg !809

if.then13:                                        ; preds = %while.body
  %call14 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef nonnull %call11) #11, !dbg !810
  br label %if.end, !dbg !811

if.end:                                           ; preds = %if.then13, %while.body
  %call15 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call3) #11, !dbg !812
  call void @llvm.dbg.value(metadata ptr %call15, metadata !784, metadata !DIExpression()), !dbg !788
  %cmp5.not = icmp eq ptr %call15, null, !dbg !801
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !802, !llvm.loop !813

while.end:                                        ; preds = %if.end, %if.then
  %call16 = call ptr @DestroyLinkedList(ptr noundef nonnull %call3, ptr noundef nonnull @RelinquishMagickMemory) #11, !dbg !815
  call void @llvm.dbg.value(metadata ptr %call16, metadata !786, metadata !DIExpression()), !dbg !788
  br label %if.end17, !dbg !816

if.end17:                                         ; preds = %while.end, %entry
  %call18 = call i64 @GetNumberOfElementsInLinkedList(ptr noundef %call2) #11, !dbg !817
  %cmp19 = icmp eq i64 %call18, 0, !dbg !819
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !820

if.then20:                                        ; preds = %if.end17
  %call21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 710, i32 noundef 395, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %filename) #11, !dbg !821
  br label %if.end22, !dbg !822

if.end22:                                         ; preds = %if.then20, %if.end17
  call void @ResetLinkedListIterator(ptr noundef %call2) #11, !dbg !823
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #11, !dbg !824
  ret ptr %call2, !dbg !825
}

declare !dbg !826 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !829 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigurePaths(ptr noundef %filename, ptr nocapture readnone %exception) local_unnamed_addr #0 !dbg !832 {
entry:
  %path = alloca [4096 x i8], align 16
  %prefix = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !834, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr undef, metadata !835, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #11, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %path, metadata !836, metadata !DIExpression()), !dbg !853
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 756, ptr noundef nonnull @.str.3, ptr noundef %filename) #11, !dbg !854
  %call1 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef %filename, i64 noundef 4096) #11, !dbg !855
  %call2 = call ptr @NewLinkedList(i64 noundef 0) #11, !dbg !856
  call void @llvm.dbg.value(metadata ptr %call2, metadata !837, metadata !DIExpression()), !dbg !851
  %call3 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.8) #11, !dbg !857
  call void @llvm.dbg.value(metadata ptr %call3, metadata !838, metadata !DIExpression()), !dbg !858
  %cmp.not = icmp eq ptr %call3, null, !dbg !859
  br i1 %cmp.not, label %if.end32, label %if.then, !dbg !860

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %call3, i64 -1, !dbg !861
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !840, metadata !DIExpression()), !dbg !863
  %add.ptr15 = getelementptr inbounds i8, ptr %path, i64 -1
  br label %for.body, !dbg !864

for.body:                                         ; preds = %if.then, %if.end25
  %p.0133 = phi ptr [ %add.ptr, %if.then ], [ %call30, %if.end25 ]
  call void @llvm.dbg.value(metadata ptr %p.0133, metadata !840, metadata !DIExpression()), !dbg !863
  %add.ptr6 = getelementptr inbounds i8, ptr %p.0133, i64 1, !dbg !865
  %call7 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %add.ptr6, i64 noundef 4096) #11, !dbg !868
  %call9 = call ptr @strchr(ptr noundef nonnull %path, i32 noundef 58) #16, !dbg !869
  call void @llvm.dbg.value(metadata ptr %call9, metadata !843, metadata !DIExpression()), !dbg !863
  %cmp10.not = icmp eq ptr %call9, null, !dbg !870
  br i1 %cmp10.not, label %if.end, label %if.then11, !dbg !872

if.then11:                                        ; preds = %for.body
  store i8 0, ptr %call9, align 1, !dbg !873, !tbaa !763
  br label %if.end, !dbg !874

if.end:                                           ; preds = %if.then11, %for.body
  %call14 = call i64 @strlen(ptr noundef nonnull %path) #16, !dbg !875
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 %call14, !dbg !876
  call void @llvm.dbg.value(metadata ptr %add.ptr16, metadata !843, metadata !DIExpression()), !dbg !863
  %cmp18.not = icmp ult ptr %add.ptr16, %path, !dbg !877
  br i1 %cmp18.not, label %if.end25, label %land.lhs.true, !dbg !879

land.lhs.true:                                    ; preds = %if.end
  %0 = load i8, ptr %add.ptr16, align 1, !dbg !880, !tbaa !763
  %cmp20.not = icmp eq i8 %0, 47, !dbg !881
  br i1 %cmp20.not, label %if.end25, label %if.then22, !dbg !882

if.then22:                                        ; preds = %land.lhs.true
  %call24 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.9, i64 noundef 4096) #11, !dbg !883
  br label %if.end25, !dbg !884

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end
  %call27 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !885
  %call28 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call27) #11, !dbg !886
  %call30 = call ptr @strchr(ptr noundef nonnull %add.ptr6, i32 noundef 58) #16, !dbg !887
  call void @llvm.dbg.value(metadata ptr %call30, metadata !840, metadata !DIExpression()), !dbg !863
  %cmp4.not = icmp eq ptr %call30, null, !dbg !888
  br i1 %cmp4.not, label %for.end, label %for.body, !dbg !864, !llvm.loop !889

for.end:                                          ; preds = %if.end25
  %call31 = call ptr @DestroyString(ptr noundef nonnull %call3) #11, !dbg !891
  call void @llvm.dbg.value(metadata ptr %call31, metadata !838, metadata !DIExpression()), !dbg !858
  br label %if.end32, !dbg !892

if.end32:                                         ; preds = %for.end, %entry
  %call33 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.10) #11, !dbg !893
  call void @llvm.dbg.value(metadata ptr %call33, metadata !844, metadata !DIExpression()), !dbg !894
  %cmp34.not = icmp eq ptr %call33, null, !dbg !895
  br i1 %cmp34.not, label %if.end53, label %if.then36, !dbg !897

if.then36:                                        ; preds = %if.end32
  %call38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %call33, ptr noundef nonnull @.str.12) #11, !dbg !898
  %call40 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !900
  %call41 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call40) #11, !dbg !901
  %call43 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %call33, ptr noundef nonnull @.str.12) #11, !dbg !902
  %call45 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !903
  %call46 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call45) #11, !dbg !904
  %call48 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #11, !dbg !905
  %call50 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !906
  %call51 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call50) #11, !dbg !907
  %call52 = call ptr @DestroyString(ptr noundef nonnull %call33) #11, !dbg !908
  call void @llvm.dbg.value(metadata ptr %call52, metadata !844, metadata !DIExpression()), !dbg !894
  br label %if.end53, !dbg !909

if.end53:                                         ; preds = %if.then36, %if.end32
  %call54 = call ptr @GetClientPath() #11, !dbg !910
  %1 = load i8, ptr %call54, align 1, !dbg !911, !tbaa !763
  %cmp56.not = icmp eq i8 %1, 0, !dbg !912
  br i1 %cmp56.not, label %if.end80, label %if.then58, !dbg !913

if.then58:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %prefix) #11, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %prefix, metadata !846, metadata !DIExpression()), !dbg !915
  %call60 = call ptr @GetClientPath() #11, !dbg !916
  %call61 = call i64 @CopyMagickString(ptr noundef nonnull %prefix, ptr noundef %call60, i64 noundef 4096) #11, !dbg !917
  call void @ChopPathComponents(ptr noundef nonnull %prefix, i64 noundef 1) #11, !dbg !918
  %call65 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %prefix, ptr noundef nonnull @.str.12) #11, !dbg !919
  %call67 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !920
  %call68 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call67) #11, !dbg !921
  %call71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %prefix, ptr noundef nonnull @.str.12) #11, !dbg !922
  %call73 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !923
  %call74 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call73) #11, !dbg !924
  %call76 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #11, !dbg !925
  %call78 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !926
  %call79 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call78) #11, !dbg !927
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %prefix) #11, !dbg !928
  br label %if.end80, !dbg !929

if.end80:                                         ; preds = %if.then58, %if.end53
  %call81 = call ptr @ConstantString(ptr noundef nonnull @.str.2) #11, !dbg !930
  %call82 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call81) #11, !dbg !931
  %call84 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #11, !dbg !932
  call void @llvm.dbg.value(metadata ptr %call84, metadata !849, metadata !DIExpression()), !dbg !933
  %cmp85 = icmp eq ptr %call84, null, !dbg !934
  br i1 %cmp85, label %if.end89, label %if.then92, !dbg !936

if.end89:                                         ; preds = %if.end80
  %call88 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #11, !dbg !937
  call void @llvm.dbg.value(metadata ptr %call88, metadata !849, metadata !DIExpression()), !dbg !933
  %cmp90.not = icmp eq ptr %call88, null, !dbg !938
  br i1 %cmp90.not, label %if.end104, label %if.then92, !dbg !940

if.then92:                                        ; preds = %if.end80, %if.end89
  %home83.0132 = phi ptr [ %call88, %if.end89 ], [ %call84, %if.end80 ]
  %call94 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull %home83.0132, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #11, !dbg !941
  %call96 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !943
  %call97 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call96) #11, !dbg !944
  %call99 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull %home83.0132, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #11, !dbg !945
  %call101 = call ptr @ConstantString(ptr noundef nonnull %path) #11, !dbg !946
  %call102 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef %call101) #11, !dbg !947
  %call103 = call ptr @DestroyString(ptr noundef nonnull %home83.0132) #11, !dbg !948
  call void @llvm.dbg.value(metadata ptr %call103, metadata !849, metadata !DIExpression()), !dbg !933
  br label %if.end104, !dbg !949

if.end104:                                        ; preds = %if.then92, %if.end89
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #11, !dbg !950
  ret ptr %call2, !dbg !951
}

declare !dbg !952 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !958 ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !961 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !964 ptr @RelinquishMagickMemory(ptr noundef) #1

declare !dbg !965 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !969 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !970 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !971 ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare !dbg !974 ptr @GetClientPath() local_unnamed_addr #1

declare !dbg !978 void @ChopPathComponents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ListConfigureInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !981 {
entry:
  %number_options = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !986, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %exception, metadata !987, metadata !DIExpression()), !dbg !995
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_options) #11, !dbg !996
  %cmp = icmp eq ptr %file, null, !dbg !997
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !999
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !986, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !993, metadata !DIExpression(DW_OP_deref)), !dbg !995
  %call = call ptr @GetConfigureInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %number_options, ptr noundef %exception), !dbg !1000
  call void @llvm.dbg.value(metadata ptr %call, metadata !991, metadata !DIExpression()), !dbg !995
  %cmp1 = icmp eq ptr %call, null, !dbg !1001
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !1003

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_options, align 8, !tbaa !564
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr null, metadata !989, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i64 %1, metadata !993, metadata !DIExpression()), !dbg !995
  %cmp499 = icmp sgt i64 %1, 0, !dbg !1004
  br i1 %cmp499, label %for.body, label %for.end52, !dbg !1007

for.body:                                         ; preds = %for.cond.preheader, %for.inc50
  %i.0101 = phi i64 [ %inc51, %for.inc50 ], [ 0, %for.cond.preheader ]
  %path.0100 = phi ptr [ %path.1, %for.inc50 ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0101, metadata !992, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %path.0100, metadata !989, metadata !DIExpression()), !dbg !995
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0101, !dbg !1008
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1008, !tbaa !263
  %stealth = getelementptr inbounds %struct._ConfigureInfo, ptr %2, i64 0, i32 4, !dbg !1011
  %3 = load i32, ptr %stealth, align 4, !dbg !1011, !tbaa !589
  %cmp5.not = icmp eq i32 %3, 0, !dbg !1012
  br i1 %cmp5.not, label %if.end7, label %for.inc50, !dbg !1013

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.0100, null, !dbg !1014
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !1016

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !1017, !tbaa !341
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %path.0100, ptr noundef %4) #11, !dbg !1018
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !1019
  br i1 %cmp12.not, label %if.end24, label %lor.lhs.false.if.then13_crit_edge, !dbg !1020

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !1021, !tbaa !263
  br label %if.then13, !dbg !1020

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then13_crit_edge ], [ %2, %if.end7 ], !dbg !1021
  %6 = load ptr, ptr %5, align 8, !dbg !1024, !tbaa !341
  %cmp16.not = icmp eq ptr %6, null, !dbg !1025
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !1026

if.then17:                                        ; preds = %if.then13
  %call20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.20, ptr noundef nonnull %6) #11, !dbg !1027
  br label %if.end21, !dbg !1028

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.21) #11, !dbg !1029
  %call23 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.22) #11, !dbg !1030
  br label %if.end24, !dbg !1031

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1032, !tbaa !263
  %8 = load ptr, ptr %7, align 8, !dbg !1033, !tbaa !341
  call void @llvm.dbg.value(metadata ptr %8, metadata !989, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !988, metadata !DIExpression()), !dbg !995
  %name28 = getelementptr inbounds %struct._ConfigureInfo, ptr %7, i64 0, i32 1, !dbg !1034
  %9 = load ptr, ptr %name28, align 8, !dbg !1034, !tbaa !333
  %cmp29.not = icmp eq ptr %9, null, !dbg !1036
  %spec.select95 = select i1 %cmp29.not, ptr @.str.23, ptr %9, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %spec.select95, metadata !988, metadata !DIExpression()), !dbg !995
  %call34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.3, ptr noundef nonnull %spec.select95) #11, !dbg !1038
  %call35 = tail call i64 @strlen(ptr noundef nonnull %spec.select95) #16, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %call35, metadata !994, metadata !DIExpression()), !dbg !995
  %cmp3797 = icmp slt i64 %call35, 14, !dbg !1041
  br i1 %cmp3797, label %for.body38, label %for.end, !dbg !1043

for.body38:                                       ; preds = %if.end24, %for.body38
  %j.098 = phi i64 [ %inc, %for.body38 ], [ %call35, %if.end24 ]
  call void @llvm.dbg.value(metadata i64 %j.098, metadata !994, metadata !DIExpression()), !dbg !995
  %call39 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.24) #11, !dbg !1044
  %inc = add i64 %j.098, 1, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %inc, metadata !994, metadata !DIExpression()), !dbg !995
  %exitcond.not = icmp eq i64 %inc, 14, !dbg !1041
  br i1 %exitcond.not, label %for.end, label %for.body38, !dbg !1043, !llvm.loop !1046

for.end:                                          ; preds = %for.body38, %if.end24
  %call40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.24) #11, !dbg !1048
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !990, metadata !DIExpression()), !dbg !995
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1049, !tbaa !263
  %value42 = getelementptr inbounds %struct._ConfigureInfo, ptr %10, i64 0, i32 2, !dbg !1051
  %11 = load ptr, ptr %value42, align 8, !dbg !1051, !tbaa !325
  %cmp43.not = icmp eq ptr %11, null, !dbg !1052
  %spec.select96 = select i1 %cmp43.not, ptr @.str.23, ptr %11, !dbg !1053
  call void @llvm.dbg.value(metadata ptr %spec.select96, metadata !990, metadata !DIExpression()), !dbg !995
  %call48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.3, ptr noundef nonnull %spec.select96) #11, !dbg !1054
  %call49 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.25) #11, !dbg !1055
  br label %for.inc50, !dbg !1056

for.inc50:                                        ; preds = %for.body, %for.end
  %path.1 = phi ptr [ %path.0100, %for.body ], [ %8, %for.end ], !dbg !995
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !989, metadata !DIExpression()), !dbg !995
  %inc51 = add nuw nsw i64 %i.0101, 1, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !992, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i64 %1, metadata !993, metadata !DIExpression()), !dbg !995
  %exitcond102.not = icmp eq i64 %inc51, %1, !dbg !1004
  br i1 %exitcond102.not, label %for.end52, label %for.body, !dbg !1007, !llvm.loop !1058

for.end52:                                        ; preds = %for.inc50, %for.cond.preheader
  %call53 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !1060
  %call54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #11, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %call54, metadata !991, metadata !DIExpression()), !dbg !995
  br label %cleanup, !dbg !1062

cleanup:                                          ; preds = %entry, %for.end52
  %retval.0 = phi i32 [ 1, %for.end52 ], [ 0, %entry ], !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_options) #11, !dbg !1063
  ret i32 %retval.0, !dbg !1063
}

declare !dbg !1064 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !1067 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !1070 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !1073 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !1076 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #8

declare !dbg !1080 void @CatchException(ptr noundef) local_unnamed_addr #1

declare !dbg !1081 void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadConfigureCache(ptr noundef %configure_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !1083 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception113 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %configure_cache, metadata !1087, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1088, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1089, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1090, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1091, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #11, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !1092, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #11, !dbg !1118
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1152, ptr noundef nonnull @.str.29, ptr noundef %filename) #11, !dbg !1119
  call void @llvm.dbg.value(metadata i32 1, metadata !1096, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr null, metadata !1094, metadata !DIExpression()), !dbg !1115
  %call1 = tail call ptr @AcquireString(ptr noundef %xml) #11, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1093, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1095, metadata !DIExpression()), !dbg !1115
  store ptr %xml, ptr %q, align 8, !dbg !1121, !tbaa !263
  call void @llvm.dbg.value(metadata i32 1, metadata !1096, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr null, metadata !1094, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1095, metadata !DIExpression()), !dbg !1115
  %0 = load i8, ptr %xml, align 1, !dbg !1122, !tbaa !763
  %cmp.not225 = icmp eq i8 %0, 0, !dbg !1123
  br i1 %cmp.not225, label %for.end, label %for.body.lr.ph, !dbg !1124

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp66 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !1124

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %status.0227 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  %configure_info.0226 = phi ptr [ null, %for.body.lr.ph ], [ %configure_info.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata i32 %status.0227, metadata !1096, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %configure_info.0226, metadata !1094, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !1125
  %2 = load i8, ptr %call1, align 1, !dbg !1126, !tbaa !763
  %cmp4 = icmp eq i8 %2, 0, !dbg !1128
  br i1 %cmp4, label %for.end, label %if.end, !dbg !1129

if.end:                                           ; preds = %for.body
  %call6 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !1130
  %call8 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.30, i64 noundef 9) #11, !dbg !1131
  %cmp9 = icmp eq i32 %call8, 0, !dbg !1133
  br i1 %cmp9, label %while.cond.preheader, label %if.end18, !dbg !1134

while.cond.preheader:                             ; preds = %if.end
  %3 = load ptr, ptr %q, align 8, !dbg !1135, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %3, metadata !1095, metadata !DIExpression()), !dbg !1115
  %call12223 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.31, i64 noundef 2) #11, !dbg !1137
  %cmp13.not224 = icmp eq i32 %call12223, 0, !dbg !1138
  br i1 %cmp13.not224, label %for.cond.backedge, label %land.rhs, !dbg !1139

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !1140, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %4, metadata !1095, metadata !DIExpression()), !dbg !1115
  %5 = load i8, ptr %4, align 1, !dbg !1141, !tbaa !763
  %cmp16.not = icmp eq i8 %5, 0, !dbg !1142
  br i1 %cmp16.not, label %for.cond.backedge, label %while.body, !dbg !1143

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !1144
  %6 = load ptr, ptr %q, align 8, !dbg !1135, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %6, metadata !1095, metadata !DIExpression()), !dbg !1115
  %call12 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.31, i64 noundef 2) #11, !dbg !1137
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !1138
  br i1 %cmp13.not, label %for.cond.backedge, label %land.rhs, !dbg !1139, !llvm.loop !1145

for.cond.backedge:                                ; preds = %while.body33, %land.rhs28, %while.body, %land.rhs, %land.rhs48.us, %land.lhs.true.us, %while.cond41.us, %while.cond41, %land.lhs.true, %land.rhs48, %if.then151, %if.then160, %if.then168, %sw.bb, %sw.bb155, %sw.bb163, %if.end144, %if.then132, %if.then136, %while.cond24.preheader, %while.cond.preheader, %if.end119, %if.end123, %if.end139
  %configure_info.0.be = phi ptr [ %call109, %if.end119 ], [ null, %if.end123 ], [ %configure_info.0226, %if.end139 ], [ %configure_info.0226, %while.cond.preheader ], [ %configure_info.0226, %while.cond24.preheader ], [ null, %if.then136 ], [ null, %if.then132 ], [ %configure_info.0226, %if.end144 ], [ %configure_info.0226, %sw.bb163 ], [ %configure_info.0226, %sw.bb155 ], [ %configure_info.0226, %sw.bb ], [ %configure_info.0226, %if.then168 ], [ %configure_info.0226, %if.then160 ], [ %configure_info.0226, %if.then151 ], [ %configure_info.0226, %land.rhs48 ], [ %configure_info.0226, %land.lhs.true ], [ %configure_info.0226, %while.cond41 ], [ %configure_info.0226, %while.cond41.us ], [ %configure_info.0226, %land.lhs.true.us ], [ %configure_info.0226, %land.rhs48.us ], [ %configure_info.0226, %land.rhs ], [ %configure_info.0226, %while.body ], [ %configure_info.0226, %land.rhs28 ], [ %configure_info.0226, %while.body33 ]
  %status.0.be = phi i32 [ %status.0227, %if.end119 ], [ %status.0227, %if.end123 ], [ %status.0227, %if.end139 ], [ %status.0227, %while.cond.preheader ], [ %status.0227, %while.cond24.preheader ], [ 0, %if.then136 ], [ %call133, %if.then132 ], [ %status.0227, %if.end144 ], [ %status.0227, %sw.bb163 ], [ %status.0227, %sw.bb155 ], [ %status.0227, %sw.bb ], [ %status.0227, %if.then168 ], [ %status.0227, %if.then160 ], [ %status.0227, %if.then151 ], [ %status.1.ph.ph220, %land.rhs48 ], [ %status.1.ph.ph220, %land.lhs.true ], [ %status.1.ph.ph220, %while.cond41 ], [ %status.0227, %while.cond41.us ], [ %status.0227, %land.lhs.true.us ], [ %status.0227, %land.rhs48.us ], [ %status.0227, %land.rhs ], [ %status.0227, %while.body ], [ %status.0227, %land.rhs28 ], [ %status.0227, %while.body33 ]
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !1096, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %configure_info.0.be, metadata !1094, metadata !DIExpression()), !dbg !1115
  %7 = load ptr, ptr %q, align 8, !dbg !1147, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %7, metadata !1095, metadata !DIExpression()), !dbg !1115
  %8 = load i8, ptr %7, align 1, !dbg !1122, !tbaa !763
  %cmp.not = icmp eq i8 %8, 0, !dbg !1123
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !1124, !llvm.loop !1148

if.end18:                                         ; preds = %if.end
  %call20 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.32, i64 noundef 4) #11, !dbg !1150
  %cmp21 = icmp eq i32 %call20, 0, !dbg !1152
  br i1 %cmp21, label %while.cond24.preheader, label %if.end35, !dbg !1153

while.cond24.preheader:                           ; preds = %if.end18
  %9 = load ptr, ptr %q, align 8, !dbg !1154, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %9, metadata !1095, metadata !DIExpression()), !dbg !1115
  %call25221 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.33, i64 noundef 2) #11, !dbg !1156
  %cmp26.not222 = icmp eq i32 %call25221, 0, !dbg !1157
  br i1 %cmp26.not222, label %for.cond.backedge, label %land.rhs28, !dbg !1158

land.rhs28:                                       ; preds = %while.cond24.preheader, %while.body33
  %10 = load ptr, ptr %q, align 8, !dbg !1159, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %10, metadata !1095, metadata !DIExpression()), !dbg !1115
  %11 = load i8, ptr %10, align 1, !dbg !1160, !tbaa !763
  %cmp30.not = icmp eq i8 %11, 0, !dbg !1161
  br i1 %cmp30.not, label %for.cond.backedge, label %while.body33, !dbg !1162

while.body33:                                     ; preds = %land.rhs28
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !1163
  %12 = load ptr, ptr %q, align 8, !dbg !1154, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %12, metadata !1095, metadata !DIExpression()), !dbg !1115
  %call25 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.33, i64 noundef 2) #11, !dbg !1156
  %cmp26.not = icmp eq i32 %call25, 0, !dbg !1157
  br i1 %cmp26.not, label %for.cond.backedge, label %land.rhs28, !dbg !1158, !llvm.loop !1164

if.end35:                                         ; preds = %if.end18
  %call37 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.34) #11, !dbg !1166
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1167
  br i1 %cmp38, label %while.cond41thread-pre-split.preheader, label %if.end103, !dbg !1168

while.cond41thread-pre-split.preheader:           ; preds = %if.end35
  br i1 %cmp66, label %while.cond41thread-pre-split.us, label %while.cond41thread-pre-split.outer.split, !dbg !1169

while.cond41thread-pre-split.us:                  ; preds = %while.cond41thread-pre-split.preheader, %while.cond41thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !1170, !tbaa !763
  br label %while.cond41.us, !dbg !1170

while.cond41.us:                                  ; preds = %while.body53.us, %while.cond41thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond41thread-pre-split.us ], [ %18, %while.body53.us ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %status.0227, metadata !1096, metadata !DIExpression()), !dbg !1115
  %cmp43.not.us = icmp eq i8 %13, 47, !dbg !1171
  br i1 %cmp43.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !1172

land.lhs.true.us:                                 ; preds = %while.cond41.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !1173, !tbaa !763
  %cmp46.not.us = icmp eq i8 %14, 62, !dbg !1174
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.rhs48.us, !dbg !1175

land.rhs48.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !1176, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %15, metadata !1095, metadata !DIExpression()), !dbg !1115
  %16 = load i8, ptr %15, align 1, !dbg !1177, !tbaa !763
  %cmp50.not.us = icmp eq i8 %16, 0, !dbg !1178
  br i1 %cmp50.not.us, label %for.cond.backedge, label %while.body53.us, !dbg !1179

while.body53.us:                                  ; preds = %land.rhs48.us
  %call55.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !1180
  %17 = load ptr, ptr %q, align 8, !dbg !1181, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1182
  %18 = load i8, ptr %call1, align 1, !dbg !1183, !tbaa !763
  %cmp57.not.us = icmp eq i8 %18, 61, !dbg !1185
  br i1 %cmp57.not.us, label %if.end60.us, label %while.cond41.us, !dbg !1186, !llvm.loop !1187

if.end60.us:                                      ; preds = %while.body53.us
  %19 = load ptr, ptr %q, align 8, !dbg !1189, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1190
  %call62.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.35) #11, !dbg !1191
  %cmp63.us = icmp eq i32 %call62.us, 0, !dbg !1192
  br i1 %cmp63.us, label %if.then68.us, label %while.cond41thread-pre-split.us.backedge, !dbg !1193

if.then68.us:                                     ; preds = %if.end60.us
  %call69.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1199, i32 noundef 495, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.7, ptr noundef nonnull %call1) #11, !dbg !1194
  br label %while.cond41thread-pre-split.us.backedge, !dbg !1195

while.cond41thread-pre-split.us.backedge:         ; preds = %if.then68.us, %if.end60.us
  br label %while.cond41thread-pre-split.us, !dbg !1170, !llvm.loop !1187

while.cond41thread-pre-split.outer.split:         ; preds = %while.cond41thread-pre-split.preheader, %if.end99
  %status.1.ph.ph220 = phi i32 [ %status.2, %if.end99 ], [ %status.0227, %while.cond41thread-pre-split.preheader ]
  br label %while.cond41thread-pre-split, !dbg !1179

while.cond41thread-pre-split:                     ; preds = %if.end60, %while.cond41thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !1170, !tbaa !763
  br label %while.cond41, !dbg !1170

while.cond41:                                     ; preds = %while.cond41thread-pre-split, %while.body53
  %20 = phi i8 [ %.pr, %while.cond41thread-pre-split ], [ %25, %while.body53 ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph220, metadata !1096, metadata !DIExpression()), !dbg !1115
  %cmp43.not = icmp eq i8 %20, 47, !dbg !1171
  br i1 %cmp43.not, label %for.cond.backedge, label %land.lhs.true, !dbg !1172

land.lhs.true:                                    ; preds = %while.cond41
  %21 = load i8, ptr %add.ptr, align 1, !dbg !1173, !tbaa !763
  %cmp46.not = icmp eq i8 %21, 62, !dbg !1174
  br i1 %cmp46.not, label %for.cond.backedge, label %land.rhs48, !dbg !1175

land.rhs48:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !1176, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %22, metadata !1095, metadata !DIExpression()), !dbg !1115
  %23 = load i8, ptr %22, align 1, !dbg !1177, !tbaa !763
  %cmp50.not = icmp eq i8 %23, 0, !dbg !1178
  br i1 %cmp50.not, label %for.cond.backedge, label %while.body53, !dbg !1179

while.body53:                                     ; preds = %land.rhs48
  %call55 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !1180
  %24 = load ptr, ptr %q, align 8, !dbg !1181, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1182
  %25 = load i8, ptr %call1, align 1, !dbg !1183, !tbaa !763
  %cmp57.not = icmp eq i8 %25, 61, !dbg !1185
  br i1 %cmp57.not, label %if.end60, label %while.cond41, !dbg !1186, !llvm.loop !1187

if.end60:                                         ; preds = %while.body53
  %26 = load ptr, ptr %q, align 8, !dbg !1189, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1190
  %call62 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.35) #11, !dbg !1191
  %cmp63 = icmp eq i32 %call62, 0, !dbg !1192
  br i1 %cmp63, label %if.then65, label %while.cond41thread-pre-split, !dbg !1193, !llvm.loop !1187

if.then65:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #11, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1097, metadata !DIExpression()), !dbg !1197
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #11, !dbg !1198
  %27 = load i8, ptr %path, align 16, !dbg !1199, !tbaa !763
  %cmp74.not = icmp eq i8 %27, 0, !dbg !1201
  br i1 %cmp74.not, label %if.end79, label %if.then76, !dbg !1202

if.then76:                                        ; preds = %if.then65
  %call78 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.9, i64 noundef 4096) #11, !dbg !1203
  br label %if.end79, !dbg !1204

if.end79:                                         ; preds = %if.then76, %if.then65
  %28 = load i8, ptr %call1, align 1, !dbg !1205, !tbaa !763
  %cmp82 = icmp eq i8 %28, 47, !dbg !1207
  br i1 %cmp82, label %if.then84, label %if.else87, !dbg !1208

if.then84:                                        ; preds = %if.end79
  %call86 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !1209
  br label %if.end90, !dbg !1210

if.else87:                                        ; preds = %if.end79
  %call89 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !1211
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.then84
  %call92 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #11, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1108, metadata !DIExpression()), !dbg !1213
  %cmp93.not = icmp eq ptr %call92, null, !dbg !1214
  br i1 %cmp93.not, label %if.end99, label %if.then95, !dbg !1216

if.then95:                                        ; preds = %if.end90
  %call97 = call fastcc i32 @LoadConfigureCache(ptr noundef %configure_cache, ptr noundef nonnull %call92, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !1217
  %and = and i32 %call97, %status.1.ph.ph220, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %and, metadata !1096, metadata !DIExpression()), !dbg !1115
  %call98 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call92) #11, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %call98, metadata !1108, metadata !DIExpression()), !dbg !1213
  br label %if.end99, !dbg !1221

if.end99:                                         ; preds = %if.then95, %if.end90
  %status.2 = phi i32 [ %and, %if.then95 ], [ %status.1.ph.ph220, %if.end90 ], !dbg !1115
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1096, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #11, !dbg !1222
  br label %while.cond41thread-pre-split.outer.split, !dbg !1169, !llvm.loop !1187

if.end103:                                        ; preds = %if.end35
  %call105 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.37) #11, !dbg !1223
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1224
  br i1 %cmp106, label %if.then108, label %if.end123, !dbg !1225

if.then108:                                       ; preds = %if.end103
  %call109 = call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %call109, metadata !1094, metadata !DIExpression()), !dbg !1115
  %cmp110 = icmp eq ptr %call109, null, !dbg !1227
  br i1 %cmp110, label %if.then112, label %if.end119, !dbg !1228

if.then112:                                       ; preds = %if.then108
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception113) #11, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %exception113, metadata !1114, metadata !DIExpression()), !dbg !1229
  call void @GetExceptionInfo(ptr noundef nonnull %exception113) #11, !dbg !1229
  %call114 = tail call ptr @__errno_location() #12, !dbg !1229
  %29 = load i32, ptr %call114, align 4, !dbg !1229, !tbaa !438
  %call115 = call ptr @GetExceptionMessage(i32 noundef %29) #11, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call115, metadata !1109, metadata !DIExpression()), !dbg !1230
  %call116 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception113, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1235, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %call115) #11, !dbg !1229
  %call117 = call ptr @DestroyString(ptr noundef %call115) #11, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call117, metadata !1109, metadata !DIExpression()), !dbg !1230
  call void @CatchException(ptr noundef nonnull %exception113) #11, !dbg !1229
  %call118 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception113) #11, !dbg !1229
  call void @MagickCoreTerminus() #11, !dbg !1229
  call void @_exit(i32 noundef 1) #13, !dbg !1229
  unreachable, !dbg !1229

if.end119:                                        ; preds = %if.then108
  %call120 = call ptr @ResetMagickMemory(ptr noundef nonnull %call109, i32 noundef 0, i64 noundef 56) #11, !dbg !1231
  %call121 = call ptr @ConstantString(ptr noundef %filename) #11, !dbg !1232
  store ptr %call121, ptr %call109, align 8, !dbg !1233, !tbaa !341
  %exempt = getelementptr inbounds %struct._ConfigureInfo, ptr %call109, i64 0, i32 3, !dbg !1234
  store i32 0, ptr %exempt, align 8, !dbg !1235, !tbaa !317
  %signature = getelementptr inbounds %struct._ConfigureInfo, ptr %call109, i64 0, i32 7, !dbg !1236
  store i64 2880220587, ptr %signature, align 8, !dbg !1237, !tbaa !484
  br label %for.cond.backedge, !dbg !1238

if.end123:                                        ; preds = %if.end103
  %cmp124 = icmp eq ptr %configure_info.0226, null, !dbg !1239
  br i1 %cmp124, label %for.cond.backedge, label %if.end127, !dbg !1241

if.end127:                                        ; preds = %if.end123
  %call129 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.38) #11, !dbg !1242
  %cmp130 = icmp eq i32 %call129, 0, !dbg !1244
  br i1 %cmp130, label %if.then132, label %if.end139, !dbg !1245

if.then132:                                       ; preds = %if.end127
  %call133 = call i32 @AppendValueToLinkedList(ptr noundef %configure_cache, ptr noundef nonnull %configure_info.0226) #11, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %call133, metadata !1096, metadata !DIExpression()), !dbg !1115
  %cmp134 = icmp eq i32 %call133, 0, !dbg !1248
  br i1 %cmp134, label %if.then136, label %for.cond.backedge, !dbg !1250

if.then136:                                       ; preds = %if.then132
  %name = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info.0226, i64 0, i32 1, !dbg !1251
  %30 = load ptr, ptr %name, align 8, !dbg !1251, !tbaa !333
  %call137 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1248, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %30) #11, !dbg !1252
  br label %for.cond.backedge, !dbg !1253

if.end139:                                        ; preds = %if.end127
  %31 = load ptr, ptr %q, align 8, !dbg !1254, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %31, metadata !1095, metadata !DIExpression()), !dbg !1115
  call void @GetMagickToken(ptr noundef %31, ptr noundef null, ptr noundef nonnull %call1) #11, !dbg !1255
  %32 = load i8, ptr %call1, align 1, !dbg !1256, !tbaa !763
  %cmp141.not = icmp eq i8 %32, 61, !dbg !1258
  br i1 %cmp141.not, label %if.end144, label %for.cond.backedge, !dbg !1259

if.end144:                                        ; preds = %if.end139
  %33 = load ptr, ptr %q, align 8, !dbg !1260, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %q, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @GetMagickToken(ptr noundef %33, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1261
  %34 = load ptr, ptr %q, align 8, !dbg !1262, !tbaa !263
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1263
  %35 = load i8, ptr %keyword, align 16, !dbg !1264, !tbaa !763
  %conv146 = sext i8 %35 to i32, !dbg !1264
  switch i32 %conv146, label %for.cond.backedge [
    i32 78, label %sw.bb
    i32 110, label %sw.bb
    i32 83, label %sw.bb155
    i32 115, label %sw.bb155
    i32 86, label %sw.bb163
    i32 118, label %sw.bb163
  ], !dbg !1265

sw.bb:                                            ; preds = %if.end144, %if.end144
  %call148 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.39) #11, !dbg !1266
  %cmp149 = icmp eq i32 %call148, 0, !dbg !1270
  br i1 %cmp149, label %if.then151, label %for.cond.backedge, !dbg !1271

if.then151:                                       ; preds = %sw.bb
  %call152 = call ptr @ConstantString(ptr noundef nonnull %call1) #11, !dbg !1272
  %name153 = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info.0226, i64 0, i32 1, !dbg !1274
  store ptr %call152, ptr %name153, align 8, !dbg !1275, !tbaa !333
  br label %for.cond.backedge, !dbg !1276

sw.bb155:                                         ; preds = %if.end144, %if.end144
  %call157 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.40) #11, !dbg !1277
  %cmp158 = icmp eq i32 %call157, 0, !dbg !1280
  br i1 %cmp158, label %if.then160, label %for.cond.backedge, !dbg !1281

if.then160:                                       ; preds = %sw.bb155
  %call161 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #11, !dbg !1282
  %stealth = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info.0226, i64 0, i32 4, !dbg !1284
  store i32 %call161, ptr %stealth, align 4, !dbg !1285, !tbaa !589
  br label %for.cond.backedge, !dbg !1286

sw.bb163:                                         ; preds = %if.end144, %if.end144
  %call165 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.41) #11, !dbg !1287
  %cmp166 = icmp eq i32 %call165, 0, !dbg !1290
  br i1 %cmp166, label %if.then168, label %for.cond.backedge, !dbg !1291

if.then168:                                       ; preds = %sw.bb163
  %call169 = call ptr @ConstantString(ptr noundef nonnull %call1) #11, !dbg !1292
  %value = getelementptr inbounds %struct._ConfigureInfo, ptr %configure_info.0226, i64 0, i32 2, !dbg !1294
  store ptr %call169, ptr %value, align 8, !dbg !1295, !tbaa !325
  br label %for.cond.backedge, !dbg !1296

for.end:                                          ; preds = %for.cond.backedge, %for.body, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.0227, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !1115
  %call171 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #11, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %call171, metadata !1093, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #11, !dbg !1298
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #11, !dbg !1298
  ret i32 %status.0.lcssa, !dbg !1299
}

declare !dbg !1300 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare !dbg !1303 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare !dbg !1306 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

declare !dbg !1309 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1312 ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare !dbg !1313 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1316 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1319 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1323 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1327 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "configure_semaphore", scope: !2, file: !238, line: 116, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !235, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/configure.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "c8f031117d01e31770da80d57cb3c4e5")
!4 = !{!5, !11, !84, !109}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 28, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!14 = !DIEnumerator(name: "UndefinedException", value: 0)
!15 = !DIEnumerator(name: "WarningException", value: 300)
!16 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!17 = !DIEnumerator(name: "TypeWarning", value: 305)
!18 = !DIEnumerator(name: "OptionWarning", value: 310)
!19 = !DIEnumerator(name: "DelegateWarning", value: 315)
!20 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!21 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!22 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!23 = !DIEnumerator(name: "BlobWarning", value: 335)
!24 = !DIEnumerator(name: "StreamWarning", value: 340)
!25 = !DIEnumerator(name: "CacheWarning", value: 345)
!26 = !DIEnumerator(name: "CoderWarning", value: 350)
!27 = !DIEnumerator(name: "FilterWarning", value: 352)
!28 = !DIEnumerator(name: "ModuleWarning", value: 355)
!29 = !DIEnumerator(name: "DrawWarning", value: 360)
!30 = !DIEnumerator(name: "ImageWarning", value: 365)
!31 = !DIEnumerator(name: "WandWarning", value: 370)
!32 = !DIEnumerator(name: "RandomWarning", value: 375)
!33 = !DIEnumerator(name: "XServerWarning", value: 380)
!34 = !DIEnumerator(name: "MonitorWarning", value: 385)
!35 = !DIEnumerator(name: "RegistryWarning", value: 390)
!36 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!37 = !DIEnumerator(name: "PolicyWarning", value: 399)
!38 = !DIEnumerator(name: "ErrorException", value: 400)
!39 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!40 = !DIEnumerator(name: "TypeError", value: 405)
!41 = !DIEnumerator(name: "OptionError", value: 410)
!42 = !DIEnumerator(name: "DelegateError", value: 415)
!43 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!44 = !DIEnumerator(name: "CorruptImageError", value: 425)
!45 = !DIEnumerator(name: "FileOpenError", value: 430)
!46 = !DIEnumerator(name: "BlobError", value: 435)
!47 = !DIEnumerator(name: "StreamError", value: 440)
!48 = !DIEnumerator(name: "CacheError", value: 445)
!49 = !DIEnumerator(name: "CoderError", value: 450)
!50 = !DIEnumerator(name: "FilterError", value: 452)
!51 = !DIEnumerator(name: "ModuleError", value: 455)
!52 = !DIEnumerator(name: "DrawError", value: 460)
!53 = !DIEnumerator(name: "ImageError", value: 465)
!54 = !DIEnumerator(name: "WandError", value: 470)
!55 = !DIEnumerator(name: "RandomError", value: 475)
!56 = !DIEnumerator(name: "XServerError", value: 480)
!57 = !DIEnumerator(name: "MonitorError", value: 485)
!58 = !DIEnumerator(name: "RegistryError", value: 490)
!59 = !DIEnumerator(name: "ConfigureError", value: 495)
!60 = !DIEnumerator(name: "PolicyError", value: 499)
!61 = !DIEnumerator(name: "FatalErrorException", value: 700)
!62 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!63 = !DIEnumerator(name: "TypeFatalError", value: 705)
!64 = !DIEnumerator(name: "OptionFatalError", value: 710)
!65 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!66 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!67 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!68 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!69 = !DIEnumerator(name: "BlobFatalError", value: 735)
!70 = !DIEnumerator(name: "StreamFatalError", value: 740)
!71 = !DIEnumerator(name: "CacheFatalError", value: 745)
!72 = !DIEnumerator(name: "CoderFatalError", value: 750)
!73 = !DIEnumerator(name: "FilterFatalError", value: 752)
!74 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!75 = !DIEnumerator(name: "DrawFatalError", value: 760)
!76 = !DIEnumerator(name: "ImageFatalError", value: 765)
!77 = !DIEnumerator(name: "WandFatalError", value: 770)
!78 = !DIEnumerator(name: "RandomFatalError", value: 775)
!79 = !DIEnumerator(name: "XServerFatalError", value: 780)
!80 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!81 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!82 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!83 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 34, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!87 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!88 = !DIEnumerator(name: "NoEvents", value: 0)
!89 = !DIEnumerator(name: "TraceEvent", value: 1)
!90 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!91 = !DIEnumerator(name: "BlobEvent", value: 4)
!92 = !DIEnumerator(name: "CacheEvent", value: 8)
!93 = !DIEnumerator(name: "CoderEvent", value: 16)
!94 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!95 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!96 = !DIEnumerator(name: "DrawEvent", value: 128)
!97 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!98 = !DIEnumerator(name: "ImageEvent", value: 512)
!99 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!100 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!101 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!102 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!103 = !DIEnumerator(name: "TransformEvent", value: 16384)
!104 = !DIEnumerator(name: "UserEvent", value: 36864)
!105 = !DIEnumerator(name: "WandEvent", value: 65536)
!106 = !DIEnumerator(name: "X11Event", value: 131072)
!107 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!108 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 25, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120}
!112 = !DIEnumerator(name: "UndefinedPath", value: 0)
!113 = !DIEnumerator(name: "MagickPath", value: 1)
!114 = !DIEnumerator(name: "RootPath", value: 2)
!115 = !DIEnumerator(name: "HeadPath", value: 3)
!116 = !DIEnumerator(name: "TailPath", value: 4)
!117 = !DIEnumerator(name: "BasePath", value: 5)
!118 = !DIEnumerator(name: "ExtensionPath", value: 6)
!119 = !DIEnumerator(name: "SubimagePath", value: 7)
!120 = !DIEnumerator(name: "CanonicalPath", value: 8)
!121 = !{!122, !126, !127, !131, !152, !154, !151, !155, !149, !156, !138, !157, !171, !229, !179, !232, !234}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !124, line: 26, baseType: !125)
!124 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !124, line: 25, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !129, line: 34, baseType: !130)
!129 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !129, line: 33, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigureInfo", file: !134, line: 44, baseType: !135)
!134 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ConfigureInfo", file: !134, line: 27, size: 448, elements: !136)
!136 = !{!137, !140, !141, !142, !144, !145, !147, !148}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !135, file: !134, line: 30, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !134, line: 31, baseType: !138, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !135, file: !134, line: 32, baseType: !138, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !135, file: !134, line: 35, baseType: !143, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !135, file: !134, line: 36, baseType: !143, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !135, file: !134, line: 39, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !134, line: 40, baseType: !146, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !135, file: !134, line: 43, baseType: !149, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !151)
!150 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !159, line: 40, baseType: !160)
!159 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !159, line: 29, size: 32960, elements: !161)
!161 = !{!162, !166, !169, !170}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !160, file: !159, line: 32, baseType: !163, size: 32768)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 32768, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4096)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !160, file: !159, line: 35, baseType: !167, size: 64, offset: 32768)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !160, file: !159, line: 38, baseType: !149, size: 64, offset: 32832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !160, file: !159, line: 39, baseType: !149, size: 64, offset: 32896)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !174, line: 7, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !176, line: 49, size: 1728, elements: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!177 = !{!178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !194, !196, !197, !198, !202, !204, !206, !210, !213, !215, !218, !221, !222, !223, !224, !225}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !175, file: !176, line: 51, baseType: !179, size: 32)
!179 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !175, file: !176, line: 54, baseType: !138, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !175, file: !176, line: 55, baseType: !138, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !175, file: !176, line: 56, baseType: !138, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !175, file: !176, line: 57, baseType: !138, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !175, file: !176, line: 58, baseType: !138, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !175, file: !176, line: 59, baseType: !138, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !175, file: !176, line: 60, baseType: !138, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !175, file: !176, line: 61, baseType: !138, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !175, file: !176, line: 64, baseType: !138, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !175, file: !176, line: 65, baseType: !138, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !175, file: !176, line: 66, baseType: !138, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !175, file: !176, line: 68, baseType: !192, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !176, line: 36, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !175, file: !176, line: 70, baseType: !195, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !175, file: !176, line: 72, baseType: !179, size: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !175, file: !176, line: 73, baseType: !179, size: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !175, file: !176, line: 74, baseType: !199, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !200, line: 152, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!201 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !175, file: !176, line: 77, baseType: !203, size: 16, offset: 1024)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !175, file: !176, line: 78, baseType: !205, size: 8, offset: 1040)
!205 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !175, file: !176, line: 79, baseType: !207, size: 8, offset: 1048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 8, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !175, file: !176, line: 81, baseType: !211, size: 64, offset: 1088)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !176, line: 43, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !175, file: !176, line: 89, baseType: !214, size: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !200, line: 153, baseType: !201)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !175, file: !176, line: 91, baseType: !216, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !176, line: 37, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !175, file: !176, line: 92, baseType: !219, size: 64, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !176, line: 38, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !175, file: !176, line: 93, baseType: !195, size: 64, offset: 1344)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !175, file: !176, line: 94, baseType: !126, size: 64, offset: 1408)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !175, file: !176, line: 95, baseType: !149, size: 64, offset: 1472)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !175, file: !176, line: 96, baseType: !179, size: 32, offset: 1536)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !175, file: !176, line: 98, baseType: !226, size: 160, offset: 1568)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 160, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 20)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !230, line: 77, baseType: !231)
!230 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !200, line: 193, baseType: !201)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!235 = !{!0, !236, !239}
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "configure_cache", scope: !2, file: !238, line: 113, type: !127, isLocal: true, isDefinition: true)
!238 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8f031117d01e31770da80d57cb3c4e5")
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "ConfigureMap", scope: !2, file: !238, line: 105, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 384, elements: !248)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigureMapInfo", file: !238, line: 99, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ConfigureMapInfo", file: !238, line: 94, size: 128, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !238, line: 97, baseType: !152, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !244, file: !238, line: 98, baseType: !152, size: 64, offset: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !{i32 7, !"Dwarf Version", i32 5}
!251 = !{i32 2, !"Debug Info Version", i32 3}
!252 = !{i32 1, !"wchar_size", i32 4}
!253 = !{i32 7, !"PIC Level", i32 2}
!254 = !{i32 7, !"PIE Level", i32 2}
!255 = !{i32 7, !"uwtable", i32 2}
!256 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!257 = distinct !DISubprogram(name: "ConfigureComponentGenesis", scope: !238, file: !238, line: 237, type: !258, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!143}
!260 = !{}
!261 = !DILocation(line: 239, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !238, line: 239, column: 7)
!263 = !{!264, !264, i64 0}
!264 = !{!"any pointer", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !DILocation(line: 239, column: 27, scope: !262)
!268 = !DILocation(line: 239, column: 7, scope: !257)
!269 = !DILocation(line: 240, column: 25, scope: !262)
!270 = !DILocation(line: 240, column: 24, scope: !262)
!271 = !DILocation(line: 240, column: 5, scope: !262)
!272 = !DILocation(line: 241, column: 3, scope: !257)
!273 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !124, file: !124, line: 32, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!274 = !DISubroutineType(types: !275)
!275 = !{!122}
!276 = distinct !DISubprogram(name: "ConfigureComponentTerminus", scope: !238, file: !238, line: 282, type: !277, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!277 = !DISubroutineType(types: !278)
!278 = !{null}
!279 = !DILocation(line: 284, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !238, line: 284, column: 7)
!281 = !DILocation(line: 284, column: 27, scope: !280)
!282 = !DILocation(line: 284, column: 7, scope: !276)
!283 = !DILocation(line: 285, column: 5, scope: !280)
!284 = !DILocation(line: 286, column: 21, scope: !276)
!285 = !DILocation(line: 286, column: 3, scope: !276)
!286 = !DILocation(line: 287, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !276, file: !238, line: 287, column: 7)
!288 = !DILocation(line: 287, column: 23, scope: !287)
!289 = !DILocation(line: 287, column: 7, scope: !276)
!290 = !DILocation(line: 288, column: 21, scope: !287)
!291 = !DILocation(line: 288, column: 5, scope: !287)
!292 = !DILocation(line: 289, column: 18, scope: !276)
!293 = !DILocation(line: 290, column: 23, scope: !276)
!294 = !DILocation(line: 290, column: 3, scope: !276)
!295 = !DILocation(line: 291, column: 3, scope: !276)
!296 = !DILocation(line: 292, column: 1, scope: !276)
!297 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !124, file: !124, line: 35, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!301 = !DISubprogram(name: "LockSemaphoreInfo", scope: !124, file: !124, line: 37, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !122}
!304 = !DISubprogram(name: "DestroyLinkedList", scope: !129, file: !129, line: 42, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!305 = !DISubroutineType(types: !306)
!306 = !{!127, !127, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!126, !126}
!310 = distinct !DISubprogram(name: "DestroyConfigureElement", scope: !238, file: !238, line: 263, type: !308, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "configure_info", arg: 1, scope: !310, file: !238, line: 263, type: !126)
!313 = !DILocalVariable(name: "p", scope: !310, file: !238, line: 266, type: !154)
!314 = !DILocation(line: 0, scope: !310)
!315 = !DILocation(line: 269, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !310, file: !238, line: 269, column: 7)
!317 = !{!318, !265, i64 24}
!318 = !{!"_ConfigureInfo", !264, i64 0, !264, i64 8, !264, i64 16, !265, i64 24, !265, i64 28, !264, i64 32, !264, i64 40, !319, i64 48}
!319 = !{!"long", !265, i64 0}
!320 = !DILocation(line: 269, column: 17, scope: !316)
!321 = !DILocation(line: 269, column: 7, scope: !310)
!322 = !DILocation(line: 271, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !238, line: 271, column: 11)
!324 = distinct !DILexicalBlock(scope: !316, file: !238, line: 270, column: 5)
!325 = !{!318, !264, i64 16}
!326 = !DILocation(line: 271, column: 20, scope: !323)
!327 = !DILocation(line: 271, column: 11, scope: !324)
!328 = !DILocation(line: 272, column: 18, scope: !323)
!329 = !DILocation(line: 272, column: 17, scope: !323)
!330 = !DILocation(line: 272, column: 9, scope: !323)
!331 = !DILocation(line: 273, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !238, line: 273, column: 11)
!333 = !{!318, !264, i64 8}
!334 = !DILocation(line: 273, column: 19, scope: !332)
!335 = !DILocation(line: 273, column: 11, scope: !324)
!336 = !DILocation(line: 274, column: 17, scope: !332)
!337 = !DILocation(line: 274, column: 16, scope: !332)
!338 = !DILocation(line: 274, column: 9, scope: !332)
!339 = !DILocation(line: 275, column: 14, scope: !340)
!340 = distinct !DILexicalBlock(scope: !324, file: !238, line: 275, column: 11)
!341 = !{!318, !264, i64 0}
!342 = !DILocation(line: 275, column: 19, scope: !340)
!343 = !DILocation(line: 275, column: 11, scope: !324)
!344 = !DILocation(line: 276, column: 17, scope: !340)
!345 = !DILocation(line: 276, column: 16, scope: !340)
!346 = !DILocation(line: 276, column: 9, scope: !340)
!347 = !DILocation(line: 278, column: 23, scope: !310)
!348 = !DILocation(line: 279, column: 3, scope: !310)
!349 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !124, file: !124, line: 39, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!350 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !124, file: !124, line: 36, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!351 = distinct !DISubprogram(name: "DestroyConfigureOptions", scope: !238, file: !238, line: 323, type: !352, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{!127, !127}
!354 = !{!355}
!355 = !DILocalVariable(name: "options", arg: 1, scope: !351, file: !238, line: 323, type: !127)
!356 = !DILocation(line: 0, scope: !351)
!357 = !DILocation(line: 326, column: 10, scope: !351)
!358 = !DILocation(line: 326, column: 3, scope: !351)
!359 = distinct !DISubprogram(name: "DestroyOptions", scope: !238, file: !238, line: 318, type: !308, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !360)
!360 = !{!361}
!361 = !DILocalVariable(name: "option", arg: 1, scope: !359, file: !238, line: 318, type: !126)
!362 = !DILocation(line: 0, scope: !359)
!363 = !DILocation(line: 320, column: 10, scope: !359)
!364 = !DILocation(line: 320, column: 3, scope: !359)
!365 = distinct !DISubprogram(name: "GetConfigureInfo", scope: !238, file: !238, line: 358, type: !366, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!366 = !DISubroutineType(types: !367)
!367 = !{!131, !152, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !12, line: 102, size: 448, elements: !371)
!371 = !{!372, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !370, file: !12, line: 105, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !12, line: 100, baseType: !11)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !370, file: !12, line: 108, baseType: !179, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !370, file: !12, line: 111, baseType: !138, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !370, file: !12, line: 112, baseType: !138, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !370, file: !12, line: 115, baseType: !126, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !370, file: !12, line: 118, baseType: !143, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !370, file: !12, line: 121, baseType: !122, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !370, file: !12, line: 124, baseType: !149, size: 64, offset: 384)
!381 = !{!382, !383, !384}
!382 = !DILocalVariable(name: "name", arg: 1, scope: !365, file: !238, line: 358, type: !152)
!383 = !DILocalVariable(name: "exception", arg: 2, scope: !365, file: !238, line: 359, type: !368)
!384 = !DILocalVariable(name: "p", scope: !365, file: !238, line: 362, type: !131)
!385 = !DILocation(line: 0, scope: !365)
!386 = !DILocalVariable(name: "exception", arg: 1, scope: !387, file: !238, line: 1002, type: !368)
!387 = distinct !DISubprogram(name: "IsConfigureCacheInstantiated", scope: !238, file: !238, line: 1002, type: !388, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!143, !368}
!390 = !{!386}
!391 = !DILocation(line: 0, scope: !387, inlinedAt: !392)
!392 = distinct !DILocation(line: 365, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !365, file: !238, line: 365, column: 7)
!394 = !DILocation(line: 1004, column: 7, scope: !395, inlinedAt: !392)
!395 = distinct !DILexicalBlock(scope: !387, file: !238, line: 1004, column: 7)
!396 = !DILocation(line: 1004, column: 23, scope: !395, inlinedAt: !392)
!397 = !DILocation(line: 1004, column: 7, scope: !387, inlinedAt: !392)
!398 = !DILocation(line: 1006, column: 11, scope: !399, inlinedAt: !392)
!399 = distinct !DILexicalBlock(scope: !400, file: !238, line: 1006, column: 11)
!400 = distinct !DILexicalBlock(scope: !395, file: !238, line: 1005, column: 5)
!401 = !DILocation(line: 1006, column: 31, scope: !399, inlinedAt: !392)
!402 = !DILocation(line: 1006, column: 11, scope: !400, inlinedAt: !392)
!403 = !DILocation(line: 1007, column: 9, scope: !399, inlinedAt: !392)
!404 = !DILocation(line: 1008, column: 25, scope: !400, inlinedAt: !392)
!405 = !DILocation(line: 1008, column: 7, scope: !400, inlinedAt: !392)
!406 = !DILocation(line: 1009, column: 11, scope: !407, inlinedAt: !392)
!407 = distinct !DILexicalBlock(scope: !400, file: !238, line: 1009, column: 11)
!408 = !DILocation(line: 1009, column: 27, scope: !407, inlinedAt: !392)
!409 = !DILocation(line: 1009, column: 11, scope: !400, inlinedAt: !392)
!410 = !DILocalVariable(name: "filename", arg: 1, scope: !411, file: !238, line: 152, type: !152)
!411 = distinct !DISubprogram(name: "AcquireConfigureCache", scope: !238, file: !238, line: 152, type: !412, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!127, !152, !368}
!414 = !{!410, !415, !416, !417, !418, !419, !421, !422, !425, !426, !430}
!415 = !DILocalVariable(name: "exception", arg: 2, scope: !411, file: !238, line: 153, type: !368)
!416 = !DILocalVariable(name: "option", scope: !411, file: !238, line: 156, type: !232)
!417 = !DILocalVariable(name: "configure_cache", scope: !411, file: !238, line: 159, type: !127)
!418 = !DILocalVariable(name: "options", scope: !411, file: !238, line: 160, type: !127)
!419 = !DILocalVariable(name: "status", scope: !411, file: !238, line: 163, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!421 = !DILocalVariable(name: "i", scope: !411, file: !238, line: 166, type: !229)
!422 = !DILocalVariable(name: "message", scope: !423, file: !238, line: 173, type: !138)
!423 = distinct !DILexicalBlock(scope: !424, file: !238, line: 173, column: 5)
!424 = distinct !DILexicalBlock(scope: !411, file: !238, line: 172, column: 7)
!425 = !DILocalVariable(name: "exception", scope: !423, file: !238, line: 173, type: !369)
!426 = !DILocalVariable(name: "configure_info", scope: !427, file: !238, line: 190, type: !154)
!427 = distinct !DILexicalBlock(scope: !428, file: !238, line: 188, column: 3)
!428 = distinct !DILexicalBlock(scope: !429, file: !238, line: 187, column: 3)
!429 = distinct !DILexicalBlock(scope: !411, file: !238, line: 187, column: 3)
!430 = !DILocalVariable(name: "p", scope: !427, file: !238, line: 193, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!432 = !DILocation(line: 0, scope: !411, inlinedAt: !433)
!433 = distinct !DILocation(line: 1010, column: 25, scope: !407, inlinedAt: !392)
!434 = !DILocation(line: 171, column: 19, scope: !411, inlinedAt: !433)
!435 = !DILocation(line: 172, column: 23, scope: !424, inlinedAt: !433)
!436 = !DILocation(line: 172, column: 7, scope: !411, inlinedAt: !433)
!437 = !DILocation(line: 173, column: 5, scope: !423, inlinedAt: !433)
!438 = !{!439, !439, i64 0}
!439 = !{!"int", !265, i64 0}
!440 = !DILocation(line: 0, scope: !423, inlinedAt: !433)
!441 = !DILocation(line: 175, column: 11, scope: !411, inlinedAt: !433)
!442 = !DILocation(line: 176, column: 31, scope: !411, inlinedAt: !433)
!443 = !DILocation(line: 177, column: 17, scope: !411, inlinedAt: !433)
!444 = !DILocation(line: 177, column: 3, scope: !411, inlinedAt: !433)
!445 = !DILocation(line: 180, column: 7, scope: !446, inlinedAt: !433)
!446 = distinct !DILexicalBlock(scope: !411, file: !238, line: 178, column: 3)
!447 = !DILocation(line: 180, column: 34, scope: !446, inlinedAt: !433)
!448 = !DILocation(line: 179, column: 13, scope: !446, inlinedAt: !433)
!449 = !DILocation(line: 179, column: 11, scope: !446, inlinedAt: !433)
!450 = !DILocation(line: 181, column: 33, scope: !446, inlinedAt: !433)
!451 = distinct !{!451, !444, !452, !453, !454}
!452 = !DILocation(line: 182, column: 3, scope: !411, inlinedAt: !433)
!453 = !{!"llvm.loop.mustprogress"}
!454 = !{!"llvm.loop.unroll.disable"}
!455 = !DILocation(line: 0, scope: !351, inlinedAt: !456)
!456 = distinct !DILocation(line: 183, column: 11, scope: !411, inlinedAt: !433)
!457 = !DILocation(line: 326, column: 10, scope: !351, inlinedAt: !456)
!458 = !DILocation(line: 187, column: 3, scope: !429, inlinedAt: !433)
!459 = !DILocation(line: 195, column: 19, scope: !427, inlinedAt: !433)
!460 = !DILocation(line: 0, scope: !427, inlinedAt: !433)
!461 = !DILocation(line: 196, column: 38, scope: !427, inlinedAt: !433)
!462 = !DILocation(line: 198, column: 24, scope: !463, inlinedAt: !433)
!463 = distinct !DILexicalBlock(scope: !427, file: !238, line: 198, column: 9)
!464 = !DILocation(line: 198, column: 9, scope: !427, inlinedAt: !433)
!465 = !DILocation(line: 201, column: 65, scope: !466, inlinedAt: !433)
!466 = distinct !DILexicalBlock(scope: !463, file: !238, line: 199, column: 7)
!467 = !{!468, !264, i64 0}
!468 = !{!"_ConfigureMapInfo", !264, i64 0, !264, i64 8}
!469 = !DILocation(line: 200, column: 16, scope: !466, inlinedAt: !433)
!470 = !DILocation(line: 202, column: 9, scope: !466, inlinedAt: !433)
!471 = !DILocation(line: 204, column: 12, scope: !427, inlinedAt: !433)
!472 = !DILocation(line: 205, column: 25, scope: !427, inlinedAt: !433)
!473 = !DILocation(line: 206, column: 38, scope: !427, inlinedAt: !433)
!474 = !DILocation(line: 206, column: 21, scope: !427, inlinedAt: !433)
!475 = !DILocation(line: 206, column: 25, scope: !427, inlinedAt: !433)
!476 = !DILocation(line: 207, column: 39, scope: !427, inlinedAt: !433)
!477 = !{!468, !264, i64 8}
!478 = !DILocation(line: 207, column: 21, scope: !427, inlinedAt: !433)
!479 = !DILocation(line: 207, column: 26, scope: !427, inlinedAt: !433)
!480 = !DILocation(line: 208, column: 21, scope: !427, inlinedAt: !433)
!481 = !DILocation(line: 208, column: 27, scope: !427, inlinedAt: !433)
!482 = !DILocation(line: 209, column: 21, scope: !427, inlinedAt: !433)
!483 = !DILocation(line: 209, column: 30, scope: !427, inlinedAt: !433)
!484 = !{!318, !319, i64 48}
!485 = !DILocation(line: 210, column: 13, scope: !427, inlinedAt: !433)
!486 = !DILocation(line: 210, column: 11, scope: !427, inlinedAt: !433)
!487 = !DILocation(line: 211, column: 16, scope: !488, inlinedAt: !433)
!488 = distinct !DILexicalBlock(scope: !427, file: !238, line: 211, column: 9)
!489 = !DILocation(line: 211, column: 9, scope: !427, inlinedAt: !433)
!490 = !DILocation(line: 214, column: 25, scope: !488, inlinedAt: !433)
!491 = !DILocation(line: 212, column: 14, scope: !488, inlinedAt: !433)
!492 = !DILocation(line: 212, column: 7, scope: !488, inlinedAt: !433)
!493 = !DILocation(line: 187, column: 74, scope: !428, inlinedAt: !433)
!494 = !DILocation(line: 187, column: 15, scope: !428, inlinedAt: !433)
!495 = distinct !{!495, !458, !496, !453, !454}
!496 = !DILocation(line: 215, column: 3, scope: !429, inlinedAt: !433)
!497 = !DILocation(line: 1010, column: 24, scope: !407, inlinedAt: !392)
!498 = !DILocation(line: 1010, column: 9, scope: !407, inlinedAt: !392)
!499 = !DILocation(line: 1011, column: 27, scope: !400, inlinedAt: !392)
!500 = !DILocation(line: 1011, column: 7, scope: !400, inlinedAt: !392)
!501 = !DILocation(line: 1013, column: 10, scope: !387, inlinedAt: !392)
!502 = !DILocation(line: 1013, column: 26, scope: !387, inlinedAt: !392)
!503 = !DILocation(line: 365, column: 7, scope: !365)
!504 = !DILocation(line: 370, column: 21, scope: !365)
!505 = !DILocation(line: 370, column: 3, scope: !365)
!506 = !DILocation(line: 371, column: 27, scope: !365)
!507 = !DILocation(line: 371, column: 3, scope: !365)
!508 = !DILocation(line: 372, column: 54, scope: !365)
!509 = !DILocation(line: 372, column: 29, scope: !365)
!510 = !DILocation(line: 373, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !365, file: !238, line: 373, column: 7)
!512 = !DILocation(line: 373, column: 37, scope: !511)
!513 = !DILocation(line: 373, column: 41, scope: !511)
!514 = !DILocation(line: 373, column: 65, scope: !511)
!515 = !DILocation(line: 373, column: 7, scope: !365)
!516 = !DILocation(line: 378, column: 12, scope: !365)
!517 = !DILocation(line: 378, column: 3, scope: !365)
!518 = !DILocation(line: 380, column: 31, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !238, line: 380, column: 9)
!520 = distinct !DILexicalBlock(scope: !365, file: !238, line: 379, column: 3)
!521 = !DILocation(line: 380, column: 9, scope: !519)
!522 = !DILocation(line: 380, column: 37, scope: !519)
!523 = !DILocation(line: 380, column: 9, scope: !520)
!524 = !DILocation(line: 382, column: 31, scope: !520)
!525 = distinct !{!525, !517, !526, !453, !454}
!526 = !DILocation(line: 383, column: 3, scope: !365)
!527 = !DILocation(line: 386, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !365, file: !238, line: 384, column: 7)
!529 = !DILocation(line: 385, column: 12, scope: !528)
!530 = !DILocation(line: 385, column: 5, scope: !528)
!531 = !DILocation(line: 389, column: 1, scope: !365)
!532 = !DISubprogram(name: "ResetLinkedListIterator", scope: !129, file: !129, line: 77, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !127}
!535 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !129, file: !129, line: 69, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!536 = !DISubroutineType(types: !537)
!537 = !{!126, !127}
!538 = !DISubprogram(name: "LocaleCompare", scope: !159, file: !159, line: 66, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!539 = !DISubroutineType(types: !540)
!540 = !{!179, !152, !152}
!541 = !DISubprogram(name: "InsertValueInLinkedList", scope: !129, file: !129, line: 49, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!542 = !DISubroutineType(types: !543)
!543 = !{!143, !127, !544, !545}
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!547 = !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !129, file: !129, line: 72, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!548 = !DISubroutineType(types: !549)
!549 = !{!126, !127, !545}
!550 = distinct !DISubprogram(name: "GetConfigureInfoList", scope: !238, file: !238, line: 442, type: !551, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!551 = !DISubroutineType(types: !552)
!552 = !{!155, !152, !553, !368}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!554 = !{!555, !556, !557, !558, !559, !560}
!555 = !DILocalVariable(name: "pattern", arg: 1, scope: !550, file: !238, line: 442, type: !152)
!556 = !DILocalVariable(name: "number_options", arg: 2, scope: !550, file: !238, line: 443, type: !553)
!557 = !DILocalVariable(name: "exception", arg: 3, scope: !550, file: !238, line: 443, type: !368)
!558 = !DILocalVariable(name: "options", scope: !550, file: !238, line: 446, type: !155)
!559 = !DILocalVariable(name: "p", scope: !550, file: !238, line: 449, type: !131)
!560 = !DILocalVariable(name: "i", scope: !550, file: !238, line: 452, type: !229)
!561 = !DILocation(line: 0, scope: !550)
!562 = !DILocation(line: 458, column: 10, scope: !550)
!563 = !DILocation(line: 460, column: 18, scope: !550)
!564 = !{!319, !319, i64 0}
!565 = !DILocation(line: 461, column: 5, scope: !550)
!566 = !DILocation(line: 462, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !550, file: !238, line: 462, column: 7)
!568 = !DILocation(line: 462, column: 7, scope: !550)
!569 = !DILocation(line: 465, column: 37, scope: !550)
!570 = !DILocation(line: 465, column: 5, scope: !550)
!571 = !DILocation(line: 465, column: 53, scope: !550)
!572 = !DILocation(line: 464, column: 36, scope: !550)
!573 = !DILocation(line: 466, column: 15, scope: !574)
!574 = distinct !DILexicalBlock(scope: !550, file: !238, line: 466, column: 7)
!575 = !DILocation(line: 466, column: 7, scope: !550)
!576 = !DILocation(line: 471, column: 21, scope: !550)
!577 = !DILocation(line: 471, column: 3, scope: !550)
!578 = !DILocation(line: 472, column: 27, scope: !550)
!579 = !DILocation(line: 472, column: 3, scope: !550)
!580 = !DILocation(line: 473, column: 54, scope: !550)
!581 = !DILocation(line: 473, column: 29, scope: !550)
!582 = !DILocation(line: 474, column: 15, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !238, line: 474, column: 3)
!584 = distinct !DILexicalBlock(scope: !550, file: !238, line: 474, column: 3)
!585 = !DILocation(line: 474, column: 3, scope: !584)
!586 = !DILocation(line: 476, column: 13, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !238, line: 476, column: 9)
!588 = distinct !DILexicalBlock(scope: !583, file: !238, line: 475, column: 3)
!589 = !{!318, !265, i64 28}
!590 = !DILocation(line: 476, column: 21, scope: !587)
!591 = !DILocation(line: 476, column: 37, scope: !587)
!592 = !DILocation(line: 477, column: 28, scope: !587)
!593 = !DILocation(line: 477, column: 10, scope: !587)
!594 = !DILocation(line: 477, column: 54, scope: !587)
!595 = !DILocation(line: 476, column: 9, scope: !588)
!596 = !DILocation(line: 478, column: 16, scope: !587)
!597 = !DILocation(line: 478, column: 7, scope: !587)
!598 = !DILocation(line: 478, column: 19, scope: !587)
!599 = !DILocation(line: 0, scope: !584)
!600 = !DILocation(line: 479, column: 56, scope: !588)
!601 = !DILocation(line: 479, column: 31, scope: !588)
!602 = distinct !{!602, !585, !603, !453, !454}
!603 = !DILocation(line: 480, column: 3, scope: !584)
!604 = !DILocation(line: 481, column: 23, scope: !550)
!605 = !DILocation(line: 481, column: 3, scope: !550)
!606 = !DILocation(line: 482, column: 3, scope: !550)
!607 = !DILocation(line: 483, column: 3, scope: !550)
!608 = !DILocation(line: 483, column: 13, scope: !550)
!609 = !DILocation(line: 484, column: 18, scope: !550)
!610 = !DILocation(line: 485, column: 3, scope: !550)
!611 = !DILocation(line: 486, column: 1, scope: !550)
!612 = !DISubprogram(name: "LogMagickEvent", scope: !85, file: !85, line: 83, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!613 = !DISubroutineType(types: !614)
!614 = !{!143, !615, !152, !152, !544, !152, null}
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !85, line: 58, baseType: !84)
!617 = !DISubprogram(name: "AcquireQuantumMemory", scope: !618, file: !618, line: 42, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!618 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!619 = !DISubroutineType(types: !620)
!620 = !{!126, !544, !544}
!621 = !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !129, file: !129, line: 58, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!622 = !DISubroutineType(types: !623)
!623 = !{!149, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!626 = !DISubprogram(name: "GlobExpression", scope: !627, file: !627, line: 36, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!627 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!628 = !DISubroutineType(types: !629)
!629 = !{!143, !152, !152, !630}
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!631 = !DISubprogram(name: "qsort", scope: !632, file: !632, line: 830, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!632 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!633 = !DISubroutineType(types: !634)
!634 = !{null, !126, !149, !149, !635}
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !632, line: 808, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!179, !545, !545}
!639 = distinct !DISubprogram(name: "ConfigureInfoCompare", scope: !238, file: !238, line: 425, type: !637, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!640 = !{!641, !642, !643, !644}
!641 = !DILocalVariable(name: "x", arg: 1, scope: !639, file: !238, line: 425, type: !545)
!642 = !DILocalVariable(name: "y", arg: 2, scope: !639, file: !238, line: 425, type: !545)
!643 = !DILocalVariable(name: "p", scope: !639, file: !238, line: 428, type: !155)
!644 = !DILocalVariable(name: "q", scope: !639, file: !238, line: 429, type: !155)
!645 = !DILocation(line: 0, scope: !639)
!646 = !DILocation(line: 433, column: 22, scope: !647)
!647 = distinct !DILexicalBlock(scope: !639, file: !238, line: 433, column: 7)
!648 = !DILocation(line: 433, column: 27, scope: !647)
!649 = !DILocation(line: 433, column: 33, scope: !647)
!650 = !DILocation(line: 433, column: 38, scope: !647)
!651 = !DILocation(line: 433, column: 7, scope: !647)
!652 = !DILocation(line: 433, column: 44, scope: !647)
!653 = !DILocation(line: 433, column: 7, scope: !639)
!654 = !DILocation(line: 434, column: 32, scope: !647)
!655 = !DILocation(line: 434, column: 38, scope: !647)
!656 = !DILocation(line: 434, column: 43, scope: !647)
!657 = !DILocation(line: 434, column: 5, scope: !647)
!658 = !DILocation(line: 435, column: 36, scope: !639)
!659 = !DILocation(line: 435, column: 3, scope: !639)
!660 = !DILocation(line: 436, column: 1, scope: !639)
!661 = distinct !DISubprogram(name: "GetConfigureList", scope: !238, file: !238, line: 536, type: !662, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{!156, !152, !553, !368}
!664 = !{!665, !666, !667, !668, !669, !670}
!665 = !DILocalVariable(name: "pattern", arg: 1, scope: !661, file: !238, line: 536, type: !152)
!666 = !DILocalVariable(name: "number_options", arg: 2, scope: !661, file: !238, line: 537, type: !553)
!667 = !DILocalVariable(name: "exception", arg: 3, scope: !661, file: !238, line: 537, type: !368)
!668 = !DILocalVariable(name: "options", scope: !661, file: !238, line: 540, type: !156)
!669 = !DILocalVariable(name: "p", scope: !661, file: !238, line: 543, type: !131)
!670 = !DILocalVariable(name: "i", scope: !661, file: !238, line: 546, type: !229)
!671 = !DILocation(line: 0, scope: !661)
!672 = !DILocation(line: 552, column: 10, scope: !661)
!673 = !DILocation(line: 554, column: 18, scope: !661)
!674 = !DILocation(line: 555, column: 5, scope: !661)
!675 = !DILocation(line: 556, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !661, file: !238, line: 556, column: 7)
!677 = !DILocation(line: 556, column: 7, scope: !661)
!678 = !DILocation(line: 559, column: 37, scope: !661)
!679 = !DILocation(line: 559, column: 5, scope: !661)
!680 = !DILocation(line: 559, column: 53, scope: !661)
!681 = !DILocation(line: 558, column: 21, scope: !661)
!682 = !DILocation(line: 560, column: 15, scope: !683)
!683 = distinct !DILexicalBlock(scope: !661, file: !238, line: 560, column: 7)
!684 = !DILocation(line: 560, column: 7, scope: !661)
!685 = !DILocation(line: 562, column: 21, scope: !661)
!686 = !DILocation(line: 562, column: 3, scope: !661)
!687 = !DILocation(line: 563, column: 27, scope: !661)
!688 = !DILocation(line: 563, column: 3, scope: !661)
!689 = !DILocation(line: 564, column: 54, scope: !661)
!690 = !DILocation(line: 564, column: 29, scope: !661)
!691 = !DILocation(line: 565, column: 15, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !238, line: 565, column: 3)
!693 = distinct !DILexicalBlock(scope: !661, file: !238, line: 565, column: 3)
!694 = !DILocation(line: 565, column: 3, scope: !693)
!695 = !DILocation(line: 567, column: 13, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !238, line: 567, column: 9)
!697 = distinct !DILexicalBlock(scope: !692, file: !238, line: 566, column: 3)
!698 = !DILocation(line: 567, column: 21, scope: !696)
!699 = !DILocation(line: 567, column: 37, scope: !696)
!700 = !DILocation(line: 568, column: 28, scope: !696)
!701 = !DILocation(line: 568, column: 10, scope: !696)
!702 = !DILocation(line: 568, column: 54, scope: !696)
!703 = !DILocation(line: 567, column: 9, scope: !697)
!704 = !DILocation(line: 569, column: 38, scope: !696)
!705 = !DILocation(line: 569, column: 20, scope: !696)
!706 = !DILocation(line: 569, column: 16, scope: !696)
!707 = !DILocation(line: 569, column: 7, scope: !696)
!708 = !DILocation(line: 569, column: 19, scope: !696)
!709 = !DILocation(line: 0, scope: !693)
!710 = !DILocation(line: 570, column: 56, scope: !697)
!711 = !DILocation(line: 570, column: 31, scope: !697)
!712 = distinct !{!712, !694, !713, !453, !454}
!713 = !DILocation(line: 571, column: 3, scope: !693)
!714 = !DILocation(line: 572, column: 23, scope: !661)
!715 = !DILocation(line: 572, column: 3, scope: !661)
!716 = !DILocation(line: 573, column: 3, scope: !661)
!717 = !DILocation(line: 574, column: 3, scope: !661)
!718 = !DILocation(line: 574, column: 13, scope: !661)
!719 = !DILocation(line: 575, column: 18, scope: !661)
!720 = !DILocation(line: 576, column: 3, scope: !661)
!721 = !DILocation(line: 577, column: 1, scope: !661)
!722 = !DISubprogram(name: "ConstantString", scope: !159, file: !159, line: 45, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!723 = !DISubroutineType(types: !724)
!724 = !{!138, !152}
!725 = distinct !DISubprogram(name: "ConfigureCompare", scope: !238, file: !238, line: 521, type: !637, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727, !728, !729, !730}
!727 = !DILocalVariable(name: "x", arg: 1, scope: !725, file: !238, line: 521, type: !545)
!728 = !DILocalVariable(name: "y", arg: 2, scope: !725, file: !238, line: 521, type: !545)
!729 = !DILocalVariable(name: "p", scope: !725, file: !238, line: 524, type: !156)
!730 = !DILocalVariable(name: "q", scope: !725, file: !238, line: 525, type: !156)
!731 = !DILocation(line: 0, scope: !725)
!732 = !DILocation(line: 529, column: 24, scope: !725)
!733 = !DILocation(line: 529, column: 27, scope: !725)
!734 = !DILocation(line: 529, column: 10, scope: !725)
!735 = !DILocation(line: 529, column: 3, scope: !725)
!736 = distinct !DISubprogram(name: "GetConfigureOption", scope: !238, file: !238, line: 601, type: !723, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!737 = !{!738, !739, !740, !741}
!738 = !DILocalVariable(name: "option", arg: 1, scope: !736, file: !238, line: 601, type: !152)
!739 = !DILocalVariable(name: "value", scope: !736, file: !238, line: 604, type: !152)
!740 = !DILocalVariable(name: "configure_info", scope: !736, file: !238, line: 607, type: !131)
!741 = !DILocalVariable(name: "exception", scope: !736, file: !238, line: 610, type: !368)
!742 = !DILocation(line: 0, scope: !736)
!743 = !DILocation(line: 613, column: 10, scope: !736)
!744 = !DILocation(line: 614, column: 13, scope: !736)
!745 = !DILocation(line: 615, column: 18, scope: !736)
!746 = !DILocation(line: 616, column: 13, scope: !736)
!747 = !DILocation(line: 617, column: 22, scope: !748)
!748 = distinct !DILexicalBlock(scope: !736, file: !238, line: 617, column: 7)
!749 = !DILocation(line: 617, column: 7, scope: !736)
!750 = !DILocalVariable(name: "configure_info", arg: 1, scope: !751, file: !238, line: 971, type: !131)
!751 = distinct !DISubprogram(name: "GetConfigureValue", scope: !238, file: !238, line: 971, type: !752, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!152, !131}
!754 = !{!750}
!755 = !DILocation(line: 0, scope: !751, inlinedAt: !756)
!756 = distinct !DILocation(line: 619, column: 9, scope: !736)
!757 = !DILocation(line: 973, column: 10, scope: !751, inlinedAt: !756)
!758 = !DILocation(line: 976, column: 26, scope: !751, inlinedAt: !756)
!759 = !DILocation(line: 620, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !736, file: !238, line: 620, column: 7)
!761 = !DILocation(line: 620, column: 38, scope: !760)
!762 = !DILocation(line: 620, column: 42, scope: !760)
!763 = !{!265, !265, i64 0}
!764 = !DILocation(line: 620, column: 49, scope: !760)
!765 = !DILocation(line: 620, column: 7, scope: !736)
!766 = !DILocation(line: 622, column: 10, scope: !736)
!767 = !DILocation(line: 622, column: 3, scope: !736)
!768 = !DILocation(line: 623, column: 1, scope: !736)
!769 = !DISubprogram(name: "AcquireExceptionInfo", scope: !12, file: !12, line: 146, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!770 = !DISubroutineType(types: !771)
!771 = !{!368}
!772 = !DISubprogram(name: "DestroyExceptionInfo", scope: !12, file: !12, line: 148, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!773 = !DISubroutineType(types: !774)
!774 = !{!368, !368}
!775 = !DILocation(line: 0, scope: !751)
!776 = !DILocation(line: 973, column: 10, scope: !751)
!777 = !DILocation(line: 976, column: 26, scope: !751)
!778 = !DILocation(line: 976, column: 3, scope: !751)
!779 = distinct !DISubprogram(name: "GetConfigureOptions", scope: !238, file: !238, line: 651, type: !412, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787}
!781 = !DILocalVariable(name: "filename", arg: 1, scope: !779, file: !238, line: 651, type: !152)
!782 = !DILocalVariable(name: "exception", arg: 2, scope: !779, file: !238, line: 652, type: !368)
!783 = !DILocalVariable(name: "path", scope: !779, file: !238, line: 655, type: !163)
!784 = !DILocalVariable(name: "element", scope: !779, file: !238, line: 658, type: !152)
!785 = !DILocalVariable(name: "options", scope: !779, file: !238, line: 661, type: !127)
!786 = !DILocalVariable(name: "paths", scope: !779, file: !238, line: 662, type: !127)
!787 = !DILocalVariable(name: "xml", scope: !779, file: !238, line: 665, type: !157)
!788 = !DILocation(line: 0, scope: !779)
!789 = !DILocation(line: 654, column: 3, scope: !779)
!790 = !DILocation(line: 655, column: 5, scope: !779)
!791 = !DILocation(line: 668, column: 10, scope: !779)
!792 = !DILocation(line: 670, column: 10, scope: !779)
!793 = !DILocation(line: 674, column: 11, scope: !779)
!794 = !DILocation(line: 675, column: 9, scope: !779)
!795 = !DILocation(line: 676, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !779, file: !238, line: 676, column: 7)
!797 = !DILocation(line: 676, column: 7, scope: !779)
!798 = !DILocation(line: 678, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !238, line: 677, column: 5)
!800 = !DILocation(line: 679, column: 30, scope: !799)
!801 = !DILocation(line: 680, column: 22, scope: !799)
!802 = !DILocation(line: 680, column: 7, scope: !799)
!803 = !DILocation(line: 682, column: 16, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !238, line: 681, column: 7)
!805 = !DILocation(line: 683, column: 16, scope: !804)
!806 = !DILocation(line: 685, column: 13, scope: !804)
!807 = !DILocation(line: 686, column: 17, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !238, line: 686, column: 13)
!809 = !DILocation(line: 686, column: 13, scope: !804)
!810 = !DILocation(line: 687, column: 18, scope: !808)
!811 = !DILocation(line: 687, column: 11, scope: !808)
!812 = !DILocation(line: 688, column: 32, scope: !804)
!813 = distinct !{!813, !802, !814, !453, !454}
!814 = !DILocation(line: 689, column: 7, scope: !799)
!815 = !DILocation(line: 690, column: 13, scope: !799)
!816 = !DILocation(line: 691, column: 5, scope: !799)
!817 = !DILocation(line: 709, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !779, file: !238, line: 709, column: 7)
!819 = !DILocation(line: 709, column: 48, scope: !818)
!820 = !DILocation(line: 709, column: 7, scope: !779)
!821 = !DILocation(line: 710, column: 12, scope: !818)
!822 = !DILocation(line: 710, column: 5, scope: !818)
!823 = !DILocation(line: 712, column: 3, scope: !779)
!824 = !DILocation(line: 714, column: 1, scope: !779)
!825 = !DILocation(line: 713, column: 3, scope: !779)
!826 = !DISubprogram(name: "CopyMagickString", scope: !159, file: !159, line: 78, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!827 = !DISubroutineType(types: !828)
!828 = !{!149, !138, !152, !544}
!829 = !DISubprogram(name: "NewLinkedList", scope: !129, file: !129, line: 43, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!830 = !DISubroutineType(types: !831)
!831 = !{!127, !544}
!832 = distinct !DISubprogram(name: "GetConfigurePaths", scope: !238, file: !238, line: 742, type: !412, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!833 = !{!834, !835, !836, !837, !838, !840, !843, !844, !846, !849}
!834 = !DILocalVariable(name: "filename", arg: 1, scope: !832, file: !238, line: 742, type: !152)
!835 = !DILocalVariable(name: "exception", arg: 2, scope: !832, file: !238, line: 743, type: !368)
!836 = !DILocalVariable(name: "path", scope: !832, file: !238, line: 750, type: !163)
!837 = !DILocalVariable(name: "paths", scope: !832, file: !238, line: 753, type: !127)
!838 = !DILocalVariable(name: "configure_path", scope: !839, file: !238, line: 763, type: !138)
!839 = distinct !DILexicalBlock(scope: !832, file: !238, line: 761, column: 3)
!840 = !DILocalVariable(name: "p", scope: !841, file: !238, line: 772, type: !138)
!841 = distinct !DILexicalBlock(scope: !842, file: !238, line: 770, column: 7)
!842 = distinct !DILexicalBlock(scope: !839, file: !238, line: 769, column: 9)
!843 = !DILocalVariable(name: "q", scope: !841, file: !238, line: 773, type: !138)
!844 = !DILocalVariable(name: "home", scope: !845, file: !238, line: 828, type: !138)
!845 = distinct !DILexicalBlock(scope: !832, file: !238, line: 826, column: 3)
!846 = !DILocalVariable(name: "prefix", scope: !847, file: !238, line: 862, type: !163)
!847 = distinct !DILexicalBlock(scope: !848, file: !238, line: 855, column: 5)
!848 = distinct !DILexicalBlock(scope: !832, file: !238, line: 854, column: 7)
!849 = !DILocalVariable(name: "home", scope: !850, file: !238, line: 887, type: !138)
!850 = distinct !DILexicalBlock(scope: !832, file: !238, line: 885, column: 3)
!851 = !DILocation(line: 0, scope: !832)
!852 = !DILocation(line: 749, column: 3, scope: !832)
!853 = !DILocation(line: 750, column: 5, scope: !832)
!854 = !DILocation(line: 756, column: 10, scope: !832)
!855 = !DILocation(line: 759, column: 10, scope: !832)
!856 = !DILocation(line: 760, column: 9, scope: !832)
!857 = !DILocation(line: 768, column: 20, scope: !839)
!858 = !DILocation(line: 0, scope: !839)
!859 = !DILocation(line: 769, column: 24, scope: !842)
!860 = !DILocation(line: 769, column: 9, scope: !839)
!861 = !DILocation(line: 775, column: 30, scope: !862)
!862 = distinct !DILexicalBlock(scope: !841, file: !238, line: 775, column: 9)
!863 = !DILocation(line: 0, scope: !841)
!864 = !DILocation(line: 775, column: 9, scope: !862)
!865 = !DILocation(line: 777, column: 41, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !238, line: 776, column: 9)
!867 = distinct !DILexicalBlock(scope: !862, file: !238, line: 775, column: 9)
!868 = !DILocation(line: 777, column: 18, scope: !866)
!869 = !DILocation(line: 778, column: 13, scope: !866)
!870 = !DILocation(line: 779, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !238, line: 779, column: 15)
!872 = !DILocation(line: 779, column: 15, scope: !866)
!873 = !DILocation(line: 780, column: 15, scope: !871)
!874 = !DILocation(line: 780, column: 13, scope: !871)
!875 = !DILocation(line: 781, column: 18, scope: !866)
!876 = !DILocation(line: 781, column: 30, scope: !866)
!877 = !DILocation(line: 782, column: 18, scope: !878)
!878 = distinct !DILexicalBlock(scope: !866, file: !238, line: 782, column: 15)
!879 = !DILocation(line: 782, column: 27, scope: !878)
!880 = !DILocation(line: 782, column: 31, scope: !878)
!881 = !DILocation(line: 782, column: 34, scope: !878)
!882 = !DILocation(line: 782, column: 15, scope: !866)
!883 = !DILocation(line: 783, column: 20, scope: !878)
!884 = !DILocation(line: 783, column: 13, scope: !878)
!885 = !DILocation(line: 785, column: 48, scope: !866)
!886 = !DILocation(line: 785, column: 18, scope: !866)
!887 = !DILocation(line: 786, column: 13, scope: !866)
!888 = !DILocation(line: 775, column: 36, scope: !867)
!889 = distinct !{!889, !864, !890, !453, !454}
!890 = !DILocation(line: 787, column: 9, scope: !862)
!891 = !DILocation(line: 788, column: 24, scope: !841)
!892 = !DILocation(line: 789, column: 7, scope: !841)
!893 = !DILocation(line: 833, column: 10, scope: !845)
!894 = !DILocation(line: 0, scope: !845)
!895 = !DILocation(line: 834, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !845, file: !238, line: 834, column: 9)
!897 = !DILocation(line: 834, column: 9, scope: !845)
!898 = !DILocation(line: 841, column: 16, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !238, line: 835, column: 7)
!900 = !DILocation(line: 843, column: 46, scope: !899)
!901 = !DILocation(line: 843, column: 16, scope: !899)
!902 = !DILocation(line: 844, column: 16, scope: !899)
!903 = !DILocation(line: 846, column: 46, scope: !899)
!904 = !DILocation(line: 846, column: 16, scope: !899)
!905 = !DILocation(line: 847, column: 16, scope: !899)
!906 = !DILocation(line: 849, column: 46, scope: !899)
!907 = !DILocation(line: 849, column: 16, scope: !899)
!908 = !DILocation(line: 851, column: 14, scope: !899)
!909 = !DILocation(line: 852, column: 7, scope: !899)
!910 = !DILocation(line: 854, column: 8, scope: !848)
!911 = !DILocation(line: 854, column: 7, scope: !848)
!912 = !DILocation(line: 854, column: 24, scope: !848)
!913 = !DILocation(line: 854, column: 7, scope: !832)
!914 = !DILocation(line: 861, column: 7, scope: !847)
!915 = !DILocation(line: 862, column: 9, scope: !847)
!916 = !DILocation(line: 867, column: 38, scope: !847)
!917 = !DILocation(line: 867, column: 14, scope: !847)
!918 = !DILocation(line: 868, column: 7, scope: !847)
!919 = !DILocation(line: 869, column: 14, scope: !847)
!920 = !DILocation(line: 871, column: 44, scope: !847)
!921 = !DILocation(line: 871, column: 14, scope: !847)
!922 = !DILocation(line: 872, column: 14, scope: !847)
!923 = !DILocation(line: 874, column: 44, scope: !847)
!924 = !DILocation(line: 874, column: 14, scope: !847)
!925 = !DILocation(line: 875, column: 14, scope: !847)
!926 = !DILocation(line: 877, column: 44, scope: !847)
!927 = !DILocation(line: 877, column: 14, scope: !847)
!928 = !DILocation(line: 879, column: 5, scope: !848)
!929 = !DILocation(line: 879, column: 5, scope: !847)
!930 = !DILocation(line: 883, column: 40, scope: !832)
!931 = !DILocation(line: 883, column: 10, scope: !832)
!932 = !DILocation(line: 889, column: 10, scope: !850)
!933 = !DILocation(line: 0, scope: !850)
!934 = !DILocation(line: 890, column: 14, scope: !935)
!935 = distinct !DILexicalBlock(scope: !850, file: !238, line: 890, column: 9)
!936 = !DILocation(line: 890, column: 9, scope: !850)
!937 = !DILocation(line: 891, column: 12, scope: !935)
!938 = !DILocation(line: 892, column: 14, scope: !939)
!939 = distinct !DILexicalBlock(scope: !850, file: !238, line: 892, column: 9)
!940 = !DILocation(line: 892, column: 9, scope: !850)
!941 = !DILocation(line: 897, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !238, line: 893, column: 7)
!943 = !DILocation(line: 900, column: 46, scope: !942)
!944 = !DILocation(line: 900, column: 16, scope: !942)
!945 = !DILocation(line: 904, column: 16, scope: !942)
!946 = !DILocation(line: 906, column: 46, scope: !942)
!947 = !DILocation(line: 906, column: 16, scope: !942)
!948 = !DILocation(line: 907, column: 14, scope: !942)
!949 = !DILocation(line: 908, column: 7, scope: !942)
!950 = !DILocation(line: 947, column: 1, scope: !832)
!951 = !DILocation(line: 946, column: 3, scope: !832)
!952 = !DISubprogram(name: "FormatLocaleString", scope: !953, file: !953, line: 71, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!953 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!954 = !DISubroutineType(types: !955)
!955 = !{!229, !956, !544, !957, null}
!956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!958 = !DISubprogram(name: "ConfigureFileToStringInfo", scope: !159, file: !159, line: 90, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!959 = !DISubroutineType(types: !960)
!960 = !{!157, !152}
!961 = !DISubprogram(name: "AppendValueToLinkedList", scope: !129, file: !129, line: 46, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!962 = !DISubroutineType(types: !963)
!963 = !{!143, !127, !545}
!964 = !DISubprogram(name: "RelinquishMagickMemory", scope: !618, file: !618, line: 51, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!965 = !DISubprogram(name: "ThrowMagickException", scope: !12, file: !12, line: 156, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!966 = !DISubroutineType(types: !967)
!967 = !{!143, !368, !152, !152, !544, !968, !152, !152, null}
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!969 = !DISubprogram(name: "GetEnvironmentValue", scope: !159, file: !159, line: 50, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!970 = !DISubprogram(name: "ConcatenateMagickString", scope: !159, file: !159, line: 76, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!971 = !DISubprogram(name: "DestroyString", scope: !159, file: !159, line: 46, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!972 = !DISubroutineType(types: !973)
!973 = !{!138, !138}
!974 = !DISubprogram(name: "GetClientPath", scope: !975, file: !975, line: 26, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!975 = !DIFile(filename: "apps/538.imagick_r/src/magick/client.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "344c97aae512d59869dffffe3d724c6b")
!976 = !DISubroutineType(types: !977)
!977 = !{!152}
!978 = !DISubprogram(name: "ChopPathComponents", scope: !110, file: !110, line: 66, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !138, !544}
!981 = distinct !DISubprogram(name: "ListConfigureInfo", scope: !238, file: !238, line: 1040, type: !982, scopeLine: 1042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !985)
!982 = !DISubroutineType(types: !983)
!983 = !{!143, !984, !368}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994}
!986 = !DILocalVariable(name: "file", arg: 1, scope: !981, file: !238, line: 1040, type: !984)
!987 = !DILocalVariable(name: "exception", arg: 2, scope: !981, file: !238, line: 1041, type: !368)
!988 = !DILocalVariable(name: "name", scope: !981, file: !238, line: 1044, type: !152)
!989 = !DILocalVariable(name: "path", scope: !981, file: !238, line: 1045, type: !152)
!990 = !DILocalVariable(name: "value", scope: !981, file: !238, line: 1046, type: !152)
!991 = !DILocalVariable(name: "configure_info", scope: !981, file: !238, line: 1049, type: !155)
!992 = !DILocalVariable(name: "i", scope: !981, file: !238, line: 1052, type: !229)
!993 = !DILocalVariable(name: "number_options", scope: !981, file: !238, line: 1055, type: !149)
!994 = !DILocalVariable(name: "j", scope: !981, file: !238, line: 1058, type: !229)
!995 = !DILocation(line: 0, scope: !981)
!996 = !DILocation(line: 1054, column: 3, scope: !981)
!997 = !DILocation(line: 1060, column: 12, scope: !998)
!998 = distinct !DILexicalBlock(scope: !981, file: !238, line: 1060, column: 7)
!999 = !DILocation(line: 1060, column: 7, scope: !981)
!1000 = !DILocation(line: 1062, column: 18, scope: !981)
!1001 = !DILocation(line: 1063, column: 22, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !981, file: !238, line: 1063, column: 7)
!1003 = !DILocation(line: 1063, column: 7, scope: !981)
!1004 = !DILocation(line: 1066, column: 15, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !238, line: 1066, column: 3)
!1006 = distinct !DILexicalBlock(scope: !981, file: !238, line: 1066, column: 3)
!1007 = !DILocation(line: 1066, column: 3, scope: !1006)
!1008 = !DILocation(line: 1068, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !238, line: 1068, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !238, line: 1067, column: 3)
!1011 = !DILocation(line: 1068, column: 28, scope: !1009)
!1012 = !DILocation(line: 1068, column: 36, scope: !1009)
!1013 = !DILocation(line: 1068, column: 9, scope: !1010)
!1014 = !DILocation(line: 1070, column: 15, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !238, line: 1070, column: 9)
!1016 = !DILocation(line: 1070, column: 39, scope: !1015)
!1017 = !DILocation(line: 1071, column: 48, scope: !1015)
!1018 = !DILocation(line: 1071, column: 10, scope: !1015)
!1019 = !DILocation(line: 1071, column: 54, scope: !1015)
!1020 = !DILocation(line: 1070, column: 9, scope: !1010)
!1021 = !DILocation(line: 1073, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !238, line: 1073, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !238, line: 1072, column: 7)
!1024 = !DILocation(line: 1073, column: 32, scope: !1022)
!1025 = !DILocation(line: 1073, column: 37, scope: !1022)
!1026 = !DILocation(line: 1073, column: 13, scope: !1023)
!1027 = !DILocation(line: 1074, column: 18, scope: !1022)
!1028 = !DILocation(line: 1074, column: 11, scope: !1022)
!1029 = !DILocation(line: 1076, column: 16, scope: !1023)
!1030 = !DILocation(line: 1077, column: 16, scope: !1023)
!1031 = !DILocation(line: 1080, column: 7, scope: !1023)
!1032 = !DILocation(line: 1081, column: 10, scope: !1010)
!1033 = !DILocation(line: 1081, column: 29, scope: !1010)
!1034 = !DILocation(line: 1083, column: 28, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1010, file: !238, line: 1083, column: 9)
!1036 = !DILocation(line: 1083, column: 33, scope: !1035)
!1037 = !DILocation(line: 1083, column: 9, scope: !1010)
!1038 = !DILocation(line: 1085, column: 12, scope: !1010)
!1039 = !DILocation(line: 1086, column: 22, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1010, file: !238, line: 1086, column: 5)
!1041 = !DILocation(line: 1086, column: 38, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !238, line: 1086, column: 5)
!1043 = !DILocation(line: 1086, column: 5, scope: !1040)
!1044 = !DILocation(line: 1087, column: 14, scope: !1042)
!1045 = !DILocation(line: 1086, column: 46, scope: !1042)
!1046 = distinct !{!1046, !1043, !1047, !453, !454}
!1047 = !DILocation(line: 1087, column: 39, scope: !1040)
!1048 = !DILocation(line: 1088, column: 12, scope: !1010)
!1049 = !DILocation(line: 1090, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1010, file: !238, line: 1090, column: 9)
!1051 = !DILocation(line: 1090, column: 28, scope: !1050)
!1052 = !DILocation(line: 1090, column: 34, scope: !1050)
!1053 = !DILocation(line: 1090, column: 9, scope: !1010)
!1054 = !DILocation(line: 1092, column: 12, scope: !1010)
!1055 = !DILocation(line: 1093, column: 12, scope: !1010)
!1056 = !DILocation(line: 1094, column: 3, scope: !1010)
!1057 = !DILocation(line: 1066, column: 44, scope: !1005)
!1058 = distinct !{!1058, !1007, !1059, !453, !454}
!1059 = !DILocation(line: 1094, column: 3, scope: !1006)
!1060 = !DILocation(line: 1095, column: 10, scope: !981)
!1061 = !DILocation(line: 1096, column: 43, scope: !981)
!1062 = !DILocation(line: 1098, column: 3, scope: !981)
!1063 = !DILocation(line: 1099, column: 1, scope: !981)
!1064 = !DISubprogram(name: "FormatLocaleFile", scope: !953, file: !953, line: 67, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!229, !984, !957, null}
!1067 = !DISubprogram(name: "fflush", scope: !230, file: !230, line: 218, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!179, !984}
!1070 = !DISubprogram(name: "DestroyStringInfo", scope: !159, file: !159, line: 91, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!157, !157}
!1073 = !DISubprogram(name: "GetExceptionInfo", scope: !12, file: !12, line: 166, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !368}
!1076 = !DISubprogram(name: "GetExceptionMessage", scope: !12, file: !12, line: 137, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!138, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1080 = !DISubprogram(name: "CatchException", scope: !12, file: !12, line: 164, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1081 = !DISubprogram(name: "MagickCoreTerminus", scope: !1082, file: !1082, line: 147, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1082 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1083 = distinct !DISubprogram(name: "LoadConfigureCache", scope: !238, file: !238, line: 1132, type: !1084, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!143, !127, !152, !152, !544, !368}
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1108, !1109, !1114}
!1087 = !DILocalVariable(name: "configure_cache", arg: 1, scope: !1083, file: !238, line: 1132, type: !127)
!1088 = !DILocalVariable(name: "xml", arg: 2, scope: !1083, file: !238, line: 1133, type: !152)
!1089 = !DILocalVariable(name: "filename", arg: 3, scope: !1083, file: !238, line: 1133, type: !152)
!1090 = !DILocalVariable(name: "depth", arg: 4, scope: !1083, file: !238, line: 1133, type: !544)
!1091 = !DILocalVariable(name: "exception", arg: 5, scope: !1083, file: !238, line: 1134, type: !368)
!1092 = !DILocalVariable(name: "keyword", scope: !1083, file: !238, line: 1137, type: !163)
!1093 = !DILocalVariable(name: "token", scope: !1083, file: !238, line: 1138, type: !138)
!1094 = !DILocalVariable(name: "configure_info", scope: !1083, file: !238, line: 1141, type: !154)
!1095 = !DILocalVariable(name: "q", scope: !1083, file: !238, line: 1144, type: !152)
!1096 = !DILocalVariable(name: "status", scope: !1083, file: !238, line: 1147, type: !143)
!1097 = !DILocalVariable(name: "path", scope: !1098, file: !238, line: 1204, type: !163)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !238, line: 1202, column: 17)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !238, line: 1198, column: 19)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !238, line: 1197, column: 13)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !238, line: 1196, column: 15)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !238, line: 1190, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !238, line: 1185, column: 7)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1184, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !238, line: 1158, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !238, line: 1157, column: 3)
!1107 = distinct !DILexicalBlock(scope: !1083, file: !238, line: 1157, column: 3)
!1108 = !DILocalVariable(name: "xml", scope: !1098, file: !238, line: 1205, type: !138)
!1109 = !DILocalVariable(name: "message", scope: !1110, file: !238, line: 1235, type: !138)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !238, line: 1235, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !238, line: 1234, column: 13)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !238, line: 1228, column: 7)
!1113 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1227, column: 9)
!1114 = !DILocalVariable(name: "exception", scope: !1110, file: !238, line: 1235, type: !369)
!1115 = !DILocation(line: 0, scope: !1083)
!1116 = !DILocation(line: 1136, column: 3, scope: !1083)
!1117 = !DILocation(line: 1137, column: 5, scope: !1083)
!1118 = !DILocation(line: 1143, column: 3, scope: !1083)
!1119 = !DILocation(line: 1152, column: 10, scope: !1083)
!1120 = !DILocation(line: 1156, column: 9, scope: !1083)
!1121 = !DILocation(line: 1157, column: 9, scope: !1107)
!1122 = !DILocation(line: 1157, column: 24, scope: !1106)
!1123 = !DILocation(line: 1157, column: 27, scope: !1106)
!1124 = !DILocation(line: 1157, column: 3, scope: !1107)
!1125 = !DILocation(line: 1162, column: 5, scope: !1105)
!1126 = !DILocation(line: 1163, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1163, column: 9)
!1128 = !DILocation(line: 1163, column: 16, scope: !1127)
!1129 = !DILocation(line: 1163, column: 9, scope: !1105)
!1130 = !DILocation(line: 1165, column: 12, scope: !1105)
!1131 = !DILocation(line: 1166, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1166, column: 9)
!1133 = !DILocation(line: 1166, column: 47, scope: !1132)
!1134 = !DILocation(line: 1166, column: 9, scope: !1105)
!1135 = !DILocation(line: 1171, column: 32, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !238, line: 1167, column: 7)
!1137 = !DILocation(line: 1171, column: 17, scope: !1136)
!1138 = !DILocation(line: 1171, column: 42, scope: !1136)
!1139 = !DILocation(line: 1171, column: 48, scope: !1136)
!1140 = !DILocation(line: 1171, column: 53, scope: !1136)
!1141 = !DILocation(line: 1171, column: 52, scope: !1136)
!1142 = !DILocation(line: 1171, column: 55, scope: !1136)
!1143 = !DILocation(line: 1171, column: 9, scope: !1136)
!1144 = !DILocation(line: 1172, column: 11, scope: !1136)
!1145 = distinct !{!1145, !1143, !1146, !453, !454}
!1146 = !DILocation(line: 1172, column: 36, scope: !1136)
!1147 = !DILocation(line: 1157, column: 25, scope: !1106)
!1148 = distinct !{!1148, !1124, !1149, !453, !454}
!1149 = !DILocation(line: 1297, column: 3, scope: !1107)
!1150 = !DILocation(line: 1175, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1175, column: 9)
!1152 = !DILocation(line: 1175, column: 42, scope: !1151)
!1153 = !DILocation(line: 1175, column: 9, scope: !1105)
!1154 = !DILocation(line: 1180, column: 32, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !238, line: 1176, column: 7)
!1156 = !DILocation(line: 1180, column: 17, scope: !1155)
!1157 = !DILocation(line: 1180, column: 42, scope: !1155)
!1158 = !DILocation(line: 1180, column: 48, scope: !1155)
!1159 = !DILocation(line: 1180, column: 53, scope: !1155)
!1160 = !DILocation(line: 1180, column: 52, scope: !1155)
!1161 = !DILocation(line: 1180, column: 55, scope: !1155)
!1162 = !DILocation(line: 1180, column: 9, scope: !1155)
!1163 = !DILocation(line: 1181, column: 11, scope: !1155)
!1164 = distinct !{!1164, !1162, !1165, !453, !454}
!1165 = !DILocation(line: 1181, column: 36, scope: !1155)
!1166 = !DILocation(line: 1184, column: 9, scope: !1104)
!1167 = !DILocation(line: 1184, column: 43, scope: !1104)
!1168 = !DILocation(line: 1184, column: 9, scope: !1105)
!1169 = !DILocation(line: 1198, column: 19, scope: !1100)
!1170 = !DILocation(line: 1189, column: 18, scope: !1103)
!1171 = !DILocation(line: 1189, column: 25, scope: !1103)
!1172 = !DILocation(line: 1189, column: 33, scope: !1103)
!1173 = !DILocation(line: 1189, column: 37, scope: !1103)
!1174 = !DILocation(line: 1189, column: 48, scope: !1103)
!1175 = !DILocation(line: 1189, column: 57, scope: !1103)
!1176 = !DILocation(line: 1189, column: 62, scope: !1103)
!1177 = !DILocation(line: 1189, column: 61, scope: !1103)
!1178 = !DILocation(line: 1189, column: 64, scope: !1103)
!1179 = !DILocation(line: 1189, column: 9, scope: !1103)
!1180 = !DILocation(line: 1191, column: 18, scope: !1102)
!1181 = !DILocation(line: 1192, column: 26, scope: !1102)
!1182 = !DILocation(line: 1192, column: 11, scope: !1102)
!1183 = !DILocation(line: 1193, column: 15, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1102, file: !238, line: 1193, column: 15)
!1185 = !DILocation(line: 1193, column: 22, scope: !1184)
!1186 = !DILocation(line: 1193, column: 15, scope: !1102)
!1187 = distinct !{!1187, !1179, !1188, !453, !454}
!1188 = !DILocation(line: 1224, column: 9, scope: !1103)
!1189 = !DILocation(line: 1195, column: 26, scope: !1102)
!1190 = !DILocation(line: 1195, column: 11, scope: !1102)
!1191 = !DILocation(line: 1196, column: 15, scope: !1101)
!1192 = !DILocation(line: 1196, column: 45, scope: !1101)
!1193 = !DILocation(line: 1196, column: 15, scope: !1102)
!1194 = !DILocation(line: 1199, column: 24, scope: !1099)
!1195 = !DILocation(line: 1199, column: 17, scope: !1099)
!1196 = !DILocation(line: 1203, column: 19, scope: !1098)
!1197 = !DILocation(line: 1204, column: 21, scope: !1098)
!1198 = !DILocation(line: 1207, column: 19, scope: !1098)
!1199 = !DILocation(line: 1208, column: 23, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1098, file: !238, line: 1208, column: 23)
!1201 = !DILocation(line: 1208, column: 29, scope: !1200)
!1202 = !DILocation(line: 1208, column: 23, scope: !1098)
!1203 = !DILocation(line: 1209, column: 28, scope: !1200)
!1204 = !DILocation(line: 1209, column: 21, scope: !1200)
!1205 = !DILocation(line: 1211, column: 23, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1098, file: !238, line: 1211, column: 23)
!1207 = !DILocation(line: 1211, column: 30, scope: !1206)
!1208 = !DILocation(line: 1211, column: 23, scope: !1098)
!1209 = !DILocation(line: 1212, column: 28, scope: !1206)
!1210 = !DILocation(line: 1212, column: 21, scope: !1206)
!1211 = !DILocation(line: 1214, column: 28, scope: !1206)
!1212 = !DILocation(line: 1215, column: 23, scope: !1098)
!1213 = !DILocation(line: 0, scope: !1098)
!1214 = !DILocation(line: 1216, column: 27, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1098, file: !238, line: 1216, column: 23)
!1216 = !DILocation(line: 1216, column: 23, scope: !1098)
!1217 = !DILocation(line: 1218, column: 31, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !238, line: 1217, column: 21)
!1219 = !DILocation(line: 1218, column: 29, scope: !1218)
!1220 = !DILocation(line: 1220, column: 36, scope: !1218)
!1221 = !DILocation(line: 1221, column: 21, scope: !1218)
!1222 = !DILocation(line: 1222, column: 17, scope: !1099)
!1223 = !DILocation(line: 1227, column: 9, scope: !1113)
!1224 = !DILocation(line: 1227, column: 45, scope: !1113)
!1225 = !DILocation(line: 1227, column: 9, scope: !1105)
!1226 = !DILocation(line: 1232, column: 42, scope: !1112)
!1227 = !DILocation(line: 1234, column: 28, scope: !1111)
!1228 = !DILocation(line: 1234, column: 13, scope: !1112)
!1229 = !DILocation(line: 1235, column: 11, scope: !1110)
!1230 = !DILocation(line: 0, scope: !1110)
!1231 = !DILocation(line: 1236, column: 16, scope: !1112)
!1232 = !DILocation(line: 1237, column: 30, scope: !1112)
!1233 = !DILocation(line: 1237, column: 29, scope: !1112)
!1234 = !DILocation(line: 1238, column: 25, scope: !1112)
!1235 = !DILocation(line: 1238, column: 31, scope: !1112)
!1236 = !DILocation(line: 1239, column: 25, scope: !1112)
!1237 = !DILocation(line: 1239, column: 34, scope: !1112)
!1238 = !DILocation(line: 1240, column: 9, scope: !1112)
!1239 = !DILocation(line: 1242, column: 24, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1242, column: 9)
!1241 = !DILocation(line: 1242, column: 9, scope: !1105)
!1242 = !DILocation(line: 1244, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1244, column: 9)
!1244 = !DILocation(line: 1244, column: 37, scope: !1243)
!1245 = !DILocation(line: 1244, column: 9, scope: !1105)
!1246 = !DILocation(line: 1246, column: 16, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !238, line: 1245, column: 7)
!1248 = !DILocation(line: 1247, column: 20, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !238, line: 1247, column: 13)
!1250 = !DILocation(line: 1247, column: 13, scope: !1247)
!1251 = !DILocation(line: 1250, column: 29, scope: !1249)
!1252 = !DILocation(line: 1248, column: 18, scope: !1249)
!1253 = !DILocation(line: 1248, column: 11, scope: !1249)
!1254 = !DILocation(line: 1257, column: 20, scope: !1105)
!1255 = !DILocation(line: 1257, column: 5, scope: !1105)
!1256 = !DILocation(line: 1258, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1258, column: 9)
!1258 = !DILocation(line: 1258, column: 16, scope: !1257)
!1259 = !DILocation(line: 1258, column: 9, scope: !1105)
!1260 = !DILocation(line: 1260, column: 20, scope: !1105)
!1261 = !DILocation(line: 1260, column: 5, scope: !1105)
!1262 = !DILocation(line: 1261, column: 20, scope: !1105)
!1263 = !DILocation(line: 1261, column: 5, scope: !1105)
!1264 = !DILocation(line: 1262, column: 13, scope: !1105)
!1265 = !DILocation(line: 1262, column: 5, scope: !1105)
!1266 = !DILocation(line: 1267, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !238, line: 1267, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !238, line: 1266, column: 7)
!1269 = distinct !DILexicalBlock(scope: !1105, file: !238, line: 1263, column: 5)
!1270 = !DILocation(line: 1267, column: 52, scope: !1267)
!1271 = !DILocation(line: 1267, column: 13, scope: !1268)
!1272 = !DILocation(line: 1269, column: 34, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !238, line: 1268, column: 11)
!1274 = !DILocation(line: 1269, column: 29, scope: !1273)
!1275 = !DILocation(line: 1269, column: 33, scope: !1273)
!1276 = !DILocation(line: 1270, column: 13, scope: !1273)
!1277 = !DILocation(line: 1277, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !238, line: 1277, column: 13)
!1279 = distinct !DILexicalBlock(scope: !1269, file: !238, line: 1276, column: 7)
!1280 = !DILocation(line: 1277, column: 55, scope: !1278)
!1281 = !DILocation(line: 1277, column: 13, scope: !1279)
!1282 = !DILocation(line: 1279, column: 37, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !238, line: 1278, column: 11)
!1284 = !DILocation(line: 1279, column: 29, scope: !1283)
!1285 = !DILocation(line: 1279, column: 36, scope: !1283)
!1286 = !DILocation(line: 1280, column: 13, scope: !1283)
!1287 = !DILocation(line: 1287, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !238, line: 1287, column: 13)
!1289 = distinct !DILexicalBlock(scope: !1269, file: !238, line: 1286, column: 7)
!1290 = !DILocation(line: 1287, column: 53, scope: !1288)
!1291 = !DILocation(line: 1287, column: 13, scope: !1289)
!1292 = !DILocation(line: 1289, column: 35, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 1288, column: 11)
!1294 = !DILocation(line: 1289, column: 29, scope: !1293)
!1295 = !DILocation(line: 1289, column: 34, scope: !1293)
!1296 = !DILocation(line: 1290, column: 13, scope: !1293)
!1297 = !DILocation(line: 1298, column: 18, scope: !1083)
!1298 = !DILocation(line: 1300, column: 1, scope: !1083)
!1299 = !DILocation(line: 1299, column: 3, scope: !1083)
!1300 = !DISubprogram(name: "GetStringInfoDatum", scope: !159, file: !159, line: 97, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!167, !232}
!1303 = !DISubprogram(name: "GetStringInfoPath", scope: !159, file: !159, line: 58, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!152, !232}
!1306 = !DISubprogram(name: "AcquireMagickMemory", scope: !618, file: !618, line: 40, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!126, !544}
!1309 = !DISubprogram(name: "ResetMagickMemory", scope: !618, file: !618, line: 52, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!126, !126, !179, !544}
!1312 = !DISubprogram(name: "AcquireString", scope: !159, file: !159, line: 43, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1313 = !DISubprogram(name: "GetMagickToken", scope: !627, file: !627, line: 45, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !152, !234, !138}
!1316 = !DISubprogram(name: "LocaleNCompare", scope: !159, file: !159, line: 67, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!179, !152, !152, !544}
!1319 = !DISubprogram(name: "GetPathComponent", scope: !110, file: !110, line: 68, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !152, !1322, !138}
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !110, line: 36, baseType: !109)
!1323 = !DISubprogram(name: "FileToXML", scope: !1324, file: !1324, line: 26, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1324 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!138, !152, !544}
!1327 = !DISubprogram(name: "IsMagickTrue", scope: !627, file: !627, line: 38, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!143, !152}
