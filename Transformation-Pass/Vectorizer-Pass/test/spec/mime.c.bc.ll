; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/mime.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MimeInfo = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i64, i64, i32, i64, ptr, i32, i64 }

@mime_cache = internal unnamed_addr global ptr null, align 8, !dbg !0
@mime_semaphore = internal global ptr null, align 8, !dbg !357
@.str = private unnamed_addr constant [83 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/mime.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Type                   Description\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"file.%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"image/x-%s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Loading mime map \22%s\22 ...\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"<?xml version=\221.0\22?><mimemap></mimemap>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"mime.xml\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @LoadMimeLists(ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata ptr %exception, metadata !384, metadata !DIExpression()), !dbg !385
  %call = tail call fastcc ptr @AcquireMimeCache(ptr noundef %name, ptr noundef %exception), !dbg !386
  store ptr %call, ptr @mime_cache, align 8, !dbg !387, !tbaa !388
  %cmp = icmp ne ptr %call, null, !dbg !392
  %conv = zext i1 %cmp to i32, !dbg !392
  ret i32 %conv, !dbg !393
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @AcquireMimeCache(ptr noundef %filename, ptr noundef %exception) unnamed_addr #0 !dbg !394 {
entry:
  %exception1 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %filename, metadata !398, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr %exception, metadata !399, metadata !DIExpression()), !dbg !410
  %call = tail call ptr @NewLinkedList(i64 noundef 0) #15, !dbg !411
  call void @llvm.dbg.value(metadata ptr %call, metadata !400, metadata !DIExpression()), !dbg !410
  %cmp = icmp eq ptr %call, null, !dbg !412
  br i1 %cmp, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #15, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !406, metadata !DIExpression()), !dbg !414
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #15, !dbg !414
  %call2 = tail call ptr @__errno_location() #16, !dbg !414
  %0 = load i32, ptr %call2, align 4, !dbg !414, !tbaa !415
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0) #15, !dbg !414
  call void @llvm.dbg.value(metadata ptr %call3, metadata !403, metadata !DIExpression()), !dbg !417
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %call3) #15, !dbg !414
  %call5 = call ptr @DestroyString(ptr noundef %call3) #15, !dbg !414
  call void @llvm.dbg.value(metadata ptr %call5, metadata !403, metadata !DIExpression()), !dbg !417
  call void @CatchException(ptr noundef nonnull %exception1) #15, !dbg !414
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #15, !dbg !414
  call void @MagickCoreTerminus() #15, !dbg !414
  call void @_exit(i32 noundef 1) #17, !dbg !414
  unreachable, !dbg !414

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !401, metadata !DIExpression()), !dbg !410
  %call7 = tail call ptr @GetConfigureOptions(ptr noundef %filename, ptr noundef %exception) #15, !dbg !418
  call void @llvm.dbg.value(metadata ptr %call7, metadata !409, metadata !DIExpression()), !dbg !419
  %call8 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7) #15, !dbg !420
  call void @llvm.dbg.value(metadata ptr %call8, metadata !407, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 poison, metadata !401, metadata !DIExpression()), !dbg !410
  %cmp9.not33 = icmp eq ptr %call8, null, !dbg !421
  br i1 %cmp9.not33, label %while.end, label %while.body, !dbg !422

while.body:                                       ; preds = %if.end, %while.body
  %option.034 = phi ptr [ %call13, %while.body ], [ %call8, %if.end ]
  call void @llvm.dbg.value(metadata ptr %option.034, metadata !407, metadata !DIExpression()), !dbg !419
  %call10 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.034) #15, !dbg !423
  %call11 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.034) #15, !dbg !425
  %call12 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %call, ptr noundef %call10, ptr noundef %call11, i64 noundef 0, ptr noundef %exception), !dbg !426
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call12), metadata !401, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)), !dbg !410
  %call13 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7) #15, !dbg !427
  call void @llvm.dbg.value(metadata ptr %call13, metadata !407, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 poison, metadata !401, metadata !DIExpression()), !dbg !410
  %cmp9.not = icmp eq ptr %call13, null, !dbg !421
  br i1 %cmp9.not, label %while.end, label %while.body, !dbg !422, !llvm.loop !428

while.end:                                        ; preds = %while.body, %if.end
  %call14 = tail call ptr @DestroyConfigureOptions(ptr noundef %call7) #15, !dbg !432
  call void @llvm.dbg.value(metadata ptr %call14, metadata !409, metadata !DIExpression()), !dbg !419
  %call15 = tail call i32 @IsLinkedListEmpty(ptr noundef nonnull %call) #15, !dbg !433
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !435
  br i1 %cmp16.not, label %if.end20, label %if.then17, !dbg !436

if.then17:                                        ; preds = %while.end
  %call18 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %call, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.14, i64 noundef 0, ptr noundef %exception), !dbg !437
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call18), metadata !401, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)), !dbg !410
  br label %if.end20, !dbg !438

if.end20:                                         ; preds = %if.then17, %while.end
  ret ptr %call, !dbg !439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeInfo(ptr noundef %filename, ptr noundef readonly %magic, i64 noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !440 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !445, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %magic, metadata !446, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %length, metadata !447, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %exception, metadata !448, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %exception, metadata !457, metadata !DIExpression()) #15, !dbg !462
  %0 = load ptr, ptr @mime_cache, align 8, !dbg !465, !tbaa !388
  %cmp.i = icmp eq ptr %0, null, !dbg !467
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !468

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @mime_semaphore, align 8, !dbg !469, !tbaa !388
  %cmp1.i = icmp eq ptr %1, null, !dbg !472
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !473

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15, !dbg !474
  %.pre.i = load ptr, ptr @mime_semaphore, align 8, !dbg !475, !tbaa !388
  br label %if.end.i, !dbg !474

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !475
  tail call void @LockSemaphoreInfo(ptr noundef %2) #15, !dbg !476
  %3 = load ptr, ptr @mime_cache, align 8, !dbg !477, !tbaa !388
  %cmp3.i = icmp eq ptr %3, null, !dbg !479
  br i1 %cmp3.i, label %if.then4.i, label %IsMimeCacheInstantiated.exit, !dbg !480

if.then4.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc ptr @AcquireMimeCache(ptr noundef nonnull @.str.38, ptr noundef %exception) #15, !dbg !481
  store ptr %call.i, ptr @mime_cache, align 8, !dbg !482, !tbaa !388
  br label %IsMimeCacheInstantiated.exit, !dbg !483

IsMimeCacheInstantiated.exit:                     ; preds = %if.end.i, %if.then4.i
  %4 = load ptr, ptr @mime_semaphore, align 8, !dbg !484, !tbaa !388
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #15, !dbg !485
  %.pre8.i = load ptr, ptr @mime_cache, align 8, !dbg !486, !tbaa !388
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !487
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !488

if.end:                                           ; preds = %entry, %IsMimeCacheInstantiated.exit
  call void @llvm.dbg.value(metadata ptr null, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8 1, metadata !454, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !456
  call void @llvm.dbg.value(metadata i56 0, metadata !454, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 56)), !dbg !456
  %5 = load ptr, ptr @mime_semaphore, align 8, !dbg !489, !tbaa !388
  tail call void @LockSemaphoreInfo(ptr noundef %5) #15, !dbg !490
  %6 = load ptr, ptr @mime_cache, align 8, !dbg !491, !tbaa !388
  tail call void @ResetLinkedListIterator(ptr noundef %6) #15, !dbg !492
  %7 = load ptr, ptr @mime_cache, align 8, !dbg !493, !tbaa !388
  %call1 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #15, !dbg !494
  call void @llvm.dbg.value(metadata ptr %call1, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp2 = icmp eq ptr %magic, null, !dbg !495
  %cmp3 = icmp eq i64 %length, 0
  %or.cond = or i1 %cmp2, %cmp3, !dbg !497
  br i1 %or.cond, label %cleanup.sink.split, label %while.cond.preheader, !dbg !497

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr null, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %call1, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp6.not309317 = icmp eq ptr %call1, null, !dbg !498
  br i1 %cmp6.not309317, label %cleanup.sink.split, label %while.body.lr.ph.lr.ph, !dbg !499

while.body.lr.ph.lr.ph:                           ; preds = %while.cond.preheader
  %cmp16 = icmp ne ptr %filename, null
  br label %while.body.lr.ph, !dbg !499

while.body:                                       ; preds = %while.body.lr.ph, %if.then11
  %p.0310 = phi ptr [ %call12, %if.then11 ], [ %p.0.ph318, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %p.0310, metadata !451, metadata !DIExpression()), !dbg !456
  %priority = getelementptr inbounds %struct._MimeInfo, ptr %p.0310, i64 0, i32 4, !dbg !500
  %8 = load i64, ptr %priority, align 8, !dbg !500, !tbaa !504
  %9 = load i64, ptr %priority9, align 8, !dbg !508, !tbaa !504
  %cmp10 = icmp sgt i64 %8, %9, !dbg !509
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !510

if.then11:                                        ; preds = %while.body
  %10 = load ptr, ptr @mime_cache, align 8, !dbg !511, !tbaa !388
  %call12 = tail call ptr @GetNextValueInLinkedList(ptr noundef %10) #15, !dbg !513
  call void @llvm.dbg.value(metadata ptr %mime_info.0.ph319, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %call12, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp6.not = icmp eq ptr %call12, null, !dbg !498
  br i1 %cmp6.not, label %while.end, label %while.body, !dbg !499, !llvm.loop !514

if.end14:                                         ; preds = %while.body, %while.body.lr.ph
  %.us-phi = phi ptr [ %p.0.ph318, %while.body.lr.ph ], [ %p.0310, %while.body ]
  %pattern = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 3, !dbg !516
  %11 = load ptr, ptr %pattern, align 8, !dbg !516, !tbaa !518
  %cmp15 = icmp ne ptr %11, null, !dbg !519
  %or.cond205 = and i1 %cmp16, %cmp15, !dbg !520
  br i1 %or.cond205, label %if.then17, label %if.end24, !dbg !520

if.then17:                                        ; preds = %if.end14
  %call19 = tail call i32 @GlobExpression(ptr noundef nonnull %filename, ptr noundef nonnull %11, i32 noundef 0) #15, !dbg !521
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !524
  %spec.select = select i1 %cmp20.not, ptr %mime_info.0.ph319, ptr %.us-phi, !dbg !525
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %call23, metadata !451, metadata !DIExpression()), !dbg !456
  br label %while.cond.outer.backedge, !dbg !526

while.cond.outer.backedge:                        ; preds = %if.end181, %for.cond, %for.body, %sw.bb, %sw.bb44, %sw.bb96, %if.then31, %if.else, %if.then81, %if.else87, %if.then156, %if.else162, %for.cond.preheader, %if.then17
  %mime_info.0.ph.be = phi ptr [ %spec.select, %if.then17 ], [ %mime_info.0.ph319, %sw.bb96 ], [ %mime_info.0.ph319, %sw.bb44 ], [ %mime_info.0.ph319, %sw.bb ], [ %spec.select295, %if.then31 ], [ %spec.select296, %if.else ], [ %spec.select298, %if.then81 ], [ %spec.select299, %if.else87 ], [ %spec.select301, %if.then156 ], [ %spec.select302, %if.else162 ], [ %mime_info.0.ph319, %for.cond.preheader ], [ %mime_info.0.ph319, %for.body ], [ %mime_info.0.ph319, %for.cond ], [ %.us-phi, %if.end181 ]
  %12 = load ptr, ptr @mime_cache, align 8, !dbg !527, !tbaa !388
  %call23 = tail call ptr @GetNextValueInLinkedList(ptr noundef %12) #15, !dbg !527
  call void @llvm.dbg.value(metadata ptr %mime_info.0.ph.be, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %call23, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp6.not309 = icmp eq ptr %call23, null, !dbg !498
  br i1 %cmp6.not309, label %while.end, label %while.body.lr.ph, !dbg !499, !llvm.loop !514

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.backedge
  %mime_info.0.ph319 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %mime_info.0.ph.be, %while.cond.outer.backedge ]
  %p.0.ph318 = phi ptr [ %call1, %while.body.lr.ph.lr.ph ], [ %call23, %while.cond.outer.backedge ]
  call void @llvm.dbg.value(metadata ptr %mime_info.0.ph319, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %p.0.ph318, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp7.not = icmp eq ptr %mime_info.0.ph319, null
  %priority9 = getelementptr inbounds %struct._MimeInfo, ptr %mime_info.0.ph319, i64 0, i32 4
  br i1 %cmp7.not, label %if.end14, label %while.body, !dbg !528

if.end24:                                         ; preds = %if.end14
  %data_type = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 7, !dbg !529
  %13 = load i32, ptr %data_type, align 8, !dbg !529, !tbaa !530
  switch i32 %13, label %for.cond.preheader [
    i32 2, label %sw.bb
    i32 3, label %sw.bb44
    i32 4, label %sw.bb96
  ], !dbg !531

for.cond.preheader:                               ; preds = %if.end24
  %extent = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 6
  %14 = load i64, ptr %extent, align 8, !tbaa !532
  call void @llvm.dbg.value(metadata i64 0, metadata !453, metadata !DIExpression()), !dbg !456
  %cmp172.not312 = icmp slt i64 %14, 0, !dbg !533
  br i1 %cmp172.not312, label %while.cond.outer.backedge, label %for.body.lr.ph, !dbg !538

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %offset174 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 5, !dbg !539
  %15 = load i64, ptr %offset174, align 8, !tbaa !542
  %length176 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 11
  %16 = load i64, ptr %length176, align 8, !tbaa !543
  %add.ptr183 = getelementptr inbounds i8, ptr %magic, i64 %15
  %magic185 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 12
  br label %for.body, !dbg !538

sw.bb:                                            ; preds = %if.end24
  %offset = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 5, !dbg !544
  %17 = load i64, ptr %offset, align 8, !dbg !544, !tbaa !542
  %add = add nsw i64 %17, 4, !dbg !547
  %cmp25 = icmp ugt i64 %add, %length, !dbg !548
  br i1 %cmp25, label %while.cond.outer.backedge, label %if.end27, !dbg !549

if.end27:                                         ; preds = %sw.bb
  %add.ptr = getelementptr inbounds i8, ptr %magic, i64 %17, !dbg !550
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  %18 = load i8, ptr %add.ptr, align 1, !dbg !551, !tbaa !552
  %conv = zext i8 %18 to i64, !dbg !553
  call void @llvm.dbg.value(metadata i64 %conv, metadata !455, metadata !DIExpression()), !dbg !456
  %mask = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 8, !dbg !554
  %19 = load i64, ptr %mask, align 8, !dbg !554, !tbaa !556
  %cmp29 = icmp eq i64 %19, 0, !dbg !557
  %value32 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 9, !dbg !558
  %20 = load i64, ptr %value32, align 8, !dbg !558, !tbaa !559
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !560

if.then31:                                        ; preds = %if.end27
  %cmp33 = icmp eq i64 %20, %conv, !dbg !561
  %spec.select295 = select i1 %cmp33, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !564
  br label %while.cond.outer.backedge, !dbg !564

if.else:                                          ; preds = %if.end27
  %and = and i64 %20, %19, !dbg !565
  %cmp39 = icmp eq i64 %and, %conv, !dbg !568
  %spec.select296 = select i1 %cmp39, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !569
  br label %while.cond.outer.backedge, !dbg !569

sw.bb44:                                          ; preds = %if.end24
  %offset45 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 5, !dbg !570
  %21 = load i64, ptr %offset45, align 8, !dbg !570, !tbaa !542
  %add46 = add nsw i64 %21, 4, !dbg !573
  %cmp47 = icmp ugt i64 %add46, %length, !dbg !574
  br i1 %cmp47, label %while.cond.outer.backedge, label %if.end50, !dbg !575

if.end50:                                         ; preds = %sw.bb44
  %add.ptr52 = getelementptr inbounds i8, ptr %magic, i64 %21, !dbg !576
  call void @llvm.dbg.value(metadata ptr %add.ptr52, metadata !452, metadata !DIExpression()), !dbg !456
  %endian53 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 10, !dbg !577
  %22 = load i32, ptr %endian53, align 8, !dbg !577, !tbaa !578
  call void @llvm.dbg.value(metadata i32 undef, metadata !450, metadata !DIExpression()), !dbg !456
  %23 = icmp ult i32 %22, 2, !dbg !579
  %incdec.ptr65 = getelementptr inbounds i8, ptr %add.ptr52, i64 1, !dbg !581
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !452, metadata !DIExpression()), !dbg !456
  %24 = load i8, ptr %add.ptr52, align 1, !dbg !581, !tbaa !552
  %conv66 = zext i8 %24 to i64, !dbg !581
  br i1 %23, label %if.then64, label %if.else70, !dbg !582

if.then64:                                        ; preds = %if.end50
  call void @llvm.dbg.value(metadata i64 %conv66, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  %25 = load i8, ptr %incdec.ptr65, align 1, !dbg !583, !tbaa !552
  %conv68 = zext i8 %25 to i64, !dbg !585
  %shl = shl nuw nsw i64 %conv68, 8, !dbg !586
  %or = or i64 %shl, %conv66, !dbg !587
  call void @llvm.dbg.value(metadata i64 %or, metadata !455, metadata !DIExpression()), !dbg !456
  br label %if.end77, !dbg !588

if.else70:                                        ; preds = %if.end50
  %shl73 = shl nuw nsw i64 %conv66, 8, !dbg !589
  call void @llvm.dbg.value(metadata i64 %shl73, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  %26 = load i8, ptr %incdec.ptr65, align 1, !dbg !591, !tbaa !552
  %conv75 = zext i8 %26 to i64, !dbg !592
  %or76 = or i64 %shl73, %conv75, !dbg !593
  call void @llvm.dbg.value(metadata i64 %or76, metadata !455, metadata !DIExpression()), !dbg !456
  br label %if.end77

if.end77:                                         ; preds = %if.else70, %if.then64
  %value.0 = phi i64 [ %or, %if.then64 ], [ %or76, %if.else70 ], !dbg !581
  call void @llvm.dbg.value(metadata i64 %value.0, metadata !455, metadata !DIExpression()), !dbg !456
  %mask78 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 8, !dbg !594
  %27 = load i64, ptr %mask78, align 8, !dbg !594, !tbaa !556
  %cmp79 = icmp eq i64 %27, 0, !dbg !596
  %value82 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 9, !dbg !597
  %28 = load i64, ptr %value82, align 8, !dbg !597, !tbaa !559
  br i1 %cmp79, label %if.then81, label %if.else87, !dbg !598

if.then81:                                        ; preds = %if.end77
  %cmp83 = icmp eq i64 %28, %value.0, !dbg !599
  %spec.select298 = select i1 %cmp83, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !602
  br label %while.cond.outer.backedge, !dbg !602

if.else87:                                        ; preds = %if.end77
  %and90 = and i64 %28, %27, !dbg !603
  %cmp91 = icmp eq i64 %and90, %value.0, !dbg !606
  %spec.select299 = select i1 %cmp91, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !607
  br label %while.cond.outer.backedge, !dbg !607

sw.bb96:                                          ; preds = %if.end24
  %offset97 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 5, !dbg !608
  %29 = load i64, ptr %offset97, align 8, !dbg !608, !tbaa !542
  %add98 = add nsw i64 %29, 4, !dbg !611
  %cmp99 = icmp ugt i64 %add98, %length, !dbg !612
  br i1 %cmp99, label %while.cond.outer.backedge, label %if.end102, !dbg !613

if.end102:                                        ; preds = %sw.bb96
  %add.ptr104 = getelementptr inbounds i8, ptr %magic, i64 %29, !dbg !614
  call void @llvm.dbg.value(metadata ptr %add.ptr104, metadata !452, metadata !DIExpression()), !dbg !456
  %endian105 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 10, !dbg !615
  %30 = load i32, ptr %endian105, align 8, !dbg !615, !tbaa !578
  call void @llvm.dbg.value(metadata i32 undef, metadata !450, metadata !DIExpression()), !dbg !456
  %31 = icmp ult i32 %30, 2, !dbg !616
  %incdec.ptr118 = getelementptr inbounds i8, ptr %add.ptr104, i64 1, !dbg !618
  call void @llvm.dbg.value(metadata ptr %incdec.ptr118, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr118, metadata !452, metadata !DIExpression()), !dbg !456
  %32 = load i8, ptr %add.ptr104, align 1, !dbg !618, !tbaa !552
  %conv119 = zext i8 %32 to i64, !dbg !618
  br i1 %31, label %if.then117, label %if.else135, !dbg !619

if.then117:                                       ; preds = %if.end102
  call void @llvm.dbg.value(metadata i64 %conv119, metadata !455, metadata !DIExpression()), !dbg !456
  %incdec.ptr120 = getelementptr inbounds i8, ptr %incdec.ptr118, i64 1, !dbg !620
  call void @llvm.dbg.value(metadata ptr %incdec.ptr120, metadata !452, metadata !DIExpression()), !dbg !456
  %33 = load i8, ptr %incdec.ptr118, align 1, !dbg !622, !tbaa !552
  %conv121 = zext i8 %33 to i64, !dbg !623
  %shl122 = shl nuw nsw i64 %conv121, 8, !dbg !624
  %or124 = or i64 %shl122, %conv119, !dbg !625
  call void @llvm.dbg.value(metadata i64 %or124, metadata !455, metadata !DIExpression()), !dbg !456
  %incdec.ptr125 = getelementptr inbounds i8, ptr %incdec.ptr120, i64 1, !dbg !626
  call void @llvm.dbg.value(metadata ptr %incdec.ptr125, metadata !452, metadata !DIExpression()), !dbg !456
  %34 = load i8, ptr %incdec.ptr120, align 1, !dbg !627, !tbaa !552
  %conv126 = zext i8 %34 to i64, !dbg !628
  %shl127 = shl nuw nsw i64 %conv126, 16, !dbg !629
  %or129 = or i64 %or124, %shl127, !dbg !630
  call void @llvm.dbg.value(metadata i64 %or129, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr125, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  %35 = load i8, ptr %incdec.ptr125, align 1, !dbg !631, !tbaa !552
  %conv131 = zext i8 %35 to i32, !dbg !632
  %shl132 = shl nuw i32 %conv131, 24, !dbg !633
  %conv133 = sext i32 %shl132 to i64, !dbg !632
  %or134 = or i64 %or129, %conv133, !dbg !634
  call void @llvm.dbg.value(metadata i64 %or134, metadata !455, metadata !DIExpression()), !dbg !456
  br label %if.end152, !dbg !635

if.else135:                                       ; preds = %if.end102
  %shl138 = shl nuw nsw i64 %conv119, 24, !dbg !636
  call void @llvm.dbg.value(metadata i64 %shl138, metadata !455, metadata !DIExpression()), !dbg !456
  %incdec.ptr139 = getelementptr inbounds i8, ptr %incdec.ptr118, i64 1, !dbg !638
  call void @llvm.dbg.value(metadata ptr %incdec.ptr139, metadata !452, metadata !DIExpression()), !dbg !456
  %36 = load i8, ptr %incdec.ptr118, align 1, !dbg !639, !tbaa !552
  %conv140 = zext i8 %36 to i64, !dbg !640
  %shl141 = shl nuw nsw i64 %conv140, 16, !dbg !641
  %or143 = or i64 %shl141, %shl138, !dbg !642
  call void @llvm.dbg.value(metadata i64 %or143, metadata !455, metadata !DIExpression()), !dbg !456
  %incdec.ptr144 = getelementptr inbounds i8, ptr %incdec.ptr139, i64 1, !dbg !643
  call void @llvm.dbg.value(metadata ptr %incdec.ptr144, metadata !452, metadata !DIExpression()), !dbg !456
  %37 = load i8, ptr %incdec.ptr139, align 1, !dbg !644, !tbaa !552
  %conv145 = zext i8 %37 to i64, !dbg !645
  %shl146 = shl nuw nsw i64 %conv145, 8, !dbg !646
  %or148 = or i64 %or143, %shl146, !dbg !647
  call void @llvm.dbg.value(metadata i64 %or148, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr144, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  %38 = load i8, ptr %incdec.ptr144, align 1, !dbg !648, !tbaa !552
  %conv150 = zext i8 %38 to i64, !dbg !649
  %or151 = or i64 %or148, %conv150, !dbg !650
  call void @llvm.dbg.value(metadata i64 %or151, metadata !455, metadata !DIExpression()), !dbg !456
  br label %if.end152

if.end152:                                        ; preds = %if.else135, %if.then117
  %value.1 = phi i64 [ %or134, %if.then117 ], [ %or151, %if.else135 ], !dbg !618
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !455, metadata !DIExpression()), !dbg !456
  %mask153 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 8, !dbg !651
  %39 = load i64, ptr %mask153, align 8, !dbg !651, !tbaa !556
  %cmp154 = icmp eq i64 %39, 0, !dbg !653
  %value157 = getelementptr inbounds %struct._MimeInfo, ptr %.us-phi, i64 0, i32 9, !dbg !654
  %40 = load i64, ptr %value157, align 8, !dbg !654, !tbaa !559
  br i1 %cmp154, label %if.then156, label %if.else162, !dbg !655

if.then156:                                       ; preds = %if.end152
  %cmp158 = icmp eq i64 %40, %value.1, !dbg !656
  %spec.select301 = select i1 %cmp158, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !659
  br label %while.cond.outer.backedge, !dbg !659

if.else162:                                       ; preds = %if.end152
  %and165 = and i64 %40, %39, !dbg !660
  %cmp166 = icmp eq i64 %and165, %value.1, !dbg !663
  %spec.select302 = select i1 %cmp166, ptr %.us-phi, ptr %mime_info.0.ph319, !dbg !664
  br label %while.cond.outer.backedge, !dbg !664

for.cond:                                         ; preds = %if.end181
  %inc = add nuw i64 %i.0313, 1, !dbg !665
  call void @llvm.dbg.value(metadata i64 undef, metadata !453, metadata !DIExpression()), !dbg !456
  %exitcond.not = icmp eq i64 %i.0313, %14, !dbg !533
  br i1 %exitcond.not, label %while.cond.outer.backedge, label %for.body, !dbg !538, !llvm.loop !666

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0313 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %i.0313, metadata !453, metadata !DIExpression()), !dbg !456
  %add175 = add nsw i64 %15, %i.0313, !dbg !668
  %add177 = add i64 %add175, %16, !dbg !669
  %cmp178 = icmp ugt i64 %add177, %length, !dbg !670
  br i1 %cmp178, label %while.cond.outer.backedge, label %if.end181, !dbg !671

if.end181:                                        ; preds = %for.body
  %add.ptr184 = getelementptr inbounds i8, ptr %add.ptr183, i64 %i.0313, !dbg !672
  %41 = load ptr, ptr %magic185, align 8, !dbg !674, !tbaa !675
  %bcmp = tail call i32 @bcmp(ptr %add.ptr184, ptr %41, i64 %16), !dbg !676
  %cmp188 = icmp eq i32 %bcmp, 0, !dbg !677
  call void @llvm.dbg.value(metadata i64 %i.0313, metadata !453, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  br i1 %cmp188, label %while.cond.outer.backedge, label %for.cond, !dbg !678

while.end:                                        ; preds = %while.cond.outer.backedge, %if.then11
  %mime_info.0.ph.lcssa = phi ptr [ %mime_info.0.ph319, %if.then11 ], [ %mime_info.0.ph.be, %while.cond.outer.backedge ]
  %cmp193.not = icmp eq ptr %mime_info.0.ph.lcssa, null, !dbg !679
  br i1 %cmp193.not, label %cleanup.sink.split, label %if.then195, !dbg !681

if.then195:                                       ; preds = %while.end
  %42 = load ptr, ptr @mime_cache, align 8, !dbg !682, !tbaa !388
  %call196 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %42, ptr noundef null) #15, !dbg !683
  %call197 = tail call i32 @InsertValueInLinkedList(ptr noundef %42, i64 noundef 0, ptr noundef %call196) #15, !dbg !684
  br label %cleanup.sink.split, !dbg !685

cleanup.sink.split:                               ; preds = %while.end, %if.then195, %while.cond.preheader, %if.end
  %retval.0.ph = phi ptr [ %call1, %if.end ], [ %mime_info.0.ph.lcssa, %if.then195 ], [ null, %while.end ], [ null, %while.cond.preheader ]
  %43 = load ptr, ptr @mime_semaphore, align 8, !dbg !456, !tbaa !388
  tail call void @UnlockSemaphoreInfo(ptr noundef %43) #15, !dbg !456
  br label %cleanup, !dbg !686

cleanup:                                          ; preds = %cleanup.sink.split, %IsMimeCacheInstantiated.exit
  %retval.0 = phi ptr [ null, %IsMimeCacheInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !456
  ret ptr %retval.0, !dbg !686
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !687 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !691 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !694 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !697 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !698 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !703 i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !708 ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_aliases, ptr noundef %exception) local_unnamed_addr #0 !dbg !711 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !716, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !717, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata ptr %exception, metadata !718, metadata !DIExpression()), !dbg !722
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 466, ptr noundef nonnull @.str.2, ptr noundef %pattern) #15, !dbg !723
  store i64 0, ptr %number_aliases, align 8, !dbg !724, !tbaa !725
  %call1 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %exception), !dbg !726
  call void @llvm.dbg.value(metadata ptr %call1, metadata !720, metadata !DIExpression()), !dbg !722
  %cmp = icmp eq ptr %call1, null, !dbg !727
  br i1 %cmp, label %cleanup, label %if.end, !dbg !729

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mime_cache, align 8, !dbg !730, !tbaa !388
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #15, !dbg !731
  %add = add i64 %call2, 1, !dbg !732
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #18, !dbg !733
  call void @llvm.dbg.value(metadata ptr %call3, metadata !719, metadata !DIExpression()), !dbg !722
  %cmp4 = icmp eq ptr %call3, null, !dbg !734
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !736

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @mime_semaphore, align 8, !dbg !737, !tbaa !388
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !738
  %2 = load ptr, ptr @mime_cache, align 8, !dbg !739, !tbaa !388
  tail call void @ResetLinkedListIterator(ptr noundef %2) #15, !dbg !740
  %3 = load ptr, ptr @mime_cache, align 8, !dbg !741, !tbaa !388
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #15, !dbg !742
  call void @llvm.dbg.value(metadata ptr %call7, metadata !720, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i64 0, metadata !721, metadata !DIExpression()), !dbg !722
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !743
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !746

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !720, metadata !DIExpression()), !dbg !722
  %stealth = getelementptr inbounds %struct._MimeInfo, ptr %p.032, i64 0, i32 13, !dbg !747
  %4 = load i32, ptr %stealth, align 8, !dbg !747, !tbaa !750
  %cmp9 = icmp eq i32 %4, 0, !dbg !751
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !752

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct._MimeInfo, ptr %p.032, i64 0, i32 1, !dbg !753
  %5 = load ptr, ptr %type, align 8, !dbg !753, !tbaa !754
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #15, !dbg !755
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !756
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !757

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !758
  call void @llvm.dbg.value(metadata i64 %inc, metadata !721, metadata !DIExpression()), !dbg !722
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !759
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !760, !tbaa !388
  br label %if.end13, !dbg !759

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !761
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !721, metadata !DIExpression()), !dbg !722
  %6 = load ptr, ptr @mime_cache, align 8, !dbg !762, !tbaa !388
  %call14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #15, !dbg !763
  call void @llvm.dbg.value(metadata ptr %call14, metadata !720, metadata !DIExpression()), !dbg !722
  %cmp8.not = icmp eq ptr %call14, null, !dbg !743
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !746, !llvm.loop !764

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !761
  %7 = load ptr, ptr @mime_semaphore, align 8, !dbg !766, !tbaa !388
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #15, !dbg !767
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MimeInfoCompare) #15, !dbg !768
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !769
  store ptr null, ptr %arrayidx15, align 8, !dbg !770, !tbaa !388
  store i64 %i.0.lcssa, ptr %number_aliases, align 8, !dbg !771, !tbaa !725
  br label %cleanup, !dbg !772

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !722
  ret ptr %retval.0, !dbg !773
}

declare !dbg !774 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !779 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !783 i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !788 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @MimeInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #6 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !798, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %y, metadata !799, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %x, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %y, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load ptr, ptr %x, align 8, !dbg !803, !tbaa !388
  %1 = load ptr, ptr %0, align 8, !dbg !805, !tbaa !806
  %2 = load ptr, ptr %y, align 8, !dbg !807, !tbaa !388
  %3 = load ptr, ptr %2, align 8, !dbg !808, !tbaa !806
  %call = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef %3) #19, !dbg !809
  %cmp = icmp eq i32 %call, 0, !dbg !810
  br i1 %cmp, label %if.then, label %cleanup, !dbg !811

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 1, !dbg !812
  %4 = load ptr, ptr %type, align 8, !dbg !812, !tbaa !754
  %type2 = getelementptr inbounds %struct._MimeInfo, ptr %2, i64 0, i32 1, !dbg !813
  %5 = load ptr, ptr %type2, align 8, !dbg !813, !tbaa !754
  %call3 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef %5) #19, !dbg !814
  br label %cleanup, !dbg !815

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call, %entry ], !dbg !802
  ret i32 %retval.0, !dbg !816
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_aliases, ptr noundef %exception) local_unnamed_addr #0 !dbg !817 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !821, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr %exception, metadata !823, metadata !DIExpression()), !dbg !827
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, ptr noundef nonnull @.str.2, ptr noundef %pattern) #15, !dbg !828
  store i64 0, ptr %number_aliases, align 8, !dbg !829, !tbaa !725
  %call1 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %exception), !dbg !830
  call void @llvm.dbg.value(metadata ptr %call1, metadata !825, metadata !DIExpression()), !dbg !827
  %cmp = icmp eq ptr %call1, null, !dbg !831
  br i1 %cmp, label %cleanup, label %if.end, !dbg !833

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mime_cache, align 8, !dbg !834, !tbaa !388
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #15, !dbg !835
  %add = add i64 %call2, 1, !dbg !836
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #18, !dbg !837
  call void @llvm.dbg.value(metadata ptr %call3, metadata !824, metadata !DIExpression()), !dbg !827
  %cmp4 = icmp eq ptr %call3, null, !dbg !838
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !840

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @mime_semaphore, align 8, !dbg !841, !tbaa !388
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !842
  %2 = load ptr, ptr @mime_cache, align 8, !dbg !843, !tbaa !388
  tail call void @ResetLinkedListIterator(ptr noundef %2) #15, !dbg !844
  %3 = load ptr, ptr @mime_cache, align 8, !dbg !845, !tbaa !388
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #15, !dbg !846
  call void @llvm.dbg.value(metadata ptr %call7, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i64 0, metadata !826, metadata !DIExpression()), !dbg !827
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !847
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !850

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !825, metadata !DIExpression()), !dbg !827
  %stealth = getelementptr inbounds %struct._MimeInfo, ptr %p.034, i64 0, i32 13, !dbg !851
  %4 = load i32, ptr %stealth, align 8, !dbg !851, !tbaa !750
  %cmp9 = icmp eq i32 %4, 0, !dbg !854
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !855

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct._MimeInfo, ptr %p.034, i64 0, i32 1, !dbg !856
  %5 = load ptr, ptr %type, align 8, !dbg !856, !tbaa !754
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #15, !dbg !857
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !858
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !859

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %type, align 8, !dbg !860, !tbaa !754
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #15, !dbg !861
  %inc = add nsw i64 %i.035, 1, !dbg !862
  call void @llvm.dbg.value(metadata i64 %inc, metadata !826, metadata !DIExpression()), !dbg !827
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !863
  store ptr %call14, ptr %arrayidx, align 8, !dbg !864, !tbaa !388
  br label %if.end15, !dbg !863

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !865
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !826, metadata !DIExpression()), !dbg !827
  %7 = load ptr, ptr @mime_cache, align 8, !dbg !866, !tbaa !388
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #15, !dbg !867
  call void @llvm.dbg.value(metadata ptr %call16, metadata !825, metadata !DIExpression()), !dbg !827
  %cmp8.not = icmp eq ptr %call16, null, !dbg !847
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !850, !llvm.loop !868

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !865
  %8 = load ptr, ptr @mime_semaphore, align 8, !dbg !870, !tbaa !388
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #15, !dbg !871
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MimeCompare) #15, !dbg !872
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !873
  store ptr null, ptr %arrayidx17, align 8, !dbg !874, !tbaa !388
  store i64 %i.0.lcssa, ptr %number_aliases, align 8, !dbg !875, !tbaa !725
  br label %cleanup, !dbg !876

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !827
  ret ptr %retval.0, !dbg !877
}

declare !dbg !878 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @MimeCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #6 !dbg !881 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !883, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %y, metadata !884, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %x, metadata !885, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %y, metadata !886, metadata !DIExpression()), !dbg !887
  %call = tail call i32 @strcasecmp(ptr noundef %x, ptr noundef %y) #19, !dbg !888
  ret i32 %call, !dbg !889
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeDescription(ptr nocapture noundef readonly %mime_info) local_unnamed_addr #0 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata ptr %mime_info, metadata !894, metadata !DIExpression()), !dbg !895
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.4) #15, !dbg !896
  %description = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 2, !dbg !897
  %0 = load ptr, ptr %description, align 8, !dbg !897, !tbaa !898
  ret ptr %0, !dbg !899
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeType(ptr nocapture noundef readonly %mime_info) local_unnamed_addr #0 !dbg !900 {
entry:
  call void @llvm.dbg.value(metadata ptr %mime_info, metadata !902, metadata !DIExpression()), !dbg !903
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 642, ptr noundef nonnull @.str.4) #15, !dbg !904
  %type = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 1, !dbg !905
  %0 = load ptr, ptr %type, align 8, !dbg !905, !tbaa !754
  ret ptr %0, !dbg !906
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListMimeInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !907 {
entry:
  %number_aliases = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %exception, metadata !913, metadata !DIExpression()), !dbg !919
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_aliases) #15, !dbg !920
  %cmp = icmp eq ptr %file, null, !dbg !921
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !923
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !917, metadata !DIExpression(DW_OP_deref)), !dbg !919
  %call = call ptr @GetMimeInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %number_aliases, ptr noundef %exception), !dbg !924
  call void @llvm.dbg.value(metadata ptr %call, metadata !915, metadata !DIExpression()), !dbg !919
  %cmp1 = icmp eq ptr %call, null, !dbg !925
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !927

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_aliases, align 8, !tbaa !725
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr null, metadata !914, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !919
  %cmp4108 = icmp sgt i64 %1, 0, !dbg !928
  br i1 %cmp4108, label %for.body, label %for.end60, !dbg !931

for.body:                                         ; preds = %for.cond.preheader, %for.inc58
  %i.0110 = phi i64 [ %inc59, %for.inc58 ], [ 0, %for.cond.preheader ]
  %path.0109 = phi ptr [ %path.1, %for.inc58 ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0110, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %path.0109, metadata !914, metadata !DIExpression()), !dbg !919
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0110, !dbg !932
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !932, !tbaa !388
  %stealth = getelementptr inbounds %struct._MimeInfo, ptr %2, i64 0, i32 13, !dbg !935
  %3 = load i32, ptr %stealth, align 8, !dbg !935, !tbaa !750
  %cmp5.not = icmp eq i32 %3, 0, !dbg !936
  br i1 %cmp5.not, label %if.end7, label %for.inc58, !dbg !937

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.0109, null, !dbg !938
  %.pr = load ptr, ptr %2, align 8, !dbg !940, !tbaa !806
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !941

lor.lhs.false:                                    ; preds = %if.end7
  %call11 = tail call i32 @strcasecmp(ptr noundef nonnull %path.0109, ptr noundef %.pr) #19, !dbg !942
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !943
  br i1 %cmp12.not, label %if.end24, label %if.then13, !dbg !944

if.then13:                                        ; preds = %if.end7, %lor.lhs.false
  %cmp16.not = icmp eq ptr %.pr, null, !dbg !945
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !948

if.then17:                                        ; preds = %if.then13
  %call20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5, ptr noundef nonnull %.pr) #15, !dbg !949
  br label %if.end21, !dbg !950

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6) #15, !dbg !951
  %call23 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.7) #15, !dbg !952
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !953, !tbaa !388
  %.pre114 = load ptr, ptr %.pre, align 8, !dbg !954, !tbaa !806
  br label %if.end24, !dbg !955

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %4 = phi ptr [ %.pre114, %if.end21 ], [ %.pr, %lor.lhs.false ], !dbg !954
  %5 = phi ptr [ %.pre, %if.end21 ], [ %2, %lor.lhs.false ], !dbg !953
  call void @llvm.dbg.value(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !919
  %type = getelementptr inbounds %struct._MimeInfo, ptr %5, i64 0, i32 1, !dbg !956
  %6 = load ptr, ptr %type, align 8, !dbg !956, !tbaa !754
  %call28 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.2, ptr noundef %6) #15, !dbg !957
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !958, !tbaa !388
  %type30 = getelementptr inbounds %struct._MimeInfo, ptr %7, i64 0, i32 1, !dbg !960
  %8 = load ptr, ptr %type30, align 8, !dbg !960, !tbaa !754
  %call31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #19, !dbg !961
  %cmp32 = icmp ult i64 %call31, 26, !dbg !962
  br i1 %cmp32, label %for.body39, label %if.else, !dbg !963

for.body39:                                       ; preds = %if.end24, %for.body39
  %j.0107 = phi i64 [ %inc, %for.body39 ], [ %call31, %if.end24 ]
  call void @llvm.dbg.value(metadata i64 %j.0107, metadata !918, metadata !DIExpression()), !dbg !919
  %call40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8) #15, !dbg !964
  %inc = add i64 %j.0107, 1, !dbg !968
  call void @llvm.dbg.value(metadata i64 %inc, metadata !918, metadata !DIExpression()), !dbg !919
  %exitcond112.not = icmp eq i64 %inc, 28, !dbg !969
  br i1 %exitcond112.not, label %if.end49, label %for.body39, !dbg !970, !llvm.loop !971

if.else:                                          ; preds = %if.end24
  %call41 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9) #15, !dbg !973
  call void @llvm.dbg.value(metadata i64 0, metadata !918, metadata !DIExpression()), !dbg !919
  br label %for.body44, !dbg !975

for.body44:                                       ; preds = %if.else, %for.body44
  %j.1105 = phi i64 [ 0, %if.else ], [ %inc47, %for.body44 ]
  call void @llvm.dbg.value(metadata i64 %j.1105, metadata !918, metadata !DIExpression()), !dbg !919
  %call45 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8) #15, !dbg !977
  %inc47 = add nuw nsw i64 %j.1105, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %inc47, metadata !918, metadata !DIExpression()), !dbg !919
  %exitcond.not = icmp eq i64 %inc47, 28, !dbg !980
  br i1 %exitcond.not, label %if.end49, label %for.body44, !dbg !975, !llvm.loop !981

if.end49:                                         ; preds = %for.body44, %for.body39
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !983, !tbaa !388
  %description = getelementptr inbounds %struct._MimeInfo, ptr %9, i64 0, i32 2, !dbg !985
  %10 = load ptr, ptr %description, align 8, !dbg !985, !tbaa !898
  %cmp51.not = icmp eq ptr %10, null, !dbg !986
  br i1 %cmp51.not, label %if.end56, label %if.then52, !dbg !987

if.then52:                                        ; preds = %if.end49
  %call55 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15, !dbg !988
  br label %if.end56, !dbg !989

if.end56:                                         ; preds = %if.then52, %if.end49
  %call57 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9) #15, !dbg !990
  br label %for.inc58, !dbg !991

for.inc58:                                        ; preds = %for.body, %if.end56
  %path.1 = phi ptr [ %path.0109, %for.body ], [ %4, %if.end56 ], !dbg !919
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !914, metadata !DIExpression()), !dbg !919
  %inc59 = add nuw nsw i64 %i.0110, 1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !919
  %exitcond113.not = icmp eq i64 %inc59, %1, !dbg !928
  br i1 %exitcond113.not, label %for.end60, label %for.body, !dbg !931, !llvm.loop !993

for.end60:                                        ; preds = %for.inc58, %for.cond.preheader
  %call61 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !995
  %call62 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #15, !dbg !996
  call void @llvm.dbg.value(metadata ptr %call62, metadata !915, metadata !DIExpression()), !dbg !919
  br label %cleanup, !dbg !997

cleanup:                                          ; preds = %entry, %for.end60
  %retval.0 = phi i32 [ 1, %for.end60 ], [ 0, %entry ], !dbg !919
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_aliases) #15, !dbg !998
  ret i32 %retval.0, !dbg !998
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !999 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1004 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #9

declare !dbg !1007 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickToMime(ptr noundef %magick) local_unnamed_addr #0 !dbg !1010 {
entry:
  %filename = alloca [4096 x i8], align 16
  %media = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %magick, metadata !1012, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #15, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !1013, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %media) #15, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %media, metadata !1014, metadata !DIExpression()), !dbg !1020
  %call = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %magick) #15, !dbg !1021
  call void @LocaleLower(ptr noundef nonnull %filename) #15, !dbg !1022
  %call2 = call ptr @AcquireExceptionInfo() #15, !dbg !1023
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1016, metadata !DIExpression()), !dbg !1017
  %call4 = call ptr @GetMimeInfo(ptr noundef nonnull %filename, ptr noundef nonnull @.str.8, i64 noundef 1, ptr noundef %call2), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1015, metadata !DIExpression()), !dbg !1017
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef %call2) #15, !dbg !1025
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1016, metadata !DIExpression()), !dbg !1017
  %cmp.not = icmp eq ptr %call4, null, !dbg !1026
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1028

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call4, metadata !902, metadata !DIExpression()) #15, !dbg !1029
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 642, ptr noundef nonnull @.str.4) #15, !dbg !1031
  %type.i = getelementptr inbounds %struct._MimeInfo, ptr %call4, i64 0, i32 1, !dbg !1032
  %0 = load ptr, ptr %type.i, align 8, !dbg !1032, !tbaa !754
  %call7 = call ptr @ConstantString(ptr noundef %0) #15, !dbg !1033
  br label %cleanup, !dbg !1034

if.end:                                           ; preds = %entry
  %call9 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %media, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %magick) #15, !dbg !1035
  %add.ptr = getelementptr inbounds i8, ptr %media, i64 8, !dbg !1036
  call void @LocaleLower(ptr noundef nonnull %add.ptr) #15, !dbg !1037
  %call12 = call ptr @ConstantString(ptr noundef nonnull %media) #15, !dbg !1038
  br label %cleanup, !dbg !1039

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call7, %if.then ], [ %call12, %if.end ], !dbg !1017
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %media) #15, !dbg !1040
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #15, !dbg !1040
  ret ptr %retval.0, !dbg !1040
}

declare !dbg !1041 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1045 void @LocaleLower(ptr noundef) local_unnamed_addr #3

declare !dbg !1048 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !1051 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MimeComponentGenesis() local_unnamed_addr #0 !dbg !1054 {
entry:
  %0 = load ptr, ptr @mime_semaphore, align 8, !dbg !1057, !tbaa !388
  %cmp = icmp eq ptr %0, null, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end, !dbg !1060

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #15, !dbg !1061
  store ptr %call, ptr @mime_semaphore, align 8, !dbg !1062, !tbaa !388
  br label %if.end, !dbg !1063

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1064
}

declare !dbg !1065 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MimeComponentTerminus() local_unnamed_addr #0 !dbg !1068 {
entry:
  %0 = load ptr, ptr @mime_semaphore, align 8, !dbg !1071, !tbaa !388
  %cmp = icmp eq ptr %0, null, !dbg !1073
  br i1 %cmp, label %if.then, label %if.end, !dbg !1074

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15, !dbg !1075
  %.pre = load ptr, ptr @mime_semaphore, align 8, !dbg !1076, !tbaa !388
  br label %if.end, !dbg !1075

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1076
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !1077
  %2 = load ptr, ptr @mime_cache, align 8, !dbg !1078, !tbaa !388
  %cmp1.not = icmp eq ptr %2, null, !dbg !1080
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1081

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %2, ptr noundef nonnull @DestroyMimeElement) #15, !dbg !1082
  store ptr %call, ptr @mime_cache, align 8, !dbg !1083, !tbaa !388
  br label %if.end3, !dbg !1084

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @mime_semaphore, align 8, !dbg !1085, !tbaa !388
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #15, !dbg !1086
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15, !dbg !1087
  ret void, !dbg !1088
}

declare !dbg !1089 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1093 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyMimeElement(ptr noundef %mime_info) #0 !dbg !1097 {
entry:
  call void @llvm.dbg.value(metadata ptr %mime_info, metadata !1099, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr %mime_info, metadata !1100, metadata !DIExpression()), !dbg !1101
  %magic = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 12, !dbg !1102
  %0 = load ptr, ptr %magic, align 8, !dbg !1102, !tbaa !675
  %cmp.not = icmp eq ptr %0, null, !dbg !1104
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1105

if.then:                                          ; preds = %entry
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #15, !dbg !1106
  store ptr %call, ptr %magic, align 8, !dbg !1107, !tbaa !675
  br label %if.end, !dbg !1108

if.end:                                           ; preds = %if.then, %entry
  %pattern = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 3, !dbg !1109
  %1 = load ptr, ptr %pattern, align 8, !dbg !1109, !tbaa !518
  %cmp3.not = icmp eq ptr %1, null, !dbg !1111
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1112

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #15, !dbg !1113
  store ptr %call6, ptr %pattern, align 8, !dbg !1114, !tbaa !518
  br label %if.end8, !dbg !1115

if.end8:                                          ; preds = %if.then4, %if.end
  %description = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 2, !dbg !1116
  %2 = load ptr, ptr %description, align 8, !dbg !1116, !tbaa !898
  %cmp9.not = icmp eq ptr %2, null, !dbg !1118
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1119

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyString(ptr noundef nonnull %2) #15, !dbg !1120
  store ptr %call12, ptr %description, align 8, !dbg !1121, !tbaa !898
  br label %if.end14, !dbg !1122

if.end14:                                         ; preds = %if.then10, %if.end8
  %type = getelementptr inbounds %struct._MimeInfo, ptr %mime_info, i64 0, i32 1, !dbg !1123
  %3 = load ptr, ptr %type, align 8, !dbg !1123, !tbaa !754
  %cmp15.not = icmp eq ptr %3, null, !dbg !1125
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !1126

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @DestroyString(ptr noundef nonnull %3) #15, !dbg !1127
  store ptr %call18, ptr %type, align 8, !dbg !1128, !tbaa !754
  br label %if.end20, !dbg !1129

if.end20:                                         ; preds = %if.then16, %if.end14
  %4 = load ptr, ptr %mime_info, align 8, !dbg !1130, !tbaa !806
  %cmp21.not = icmp eq ptr %4, null, !dbg !1132
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1133

if.then22:                                        ; preds = %if.end20
  %call24 = tail call ptr @DestroyString(ptr noundef nonnull %4) #15, !dbg !1134
  store ptr %call24, ptr %mime_info, align 8, !dbg !1135, !tbaa !806
  br label %if.end26, !dbg !1136

if.end26:                                         ; preds = %if.then22, %if.end20
  %call27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %mime_info) #15, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1100, metadata !DIExpression()), !dbg !1101
  ret ptr null, !dbg !1138
}

declare !dbg !1139 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1140 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #3

declare !dbg !1143 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1146 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

declare !dbg !1150 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1154 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1157 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1158 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #11

declare !dbg !1160 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadMimeCache(ptr noundef %mime_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !1162 {
entry:
  %path = alloca [4096 x i8], align 16
  %exception54 = alloca %struct._ExceptionInfo, align 8
  %token = alloca ptr, align 8
  %end = alloca ptr, align 8
  %c = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %mime_cache, metadata !1166, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1167, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1168, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1169, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1170, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr null, metadata !1172, metadata !DIExpression()), !dbg !1206
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.15, ptr noundef %filename) #15, !dbg !1207
  %cmp = icmp eq ptr %xml, null, !dbg !1208
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1210

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @NewXMLTree(ptr noundef nonnull %xml, ptr noundef %exception) #15, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1175, metadata !DIExpression()), !dbg !1206
  %cmp2 = icmp eq ptr %call1, null, !dbg !1212
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1214

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call5 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %call1, ptr noundef nonnull @.str.16) #15, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 1, metadata !1173, metadata !DIExpression()), !dbg !1206
  %cmp6.not292 = icmp eq ptr %call5, null, !dbg !1216
  br i1 %cmp6.not292, label %while.end, label %while.body.lr.ph, !dbg !1217

while.body.lr.ph:                                 ; preds = %if.end4
  %cmp10 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br i1 %cmp10, label %while.body.us, label %while.body, !dbg !1218

while.body.us:                                    ; preds = %while.body.lr.ph, %if.end42.us
  %include.0294.us = phi ptr [ %call43.us, %if.end42.us ], [ %call5, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %include.0294.us, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 undef, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call7.us = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %include.0294.us, ptr noundef nonnull @.str.17) #15, !dbg !1219
  call void @llvm.dbg.value(metadata ptr %call7.us, metadata !1171, metadata !DIExpression()), !dbg !1206
  %cmp8.not.us = icmp eq ptr %call7.us, null, !dbg !1220
  br i1 %cmp8.not.us, label %if.end42.us, label %if.then9.us, !dbg !1221

if.then9.us:                                      ; preds = %while.body.us
  %call12.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 839, i32 noundef 495, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef %filename) #15, !dbg !1222
  br label %if.end42.us, !dbg !1223

if.end42.us:                                      ; preds = %if.then9.us, %while.body.us
  call void @llvm.dbg.value(metadata i32 undef, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call43.us = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %include.0294.us) #15, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %call43.us, metadata !1176, metadata !DIExpression()), !dbg !1206
  %cmp6.not.us = icmp eq ptr %call43.us, null, !dbg !1216
  br i1 %cmp6.not.us, label %while.end, label %while.body.us, !dbg !1217, !llvm.loop !1225

while.body:                                       ; preds = %while.body.lr.ph, %if.end42
  %include.0294 = phi ptr [ %call43, %if.end42 ], [ %call5, %while.body.lr.ph ]
  %status.0293 = phi i32 [ %status.2, %if.end42 ], [ 1, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %include.0294, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %status.0293, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call7 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %include.0294, ptr noundef nonnull @.str.17) #15, !dbg !1219
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1171, metadata !DIExpression()), !dbg !1206
  %cmp8.not = icmp eq ptr %call7, null, !dbg !1220
  br i1 %cmp8.not, label %if.end42, label %if.then9, !dbg !1221

if.then9:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #15, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1177, metadata !DIExpression()), !dbg !1228
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #15, !dbg !1229
  %0 = load i8, ptr %path, align 16, !dbg !1230, !tbaa !552
  %cmp15.not = icmp eq i8 %0, 0, !dbg !1232
  br i1 %cmp15.not, label %if.end20, label %if.then17, !dbg !1233

if.then17:                                        ; preds = %if.then9
  %call19 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.19, i64 noundef 4096) #15, !dbg !1234
  br label %if.end20, !dbg !1235

if.end20:                                         ; preds = %if.then17, %if.then9
  %1 = load i8, ptr %call7, align 1, !dbg !1236, !tbaa !552
  %cmp23 = icmp eq i8 %1, 47, !dbg !1238
  br i1 %cmp23, label %if.then25, label %if.else28, !dbg !1239

if.then25:                                        ; preds = %if.end20
  %call27 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call7, i64 noundef 4096) #15, !dbg !1240
  br label %if.end31, !dbg !1241

if.else28:                                        ; preds = %if.end20
  %call30 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call7, i64 noundef 4096) #15, !dbg !1242
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  %call33 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #15, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1183, metadata !DIExpression()), !dbg !1244
  %cmp34.not = icmp eq ptr %call33, null, !dbg !1245
  br i1 %cmp34.not, label %if.end40, label %if.then36, !dbg !1247

if.then36:                                        ; preds = %if.end31
  %call38 = call fastcc i32 @LoadMimeCache(ptr noundef %mime_cache, ptr noundef nonnull %call33, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !1248
  %and = and i32 %call38, %status.0293, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %and, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call39 = call ptr @DestroyString(ptr noundef nonnull %call33) #15, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1183, metadata !DIExpression()), !dbg !1244
  br label %if.end40, !dbg !1252

if.end40:                                         ; preds = %if.then36, %if.end31
  %status.1 = phi i32 [ %and, %if.then36 ], [ %status.0293, %if.end31 ], !dbg !1206
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1173, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #15, !dbg !1253
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %while.body
  %status.2 = phi i32 [ %status.1, %if.end40 ], [ %status.0293, %while.body ], !dbg !1206
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1173, metadata !DIExpression()), !dbg !1206
  %call43 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %include.0294) #15, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1176, metadata !DIExpression()), !dbg !1206
  %cmp6.not = icmp eq ptr %call43, null, !dbg !1216
  br i1 %cmp6.not, label %while.end, label %while.body, !dbg !1217, !llvm.loop !1225

while.end:                                        ; preds = %if.end42, %if.end42.us, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ 1, %if.end42.us ], [ %status.2, %if.end42 ], !dbg !1254
  %call44 = call ptr @GetXMLTreeChild(ptr noundef nonnull %call1, ptr noundef nonnull @.str.20) #15, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa, metadata !1173, metadata !DIExpression()), !dbg !1206
  %cmp46.not295 = icmp eq ptr %call44, null, !dbg !1256
  br i1 %cmp46.not295, label %while.end188, label %while.body48, !dbg !1257

while.body48:                                     ; preds = %while.end, %if.end186
  %mime.0296 = phi ptr [ %call187, %if.end186 ], [ %call44, %while.end ]
  call void @llvm.dbg.value(metadata ptr %mime.0296, metadata !1174, metadata !DIExpression()), !dbg !1206
  %call50 = call ptr @AcquireMagickMemory(i64 noundef 120) #20, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1172, metadata !DIExpression()), !dbg !1206
  %cmp51 = icmp eq ptr %call50, null, !dbg !1259
  br i1 %cmp51, label %if.then53, label %if.end60, !dbg !1260

if.then53:                                        ; preds = %while.body48
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception54) #15, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %exception54, metadata !1189, metadata !DIExpression()), !dbg !1261
  call void @GetExceptionInfo(ptr noundef nonnull %exception54) #15, !dbg !1261
  %call55 = tail call ptr @__errno_location() #16, !dbg !1261
  %2 = load i32, ptr %call55, align 4, !dbg !1261, !tbaa !415
  %call56 = call ptr @GetExceptionMessage(i32 noundef %2) #15, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %call56, metadata !1186, metadata !DIExpression()), !dbg !1262
  %call57 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 876, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %call56) #15, !dbg !1261
  %call58 = call ptr @DestroyString(ptr noundef %call56) #15, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %call58, metadata !1186, metadata !DIExpression()), !dbg !1262
  call void @CatchException(ptr noundef nonnull %exception54) #15, !dbg !1261
  %call59 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception54) #15, !dbg !1261
  call void @MagickCoreTerminus() #15, !dbg !1261
  call void @_exit(i32 noundef 1) #17, !dbg !1261
  unreachable, !dbg !1261

if.end60:                                         ; preds = %while.body48
  %call61 = call ptr @ResetMagickMemory(ptr noundef nonnull %call50, i32 noundef 0, i64 noundef 120) #15, !dbg !1263
  %call62 = call ptr @ConstantString(ptr noundef %filename) #15, !dbg !1264
  store ptr %call62, ptr %call50, align 8, !dbg !1265, !tbaa !806
  %signature = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 14, !dbg !1266
  store i64 2880220587, ptr %signature, align 8, !dbg !1267, !tbaa !1268
  %call64 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.21) #15, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp65.not = icmp eq ptr %call64, null, !dbg !1271
  br i1 %cmp65.not, label %if.end70, label %if.then67, !dbg !1273

if.then67:                                        ; preds = %if.end60
  %call68 = call i64 @ParseCommandOption(i32 noundef 14, i32 noundef 1, ptr noundef nonnull %call64) #15, !dbg !1274
  %conv69 = trunc i64 %call68 to i32, !dbg !1275
  %data_type = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 7, !dbg !1276
  store i32 %conv69, ptr %data_type, align 8, !dbg !1277, !tbaa !530
  br label %if.end70, !dbg !1278

if.end70:                                         ; preds = %if.then67, %if.end60
  %call71 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.22) #15, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %call71, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp72.not = icmp eq ptr %call71, null, !dbg !1280
  br i1 %cmp72.not, label %if.end76, label %if.then74, !dbg !1282

if.then74:                                        ; preds = %if.end70
  %call75 = call ptr @ConstantString(ptr noundef nonnull %call71) #15, !dbg !1283
  %description = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 2, !dbg !1284
  store ptr %call75, ptr %description, align 8, !dbg !1285, !tbaa !898
  br label %if.end76, !dbg !1286

if.end76:                                         ; preds = %if.then74, %if.end70
  %call77 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.23) #15, !dbg !1287
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp78.not = icmp eq ptr %call77, null, !dbg !1288
  br i1 %cmp78.not, label %if.end83, label %if.then80, !dbg !1290

if.then80:                                        ; preds = %if.end76
  %call81 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 1, ptr noundef nonnull %call77) #15, !dbg !1291
  %conv82 = trunc i64 %call81 to i32, !dbg !1292
  %endian = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 10, !dbg !1293
  store i32 %conv82, ptr %endian, align 8, !dbg !1294, !tbaa !578
  br label %if.end83, !dbg !1295

if.end83:                                         ; preds = %if.then80, %if.end76
  %call84 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.24) #15, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %call84, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp85.not = icmp eq ptr %call84, null, !dbg !1297
  br i1 %cmp85.not, label %if.end137, label %if.then87, !dbg !1298

if.then87:                                        ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token) #15, !dbg !1299
  %call88 = call ptr @AcquireString(ptr noundef nonnull %call84) #15, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %call88, metadata !1190, metadata !DIExpression()), !dbg !1301
  store ptr %call88, ptr %token, align 8, !dbg !1302, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %token, metadata !1190, metadata !DIExpression(DW_OP_deref)), !dbg !1301
  %call89 = call i32 @SubstituteString(ptr noundef nonnull %token, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #15, !dbg !1303
  %call90 = call i32 @SubstituteString(ptr noundef nonnull %token, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #15, !dbg !1304
  %call91 = call i32 @SubstituteString(ptr noundef nonnull %token, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15, !dbg !1305
  %3 = load ptr, ptr %token, align 8, !dbg !1306, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %3, metadata !1190, metadata !DIExpression()), !dbg !1301
  %call92 = call ptr @AcquireString(ptr noundef %3) #15, !dbg !1307
  %magic = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 12, !dbg !1308
  store ptr %call92, ptr %magic, align 8, !dbg !1309, !tbaa !675
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1194, metadata !DIExpression()), !dbg !1301
  %4 = load ptr, ptr %token, align 8, !dbg !1310, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %4, metadata !1190, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %4, metadata !1193, metadata !DIExpression()), !dbg !1301
  %length = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 11
  br label %for.cond, !dbg !1311

for.cond:                                         ; preds = %for.cond.backedge, %if.then87
  %p.0 = phi ptr [ %4, %if.then87 ], [ %p.0.be, %for.cond.backedge ], !dbg !1312
  %q.0 = phi ptr [ %call92, %if.then87 ], [ %q.0.be, %for.cond.backedge ], !dbg !1301
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1194, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1193, metadata !DIExpression()), !dbg !1301
  %5 = load i8, ptr %p.0, align 1, !dbg !1313, !tbaa !552
  switch i8 %5, label %if.end124 [
    i8 0, label %for.end
    i8 92, label %if.then100
  ], !dbg !1314

if.then100:                                       ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1193, metadata !DIExpression()), !dbg !1301
  %call101 = tail call ptr @__ctype_b_loc() #16, !dbg !1316
  %6 = load ptr, ptr %call101, align 8, !dbg !1316, !tbaa !388
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !1316, !tbaa !552
  %8 = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %8, !dbg !1316
  %9 = load i16, ptr %arrayidx, align 2, !dbg !1316, !tbaa !1317
  %10 = and i16 %9, 2048, !dbg !1316
  %cmp105.not = icmp eq i16 %10, 0, !dbg !1319
  br i1 %cmp105.not, label %if.end111, label %if.then107, !dbg !1320

if.then107:                                       ; preds = %if.then100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #15, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %end, metadata !1195, metadata !DIExpression(DW_OP_deref)), !dbg !1322
  %call108 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %end, i32 noundef 8) #15, !dbg !1323
  %conv109 = trunc i64 %call108 to i8, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1194, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1301
  store i8 %conv109, ptr %q.0, align 1, !dbg !1325, !tbaa !552
  %11 = load ptr, ptr %end, align 8, !dbg !1326, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %11, metadata !1195, metadata !DIExpression()), !dbg !1322
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !1327
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i64, !dbg !1327
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1327
  %add.ptr = getelementptr inbounds i8, ptr %incdec.ptr, i64 %sub.ptr.sub, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1193, metadata !DIExpression()), !dbg !1301
  %12 = load i64, ptr %length, align 8, !dbg !1329, !tbaa !543
  %inc = add i64 %12, 1, !dbg !1329
  store i64 %inc, ptr %length, align 8, !dbg !1329, !tbaa !543
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #15, !dbg !1330
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then107, %sw.epilog, %if.end124
  %p.0.be = phi ptr [ %add.ptr, %if.then107 ], [ %incdec.ptr120, %sw.epilog ], [ %incdec.ptr125, %if.end124 ]
  %q.0.be = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !1331
  br label %for.cond, !dbg !1301, !llvm.loop !1332

if.end111:                                        ; preds = %if.then100
  %conv112 = sext i8 %7 to i32, !dbg !1334
  switch i32 %conv112, label %sw.default [
    i32 98, label %sw.epilog
    i32 102, label %sw.bb113
    i32 110, label %sw.bb114
    i32 114, label %sw.bb115
    i32 116, label %sw.bb116
    i32 118, label %sw.bb117
    i32 97, label %sw.bb118
    i32 63, label %sw.bb119
  ], !dbg !1335

sw.bb113:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1336

sw.bb114:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1338

sw.bb115:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1339

sw.bb116:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1340

sw.bb117:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1341

sw.bb118:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1342

sw.bb119:                                         ; preds = %if.end111
  br label %sw.epilog, !dbg !1343

sw.default:                                       ; preds = %if.end111
  br label %sw.epilog, !dbg !1344

sw.epilog:                                        ; preds = %if.end111, %sw.default, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113
  %.sink = phi i8 [ %7, %sw.default ], [ 63, %sw.bb119 ], [ 97, %sw.bb118 ], [ 11, %sw.bb117 ], [ 9, %sw.bb116 ], [ 13, %sw.bb115 ], [ 10, %sw.bb114 ], [ 12, %sw.bb113 ], [ 8, %if.end111 ]
  store i8 %.sink, ptr %q.0, align 1, !dbg !1345, !tbaa !552
  %incdec.ptr120 = getelementptr inbounds i8, ptr %p.0, i64 2, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %incdec.ptr120, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1194, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1301
  %13 = load i64, ptr %length, align 8, !dbg !1347, !tbaa !543
  %inc123 = add i64 %13, 1, !dbg !1347
  store i64 %inc123, ptr %length, align 8, !dbg !1347, !tbaa !543
  br label %for.cond.backedge, !dbg !1348

if.end124:                                        ; preds = %for.cond
  %incdec.ptr125 = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %incdec.ptr125, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1194, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1301
  store i8 %5, ptr %q.0, align 1, !dbg !1350, !tbaa !552
  %14 = load i64, ptr %length, align 8, !dbg !1351, !tbaa !543
  %inc128 = add i64 %14, 1, !dbg !1351
  store i64 %inc128, ptr %length, align 8, !dbg !1351, !tbaa !543
  br label %for.cond.backedge, !dbg !1352

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %token, align 8, !dbg !1353, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %15, metadata !1190, metadata !DIExpression()), !dbg !1301
  %call129 = call ptr @DestroyString(ptr noundef %15) #15, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call129, metadata !1190, metadata !DIExpression()), !dbg !1301
  store ptr %call129, ptr %token, align 8, !dbg !1355, !tbaa !388
  %data_type130 = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 7, !dbg !1356
  %16 = load i32, ptr %data_type130, align 8, !dbg !1356, !tbaa !530
  %cmp131.not = icmp eq i32 %16, 1, !dbg !1358
  br i1 %cmp131.not, label %if.end136, label %if.then133, !dbg !1359

if.then133:                                       ; preds = %for.end
  %17 = load ptr, ptr %magic, align 8, !dbg !1360, !tbaa !675
  %call135 = call i64 @strtoul(ptr nocapture noundef %17, ptr noundef null, i32 noundef 0) #15, !dbg !1361
  %value = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 9, !dbg !1362
  store i64 %call135, ptr %value, align 8, !dbg !1363, !tbaa !559
  br label %if.end136, !dbg !1364

if.end136:                                        ; preds = %if.then133, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token) #15, !dbg !1365
  br label %if.end137, !dbg !1366

if.end137:                                        ; preds = %if.end136, %if.end83
  %call138 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.31) #15, !dbg !1367
  call void @llvm.dbg.value(metadata ptr %call138, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp139.not = icmp eq ptr %call138, null, !dbg !1368
  br i1 %cmp139.not, label %if.end143, label %if.then141, !dbg !1370

if.then141:                                       ; preds = %if.end137
  %call142 = call i64 @strtoul(ptr nocapture noundef nonnull %call138, ptr noundef null, i32 noundef 0) #15, !dbg !1371
  %mask = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 8, !dbg !1372
  store i64 %call142, ptr %mask, align 8, !dbg !1373, !tbaa !556
  br label %if.end143, !dbg !1374

if.end143:                                        ; preds = %if.then141, %if.end137
  %call144 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.32) #15, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %call144, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp145.not = icmp eq ptr %call144, null, !dbg !1376
  br i1 %cmp145.not, label %if.end156, label %if.then147, !dbg !1377

if.then147:                                       ; preds = %if.end143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #15, !dbg !1378
  call void @llvm.dbg.value(metadata ptr %c, metadata !1203, metadata !DIExpression(DW_OP_deref)), !dbg !1379
  %call148 = call i64 @strtol(ptr noundef nonnull %call144, ptr noundef nonnull %c, i32 noundef 0) #15, !dbg !1380
  %offset = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 5, !dbg !1381
  store i64 %call148, ptr %offset, align 8, !dbg !1382, !tbaa !542
  %18 = load ptr, ptr %c, align 8, !dbg !1383, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %18, metadata !1203, metadata !DIExpression()), !dbg !1379
  %19 = load i8, ptr %18, align 1, !dbg !1385, !tbaa !552
  %cmp150 = icmp eq i8 %19, 58, !dbg !1386
  br i1 %cmp150, label %if.then152, label %if.end155, !dbg !1387

if.then152:                                       ; preds = %if.then147
  %add.ptr153 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !1388
  %call154 = call i64 @strtol(ptr nocapture noundef nonnull %add.ptr153, ptr noundef null, i32 noundef 0) #15, !dbg !1389
  %extent = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 6, !dbg !1390
  store i64 %call154, ptr %extent, align 8, !dbg !1391, !tbaa !532
  br label %if.end155, !dbg !1392

if.end155:                                        ; preds = %if.then152, %if.then147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #15, !dbg !1393
  br label %if.end156, !dbg !1394

if.end156:                                        ; preds = %if.end155, %if.end143
  %call157 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.33) #15, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %call157, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp158.not = icmp eq ptr %call157, null, !dbg !1396
  br i1 %cmp158.not, label %if.end162, label %if.then160, !dbg !1398

if.then160:                                       ; preds = %if.end156
  %call161 = call ptr @ConstantString(ptr noundef nonnull %call157) #15, !dbg !1399
  %pattern = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 3, !dbg !1400
  store ptr %call161, ptr %pattern, align 8, !dbg !1401, !tbaa !518
  br label %if.end162, !dbg !1402

if.end162:                                        ; preds = %if.then160, %if.end156
  %call163 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.34) #15, !dbg !1403
  call void @llvm.dbg.value(metadata ptr %call163, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp164.not = icmp eq ptr %call163, null, !dbg !1404
  br i1 %cmp164.not, label %if.end168, label %if.then166, !dbg !1406

if.then166:                                       ; preds = %if.end162
  %call167 = call i64 @strtol(ptr nocapture noundef nonnull %call163, ptr noundef null, i32 noundef 0) #15, !dbg !1407
  %priority = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 4, !dbg !1408
  store i64 %call167, ptr %priority, align 8, !dbg !1409, !tbaa !504
  br label %if.end168, !dbg !1410

if.end168:                                        ; preds = %if.then166, %if.end162
  %call169 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.35) #15, !dbg !1411
  call void @llvm.dbg.value(metadata ptr %call169, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp170.not = icmp eq ptr %call169, null, !dbg !1412
  br i1 %cmp170.not, label %if.end174, label %if.then172, !dbg !1414

if.then172:                                       ; preds = %if.end168
  %call173 = call i32 @IsMagickTrue(ptr noundef nonnull %call169) #15, !dbg !1415
  %stealth = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 13, !dbg !1416
  store i32 %call173, ptr %stealth, align 8, !dbg !1417, !tbaa !750
  br label %if.end174, !dbg !1418

if.end174:                                        ; preds = %if.then172, %if.end168
  %call175 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %mime.0296, ptr noundef nonnull @.str.36) #15, !dbg !1419
  call void @llvm.dbg.value(metadata ptr %call175, metadata !1184, metadata !DIExpression()), !dbg !1270
  %cmp176.not = icmp eq ptr %call175, null, !dbg !1420
  br i1 %cmp176.not, label %if.end180, label %if.then178, !dbg !1422

if.then178:                                       ; preds = %if.end174
  %call179 = call ptr @ConstantString(ptr noundef nonnull %call175) #15, !dbg !1423
  %type = getelementptr inbounds %struct._MimeInfo, ptr %call50, i64 0, i32 1, !dbg !1424
  store ptr %call179, ptr %type, align 8, !dbg !1425, !tbaa !754
  br label %if.end180, !dbg !1426

if.end180:                                        ; preds = %if.then178, %if.end174
  %call181 = call i32 @AppendValueToLinkedList(ptr noundef %mime_cache, ptr noundef nonnull %call50) #15, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %call181, metadata !1173, metadata !DIExpression()), !dbg !1206
  %cmp182 = icmp eq i32 %call181, 0, !dbg !1428
  br i1 %cmp182, label %if.then184, label %if.end186, !dbg !1430

if.then184:                                       ; preds = %if.end180
  %call185 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 976, i32 noundef 400, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %filename) #15, !dbg !1431
  br label %if.end186, !dbg !1432

if.end186:                                        ; preds = %if.then184, %if.end180
  %call187 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %mime.0296) #15, !dbg !1433
  call void @llvm.dbg.value(metadata ptr %call187, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %call181, metadata !1173, metadata !DIExpression()), !dbg !1206
  %cmp46.not = icmp eq ptr %call187, null, !dbg !1256
  br i1 %cmp46.not, label %while.end188, label %while.body48, !dbg !1257, !llvm.loop !1434

while.end188:                                     ; preds = %if.end186, %while.end
  %status.3.lcssa = phi i32 [ %status.0.lcssa, %while.end ], [ %call181, %if.end186 ], !dbg !1206
  %call189 = call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #15, !dbg !1436
  call void @llvm.dbg.value(metadata ptr %call189, metadata !1175, metadata !DIExpression()), !dbg !1206
  br label %cleanup, !dbg !1437

cleanup:                                          ; preds = %if.end, %entry, %while.end188
  %retval.0 = phi i32 [ %status.3.lcssa, %while.end188 ], [ 0, %entry ], [ 0, %if.end ], !dbg !1206
  ret i32 %retval.0, !dbg !1438
}

declare !dbg !1439 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !1442 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #3

declare !dbg !1445 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #3

declare !dbg !1448 i32 @IsLinkedListEmpty(ptr noundef) local_unnamed_addr #3

declare !dbg !1451 ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1454 ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1457 ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1460 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1464 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1467 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1468 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1472 ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1475 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #12

declare !dbg !1478 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1481 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1486 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !1487 i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !1490 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !1493 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1496 ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364}
!llvm.ident = !{!365}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mime_cache", scope: !2, file: !237, line: 118, type: !227, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !226, globals: !354, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/mime.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "6543c84b74462340c150e9cc58d83c21")
!4 = !{!5, !11, !84, !92, !98, !123, !135, !211}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 25, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/mime-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a91774fb4d5842056f35d1e551378d57")
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "UndefinedData", value: 0)
!88 = !DIEnumerator(name: "StringData", value: 1)
!89 = !DIEnumerator(name: "ByteData", value: 2)
!90 = !DIEnumerator(name: "ShortData", value: 3)
!91 = !DIEnumerator(name: "LongData", value: 4)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 30, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!96 = !DIEnumerator(name: "LSBEndian", value: 1)
!97 = !DIEnumerator(name: "MSBEndian", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 34, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!101 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!102 = !DIEnumerator(name: "NoEvents", value: 0)
!103 = !DIEnumerator(name: "TraceEvent", value: 1)
!104 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!105 = !DIEnumerator(name: "BlobEvent", value: 4)
!106 = !DIEnumerator(name: "CacheEvent", value: 8)
!107 = !DIEnumerator(name: "CoderEvent", value: 16)
!108 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!109 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!110 = !DIEnumerator(name: "DrawEvent", value: 128)
!111 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!112 = !DIEnumerator(name: "ImageEvent", value: 512)
!113 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!114 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!115 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!116 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!117 = !DIEnumerator(name: "TransformEvent", value: 16384)
!118 = !DIEnumerator(name: "UserEvent", value: 36864)
!119 = !DIEnumerator(name: "WandEvent", value: 65536)
!120 = !DIEnumerator(name: "X11Event", value: 131072)
!121 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!122 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 25, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134}
!126 = !DIEnumerator(name: "UndefinedPath", value: 0)
!127 = !DIEnumerator(name: "MagickPath", value: 1)
!128 = !DIEnumerator(name: "RootPath", value: 2)
!129 = !DIEnumerator(name: "HeadPath", value: 3)
!130 = !DIEnumerator(name: "TailPath", value: 4)
!131 = !DIEnumerator(name: "BasePath", value: 5)
!132 = !DIEnumerator(name: "ExtensionPath", value: 6)
!133 = !DIEnumerator(name: "SubimagePath", value: 7)
!134 = !DIEnumerator(name: "CanonicalPath", value: 8)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 25, baseType: !137, size: 32, elements: !138)
!136 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!139 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!140 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!141 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!142 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!143 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!144 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!145 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!146 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!147 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!148 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!149 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!150 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!151 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!152 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!153 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!154 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!155 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!156 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!157 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!158 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!159 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!160 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!161 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!162 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!163 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!164 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!165 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!166 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!167 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!168 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!169 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!170 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!171 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!172 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!173 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!174 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!175 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!176 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!177 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!178 = !DIEnumerator(name: "MagickListOptions", value: 38)
!179 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!180 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!181 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!182 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!183 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!184 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!185 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!186 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!187 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!188 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!189 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!190 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!191 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!192 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!193 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!194 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!195 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!196 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!197 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!198 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!199 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!200 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!201 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!202 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!203 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!204 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!205 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!206 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!207 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!208 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!209 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!210 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 46, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!214 = !DIEnumerator(name: "_ISupper", value: 256)
!215 = !DIEnumerator(name: "_ISlower", value: 512)
!216 = !DIEnumerator(name: "_ISalpha", value: 1024)
!217 = !DIEnumerator(name: "_ISdigit", value: 2048)
!218 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!219 = !DIEnumerator(name: "_ISspace", value: 8192)
!220 = !DIEnumerator(name: "_ISprint", value: 16384)
!221 = !DIEnumerator(name: "_ISgraph", value: 32768)
!222 = !DIEnumerator(name: "_ISblank", value: 1)
!223 = !DIEnumerator(name: "_IScntrl", value: 2)
!224 = !DIEnumerator(name: "_ISpunct", value: 4)
!225 = !DIEnumerator(name: "_ISalnum", value: 8)
!226 = !{!227, !231, !232, !271, !240, !255, !246, !257, !266, !273, !274, !275, !276, !331, !333, !137, !337, !350, !259, !263, !267, !305, !252}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !229, line: 34, baseType: !230)
!229 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !229, line: 33, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "MimeInfo", file: !235, line: 26, baseType: !236)
!235 = !DIFile(filename: "apps/538.imagick_r/src/magick/mime.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f3a6bef5019fd5f2dadd5518bbd368c")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MimeInfo", file: !237, line: 68, size: 960, elements: !238)
!237 = !DIFile(filename: "apps/538.imagick_r/src/magick/mime.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6543c84b74462340c150e9cc58d83c21")
!238 = !{!239, !242, !243, !244, !245, !251, !254, !258, !260, !261, !262, !264, !265, !268, !270}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !236, file: !237, line: 71, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !237, line: 72, baseType: !240, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !236, file: !237, line: 73, baseType: !240, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !236, file: !237, line: 74, baseType: !240, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !236, file: !237, line: 77, baseType: !246, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !247, line: 77, baseType: !248)
!247 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !249, line: 193, baseType: !250)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!250 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !236, file: !237, line: 80, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !253)
!253 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !236, file: !237, line: 83, baseType: !255, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !256, line: 46, baseType: !257)
!256 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!257 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !236, file: !237, line: 86, baseType: !259, size: 32, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataType", file: !85, line: 32, baseType: !84)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !236, file: !237, line: 89, baseType: !246, size: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !237, line: 90, baseType: !246, size: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !236, file: !237, line: 93, baseType: !263, size: 32, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !93, line: 35, baseType: !92)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !236, file: !237, line: 96, baseType: !255, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !236, file: !237, line: 99, baseType: !266, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !236, file: !237, line: 102, baseType: !269, size: 32, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !236, file: !237, line: 105, baseType: !255, size: 64, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !279, line: 7, baseType: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !281, line: 49, size: 1728, elements: !282)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !298, !300, !301, !302, !304, !306, !308, !312, !315, !317, !320, !323, !324, !325, !326, !327}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !280, file: !281, line: 51, baseType: !137, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !280, file: !281, line: 54, baseType: !240, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !280, file: !281, line: 55, baseType: !240, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !280, file: !281, line: 56, baseType: !240, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !280, file: !281, line: 57, baseType: !240, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !280, file: !281, line: 58, baseType: !240, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !280, file: !281, line: 59, baseType: !240, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !280, file: !281, line: 60, baseType: !240, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !280, file: !281, line: 61, baseType: !240, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !280, file: !281, line: 64, baseType: !240, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !280, file: !281, line: 65, baseType: !240, size: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !280, file: !281, line: 66, baseType: !240, size: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !280, file: !281, line: 68, baseType: !296, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !281, line: 36, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !280, file: !281, line: 70, baseType: !299, size: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !280, file: !281, line: 72, baseType: !137, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !280, file: !281, line: 73, baseType: !137, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !280, file: !281, line: 74, baseType: !303, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !249, line: 152, baseType: !250)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !280, file: !281, line: 77, baseType: !305, size: 16, offset: 1024)
!305 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !280, file: !281, line: 78, baseType: !307, size: 8, offset: 1040)
!307 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !280, file: !281, line: 79, baseType: !309, size: 8, offset: 1048)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 8, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 1)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !280, file: !281, line: 81, baseType: !313, size: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !281, line: 43, baseType: null)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !280, file: !281, line: 89, baseType: !316, size: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !249, line: 153, baseType: !250)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !280, file: !281, line: 91, baseType: !318, size: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !281, line: 37, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !280, file: !281, line: 92, baseType: !321, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !281, line: 38, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !280, file: !281, line: 93, baseType: !299, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !280, file: !281, line: 94, baseType: !231, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !280, file: !281, line: 95, baseType: !255, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !280, file: !281, line: 96, baseType: !137, size: 32, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !280, file: !281, line: 98, baseType: !328, size: 160, offset: 1568)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 160, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 20)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !335, line: 26, baseType: !336)
!335 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !335, line: 25, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !340, line: 40, baseType: !341)
!340 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !340, line: 29, size: 32960, elements: !342)
!342 = !{!343, !347, !348, !349}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !341, file: !340, line: 32, baseType: !344, size: 32768)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 32768, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 4096)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !341, file: !340, line: 35, baseType: !266, size: 64, offset: 32768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !341, file: !340, line: 38, baseType: !255, size: 64, offset: 32832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !341, file: !340, line: 39, baseType: !255, size: 64, offset: 32896)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMLTreeInfo", file: !352, line: 29, baseType: !353)
!352 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e544995a74b1ca30ba5edadca4a5927")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XMLTreeInfo", file: !352, line: 28, flags: DIFlagFwdDecl)
!354 = !{!355, !0, !357}
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "MimeMap", scope: !2, file: !237, line: 112, type: !331, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "mime_semaphore", scope: !2, file: !237, line: 121, type: !333, isLocal: true, isDefinition: true)
!359 = !{i32 7, !"Dwarf Version", i32 5}
!360 = !{i32 2, !"Debug Info Version", i32 3}
!361 = !{i32 1, !"wchar_size", i32 4}
!362 = !{i32 7, !"PIC Level", i32 2}
!363 = !{i32 7, !"PIE Level", i32 2}
!364 = !{i32 7, !"uwtable", i32 2}
!365 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!366 = distinct !DISubprogram(name: "LoadMimeLists", scope: !237, file: !237, line: 194, type: !367, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!367 = !DISubroutineType(types: !368)
!368 = !{!269, !331, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !12, line: 102, size: 448, elements: !372)
!372 = !{!373, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !371, file: !12, line: 105, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !12, line: 100, baseType: !11)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !371, file: !12, line: 108, baseType: !137, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !371, file: !12, line: 111, baseType: !240, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !371, file: !12, line: 112, baseType: !240, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !371, file: !12, line: 115, baseType: !231, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !371, file: !12, line: 118, baseType: !269, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !371, file: !12, line: 121, baseType: !333, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !371, file: !12, line: 124, baseType: !255, size: 64, offset: 384)
!382 = !{!383, !384}
!383 = !DILocalVariable(name: "name", arg: 1, scope: !366, file: !237, line: 194, type: !331)
!384 = !DILocalVariable(name: "exception", arg: 2, scope: !366, file: !237, line: 195, type: !369)
!385 = !DILocation(line: 0, scope: !366)
!386 = !DILocation(line: 197, column: 14, scope: !366)
!387 = !DILocation(line: 197, column: 13, scope: !366)
!388 = !{!389, !389, i64 0}
!389 = !{!"any pointer", !390, i64 0}
!390 = !{!"omnipotent char", !391, i64 0}
!391 = !{!"Simple C/C++ TBAA"}
!392 = !DILocation(line: 198, column: 21, scope: !366)
!393 = !DILocation(line: 198, column: 3, scope: !366)
!394 = distinct !DISubprogram(name: "AcquireMimeCache", scope: !237, file: !237, line: 157, type: !395, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!227, !331, !369}
!397 = !{!398, !399, !400, !401, !403, !406, !407, !409}
!398 = !DILocalVariable(name: "filename", arg: 1, scope: !394, file: !237, line: 157, type: !331)
!399 = !DILocalVariable(name: "exception", arg: 2, scope: !394, file: !237, line: 158, type: !369)
!400 = !DILocalVariable(name: "mime_cache", scope: !394, file: !237, line: 161, type: !227)
!401 = !DILocalVariable(name: "status", scope: !394, file: !237, line: 164, type: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!403 = !DILocalVariable(name: "message", scope: !404, file: !237, line: 168, type: !240)
!404 = distinct !DILexicalBlock(scope: !405, file: !237, line: 168, column: 5)
!405 = distinct !DILexicalBlock(scope: !394, file: !237, line: 167, column: 7)
!406 = !DILocalVariable(name: "exception", scope: !404, file: !237, line: 168, type: !370)
!407 = !DILocalVariable(name: "option", scope: !408, file: !237, line: 173, type: !337)
!408 = distinct !DILexicalBlock(scope: !394, file: !237, line: 171, column: 3)
!409 = !DILocalVariable(name: "options", scope: !408, file: !237, line: 176, type: !227)
!410 = !DILocation(line: 0, scope: !394)
!411 = !DILocation(line: 166, column: 14, scope: !394)
!412 = !DILocation(line: 167, column: 18, scope: !405)
!413 = !DILocation(line: 167, column: 7, scope: !394)
!414 = !DILocation(line: 168, column: 5, scope: !404)
!415 = !{!416, !416, i64 0}
!416 = !{!"int", !390, i64 0}
!417 = !DILocation(line: 0, scope: !404)
!418 = !DILocation(line: 178, column: 13, scope: !408)
!419 = !DILocation(line: 0, scope: !408)
!420 = !DILocation(line: 179, column: 33, scope: !408)
!421 = !DILocation(line: 180, column: 19, scope: !408)
!422 = !DILocation(line: 180, column: 5, scope: !408)
!423 = !DILocation(line: 183, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !408, file: !237, line: 181, column: 5)
!425 = !DILocation(line: 183, column: 36, scope: !424)
!426 = !DILocation(line: 182, column: 15, scope: !424)
!427 = !DILocation(line: 184, column: 35, scope: !424)
!428 = distinct !{!428, !422, !429, !430, !431}
!429 = !DILocation(line: 185, column: 5, scope: !408)
!430 = !{!"llvm.loop.mustprogress"}
!431 = !{!"llvm.loop.unroll.disable"}
!432 = !DILocation(line: 186, column: 13, scope: !408)
!433 = !DILocation(line: 189, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !394, file: !237, line: 189, column: 7)
!435 = !DILocation(line: 189, column: 37, scope: !434)
!436 = !DILocation(line: 189, column: 7, scope: !394)
!437 = !DILocation(line: 190, column: 13, scope: !434)
!438 = !DILocation(line: 190, column: 5, scope: !434)
!439 = !DILocation(line: 191, column: 3, scope: !394)
!440 = distinct !DISubprogram(name: "GetMimeInfo", scope: !237, file: !237, line: 234, type: !441, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!441 = !DISubroutineType(types: !442)
!442 = !{!232, !331, !271, !443, !369}
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!445 = !DILocalVariable(name: "filename", arg: 1, scope: !440, file: !237, line: 234, type: !331)
!446 = !DILocalVariable(name: "magic", arg: 2, scope: !440, file: !237, line: 235, type: !271)
!447 = !DILocalVariable(name: "length", arg: 3, scope: !440, file: !237, line: 235, type: !443)
!448 = !DILocalVariable(name: "exception", arg: 4, scope: !440, file: !237, line: 235, type: !369)
!449 = !DILocalVariable(name: "mime_info", scope: !440, file: !237, line: 238, type: !232)
!450 = !DILocalVariable(name: "endian", scope: !440, file: !237, line: 241, type: !263)
!451 = !DILocalVariable(name: "p", scope: !440, file: !237, line: 244, type: !232)
!452 = !DILocalVariable(name: "q", scope: !440, file: !237, line: 247, type: !271)
!453 = !DILocalVariable(name: "i", scope: !440, file: !237, line: 250, type: !246)
!454 = !DILocalVariable(name: "lsb_first", scope: !440, file: !237, line: 253, type: !255)
!455 = !DILocalVariable(name: "value", scope: !440, file: !237, line: 256, type: !246)
!456 = !DILocation(line: 0, scope: !440)
!457 = !DILocalVariable(name: "exception", arg: 1, scope: !458, file: !237, line: 671, type: !369)
!458 = distinct !DISubprogram(name: "IsMimeCacheInstantiated", scope: !237, file: !237, line: 671, type: !459, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!269, !369}
!461 = !{!457}
!462 = !DILocation(line: 0, scope: !458, inlinedAt: !463)
!463 = distinct !DILocation(line: 259, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !440, file: !237, line: 259, column: 7)
!465 = !DILocation(line: 673, column: 7, scope: !466, inlinedAt: !463)
!466 = distinct !DILexicalBlock(scope: !458, file: !237, line: 673, column: 7)
!467 = !DILocation(line: 673, column: 18, scope: !466, inlinedAt: !463)
!468 = !DILocation(line: 673, column: 7, scope: !458, inlinedAt: !463)
!469 = !DILocation(line: 675, column: 11, scope: !470, inlinedAt: !463)
!470 = distinct !DILexicalBlock(scope: !471, file: !237, line: 675, column: 11)
!471 = distinct !DILexicalBlock(scope: !466, file: !237, line: 674, column: 5)
!472 = !DILocation(line: 675, column: 26, scope: !470, inlinedAt: !463)
!473 = !DILocation(line: 675, column: 11, scope: !471, inlinedAt: !463)
!474 = !DILocation(line: 676, column: 9, scope: !470, inlinedAt: !463)
!475 = !DILocation(line: 677, column: 25, scope: !471, inlinedAt: !463)
!476 = !DILocation(line: 677, column: 7, scope: !471, inlinedAt: !463)
!477 = !DILocation(line: 678, column: 11, scope: !478, inlinedAt: !463)
!478 = distinct !DILexicalBlock(scope: !471, file: !237, line: 678, column: 11)
!479 = !DILocation(line: 678, column: 22, scope: !478, inlinedAt: !463)
!480 = !DILocation(line: 678, column: 11, scope: !471, inlinedAt: !463)
!481 = !DILocation(line: 679, column: 20, scope: !478, inlinedAt: !463)
!482 = !DILocation(line: 679, column: 19, scope: !478, inlinedAt: !463)
!483 = !DILocation(line: 679, column: 9, scope: !478, inlinedAt: !463)
!484 = !DILocation(line: 680, column: 27, scope: !471, inlinedAt: !463)
!485 = !DILocation(line: 680, column: 7, scope: !471, inlinedAt: !463)
!486 = !DILocation(line: 682, column: 10, scope: !458, inlinedAt: !463)
!487 = !DILocation(line: 682, column: 21, scope: !458, inlinedAt: !463)
!488 = !DILocation(line: 259, column: 7, scope: !440)
!489 = !DILocation(line: 266, column: 21, scope: !440)
!490 = !DILocation(line: 266, column: 3, scope: !440)
!491 = !DILocation(line: 267, column: 27, scope: !440)
!492 = !DILocation(line: 267, column: 3, scope: !440)
!493 = !DILocation(line: 268, column: 49, scope: !440)
!494 = !DILocation(line: 268, column: 24, scope: !440)
!495 = !DILocation(line: 269, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !440, file: !237, line: 269, column: 7)
!497 = !DILocation(line: 269, column: 47, scope: !496)
!498 = !DILocation(line: 274, column: 12, scope: !440)
!499 = !DILocation(line: 274, column: 3, scope: !440)
!500 = !DILocation(line: 278, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !237, line: 278, column: 11)
!502 = distinct !DILexicalBlock(scope: !503, file: !237, line: 277, column: 9)
!503 = distinct !DILexicalBlock(scope: !440, file: !237, line: 275, column: 3)
!504 = !{!505, !506, i64 32}
!505 = !{!"_MimeInfo", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !506, i64 32, !507, i64 40, !506, i64 48, !390, i64 56, !506, i64 64, !506, i64 72, !390, i64 80, !506, i64 88, !389, i64 96, !390, i64 104, !506, i64 112}
!506 = !{!"long", !390, i64 0}
!507 = !{!"long long", !390, i64 0}
!508 = !DILocation(line: 278, column: 36, scope: !501)
!509 = !DILocation(line: 278, column: 23, scope: !501)
!510 = !DILocation(line: 278, column: 11, scope: !502)
!511 = !DILocation(line: 280, column: 57, scope: !512)
!512 = distinct !DILexicalBlock(scope: !501, file: !237, line: 279, column: 9)
!513 = !DILocation(line: 280, column: 32, scope: !512)
!514 = distinct !{!514, !499, !515, !430, !431}
!515 = !DILocation(line: 391, column: 3, scope: !440)
!516 = !DILocation(line: 283, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !503, file: !237, line: 283, column: 9)
!518 = !{!505, !389, i64 24}
!519 = !DILocation(line: 283, column: 21, scope: !517)
!520 = !DILocation(line: 283, column: 39, scope: !517)
!521 = !DILocation(line: 285, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !237, line: 285, column: 13)
!523 = distinct !DILexicalBlock(scope: !517, file: !237, line: 284, column: 7)
!524 = !DILocation(line: 285, column: 61, scope: !522)
!525 = !DILocation(line: 285, column: 13, scope: !523)
!526 = !DILocation(line: 288, column: 9, scope: !523)
!527 = !DILocation(line: 0, scope: !503)
!528 = !DILocation(line: 277, column: 9, scope: !503)
!529 = !DILocation(line: 290, column: 16, scope: !503)
!530 = !{!505, !390, i64 56}
!531 = !DILocation(line: 290, column: 5, scope: !503)
!532 = !{!505, !506, i64 48}
!533 = !DILocation(line: 377, column: 21, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !237, line: 377, column: 9)
!535 = distinct !DILexicalBlock(scope: !536, file: !237, line: 377, column: 9)
!536 = distinct !DILexicalBlock(scope: !537, file: !237, line: 376, column: 7)
!537 = distinct !DILexicalBlock(scope: !503, file: !237, line: 291, column: 5)
!538 = !DILocation(line: 377, column: 9, scope: !535)
!539 = !DILocation(line: 379, column: 28, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !237, line: 379, column: 15)
!541 = distinct !DILexicalBlock(scope: !534, file: !237, line: 378, column: 9)
!542 = !{!505, !507, i64 40}
!543 = !{!505, !506, i64 88}
!544 = !DILocation(line: 294, column: 26, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !237, line: 294, column: 13)
!546 = distinct !DILexicalBlock(scope: !537, file: !237, line: 293, column: 7)
!547 = !DILocation(line: 294, column: 32, scope: !545)
!548 = !DILocation(line: 294, column: 36, scope: !545)
!549 = !DILocation(line: 294, column: 13, scope: !546)
!550 = !DILocation(line: 296, column: 16, scope: !546)
!551 = !DILocation(line: 297, column: 26, scope: !546)
!552 = !{!390, !390, i64 0}
!553 = !DILocation(line: 297, column: 15, scope: !546)
!554 = !DILocation(line: 298, column: 16, scope: !555)
!555 = distinct !DILexicalBlock(scope: !546, file: !237, line: 298, column: 13)
!556 = !{!505, !506, i64 64}
!557 = !DILocation(line: 298, column: 21, scope: !555)
!558 = !DILocation(line: 0, scope: !555)
!559 = !{!505, !506, i64 72}
!560 = !DILocation(line: 298, column: 13, scope: !546)
!561 = !DILocation(line: 300, column: 26, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !237, line: 300, column: 17)
!563 = distinct !DILexicalBlock(scope: !555, file: !237, line: 299, column: 11)
!564 = !DILocation(line: 300, column: 17, scope: !563)
!565 = !DILocation(line: 305, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !237, line: 305, column: 17)
!567 = distinct !DILexicalBlock(scope: !555, file: !237, line: 304, column: 11)
!568 = !DILocation(line: 305, column: 38, scope: !566)
!569 = !DILocation(line: 305, column: 17, scope: !567)
!570 = !DILocation(line: 312, column: 26, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !237, line: 312, column: 13)
!572 = distinct !DILexicalBlock(scope: !537, file: !237, line: 311, column: 7)
!573 = !DILocation(line: 312, column: 32, scope: !571)
!574 = !DILocation(line: 312, column: 36, scope: !571)
!575 = !DILocation(line: 312, column: 13, scope: !572)
!576 = !DILocation(line: 314, column: 16, scope: !572)
!577 = !DILocation(line: 315, column: 19, scope: !572)
!578 = !{!505, !390, i64 80}
!579 = !DILocation(line: 318, column: 20, scope: !580)
!580 = distinct !DILexicalBlock(scope: !572, file: !237, line: 318, column: 13)
!581 = !DILocation(line: 0, scope: !580)
!582 = !DILocation(line: 318, column: 13, scope: !572)
!583 = !DILocation(line: 321, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !237, line: 319, column: 11)
!585 = !DILocation(line: 321, column: 20, scope: !584)
!586 = !DILocation(line: 321, column: 27, scope: !584)
!587 = !DILocation(line: 321, column: 18, scope: !584)
!588 = !DILocation(line: 322, column: 11, scope: !584)
!589 = !DILocation(line: 325, column: 36, scope: !590)
!590 = distinct !DILexicalBlock(scope: !580, file: !237, line: 324, column: 11)
!591 = !DILocation(line: 326, column: 21, scope: !590)
!592 = !DILocation(line: 326, column: 20, scope: !590)
!593 = !DILocation(line: 326, column: 18, scope: !590)
!594 = !DILocation(line: 328, column: 16, scope: !595)
!595 = distinct !DILexicalBlock(scope: !572, file: !237, line: 328, column: 13)
!596 = !DILocation(line: 328, column: 21, scope: !595)
!597 = !DILocation(line: 0, scope: !595)
!598 = !DILocation(line: 328, column: 13, scope: !572)
!599 = !DILocation(line: 330, column: 26, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !237, line: 330, column: 17)
!601 = distinct !DILexicalBlock(scope: !595, file: !237, line: 329, column: 11)
!602 = !DILocation(line: 330, column: 17, scope: !601)
!603 = !DILocation(line: 335, column: 27, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !237, line: 335, column: 17)
!605 = distinct !DILexicalBlock(scope: !595, file: !237, line: 334, column: 11)
!606 = !DILocation(line: 335, column: 38, scope: !604)
!607 = !DILocation(line: 335, column: 17, scope: !605)
!608 = !DILocation(line: 342, column: 26, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !237, line: 342, column: 13)
!610 = distinct !DILexicalBlock(scope: !537, file: !237, line: 341, column: 7)
!611 = !DILocation(line: 342, column: 32, scope: !609)
!612 = !DILocation(line: 342, column: 36, scope: !609)
!613 = !DILocation(line: 342, column: 13, scope: !610)
!614 = !DILocation(line: 344, column: 16, scope: !610)
!615 = !DILocation(line: 345, column: 19, scope: !610)
!616 = !DILocation(line: 348, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !237, line: 348, column: 13)
!618 = !DILocation(line: 0, scope: !617)
!619 = !DILocation(line: 348, column: 13, scope: !610)
!620 = !DILocation(line: 351, column: 23, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !237, line: 349, column: 11)
!622 = !DILocation(line: 351, column: 21, scope: !621)
!623 = !DILocation(line: 351, column: 20, scope: !621)
!624 = !DILocation(line: 351, column: 27, scope: !621)
!625 = !DILocation(line: 351, column: 18, scope: !621)
!626 = !DILocation(line: 352, column: 23, scope: !621)
!627 = !DILocation(line: 352, column: 21, scope: !621)
!628 = !DILocation(line: 352, column: 20, scope: !621)
!629 = !DILocation(line: 352, column: 27, scope: !621)
!630 = !DILocation(line: 352, column: 18, scope: !621)
!631 = !DILocation(line: 353, column: 21, scope: !621)
!632 = !DILocation(line: 353, column: 20, scope: !621)
!633 = !DILocation(line: 353, column: 27, scope: !621)
!634 = !DILocation(line: 353, column: 18, scope: !621)
!635 = !DILocation(line: 354, column: 11, scope: !621)
!636 = !DILocation(line: 357, column: 36, scope: !637)
!637 = distinct !DILexicalBlock(scope: !617, file: !237, line: 356, column: 11)
!638 = !DILocation(line: 358, column: 23, scope: !637)
!639 = !DILocation(line: 358, column: 21, scope: !637)
!640 = !DILocation(line: 358, column: 20, scope: !637)
!641 = !DILocation(line: 358, column: 27, scope: !637)
!642 = !DILocation(line: 358, column: 18, scope: !637)
!643 = !DILocation(line: 359, column: 23, scope: !637)
!644 = !DILocation(line: 359, column: 21, scope: !637)
!645 = !DILocation(line: 359, column: 20, scope: !637)
!646 = !DILocation(line: 359, column: 27, scope: !637)
!647 = !DILocation(line: 359, column: 18, scope: !637)
!648 = !DILocation(line: 360, column: 21, scope: !637)
!649 = !DILocation(line: 360, column: 20, scope: !637)
!650 = !DILocation(line: 360, column: 18, scope: !637)
!651 = !DILocation(line: 362, column: 16, scope: !652)
!652 = distinct !DILexicalBlock(scope: !610, file: !237, line: 362, column: 13)
!653 = !DILocation(line: 362, column: 21, scope: !652)
!654 = !DILocation(line: 0, scope: !652)
!655 = !DILocation(line: 362, column: 13, scope: !610)
!656 = !DILocation(line: 364, column: 26, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !237, line: 364, column: 17)
!658 = distinct !DILexicalBlock(scope: !652, file: !237, line: 363, column: 11)
!659 = !DILocation(line: 364, column: 17, scope: !658)
!660 = !DILocation(line: 369, column: 27, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !237, line: 369, column: 17)
!662 = distinct !DILexicalBlock(scope: !652, file: !237, line: 368, column: 11)
!663 = !DILocation(line: 369, column: 38, scope: !661)
!664 = !DILocation(line: 369, column: 17, scope: !662)
!665 = !DILocation(line: 377, column: 46, scope: !534)
!666 = distinct !{!666, !538, !667, !430, !431}
!667 = !DILocation(line: 386, column: 9, scope: !535)
!668 = !DILocation(line: 379, column: 34, scope: !540)
!669 = !DILocation(line: 379, column: 36, scope: !540)
!670 = !DILocation(line: 379, column: 48, scope: !540)
!671 = !DILocation(line: 379, column: 15, scope: !541)
!672 = !DILocation(line: 381, column: 37, scope: !673)
!673 = distinct !DILexicalBlock(scope: !541, file: !237, line: 381, column: 15)
!674 = !DILocation(line: 381, column: 43, scope: !673)
!675 = !{!505, !389, i64 96}
!676 = !DILocation(line: 381, column: 15, scope: !673)
!677 = !DILocation(line: 381, column: 60, scope: !673)
!678 = !DILocation(line: 381, column: 15, scope: !541)
!679 = !DILocation(line: 392, column: 17, scope: !680)
!680 = distinct !DILexicalBlock(scope: !440, file: !237, line: 392, column: 7)
!681 = !DILocation(line: 392, column: 7, scope: !440)
!682 = !DILocation(line: 393, column: 36, scope: !680)
!683 = !DILocation(line: 394, column: 7, scope: !680)
!684 = !DILocation(line: 393, column: 12, scope: !680)
!685 = !DILocation(line: 393, column: 5, scope: !680)
!686 = !DILocation(line: 397, column: 1, scope: !440)
!687 = !DISubprogram(name: "LockSemaphoreInfo", scope: !335, file: !335, line: 37, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !333}
!690 = !{}
!691 = !DISubprogram(name: "ResetLinkedListIterator", scope: !229, file: !229, line: 77, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !227}
!694 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !229, file: !229, line: 69, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!695 = !DISubroutineType(types: !696)
!696 = !{!231, !227}
!697 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !335, file: !335, line: 39, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!698 = !DISubprogram(name: "GlobExpression", scope: !699, file: !699, line: 36, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!699 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!700 = !DISubroutineType(types: !701)
!701 = !{!269, !331, !331, !702}
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!703 = !DISubprogram(name: "InsertValueInLinkedList", scope: !229, file: !229, line: 49, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!704 = !DISubroutineType(types: !705)
!705 = !{!269, !227, !443, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!708 = !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !229, file: !229, line: 72, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!709 = !DISubroutineType(types: !710)
!710 = !{!231, !227, !706}
!711 = distinct !DISubprogram(name: "GetMimeInfoList", scope: !237, file: !237, line: 450, type: !712, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!712 = !DISubroutineType(types: !713)
!713 = !{!273, !331, !714, !369}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DILocalVariable(name: "pattern", arg: 1, scope: !711, file: !237, line: 450, type: !331)
!717 = !DILocalVariable(name: "number_aliases", arg: 2, scope: !711, file: !237, line: 451, type: !714)
!718 = !DILocalVariable(name: "exception", arg: 3, scope: !711, file: !237, line: 451, type: !369)
!719 = !DILocalVariable(name: "aliases", scope: !711, file: !237, line: 454, type: !273)
!720 = !DILocalVariable(name: "p", scope: !711, file: !237, line: 457, type: !232)
!721 = !DILocalVariable(name: "i", scope: !711, file: !237, line: 460, type: !246)
!722 = !DILocation(line: 0, scope: !711)
!723 = !DILocation(line: 466, column: 10, scope: !711)
!724 = !DILocation(line: 468, column: 18, scope: !711)
!725 = !{!506, !506, i64 0}
!726 = !DILocation(line: 469, column: 5, scope: !711)
!727 = !DILocation(line: 470, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !711, file: !237, line: 470, column: 7)
!729 = !DILocation(line: 470, column: 7, scope: !711)
!730 = !DILocation(line: 473, column: 37, scope: !711)
!731 = !DILocation(line: 473, column: 5, scope: !711)
!732 = !DILocation(line: 473, column: 48, scope: !711)
!733 = !DILocation(line: 472, column: 31, scope: !711)
!734 = !DILocation(line: 474, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !711, file: !237, line: 474, column: 7)
!736 = !DILocation(line: 474, column: 7, scope: !711)
!737 = !DILocation(line: 479, column: 21, scope: !711)
!738 = !DILocation(line: 479, column: 3, scope: !711)
!739 = !DILocation(line: 480, column: 27, scope: !711)
!740 = !DILocation(line: 480, column: 3, scope: !711)
!741 = !DILocation(line: 481, column: 49, scope: !711)
!742 = !DILocation(line: 481, column: 24, scope: !711)
!743 = !DILocation(line: 482, column: 15, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !237, line: 482, column: 3)
!745 = distinct !DILexicalBlock(scope: !711, file: !237, line: 482, column: 3)
!746 = !DILocation(line: 482, column: 3, scope: !745)
!747 = !DILocation(line: 484, column: 13, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !237, line: 484, column: 9)
!749 = distinct !DILexicalBlock(scope: !744, file: !237, line: 483, column: 3)
!750 = !{!505, !390, i64 104}
!751 = !DILocation(line: 484, column: 21, scope: !748)
!752 = !DILocation(line: 484, column: 37, scope: !748)
!753 = !DILocation(line: 485, column: 28, scope: !748)
!754 = !{!505, !389, i64 8}
!755 = !DILocation(line: 485, column: 10, scope: !748)
!756 = !DILocation(line: 485, column: 54, scope: !748)
!757 = !DILocation(line: 484, column: 9, scope: !749)
!758 = !DILocation(line: 486, column: 16, scope: !748)
!759 = !DILocation(line: 486, column: 7, scope: !748)
!760 = !DILocation(line: 486, column: 19, scope: !748)
!761 = !DILocation(line: 0, scope: !745)
!762 = !DILocation(line: 487, column: 51, scope: !749)
!763 = !DILocation(line: 487, column: 26, scope: !749)
!764 = distinct !{!764, !746, !765, !430, !431}
!765 = !DILocation(line: 488, column: 3, scope: !745)
!766 = !DILocation(line: 489, column: 23, scope: !711)
!767 = !DILocation(line: 489, column: 3, scope: !711)
!768 = !DILocation(line: 490, column: 3, scope: !711)
!769 = !DILocation(line: 491, column: 3, scope: !711)
!770 = !DILocation(line: 491, column: 13, scope: !711)
!771 = !DILocation(line: 492, column: 18, scope: !711)
!772 = !DILocation(line: 493, column: 3, scope: !711)
!773 = !DILocation(line: 494, column: 1, scope: !711)
!774 = !DISubprogram(name: "LogMagickEvent", scope: !99, file: !99, line: 83, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!775 = !DISubroutineType(types: !776)
!776 = !{!269, !777, !331, !331, !443, !331, null}
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !99, line: 58, baseType: !98)
!779 = !DISubprogram(name: "AcquireQuantumMemory", scope: !780, file: !780, line: 42, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!780 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!781 = !DISubroutineType(types: !782)
!782 = !{!231, !443, !443}
!783 = !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !229, file: !229, line: 58, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!784 = !DISubroutineType(types: !785)
!785 = !{!255, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!788 = !DISubprogram(name: "qsort", scope: !789, file: !789, line: 830, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!789 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!790 = !DISubroutineType(types: !791)
!791 = !{null, !231, !255, !255, !792}
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !789, line: 808, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!137, !706, !706}
!796 = distinct !DISubprogram(name: "MimeInfoCompare", scope: !237, file: !237, line: 433, type: !794, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!797 = !{!798, !799, !800, !801}
!798 = !DILocalVariable(name: "x", arg: 1, scope: !796, file: !237, line: 433, type: !706)
!799 = !DILocalVariable(name: "y", arg: 2, scope: !796, file: !237, line: 433, type: !706)
!800 = !DILocalVariable(name: "p", scope: !796, file: !237, line: 436, type: !273)
!801 = !DILocalVariable(name: "q", scope: !796, file: !237, line: 437, type: !273)
!802 = !DILocation(line: 0, scope: !796)
!803 = !DILocation(line: 441, column: 19, scope: !804)
!804 = distinct !DILexicalBlock(scope: !796, file: !237, line: 441, column: 7)
!805 = !DILocation(line: 441, column: 24, scope: !804)
!806 = !{!505, !389, i64 0}
!807 = !DILocation(line: 441, column: 30, scope: !804)
!808 = !DILocation(line: 441, column: 35, scope: !804)
!809 = !DILocation(line: 441, column: 7, scope: !804)
!810 = !DILocation(line: 441, column: 41, scope: !804)
!811 = !DILocation(line: 441, column: 7, scope: !796)
!812 = !DILocation(line: 442, column: 29, scope: !804)
!813 = !DILocation(line: 442, column: 40, scope: !804)
!814 = !DILocation(line: 442, column: 12, scope: !804)
!815 = !DILocation(line: 442, column: 5, scope: !804)
!816 = !DILocation(line: 444, column: 1, scope: !796)
!817 = distinct !DISubprogram(name: "GetMimeList", scope: !237, file: !237, line: 545, type: !818, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!275, !331, !714, !369}
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DILocalVariable(name: "pattern", arg: 1, scope: !817, file: !237, line: 545, type: !331)
!822 = !DILocalVariable(name: "number_aliases", arg: 2, scope: !817, file: !237, line: 546, type: !714)
!823 = !DILocalVariable(name: "exception", arg: 3, scope: !817, file: !237, line: 546, type: !369)
!824 = !DILocalVariable(name: "aliases", scope: !817, file: !237, line: 549, type: !275)
!825 = !DILocalVariable(name: "p", scope: !817, file: !237, line: 552, type: !232)
!826 = !DILocalVariable(name: "i", scope: !817, file: !237, line: 555, type: !246)
!827 = !DILocation(line: 0, scope: !817)
!828 = !DILocation(line: 561, column: 10, scope: !817)
!829 = !DILocation(line: 563, column: 18, scope: !817)
!830 = !DILocation(line: 564, column: 5, scope: !817)
!831 = !DILocation(line: 565, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !817, file: !237, line: 565, column: 7)
!833 = !DILocation(line: 565, column: 7, scope: !817)
!834 = !DILocation(line: 568, column: 37, scope: !817)
!835 = !DILocation(line: 568, column: 5, scope: !817)
!836 = !DILocation(line: 568, column: 48, scope: !817)
!837 = !DILocation(line: 567, column: 21, scope: !817)
!838 = !DILocation(line: 569, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !817, file: !237, line: 569, column: 7)
!840 = !DILocation(line: 569, column: 7, scope: !817)
!841 = !DILocation(line: 571, column: 21, scope: !817)
!842 = !DILocation(line: 571, column: 3, scope: !817)
!843 = !DILocation(line: 572, column: 27, scope: !817)
!844 = !DILocation(line: 572, column: 3, scope: !817)
!845 = !DILocation(line: 573, column: 49, scope: !817)
!846 = !DILocation(line: 573, column: 24, scope: !817)
!847 = !DILocation(line: 574, column: 15, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !237, line: 574, column: 3)
!849 = distinct !DILexicalBlock(scope: !817, file: !237, line: 574, column: 3)
!850 = !DILocation(line: 574, column: 3, scope: !849)
!851 = !DILocation(line: 576, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !237, line: 576, column: 9)
!853 = distinct !DILexicalBlock(scope: !848, file: !237, line: 575, column: 3)
!854 = !DILocation(line: 576, column: 21, scope: !852)
!855 = !DILocation(line: 576, column: 37, scope: !852)
!856 = !DILocation(line: 577, column: 28, scope: !852)
!857 = !DILocation(line: 577, column: 10, scope: !852)
!858 = !DILocation(line: 577, column: 54, scope: !852)
!859 = !DILocation(line: 576, column: 9, scope: !853)
!860 = !DILocation(line: 578, column: 38, scope: !852)
!861 = !DILocation(line: 578, column: 20, scope: !852)
!862 = !DILocation(line: 578, column: 16, scope: !852)
!863 = !DILocation(line: 578, column: 7, scope: !852)
!864 = !DILocation(line: 578, column: 19, scope: !852)
!865 = !DILocation(line: 0, scope: !849)
!866 = !DILocation(line: 579, column: 51, scope: !853)
!867 = !DILocation(line: 579, column: 26, scope: !853)
!868 = distinct !{!868, !850, !869, !430, !431}
!869 = !DILocation(line: 580, column: 3, scope: !849)
!870 = !DILocation(line: 581, column: 23, scope: !817)
!871 = !DILocation(line: 581, column: 3, scope: !817)
!872 = !DILocation(line: 582, column: 3, scope: !817)
!873 = !DILocation(line: 583, column: 3, scope: !817)
!874 = !DILocation(line: 583, column: 13, scope: !817)
!875 = !DILocation(line: 584, column: 18, scope: !817)
!876 = !DILocation(line: 585, column: 3, scope: !817)
!877 = !DILocation(line: 586, column: 1, scope: !817)
!878 = !DISubprogram(name: "ConstantString", scope: !340, file: !340, line: 45, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!879 = !DISubroutineType(types: !880)
!880 = !{!240, !331}
!881 = distinct !DISubprogram(name: "MimeCompare", scope: !237, file: !237, line: 530, type: !794, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DILocalVariable(name: "x", arg: 1, scope: !881, file: !237, line: 530, type: !706)
!884 = !DILocalVariable(name: "y", arg: 2, scope: !881, file: !237, line: 530, type: !706)
!885 = !DILocalVariable(name: "p", scope: !881, file: !237, line: 533, type: !240)
!886 = !DILocalVariable(name: "q", scope: !881, file: !237, line: 534, type: !240)
!887 = !DILocation(line: 0, scope: !881)
!888 = !DILocation(line: 538, column: 10, scope: !881)
!889 = !DILocation(line: 538, column: 3, scope: !881)
!890 = distinct !DISubprogram(name: "GetMimeDescription", scope: !237, file: !237, line: 610, type: !891, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!331, !232}
!893 = !{!894}
!894 = !DILocalVariable(name: "mime_info", arg: 1, scope: !890, file: !237, line: 610, type: !232)
!895 = !DILocation(line: 0, scope: !890)
!896 = !DILocation(line: 612, column: 10, scope: !890)
!897 = !DILocation(line: 615, column: 21, scope: !890)
!898 = !{!505, !389, i64 16}
!899 = !DILocation(line: 615, column: 3, scope: !890)
!900 = distinct !DISubprogram(name: "GetMimeType", scope: !237, file: !237, line: 640, type: !891, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "mime_info", arg: 1, scope: !900, file: !237, line: 640, type: !232)
!903 = !DILocation(line: 0, scope: !900)
!904 = !DILocation(line: 642, column: 10, scope: !900)
!905 = !DILocation(line: 645, column: 21, scope: !900)
!906 = !DILocation(line: 645, column: 3, scope: !900)
!907 = distinct !DISubprogram(name: "ListMimeInfo", scope: !237, file: !237, line: 709, type: !908, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!908 = !DISubroutineType(types: !909)
!909 = !{!269, !910, !369}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!911 = !{!912, !913, !914, !915, !916, !917, !918}
!912 = !DILocalVariable(name: "file", arg: 1, scope: !907, file: !237, line: 709, type: !910)
!913 = !DILocalVariable(name: "exception", arg: 2, scope: !907, file: !237, line: 709, type: !369)
!914 = !DILocalVariable(name: "path", scope: !907, file: !237, line: 712, type: !331)
!915 = !DILocalVariable(name: "mime_info", scope: !907, file: !237, line: 715, type: !273)
!916 = !DILocalVariable(name: "i", scope: !907, file: !237, line: 718, type: !246)
!917 = !DILocalVariable(name: "number_aliases", scope: !907, file: !237, line: 721, type: !255)
!918 = !DILocalVariable(name: "j", scope: !907, file: !237, line: 724, type: !246)
!919 = !DILocation(line: 0, scope: !907)
!920 = !DILocation(line: 720, column: 3, scope: !907)
!921 = !DILocation(line: 726, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !907, file: !237, line: 726, column: 7)
!923 = !DILocation(line: 726, column: 7, scope: !907)
!924 = !DILocation(line: 728, column: 13, scope: !907)
!925 = !DILocation(line: 729, column: 17, scope: !926)
!926 = distinct !DILexicalBlock(scope: !907, file: !237, line: 729, column: 7)
!927 = !DILocation(line: 729, column: 7, scope: !907)
!928 = !DILocation(line: 733, column: 15, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !237, line: 733, column: 3)
!930 = distinct !DILexicalBlock(scope: !907, file: !237, line: 733, column: 3)
!931 = !DILocation(line: 733, column: 3, scope: !930)
!932 = !DILocation(line: 735, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !237, line: 735, column: 9)
!934 = distinct !DILexicalBlock(scope: !929, file: !237, line: 734, column: 3)
!935 = !DILocation(line: 735, column: 23, scope: !933)
!936 = !DILocation(line: 735, column: 31, scope: !933)
!937 = !DILocation(line: 735, column: 9, scope: !934)
!938 = !DILocation(line: 737, column: 15, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !237, line: 737, column: 9)
!940 = !DILocation(line: 0, scope: !939)
!941 = !DILocation(line: 737, column: 39, scope: !939)
!942 = !DILocation(line: 738, column: 10, scope: !939)
!943 = !DILocation(line: 738, column: 46, scope: !939)
!944 = !DILocation(line: 737, column: 9, scope: !934)
!945 = !DILocation(line: 740, column: 32, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !237, line: 740, column: 13)
!947 = distinct !DILexicalBlock(scope: !939, file: !237, line: 739, column: 7)
!948 = !DILocation(line: 740, column: 13, scope: !947)
!949 = !DILocation(line: 741, column: 18, scope: !946)
!950 = !DILocation(line: 741, column: 11, scope: !946)
!951 = !DILocation(line: 742, column: 16, scope: !947)
!952 = !DILocation(line: 743, column: 16, scope: !947)
!953 = !DILocation(line: 747, column: 10, scope: !934)
!954 = !DILocation(line: 747, column: 24, scope: !934)
!955 = !DILocation(line: 746, column: 7, scope: !947)
!956 = !DILocation(line: 748, column: 53, scope: !934)
!957 = !DILocation(line: 748, column: 12, scope: !934)
!958 = !DILocation(line: 749, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !934, file: !237, line: 749, column: 9)
!960 = !DILocation(line: 749, column: 30, scope: !959)
!961 = !DILocation(line: 749, column: 9, scope: !959)
!962 = !DILocation(line: 749, column: 36, scope: !959)
!963 = !DILocation(line: 749, column: 9, scope: !934)
!964 = !DILocation(line: 752, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !237, line: 751, column: 9)
!966 = distinct !DILexicalBlock(scope: !967, file: !237, line: 751, column: 9)
!967 = distinct !DILexicalBlock(scope: !959, file: !237, line: 750, column: 7)
!968 = !DILocation(line: 751, column: 64, scope: !965)
!969 = !DILocation(line: 751, column: 56, scope: !965)
!970 = !DILocation(line: 751, column: 9, scope: !966)
!971 = distinct !{!971, !970, !972, !430, !431}
!972 = !DILocation(line: 752, column: 43, scope: !966)
!973 = !DILocation(line: 756, column: 16, scope: !974)
!974 = distinct !DILexicalBlock(scope: !959, file: !237, line: 755, column: 7)
!975 = !DILocation(line: 757, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !237, line: 757, column: 9)
!977 = !DILocation(line: 758, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !976, file: !237, line: 757, column: 9)
!979 = !DILocation(line: 757, column: 29, scope: !978)
!980 = !DILocation(line: 757, column: 21, scope: !978)
!981 = distinct !{!981, !975, !982, !430, !431}
!982 = !DILocation(line: 758, column: 43, scope: !976)
!983 = !DILocation(line: 760, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !934, file: !237, line: 760, column: 9)
!985 = !DILocation(line: 760, column: 23, scope: !984)
!986 = !DILocation(line: 760, column: 35, scope: !984)
!987 = !DILocation(line: 760, column: 9, scope: !934)
!988 = !DILocation(line: 761, column: 14, scope: !984)
!989 = !DILocation(line: 761, column: 7, scope: !984)
!990 = !DILocation(line: 762, column: 12, scope: !934)
!991 = !DILocation(line: 763, column: 3, scope: !934)
!992 = !DILocation(line: 733, column: 44, scope: !929)
!993 = distinct !{!993, !931, !994, !430, !431}
!994 = !DILocation(line: 763, column: 3, scope: !930)
!995 = !DILocation(line: 764, column: 10, scope: !907)
!996 = !DILocation(line: 765, column: 33, scope: !907)
!997 = !DILocation(line: 766, column: 3, scope: !907)
!998 = !DILocation(line: 767, column: 1, scope: !907)
!999 = !DISubprogram(name: "FormatLocaleFile", scope: !1000, file: !1000, line: 67, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1000 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!246, !910, !1003, null}
!1003 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!1004 = !DISubprogram(name: "fflush", scope: !247, file: !247, line: 218, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!137, !910}
!1007 = !DISubprogram(name: "RelinquishMagickMemory", scope: !780, file: !780, line: 51, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!231, !231}
!1010 = distinct !DISubprogram(name: "MagickToMime", scope: !237, file: !237, line: 1009, type: !879, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DILocalVariable(name: "magick", arg: 1, scope: !1010, file: !237, line: 1009, type: !331)
!1013 = !DILocalVariable(name: "filename", scope: !1010, file: !237, line: 1012, type: !344)
!1014 = !DILocalVariable(name: "media", scope: !1010, file: !237, line: 1013, type: !344)
!1015 = !DILocalVariable(name: "mime_info", scope: !1010, file: !237, line: 1016, type: !232)
!1016 = !DILocalVariable(name: "exception", scope: !1010, file: !237, line: 1019, type: !369)
!1017 = !DILocation(line: 0, scope: !1010)
!1018 = !DILocation(line: 1011, column: 3, scope: !1010)
!1019 = !DILocation(line: 1012, column: 5, scope: !1010)
!1020 = !DILocation(line: 1013, column: 5, scope: !1010)
!1021 = !DILocation(line: 1021, column: 10, scope: !1010)
!1022 = !DILocation(line: 1022, column: 3, scope: !1010)
!1023 = !DILocation(line: 1023, column: 13, scope: !1010)
!1024 = !DILocation(line: 1024, column: 13, scope: !1010)
!1025 = !DILocation(line: 1025, column: 13, scope: !1010)
!1026 = !DILocation(line: 1026, column: 17, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1010, file: !237, line: 1026, column: 7)
!1028 = !DILocation(line: 1026, column: 7, scope: !1010)
!1029 = !DILocation(line: 0, scope: !900, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 1027, column: 27, scope: !1027)
!1031 = !DILocation(line: 642, column: 10, scope: !900, inlinedAt: !1030)
!1032 = !DILocation(line: 645, column: 21, scope: !900, inlinedAt: !1030)
!1033 = !DILocation(line: 1027, column: 12, scope: !1027)
!1034 = !DILocation(line: 1027, column: 5, scope: !1027)
!1035 = !DILocation(line: 1028, column: 10, scope: !1010)
!1036 = !DILocation(line: 1029, column: 20, scope: !1010)
!1037 = !DILocation(line: 1029, column: 3, scope: !1010)
!1038 = !DILocation(line: 1030, column: 10, scope: !1010)
!1039 = !DILocation(line: 1030, column: 3, scope: !1010)
!1040 = !DILocation(line: 1031, column: 1, scope: !1010)
!1041 = !DISubprogram(name: "FormatLocaleString", scope: !1000, file: !1000, line: 71, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!246, !1044, !443, !1003, null}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!1045 = !DISubprogram(name: "LocaleLower", scope: !340, file: !340, line: 102, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !240}
!1048 = !DISubprogram(name: "AcquireExceptionInfo", scope: !12, file: !12, line: 146, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!369}
!1051 = !DISubprogram(name: "DestroyExceptionInfo", scope: !12, file: !12, line: 148, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!369, !369}
!1054 = distinct !DISubprogram(name: "MimeComponentGenesis", scope: !237, file: !237, line: 1051, type: !1055, scopeLine: 1052, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!269}
!1057 = !DILocation(line: 1053, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !237, line: 1053, column: 7)
!1059 = !DILocation(line: 1053, column: 22, scope: !1058)
!1060 = !DILocation(line: 1053, column: 7, scope: !1054)
!1061 = !DILocation(line: 1054, column: 20, scope: !1058)
!1062 = !DILocation(line: 1054, column: 19, scope: !1058)
!1063 = !DILocation(line: 1054, column: 5, scope: !1058)
!1064 = !DILocation(line: 1055, column: 3, scope: !1054)
!1065 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !335, file: !335, line: 32, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!333}
!1068 = distinct !DISubprogram(name: "MimeComponentTerminus", scope: !237, file: !237, line: 1097, type: !1069, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null}
!1071 = !DILocation(line: 1099, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !237, line: 1099, column: 7)
!1073 = !DILocation(line: 1099, column: 22, scope: !1072)
!1074 = !DILocation(line: 1099, column: 7, scope: !1068)
!1075 = !DILocation(line: 1100, column: 5, scope: !1072)
!1076 = !DILocation(line: 1101, column: 21, scope: !1068)
!1077 = !DILocation(line: 1101, column: 3, scope: !1068)
!1078 = !DILocation(line: 1102, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1068, file: !237, line: 1102, column: 7)
!1080 = !DILocation(line: 1102, column: 18, scope: !1079)
!1081 = !DILocation(line: 1102, column: 7, scope: !1068)
!1082 = !DILocation(line: 1103, column: 16, scope: !1079)
!1083 = !DILocation(line: 1103, column: 15, scope: !1079)
!1084 = !DILocation(line: 1103, column: 5, scope: !1079)
!1085 = !DILocation(line: 1104, column: 23, scope: !1068)
!1086 = !DILocation(line: 1104, column: 3, scope: !1068)
!1087 = !DILocation(line: 1105, column: 3, scope: !1068)
!1088 = !DILocation(line: 1106, column: 1, scope: !1068)
!1089 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !335, file: !335, line: 35, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1093 = !DISubprogram(name: "DestroyLinkedList", scope: !229, file: !229, line: 42, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!227, !227, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1097 = distinct !DISubprogram(name: "DestroyMimeElement", scope: !237, file: !237, line: 1077, type: !1008, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1098 = !{!1099, !1100}
!1099 = !DILocalVariable(name: "mime_info", arg: 1, scope: !1097, file: !237, line: 1077, type: !231)
!1100 = !DILocalVariable(name: "p", scope: !1097, file: !237, line: 1080, type: !274)
!1101 = !DILocation(line: 0, scope: !1097)
!1102 = !DILocation(line: 1083, column: 10, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !237, line: 1083, column: 7)
!1104 = !DILocation(line: 1083, column: 16, scope: !1103)
!1105 = !DILocation(line: 1083, column: 7, scope: !1097)
!1106 = !DILocation(line: 1084, column: 32, scope: !1103)
!1107 = !DILocation(line: 1084, column: 13, scope: !1103)
!1108 = !DILocation(line: 1084, column: 5, scope: !1103)
!1109 = !DILocation(line: 1085, column: 10, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1097, file: !237, line: 1085, column: 7)
!1111 = !DILocation(line: 1085, column: 18, scope: !1110)
!1112 = !DILocation(line: 1085, column: 7, scope: !1097)
!1113 = !DILocation(line: 1086, column: 16, scope: !1110)
!1114 = !DILocation(line: 1086, column: 15, scope: !1110)
!1115 = !DILocation(line: 1086, column: 5, scope: !1110)
!1116 = !DILocation(line: 1087, column: 10, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1097, file: !237, line: 1087, column: 7)
!1118 = !DILocation(line: 1087, column: 22, scope: !1117)
!1119 = !DILocation(line: 1087, column: 7, scope: !1097)
!1120 = !DILocation(line: 1088, column: 20, scope: !1117)
!1121 = !DILocation(line: 1088, column: 19, scope: !1117)
!1122 = !DILocation(line: 1088, column: 5, scope: !1117)
!1123 = !DILocation(line: 1089, column: 10, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1097, file: !237, line: 1089, column: 7)
!1125 = !DILocation(line: 1089, column: 15, scope: !1124)
!1126 = !DILocation(line: 1089, column: 7, scope: !1097)
!1127 = !DILocation(line: 1090, column: 13, scope: !1124)
!1128 = !DILocation(line: 1090, column: 12, scope: !1124)
!1129 = !DILocation(line: 1090, column: 5, scope: !1124)
!1130 = !DILocation(line: 1091, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1097, file: !237, line: 1091, column: 7)
!1132 = !DILocation(line: 1091, column: 15, scope: !1131)
!1133 = !DILocation(line: 1091, column: 7, scope: !1097)
!1134 = !DILocation(line: 1092, column: 13, scope: !1131)
!1135 = !DILocation(line: 1092, column: 12, scope: !1131)
!1136 = !DILocation(line: 1092, column: 5, scope: !1131)
!1137 = !DILocation(line: 1093, column: 18, scope: !1097)
!1138 = !DILocation(line: 1094, column: 3, scope: !1097)
!1139 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !335, file: !335, line: 36, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1140 = !DISubprogram(name: "NewLinkedList", scope: !229, file: !229, line: 43, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!227, !443}
!1143 = !DISubprogram(name: "GetExceptionInfo", scope: !12, file: !12, line: 166, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !369}
!1146 = !DISubprogram(name: "GetExceptionMessage", scope: !12, file: !12, line: 137, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!240, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1150 = !DISubprogram(name: "ThrowMagickException", scope: !12, file: !12, line: 156, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!269, !369, !331, !331, !443, !1153, !331, !331, null}
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!1154 = !DISubprogram(name: "DestroyString", scope: !340, file: !340, line: 46, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!240, !240}
!1157 = !DISubprogram(name: "CatchException", scope: !12, file: !12, line: 164, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1158 = !DISubprogram(name: "MagickCoreTerminus", scope: !1159, file: !1159, line: 147, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1159 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1160 = !DISubprogram(name: "GetConfigureOptions", scope: !1161, file: !1161, line: 60, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1161 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!1162 = distinct !DISubprogram(name: "LoadMimeCache", scope: !237, file: !237, line: 800, type: !1163, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!269, !227, !331, !331, !443, !369}
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1183, !1184, !1186, !1189, !1190, !1193, !1194, !1195, !1203}
!1166 = !DILocalVariable(name: "mime_cache", arg: 1, scope: !1162, file: !237, line: 800, type: !227)
!1167 = !DILocalVariable(name: "xml", arg: 2, scope: !1162, file: !237, line: 801, type: !331)
!1168 = !DILocalVariable(name: "filename", arg: 3, scope: !1162, file: !237, line: 801, type: !331)
!1169 = !DILocalVariable(name: "depth", arg: 4, scope: !1162, file: !237, line: 801, type: !443)
!1170 = !DILocalVariable(name: "exception", arg: 5, scope: !1162, file: !237, line: 802, type: !369)
!1171 = !DILocalVariable(name: "attribute", scope: !1162, file: !237, line: 805, type: !331)
!1172 = !DILocalVariable(name: "mime_info", scope: !1162, file: !237, line: 808, type: !274)
!1173 = !DILocalVariable(name: "status", scope: !1162, file: !237, line: 811, type: !269)
!1174 = !DILocalVariable(name: "mime", scope: !1162, file: !237, line: 814, type: !350)
!1175 = !DILocalVariable(name: "mime_map", scope: !1162, file: !237, line: 815, type: !350)
!1176 = !DILocalVariable(name: "include", scope: !1162, file: !237, line: 816, type: !350)
!1177 = !DILocalVariable(name: "path", scope: !1178, file: !237, line: 844, type: !344)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !237, line: 842, column: 11)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !237, line: 838, column: 13)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !237, line: 837, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !237, line: 836, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1162, file: !237, line: 831, column: 3)
!1183 = !DILocalVariable(name: "xml", scope: !1178, file: !237, line: 845, type: !240)
!1184 = !DILocalVariable(name: "attribute", scope: !1185, file: !237, line: 869, type: !331)
!1185 = distinct !DILexicalBlock(scope: !1162, file: !237, line: 867, column: 3)
!1186 = !DILocalVariable(name: "message", scope: !1187, file: !237, line: 876, type: !240)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !237, line: 876, column: 7)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 875, column: 9)
!1189 = !DILocalVariable(name: "exception", scope: !1187, file: !237, line: 876, type: !370)
!1190 = !DILocalVariable(name: "token", scope: !1191, file: !237, line: 895, type: !240)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !237, line: 893, column: 7)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 892, column: 9)
!1193 = !DILocalVariable(name: "p", scope: !1191, file: !237, line: 898, type: !331)
!1194 = !DILocalVariable(name: "q", scope: !1191, file: !237, line: 901, type: !266)
!1195 = !DILocalVariable(name: "end", scope: !1196, file: !237, line: 917, type: !240)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !237, line: 915, column: 17)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !237, line: 914, column: 19)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !237, line: 912, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !237, line: 911, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !237, line: 910, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !237, line: 909, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1191, file: !237, line: 909, column: 9)
!1203 = !DILocalVariable(name: "c", scope: !1204, file: !237, line: 956, type: !240)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !237, line: 954, column: 7)
!1205 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 953, column: 9)
!1206 = !DILocation(line: 0, scope: !1162)
!1207 = !DILocation(line: 821, column: 10, scope: !1162)
!1208 = !DILocation(line: 823, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1162, file: !237, line: 823, column: 7)
!1210 = !DILocation(line: 823, column: 7, scope: !1162)
!1211 = !DILocation(line: 825, column: 12, scope: !1162)
!1212 = !DILocation(line: 826, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1162, file: !237, line: 826, column: 7)
!1214 = !DILocation(line: 826, column: 7, scope: !1162)
!1215 = !DILocation(line: 829, column: 11, scope: !1162)
!1216 = !DILocation(line: 830, column: 18, scope: !1162)
!1217 = !DILocation(line: 830, column: 3, scope: !1162)
!1218 = !DILocation(line: 838, column: 13, scope: !1180)
!1219 = !DILocation(line: 835, column: 15, scope: !1182)
!1220 = !DILocation(line: 836, column: 19, scope: !1181)
!1221 = !DILocation(line: 836, column: 9, scope: !1182)
!1222 = !DILocation(line: 839, column: 18, scope: !1179)
!1223 = !DILocation(line: 839, column: 11, scope: !1179)
!1224 = !DILocation(line: 863, column: 13, scope: !1182)
!1225 = distinct !{!1225, !1217, !1226, !430, !431}
!1226 = !DILocation(line: 864, column: 3, scope: !1162)
!1227 = !DILocation(line: 843, column: 13, scope: !1178)
!1228 = !DILocation(line: 844, column: 15, scope: !1178)
!1229 = !DILocation(line: 847, column: 13, scope: !1178)
!1230 = !DILocation(line: 848, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1178, file: !237, line: 848, column: 17)
!1232 = !DILocation(line: 848, column: 23, scope: !1231)
!1233 = !DILocation(line: 848, column: 17, scope: !1178)
!1234 = !DILocation(line: 849, column: 22, scope: !1231)
!1235 = !DILocation(line: 849, column: 15, scope: !1231)
!1236 = !DILocation(line: 851, column: 17, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1178, file: !237, line: 851, column: 17)
!1238 = !DILocation(line: 851, column: 28, scope: !1237)
!1239 = !DILocation(line: 851, column: 17, scope: !1178)
!1240 = !DILocation(line: 852, column: 22, scope: !1237)
!1241 = !DILocation(line: 852, column: 15, scope: !1237)
!1242 = !DILocation(line: 854, column: 22, scope: !1237)
!1243 = !DILocation(line: 855, column: 17, scope: !1178)
!1244 = !DILocation(line: 0, scope: !1178)
!1245 = !DILocation(line: 856, column: 21, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1178, file: !237, line: 856, column: 17)
!1247 = !DILocation(line: 856, column: 17, scope: !1178)
!1248 = !DILocation(line: 858, column: 25, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !237, line: 857, column: 15)
!1250 = !DILocation(line: 858, column: 23, scope: !1249)
!1251 = !DILocation(line: 859, column: 21, scope: !1249)
!1252 = !DILocation(line: 860, column: 15, scope: !1249)
!1253 = !DILocation(line: 861, column: 11, scope: !1179)
!1254 = !DILocation(line: 828, column: 9, scope: !1162)
!1255 = !DILocation(line: 865, column: 8, scope: !1162)
!1256 = !DILocation(line: 866, column: 15, scope: !1162)
!1257 = !DILocation(line: 866, column: 3, scope: !1162)
!1258 = !DILocation(line: 874, column: 28, scope: !1185)
!1259 = !DILocation(line: 875, column: 19, scope: !1188)
!1260 = !DILocation(line: 875, column: 9, scope: !1185)
!1261 = !DILocation(line: 876, column: 7, scope: !1187)
!1262 = !DILocation(line: 0, scope: !1187)
!1263 = !DILocation(line: 877, column: 12, scope: !1185)
!1264 = !DILocation(line: 878, column: 21, scope: !1185)
!1265 = !DILocation(line: 878, column: 20, scope: !1185)
!1266 = !DILocation(line: 879, column: 16, scope: !1185)
!1267 = !DILocation(line: 879, column: 25, scope: !1185)
!1268 = !{!505, !506, i64 112}
!1269 = !DILocation(line: 880, column: 15, scope: !1185)
!1270 = !DILocation(line: 0, scope: !1185)
!1271 = !DILocation(line: 881, column: 19, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 881, column: 9)
!1273 = !DILocation(line: 881, column: 9, scope: !1185)
!1274 = !DILocation(line: 882, column: 39, scope: !1272)
!1275 = !DILocation(line: 882, column: 28, scope: !1272)
!1276 = !DILocation(line: 882, column: 18, scope: !1272)
!1277 = !DILocation(line: 882, column: 27, scope: !1272)
!1278 = !DILocation(line: 882, column: 7, scope: !1272)
!1279 = !DILocation(line: 884, column: 15, scope: !1185)
!1280 = !DILocation(line: 885, column: 19, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 885, column: 9)
!1282 = !DILocation(line: 885, column: 9, scope: !1185)
!1283 = !DILocation(line: 886, column: 30, scope: !1281)
!1284 = !DILocation(line: 886, column: 18, scope: !1281)
!1285 = !DILocation(line: 886, column: 29, scope: !1281)
!1286 = !DILocation(line: 886, column: 7, scope: !1281)
!1287 = !DILocation(line: 887, column: 15, scope: !1185)
!1288 = !DILocation(line: 888, column: 19, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 888, column: 9)
!1290 = !DILocation(line: 888, column: 9, scope: !1185)
!1291 = !DILocation(line: 889, column: 38, scope: !1289)
!1292 = !DILocation(line: 889, column: 25, scope: !1289)
!1293 = !DILocation(line: 889, column: 18, scope: !1289)
!1294 = !DILocation(line: 889, column: 24, scope: !1289)
!1295 = !DILocation(line: 889, column: 7, scope: !1289)
!1296 = !DILocation(line: 891, column: 15, scope: !1185)
!1297 = !DILocation(line: 892, column: 19, scope: !1192)
!1298 = !DILocation(line: 892, column: 9, scope: !1185)
!1299 = !DILocation(line: 894, column: 9, scope: !1191)
!1300 = !DILocation(line: 903, column: 15, scope: !1191)
!1301 = !DILocation(line: 0, scope: !1191)
!1302 = !DILocation(line: 903, column: 14, scope: !1191)
!1303 = !DILocation(line: 904, column: 16, scope: !1191)
!1304 = !DILocation(line: 905, column: 16, scope: !1191)
!1305 = !DILocation(line: 906, column: 16, scope: !1191)
!1306 = !DILocation(line: 907, column: 58, scope: !1191)
!1307 = !DILocation(line: 907, column: 44, scope: !1191)
!1308 = !DILocation(line: 907, column: 20, scope: !1191)
!1309 = !DILocation(line: 907, column: 25, scope: !1191)
!1310 = !DILocation(line: 909, column: 16, scope: !1202)
!1311 = !DILocation(line: 909, column: 14, scope: !1202)
!1312 = !DILocation(line: 0, scope: !1202)
!1313 = !DILocation(line: 909, column: 23, scope: !1201)
!1314 = !DILocation(line: 909, column: 9, scope: !1202)
!1315 = !DILocation(line: 913, column: 16, scope: !1198)
!1316 = !DILocation(line: 914, column: 19, scope: !1197)
!1317 = !{!1318, !1318, i64 0}
!1318 = !{!"short", !390, i64 0}
!1319 = !DILocation(line: 914, column: 55, scope: !1197)
!1320 = !DILocation(line: 914, column: 19, scope: !1198)
!1321 = !DILocation(line: 916, column: 19, scope: !1196)
!1322 = !DILocation(line: 0, scope: !1196)
!1323 = !DILocation(line: 919, column: 40, scope: !1196)
!1324 = !DILocation(line: 919, column: 24, scope: !1196)
!1325 = !DILocation(line: 919, column: 23, scope: !1196)
!1326 = !DILocation(line: 920, column: 23, scope: !1196)
!1327 = !DILocation(line: 920, column: 26, scope: !1196)
!1328 = !DILocation(line: 920, column: 20, scope: !1196)
!1329 = !DILocation(line: 921, column: 36, scope: !1196)
!1330 = !DILocation(line: 923, column: 17, scope: !1197)
!1331 = !DILocation(line: 0, scope: !1200)
!1332 = distinct !{!1332, !1314, !1333, !430, !431}
!1333 = !DILocation(line: 943, column: 9, scope: !1202)
!1334 = !DILocation(line: 924, column: 23, scope: !1198)
!1335 = !DILocation(line: 924, column: 15, scope: !1198)
!1336 = !DILocation(line: 927, column: 36, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1198, file: !237, line: 925, column: 15)
!1338 = !DILocation(line: 928, column: 36, scope: !1337)
!1339 = !DILocation(line: 929, column: 36, scope: !1337)
!1340 = !DILocation(line: 930, column: 36, scope: !1337)
!1341 = !DILocation(line: 931, column: 36, scope: !1337)
!1342 = !DILocation(line: 932, column: 35, scope: !1337)
!1343 = !DILocation(line: 933, column: 36, scope: !1337)
!1344 = !DILocation(line: 934, column: 51, scope: !1337)
!1345 = !DILocation(line: 0, scope: !1337)
!1346 = !DILocation(line: 936, column: 16, scope: !1198)
!1347 = !DILocation(line: 938, column: 32, scope: !1198)
!1348 = !DILocation(line: 939, column: 15, scope: !1198)
!1349 = !DILocation(line: 941, column: 35, scope: !1200)
!1350 = !DILocation(line: 941, column: 15, scope: !1200)
!1351 = !DILocation(line: 942, column: 28, scope: !1200)
!1352 = !DILocation(line: 909, column: 9, scope: !1201)
!1353 = !DILocation(line: 944, column: 29, scope: !1191)
!1354 = !DILocation(line: 944, column: 15, scope: !1191)
!1355 = !DILocation(line: 944, column: 14, scope: !1191)
!1356 = !DILocation(line: 945, column: 24, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1191, file: !237, line: 945, column: 13)
!1358 = !DILocation(line: 945, column: 34, scope: !1357)
!1359 = !DILocation(line: 945, column: 13, scope: !1191)
!1360 = !DILocation(line: 946, column: 66, scope: !1357)
!1361 = !DILocation(line: 946, column: 38, scope: !1357)
!1362 = !DILocation(line: 946, column: 22, scope: !1357)
!1363 = !DILocation(line: 946, column: 27, scope: !1357)
!1364 = !DILocation(line: 946, column: 11, scope: !1357)
!1365 = !DILocation(line: 948, column: 7, scope: !1192)
!1366 = !DILocation(line: 948, column: 7, scope: !1191)
!1367 = !DILocation(line: 949, column: 15, scope: !1185)
!1368 = !DILocation(line: 950, column: 19, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 950, column: 9)
!1370 = !DILocation(line: 950, column: 9, scope: !1185)
!1371 = !DILocation(line: 951, column: 33, scope: !1369)
!1372 = !DILocation(line: 951, column: 18, scope: !1369)
!1373 = !DILocation(line: 951, column: 22, scope: !1369)
!1374 = !DILocation(line: 951, column: 7, scope: !1369)
!1375 = !DILocation(line: 952, column: 15, scope: !1185)
!1376 = !DILocation(line: 953, column: 19, scope: !1205)
!1377 = !DILocation(line: 953, column: 9, scope: !1185)
!1378 = !DILocation(line: 955, column: 9, scope: !1204)
!1379 = !DILocation(line: 0, scope: !1204)
!1380 = !DILocation(line: 958, column: 46, scope: !1204)
!1381 = !DILocation(line: 958, column: 20, scope: !1204)
!1382 = !DILocation(line: 958, column: 26, scope: !1204)
!1383 = !DILocation(line: 959, column: 14, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1204, file: !237, line: 959, column: 13)
!1385 = !DILocation(line: 959, column: 13, scope: !1384)
!1386 = !DILocation(line: 959, column: 16, scope: !1384)
!1387 = !DILocation(line: 959, column: 13, scope: !1204)
!1388 = !DILocation(line: 960, column: 46, scope: !1384)
!1389 = !DILocation(line: 960, column: 38, scope: !1384)
!1390 = !DILocation(line: 960, column: 22, scope: !1384)
!1391 = !DILocation(line: 960, column: 28, scope: !1384)
!1392 = !DILocation(line: 960, column: 11, scope: !1384)
!1393 = !DILocation(line: 961, column: 7, scope: !1205)
!1394 = !DILocation(line: 961, column: 7, scope: !1204)
!1395 = !DILocation(line: 962, column: 15, scope: !1185)
!1396 = !DILocation(line: 963, column: 19, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 963, column: 9)
!1398 = !DILocation(line: 963, column: 9, scope: !1185)
!1399 = !DILocation(line: 964, column: 26, scope: !1397)
!1400 = !DILocation(line: 964, column: 18, scope: !1397)
!1401 = !DILocation(line: 964, column: 25, scope: !1397)
!1402 = !DILocation(line: 964, column: 7, scope: !1397)
!1403 = !DILocation(line: 965, column: 15, scope: !1185)
!1404 = !DILocation(line: 966, column: 19, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 966, column: 9)
!1406 = !DILocation(line: 966, column: 9, scope: !1185)
!1407 = !DILocation(line: 967, column: 37, scope: !1405)
!1408 = !DILocation(line: 967, column: 18, scope: !1405)
!1409 = !DILocation(line: 967, column: 26, scope: !1405)
!1410 = !DILocation(line: 967, column: 7, scope: !1405)
!1411 = !DILocation(line: 968, column: 15, scope: !1185)
!1412 = !DILocation(line: 969, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 969, column: 9)
!1414 = !DILocation(line: 969, column: 9, scope: !1185)
!1415 = !DILocation(line: 970, column: 26, scope: !1413)
!1416 = !DILocation(line: 970, column: 18, scope: !1413)
!1417 = !DILocation(line: 970, column: 25, scope: !1413)
!1418 = !DILocation(line: 970, column: 7, scope: !1413)
!1419 = !DILocation(line: 971, column: 15, scope: !1185)
!1420 = !DILocation(line: 972, column: 19, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 972, column: 9)
!1422 = !DILocation(line: 972, column: 9, scope: !1185)
!1423 = !DILocation(line: 973, column: 23, scope: !1421)
!1424 = !DILocation(line: 973, column: 18, scope: !1421)
!1425 = !DILocation(line: 973, column: 22, scope: !1421)
!1426 = !DILocation(line: 973, column: 7, scope: !1421)
!1427 = !DILocation(line: 974, column: 12, scope: !1185)
!1428 = !DILocation(line: 975, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1185, file: !237, line: 975, column: 9)
!1430 = !DILocation(line: 975, column: 9, scope: !1185)
!1431 = !DILocation(line: 976, column: 14, scope: !1429)
!1432 = !DILocation(line: 976, column: 7, scope: !1429)
!1433 = !DILocation(line: 978, column: 10, scope: !1185)
!1434 = distinct !{!1434, !1257, !1435, !430, !431}
!1435 = !DILocation(line: 979, column: 3, scope: !1162)
!1436 = !DILocation(line: 980, column: 12, scope: !1162)
!1437 = !DILocation(line: 981, column: 3, scope: !1162)
!1438 = !DILocation(line: 982, column: 1, scope: !1162)
!1439 = !DISubprogram(name: "GetStringInfoDatum", scope: !340, file: !340, line: 97, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!266, !337}
!1442 = !DISubprogram(name: "GetStringInfoPath", scope: !340, file: !340, line: 58, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!331, !337}
!1445 = !DISubprogram(name: "DestroyConfigureOptions", scope: !1161, file: !1161, line: 58, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!227, !227}
!1448 = !DISubprogram(name: "IsLinkedListEmpty", scope: !229, file: !229, line: 53, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!269, !786}
!1451 = !DISubprogram(name: "NewXMLTree", scope: !352, file: !352, line: 54, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!350, !331, !369}
!1454 = !DISubprogram(name: "GetXMLTreeChild", scope: !352, file: !352, line: 49, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!350, !350, !331}
!1457 = !DISubprogram(name: "GetXMLTreeAttribute", scope: !352, file: !352, line: 36, type: !1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!331, !350, !331}
!1460 = !DISubprogram(name: "GetPathComponent", scope: !124, file: !124, line: 68, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !331, !1463, !240}
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !124, line: 36, baseType: !123)
!1464 = !DISubprogram(name: "ConcatenateMagickString", scope: !340, file: !340, line: 76, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!255, !240, !331, !443}
!1467 = !DISubprogram(name: "CopyMagickString", scope: !340, file: !340, line: 78, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1468 = !DISubprogram(name: "FileToXML", scope: !1469, file: !1469, line: 26, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1469 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!240, !331, !443}
!1472 = !DISubprogram(name: "GetNextXMLTreeTag", scope: !352, file: !352, line: 48, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!350, !350}
!1475 = !DISubprogram(name: "AcquireMagickMemory", scope: !780, file: !780, line: 40, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!231, !443}
!1478 = !DISubprogram(name: "ResetMagickMemory", scope: !780, file: !780, line: 52, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!231, !231, !137, !443}
!1481 = !DISubprogram(name: "ParseCommandOption", scope: !136, file: !136, line: 172, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!246, !1484, !702, !331}
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !136, line: 99, baseType: !135)
!1486 = !DISubprogram(name: "AcquireString", scope: !340, file: !340, line: 43, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1487 = !DISubprogram(name: "SubstituteString", scope: !340, file: !340, line: 73, type: !1488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!269, !275, !331, !331}
!1490 = !DISubprogram(name: "IsMagickTrue", scope: !699, file: !699, line: 38, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!269, !331}
!1493 = !DISubprogram(name: "AppendValueToLinkedList", scope: !229, file: !229, line: 46, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!269, !227, !706}
!1496 = !DISubprogram(name: "DestroyXMLTree", scope: !352, file: !352, line: 47, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !690)
