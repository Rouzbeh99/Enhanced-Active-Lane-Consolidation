; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/utility.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/utility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/utility.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"wmz\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"svgz\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s.%s.%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@Base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16, !dbg !0
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CAPTION\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"PANGO\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"FilenameTruncated\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Command line: %s\00", align 1
@GetMagickPageSize.page_size = internal unnamed_addr global i1 false, align 8, !dbg !313
@.str.30 = private unnamed_addr constant [20 x i8] c"MAGICK_SHRED_PASSES\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireUniqueFilename(ptr noundef %path) local_unnamed_addr #0 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata ptr %path, metadata !326, metadata !DIExpression()), !dbg !328
  %call = tail call i32 @AcquireUniqueFileResource(ptr noundef %path) #19, !dbg !329
  call void @llvm.dbg.value(metadata i32 %call, metadata !327, metadata !DIExpression()), !dbg !328
  %cmp = icmp eq i32 %call, -1, !dbg !330
  br i1 %cmp, label %cleanup, label %if.end, !dbg !332

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @close(i32 noundef %call) #19, !dbg !333
  call void @llvm.dbg.value(metadata i32 %call1, metadata !327, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !328
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !328
  ret i32 %retval.0, !dbg !335
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !336 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

declare !dbg !340 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireUniqueSymbolicLink(ptr nocapture noundef readonly %source, ptr noundef %destination) local_unnamed_addr #0 !dbg !344 {
entry:
  %attributes = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %source, metadata !348, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %destination, metadata !349, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes) #19, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !355, metadata !DIExpression()), !dbg !359
  %call = tail call i32 @AcquireUniqueFileResource(ptr noundef %destination) #19, !dbg !360
  call void @llvm.dbg.value(metadata i32 %call, metadata !350, metadata !DIExpression()), !dbg !357
  %cmp = icmp eq i32 %call, -1, !dbg !361
  br i1 %cmp, label %cleanup, label %if.end, !dbg !363

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %source, metadata !364, metadata !DIExpression()) #19, !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !372, metadata !DIExpression()) #19, !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()) #19, !dbg !374
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %source, i32 noundef 0, i32 noundef 0) #19, !dbg !376
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !351, metadata !DIExpression()), !dbg !357
  %cmp2 = icmp eq i32 %call.i, -1, !dbg !377
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !379

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @close(i32 noundef %call) #19, !dbg !380
  %call5 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %destination) #19, !dbg !382
  br label %cleanup, !dbg !383

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 262142, metadata !353, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !384, metadata !DIExpression()) #19, !dbg !390
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !389, metadata !DIExpression()) #19, !dbg !390
  %call.i63 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i, ptr noundef nonnull %attributes) #19, !dbg !393
  %cmp8 = icmp eq i32 %call.i63, 0, !dbg !394
  %st_size = getelementptr inbounds %struct.stat, ptr %attributes, i64 0, i32 8
  %0 = load i64, ptr %st_size, align 8
  %cmp9 = icmp ne i64 %0, 0
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false, !dbg !395
  %1 = call i64 @llvm.umin.i64(i64 %0, i64 262142) #19
  %spec.select = select i1 %or.cond, i64 %1, i64 262142, !dbg !395
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !353, metadata !DIExpression()), !dbg !357
  %call14 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #20, !dbg !396
  call void @llvm.dbg.value(metadata ptr %call14, metadata !356, metadata !DIExpression()), !dbg !357
  %cmp15 = icmp eq ptr %call14, null, !dbg !397
  br i1 %cmp15, label %if.then16, label %for.cond, !dbg !399

if.then16:                                        ; preds = %if.end6
  %call17 = call i32 @close(i32 noundef %call.i) #19, !dbg !400
  %call18 = call i32 @close(i32 noundef %call) #19, !dbg !402
  %call19 = call i32 @RelinquishUniqueFileResource(ptr noundef %destination) #19, !dbg !403
  br label %cleanup, !dbg !404

for.cond:                                         ; preds = %if.end6, %if.end24
  %call21 = call i64 @read(i32 noundef %call.i, ptr noundef nonnull %call14, i64 noundef %spec.select) #19, !dbg !405
  call void @llvm.dbg.value(metadata i64 %call21, metadata !354, metadata !DIExpression()), !dbg !357
  %cmp22 = icmp slt i64 %call21, 1, !dbg !409
  br i1 %cmp22, label %for.end, label %if.end24, !dbg !411

if.end24:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %call21, metadata !352, metadata !DIExpression()), !dbg !357
  %call25 = call i64 @write(i32 noundef %call, ptr noundef nonnull %call14, i64 noundef %call21) #19, !dbg !412
  call void @llvm.dbg.value(metadata i64 %call25, metadata !354, metadata !DIExpression()), !dbg !357
  %cmp26.not = icmp eq i64 %call25, %call21, !dbg !413
  br i1 %cmp26.not, label %for.cond, label %if.then27, !dbg !415, !llvm.loop !416

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 @close(i32 noundef %call) #19, !dbg !420
  %call29 = call i32 @close(i32 noundef %call.i) #19, !dbg !422
  %call30 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call14) #19, !dbg !423
  call void @llvm.dbg.value(metadata ptr %call30, metadata !356, metadata !DIExpression()), !dbg !357
  %call31 = call i32 @RelinquishUniqueFileResource(ptr noundef %destination) #19, !dbg !424
  br label %cleanup, !dbg !425

for.end:                                          ; preds = %for.cond
  %call33 = call i32 @close(i32 noundef %call) #19, !dbg !426
  %call34 = call i32 @close(i32 noundef %call.i) #19, !dbg !427
  %call35 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call14) #19, !dbg !428
  call void @llvm.dbg.value(metadata ptr %call35, metadata !356, metadata !DIExpression()), !dbg !357
  br label %cleanup, !dbg !429

cleanup:                                          ; preds = %entry, %for.end, %if.then27, %if.then16, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then16 ], [ 1, %for.end ], [ 0, %if.then27 ], [ 0, %entry ], !dbg !357
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes) #19, !dbg !430
  ret i32 %retval.0, !dbg !430
}

declare !dbg !431 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !434 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !439 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare !dbg !442 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

declare !dbg !447 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AppendImageFormat(ptr noundef %format, ptr noundef %filename) local_unnamed_addr #0 !dbg !450 {
entry:
  %extension = alloca [4096 x i8], align 16
  %root = alloca [4096 x i8], align 16
  %message = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %format, metadata !454, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata ptr %filename, metadata !455, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %extension) #19, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %extension, metadata !456, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %root) #19, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %root, metadata !460, metadata !DIExpression()), !dbg !467
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, ptr noundef nonnull @.str.2, ptr noundef %filename) #19, !dbg !468
  %0 = load i8, ptr %format, align 1, !dbg !469, !tbaa !471
  %cmp = icmp eq i8 %0, 0, !dbg !474
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !475

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %filename, align 1, !dbg !476, !tbaa !471
  %cmp3 = icmp eq i8 %1, 0, !dbg !477
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !478

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull @.str.3) #19, !dbg !479
  %cmp6 = icmp eq i32 %call5, 0, !dbg !480
  br i1 %cmp6, label %if.then8, label %if.end12, !dbg !481

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #19, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %message, metadata !461, metadata !DIExpression()), !dbg !483
  %call9 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %format, ptr noundef nonnull %filename) #19, !dbg !484
  %call11 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %message, i64 noundef 4096) #19, !dbg !485
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #19, !dbg !486
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @GetPathComponent(ptr noundef nonnull %filename, i32 noundef 6, ptr noundef nonnull %extension), !dbg !487
  %call15 = call i32 @LocaleCompare(ptr noundef nonnull %extension, ptr noundef nonnull @.str.5) #19, !dbg !488
  %cmp16 = icmp eq i32 %call15, 0, !dbg !490
  br i1 %cmp16, label %if.then38, label %lor.lhs.false18, !dbg !491

lor.lhs.false18:                                  ; preds = %if.end12
  %call20 = call i32 @LocaleCompare(ptr noundef nonnull %extension, ptr noundef nonnull @.str.6) #19, !dbg !492
  %cmp21 = icmp eq i32 %call20, 0, !dbg !493
  br i1 %cmp21, label %if.then38, label %lor.lhs.false23, !dbg !494

lor.lhs.false23:                                  ; preds = %lor.lhs.false18
  %call25 = call i32 @LocaleCompare(ptr noundef nonnull %extension, ptr noundef nonnull @.str.7) #19, !dbg !495
  %cmp26 = icmp eq i32 %call25, 0, !dbg !496
  br i1 %cmp26, label %if.then38, label %lor.lhs.false28, !dbg !497

lor.lhs.false28:                                  ; preds = %lor.lhs.false23
  %call30 = call i32 @LocaleCompare(ptr noundef nonnull %extension, ptr noundef nonnull @.str.8) #19, !dbg !498
  %cmp31 = icmp eq i32 %call30, 0, !dbg !499
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33, !dbg !500

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %call35 = call i32 @LocaleCompare(ptr noundef nonnull %extension, ptr noundef nonnull @.str.9) #19, !dbg !501
  %cmp36 = icmp eq i32 %call35, 0, !dbg !502
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !503

if.then38:                                        ; preds = %lor.lhs.false33, %lor.lhs.false28, %lor.lhs.false23, %lor.lhs.false18, %if.end12
  call void @GetPathComponent(ptr noundef nonnull %filename, i32 noundef 2, ptr noundef nonnull %root), !dbg !504
  %call41 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %root, i64 noundef 4096) #19, !dbg !506
  call void @GetPathComponent(ptr noundef nonnull %filename, i32 noundef 2, ptr noundef nonnull %root), !dbg !507
  %call45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %root, ptr noundef nonnull %format, ptr noundef nonnull %extension) #19, !dbg !508
  br label %cleanup, !dbg !509

if.end46:                                         ; preds = %lor.lhs.false33
  call void @GetPathComponent(ptr noundef nonnull %filename, i32 noundef 2, ptr noundef nonnull %root), !dbg !510
  %call49 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %root, ptr noundef nonnull %format) #19, !dbg !511
  br label %cleanup, !dbg !512

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end46, %if.then38, %if.then8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %root) #19, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %extension) #19, !dbg !512
  ret void, !dbg !512
}

declare !dbg !513 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !518 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !522 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !528 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetPathComponent(ptr noundef %path, i32 noundef %type, ptr noundef %component) local_unnamed_addr #0 !dbg !531 {
entry:
  %attributes.i361 = alloca %struct.stat, align 8
  %attributes.i348 = alloca %struct.stat, align 8
  %attributes.i = alloca %struct.stat, align 8
  %magick = alloca [4096 x i8], align 16
  %subimage = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %path, metadata !536, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i32 %type, metadata !537, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata ptr %component, metadata !538, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick) #19, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !539, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %subimage) #19, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %subimage, metadata !541, metadata !DIExpression()), !dbg !546
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1210, ptr noundef nonnull @.str.2, ptr noundef %path) #19, !dbg !547
  %0 = load i8, ptr %path, align 1, !dbg !548, !tbaa !471
  %cmp = icmp eq i8 %0, 0, !dbg !550
  br i1 %cmp, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %entry
  store i8 0, ptr %component, align 1, !dbg !552, !tbaa !471
  br label %cleanup, !dbg !554

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @CopyMagickString(ptr noundef %component, ptr noundef nonnull %path, i64 noundef 4096) #19, !dbg !555
  store i8 0, ptr %magick, align 16, !dbg !556, !tbaa !471
  call void @llvm.dbg.value(metadata ptr %component, metadata !542, metadata !DIExpression()), !dbg !543
  %st_mode.i355 = getelementptr inbounds %struct.stat, ptr %attributes.i348, i64 0, i32 3
  br label %for.cond, !dbg !557

for.cond:                                         ; preds = %for.inc59, %if.end
  %p.0 = phi ptr [ %component, %if.end ], [ %incdec.ptr60, %for.inc59 ], !dbg !559
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !542, metadata !DIExpression()), !dbg !543
  %1 = load i8, ptr %p.0, align 1, !dbg !560, !tbaa !471
  switch i8 %1, label %for.inc59 [
    i8 0, label %for.end61
    i8 37, label %land.lhs.true
    i8 58, label %lor.lhs.false.i
  ], !dbg !562

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !563
  %2 = load i8, ptr %add.ptr, align 1, !dbg !566, !tbaa !471
  %cmp10 = icmp eq i8 %2, 91, !dbg !567
  br i1 %cmp10, label %for.cond13, label %for.inc59, !dbg !568

for.cond13:                                       ; preds = %land.lhs.true, %for.cond13.for.cond13_crit_edge
  %.pr = phi i8 [ %.pre, %for.cond13.for.cond13_crit_edge ], [ 91, %land.lhs.true ], !dbg !569
  %p.0.pn = phi ptr [ %p.1, %for.cond13.for.cond13_crit_edge ], [ %p.0, %land.lhs.true ]
  %p.1 = getelementptr inbounds i8, ptr %p.0.pn, i64 1, !dbg !573
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !542, metadata !DIExpression()), !dbg !543
  switch i8 %.pr, label %for.cond13.for.cond13_crit_edge [
    i8 0, label %for.end61
    i8 93, label %for.inc59
  ], !dbg !574

for.cond13.for.cond13_crit_edge:                  ; preds = %for.cond13
  %p.1.phi.trans.insert = getelementptr inbounds i8, ptr %p.0.pn, i64 2
  %.pre = load i8, ptr %p.1.phi.trans.insert, align 1, !dbg !569, !tbaa !471
  br label %for.cond13, !dbg !574

lor.lhs.false.i:                                  ; preds = %for.cond
  call void @llvm.dbg.value(metadata ptr %path, metadata !575, metadata !DIExpression()) #19, !dbg !582
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %attributes.i, metadata !581, metadata !DIExpression()) #19, !dbg !586
  %3 = load i8, ptr %path, align 1, !dbg !587, !tbaa !471
  %cmp1.i = icmp eq i8 %3, 0, !dbg !589
  br i1 %cmp1.i, label %IsPathDirectory.exit.thread, label %GetPathAttributes.exit.i, !dbg !590

GetPathAttributes.exit.i:                         ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()) #19, !dbg !598
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !596, metadata !DIExpression()) #19, !dbg !598
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !606
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !605, metadata !DIExpression()) #19, !dbg !606
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !612
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !611, metadata !DIExpression()) #19, !dbg !612
  %call.i.i.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes.i) #19, !dbg !614
  %cmp2.i.not.i = icmp eq i32 %call.i.i.i.i, 0, !dbg !615
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !598
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !582
  br i1 %cmp2.i.not.i, label %IsPathDirectory.exit.thread, label %lor.lhs.false.i351, !dbg !616

IsPathDirectory.exit.thread:                      ; preds = %lor.lhs.false.i, %GetPathAttributes.exit.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !617
  br label %for.inc59, !dbg !618

lor.lhs.false.i351:                               ; preds = %GetPathAttributes.exit.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !617
  call void @llvm.dbg.value(metadata ptr %path, metadata !619, metadata !DIExpression()) #19, !dbg !624
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i348) #19, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %attributes.i348, metadata !623, metadata !DIExpression()) #19, !dbg !627
  %4 = load i8, ptr %path, align 1, !dbg !628, !tbaa !471
  %cmp1.i350 = icmp eq i8 %4, 0, !dbg !630
  br i1 %cmp1.i350, label %IsPathAccessible.exit.thread, label %GetPathAttributes.exit.i354, !dbg !631

GetPathAttributes.exit.i354:                      ; preds = %lor.lhs.false.i351
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()) #19, !dbg !632
  call void @llvm.dbg.value(metadata ptr %attributes.i348, metadata !596, metadata !DIExpression()) #19, !dbg !632
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !634
  call void @llvm.dbg.value(metadata ptr %attributes.i348, metadata !605, metadata !DIExpression()) #19, !dbg !634
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !636
  call void @llvm.dbg.value(metadata ptr %attributes.i348, metadata !611, metadata !DIExpression()) #19, !dbg !636
  %call.i.i.i.i352 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes.i348) #19, !dbg !638
  %cmp2.i.not.i353 = icmp eq i32 %call.i.i.i.i352, 0, !dbg !639
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i353, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !632
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i353, metadata !622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !624
  br i1 %cmp2.i.not.i353, label %if.end6.i358, label %IsPathAccessible.exit.thread, !dbg !640

if.end6.i358:                                     ; preds = %GetPathAttributes.exit.i354
  %5 = load i32, ptr %st_mode.i355, align 8, !dbg !641, !tbaa !643
  %and.i356 = and i32 %5, 61440, !dbg !641
  %cmp7.not.i357 = icmp eq i32 %and.i356, 32768, !dbg !641
  br i1 %cmp7.not.i357, label %IsPathAccessible.exit, label %IsPathAccessible.exit.thread, !dbg !648

IsPathAccessible.exit.thread:                     ; preds = %lor.lhs.false.i351, %GetPathAttributes.exit.i354, %if.end6.i358
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i348) #19, !dbg !649
  br label %if.then39, !dbg !650

IsPathAccessible.exit:                            ; preds = %if.end6.i358
  call void @llvm.dbg.value(metadata ptr %path, metadata !651, metadata !DIExpression()) #19, !dbg !657
  call void @llvm.dbg.value(metadata i32 0, metadata !656, metadata !DIExpression()) #19, !dbg !657
  %call.i23.i = call i32 @access(ptr noundef nonnull %path, i32 noundef 0) #19, !dbg !660
  %cmp14.not.i.not = icmp eq i32 %call.i23.i, 0, !dbg !661
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i348) #19, !dbg !649
  br i1 %cmp14.not.i.not, label %for.inc59, label %if.then39, !dbg !650

if.then39:                                        ; preds = %IsPathAccessible.exit, %IsPathAccessible.exit.thread
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0 to i64, !dbg !662
  %sub.ptr.rhs.cast = ptrtoint ptr %component to i64, !dbg !662
  %sub.ptr.sub = sub i64 1, %sub.ptr.rhs.cast, !dbg !662
  %add = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !664
  %call41 = call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef %component, i64 noundef %add) #19, !dbg !665
  %call43 = call i32 @IsMagickConflict(ptr noundef nonnull %magick) #19, !dbg !666
  %cmp44.not = icmp eq i32 %call43, 0, !dbg !668
  br i1 %cmp44.not, label %for.cond48.preheader, label %if.then46, !dbg !669

for.cond48.preheader:                             ; preds = %if.then39
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata ptr %component, metadata !540, metadata !DIExpression()), !dbg !543
  %6 = load i8, ptr %component, align 1, !dbg !670, !tbaa !471
  %cmp50.not405 = icmp eq i8 %6, 0, !dbg !673
  br i1 %cmp50.not405, label %for.end61.thread, label %for.body52, !dbg !674

for.end61.thread:                                 ; preds = %for.cond48.preheader
  store i8 0, ptr %subimage, align 16, !dbg !675, !tbaa !471
  call void @llvm.dbg.value(metadata ptr %component, metadata !542, metadata !DIExpression()), !dbg !543
  br label %if.end142, !dbg !676

if.then46:                                        ; preds = %if.then39
  store i8 0, ptr %magick, align 16, !dbg !677, !tbaa !471
  br label %for.end61, !dbg !678

for.body52:                                       ; preds = %for.cond48.preheader, %for.body52
  %p.3407 = phi ptr [ %incdec.ptr53, %for.body52 ], [ %p.0, %for.cond48.preheader ]
  %q.0406 = phi ptr [ %incdec.ptr55, %for.body52 ], [ %component, %for.cond48.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.3407, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata ptr %q.0406, metadata !540, metadata !DIExpression()), !dbg !543
  %incdec.ptr53 = getelementptr inbounds i8, ptr %p.3407, i64 1, !dbg !679
  call void @llvm.dbg.value(metadata ptr %incdec.ptr53, metadata !542, metadata !DIExpression()), !dbg !543
  %7 = load i8, ptr %incdec.ptr53, align 1, !dbg !680, !tbaa !471
  store i8 %7, ptr %q.0406, align 1, !dbg !681, !tbaa !471
  %incdec.ptr55 = getelementptr inbounds i8, ptr %q.0406, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata ptr %incdec.ptr55, metadata !540, metadata !DIExpression()), !dbg !543
  %8 = load i8, ptr %incdec.ptr55, align 1, !dbg !670, !tbaa !471
  %cmp50.not = icmp eq i8 %8, 0, !dbg !673
  br i1 %cmp50.not, label %for.end61, label %for.body52, !dbg !674, !llvm.loop !683

for.inc59:                                        ; preds = %for.cond13, %for.cond, %land.lhs.true, %IsPathDirectory.exit.thread, %IsPathAccessible.exit
  %p.2380 = phi ptr [ %p.0, %IsPathAccessible.exit ], [ %p.0, %IsPathDirectory.exit.thread ], [ %p.0, %land.lhs.true ], [ %p.0, %for.cond ], [ %p.1, %for.cond13 ]
  %incdec.ptr60 = getelementptr inbounds i8, ptr %p.2380, i64 1, !dbg !686
  call void @llvm.dbg.value(metadata ptr %incdec.ptr60, metadata !542, metadata !DIExpression()), !dbg !543
  br label %for.cond, !dbg !687, !llvm.loop !688

for.end61:                                        ; preds = %for.cond, %for.cond13, %for.body52, %if.then46
  %.pr430 = load i8, ptr %component, align 1, !dbg !690, !tbaa !471
  store i8 0, ptr %subimage, align 16, !dbg !675, !tbaa !471
  call void @llvm.dbg.value(metadata ptr %component, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp64.not = icmp eq i8 %.pr430, 0, !dbg !692
  br i1 %cmp64.not, label %if.end142, label %if.end70, !dbg !676

if.end70:                                         ; preds = %for.end61
  %call67 = call i64 @strlen(ptr noundef nonnull %component) #21, !dbg !693
  %add.ptr68 = getelementptr inbounds i8, ptr %component, i64 %call67, !dbg !694
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr68, i64 -1, !dbg !695
  call void @llvm.dbg.value(metadata ptr %add.ptr69, metadata !542, metadata !DIExpression()), !dbg !543
  %.pr385 = load i8, ptr %add.ptr69, align 1, !dbg !696, !tbaa !471
  %cmp72 = icmp eq i8 %.pr385, 93, !dbg !698
  br i1 %cmp72, label %land.lhs.true74, label %if.end120, !dbg !699

land.lhs.true74:                                  ; preds = %if.end70
  %call75 = call ptr @strchr(ptr noundef nonnull %component, i32 noundef 91) #21, !dbg !700
  %cmp76.not = icmp eq ptr %call75, null, !dbg !701
  br i1 %cmp76.not, label %if.end120, label %lor.lhs.false.i364, !dbg !702

lor.lhs.false.i364:                               ; preds = %land.lhs.true74
  call void @llvm.dbg.value(metadata ptr %path, metadata !619, metadata !DIExpression()) #19, !dbg !703
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i361) #19, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %attributes.i361, metadata !623, metadata !DIExpression()) #19, !dbg !706
  %9 = load i8, ptr %path, align 1, !dbg !707, !tbaa !471
  %cmp1.i363 = icmp eq i8 %9, 0, !dbg !708
  br i1 %cmp1.i363, label %IsPathAccessible.exit377.thread, label %GetPathAttributes.exit.i367, !dbg !709

GetPathAttributes.exit.i367:                      ; preds = %lor.lhs.false.i364
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()) #19, !dbg !710
  call void @llvm.dbg.value(metadata ptr %attributes.i361, metadata !596, metadata !DIExpression()) #19, !dbg !710
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !712
  call void @llvm.dbg.value(metadata ptr %attributes.i361, metadata !605, metadata !DIExpression()) #19, !dbg !712
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !714
  call void @llvm.dbg.value(metadata ptr %attributes.i361, metadata !611, metadata !DIExpression()) #19, !dbg !714
  %call.i.i.i.i365 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes.i361) #19, !dbg !716
  %cmp2.i.not.i366 = icmp eq i32 %call.i.i.i.i365, 0, !dbg !717
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i366, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !710
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i366, metadata !622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !703
  br i1 %cmp2.i.not.i366, label %if.end6.i371, label %IsPathAccessible.exit377.thread, !dbg !718

if.end6.i371:                                     ; preds = %GetPathAttributes.exit.i367
  %st_mode.i368 = getelementptr inbounds %struct.stat, ptr %attributes.i361, i64 0, i32 3, !dbg !719
  %10 = load i32, ptr %st_mode.i368, align 8, !dbg !719, !tbaa !643
  %and.i369 = and i32 %10, 61440, !dbg !719
  %cmp7.not.i370 = icmp eq i32 %and.i369, 32768, !dbg !719
  br i1 %cmp7.not.i370, label %IsPathAccessible.exit377, label %IsPathAccessible.exit377.thread, !dbg !720

IsPathAccessible.exit377.thread:                  ; preds = %lor.lhs.false.i364, %GetPathAttributes.exit.i367, %if.end6.i371
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i361) #19, !dbg !721
  br label %for.cond84.preheader, !dbg !722

IsPathAccessible.exit377:                         ; preds = %if.end6.i371
  call void @llvm.dbg.value(metadata ptr %path, metadata !651, metadata !DIExpression()) #19, !dbg !723
  call void @llvm.dbg.value(metadata i32 0, metadata !656, metadata !DIExpression()) #19, !dbg !723
  %call.i23.i372 = call i32 @access(ptr noundef nonnull %path, i32 noundef 0) #19, !dbg !725
  %cmp14.not.i373.not = icmp eq i32 %call.i23.i372, 0, !dbg !726
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i361) #19, !dbg !721
  br i1 %cmp14.not.i373.not, label %if.end120, label %for.cond84.preheader, !dbg !722

for.cond84.preheader:                             ; preds = %IsPathAccessible.exit377.thread, %IsPathAccessible.exit377
  br label %for.cond84, !dbg !727

for.cond84:                                       ; preds = %for.cond84.preheader, %for.body87
  %p.4.pn = phi ptr [ %q.1, %for.body87 ], [ %add.ptr69, %for.cond84.preheader ]
  %q.1 = getelementptr inbounds i8, ptr %p.4.pn, i64 -1, !dbg !730
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !540, metadata !DIExpression()), !dbg !543
  %cmp85 = icmp ugt ptr %q.1, %component, !dbg !731
  %11 = load i8, ptr %q.1, align 1, !dbg !733, !tbaa !471
  %cmp89 = icmp eq i8 %11, 91, !dbg !733
  br i1 %cmp85, label %for.body87, label %for.end95, !dbg !727

for.body87:                                       ; preds = %for.cond84
  br i1 %cmp89, label %if.then99, label %for.cond84, !dbg !734, !llvm.loop !735

for.end95:                                        ; preds = %for.cond84
  br i1 %cmp89, label %if.then99, label %if.end120, !dbg !737

if.then99:                                        ; preds = %for.body87, %for.end95
  %call102 = call i64 @CopyMagickString(ptr noundef nonnull %subimage, ptr noundef nonnull %p.4.pn, i64 noundef 4096) #19, !dbg !738
  %sub.ptr.lhs.cast103 = ptrtoint ptr %add.ptr69 to i64, !dbg !741
  %sub.ptr.rhs.cast104 = ptrtoint ptr %q.1 to i64, !dbg !741
  %12 = xor i64 %sub.ptr.rhs.cast104, -1, !dbg !742
  %sub = add i64 %12, %sub.ptr.lhs.cast103, !dbg !742
  %arrayidx = getelementptr inbounds [4096 x i8], ptr %subimage, i64 0, i64 %sub, !dbg !743
  store i8 0, ptr %arrayidx, align 1, !dbg !744, !tbaa !471
  %call107 = call i32 @IsSceneGeometry(ptr noundef nonnull %subimage, i32 noundef 0) #19, !dbg !745
  %cmp108 = icmp eq i32 %call107, 0, !dbg !747
  br i1 %cmp108, label %land.lhs.true110, label %if.else117, !dbg !748

land.lhs.true110:                                 ; preds = %if.then99
  %call112 = call i32 @IsGeometry(ptr noundef nonnull %subimage) #19, !dbg !749
  %cmp113 = icmp eq i32 %call112, 0, !dbg !750
  br i1 %cmp113, label %if.then115, label %if.else117, !dbg !751

if.then115:                                       ; preds = %land.lhs.true110
  store i8 0, ptr %subimage, align 16, !dbg !752, !tbaa !471
  br label %if.end120, !dbg !753

if.else117:                                       ; preds = %land.lhs.true110, %if.then99
  store i8 0, ptr %q.1, align 1, !dbg !754, !tbaa !471
  br label %if.end120

if.end120:                                        ; preds = %for.end95, %if.else117, %if.then115, %IsPathAccessible.exit377, %land.lhs.true74, %if.end70
  %.pr390 = load i8, ptr %component, align 1, !dbg !755, !tbaa !471
  call void @llvm.dbg.value(metadata ptr %component, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp122.not = icmp eq i8 %.pr390, 0, !dbg !757
  br i1 %cmp122.not, label %if.end142, label %if.then124, !dbg !758

if.then124:                                       ; preds = %if.end120
  %call125 = call i64 @strlen(ptr noundef nonnull %component) #21, !dbg !759
  %add.ptr126 = getelementptr inbounds i8, ptr %component, i64 %call125, !dbg !761
  call void @llvm.dbg.value(metadata ptr %add.ptr126, metadata !542, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !543
  br label %for.cond128, !dbg !762

for.cond128:                                      ; preds = %for.body131, %if.then124
  %add.ptr126.pn = phi ptr [ %add.ptr126, %if.then124 ], [ %p.5, %for.body131 ]
  %p.5 = getelementptr inbounds i8, ptr %add.ptr126.pn, i64 -1, !dbg !763
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp129 = icmp ugt ptr %p.5, %component, !dbg !764
  br i1 %cmp129, label %for.body131, label %if.end142, !dbg !766

for.body131:                                      ; preds = %for.cond128
  %13 = load i8, ptr %p.5, align 1, !dbg !767, !tbaa !471
  %cmp133 = icmp eq i8 %13, 47, !dbg !767
  br i1 %cmp133, label %if.end142, label %for.cond128, !dbg !769, !llvm.loop !770

if.end142:                                        ; preds = %for.cond128, %for.body131, %for.end61.thread, %for.end61, %if.end120
  %14 = phi i8 [ 0, %if.end120 ], [ 0, %for.end61 ], [ 0, %for.end61.thread ], [ %.pr390, %for.body131 ], [ %.pr390, %for.cond128 ]
  %p.6 = phi ptr [ %component, %if.end120 ], [ %component, %for.end61 ], [ %component, %for.end61.thread ], [ %p.5, %for.body131 ], [ %p.5, %for.cond128 ], !dbg !543
  call void @llvm.dbg.value(metadata ptr %p.6, metadata !542, metadata !DIExpression()), !dbg !543
  switch i32 %type, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb145
    i32 3, label %sw.bb174
    i32 4, label %sw.bb175
    i32 5, label %sw.bb189
    i32 6, label %sw.bb215
    i32 7, label %sw.bb253
  ], !dbg !772

sw.bb:                                            ; preds = %if.end142
  %call144 = call i64 @CopyMagickString(ptr noundef nonnull %component, ptr noundef nonnull %magick, i64 noundef 4096) #19, !dbg !773
  br label %cleanup, !dbg !776

sw.bb145:                                         ; preds = %if.end142
  %call146 = call i64 @strlen(ptr noundef nonnull %component) #21, !dbg !777
  %sub147 = add i64 %call146, -1, !dbg !780
  %add.ptr148 = getelementptr inbounds i8, ptr %component, i64 %sub147, !dbg !781
  call void @llvm.dbg.value(metadata ptr %add.ptr148, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp150410 = icmp sgt i64 %sub147, 0, !dbg !782
  br i1 %cmp150410, label %for.body152, label %for.end168thread-pre-split, !dbg !784

for.body152:                                      ; preds = %sw.bb145, %for.inc166
  %p.7411 = phi ptr [ %incdec.ptr167, %for.inc166 ], [ %add.ptr148, %sw.bb145 ]
  call void @llvm.dbg.value(metadata ptr %p.7411, metadata !542, metadata !DIExpression()), !dbg !543
  %15 = load i8, ptr %p.7411, align 1, !dbg !785, !tbaa !471
  %16 = and i8 %15, -2, !dbg !788
  %switch = icmp eq i8 %16, 46, !dbg !788
  br i1 %switch, label %for.end168, label %for.inc166, !dbg !788

for.inc166:                                       ; preds = %for.body152
  %incdec.ptr167 = getelementptr inbounds i8, ptr %p.7411, i64 -1, !dbg !789
  call void @llvm.dbg.value(metadata ptr %incdec.ptr167, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp150 = icmp ugt ptr %incdec.ptr167, %component, !dbg !782
  br i1 %cmp150, label %for.body152, label %for.end168thread-pre-split, !dbg !784, !llvm.loop !790

for.end168thread-pre-split:                       ; preds = %for.inc166, %sw.bb145
  %p.7.lcssa = phi ptr [ %add.ptr148, %sw.bb145 ], [ %incdec.ptr167, %for.inc166 ], !dbg !792
  %.pr392 = load i8, ptr %p.7.lcssa, align 1, !dbg !793, !tbaa !471
  br label %for.end168, !dbg !793

for.end168:                                       ; preds = %for.body152, %for.end168thread-pre-split
  %p.7396 = phi ptr [ %p.7.lcssa, %for.end168thread-pre-split ], [ %p.7411, %for.body152 ]
  %17 = phi i8 [ %.pr392, %for.end168thread-pre-split ], [ %15, %for.body152 ], !dbg !793
  %cmp170 = icmp eq i8 %17, 46, !dbg !795
  br i1 %cmp170, label %if.then172, label %cleanup, !dbg !796

if.then172:                                       ; preds = %for.end168
  store i8 0, ptr %p.7396, align 1, !dbg !797, !tbaa !471
  br label %cleanup, !dbg !798

sw.bb174:                                         ; preds = %if.end142
  store i8 0, ptr %p.6, align 1, !dbg !799, !tbaa !471
  br label %cleanup, !dbg !801

sw.bb175:                                         ; preds = %if.end142
  %18 = load i8, ptr %p.6, align 1, !dbg !802, !tbaa !471
  %cmp177 = icmp eq i8 %18, 47, !dbg !802
  br i1 %cmp177, label %if.then182, label %cleanup, !dbg !805

if.then182:                                       ; preds = %sw.bb175
  %add.ptr183 = getelementptr inbounds i8, ptr %p.6, i64 1, !dbg !806
  %call185 = call i64 @strlen(ptr noundef nonnull %add.ptr183) #21, !dbg !807
  %add186 = add i64 %call185, 1, !dbg !808
  %call187 = call ptr @CopyMagickMemory(ptr noundef nonnull %component, ptr noundef nonnull %add.ptr183, i64 noundef %add186) #19, !dbg !809
  br label %cleanup, !dbg !810

sw.bb189:                                         ; preds = %if.end142
  %19 = load i8, ptr %p.6, align 1, !dbg !811, !tbaa !471
  %cmp191 = icmp eq i8 %19, 47, !dbg !811
  br i1 %cmp191, label %if.then196, label %if.end199, !dbg !814

if.then196:                                       ; preds = %sw.bb189
  %add.ptr197 = getelementptr inbounds i8, ptr %p.6, i64 1, !dbg !815
  %call198 = call i64 @CopyMagickString(ptr noundef nonnull %component, ptr noundef nonnull %add.ptr197, i64 noundef 4096) #19, !dbg !816
  br label %if.end199, !dbg !817

if.end199:                                        ; preds = %if.then196, %sw.bb189
  %call200 = call i64 @strlen(ptr noundef nonnull %component) #21, !dbg !818
  %sub201 = add i64 %call200, -1, !dbg !820
  call void @llvm.dbg.value(metadata !DIArgList(ptr %component, i64 %sub201), metadata !542, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !543
  %cmp204408 = icmp sgt i64 %sub201, 0, !dbg !821
  br i1 %cmp204408, label %for.body206.preheader, label %cleanup, !dbg !823

for.body206.preheader:                            ; preds = %if.end199
  %add.ptr202 = getelementptr inbounds i8, ptr %component, i64 %sub201, !dbg !824
  call void @llvm.dbg.value(metadata ptr %add.ptr202, metadata !542, metadata !DIExpression()), !dbg !543
  br label %for.body206, !dbg !823

for.body206:                                      ; preds = %for.body206.preheader, %for.inc212
  %p.8409 = phi ptr [ %incdec.ptr213, %for.inc212 ], [ %add.ptr202, %for.body206.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.8409, metadata !542, metadata !DIExpression()), !dbg !543
  %20 = load i8, ptr %p.8409, align 1, !dbg !825, !tbaa !471
  %cmp208 = icmp eq i8 %20, 46, !dbg !827
  br i1 %cmp208, label %if.then210, label %for.inc212, !dbg !828

if.then210:                                       ; preds = %for.body206
  store i8 0, ptr %p.8409, align 1, !dbg !829, !tbaa !471
  br label %cleanup, !dbg !831

for.inc212:                                       ; preds = %for.body206
  %incdec.ptr213 = getelementptr inbounds i8, ptr %p.8409, i64 -1, !dbg !832
  call void @llvm.dbg.value(metadata ptr %incdec.ptr213, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp204 = icmp ugt ptr %incdec.ptr213, %component, !dbg !821
  br i1 %cmp204, label %for.body206, label %cleanup, !dbg !823, !llvm.loop !833

sw.bb215:                                         ; preds = %if.end142
  %21 = load i8, ptr %p.6, align 1, !dbg !835, !tbaa !471
  %cmp217 = icmp eq i8 %21, 47, !dbg !835
  br i1 %cmp217, label %if.then222, label %if.end225, !dbg !838

if.then222:                                       ; preds = %sw.bb215
  %add.ptr223 = getelementptr inbounds i8, ptr %p.6, i64 1, !dbg !839
  %call224 = call i64 @CopyMagickString(ptr noundef nonnull %component, ptr noundef nonnull %add.ptr223, i64 noundef 4096) #19, !dbg !840
  %.pre424 = load i8, ptr %component, align 1, !dbg !841, !tbaa !471
  br label %if.end225, !dbg !843

if.end225:                                        ; preds = %if.then222, %sw.bb215
  %22 = phi i8 [ %.pre424, %if.then222 ], [ %14, %sw.bb215 ], !dbg !841
  call void @llvm.dbg.value(metadata ptr %component, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp227.not = icmp eq i8 %22, 0, !dbg !844
  br i1 %cmp227.not, label %if.end245, label %if.then229, !dbg !845

if.then229:                                       ; preds = %if.end225
  %call230 = call i64 @strlen(ptr noundef nonnull %component) #21, !dbg !846
  %add.ptr231 = getelementptr inbounds i8, ptr %component, i64 %call230, !dbg !848
  call void @llvm.dbg.value(metadata ptr %add.ptr231, metadata !542, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !543
  br label %for.cond233, !dbg !849

for.cond233:                                      ; preds = %for.body236, %if.then229
  %add.ptr231.pn = phi ptr [ %add.ptr231, %if.then229 ], [ %p.9, %for.body236 ]
  %p.9 = getelementptr inbounds i8, ptr %add.ptr231.pn, i64 -1, !dbg !850
  call void @llvm.dbg.value(metadata ptr %p.9, metadata !542, metadata !DIExpression()), !dbg !543
  %cmp234 = icmp ugt ptr %p.9, %component, !dbg !851
  br i1 %cmp234, label %for.body236, label %if.end245, !dbg !853

for.body236:                                      ; preds = %for.cond233
  %23 = load i8, ptr %p.9, align 1, !dbg !854, !tbaa !471
  %cmp238 = icmp eq i8 %23, 46, !dbg !856
  br i1 %cmp238, label %if.end245, label %for.cond233, !dbg !857, !llvm.loop !858

if.end245:                                        ; preds = %for.cond233, %for.body236, %if.end225
  %p.10 = phi ptr [ %component, %if.end225 ], [ %p.9, %for.body236 ], [ %p.9, %for.cond233 ], !dbg !860
  call void @llvm.dbg.value(metadata ptr %p.10, metadata !542, metadata !DIExpression()), !dbg !543
  store i8 0, ptr %component, align 1, !dbg !861, !tbaa !471
  %24 = load i8, ptr %p.10, align 1, !dbg !862, !tbaa !471
  %cmp247 = icmp eq i8 %24, 46, !dbg !864
  br i1 %cmp247, label %if.then249, label %cleanup, !dbg !865

if.then249:                                       ; preds = %if.end245
  %add.ptr250 = getelementptr inbounds i8, ptr %p.10, i64 1, !dbg !866
  %call251 = call i64 @CopyMagickString(ptr noundef nonnull %component, ptr noundef nonnull %add.ptr250, i64 noundef 4096) #19, !dbg !867
  br label %cleanup, !dbg !868

sw.bb253:                                         ; preds = %if.end142
  %call255 = call i64 @CopyMagickString(ptr noundef nonnull %component, ptr noundef nonnull %subimage, i64 noundef 4096) #19, !dbg !869
  br label %cleanup, !dbg !871

cleanup:                                          ; preds = %for.inc212, %if.end199, %sw.bb, %sw.bb174, %sw.bb253, %if.end142, %if.then172, %for.end168, %if.then182, %sw.bb175, %if.then210, %if.then249, %if.end245, %if.then
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subimage) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick) #19, !dbg !872
  ret void, !dbg !872
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Base64Decode(ptr nocapture noundef readonly %source, ptr nocapture noundef writeonly %length) local_unnamed_addr #0 !dbg !873 {
entry:
  call void @llvm.dbg.value(metadata ptr %source, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %length, metadata !879, metadata !DIExpression()), !dbg !885
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 352, ptr noundef nonnull @.str.12) #19, !dbg !886
  store i64 0, ptr %length, align 8, !dbg !887, !tbaa !888
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %source) #21, !dbg !889
  %div183 = lshr i64 %call1, 2, !dbg !890
  %add = add nuw nsw i64 %div183, 4, !dbg !891
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 3) #20, !dbg !892
  call void @llvm.dbg.value(metadata ptr %call2, metadata !884, metadata !DIExpression()), !dbg !885
  %cmp = icmp eq ptr %call2, null, !dbg !893
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !895

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %source, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()), !dbg !885
  %0 = load i8, ptr %source, align 1, !dbg !896, !tbaa !471
  %cmp3.not196 = icmp eq i8 %0, 0, !dbg !899
  br i1 %cmp3.not196, label %if.end130, label %for.body.lr.ph, !dbg !900

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call5 = tail call ptr @__ctype_b_loc() #22, !dbg !885
  br label %for.body, !dbg !900

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %16, %for.inc ]
  %i.0200 = phi i64 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc ]
  %p.0198 = phi ptr [ %source, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %state.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %state.1, %for.inc ]
  %conv201 = sext i8 %1 to i32, !dbg !896
  call void @llvm.dbg.value(metadata i64 %i.0200, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %p.0198, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i32 %state.0197, metadata !880, metadata !DIExpression()), !dbg !885
  %2 = load ptr, ptr %call5, align 8, !dbg !901, !tbaa !904
  %3 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %3, !dbg !901
  %4 = load i16, ptr %arrayidx, align 2, !dbg !901, !tbaa !906
  %5 = and i16 %4, 8192, !dbg !901
  %cmp8.not = icmp eq i16 %5, 0, !dbg !908
  br i1 %cmp8.not, label %if.end11, label %for.inc, !dbg !909

if.end11:                                         ; preds = %for.body
  %cmp13 = icmp eq i8 %1, 61, !dbg !910
  br i1 %cmp13, label %if.else, label %if.end16, !dbg !912

if.end16:                                         ; preds = %if.end11
  %memchr = tail call ptr @memchr(ptr noundef nonnull @Base64, i32 %conv201, i64 65), !dbg !913
  call void @llvm.dbg.value(metadata ptr %memchr, metadata !882, metadata !DIExpression()), !dbg !885
  %cmp19 = icmp eq ptr %memchr, null, !dbg !914
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !916

if.then21:                                        ; preds = %if.end16
  %call22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !917
  call void @llvm.dbg.value(metadata ptr %call22, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !919

if.end23:                                         ; preds = %if.end16
  switch i32 %state.0197, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb40
    i32 3, label %sw.bb56
  ], !dbg !920

sw.bb:                                            ; preds = %if.end23
  %sub.ptr.lhs.cast = ptrtoint ptr %memchr to i64, !dbg !921
  %6 = trunc i64 %sub.ptr.lhs.cast to i8, !dbg !924
  %sub.ptr.sub.tr = sub i8 %6, ptrtoint (ptr @Base64 to i8), !dbg !924
  %conv24 = shl i8 %sub.ptr.sub.tr, 2, !dbg !924
  %arrayidx25 = getelementptr inbounds i8, ptr %call2, i64 %i.0200, !dbg !925
  store i8 %conv24, ptr %arrayidx25, align 1, !dbg !926, !tbaa !471
  call void @llvm.dbg.value(metadata i32 1, metadata !880, metadata !DIExpression()), !dbg !885
  br label %for.inc, !dbg !927

sw.bb26:                                          ; preds = %if.end23
  %sub.ptr.lhs.cast27 = ptrtoint ptr %memchr to i64, !dbg !928
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast27, ptrtoint (ptr @Base64 to i64), !dbg !928
  %7 = lshr i64 %sub.ptr.sub28, 4, !dbg !930
  %inc29 = add i64 %i.0200, 1, !dbg !931
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !883, metadata !DIExpression()), !dbg !885
  %arrayidx30 = getelementptr inbounds i8, ptr %call2, i64 %i.0200, !dbg !932
  %8 = load i8, ptr %arrayidx30, align 1, !dbg !933, !tbaa !471
  %9 = trunc i64 %7 to i8, !dbg !933
  %conv32 = or i8 %8, %9, !dbg !933
  store i8 %conv32, ptr %arrayidx30, align 1, !dbg !933, !tbaa !471
  %sub.ptr.sub28.tr = trunc i64 %sub.ptr.sub28 to i8, !dbg !934
  %conv37 = shl i8 %sub.ptr.sub28.tr, 4, !dbg !934
  %arrayidx38 = getelementptr inbounds i8, ptr %call2, i64 %inc29, !dbg !935
  store i8 %conv37, ptr %arrayidx38, align 1, !dbg !936, !tbaa !471
  call void @llvm.dbg.value(metadata i32 2, metadata !880, metadata !DIExpression()), !dbg !885
  br label %for.inc, !dbg !937

sw.bb40:                                          ; preds = %if.end23
  %sub.ptr.lhs.cast41 = ptrtoint ptr %memchr to i64, !dbg !938
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast41, ptrtoint (ptr @Base64 to i64), !dbg !938
  %10 = lshr i64 %sub.ptr.sub42, 2, !dbg !940
  %inc44 = add i64 %i.0200, 1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %inc44, metadata !883, metadata !DIExpression()), !dbg !885
  %arrayidx45 = getelementptr inbounds i8, ptr %call2, i64 %i.0200, !dbg !942
  %11 = load i8, ptr %arrayidx45, align 1, !dbg !943, !tbaa !471
  %12 = trunc i64 %10 to i8, !dbg !943
  %conv48 = or i8 %11, %12, !dbg !943
  store i8 %conv48, ptr %arrayidx45, align 1, !dbg !943, !tbaa !471
  %sub.ptr.sub42.tr = trunc i64 %sub.ptr.sub42 to i8, !dbg !944
  %conv53 = shl i8 %sub.ptr.sub42.tr, 6, !dbg !944
  %arrayidx54 = getelementptr inbounds i8, ptr %call2, i64 %inc44, !dbg !945
  store i8 %conv53, ptr %arrayidx54, align 1, !dbg !946, !tbaa !471
  call void @llvm.dbg.value(metadata i32 3, metadata !880, metadata !DIExpression()), !dbg !885
  br label %for.inc, !dbg !947

sw.bb56:                                          ; preds = %if.end23
  %sub.ptr.lhs.cast57 = ptrtoint ptr %memchr to i64, !dbg !948
  %inc59 = add i64 %i.0200, 1, !dbg !950
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !883, metadata !DIExpression()), !dbg !885
  %arrayidx60 = getelementptr inbounds i8, ptr %call2, i64 %i.0200, !dbg !951
  %13 = load i8, ptr %arrayidx60, align 1, !dbg !952, !tbaa !471
  %14 = trunc i64 %sub.ptr.lhs.cast57 to i8, !dbg !952
  %15 = sub i8 %14, ptrtoint (ptr @Base64 to i8), !dbg !952
  %conv63 = or i8 %13, %15, !dbg !952
  store i8 %conv63, ptr %arrayidx60, align 1, !dbg !952, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()), !dbg !885
  br label %for.inc, !dbg !953

for.inc:                                          ; preds = %sw.bb, %sw.bb26, %sw.bb40, %sw.bb56, %if.end23, %for.body
  %state.1 = phi i32 [ %state.0197, %for.body ], [ %state.0197, %if.end23 ], [ 0, %sw.bb56 ], [ 3, %sw.bb40 ], [ 2, %sw.bb26 ], [ 1, %sw.bb ], !dbg !885
  %i.1 = phi i64 [ %i.0200, %for.body ], [ %i.0200, %if.end23 ], [ %inc59, %sw.bb56 ], [ %inc44, %sw.bb40 ], [ %inc29, %sw.bb26 ], [ %i.0200, %sw.bb ], !dbg !885
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i32 %state.1, metadata !880, metadata !DIExpression()), !dbg !885
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0198, i64 1, !dbg !954
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !881, metadata !DIExpression()), !dbg !885
  %16 = load i8, ptr %incdec.ptr, align 1, !dbg !896, !tbaa !471
  %cmp3.not = icmp eq i8 %16, 0, !dbg !899
  br i1 %cmp3.not, label %if.then67, label %for.body, !dbg !900, !llvm.loop !955

if.then67:                                        ; preds = %for.inc
  %cmp68.not = icmp eq i32 %state.1, 0, !dbg !957
  br i1 %cmp68.not, label %if.end130, label %if.then70, !dbg !961

if.then70:                                        ; preds = %if.then67
  %call71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !962
  call void @llvm.dbg.value(metadata ptr %call71, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !964

if.else:                                          ; preds = %if.end11
  %incdec.ptr73 = getelementptr inbounds i8, ptr %p.0198, i64 1, !dbg !965
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73, metadata !881, metadata !DIExpression()), !dbg !885
  switch i32 %state.0197, label %if.end130 [
    i32 0, label %sw.bb74
    i32 1, label %sw.bb74
    i32 2, label %for.cond77.preheader
    i32 3, label %sw.bb102
  ], !dbg !967

for.cond77.preheader:                             ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73, metadata !881, metadata !DIExpression()), !dbg !885
  %17 = load i8, ptr %incdec.ptr73, align 1, !dbg !968, !tbaa !471
  %cmp79.not203 = icmp eq i8 %17, 0, !dbg !973
  br i1 %cmp79.not203, label %if.then98, label %for.body81, !dbg !974

sw.bb74:                                          ; preds = %if.else, %if.else
  %call75 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !975
  call void @llvm.dbg.value(metadata ptr %call75, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !977

for.body81:                                       ; preds = %for.cond77.preheader, %for.inc92
  %18 = phi i8 [ %22, %for.inc92 ], [ %17, %for.cond77.preheader ]
  %p.1204 = phi ptr [ %incdec.ptr93, %for.inc92 ], [ %incdec.ptr73, %for.cond77.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.1204, metadata !881, metadata !DIExpression()), !dbg !885
  %19 = zext i8 %18 to i64
  %arrayidx85 = getelementptr inbounds i16, ptr %2, i64 %19, !dbg !978
  %20 = load i16, ptr %arrayidx85, align 2, !dbg !978, !tbaa !906
  %21 = and i16 %20, 8192, !dbg !978
  %cmp88 = icmp eq i16 %21, 0, !dbg !980
  br i1 %cmp88, label %for.end94, label %for.inc92, !dbg !981

for.inc92:                                        ; preds = %for.body81
  %incdec.ptr93 = getelementptr inbounds i8, ptr %p.1204, i64 1, !dbg !982
  call void @llvm.dbg.value(metadata ptr %incdec.ptr93, metadata !881, metadata !DIExpression()), !dbg !885
  %22 = load i8, ptr %incdec.ptr93, align 1, !dbg !968, !tbaa !471
  %cmp79.not = icmp eq i8 %22, 0, !dbg !973
  br i1 %cmp79.not, label %if.then98, label %for.body81, !dbg !974, !llvm.loop !983

for.end94:                                        ; preds = %for.body81
  %cmp96.not = icmp eq i8 %18, 61, !dbg !985
  br i1 %cmp96.not, label %if.end100, label %if.then98, !dbg !987

if.then98:                                        ; preds = %for.inc92, %for.cond77.preheader, %for.end94
  %call99 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !988
  call void @llvm.dbg.value(metadata ptr %call99, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !990

if.end100:                                        ; preds = %for.end94
  %incdec.ptr101 = getelementptr inbounds i8, ptr %p.1204, i64 1, !dbg !991
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101, metadata !881, metadata !DIExpression()), !dbg !885
  br label %sw.bb102, !dbg !992

sw.bb102:                                         ; preds = %if.else, %if.end100
  %p.2 = phi ptr [ %incdec.ptr73, %if.else ], [ %incdec.ptr101, %if.end100 ], !dbg !993
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !881, metadata !DIExpression()), !dbg !885
  %23 = load i8, ptr %p.2, align 1, !dbg !994, !tbaa !471
  %cmp105.not205 = icmp eq i8 %23, 0, !dbg !998
  br i1 %cmp105.not205, label %for.end121, label %for.body107, !dbg !999

for.cond103:                                      ; preds = %for.body107
  %incdec.ptr120 = getelementptr inbounds i8, ptr %p.3206, i64 1, !dbg !1000
  call void @llvm.dbg.value(metadata ptr %p.3206, metadata !881, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !885
  %24 = load i8, ptr %incdec.ptr120, align 1, !dbg !994, !tbaa !471
  %cmp105.not = icmp eq i8 %24, 0, !dbg !998
  br i1 %cmp105.not, label %for.end121, label %for.body107, !dbg !999, !llvm.loop !1001

for.body107:                                      ; preds = %sw.bb102, %for.cond103
  %25 = phi i8 [ %24, %for.cond103 ], [ %23, %sw.bb102 ]
  %p.3206 = phi ptr [ %incdec.ptr120, %for.cond103 ], [ %p.2, %sw.bb102 ]
  call void @llvm.dbg.value(metadata ptr %p.3206, metadata !881, metadata !DIExpression()), !dbg !885
  %26 = zext i8 %25 to i64
  %arrayidx111 = getelementptr inbounds i16, ptr %2, i64 %26, !dbg !1003
  %27 = load i16, ptr %arrayidx111, align 2, !dbg !1003, !tbaa !906
  %28 = and i16 %27, 8192, !dbg !1003
  %cmp114 = icmp eq i16 %28, 0, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %p.3206, metadata !881, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !885
  br i1 %cmp114, label %if.then116, label %for.cond103, !dbg !1006

if.then116:                                       ; preds = %for.body107
  %call117 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %call117, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !1009

for.end121:                                       ; preds = %for.cond103, %sw.bb102
  %arrayidx122 = getelementptr inbounds i8, ptr %call2, i64 %i.0200, !dbg !1010
  %29 = load i8, ptr %arrayidx122, align 1, !dbg !1010, !tbaa !471
  %cmp124.not = icmp eq i8 %29, 0, !dbg !1012
  br i1 %cmp124.not, label %if.end130, label %if.then126, !dbg !1013

if.then126:                                       ; preds = %for.end121
  %call127 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #19, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %call127, metadata !884, metadata !DIExpression()), !dbg !885
  br label %cleanup, !dbg !1016

if.end130:                                        ; preds = %for.cond.preheader, %if.else, %for.end121, %if.then67
  %i.0190 = phi i64 [ %i.0200, %if.else ], [ %i.0200, %for.end121 ], [ %i.1, %if.then67 ], [ 0, %for.cond.preheader ]
  store i64 %i.0190, ptr %length, align 8, !dbg !1017, !tbaa !888
  br label %cleanup, !dbg !1018

cleanup:                                          ; preds = %entry, %if.end130, %if.then126, %if.then116, %if.then98, %sw.bb74, %if.then70, %if.then21
  %retval.0 = phi ptr [ null, %if.then70 ], [ %call2, %if.end130 ], [ null, %if.then116 ], [ null, %if.then126 ], [ null, %if.then98 ], [ null, %sw.bb74 ], [ null, %if.then21 ], [ null, %entry ], !dbg !885
  ret ptr %retval.0, !dbg !1019
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @Base64Encode(ptr noundef readonly %blob, i64 noundef %blob_length, ptr nocapture noundef writeonly %encode_length) local_unnamed_addr #0 !dbg !1020 {
entry:
  %code = alloca [3 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1024, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %blob_length, metadata !1025, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %encode_length, metadata !1026, metadata !DIExpression()), !dbg !1036
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, ptr noundef nonnull @.str.12) #19, !dbg !1037
  store i64 0, ptr %encode_length, align 8, !dbg !1038, !tbaa !888
  %div = udiv i64 %blob_length, 3, !dbg !1039
  %rem = urem i64 %blob_length, 3, !dbg !1040
  %add = add nuw nsw i64 %div, 4, !dbg !1041
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 4) #20, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1027, metadata !DIExpression()), !dbg !1036
  %cmp = icmp eq ptr %call1, null, !dbg !1043
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !1045

for.cond.preheader:                               ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %blob, i64 %blob_length
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -2
  call void @llvm.dbg.value(metadata i64 0, metadata !1029, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1028, metadata !DIExpression()), !dbg !1036
  %cmp3134 = icmp ugt ptr %add.ptr2, %blob, !dbg !1046
  br i1 %cmp3134, label %for.body, label %for.end, !dbg !1049

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0136 = phi i64 [ %inc31, %for.body ], [ 0, %for.cond.preheader ]
  %p.0135 = phi ptr [ %add.ptr33, %for.body ], [ %blob, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0136, metadata !1029, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %p.0135, metadata !1028, metadata !DIExpression()), !dbg !1036
  %0 = load i8, ptr %p.0135, align 1, !dbg !1050, !tbaa !471
  %1 = lshr i8 %0, 2, !dbg !1052
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %2, !dbg !1053
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1053, !tbaa !471
  %inc = or i64 %i.0136, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx4 = getelementptr inbounds i8, ptr %call1, i64 %i.0136, !dbg !1055
  store i8 %3, ptr %arrayidx4, align 1, !dbg !1056, !tbaa !471
  %4 = load i8, ptr %p.0135, align 1, !dbg !1057, !tbaa !471
  %5 = shl i8 %4, 4, !dbg !1058
  %6 = and i8 %5, 48, !dbg !1058
  %add.ptr6 = getelementptr inbounds i8, ptr %p.0135, i64 1, !dbg !1059
  %7 = load i8, ptr %add.ptr6, align 1, !dbg !1060, !tbaa !471
  %8 = lshr i8 %7, 4, !dbg !1061
  %add9132 = or i8 %6, %8, !dbg !1062
  %9 = zext i8 %add9132 to i64
  %arrayidx11 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %9, !dbg !1063
  %10 = load i8, ptr %arrayidx11, align 1, !dbg !1063, !tbaa !471
  %inc12 = or i64 %i.0136, 2, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %inc12, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx13 = getelementptr inbounds i8, ptr %call1, i64 %inc, !dbg !1065
  store i8 %10, ptr %arrayidx13, align 1, !dbg !1066, !tbaa !471
  %11 = load i8, ptr %add.ptr6, align 1, !dbg !1067, !tbaa !471
  %12 = shl i8 %11, 2, !dbg !1068
  %13 = and i8 %12, 60, !dbg !1068
  %add.ptr18 = getelementptr inbounds i8, ptr %p.0135, i64 2, !dbg !1069
  %14 = load i8, ptr %add.ptr18, align 1, !dbg !1070, !tbaa !471
  %15 = lshr i8 %14, 6, !dbg !1071
  %add21133 = or i8 %13, %15, !dbg !1072
  %16 = zext i8 %add21133 to i64
  %arrayidx23 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %16, !dbg !1073
  %17 = load i8, ptr %arrayidx23, align 1, !dbg !1073, !tbaa !471
  %inc24 = or i64 %i.0136, 3, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx25 = getelementptr inbounds i8, ptr %call1, i64 %inc12, !dbg !1075
  store i8 %17, ptr %arrayidx25, align 1, !dbg !1076, !tbaa !471
  %18 = load i8, ptr %add.ptr18, align 1, !dbg !1077, !tbaa !471
  %19 = and i8 %18, 63, !dbg !1078
  %20 = zext i8 %19 to i64
  %arrayidx30 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %20, !dbg !1079
  %21 = load i8, ptr %arrayidx30, align 1, !dbg !1079, !tbaa !471
  %inc31 = add i64 %i.0136, 4, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %inc31, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx32 = getelementptr inbounds i8, ptr %call1, i64 %inc24, !dbg !1081
  store i8 %21, ptr %arrayidx32, align 1, !dbg !1082, !tbaa !471
  %add.ptr33 = getelementptr inbounds i8, ptr %p.0135, i64 3, !dbg !1083
  call void @llvm.dbg.value(metadata ptr %add.ptr33, metadata !1028, metadata !DIExpression()), !dbg !1036
  %cmp3 = icmp ult ptr %add.ptr33, %add.ptr2, !dbg !1046
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1049, !llvm.loop !1084

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %p.0.lcssa = phi ptr [ %blob, %for.cond.preheader ], [ %add.ptr33, %for.body ], !dbg !1086
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %inc31, %for.body ], !dbg !1036
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1030, metadata !DIExpression()), !dbg !1036
  %cmp34.not = icmp eq i64 %rem, 0, !dbg !1087
  br i1 %cmp34.not, label %if.end87, label %for.body43.preheader, !dbg !1088

for.body43.preheader:                             ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %code) #19, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %code, metadata !1034, metadata !DIExpression()), !dbg !1090
  store i8 0, ptr %code, align 1, !dbg !1091, !tbaa !471
  %arrayidx38 = getelementptr inbounds [3 x i8], ptr %code, i64 0, i64 1, !dbg !1092
  store i8 0, ptr %arrayidx38, align 1, !dbg !1093, !tbaa !471
  %arrayidx39 = getelementptr inbounds [3 x i8], ptr %code, i64 0, i64 2, !dbg !1094
  store i8 0, ptr %arrayidx39, align 1, !dbg !1095, !tbaa !471
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata ptr %p.0.lcssa, metadata !1028, metadata !DIExpression()), !dbg !1036
  br label %for.body43, !dbg !1097

for.body43:                                       ; preds = %for.body43.preheader, %for.body43
  %j.0140 = phi i64 [ %inc46, %for.body43 ], [ 0, %for.body43.preheader ]
  %p.1139 = phi ptr [ %incdec.ptr, %for.body43 ], [ %p.0.lcssa, %for.body43.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0140, metadata !1031, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata ptr %p.1139, metadata !1028, metadata !DIExpression()), !dbg !1036
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1139, i64 1, !dbg !1099
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1028, metadata !DIExpression()), !dbg !1036
  %22 = load i8, ptr %p.1139, align 1, !dbg !1101, !tbaa !471
  %arrayidx44 = getelementptr inbounds [3 x i8], ptr %code, i64 0, i64 %j.0140, !dbg !1102
  store i8 %22, ptr %arrayidx44, align 1, !dbg !1103, !tbaa !471
  %inc46 = add nuw nsw i64 %j.0140, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !1031, metadata !DIExpression()), !dbg !1096
  %cmp41 = icmp ult i64 %inc46, %rem, !dbg !1105
  br i1 %cmp41, label %for.body43, label %for.end47, !dbg !1097, !llvm.loop !1106

for.end47:                                        ; preds = %for.body43
  %.pre = load i8, ptr %code, align 1, !dbg !1108, !tbaa !471
  %.pre141 = load i8, ptr %arrayidx38, align 1, !dbg !1109, !tbaa !471
  %23 = lshr i8 %.pre, 2, !dbg !1110
  %24 = zext i8 %23 to i64
  %arrayidx52 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %24, !dbg !1111
  %25 = load i8, ptr %arrayidx52, align 1, !dbg !1111, !tbaa !471
  %inc53 = or i64 %i.0.lcssa, 1, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx54 = getelementptr inbounds i8, ptr %call1, i64 %i.0.lcssa, !dbg !1113
  store i8 %25, ptr %arrayidx54, align 1, !dbg !1114, !tbaa !471
  %26 = shl i8 %.pre, 4, !dbg !1115
  %27 = and i8 %26, 48, !dbg !1115
  %28 = lshr i8 %.pre141, 4, !dbg !1116
  %add62130 = or i8 %28, %27, !dbg !1117
  %29 = zext i8 %add62130 to i64
  %arrayidx64 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %29, !dbg !1118
  %30 = load i8, ptr %arrayidx64, align 1, !dbg !1118, !tbaa !471
  %inc65 = or i64 %i.0.lcssa, 2, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %inc65, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx66 = getelementptr inbounds i8, ptr %call1, i64 %inc53, !dbg !1120
  store i8 %30, ptr %arrayidx66, align 1, !dbg !1121, !tbaa !471
  %cmp67 = icmp eq i64 %rem, 1, !dbg !1122
  br i1 %cmp67, label %if.end84, label %if.else, !dbg !1124

if.else:                                          ; preds = %for.end47
  %31 = shl i8 %.pre141, 2, !dbg !1125
  %32 = and i8 %31, 60, !dbg !1125
  %33 = load i8, ptr %arrayidx39, align 1, !dbg !1126, !tbaa !471
  %34 = lshr i8 %33, 6, !dbg !1127
  %add79131 = or i8 %34, %32, !dbg !1128
  %35 = zext i8 %add79131 to i64
  %arrayidx81 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %35, !dbg !1129
  %36 = load i8, ptr %arrayidx81, align 1, !dbg !1129, !tbaa !471
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1029, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1036
  br label %if.end84

if.end84:                                         ; preds = %for.end47, %if.else
  %.sink = phi i8 [ %36, %if.else ], [ 61, %for.end47 ], !dbg !1130
  %37 = getelementptr inbounds i8, ptr %call1, i64 %inc65, !dbg !1131
  store i8 %.sink, ptr %37, align 1, !dbg !1132
  %i.1 = or i64 %i.0.lcssa, 3, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1029, metadata !DIExpression()), !dbg !1036
  %inc85 = add i64 %i.0.lcssa, 4, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %inc85, metadata !1029, metadata !DIExpression()), !dbg !1036
  %arrayidx86 = getelementptr inbounds i8, ptr %call1, i64 %i.1, !dbg !1134
  store i8 61, ptr %arrayidx86, align 1, !dbg !1135, !tbaa !471
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %code) #19, !dbg !1136
  br label %if.end87, !dbg !1137

if.end87:                                         ; preds = %if.end84, %for.end
  %i.2 = phi i64 [ %inc85, %if.end84 ], [ %i.0.lcssa, %for.end ], !dbg !1036
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1029, metadata !DIExpression()), !dbg !1036
  store i64 %i.2, ptr %encode_length, align 8, !dbg !1138, !tbaa !888
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1036
  %arrayidx89 = getelementptr inbounds i8, ptr %call1, i64 %i.2, !dbg !1139
  store i8 0, ptr %arrayidx89, align 1, !dbg !1140, !tbaa !471
  br label %cleanup, !dbg !1141

cleanup:                                          ; preds = %entry, %if.end87
  ret ptr %call1, !dbg !1142
}

; Function Attrs: nounwind uwtable
define dso_local void @ChopPathComponents(ptr noundef %path, i64 noundef %components) local_unnamed_addr #0 !dbg !1143 {
entry:
  call void @llvm.dbg.value(metadata ptr %path, metadata !1147, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %components, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1150
  %cmp3 = icmp sgt i64 %components, 0, !dbg !1151
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1154

for.body:                                         ; preds = %entry, %for.body
  %i.04 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.04, metadata !1149, metadata !DIExpression()), !dbg !1150
  tail call void @GetPathComponent(ptr noundef %path, i32 noundef 3, ptr noundef %path), !dbg !1155
  %inc = add nuw nsw i64 %i.04, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1149, metadata !DIExpression()), !dbg !1150
  %exitcond.not = icmp eq i64 %inc, %components, !dbg !1151
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1154, !llvm.loop !1157

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1159
}

; Function Attrs: nounwind uwtable
define dso_local void @ExpandFilename(ptr noundef %path) local_unnamed_addr #0 !dbg !1160 {
entry:
  %expand_path = alloca [4096 x i8], align 16
  %username = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %path, metadata !1164, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %expand_path) #19, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %expand_path, metadata !1165, metadata !DIExpression()), !dbg !1175
  %cmp = icmp eq ptr %path, null, !dbg !1176
  br i1 %cmp, label %cleanup67, label %if.end, !dbg !1178

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %path, align 1, !dbg !1179, !tbaa !471
  %cmp1.not = icmp eq i8 %0, 126, !dbg !1181
  br i1 %cmp1.not, label %if.end4, label %cleanup67, !dbg !1182

if.end4:                                          ; preds = %if.end
  %call = call i64 @CopyMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull %path, i64 noundef 4096) #19, !dbg !1183
  %add.ptr = getelementptr inbounds i8, ptr %path, i64 1, !dbg !1184
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1185, !tbaa !471
  switch i8 %1, label %if.else [
    i8 47, label %if.then13
    i8 0, label %if.then13
  ], !dbg !1186

if.then13:                                        ; preds = %if.end4, %if.end4
  %call15 = call i64 @CopyMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull @.str.14, i64 noundef 4096) #19, !dbg !1187
  %call18 = call i64 @ConcatenateMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull %add.ptr, i64 noundef 4096) #19, !dbg !1188
  %call19 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #19, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1166, metadata !DIExpression()), !dbg !1190
  %cmp20 = icmp eq ptr %call19, null, !dbg !1191
  br i1 %cmp20, label %if.end24, label %if.then27, !dbg !1193

if.end24:                                         ; preds = %if.then13
  %call23 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #19, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1166, metadata !DIExpression()), !dbg !1190
  %cmp25.not = icmp eq ptr %call23, null, !dbg !1195
  br i1 %cmp25.not, label %if.end64, label %if.then27, !dbg !1197

if.then27:                                        ; preds = %if.then13, %if.end24
  %home.087 = phi ptr [ %call23, %if.end24 ], [ %call19, %if.then13 ]
  %call29 = call i64 @CopyMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull %home.087, i64 noundef 4096) #19, !dbg !1198
  %call32 = call i64 @ConcatenateMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull %add.ptr, i64 noundef 4096) #19, !dbg !1200
  %call33 = call ptr @DestroyString(ptr noundef nonnull %home.087) #19, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1166, metadata !DIExpression()), !dbg !1190
  br label %if.end64, !dbg !1202

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %username) #19, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %username, metadata !1169, metadata !DIExpression()), !dbg !1204
  %call38 = call i64 @CopyMagickString(ptr noundef nonnull %username, ptr noundef nonnull %add.ptr, i64 noundef 4096) #19, !dbg !1205
  %call40 = call ptr @strchr(ptr noundef nonnull %username, i32 noundef 47) #21, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %call40, metadata !1171, metadata !DIExpression()), !dbg !1207
  %cmp41.not = icmp eq ptr %call40, null, !dbg !1208
  br i1 %cmp41.not, label %if.end44, label %if.then43, !dbg !1210

if.then43:                                        ; preds = %if.else
  store i8 0, ptr %call40, align 1, !dbg !1211, !tbaa !471
  br label %if.end44, !dbg !1212

if.end44:                                         ; preds = %if.then43, %if.else
  %call46 = call ptr @getpwnam(ptr noundef nonnull %username), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1172, metadata !DIExpression()), !dbg !1207
  %cmp47 = icmp eq ptr %call46, null, !dbg !1214
  br i1 %cmp47, label %cleanup67.critedge, label %if.end50, !dbg !1216

if.end50:                                         ; preds = %if.end44
  %pw_dir = getelementptr inbounds %struct.passwd, ptr %call46, i64 0, i32 5, !dbg !1217
  %2 = load ptr, ptr %pw_dir, align 8, !dbg !1217, !tbaa !1218
  %call52 = call i64 @CopyMagickString(ptr noundef nonnull %expand_path, ptr noundef %2, i64 noundef 4096) #19, !dbg !1220
  br i1 %cmp41.not, label %cleanup, label %if.then55, !dbg !1221

if.then55:                                        ; preds = %if.end50
  %call57 = call i64 @ConcatenateMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull @.str.13, i64 noundef 4096) #19, !dbg !1222
  %add.ptr59 = getelementptr inbounds i8, ptr %call40, i64 1, !dbg !1225
  %call60 = call i64 @ConcatenateMagickString(ptr noundef nonnull %expand_path, ptr noundef nonnull %add.ptr59, i64 noundef 4096) #19, !dbg !1226
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %if.end50, %if.then55
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %username) #19, !dbg !1228
  br label %if.end64

if.end64:                                         ; preds = %cleanup, %if.end24, %if.then27
  %call66 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %expand_path, i64 noundef 4096) #19, !dbg !1229
  br label %cleanup67, !dbg !1230

cleanup67.critedge:                               ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %username) #19, !dbg !1228
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.critedge, %if.end, %entry, %if.end64
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %expand_path) #19, !dbg !1230
  ret void, !dbg !1230
}

declare !dbg !1231 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1232 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare !dbg !1235 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1238 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ExpandFilenames(ptr nocapture noundef %number_arguments, ptr nocapture noundef %arguments) local_unnamed_addr #0 !dbg !1241 {
entry:
  %attributes.i448 = alloca %struct.stat, align 8
  %attributes.i = alloca %struct.stat, align 8
  %home_directory = alloca [4096 x i8], align 16
  %number_files = alloca i64, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  %filename = alloca [4096 x i8], align 16
  %magick = alloca [4096 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %subimage = alloca [4096 x i8], align 16
  %length = alloca i32, align 4
  %exception232 = alloca %struct._ExceptionInfo, align 8
  %path244 = alloca [4096 x i8], align 16
  %exception279 = alloca %struct._ExceptionInfo, align 8
  %command_line = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %number_arguments, metadata !1247, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %arguments, metadata !1248, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %home_directory) #19, !dbg !1314
  call void @llvm.dbg.declare(metadata ptr %home_directory, metadata !1250, metadata !DIExpression()), !dbg !1315
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_files) #19, !dbg !1316
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 747, ptr noundef nonnull @.str.12) #19, !dbg !1317
  %0 = load i32, ptr %number_arguments, align 4, !dbg !1318, !tbaa !1319
  %add = add nsw i32 %0, 1, !dbg !1320
  %conv = sext i32 %add to i64, !dbg !1321
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %conv, i64 noundef 8) #20, !dbg !1322
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1251, metadata !DIExpression()), !dbg !1313
  %cmp = icmp eq ptr %call1, null, !dbg !1323
  br i1 %cmp, label %if.then, label %if.end, !dbg !1324

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #19, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1260, metadata !DIExpression()), !dbg !1325
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1325
  %call3 = tail call ptr @__errno_location() #22, !dbg !1325
  %1 = load i32, ptr %call3, align 4, !dbg !1325, !tbaa !1319
  %call4 = call ptr @GetExceptionMessage(i32 noundef %1) #19, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1257, metadata !DIExpression()), !dbg !1326
  %call5 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 753, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call4) #19, !dbg !1325
  %call6 = call ptr @DestroyString(ptr noundef %call4) #19, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1257, metadata !DIExpression()), !dbg !1326
  call void @CatchException(ptr noundef nonnull %exception) #19, !dbg !1325
  %call7 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1325
  call void @MagickCoreTerminus() #19, !dbg !1325
  call void @_exit(i32 noundef 1) #23, !dbg !1325
  unreachable, !dbg !1325

if.end:                                           ; preds = %entry
  store i8 0, ptr %home_directory, align 16, !dbg !1327, !tbaa !471
  call void @llvm.dbg.value(metadata i64 0, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1251, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1328
  %2 = load i32, ptr %number_arguments, align 4, !dbg !1329, !tbaa !1319
  %cmp9532 = icmp sgt i32 %2, 0, !dbg !1330
  br i1 %cmp9532, label %for.body.lr.ph, label %for.end313, !dbg !1331

for.body.lr.ph:                                   ; preds = %if.end
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %attributes.i, i64 0, i32 3
  %st_mode.i454 = getelementptr inbounds %struct.stat, ptr %attributes.i448, i64 0, i32 3
  br label %for.body, !dbg !1331

for.body:                                         ; preds = %for.body.lr.ph, %for.inc311
  %vector.0538 = phi ptr [ %call1, %for.body.lr.ph ], [ %vector.1.ph, %for.inc311 ]
  %i.0534 = phi i64 [ 0, %for.body.lr.ph ], [ %inc312, %for.inc311 ]
  %count.0533 = phi i64 [ 0, %for.body.lr.ph ], [ %count.6.ph, %for.inc311 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %vector.0538, metadata !1251, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %i.0534, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %count.0533, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #19, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !1281, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick) #19, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !1282, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #19, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1284, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %subimage) #19, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %subimage, metadata !1285, metadata !DIExpression()), !dbg !1336
  %3 = load ptr, ptr %arguments, align 8, !dbg !1337, !tbaa !904
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %i.0534, !dbg !1338
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1338, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %4, metadata !1283, metadata !DIExpression()), !dbg !1328
  store i8 0, ptr %magick, align 16, !dbg !1339, !tbaa !471
  store i8 0, ptr %path, align 16, !dbg !1340, !tbaa !471
  store i8 0, ptr %filename, align 16, !dbg !1341, !tbaa !471
  store i8 0, ptr %subimage, align 16, !dbg !1342, !tbaa !471
  call void @llvm.dbg.value(metadata i64 0, metadata !1254, metadata !DIExpression()), !dbg !1313
  store i64 0, ptr %number_files, align 8, !dbg !1343, !tbaa !888
  %call15 = call ptr @ConstantString(ptr noundef %4) #19, !dbg !1344
  %inc = add nsw i64 %count.0533, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1255, metadata !DIExpression()), !dbg !1313
  %arrayidx16 = getelementptr inbounds ptr, ptr %vector.0538, i64 %count.0533, !dbg !1346
  store ptr %call15, ptr %arrayidx16, align 8, !dbg !1347, !tbaa !904
  call void @llvm.dbg.value(metadata i32 1, metadata !1286, metadata !DIExpression()), !dbg !1328
  %call17 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %4) #19, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %call17, metadata !1256, metadata !DIExpression()), !dbg !1313
  %cmp18 = icmp sgt i64 %call17, 0, !dbg !1349
  br i1 %cmp18, label %for.body24.preheader, label %if.end36, !dbg !1351

for.body24.preheader:                             ; preds = %for.body
  %5 = add i64 %call17, %i.0534, !dbg !1352
  br label %for.body24, !dbg !1352

for.body24:                                       ; preds = %for.body24.preheader, %if.end30
  %i.1526 = phi i64 [ %inc25, %if.end30 ], [ %i.0534, %for.body24.preheader ]
  %count.1525 = phi i64 [ %inc33, %if.end30 ], [ %inc, %for.body24.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1526, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %count.1525, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1253, metadata !DIExpression()), !dbg !1313
  %inc25 = add i64 %i.1526, 1, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %inc25, metadata !1252, metadata !DIExpression()), !dbg !1313
  %6 = load i32, ptr %number_arguments, align 4, !dbg !1358, !tbaa !1319
  %conv26 = sext i32 %6 to i64, !dbg !1360
  %cmp27 = icmp eq i64 %inc25, %conv26, !dbg !1361
  br i1 %cmp27, label %for.inc311, label %if.end30, !dbg !1362

if.end30:                                         ; preds = %for.body24
  %7 = load ptr, ptr %arguments, align 8, !dbg !1363, !tbaa !904
  %arrayidx31 = getelementptr inbounds ptr, ptr %7, i64 %inc25, !dbg !1364
  %8 = load ptr, ptr %arrayidx31, align 8, !dbg !1364, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %8, metadata !1283, metadata !DIExpression()), !dbg !1328
  %call32 = call ptr @ConstantString(ptr noundef %8) #19, !dbg !1365
  %inc33 = add nsw i64 %count.1525, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !1255, metadata !DIExpression()), !dbg !1313
  %arrayidx34 = getelementptr inbounds ptr, ptr %vector.0538, i64 %count.1525, !dbg !1367
  store ptr %call32, ptr %arrayidx34, align 8, !dbg !1368, !tbaa !904
  call void @llvm.dbg.value(metadata i64 %inc25, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1253, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1313
  %exitcond548.not = icmp eq i64 %inc25, %5, !dbg !1369
  br i1 %exitcond548.not, label %for.inc311, label %for.body24, !dbg !1352, !llvm.loop !1370

if.end36:                                         ; preds = %for.body
  %9 = load i8, ptr %4, align 1, !dbg !1372, !tbaa !471
  switch i8 %9, label %if.end44 [
    i8 34, label %for.inc311
    i8 39, label %for.inc311
  ], !dbg !1374

if.end44:                                         ; preds = %if.end36
  call void @GetPathComponent(ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull %filename), !dbg !1375
  call void @GetPathComponent(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %magick), !dbg !1376
  %call48 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.19) #19, !dbg !1377
  %cmp49 = icmp eq i32 %call48, 0, !dbg !1379
  br i1 %cmp49, label %for.inc311, label %lor.lhs.false51, !dbg !1380

lor.lhs.false51:                                  ; preds = %if.end44
  %call53 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.20) #19, !dbg !1381
  %cmp54 = icmp eq i32 %call53, 0, !dbg !1382
  br i1 %cmp54, label %for.inc311, label %lor.lhs.false56, !dbg !1383

lor.lhs.false56:                                  ; preds = %lor.lhs.false51
  %call58 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.21) #19, !dbg !1384
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1385
  br i1 %cmp59, label %for.inc311, label %lor.lhs.false61, !dbg !1386

lor.lhs.false61:                                  ; preds = %lor.lhs.false56
  %call63 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.22) #19, !dbg !1387
  %cmp64 = icmp eq i32 %call63, 0, !dbg !1388
  br i1 %cmp64, label %for.inc311, label %if.end67, !dbg !1389

if.end67:                                         ; preds = %lor.lhs.false61
  %call69 = call i32 @IsGlob(ptr noundef nonnull %filename) #19, !dbg !1390
  %cmp70 = icmp eq i32 %call69, 0, !dbg !1392
  %10 = load i8, ptr %4, align 1, !dbg !1328, !tbaa !471
  %cmp73.not = icmp eq i8 %10, 64, !dbg !1328
  br i1 %cmp70, label %land.lhs.true, label %if.end76, !dbg !1393

land.lhs.true:                                    ; preds = %if.end67
  br i1 %cmp73.not, label %if.else, label %for.inc311, !dbg !1394

if.end76:                                         ; preds = %if.end67
  br i1 %cmp73.not, label %if.else, label %if.then80, !dbg !1395

if.then80:                                        ; preds = %if.end76
  call void @GetPathComponent(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %path), !dbg !1396
  call void @GetPathComponent(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull %subimage), !dbg !1398
  call void @ExpandFilename(ptr noundef nonnull %path), !dbg !1399
  %11 = load i8, ptr %home_directory, align 16, !dbg !1400, !tbaa !471
  %cmp86 = icmp eq i8 %11, 0, !dbg !1402
  br i1 %cmp86, label %if.then88, label %if.end132, !dbg !1403

if.then88:                                        ; preds = %if.then80
  %call90 = call ptr @getcwd(ptr noundef nonnull %home_directory, i64 noundef 4095) #19, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %call90, metadata !1249, metadata !DIExpression()), !dbg !1313
  br label %if.end132, !dbg !1405

if.else:                                          ; preds = %land.lhs.true, %if.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #19, !dbg !1406
  %call101 = call ptr @AcquireExceptionInfo() #19, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %call101, metadata !1290, metadata !DIExpression()), !dbg !1408
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1409
  %call102 = call ptr @FileToString(ptr noundef nonnull %add.ptr, i64 noundef -1, ptr noundef %call101) #19, !dbg !1410
  call void @llvm.dbg.value(metadata ptr %call102, metadata !1287, metadata !DIExpression()), !dbg !1408
  %call103 = call ptr @DestroyExceptionInfo(ptr noundef %call101) #19, !dbg !1411
  call void @llvm.dbg.value(metadata ptr %call103, metadata !1290, metadata !DIExpression()), !dbg !1408
  %cmp104 = icmp eq ptr %call102, null, !dbg !1412
  br i1 %cmp104, label %cleanup.thread, label %if.end107, !dbg !1414

if.end107:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %length, metadata !1292, metadata !DIExpression(DW_OP_deref)), !dbg !1408
  %call108 = call ptr @StringToArgv(ptr noundef nonnull %call102, ptr noundef nonnull %length) #19, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1277, metadata !DIExpression()), !dbg !1328
  %cmp109 = icmp eq ptr %call108, null, !dbg !1416
  br i1 %cmp109, label %cleanup.thread, label %if.end112, !dbg !1418

if.end112:                                        ; preds = %if.end107
  %call113 = call ptr @DestroyString(ptr noundef nonnull %call102) #19, !dbg !1419
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1287, metadata !DIExpression()), !dbg !1408
  %12 = load ptr, ptr %call108, align 8, !dbg !1420, !tbaa !904
  %call115 = call ptr @DestroyString(ptr noundef %12) #19, !dbg !1421
  store ptr %call115, ptr %call108, align 8, !dbg !1422, !tbaa !904
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1313
  %13 = load i32, ptr %length, align 4, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %13, metadata !1292, metadata !DIExpression()), !dbg !1408
  %cmp119493 = icmp sgt i32 %13, 1, !dbg !1423
  br i1 %cmp119493, label %for.body121.preheader, label %if.end132.thread, !dbg !1426

for.body121.preheader:                            ; preds = %if.end112
  %uglygep = getelementptr i8, ptr %call108, i64 8, !dbg !1426
  %14 = add nsw i32 %13, -1, !dbg !1426
  %smax557 = zext i32 %14 to i64, !dbg !1426
  %15 = shl nuw nsw i64 %smax557, 3, !dbg !1426
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %call108, ptr align 8 %uglygep, i64 %15, i1 false), !dbg !1427, !tbaa !904
  call void @llvm.dbg.value(metadata i32 undef, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 undef, metadata !1253, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1313
  call void @llvm.dbg.value(metadata i32 undef, metadata !1292, metadata !DIExpression()), !dbg !1408
  br label %if.end132.thread, !dbg !1428

cleanup.thread:                                   ; preds = %if.else, %if.end107
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #19, !dbg !1429
  br label %for.inc311

if.end132.thread:                                 ; preds = %if.end112, %for.body121.preheader
  %conv128 = sext i32 %13 to i64, !dbg !1428
  %sub129 = add nsw i64 %conv128, -1, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %sub129, metadata !1254, metadata !DIExpression()), !dbg !1313
  store i64 %sub129, ptr %number_files, align 8, !dbg !1431, !tbaa !888
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #19, !dbg !1429
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1277, metadata !DIExpression()), !dbg !1328
  br label %for.cond137.preheader, !dbg !1432

if.end132:                                        ; preds = %if.then80, %if.then88
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  %16 = load i8, ptr %path, align 16, !dbg !1433, !tbaa !471
  %cmp94 = icmp eq i8 %16, 0, !dbg !1434
  %home_directory.path = select i1 %cmp94, ptr %home_directory, ptr %path, !dbg !1433
  call void @llvm.dbg.value(metadata ptr %number_files, metadata !1254, metadata !DIExpression(DW_OP_deref)), !dbg !1313
  %call99 = call ptr @ListFiles(ptr noundef nonnull %home_directory.path, ptr noundef nonnull %filename, ptr noundef nonnull %number_files), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1277, metadata !DIExpression()), !dbg !1328
  %cmp133 = icmp eq ptr %call99, null, !dbg !1436
  br i1 %cmp133, label %for.inc311, label %for.cond137.preheaderthread-pre-split, !dbg !1432

for.cond137.preheaderthread-pre-split:            ; preds = %if.end132
  %.pr554 = load i64, ptr %number_files, align 8, !tbaa !888
  br label %for.cond137.preheader

for.cond137.preheader:                            ; preds = %for.cond137.preheaderthread-pre-split, %if.end132.thread
  %17 = phi i64 [ %.pr554, %for.cond137.preheaderthread-pre-split ], [ %sub129, %if.end132.thread ]
  %filelist.2553 = phi ptr [ %call99, %for.cond137.preheaderthread-pre-split ], [ %call108, %if.end132.thread ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %17, metadata !1254, metadata !DIExpression()), !dbg !1313
  %cmp138495 = icmp sgt i64 %17, 0, !dbg !1438
  br i1 %cmp138495, label %for.body140, label %for.end149, !dbg !1441

for.body140:                                      ; preds = %for.cond137.preheader, %for.inc147
  %j.2496 = phi i64 [ %inc148, %for.inc147 ], [ 0, %for.cond137.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.2496, metadata !1253, metadata !DIExpression()), !dbg !1313
  %arrayidx141 = getelementptr inbounds ptr, ptr %filelist.2553, i64 %j.2496, !dbg !1442
  %18 = load ptr, ptr %arrayidx141, align 8, !dbg !1442, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %18, metadata !575, metadata !DIExpression()) #19, !dbg !1444
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %attributes.i, metadata !581, metadata !DIExpression()) #19, !dbg !1447
  %cmp.i = icmp eq ptr %18, null, !dbg !1448
  br i1 %cmp.i, label %IsPathDirectory.exit.thread, label %lor.lhs.false.i, !dbg !1449

lor.lhs.false.i:                                  ; preds = %for.body140
  %19 = load i8, ptr %18, align 1, !dbg !1450, !tbaa !471
  %cmp1.i = icmp eq i8 %19, 0, !dbg !1451
  br i1 %cmp1.i, label %IsPathDirectory.exit.thread, label %GetPathAttributes.exit.i, !dbg !1452

GetPathAttributes.exit.i:                         ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %18, metadata !591, metadata !DIExpression()) #19, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !596, metadata !DIExpression()) #19, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %18, metadata !600, metadata !DIExpression()) #19, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !605, metadata !DIExpression()) #19, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %18, metadata !608, metadata !DIExpression()) #19, !dbg !1457
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !611, metadata !DIExpression()) #19, !dbg !1457
  %call.i.i.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %attributes.i) #19, !dbg !1459
  %cmp2.i.not.i = icmp eq i32 %call.i.i.i.i, 0, !dbg !1460
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1453
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1444
  br i1 %cmp2.i.not.i, label %IsPathDirectory.exit, label %IsPathDirectory.exit.thread, !dbg !1461

IsPathDirectory.exit.thread:                      ; preds = %lor.lhs.false.i, %for.body140, %GetPathAttributes.exit.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1462
  br label %for.end149, !dbg !1463

IsPathDirectory.exit:                             ; preds = %GetPathAttributes.exit.i
  %20 = load i32, ptr %st_mode.i, align 8, !dbg !1464, !tbaa !643
  %and.i = and i32 %20, 61440, !dbg !1464
  %cmp7.not.i = icmp eq i32 %and.i, 16384, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1462
  br i1 %cmp7.not.i, label %for.inc147, label %for.end149, !dbg !1463

for.inc147:                                       ; preds = %IsPathDirectory.exit
  %inc148 = add nuw nsw i64 %j.2496, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %inc148, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %17, metadata !1254, metadata !DIExpression()), !dbg !1313
  %exitcond.not = icmp eq i64 %inc148, %17, !dbg !1438
  br i1 %exitcond.not, label %for.cond153.preheader, label %for.body140, !dbg !1441, !llvm.loop !1467

for.end149:                                       ; preds = %IsPathDirectory.exit, %for.cond137.preheader, %IsPathDirectory.exit.thread
  %j.2483 = phi i64 [ %j.2496, %IsPathDirectory.exit.thread ], [ 0, %for.cond137.preheader ], [ %j.2496, %IsPathDirectory.exit ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  %cmp150 = icmp eq i64 %j.2483, %17, !dbg !1469
  br i1 %cmp150, label %for.cond153.preheader, label %if.end164, !dbg !1471

for.cond153.preheader:                            ; preds = %for.inc147, %for.end149
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  br i1 %cmp138495, label %for.body156, label %for.end162, !dbg !1472

for.body156:                                      ; preds = %for.cond153.preheader, %for.body156
  %j.3522 = phi i64 [ %inc161, %for.body156 ], [ 0, %for.cond153.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.3522, metadata !1253, metadata !DIExpression()), !dbg !1313
  %arrayidx157 = getelementptr inbounds ptr, ptr %filelist.2553, i64 %j.3522, !dbg !1475
  %21 = load ptr, ptr %arrayidx157, align 8, !dbg !1475, !tbaa !904
  %call158 = call ptr @DestroyString(ptr noundef %21) #19, !dbg !1477
  store ptr %call158, ptr %arrayidx157, align 8, !dbg !1478, !tbaa !904
  %inc161 = add nuw nsw i64 %j.3522, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %inc161, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  %exitcond547.not = icmp eq i64 %inc161, %17, !dbg !1480
  br i1 %exitcond547.not, label %for.end162, label %for.body156, !dbg !1472, !llvm.loop !1481

for.end162:                                       ; preds = %for.body156, %for.cond153.preheader
  %call163 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %filelist.2553) #19, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %call163, metadata !1277, metadata !DIExpression()), !dbg !1328
  br label %for.inc311, !dbg !1484

if.end164:                                        ; preds = %for.end149
  %22 = load i32, ptr %number_arguments, align 4, !dbg !1485, !tbaa !1319
  %conv165 = sext i32 %22 to i64, !dbg !1486
  %add166 = add i64 %count.0533, 2, !dbg !1487
  %add167 = add i64 %add166, %17, !dbg !1488
  %add168 = add i64 %add167, %conv165, !dbg !1489
  %call169 = call ptr @ResizeQuantumMemory(ptr noundef %vector.0538, i64 noundef %add168, i64 noundef 8) #24, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %call169, metadata !1251, metadata !DIExpression()), !dbg !1313
  %cmp170 = icmp eq ptr %call169, null, !dbg !1491
  br i1 %cmp170, label %cleanup302, label %for.cond174.preheader, !dbg !1493

for.cond174.preheader:                            ; preds = %if.end164
  call void @llvm.dbg.value(metadata i32 1, metadata !1286, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  br i1 %cmp138495, label %for.body177, label %for.end300, !dbg !1494

for.body177:                                      ; preds = %for.cond174.preheader, %for.inc298
  %destroy.0517 = phi i32 [ %destroy.2, %for.inc298 ], [ 1, %for.cond174.preheader ]
  %count.2514 = phi i64 [ %count.5, %for.inc298 ], [ %inc, %for.cond174.preheader ]
  %j.4511 = phi i64 [ %inc299, %for.inc298 ], [ 0, %for.cond174.preheader ]
  call void @llvm.dbg.value(metadata i32 %destroy.0517, metadata !1286, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %count.2514, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %j.4511, metadata !1253, metadata !DIExpression()), !dbg !1313
  %arrayidx178 = getelementptr inbounds ptr, ptr %filelist.2553, i64 %j.4511, !dbg !1495
  %23 = load ptr, ptr %arrayidx178, align 8, !dbg !1495, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %23, metadata !1283, metadata !DIExpression()), !dbg !1328
  %call179 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %23) #19, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %call179, metadata !1256, metadata !DIExpression()), !dbg !1313
  %cmp180 = icmp sgt i64 %call179, 0, !dbg !1497
  br i1 %cmp180, label %if.then182, label %if.end203, !dbg !1498

if.then182:                                       ; preds = %for.body177
  %call183 = call ptr @ConstantString(ptr noundef %23) #19, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %count.2514, metadata !1255, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1313
  %arrayidx185 = getelementptr inbounds ptr, ptr %call169, i64 %count.2514, !dbg !1500
  store ptr %call183, ptr %arrayidx185, align 8, !dbg !1501, !tbaa !904
  call void @llvm.dbg.value(metadata i64 0, metadata !1293, metadata !DIExpression()), !dbg !1502
  %count.3501 = add nsw i64 %count.2514, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %count.3501, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %j.4511, metadata !1253, metadata !DIExpression()), !dbg !1313
  %24 = add i64 %call179, %j.4511, !dbg !1503
  br label %for.body189, !dbg !1503

for.body189:                                      ; preds = %if.then182, %if.end194
  %count.3505 = phi i64 [ %count.3501, %if.then182 ], [ %count.3, %if.end194 ]
  %j.5503 = phi i64 [ %j.4511, %if.then182 ], [ %inc190, %if.end194 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1293, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %j.5503, metadata !1253, metadata !DIExpression()), !dbg !1313
  %inc190 = add i64 %j.5503, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  %cmp191 = icmp eq i64 %inc190, %17, !dbg !1508
  br i1 %cmp191, label %for.inc298, label %if.end194, !dbg !1510

if.end194:                                        ; preds = %for.body189
  %arrayidx195 = getelementptr inbounds ptr, ptr %filelist.2553, i64 %inc190, !dbg !1511
  %25 = load ptr, ptr %arrayidx195, align 8, !dbg !1511, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %25, metadata !1283, metadata !DIExpression()), !dbg !1328
  %call196 = call ptr @ConstantString(ptr noundef %25) #19, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %count.3505, metadata !1255, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1313
  %arrayidx198 = getelementptr inbounds ptr, ptr %call169, i64 %count.3505, !dbg !1513
  store ptr %call196, ptr %arrayidx198, align 8, !dbg !1514, !tbaa !904
  call void @llvm.dbg.value(metadata i64 undef, metadata !1293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1502
  %count.3 = add nsw i64 %count.3505, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !1253, metadata !DIExpression()), !dbg !1313
  %exitcond546.not = icmp eq i64 %inc190, %24, !dbg !1515
  br i1 %exitcond546.not, label %for.inc298, label %for.body189, !dbg !1503, !llvm.loop !1516

if.end203:                                        ; preds = %for.body177
  %call206 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %path, i64 noundef 4096) #19, !dbg !1518
  %26 = load i8, ptr %path, align 16, !dbg !1519, !tbaa !471
  %cmp209.not = icmp eq i8 %26, 0, !dbg !1521
  br i1 %cmp209.not, label %if.end214, label %if.then211, !dbg !1522

if.then211:                                       ; preds = %if.end203
  %call213 = call i64 @ConcatenateMagickString(ptr noundef nonnull %filename, ptr noundef nonnull @.str.13, i64 noundef 4096) #19, !dbg !1523
  br label %if.end214, !dbg !1524

if.end214:                                        ; preds = %if.then211, %if.end203
  %27 = load ptr, ptr %arrayidx178, align 8, !dbg !1525, !tbaa !904
  %cmp216.not = icmp eq ptr %27, null, !dbg !1527
  br i1 %cmp216.not, label %if.end222, label %if.then218, !dbg !1528

if.then218:                                       ; preds = %if.end214
  %call221 = call i64 @ConcatenateMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %27, i64 noundef 4096) #19, !dbg !1529
  %.pre = load ptr, ptr %arrayidx178, align 8, !dbg !1530, !tbaa !904
  br label %if.end222, !dbg !1531

if.end222:                                        ; preds = %if.then218, %if.end214
  %28 = phi ptr [ %.pre, %if.then218 ], [ null, %if.end214 ], !dbg !1530
  %call224 = call ptr @DestroyString(ptr noundef %28) #19, !dbg !1532
  store ptr %call224, ptr %arrayidx178, align 8, !dbg !1533, !tbaa !904
  %call227 = call i64 @strlen(ptr noundef nonnull %filename) #21, !dbg !1534
  %cmp228 = icmp ugt i64 %call227, 4094, !dbg !1535
  br i1 %cmp228, label %if.then230, label %if.end238, !dbg !1536

if.then230:                                       ; preds = %if.end222
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception232) #19, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %exception232, metadata !1302, metadata !DIExpression()), !dbg !1537
  call void @GetExceptionInfo(ptr noundef nonnull %exception232) #19, !dbg !1537
  %call233 = tail call ptr @__errno_location() #22, !dbg !1537
  %29 = load i32, ptr %call233, align 4, !dbg !1537, !tbaa !1319
  %call234 = call ptr @GetExceptionMessage(i32 noundef %29) #19, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %call234, metadata !1299, metadata !DIExpression()), !dbg !1538
  %call235 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception232, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %call234) #19, !dbg !1537
  %call236 = call ptr @DestroyString(ptr noundef %call234) #19, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %call236, metadata !1299, metadata !DIExpression()), !dbg !1538
  call void @CatchException(ptr noundef nonnull %exception232) #19, !dbg !1537
  %call237 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception232) #19, !dbg !1537
  call void @MagickCoreTerminus() #19, !dbg !1537
  call void @_exit(i32 noundef 11) #23, !dbg !1537
  unreachable, !dbg !1537

if.end238:                                        ; preds = %if.end222
  call void @llvm.dbg.value(metadata ptr %filename, metadata !575, metadata !DIExpression()) #19, !dbg !1539
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i448) #19, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %attributes.i448, metadata !581, metadata !DIExpression()) #19, !dbg !1542
  %30 = load i8, ptr %filename, align 16, !dbg !1543, !tbaa !471
  %cmp1.i449 = icmp eq i8 %30, 0, !dbg !1544
  br i1 %cmp1.i449, label %IsPathDirectory.exit460.thread, label %GetPathAttributes.exit.i453, !dbg !1545

GetPathAttributes.exit.i453:                      ; preds = %if.end238
  call void @llvm.dbg.value(metadata ptr %filename, metadata !591, metadata !DIExpression()) #19, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %attributes.i448, metadata !596, metadata !DIExpression()) #19, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %filename, metadata !600, metadata !DIExpression()) #19, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %attributes.i448, metadata !605, metadata !DIExpression()) #19, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %filename, metadata !608, metadata !DIExpression()) #19, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %attributes.i448, metadata !611, metadata !DIExpression()) #19, !dbg !1550
  %call.i.i.i.i451 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %filename, ptr noundef nonnull %attributes.i448) #19, !dbg !1552
  %cmp2.i.not.i452 = icmp eq i32 %call.i.i.i.i451, 0, !dbg !1553
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i452, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1546
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i452, metadata !580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1539
  br i1 %cmp2.i.not.i452, label %IsPathDirectory.exit460, label %IsPathDirectory.exit460.thread, !dbg !1554

IsPathDirectory.exit460.thread:                   ; preds = %if.end238, %GetPathAttributes.exit.i453
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i448) #19, !dbg !1555
  br label %if.then243, !dbg !1556

IsPathDirectory.exit460:                          ; preds = %GetPathAttributes.exit.i453
  %31 = load i32, ptr %st_mode.i454, align 8, !dbg !1557, !tbaa !643
  %and.i455 = and i32 %31, 61440, !dbg !1557
  %cmp7.not.i456 = icmp eq i32 %and.i455, 16384, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i448) #19, !dbg !1555
  br i1 %cmp7.not.i456, label %for.inc298, label %if.then243, !dbg !1556

if.then243:                                       ; preds = %IsPathDirectory.exit460.thread, %IsPathDirectory.exit460
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path244) #19, !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %path244, metadata !1303, metadata !DIExpression()), !dbg !1559
  store i8 0, ptr %path244, align 16, !dbg !1560, !tbaa !471
  %32 = load i8, ptr %magick, align 16, !dbg !1561, !tbaa !471
  %cmp248.not = icmp eq i8 %32, 0, !dbg !1563
  br i1 %cmp248.not, label %if.end256, label %if.then250, !dbg !1564

if.then250:                                       ; preds = %if.then243
  %call253 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull %magick, i64 noundef 4096) #19, !dbg !1565
  %call255 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull @.str.24, i64 noundef 4096) #19, !dbg !1567
  br label %if.end256, !dbg !1568

if.end256:                                        ; preds = %if.then250, %if.then243
  %call259 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull %filename, i64 noundef 4096) #19, !dbg !1569
  %33 = load i8, ptr %subimage, align 16, !dbg !1570, !tbaa !471
  %cmp262.not = icmp eq i8 %33, 0, !dbg !1572
  br i1 %cmp262.not, label %if.end272, label %if.then264, !dbg !1573

if.then264:                                       ; preds = %if.end256
  %call266 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull @.str.25, i64 noundef 4096) #19, !dbg !1574
  %call269 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull %subimage, i64 noundef 4096) #19, !dbg !1576
  %call271 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path244, ptr noundef nonnull @.str.26, i64 noundef 4096) #19, !dbg !1577
  br label %if.end272, !dbg !1578

if.end272:                                        ; preds = %if.then264, %if.end256
  %call274 = call i64 @strlen(ptr noundef nonnull %path244) #21, !dbg !1579
  %cmp275 = icmp ugt i64 %call274, 4094, !dbg !1580
  br i1 %cmp275, label %if.then277, label %if.end285, !dbg !1581

if.then277:                                       ; preds = %if.end272
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception279) #19, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %exception279, metadata !1309, metadata !DIExpression()), !dbg !1582
  call void @GetExceptionInfo(ptr noundef nonnull %exception279) #19, !dbg !1582
  %call280 = tail call ptr @__errno_location() #22, !dbg !1582
  %34 = load i32, ptr %call280, align 4, !dbg !1582, !tbaa !1319
  %call281 = call ptr @GetExceptionMessage(i32 noundef %34) #19, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %call281, metadata !1306, metadata !DIExpression()), !dbg !1583
  %call282 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception279, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 919, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %call281) #19, !dbg !1582
  %call283 = call ptr @DestroyString(ptr noundef %call281) #19, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %call283, metadata !1306, metadata !DIExpression()), !dbg !1583
  call void @CatchException(ptr noundef nonnull %exception279) #19, !dbg !1582
  %call284 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception279) #19, !dbg !1582
  call void @MagickCoreTerminus() #19, !dbg !1582
  call void @_exit(i32 noundef 11) #23, !dbg !1582
  unreachable, !dbg !1582

if.end285:                                        ; preds = %if.end272
  %cmp286.not = icmp eq i32 %destroy.0517, 0, !dbg !1584
  br i1 %cmp286.not, label %if.end292, label %if.then288, !dbg !1586

if.then288:                                       ; preds = %if.end285
  %dec = add nsw i64 %count.2514, -1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1255, metadata !DIExpression()), !dbg !1313
  %arrayidx289 = getelementptr inbounds ptr, ptr %call169, i64 %dec, !dbg !1589
  %35 = load ptr, ptr %arrayidx289, align 8, !dbg !1589, !tbaa !904
  %call290 = call ptr @DestroyString(ptr noundef %35) #19, !dbg !1590
  store ptr %call290, ptr %arrayidx289, align 8, !dbg !1591, !tbaa !904
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1328
  br label %if.end292, !dbg !1592

if.end292:                                        ; preds = %if.then288, %if.end285
  %count.4 = phi i64 [ %dec, %if.then288 ], [ %count.2514, %if.end285 ], !dbg !1328
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %count.4, metadata !1255, metadata !DIExpression()), !dbg !1313
  %call294 = call ptr @ConstantString(ptr noundef nonnull %path244) #19, !dbg !1593
  %inc295 = add nsw i64 %count.4, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %inc295, metadata !1255, metadata !DIExpression()), !dbg !1313
  %arrayidx296 = getelementptr inbounds ptr, ptr %call169, i64 %count.4, !dbg !1595
  store ptr %call294, ptr %arrayidx296, align 8, !dbg !1596, !tbaa !904
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path244) #19, !dbg !1597
  br label %for.inc298, !dbg !1598

for.inc298:                                       ; preds = %for.body189, %if.end194, %IsPathDirectory.exit460, %if.end292
  %j.7 = phi i64 [ %j.4511, %if.end292 ], [ %j.4511, %IsPathDirectory.exit460 ], [ %17, %for.body189 ], [ %24, %if.end194 ], !dbg !1599
  %count.5 = phi i64 [ %inc295, %if.end292 ], [ %count.2514, %IsPathDirectory.exit460 ], [ %count.3505, %for.body189 ], [ %count.3, %if.end194 ], !dbg !1328
  %destroy.2 = phi i32 [ 0, %if.end292 ], [ %destroy.0517, %IsPathDirectory.exit460 ], [ %destroy.0517, %if.end194 ], [ %destroy.0517, %for.body189 ], !dbg !1328
  call void @llvm.dbg.value(metadata i32 %destroy.2, metadata !1286, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %count.5, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %j.7, metadata !1253, metadata !DIExpression()), !dbg !1313
  %inc299 = add nsw i64 %j.7, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %inc299, metadata !1253, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1254, metadata !DIExpression()), !dbg !1313
  %cmp175 = icmp slt i64 %inc299, %17, !dbg !1601
  br i1 %cmp175, label %for.body177, label %for.end300, !dbg !1494, !llvm.loop !1602

for.end300:                                       ; preds = %for.inc298, %for.cond174.preheader
  %count.2.lcssa = phi i64 [ %inc, %for.cond174.preheader ], [ %count.5, %for.inc298 ], !dbg !1328
  %call301 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %filelist.2553) #19, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %call301, metadata !1277, metadata !DIExpression()), !dbg !1328
  br label %for.inc311, !dbg !1605

cleanup302:                                       ; preds = %if.end164
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr null, metadata !1251, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 undef, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subimage) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #19, !dbg !1605
  br label %cleanup336

for.inc311:                                       ; preds = %if.end30, %for.body24, %for.end162, %for.end300, %if.end36, %if.end36, %lor.lhs.false61, %lor.lhs.false56, %lor.lhs.false51, %if.end44, %land.lhs.true, %if.end132, %cleanup.thread
  %count.6.ph = phi i64 [ %inc, %cleanup.thread ], [ %inc, %if.end132 ], [ %inc, %land.lhs.true ], [ %inc, %if.end44 ], [ %inc, %lor.lhs.false51 ], [ %inc, %lor.lhs.false56 ], [ %inc, %lor.lhs.false61 ], [ %inc, %if.end36 ], [ %inc, %if.end36 ], [ %count.2.lcssa, %for.end300 ], [ %inc, %for.end162 ], [ %inc33, %if.end30 ], [ %count.1525, %for.body24 ]
  %i.3.ph = phi i64 [ %i.0534, %cleanup.thread ], [ %i.0534, %if.end132 ], [ %i.0534, %land.lhs.true ], [ %i.0534, %if.end44 ], [ %i.0534, %lor.lhs.false51 ], [ %i.0534, %lor.lhs.false56 ], [ %i.0534, %lor.lhs.false61 ], [ %i.0534, %if.end36 ], [ %i.0534, %if.end36 ], [ %i.0534, %for.end300 ], [ %i.0534, %for.end162 ], [ %5, %if.end30 ], [ %inc25, %for.body24 ]
  %vector.1.ph = phi ptr [ %vector.0538, %cleanup.thread ], [ %vector.0538, %if.end132 ], [ %vector.0538, %land.lhs.true ], [ %vector.0538, %if.end44 ], [ %vector.0538, %lor.lhs.false51 ], [ %vector.0538, %lor.lhs.false56 ], [ %vector.0538, %lor.lhs.false61 ], [ %vector.0538, %if.end36 ], [ %vector.0538, %if.end36 ], [ %call169, %for.end300 ], [ %vector.0538, %for.end162 ], [ %vector.0538, %for.body24 ], [ %vector.0538, %if.end30 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1249, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr null, metadata !1251, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 undef, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1255, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subimage) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick) #19, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #19, !dbg !1605
  %inc312 = add nsw i64 %i.3.ph, 1, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %vector.1.ph, metadata !1251, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %inc312, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %count.6.ph, metadata !1255, metadata !DIExpression()), !dbg !1313
  %36 = load i32, ptr %number_arguments, align 4, !dbg !1329, !tbaa !1319
  %conv8 = sext i32 %36 to i64, !dbg !1607
  %cmp9 = icmp slt i64 %inc312, %conv8, !dbg !1330
  br i1 %cmp9, label %for.body, label %for.end313, !dbg !1331, !llvm.loop !1608

for.end313:                                       ; preds = %for.inc311, %if.end
  %count.0.lcssa = phi i64 [ 0, %if.end ], [ %count.6.ph, %for.inc311 ], !dbg !1313
  %vector.0.lcssa = phi ptr [ %call1, %if.end ], [ %vector.1.ph, %for.inc311 ], !dbg !1610
  %arrayidx314 = getelementptr inbounds ptr, ptr %vector.0.lcssa, i64 %count.0.lcssa, !dbg !1611
  store ptr null, ptr %arrayidx314, align 8, !dbg !1612, !tbaa !904
  %call315 = call i32 @IsEventLogging() #19, !dbg !1613
  %cmp316.not = icmp eq i32 %call315, 0, !dbg !1614
  br i1 %cmp316.not, label %if.end334, label %if.then318, !dbg !1615

if.then318:                                       ; preds = %for.end313
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %command_line) #19, !dbg !1616
  %37 = load ptr, ptr %vector.0.lcssa, align 8, !dbg !1617, !tbaa !904
  %call320 = call ptr @AcquireString(ptr noundef %37) #19, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %call320, metadata !1310, metadata !DIExpression()), !dbg !1619
  store ptr %call320, ptr %command_line, align 8, !dbg !1620, !tbaa !904
  call void @llvm.dbg.value(metadata i64 1, metadata !1252, metadata !DIExpression()), !dbg !1313
  %cmp322543 = icmp sgt i64 %count.0.lcssa, 1, !dbg !1621
  br i1 %cmp322543, label %for.body324, label %for.end331, !dbg !1624

for.body324:                                      ; preds = %if.then318, %for.body324
  %i.4544 = phi i64 [ %inc330, %for.body324 ], [ 1, %if.then318 ]
  call void @llvm.dbg.value(metadata i64 %i.4544, metadata !1252, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %command_line, metadata !1310, metadata !DIExpression(DW_OP_deref)), !dbg !1619
  %call325 = call i32 @ConcatenateString(ptr noundef nonnull %command_line, ptr noundef nonnull @.str.27) #19, !dbg !1625
  %arrayidx326 = getelementptr inbounds ptr, ptr %vector.0.lcssa, i64 %i.4544, !dbg !1627
  %38 = load ptr, ptr %arrayidx326, align 8, !dbg !1627, !tbaa !904
  %call327 = call i32 @ConcatenateString(ptr noundef nonnull %command_line, ptr noundef %38) #19, !dbg !1628
  %call328 = call i32 @ConcatenateString(ptr noundef nonnull %command_line, ptr noundef nonnull @.str.28) #19, !dbg !1629
  %inc330 = add nuw nsw i64 %i.4544, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %inc330, metadata !1252, metadata !DIExpression()), !dbg !1313
  %exitcond549.not = icmp eq i64 %inc330, %count.0.lcssa, !dbg !1621
  br i1 %exitcond549.not, label %for.end331.loopexit, label %for.body324, !dbg !1624, !llvm.loop !1631

for.end331.loopexit:                              ; preds = %for.body324
  %.pre550 = load ptr, ptr %command_line, align 8, !dbg !1633, !tbaa !904
  br label %for.end331, !dbg !1633

for.end331:                                       ; preds = %for.end331.loopexit, %if.then318
  %39 = phi ptr [ %.pre550, %for.end331.loopexit ], [ %call320, %if.then318 ], !dbg !1633
  call void @llvm.dbg.value(metadata ptr %39, metadata !1310, metadata !DIExpression()), !dbg !1619
  %call332 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 944, ptr noundef nonnull @.str.29, ptr noundef %39) #19, !dbg !1634
  %40 = load ptr, ptr %command_line, align 8, !dbg !1635, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %40, metadata !1310, metadata !DIExpression()), !dbg !1619
  %call333 = call ptr @DestroyString(ptr noundef %40) #19, !dbg !1636
  call void @llvm.dbg.value(metadata ptr %call333, metadata !1310, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %command_line) #19, !dbg !1637
  br label %if.end334, !dbg !1638

if.end334:                                        ; preds = %for.end331, %for.end313
  %conv335 = trunc i64 %count.0.lcssa to i32, !dbg !1639
  store i32 %conv335, ptr %number_arguments, align 4, !dbg !1640, !tbaa !1319
  store ptr %vector.0.lcssa, ptr %arguments, align 8, !dbg !1641, !tbaa !904
  br label %cleanup336, !dbg !1642

cleanup336:                                       ; preds = %cleanup302, %if.end334
  %retval.2 = phi i32 [ 0, %cleanup302 ], [ 1, %if.end334 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_files) #19, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %home_directory) #19, !dbg !1643
  ret i32 %retval.2, !dbg !1643
}

declare !dbg !1644 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1647 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1651 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1655 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1656 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1659 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

declare !dbg !1663 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare !dbg !1664 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1670 i32 @IsGlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1672 ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @ListFiles(ptr noundef %directory, ptr noundef %pattern, ptr nocapture noundef %number_entries) local_unnamed_addr #0 !dbg !1675 {
entry:
  %attributes.i = alloca %struct.stat, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %directory, metadata !1679, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %number_entries, metadata !1681, metadata !DIExpression()), !dbg !1691
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1582, ptr noundef nonnull @.str.2, ptr noundef %directory) #19, !dbg !1692
  store i64 0, ptr %number_entries, align 8, !dbg !1693, !tbaa !888
  %call2 = tail call ptr @opendir(ptr noundef %directory), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1683, metadata !DIExpression()), !dbg !1691
  %cmp = icmp eq ptr %call2, null, !dbg !1695
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1697

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2048, metadata !1686, metadata !DIExpression()), !dbg !1691
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef 2048, i64 noundef 8) #20, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1682, metadata !DIExpression()), !dbg !1691
  %cmp4 = icmp eq ptr %call3, null, !dbg !1699
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1701

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @closedir(ptr noundef nonnull %call2), !dbg !1702
  br label %cleanup, !dbg !1704

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @AcquireMagickMemory(i64 noundef 4377) #25, !dbg !1705
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1684, metadata !DIExpression()), !dbg !1691
  %cmp9 = icmp eq ptr %call8, null, !dbg !1706
  br i1 %cmp9, label %if.then10, label %while.cond.preheader, !dbg !1707

while.cond.preheader:                             ; preds = %if.end7
  %call.i = tail call ptr @__errno_location() #22, !dbg !1691
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %attributes.i, i64 0, i32 3
  br label %while.cond.outer.outer, !dbg !1708

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #19, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1690, metadata !DIExpression()), !dbg !1709
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1709
  %call11 = tail call ptr @__errno_location() #22, !dbg !1709
  %0 = load i32, ptr %call11, align 4, !dbg !1709, !tbaa !1319
  %call12 = call ptr @GetExceptionMessage(i32 noundef %0) #19, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1687, metadata !DIExpression()), !dbg !1710
  %call13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call12) #19, !dbg !1709
  %call14 = call ptr @DestroyString(ptr noundef %call12) #19, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1687, metadata !DIExpression()), !dbg !1710
  call void @CatchException(ptr noundef nonnull %exception) #19, !dbg !1709
  %call15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1709
  call void @MagickCoreTerminus() #19, !dbg !1709
  call void @_exit(i32 noundef 1) #23, !dbg !1709
  unreachable, !dbg !1709

while.cond:                                       ; preds = %while.cond.outer, %while.body
  call void @llvm.dbg.value(metadata i64 %max_entries.0.ph.ph, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %filelist.0.ph.ph, metadata !1682, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1711, metadata !DIExpression()) #19, !dbg !1719
  call void @llvm.dbg.value(metadata ptr undef, metadata !1717, metadata !DIExpression()) #19, !dbg !1719
  call void @llvm.dbg.value(metadata ptr undef, metadata !1718, metadata !DIExpression()) #19, !dbg !1719
  store i32 0, ptr %call.i, align 4, !dbg !1721, !tbaa !1319
  %call2.i = call ptr @readdir(ptr noundef nonnull %call2) #19, !dbg !1722
  %1 = load i32, ptr %call.i, align 4, !dbg !1723, !tbaa !1319
  %cmp18 = icmp eq i32 %1, 0, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !1685, metadata !DIExpression()), !dbg !1691
  %cmp19 = icmp ne ptr %call2.i, null
  %or.cond = select i1 %cmp18, i1 %cmp19, i1 false, !dbg !1725
  br i1 %or.cond, label %while.body, label %while.end, !dbg !1725

while.body:                                       ; preds = %while.cond
  %d_name = getelementptr inbounds %struct.dirent, ptr %call2.i, i64 0, i32 4, !dbg !1726
  %2 = load i8, ptr %d_name, align 1, !dbg !1729, !tbaa !471
  %cmp20 = icmp eq i8 %2, 46, !dbg !1730
  br i1 %cmp20, label %while.cond, label %if.end23, !dbg !1731, !llvm.loop !1732

if.end23:                                         ; preds = %while.body
  %d_name.le = getelementptr inbounds %struct.dirent, ptr %call2.i, i64 0, i32 4, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %d_name.le, metadata !575, metadata !DIExpression()) #19, !dbg !1734
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1737
  call void @llvm.dbg.declare(metadata ptr %attributes.i, metadata !581, metadata !DIExpression()) #19, !dbg !1738
  %cmp1.i = icmp eq i8 %2, 0, !dbg !1739
  br i1 %cmp1.i, label %IsPathDirectory.exit.thread, label %GetPathAttributes.exit.i, !dbg !1740

GetPathAttributes.exit.i:                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata ptr %d_name.le, metadata !591, metadata !DIExpression()) #19, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !596, metadata !DIExpression()) #19, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %d_name.le, metadata !600, metadata !DIExpression()) #19, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !605, metadata !DIExpression()) #19, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %d_name.le, metadata !608, metadata !DIExpression()) #19, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !611, metadata !DIExpression()) #19, !dbg !1745
  %call.i.i.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %d_name.le, ptr noundef nonnull %attributes.i) #19, !dbg !1747
  %cmp2.i.not.i = icmp eq i32 %call.i.i.i.i, 0, !dbg !1748
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1741
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1734
  br i1 %cmp2.i.not.i, label %IsPathDirectory.exit, label %IsPathDirectory.exit.thread, !dbg !1749

IsPathDirectory.exit.thread:                      ; preds = %if.end23, %GetPathAttributes.exit.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1750
  br label %lor.lhs.false, !dbg !1751

IsPathDirectory.exit:                             ; preds = %GetPathAttributes.exit.i
  %3 = load i32, ptr %st_mode.i, align 8, !dbg !1752, !tbaa !643
  %and.i = and i32 %3, 61440, !dbg !1752
  %cmp7.not.i = icmp eq i32 %and.i, 16384, !dbg !1752
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1750
  br i1 %cmp7.not.i, label %if.then34, label %lor.lhs.false, !dbg !1751

lor.lhs.false:                                    ; preds = %IsPathDirectory.exit.thread, %IsPathDirectory.exit
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !1685, metadata !DIExpression()), !dbg !1691
  %call31 = call i32 @GlobExpression(ptr noundef nonnull %d_name.le, ptr noundef %pattern, i32 noundef 0) #19, !dbg !1753
  %cmp32.not = icmp eq i32 %call31, 0, !dbg !1754
  br i1 %cmp32.not, label %while.cond.outer, label %if.then34, !dbg !1755, !llvm.loop !1732

if.then34:                                        ; preds = %lor.lhs.false, %IsPathDirectory.exit
  %4 = load i64, ptr %number_entries, align 8, !dbg !1756, !tbaa !888
  %cmp35.not = icmp ult i64 %4, %max_entries.0.ph.ph, !dbg !1759
  br i1 %cmp35.not, label %if.end43, label %if.then37, !dbg !1760

if.then37:                                        ; preds = %if.then34
  %shl = shl i64 %max_entries.0.ph.ph, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1686, metadata !DIExpression()), !dbg !1691
  %call38 = call ptr @ResizeQuantumMemory(ptr noundef %filelist.0.ph.ph, i64 noundef %shl, i64 noundef 8) #24, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %call38, metadata !1682, metadata !DIExpression()), !dbg !1691
  %cmp39 = icmp eq ptr %call38, null, !dbg !1764
  br i1 %cmp39, label %while.end, label %if.end43, !dbg !1766

if.end43:                                         ; preds = %if.then37, %if.then34
  %filelist.1 = phi ptr [ %call38, %if.then37 ], [ %filelist.0.ph.ph, %if.then34 ], !dbg !1691
  %max_entries.1 = phi i64 [ %shl, %if.then37 ], [ %max_entries.0.ph.ph, %if.then34 ], !dbg !1691
  call void @llvm.dbg.value(metadata i64 %max_entries.1, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %filelist.1, metadata !1682, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !1685, metadata !DIExpression()), !dbg !1691
  %call46 = call ptr @AcquireString(ptr noundef nonnull %d_name.le) #19, !dbg !1767
  %5 = load i64, ptr %number_entries, align 8, !dbg !1768, !tbaa !888
  %arrayidx = getelementptr inbounds ptr, ptr %filelist.1, i64 %5, !dbg !1769
  store ptr %call46, ptr %arrayidx, align 8, !dbg !1770, !tbaa !904
  %inc = add i64 %5, 1, !dbg !1771
  store i64 %inc, ptr %number_entries, align 8, !dbg !1771, !tbaa !888
  br label %while.cond.outer.outer, !dbg !1772, !llvm.loop !1732

while.cond.outer.outer:                           ; preds = %if.end43, %while.cond.preheader
  %filelist.0.ph.ph = phi ptr [ %filelist.1, %if.end43 ], [ %call3, %while.cond.preheader ]
  %max_entries.0.ph.ph = phi i64 [ %max_entries.1, %if.end43 ], [ 2048, %while.cond.preheader ]
  br label %while.cond.outer, !dbg !1708

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %lor.lhs.false
  br label %while.cond, !dbg !1708

while.end:                                        ; preds = %if.then37, %while.cond
  %filelist.3 = phi ptr [ %filelist.0.ph.ph, %while.cond ], [ null, %if.then37 ], !dbg !1691
  call void @llvm.dbg.value(metadata ptr %filelist.3, metadata !1682, metadata !DIExpression()), !dbg !1691
  %call48 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call8) #19, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %call48, metadata !1684, metadata !DIExpression()), !dbg !1691
  %call49 = call i32 @closedir(ptr noundef nonnull %call2), !dbg !1774
  %cmp50 = icmp eq ptr %filelist.3, null, !dbg !1775
  br i1 %cmp50, label %cleanup, label %if.end53, !dbg !1777

if.end53:                                         ; preds = %while.end
  %6 = load i64, ptr %number_entries, align 8, !dbg !1778, !tbaa !888
  call void @qsort(ptr noundef nonnull %filelist.3, i64 noundef %6, i64 noundef 8, ptr noundef nonnull @FileCompare) #19, !dbg !1779
  br label %cleanup, !dbg !1780

cleanup:                                          ; preds = %while.end, %entry, %if.end53, %if.then5
  %retval.0 = phi ptr [ null, %if.then5 ], [ %filelist.3, %if.end53 ], [ null, %entry ], [ null, %while.end ], !dbg !1691
  ret ptr %retval.0, !dbg !1781
}

declare !dbg !1782 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !1785 ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1788 ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1,2)
declare !dbg !1791 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !1794 i32 @IsEventLogging() local_unnamed_addr #3

declare !dbg !1797 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !1798 i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetExecutionPath(ptr noundef %path, i64 noundef %extent) local_unnamed_addr #0 !dbg !1801 {
lor.lhs.false.i:
  %attributes.i = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %path, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1806, metadata !DIExpression()), !dbg !1808
  store i8 0, ptr %path, align 1, !dbg !1809, !tbaa !471
  %call = tail call ptr @getcwd(ptr noundef nonnull %path, i64 noundef %extent) #19, !dbg !1810
  call void @llvm.dbg.value(metadata ptr %call, metadata !1807, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %path, metadata !619, metadata !DIExpression()) #19, !dbg !1811
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %attributes.i, metadata !623, metadata !DIExpression()) #19, !dbg !1814
  %0 = load i8, ptr %path, align 1, !dbg !1815, !tbaa !471
  %cmp1.i = icmp eq i8 %0, 0, !dbg !1816
  br i1 %cmp1.i, label %IsPathAccessible.exit, label %GetPathAttributes.exit.i, !dbg !1817

GetPathAttributes.exit.i:                         ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()) #19, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !596, metadata !DIExpression()) #19, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !605, metadata !DIExpression()) #19, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %attributes.i, metadata !611, metadata !DIExpression()) #19, !dbg !1822
  %call.i.i.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes.i) #19, !dbg !1824
  %cmp2.i.not.i = icmp eq i32 %call.i.i.i.i, 0, !dbg !1825
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1818
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not.i, metadata !622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1811
  br i1 %cmp2.i.not.i, label %if.end6.i, label %IsPathAccessible.exit, !dbg !1826

if.end6.i:                                        ; preds = %GetPathAttributes.exit.i
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %attributes.i, i64 0, i32 3, !dbg !1827
  %1 = load i32, ptr %st_mode.i, align 8, !dbg !1827, !tbaa !643
  %and.i = and i32 %1, 61440, !dbg !1827
  %cmp7.not.i = icmp eq i32 %and.i, 32768, !dbg !1827
  br i1 %cmp7.not.i, label %if.end12.i, label %IsPathAccessible.exit, !dbg !1828

if.end12.i:                                       ; preds = %if.end6.i
  call void @llvm.dbg.value(metadata ptr %path, metadata !651, metadata !DIExpression()) #19, !dbg !1829
  call void @llvm.dbg.value(metadata i32 0, metadata !656, metadata !DIExpression()) #19, !dbg !1829
  %call.i23.i = call i32 @access(ptr noundef nonnull %path, i32 noundef 0) #19, !dbg !1831
  %cmp14.not.i = icmp eq i32 %call.i23.i, 0, !dbg !1832
  %..i = zext i1 %cmp14.not.i to i32, !dbg !1811
  br label %IsPathAccessible.exit, !dbg !1811

IsPathAccessible.exit:                            ; preds = %lor.lhs.false.i, %GetPathAttributes.exit.i, %if.end6.i, %if.end12.i
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i ], [ 0, %GetPathAttributes.exit.i ], [ 0, %if.end6.i ], [ %..i, %if.end12.i ], !dbg !1811
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes.i) #19, !dbg !1833
  ret i32 %retval.0.i, !dbg !1834
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPathAccessible(ptr noundef %path) local_unnamed_addr #0 !dbg !620 {
entry:
  %attributes = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %path, metadata !619, metadata !DIExpression()), !dbg !1835
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes) #19, !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !623, metadata !DIExpression()), !dbg !1837
  %cmp = icmp eq ptr %path, null, !dbg !1838
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1839

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %path, align 1, !dbg !1840, !tbaa !471
  %cmp1 = icmp eq i8 %0, 0, !dbg !1841
  br i1 %cmp1, label %cleanup, label %GetPathAttributes.exit, !dbg !1842

GetPathAttributes.exit:                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()) #19, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !596, metadata !DIExpression()) #19, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !605, metadata !DIExpression()) #19, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !611, metadata !DIExpression()) #19, !dbg !1847
  %call.i.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes) #19, !dbg !1849
  %cmp2.i.not = icmp eq i32 %call.i.i.i, 0, !dbg !1850
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not, metadata !597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1843
  call void @llvm.dbg.value(metadata i1 %cmp2.i.not, metadata !622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1835
  br i1 %cmp2.i.not, label %if.end6, label %cleanup, !dbg !1851

if.end6:                                          ; preds = %GetPathAttributes.exit
  %st_mode = getelementptr inbounds %struct.stat, ptr %attributes, i64 0, i32 3, !dbg !1852
  %1 = load i32, ptr %st_mode, align 8, !dbg !1852, !tbaa !643
  %and = and i32 %1, 61440, !dbg !1852
  %cmp7.not = icmp eq i32 %and, 32768, !dbg !1852
  br i1 %cmp7.not, label %if.end12, label %cleanup, !dbg !1853

if.end12:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata ptr %path, metadata !651, metadata !DIExpression()) #19, !dbg !1854
  call void @llvm.dbg.value(metadata i32 0, metadata !656, metadata !DIExpression()) #19, !dbg !1854
  %call.i23 = call i32 @access(ptr noundef nonnull %path, i32 noundef 0) #19, !dbg !1856
  %cmp14.not = icmp eq i32 %call.i23, 0, !dbg !1857
  %. = zext i1 %cmp14.not to i32, !dbg !1835
  br label %cleanup, !dbg !1835

cleanup:                                          ; preds = %if.end12, %if.end6, %GetPathAttributes.exit, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %GetPathAttributes.exit ], [ 0, %if.end6 ], [ %., %if.end12 ], !dbg !1835
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes) #19, !dbg !1858
  ret i32 %retval.0, !dbg !1858
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i64 @GetMagickPageSize() local_unnamed_addr #12 !dbg !305 {
entry:
  %.b4 = load i1, ptr @GetMagickPageSize.page_size, align 8, !dbg !1859
  br i1 %.b4, label %return, label %if.then2, !dbg !1861

if.then2:                                         ; preds = %entry
  store i1 true, ptr @GetMagickPageSize.page_size, align 8, !dbg !1862
  br label %return, !dbg !1864

return:                                           ; preds = %entry, %if.then2
  ret i64 16384, !dbg !1865
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetPathAttributes(ptr noundef %path, ptr noundef %attributes) local_unnamed_addr #0 !dbg !592 {
entry:
  call void @llvm.dbg.value(metadata ptr %path, metadata !591, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !596, metadata !DIExpression()), !dbg !1866
  %cmp = icmp eq ptr %path, null, !dbg !1867
  br i1 %cmp, label %if.then, label %if.end, !dbg !1869

if.then:                                          ; preds = %entry
  %call = tail call ptr @__errno_location() #22, !dbg !1870
  store i32 22, ptr %call, align 4, !dbg !1872, !tbaa !1319
  br label %cleanup, !dbg !1873

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %path, metadata !600, metadata !DIExpression()) #19, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !605, metadata !DIExpression()) #19, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %path, metadata !608, metadata !DIExpression()) #19, !dbg !1876
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !611, metadata !DIExpression()) #19, !dbg !1876
  %call.i.i = tail call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %path, ptr noundef nonnull %attributes) #19, !dbg !1878
  %cmp2 = icmp eq i32 %call.i.i, 0, !dbg !1879
  %cond = zext i1 %cmp2 to i32, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %cond, metadata !597, metadata !DIExpression()), !dbg !1866
  br label %cleanup, !dbg !1881

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end ], !dbg !1866
  ret i32 %retval.0, !dbg !1882
}

declare !dbg !1883 i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #3

declare !dbg !1885 i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1889 i32 @IsGeometry(ptr noundef) local_unnamed_addr #3

declare !dbg !1890 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPathComponents(ptr noundef %path, ptr nocapture noundef %number_components) local_unnamed_addr #0 !dbg !1893 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception43 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %path, metadata !1897, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata ptr %number_components, metadata !1898, metadata !DIExpression()), !dbg !1914
  %cmp = icmp eq ptr %path, null, !dbg !1915
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1917

if.end:                                           ; preds = %entry
  store i64 1, ptr %number_components, align 8, !dbg !1918, !tbaa !888
  call void @llvm.dbg.value(metadata ptr %path, metadata !1900, metadata !DIExpression()), !dbg !1914
  br label %for.cond, !dbg !1919

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = phi i64 [ 1, %if.end ], [ %2, %for.inc ]
  %p.0 = phi ptr [ %path, %if.end ], [ %incdec.ptr, %for.inc ], !dbg !1921
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1900, metadata !DIExpression()), !dbg !1914
  %1 = load i8, ptr %p.0, align 1, !dbg !1922, !tbaa !471
  switch i8 %1, label %for.inc [
    i8 0, label %for.end
    i8 47, label %if.then6
  ], !dbg !1924

if.then6:                                         ; preds = %for.cond
  %inc = add i64 %0, 1, !dbg !1925
  store i64 %inc, ptr %number_components, align 8, !dbg !1925, !tbaa !888
  br label %for.inc, !dbg !1927

for.inc:                                          ; preds = %for.cond, %if.then6
  %2 = phi i64 [ %0, %for.cond ], [ %inc, %if.then6 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1900, metadata !DIExpression()), !dbg !1914
  br label %for.cond, !dbg !1929, !llvm.loop !1930

for.end:                                          ; preds = %for.cond
  %add = add i64 %0, 1, !dbg !1932
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #20, !dbg !1933
  call void @llvm.dbg.value(metadata ptr %call, metadata !1899, metadata !DIExpression()), !dbg !1914
  %cmp8 = icmp eq ptr %call, null, !dbg !1934
  br i1 %cmp8, label %if.then10, label %for.cond17.preheader, !dbg !1935

for.cond17.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %path, metadata !1900, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !1914
  %3 = load i64, ptr %number_components, align 8, !dbg !1936, !tbaa !888
  %cmp1892 = icmp sgt i64 %3, 0, !dbg !1937
  br i1 %cmp1892, label %for.cond21.preheader, label %for.end58, !dbg !1938

if.then10:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #19, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1906, metadata !DIExpression()), !dbg !1939
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1939
  %call11 = tail call ptr @__errno_location() #22, !dbg !1939
  %4 = load i32, ptr %call11, align 4, !dbg !1939, !tbaa !1319
  %call12 = call ptr @GetExceptionMessage(i32 noundef %4) #19, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1903, metadata !DIExpression()), !dbg !1940
  %call13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1393, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call12) #19, !dbg !1939
  %call14 = call ptr @DestroyString(ptr noundef %call12) #19, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1903, metadata !DIExpression()), !dbg !1940
  call void @CatchException(ptr noundef nonnull %exception) #19, !dbg !1939
  %call15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #19, !dbg !1939
  call void @MagickCoreTerminus() #19, !dbg !1939
  call void @_exit(i32 noundef 1) #23, !dbg !1939
  unreachable, !dbg !1939

for.cond21.preheader:                             ; preds = %for.cond17.preheader, %if.end49
  %p.194 = phi ptr [ %add.ptr, %if.end49 ], [ %path, %for.cond17.preheader ]
  %i.093 = phi i64 [ %inc57, %if.end49 ], [ 0, %for.cond17.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.194, metadata !1900, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %i.093, metadata !1902, metadata !DIExpression()), !dbg !1914
  br label %for.cond21, !dbg !1941

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc33
  %q.0 = phi ptr [ %incdec.ptr34, %for.inc33 ], [ %p.194, %for.cond21.preheader ], !dbg !1943
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1901, metadata !DIExpression()), !dbg !1914
  %5 = load i8, ptr %q.0, align 1, !dbg !1944, !tbaa !471
  switch i8 %5, label %for.inc33 [
    i8 0, label %for.end35
    i8 47, label %for.end35
  ], !dbg !1941

for.inc33:                                        ; preds = %for.cond21
  %incdec.ptr34 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !1946
  call void @llvm.dbg.value(metadata ptr %incdec.ptr34, metadata !1901, metadata !DIExpression()), !dbg !1914
  br label %for.cond21, !dbg !1947, !llvm.loop !1948

for.end35:                                        ; preds = %for.cond21, %for.cond21
  %sub.ptr.lhs.cast = ptrtoint ptr %q.0 to i64, !dbg !1950
  %sub.ptr.rhs.cast = ptrtoint ptr %p.194 to i64, !dbg !1950
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1950
  %add36 = add i64 %sub.ptr.sub, 4096, !dbg !1951
  %call37 = tail call ptr @AcquireQuantumMemory(i64 noundef %add36, i64 noundef 1) #20, !dbg !1952
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.093, !dbg !1953
  store ptr %call37, ptr %arrayidx, align 8, !dbg !1954, !tbaa !904
  %cmp39 = icmp eq ptr %call37, null, !dbg !1955
  br i1 %cmp39, label %if.then41, label %if.end49, !dbg !1956

if.then41:                                        ; preds = %for.end35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception43) #19, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %exception43, metadata !1913, metadata !DIExpression()), !dbg !1957
  call void @GetExceptionInfo(ptr noundef nonnull %exception43) #19, !dbg !1957
  %call44 = tail call ptr @__errno_location() #22, !dbg !1957
  %6 = load i32, ptr %call44, align 4, !dbg !1957, !tbaa !1319
  %call45 = call ptr @GetExceptionMessage(i32 noundef %6) #19, !dbg !1957
  call void @llvm.dbg.value(metadata ptr %call45, metadata !1907, metadata !DIExpression()), !dbg !1958
  %call46 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1403, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call45) #19, !dbg !1957
  %call47 = call ptr @DestroyString(ptr noundef %call45) #19, !dbg !1957
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1907, metadata !DIExpression()), !dbg !1958
  call void @CatchException(ptr noundef nonnull %exception43) #19, !dbg !1957
  %call48 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception43) #19, !dbg !1957
  call void @MagickCoreTerminus() #19, !dbg !1957
  call void @_exit(i32 noundef 1) #23, !dbg !1957
  unreachable, !dbg !1957

if.end49:                                         ; preds = %for.end35
  %add54 = add nsw i64 %sub.ptr.sub, 1, !dbg !1959
  %call55 = tail call i64 @CopyMagickString(ptr noundef nonnull %call37, ptr noundef nonnull %p.194, i64 noundef %add54) #19, !dbg !1960
  %add.ptr = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !1961
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1900, metadata !DIExpression()), !dbg !1914
  %inc57 = add nuw nsw i64 %i.093, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !1902, metadata !DIExpression()), !dbg !1914
  %7 = load i64, ptr %number_components, align 8, !dbg !1936, !tbaa !888
  %cmp18 = icmp slt i64 %inc57, %7, !dbg !1937
  br i1 %cmp18, label %for.cond21.preheader, label %for.end58, !dbg !1938, !llvm.loop !1963

for.end58:                                        ; preds = %if.end49, %for.cond17.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond17.preheader ], [ %inc57, %if.end49 ], !dbg !1965
  %arrayidx59 = getelementptr inbounds ptr, ptr %call, i64 %i.0.lcssa, !dbg !1966
  store ptr null, ptr %arrayidx59, align 8, !dbg !1967, !tbaa !904
  br label %cleanup, !dbg !1968

cleanup:                                          ; preds = %entry, %for.end58
  %retval.0 = phi ptr [ %call, %for.end58 ], [ null, %entry ], !dbg !1914
  ret ptr %retval.0, !dbg !1969
}

; Function Attrs: nofree nounwind
declare !dbg !1970 noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1973 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare !dbg !1976 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #13

declare !dbg !1979 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !1982 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @FileCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !1992, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %y, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %x, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %y, metadata !1995, metadata !DIExpression()), !dbg !1996
  %0 = load ptr, ptr %x, align 8, !dbg !1997, !tbaa !904
  %1 = load ptr, ptr %y, align 8, !dbg !1998, !tbaa !904
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #19, !dbg !1999
  ret i32 %call, !dbg !2000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @MagickDelay(i64 noundef %milliseconds) local_unnamed_addr #14 !dbg !2001 {
entry:
  call void @llvm.dbg.value(metadata i64 %milliseconds, metadata !2006, metadata !DIExpression()), !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i64 @MultilineCensus(ptr noundef readonly %label) local_unnamed_addr #15 !dbg !2009 {
entry:
  call void @llvm.dbg.value(metadata ptr %label, metadata !2013, metadata !DIExpression()), !dbg !2015
  %cmp = icmp eq ptr %label, null, !dbg !2016
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !2018

for.cond:                                         ; preds = %entry, %for.inc
  %label.addr.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %label, %entry ]
  %number_lines.0 = phi i64 [ %number_lines.1, %for.inc ], [ 1, %entry ], !dbg !2019
  call void @llvm.dbg.value(metadata i64 %number_lines.0, metadata !2014, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata ptr %label.addr.0, metadata !2013, metadata !DIExpression()), !dbg !2015
  %0 = load i8, ptr %label.addr.0, align 1, !dbg !2021, !tbaa !471
  switch i8 %0, label %for.inc [
    i8 0, label %cleanup
    i8 10, label %if.then6
  ], !dbg !2023

if.then6:                                         ; preds = %for.cond
  %inc = add i64 %number_lines.0, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2014, metadata !DIExpression()), !dbg !2015
  br label %for.inc, !dbg !2026

for.inc:                                          ; preds = %for.cond, %if.then6
  %number_lines.1 = phi i64 [ %inc, %if.then6 ], [ %number_lines.0, %for.cond ], !dbg !2019
  call void @llvm.dbg.value(metadata i64 %number_lines.1, metadata !2014, metadata !DIExpression()), !dbg !2015
  %incdec.ptr = getelementptr inbounds i8, ptr %label.addr.0, i64 1, !dbg !2027
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2013, metadata !DIExpression()), !dbg !2015
  br label %for.cond, !dbg !2028, !llvm.loop !2029

cleanup:                                          ; preds = %for.cond, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %number_lines.0, %for.cond ], !dbg !2015
  ret i64 %retval.0, !dbg !2031
}

; Function Attrs: nounwind uwtable
define hidden i32 @ShredFile(ptr noundef readonly %path) local_unnamed_addr #0 !dbg !2032 {
entry:
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %path, metadata !2034, metadata !DIExpression()), !dbg !2064
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #19, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !2041, metadata !DIExpression()), !dbg !2066
  %cmp = icmp eq ptr %path, null, !dbg !2067
  br i1 %cmp, label %cleanup82, label %lor.lhs.false, !dbg !2069

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %path, align 1, !dbg !2070, !tbaa !471
  %cmp1 = icmp eq i8 %0, 0, !dbg !2071
  br i1 %cmp1, label %cleanup82, label %if.end, !dbg !2072

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.30) #19, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %call, metadata !2035, metadata !DIExpression()), !dbg !2064
  %cmp3 = icmp eq ptr %call, null, !dbg !2074
  br i1 %cmp3, label %if.then5, label %if.end11, !dbg !2076

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %path, metadata !2077, metadata !DIExpression()) #19, !dbg !2080
  %call.i = tail call i32 @unlink(ptr noundef nonnull %path) #19, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2037, metadata !DIExpression()), !dbg !2064
  %cmp7 = icmp ne i32 %call.i, -1, !dbg !2084
  br label %cleanup82, !dbg !2086

if.end11:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %path, metadata !364, metadata !DIExpression()) #19, !dbg !2087
  call void @llvm.dbg.value(metadata i32 129, metadata !372, metadata !DIExpression()) #19, !dbg !2087
  call void @llvm.dbg.value(metadata i32 384, metadata !373, metadata !DIExpression()) #19, !dbg !2087
  %call.i118 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %path, i32 noundef 129, i32 noundef 384) #19, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %call.i118, metadata !2036, metadata !DIExpression()), !dbg !2064
  %cmp13 = icmp eq i32 %call.i118, -1, !dbg !2090
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !2092

if.then15:                                        ; preds = %if.end11
  call void @llvm.dbg.value(metadata ptr %path, metadata !2077, metadata !DIExpression()) #19, !dbg !2093
  %call.i119 = tail call i32 @unlink(ptr noundef nonnull %path) #19, !dbg !2096
  call void @llvm.dbg.value(metadata i32 undef, metadata !2037, metadata !DIExpression()), !dbg !2064
  br label %cleanup82, !dbg !2097

if.end17:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i64 262142, metadata !2040, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %call.i118, metadata !384, metadata !DIExpression()) #19, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !389, metadata !DIExpression()) #19, !dbg !2098
  %call.i120 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i118, ptr noundef nonnull %file_stats) #19, !dbg !2101
  %cmp19 = icmp eq i32 %call.i120, 0, !dbg !2102
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %1 = load i64, ptr %st_size, align 8
  %cmp21 = icmp ne i64 %1, 0
  %or.cond = select i1 %cmp19, i1 %cmp21, i1 false, !dbg !2103
  %2 = call i64 @llvm.umin.i64(i64 %1, i64 262142) #19
  %spec.select = select i1 %or.cond, i64 %2, i64 262142, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2040, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %1, metadata !2038, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 0, metadata !2039, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %call, metadata !2104, metadata !DIExpression()) #19, !dbg !2110
  %call.i121138 = call i64 @strtol(ptr nocapture noundef nonnull %call, ptr noundef null, i32 noundef 10) #19, !dbg !2112
  %3 = trunc i64 %call.i121138 to i32, !dbg !2113
  %cmp30141 = icmp sgt i32 %3, 0, !dbg !2113
  br i1 %cmp30141, label %for.body.lr.ph, label %for.end71, !dbg !2114

for.body.lr.ph:                                   ; preds = %if.end17
  %cmp39135 = icmp sgt i64 %1, 0
  br i1 %cmp39135, label %for.body.us, label %for.body, !dbg !2115

for.body.us:                                      ; preds = %for.body.lr.ph, %for.cond38.for.inc70_crit_edge.us
  %i.0142.us = phi i64 [ %inc.us, %for.cond38.for.inc70_crit_edge.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.0142.us, metadata !2039, metadata !DIExpression()), !dbg !2064
  %call32.us = call i64 @lseek(i32 noundef %call.i118, i64 noundef 0, i32 noundef 0) #19, !dbg !2116
  %cmp33.us = icmp slt i64 %call32.us, 0, !dbg !2118
  br i1 %cmp33.us, label %for.end71, label %if.end36.us, !dbg !2119

if.end36.us:                                      ; preds = %for.body.us
  %call37.us = call ptr @AcquireRandomInfo() #19, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %call37.us, metadata !2042, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2121
  %cmp43.us = icmp eq i64 %i.0142.us, 0
  br i1 %cmp43.us, label %for.body41.us.us, label %for.body41.us146, !dbg !2122

for.body41.us146:                                 ; preds = %if.end36.us, %for.inc.us157
  %j.0136.us147 = phi i64 [ %add.us159, %for.inc.us157 ], [ 0, %if.end36.us ]
  call void @llvm.dbg.value(metadata i64 %j.0136.us147, metadata !2050, metadata !DIExpression()), !dbg !2121
  %call42.us148 = call ptr @GetRandomKey(ptr noundef %call37.us, i64 noundef %spec.select) #19, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %call42.us148, metadata !2052, metadata !DIExpression()), !dbg !2124
  %call47.us149 = call ptr @GetStringInfoDatum(ptr noundef %call42.us148) #19, !dbg !2125
  %sub.us150 = sub i64 %1, %j.0136.us147, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2127, metadata !DIExpression()) #19, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %sub.us150, metadata !2132, metadata !DIExpression()) #19, !dbg !2133
  %4 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %sub.us150) #19, !dbg !2133
  %call49.us151 = call i64 @write(i32 noundef %call.i118, ptr noundef %call47.us149, i64 noundef %4) #19, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %call49.us151, metadata !2051, metadata !DIExpression()), !dbg !2121
  %call50.us152 = call ptr @DestroyStringInfo(ptr noundef %call42.us148) #19, !dbg !2136
  call void @llvm.dbg.value(metadata ptr %call50.us152, metadata !2052, metadata !DIExpression()), !dbg !2124
  %cmp51.us153 = icmp slt i64 %call49.us151, 1, !dbg !2137
  br i1 %cmp51.us153, label %if.then53.us154, label %for.inc.us157, !dbg !2139

if.then53.us154:                                  ; preds = %for.body41.us146
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()), !dbg !2121
  %call54.us155 = tail call ptr @__errno_location() #22, !dbg !2140
  %5 = load i32, ptr %call54.us155, align 4, !dbg !2140, !tbaa !1319
  %cmp55.not.us156 = icmp eq i32 %5, 4, !dbg !2143
  br i1 %cmp55.not.us156, label %for.inc.us157, label %select.unfold, !dbg !2144

for.inc.us157:                                    ; preds = %if.then53.us154, %for.body41.us146
  %count.0.us158 = phi i64 [ 0, %if.then53.us154 ], [ %call49.us151, %for.body41.us146 ], !dbg !2124
  call void @llvm.dbg.value(metadata i64 undef, metadata !2051, metadata !DIExpression()), !dbg !2121
  %add.us159 = add nsw i64 %count.0.us158, %j.0136.us147, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %add.us159, metadata !2050, metadata !DIExpression()), !dbg !2121
  %cmp39.us160 = icmp sgt i64 %1, %add.us159, !dbg !2146
  br i1 %cmp39.us160, label %for.body41.us146, label %for.cond38.for.inc70_crit_edge.us, !dbg !2115, !llvm.loop !2147

for.cond38.for.inc70_crit_edge.us:                ; preds = %for.inc.us157, %for.inc.us.us
  %call60.us = call ptr @DestroyRandomInfo(ptr noundef %call37.us) #19, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %call60.us, metadata !2042, metadata !DIExpression()), !dbg !2121
  %inc.us = add nuw nsw i64 %i.0142.us, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2039, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %call, metadata !2104, metadata !DIExpression()) #19, !dbg !2110
  %call.i121.us = call i64 @strtol(ptr nocapture noundef nonnull %call, ptr noundef null, i32 noundef 10) #19, !dbg !2112
  %sext.us = shl i64 %call.i121.us, 32, !dbg !2151
  %conv29.us = ashr exact i64 %sext.us, 32, !dbg !2151
  %cmp30.us = icmp slt i64 %inc.us, %conv29.us, !dbg !2113
  br i1 %cmp30.us, label %for.body.us, label %for.end71, !dbg !2114, !llvm.loop !2152

for.body41.us.us:                                 ; preds = %if.end36.us, %for.inc.us.us
  %j.0136.us.us = phi i64 [ %add.us.us, %for.inc.us.us ], [ 0, %if.end36.us ]
  call void @llvm.dbg.value(metadata i64 %j.0136.us.us, metadata !2050, metadata !DIExpression()), !dbg !2121
  %call42.us.us = call ptr @GetRandomKey(ptr noundef %call37.us, i64 noundef %spec.select) #19, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %call42.us.us, metadata !2052, metadata !DIExpression()), !dbg !2124
  call void @ResetStringInfo(ptr noundef %call42.us.us) #19, !dbg !2154
  %call47.us.us = call ptr @GetStringInfoDatum(ptr noundef %call42.us.us) #19, !dbg !2125
  %sub.us.us = sub i64 %1, %j.0136.us.us, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2127, metadata !DIExpression()) #19, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %sub.us.us, metadata !2132, metadata !DIExpression()) #19, !dbg !2133
  %6 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %sub.us.us) #19, !dbg !2133
  %call49.us.us = call i64 @write(i32 noundef %call.i118, ptr noundef %call47.us.us, i64 noundef %6) #19, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %call49.us.us, metadata !2051, metadata !DIExpression()), !dbg !2121
  %call50.us.us = call ptr @DestroyStringInfo(ptr noundef %call42.us.us) #19, !dbg !2136
  call void @llvm.dbg.value(metadata ptr %call50.us.us, metadata !2052, metadata !DIExpression()), !dbg !2124
  %cmp51.us.us = icmp slt i64 %call49.us.us, 1, !dbg !2137
  br i1 %cmp51.us.us, label %if.then53.us.us, label %for.inc.us.us, !dbg !2139

if.then53.us.us:                                  ; preds = %for.body41.us.us
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()), !dbg !2121
  %call54.us.us = tail call ptr @__errno_location() #22, !dbg !2140
  %7 = load i32, ptr %call54.us.us, align 4, !dbg !2140, !tbaa !1319
  %cmp55.not.us.us = icmp eq i32 %7, 4, !dbg !2143
  br i1 %cmp55.not.us.us, label %for.inc.us.us, label %select.unfold, !dbg !2144

for.inc.us.us:                                    ; preds = %if.then53.us.us, %for.body41.us.us
  %count.0.us.us = phi i64 [ 0, %if.then53.us.us ], [ %call49.us.us, %for.body41.us.us ], !dbg !2124
  call void @llvm.dbg.value(metadata i64 undef, metadata !2051, metadata !DIExpression()), !dbg !2121
  %add.us.us = add nsw i64 %count.0.us.us, %j.0136.us.us, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %add.us.us, metadata !2050, metadata !DIExpression()), !dbg !2121
  %cmp39.us.us = icmp sgt i64 %1, %add.us.us, !dbg !2146
  br i1 %cmp39.us.us, label %for.body41.us.us, label %for.cond38.for.inc70_crit_edge.us, !dbg !2115, !llvm.loop !2147

for.body:                                         ; preds = %for.body.lr.ph, %if.end36
  %i.0142 = phi i64 [ %inc, %if.end36 ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.0142, metadata !2039, metadata !DIExpression()), !dbg !2064
  %call32 = call i64 @lseek(i32 noundef %call.i118, i64 noundef 0, i32 noundef 0) #19, !dbg !2116
  %cmp33 = icmp slt i64 %call32, 0, !dbg !2118
  br i1 %cmp33, label %for.end71, label %if.end36, !dbg !2119

if.end36:                                         ; preds = %for.body
  %call37 = call ptr @AcquireRandomInfo() #19, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2042, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2121
  %call60 = call ptr @DestroyRandomInfo(ptr noundef %call37) #19, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %call60, metadata !2042, metadata !DIExpression()), !dbg !2121
  %inc = add nuw nsw i64 %i.0142, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2039, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %call, metadata !2104, metadata !DIExpression()) #19, !dbg !2110
  %call.i121 = call i64 @strtol(ptr nocapture noundef nonnull %call, ptr noundef null, i32 noundef 10) #19, !dbg !2112
  %sext = shl i64 %call.i121, 32, !dbg !2151
  %conv29 = ashr exact i64 %sext, 32, !dbg !2151
  %cmp30 = icmp slt i64 %inc, %conv29, !dbg !2113
  br i1 %cmp30, label %for.body, label %for.end71, !dbg !2114, !llvm.loop !2152

select.unfold:                                    ; preds = %if.then53.us154, %if.then53.us.us
  %i.0142.us179 = phi i64 [ 0, %if.then53.us.us ], [ %i.0142.us, %if.then53.us154 ]
  %call60131 = call ptr @DestroyRandomInfo(ptr noundef %call37.us) #19, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %call60, metadata !2042, metadata !DIExpression()), !dbg !2121
  br label %for.end71, !dbg !2156

for.end71:                                        ; preds = %if.end36, %for.body, %for.cond38.for.inc70_crit_edge.us, %for.body.us, %if.end17, %select.unfold
  %i.0134 = phi i64 [ %i.0142.us179, %select.unfold ], [ 0, %if.end17 ], [ %inc.us, %for.cond38.for.inc70_crit_edge.us ], [ %i.0142.us, %for.body.us ], [ %inc, %if.end36 ], [ %i.0142, %for.body ]
  %call72 = call i32 @close(i32 noundef %call.i118) #19, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %call72, metadata !2037, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %path, metadata !2077, metadata !DIExpression()) #19, !dbg !2158
  %call.i122 = call i32 @unlink(ptr noundef nonnull %path) #19, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %call.i122, metadata !2037, metadata !DIExpression()), !dbg !2064
  %cmp74 = icmp eq i32 %call.i122, -1, !dbg !2161
  br i1 %cmp74, label %cleanup82, label %if.end77, !dbg !2163

if.end77:                                         ; preds = %for.end71
  call void @llvm.dbg.value(metadata ptr %call, metadata !2104, metadata !DIExpression()) #19, !dbg !2164
  %call.i123 = call i64 @strtol(ptr nocapture noundef nonnull %call, ptr noundef null, i32 noundef 10) #19, !dbg !2166
  %sext132 = shl i64 %call.i123, 32, !dbg !2167
  %conv79 = ashr exact i64 %sext132, 32, !dbg !2167
  %cmp80 = icmp sge i64 %i.0134, %conv79, !dbg !2168
  br label %cleanup82, !dbg !2169

cleanup82:                                        ; preds = %for.end71, %if.then5, %entry, %lor.lhs.false, %if.end77, %if.then15
  %retval.0.shrunk = phi i1 [ false, %if.then15 ], [ %cmp80, %if.end77 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp7, %if.then5 ], [ false, %for.end71 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #19, !dbg !2170
  ret i32 %retval.0, !dbg !2170
}

; Function Attrs: nounwind
declare !dbg !2171 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

declare !dbg !2174 ptr @AcquireRandomInfo() local_unnamed_addr #3

declare !dbg !2177 ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2180 void @ResetStringInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2183 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !2188 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2191 ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @SystemCommand(i32 noundef %asynchronous, i32 noundef %verbose, ptr nocapture noundef readnone %command, ptr nocapture noundef readnone %exception) local_unnamed_addr #14 !dbg !2194 {
entry:
  call void @llvm.dbg.value(metadata i32 %asynchronous, metadata !2198, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %command, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2201, metadata !DIExpression()), !dbg !2202
  ret i32 -1, !dbg !2203
}

; Function Attrs: nofree
declare !dbg !2204 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !2208 noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

declare !dbg !2209 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2212 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { argmemonly nofree nounwind willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1,2) }
attributes #25 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319}
!llvm.ident = !{!320}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Base64", scope: !2, file: !306, line: 77, type: !310, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, globals: !302, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/utility.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "0506b1a6161092e150231d893617bc0b")
!4 = !{!5, !11, !36, !48, !63, !136}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 34, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!14 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!15 = !DIEnumerator(name: "NoEvents", value: 0)
!16 = !DIEnumerator(name: "TraceEvent", value: 1)
!17 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!18 = !DIEnumerator(name: "BlobEvent", value: 4)
!19 = !DIEnumerator(name: "CacheEvent", value: 8)
!20 = !DIEnumerator(name: "CoderEvent", value: 16)
!21 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!22 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!23 = !DIEnumerator(name: "DrawEvent", value: 128)
!24 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!25 = !DIEnumerator(name: "ImageEvent", value: 512)
!26 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!27 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!28 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!29 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!30 = !DIEnumerator(name: "TransformEvent", value: 16384)
!31 = !DIEnumerator(name: "UserEvent", value: 36864)
!32 = !DIEnumerator(name: "WandEvent", value: 65536)
!33 = !DIEnumerator(name: "X11Event", value: 131072)
!34 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!35 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 25, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIEnumerator(name: "UndefinedPath", value: 0)
!40 = !DIEnumerator(name: "MagickPath", value: 1)
!41 = !DIEnumerator(name: "RootPath", value: 2)
!42 = !DIEnumerator(name: "HeadPath", value: 3)
!43 = !DIEnumerator(name: "TailPath", value: 4)
!44 = !DIEnumerator(name: "BasePath", value: 5)
!45 = !DIEnumerator(name: "ExtensionPath", value: 6)
!46 = !DIEnumerator(name: "SubimagePath", value: 7)
!47 = !DIEnumerator(name: "CanonicalPath", value: 8)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 46, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!51 = !DIEnumerator(name: "_ISupper", value: 256)
!52 = !DIEnumerator(name: "_ISlower", value: 512)
!53 = !DIEnumerator(name: "_ISalpha", value: 1024)
!54 = !DIEnumerator(name: "_ISdigit", value: 2048)
!55 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!56 = !DIEnumerator(name: "_ISspace", value: 8192)
!57 = !DIEnumerator(name: "_ISprint", value: 16384)
!58 = !DIEnumerator(name: "_ISgraph", value: 32768)
!59 = !DIEnumerator(name: "_ISblank", value: 1)
!60 = !DIEnumerator(name: "_IScntrl", value: 2)
!61 = !DIEnumerator(name: "_ISpunct", value: 4)
!62 = !DIEnumerator(name: "_ISalnum", value: 8)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 28, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!66 = !DIEnumerator(name: "UndefinedException", value: 0)
!67 = !DIEnumerator(name: "WarningException", value: 300)
!68 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!69 = !DIEnumerator(name: "TypeWarning", value: 305)
!70 = !DIEnumerator(name: "OptionWarning", value: 310)
!71 = !DIEnumerator(name: "DelegateWarning", value: 315)
!72 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!73 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!74 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!75 = !DIEnumerator(name: "BlobWarning", value: 335)
!76 = !DIEnumerator(name: "StreamWarning", value: 340)
!77 = !DIEnumerator(name: "CacheWarning", value: 345)
!78 = !DIEnumerator(name: "CoderWarning", value: 350)
!79 = !DIEnumerator(name: "FilterWarning", value: 352)
!80 = !DIEnumerator(name: "ModuleWarning", value: 355)
!81 = !DIEnumerator(name: "DrawWarning", value: 360)
!82 = !DIEnumerator(name: "ImageWarning", value: 365)
!83 = !DIEnumerator(name: "WandWarning", value: 370)
!84 = !DIEnumerator(name: "RandomWarning", value: 375)
!85 = !DIEnumerator(name: "XServerWarning", value: 380)
!86 = !DIEnumerator(name: "MonitorWarning", value: 385)
!87 = !DIEnumerator(name: "RegistryWarning", value: 390)
!88 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!89 = !DIEnumerator(name: "PolicyWarning", value: 399)
!90 = !DIEnumerator(name: "ErrorException", value: 400)
!91 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!92 = !DIEnumerator(name: "TypeError", value: 405)
!93 = !DIEnumerator(name: "OptionError", value: 410)
!94 = !DIEnumerator(name: "DelegateError", value: 415)
!95 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!96 = !DIEnumerator(name: "CorruptImageError", value: 425)
!97 = !DIEnumerator(name: "FileOpenError", value: 430)
!98 = !DIEnumerator(name: "BlobError", value: 435)
!99 = !DIEnumerator(name: "StreamError", value: 440)
!100 = !DIEnumerator(name: "CacheError", value: 445)
!101 = !DIEnumerator(name: "CoderError", value: 450)
!102 = !DIEnumerator(name: "FilterError", value: 452)
!103 = !DIEnumerator(name: "ModuleError", value: 455)
!104 = !DIEnumerator(name: "DrawError", value: 460)
!105 = !DIEnumerator(name: "ImageError", value: 465)
!106 = !DIEnumerator(name: "WandError", value: 470)
!107 = !DIEnumerator(name: "RandomError", value: 475)
!108 = !DIEnumerator(name: "XServerError", value: 480)
!109 = !DIEnumerator(name: "MonitorError", value: 485)
!110 = !DIEnumerator(name: "RegistryError", value: 490)
!111 = !DIEnumerator(name: "ConfigureError", value: 495)
!112 = !DIEnumerator(name: "PolicyError", value: 499)
!113 = !DIEnumerator(name: "FatalErrorException", value: 700)
!114 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!115 = !DIEnumerator(name: "TypeFatalError", value: 705)
!116 = !DIEnumerator(name: "OptionFatalError", value: 710)
!117 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!118 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!119 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!120 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!121 = !DIEnumerator(name: "BlobFatalError", value: 735)
!122 = !DIEnumerator(name: "StreamFatalError", value: 740)
!123 = !DIEnumerator(name: "CacheFatalError", value: 745)
!124 = !DIEnumerator(name: "CoderFatalError", value: 750)
!125 = !DIEnumerator(name: "FilterFatalError", value: 752)
!126 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!127 = !DIEnumerator(name: "DrawFatalError", value: 760)
!128 = !DIEnumerator(name: "ImageFatalError", value: 765)
!129 = !DIEnumerator(name: "WandFatalError", value: 770)
!130 = !DIEnumerator(name: "RandomFatalError", value: 775)
!131 = !DIEnumerator(name: "XServerFatalError", value: 780)
!132 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!133 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!134 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!135 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 25, baseType: !138, size: 32, elements: !139)
!137 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!140 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!141 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!142 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!143 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!144 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!145 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!146 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!147 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!148 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!149 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!150 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!151 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!152 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!153 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!154 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!155 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!156 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!157 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!158 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!159 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!160 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!161 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!162 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!163 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!164 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!165 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!166 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!167 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!168 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!169 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!170 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!171 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!172 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!173 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!174 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!175 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!176 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!177 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!178 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!179 = !DIEnumerator(name: "MagickListOptions", value: 38)
!180 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!181 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!182 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!183 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!184 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!185 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!186 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!187 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!188 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!189 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!190 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!191 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!192 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!193 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!194 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!195 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!196 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!197 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!198 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!199 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!200 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!201 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!202 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!203 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!204 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!205 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!206 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!207 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!208 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!209 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!210 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!211 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!212 = !{!213, !216, !218, !219, !215, !138, !217, !224, !225, !227, !240, !241, !243, !279, !281, !285, !297, !299, !301}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 46, baseType: !215)
!214 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !220, line: 77, baseType: !221)
!220 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !222, line: 193, baseType: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!223 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!224 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !229, line: 49, size: 384, elements: !230)
!229 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "36175ca4556b186434b9c9288dd358b3")
!230 = !{!231, !232, !233, !235, !237, !238, !239}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !228, file: !229, line: 51, baseType: !225, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !228, file: !229, line: 52, baseType: !225, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !228, file: !229, line: 54, baseType: !234, size: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !222, line: 146, baseType: !7)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !228, file: !229, line: 55, baseType: !236, size: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !222, line: 147, baseType: !7)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !228, file: !229, line: 56, baseType: !225, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !228, file: !229, line: 57, baseType: !225, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !228, file: !229, line: 58, baseType: !225, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !245, line: 46, size: 1152, elements: !246)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!246 = !{!247, !249, !251, !253, !255, !256, !257, !258, !259, !261, !263, !265, !273, !274, !275}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !244, file: !245, line: 48, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !222, line: 145, baseType: !215)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !244, file: !245, line: 53, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !222, line: 148, baseType: !215)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !244, file: !245, line: 61, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !222, line: 151, baseType: !215)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !244, file: !245, line: 62, baseType: !254, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !222, line: 150, baseType: !7)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !244, file: !245, line: 64, baseType: !234, size: 32, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !244, file: !245, line: 65, baseType: !236, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !244, file: !245, line: 67, baseType: !138, size: 32, offset: 288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !244, file: !245, line: 69, baseType: !248, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !244, file: !245, line: 74, baseType: !260, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !222, line: 152, baseType: !223)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !244, file: !245, line: 78, baseType: !262, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !222, line: 174, baseType: !223)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !244, file: !245, line: 80, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !222, line: 179, baseType: !223)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !244, file: !245, line: 91, baseType: !266, size: 128, offset: 576)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !267, line: 10, size: 128, elements: !268)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !266, file: !267, line: 12, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !222, line: 160, baseType: !223)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !266, file: !267, line: 16, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !222, line: 196, baseType: !223)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !244, file: !245, line: 92, baseType: !266, size: 128, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !244, file: !245, line: 93, baseType: !266, size: 128, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !244, file: !245, line: 106, baseType: !276, size: 192, offset: 960)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 192, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 3)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !283, line: 127, baseType: !284)
!283 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !283, line: 127, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !287, line: 22, size: 2240, elements: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "c0e4297146be1c537f6e8a6489ebed32")
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !286, file: !287, line: 25, baseType: !250, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !286, file: !287, line: 26, baseType: !260, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !286, file: !287, line: 31, baseType: !224, size: 16, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !286, file: !287, line: 32, baseType: !217, size: 8, offset: 144)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !286, file: !287, line: 33, baseType: !294, size: 2048, offset: 152)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 256)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !298)
!298 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !300)
!300 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!302 = !{!303, !0}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "page_size", scope: !305, file: !306, line: 1111, type: !219, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "GetMagickPageSize", scope: !306, file: !306, line: 1108, type: !307, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!306 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0506b1a6161092e150231d893617bc0b")
!307 = !DISubroutineType(types: !308)
!308 = !{!219}
!309 = !{}
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 520, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 65)
!313 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 16385, DW_OP_mul, DW_OP_constu, 18446744073709551615, DW_OP_plus, DW_OP_stack_value))
!314 = !{i32 7, !"Dwarf Version", i32 5}
!315 = !{i32 2, !"Debug Info Version", i32 3}
!316 = !{i32 1, !"wchar_size", i32 4}
!317 = !{i32 7, !"PIC Level", i32 2}
!318 = !{i32 7, !"PIE Level", i32 2}
!319 = !{i32 7, !"uwtable", i32 2}
!320 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!321 = distinct !DISubprogram(name: "AcquireUniqueFilename", scope: !306, file: !306, line: 108, type: !322, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !225}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "path", arg: 1, scope: !321, file: !306, line: 108, type: !225)
!327 = !DILocalVariable(name: "file", scope: !321, file: !306, line: 111, type: !138)
!328 = !DILocation(line: 0, scope: !321)
!329 = !DILocation(line: 113, column: 8, scope: !321)
!330 = !DILocation(line: 114, column: 12, scope: !331)
!331 = distinct !DILexicalBlock(scope: !321, file: !306, line: 114, column: 7)
!332 = !DILocation(line: 114, column: 7, scope: !321)
!333 = !DILocation(line: 116, column: 8, scope: !321)
!334 = !DILocation(line: 117, column: 3, scope: !321)
!335 = !DILocation(line: 118, column: 1, scope: !321)
!336 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !337, file: !337, line: 41, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!337 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!338 = !DISubroutineType(types: !339)
!339 = !{!138, !225}
!340 = !DISubprogram(name: "close", scope: !341, file: !341, line: 353, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!341 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!342 = !DISubroutineType(types: !343)
!343 = !{!138, !138}
!344 = distinct !DISubprogram(name: "AcquireUniqueSymbolicLink", scope: !306, file: !306, line: 158, type: !345, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!324, !241, !225}
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DILocalVariable(name: "source", arg: 1, scope: !344, file: !306, line: 158, type: !241)
!349 = !DILocalVariable(name: "destination", arg: 2, scope: !344, file: !306, line: 159, type: !225)
!350 = !DILocalVariable(name: "destination_file", scope: !344, file: !306, line: 162, type: !138)
!351 = !DILocalVariable(name: "source_file", scope: !344, file: !306, line: 163, type: !138)
!352 = !DILocalVariable(name: "length", scope: !344, file: !306, line: 166, type: !213)
!353 = !DILocalVariable(name: "quantum", scope: !344, file: !306, line: 167, type: !213)
!354 = !DILocalVariable(name: "count", scope: !344, file: !306, line: 170, type: !219)
!355 = !DILocalVariable(name: "attributes", scope: !344, file: !306, line: 173, type: !244)
!356 = !DILocalVariable(name: "buffer", scope: !344, file: !306, line: 176, type: !216)
!357 = !DILocation(line: 0, scope: !344)
!358 = !DILocation(line: 172, column: 3, scope: !344)
!359 = !DILocation(line: 173, column: 5, scope: !344)
!360 = !DILocation(line: 202, column: 20, scope: !344)
!361 = !DILocation(line: 203, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !344, file: !306, line: 203, column: 7)
!363 = !DILocation(line: 203, column: 7, scope: !344)
!364 = !DILocalVariable(name: "path", arg: 1, scope: !365, file: !366, line: 136, type: !241)
!365 = distinct !DISubprogram(name: "open_utf8", scope: !366, file: !366, line: 136, type: !367, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!366 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!367 = !DISubroutineType(types: !368)
!368 = !{!138, !241, !138, !369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !370, line: 59, baseType: !254)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!371 = !{!364, !372, !373}
!372 = !DILocalVariable(name: "flags", arg: 2, scope: !365, file: !366, line: 136, type: !138)
!373 = !DILocalVariable(name: "mode", arg: 3, scope: !365, file: !366, line: 136, type: !369)
!374 = !DILocation(line: 0, scope: !365, inlinedAt: !375)
!375 = distinct !DILocation(line: 205, column: 15, scope: !344)
!376 = !DILocation(line: 139, column: 10, scope: !365, inlinedAt: !375)
!377 = !DILocation(line: 206, column: 19, scope: !378)
!378 = distinct !DILexicalBlock(scope: !344, file: !306, line: 206, column: 7)
!379 = !DILocation(line: 206, column: 7, scope: !344)
!380 = !DILocation(line: 208, column: 14, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !306, line: 207, column: 5)
!382 = !DILocation(line: 209, column: 14, scope: !381)
!383 = !DILocation(line: 210, column: 7, scope: !381)
!384 = !DILocalVariable(name: "__fd", arg: 1, scope: !385, file: !370, line: 467, type: !138)
!385 = distinct !DISubprogram(name: "fstat", scope: !370, file: !370, line: 467, type: !386, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!138, !138, !243}
!388 = !{!384, !389}
!389 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !385, file: !370, line: 467, type: !243)
!390 = !DILocation(line: 0, scope: !385, inlinedAt: !391)
!391 = distinct !DILocation(line: 213, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !344, file: !306, line: 213, column: 7)
!393 = !DILocation(line: 469, column: 10, scope: !385, inlinedAt: !391)
!394 = !DILocation(line: 213, column: 39, scope: !392)
!395 = !DILocation(line: 213, column: 45, scope: !392)
!396 = !DILocation(line: 216, column: 28, scope: !344)
!397 = !DILocation(line: 217, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !344, file: !306, line: 217, column: 7)
!399 = !DILocation(line: 217, column: 7, scope: !344)
!400 = !DILocation(line: 219, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !306, line: 218, column: 5)
!402 = !DILocation(line: 220, column: 14, scope: !401)
!403 = !DILocation(line: 221, column: 14, scope: !401)
!404 = !DILocation(line: 222, column: 7, scope: !401)
!405 = !DILocation(line: 226, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !306, line: 225, column: 3)
!407 = distinct !DILexicalBlock(scope: !408, file: !306, line: 224, column: 3)
!408 = distinct !DILexicalBlock(scope: !344, file: !306, line: 224, column: 3)
!409 = !DILocation(line: 227, column: 15, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !306, line: 227, column: 9)
!411 = !DILocation(line: 227, column: 9, scope: !406)
!412 = !DILocation(line: 230, column: 21, scope: !406)
!413 = !DILocation(line: 231, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !406, file: !306, line: 231, column: 9)
!415 = !DILocation(line: 231, column: 9, scope: !406)
!416 = distinct !{!416, !417, !418, !419}
!417 = !DILocation(line: 224, column: 3, scope: !408)
!418 = !DILocation(line: 239, column: 3, scope: !408)
!419 = !{!"llvm.loop.unroll.disable"}
!420 = !DILocation(line: 233, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !306, line: 232, column: 7)
!422 = !DILocation(line: 234, column: 16, scope: !421)
!423 = !DILocation(line: 235, column: 34, scope: !421)
!424 = !DILocation(line: 236, column: 16, scope: !421)
!425 = !DILocation(line: 237, column: 9, scope: !421)
!426 = !DILocation(line: 240, column: 10, scope: !344)
!427 = !DILocation(line: 241, column: 10, scope: !344)
!428 = !DILocation(line: 242, column: 28, scope: !344)
!429 = !DILocation(line: 243, column: 3, scope: !344)
!430 = !DILocation(line: 244, column: 1, scope: !344)
!431 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !337, file: !337, line: 47, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!432 = !DISubroutineType(types: !433)
!433 = !{!324, !241}
!434 = !DISubprogram(name: "AcquireQuantumMemory", scope: !435, file: !435, line: 42, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!435 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!436 = !DISubroutineType(types: !437)
!437 = !{!218, !438, !438}
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!439 = !DISubprogram(name: "read", scope: !341, file: !341, line: 360, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!440 = !DISubroutineType(types: !441)
!441 = !{!219, !138, !218, !213}
!442 = !DISubprogram(name: "write", scope: !341, file: !341, line: 366, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!443 = !DISubroutineType(types: !444)
!444 = !{!219, !138, !445, !213}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!447 = !DISubprogram(name: "RelinquishMagickMemory", scope: !435, file: !435, line: 51, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!448 = !DISubroutineType(types: !449)
!449 = !{!218, !218}
!450 = distinct !DISubprogram(name: "AppendImageFormat", scope: !306, file: !306, line: 273, type: !451, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !241, !225}
!453 = !{!454, !455, !456, !460, !461}
!454 = !DILocalVariable(name: "format", arg: 1, scope: !450, file: !306, line: 273, type: !241)
!455 = !DILocalVariable(name: "filename", arg: 2, scope: !450, file: !306, line: 273, type: !225)
!456 = !DILocalVariable(name: "extension", scope: !450, file: !306, line: 276, type: !457)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 4096)
!460 = !DILocalVariable(name: "root", scope: !450, file: !306, line: 277, type: !457)
!461 = !DILocalVariable(name: "message", scope: !462, file: !306, line: 287, type: !457)
!462 = distinct !DILexicalBlock(scope: !463, file: !306, line: 285, column: 5)
!463 = distinct !DILexicalBlock(scope: !450, file: !306, line: 284, column: 7)
!464 = !DILocation(line: 0, scope: !450)
!465 = !DILocation(line: 275, column: 3, scope: !450)
!466 = !DILocation(line: 276, column: 5, scope: !450)
!467 = !DILocation(line: 277, column: 5, scope: !450)
!468 = !DILocation(line: 281, column: 10, scope: !450)
!469 = !DILocation(line: 282, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !450, file: !306, line: 282, column: 7)
!471 = !{!472, !472, i64 0}
!472 = !{!"omnipotent char", !473, i64 0}
!473 = !{!"Simple C/C++ TBAA"}
!474 = !DILocation(line: 282, column: 16, scope: !470)
!475 = !DILocation(line: 282, column: 25, scope: !470)
!476 = !DILocation(line: 282, column: 29, scope: !470)
!477 = !DILocation(line: 282, column: 39, scope: !470)
!478 = !DILocation(line: 282, column: 7, scope: !450)
!479 = !DILocation(line: 284, column: 7, scope: !463)
!480 = !DILocation(line: 284, column: 35, scope: !463)
!481 = !DILocation(line: 284, column: 7, scope: !450)
!482 = !DILocation(line: 286, column: 7, scope: !462)
!483 = !DILocation(line: 287, column: 9, scope: !462)
!484 = !DILocation(line: 289, column: 14, scope: !462)
!485 = !DILocation(line: 290, column: 14, scope: !462)
!486 = !DILocation(line: 292, column: 5, scope: !463)
!487 = !DILocation(line: 293, column: 3, scope: !450)
!488 = !DILocation(line: 294, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !450, file: !306, line: 294, column: 7)
!490 = !DILocation(line: 294, column: 37, scope: !489)
!491 = !DILocation(line: 294, column: 43, scope: !489)
!492 = !DILocation(line: 295, column: 8, scope: !489)
!493 = !DILocation(line: 295, column: 39, scope: !489)
!494 = !DILocation(line: 295, column: 45, scope: !489)
!495 = !DILocation(line: 296, column: 8, scope: !489)
!496 = !DILocation(line: 296, column: 38, scope: !489)
!497 = !DILocation(line: 296, column: 44, scope: !489)
!498 = !DILocation(line: 297, column: 8, scope: !489)
!499 = !DILocation(line: 297, column: 39, scope: !489)
!500 = !DILocation(line: 297, column: 45, scope: !489)
!501 = !DILocation(line: 298, column: 8, scope: !489)
!502 = !DILocation(line: 298, column: 40, scope: !489)
!503 = !DILocation(line: 294, column: 7, scope: !450)
!504 = !DILocation(line: 300, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !489, file: !306, line: 299, column: 5)
!506 = !DILocation(line: 301, column: 14, scope: !505)
!507 = !DILocation(line: 302, column: 7, scope: !505)
!508 = !DILocation(line: 303, column: 14, scope: !505)
!509 = !DILocation(line: 305, column: 7, scope: !505)
!510 = !DILocation(line: 307, column: 3, scope: !450)
!511 = !DILocation(line: 308, column: 10, scope: !450)
!512 = !DILocation(line: 309, column: 1, scope: !450)
!513 = !DISubprogram(name: "LogMagickEvent", scope: !12, file: !12, line: 83, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!514 = !DISubroutineType(types: !515)
!515 = !{!324, !516, !241, !241, !438, !241, null}
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !12, line: 58, baseType: !11)
!518 = !DISubprogram(name: "LocaleCompare", scope: !519, file: !519, line: 66, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!519 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!520 = !DISubroutineType(types: !521)
!521 = !{!138, !241, !241}
!522 = !DISubprogram(name: "FormatLocaleString", scope: !523, file: !523, line: 71, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!523 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!524 = !DISubroutineType(types: !525)
!525 = !{!219, !526, !438, !527, null}
!526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !225)
!527 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!528 = !DISubprogram(name: "CopyMagickString", scope: !519, file: !519, line: 78, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!529 = !DISubroutineType(types: !530)
!530 = !{!213, !225, !241, !438}
!531 = distinct !DISubprogram(name: "GetPathComponent", scope: !306, file: !306, line: 1198, type: !532, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !241, !534, !225}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !37, line: 36, baseType: !36)
!535 = !{!536, !537, !538, !539, !540, !541, !542}
!536 = !DILocalVariable(name: "path", arg: 1, scope: !531, file: !306, line: 1198, type: !241)
!537 = !DILocalVariable(name: "type", arg: 2, scope: !531, file: !306, line: 1198, type: !534)
!538 = !DILocalVariable(name: "component", arg: 3, scope: !531, file: !306, line: 1199, type: !225)
!539 = !DILocalVariable(name: "magick", scope: !531, file: !306, line: 1202, type: !457)
!540 = !DILocalVariable(name: "q", scope: !531, file: !306, line: 1203, type: !225)
!541 = !DILocalVariable(name: "subimage", scope: !531, file: !306, line: 1204, type: !457)
!542 = !DILocalVariable(name: "p", scope: !531, file: !306, line: 1207, type: !225)
!543 = !DILocation(line: 0, scope: !531)
!544 = !DILocation(line: 1201, column: 3, scope: !531)
!545 = !DILocation(line: 1202, column: 5, scope: !531)
!546 = !DILocation(line: 1204, column: 5, scope: !531)
!547 = !DILocation(line: 1210, column: 10, scope: !531)
!548 = !DILocation(line: 1212, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1212, column: 7)
!550 = !DILocation(line: 1212, column: 13, scope: !549)
!551 = !DILocation(line: 1212, column: 7, scope: !531)
!552 = !DILocation(line: 1214, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !306, line: 1213, column: 5)
!554 = !DILocation(line: 1215, column: 7, scope: !553)
!555 = !DILocation(line: 1217, column: 10, scope: !531)
!556 = !DILocation(line: 1218, column: 10, scope: !531)
!557 = !DILocation(line: 1222, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1222, column: 3)
!559 = !DILocation(line: 0, scope: !558)
!560 = !DILocation(line: 1222, column: 21, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !306, line: 1222, column: 3)
!562 = !DILocation(line: 1222, column: 3, scope: !558)
!563 = !DILocation(line: 1224, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !306, line: 1224, column: 9)
!565 = distinct !DILexicalBlock(scope: !561, file: !306, line: 1223, column: 3)
!566 = !DILocation(line: 1224, column: 25, scope: !564)
!567 = !DILocation(line: 1224, column: 32, scope: !564)
!568 = !DILocation(line: 1224, column: 9, scope: !565)
!569 = !DILocation(line: 1229, column: 20, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !306, line: 1229, column: 9)
!571 = distinct !DILexicalBlock(scope: !572, file: !306, line: 1229, column: 9)
!572 = distinct !DILexicalBlock(scope: !564, file: !306, line: 1225, column: 7)
!573 = !DILocation(line: 0, scope: !571)
!574 = !DILocation(line: 1229, column: 31, scope: !570)
!575 = !DILocalVariable(name: "path", arg: 1, scope: !576, file: !306, line: 1477, type: !241)
!576 = distinct !DISubprogram(name: "IsPathDirectory", scope: !306, file: !306, line: 1477, type: !577, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!138, !241}
!579 = !{!575, !580, !581}
!580 = !DILocalVariable(name: "status", scope: !576, file: !306, line: 1480, type: !324)
!581 = !DILocalVariable(name: "attributes", scope: !576, file: !306, line: 1483, type: !244)
!582 = !DILocation(line: 0, scope: !576, inlinedAt: !583)
!583 = distinct !DILocation(line: 1233, column: 25, scope: !584)
!584 = distinct !DILexicalBlock(scope: !565, file: !306, line: 1233, column: 9)
!585 = !DILocation(line: 1482, column: 3, scope: !576, inlinedAt: !583)
!586 = !DILocation(line: 1483, column: 5, scope: !576, inlinedAt: !583)
!587 = !DILocation(line: 1485, column: 41, scope: !588, inlinedAt: !583)
!588 = distinct !DILexicalBlock(scope: !576, file: !306, line: 1485, column: 7)
!589 = !DILocation(line: 1485, column: 47, scope: !588, inlinedAt: !583)
!590 = !DILocation(line: 1485, column: 7, scope: !576, inlinedAt: !583)
!591 = !DILocalVariable(name: "path", arg: 1, scope: !592, file: !306, line: 1151, type: !241)
!592 = distinct !DISubprogram(name: "GetPathAttributes", scope: !306, file: !306, line: 1151, type: !593, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!324, !241, !218}
!595 = !{!591, !596, !597}
!596 = !DILocalVariable(name: "attributes", arg: 2, scope: !592, file: !306, line: 1152, type: !218)
!597 = !DILocalVariable(name: "status", scope: !592, file: !306, line: 1155, type: !324)
!598 = !DILocation(line: 0, scope: !592, inlinedAt: !599)
!599 = distinct !DILocation(line: 1487, column: 10, scope: !576, inlinedAt: !583)
!600 = !DILocalVariable(name: "path", arg: 1, scope: !601, file: !366, line: 232, type: !241)
!601 = distinct !DISubprogram(name: "stat_utf8", scope: !366, file: !366, line: 232, type: !602, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!138, !241, !243}
!604 = !{!600, !605}
!605 = !DILocalVariable(name: "attributes", arg: 2, scope: !601, file: !366, line: 232, type: !243)
!606 = !DILocation(line: 0, scope: !601, inlinedAt: !607)
!607 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !599)
!608 = !DILocalVariable(name: "__path", arg: 1, scope: !609, file: !370, line: 453, type: !241)
!609 = distinct !DISubprogram(name: "stat", scope: !370, file: !370, line: 453, type: !602, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!610 = !{!608, !611}
!611 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !609, file: !370, line: 453, type: !243)
!612 = !DILocation(line: 0, scope: !609, inlinedAt: !613)
!613 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !607)
!614 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !613)
!615 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !599)
!616 = !DILocation(line: 1488, column: 7, scope: !576, inlinedAt: !583)
!617 = !DILocation(line: 1493, column: 1, scope: !576, inlinedAt: !583)
!618 = !DILocation(line: 1233, column: 52, scope: !584)
!619 = !DILocalVariable(name: "path", arg: 1, scope: !620, file: !306, line: 1434, type: !241)
!620 = distinct !DISubprogram(name: "IsPathAccessible", scope: !306, file: !306, line: 1434, type: !432, scopeLine: 1435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!621 = !{!619, !622, !623}
!622 = !DILocalVariable(name: "status", scope: !620, file: !306, line: 1437, type: !324)
!623 = !DILocalVariable(name: "attributes", scope: !620, file: !306, line: 1440, type: !244)
!624 = !DILocation(line: 0, scope: !620, inlinedAt: !625)
!625 = distinct !DILocation(line: 1234, column: 10, scope: !584)
!626 = !DILocation(line: 1439, column: 3, scope: !620, inlinedAt: !625)
!627 = !DILocation(line: 1440, column: 5, scope: !620, inlinedAt: !625)
!628 = !DILocation(line: 1442, column: 41, scope: !629, inlinedAt: !625)
!629 = distinct !DILexicalBlock(scope: !620, file: !306, line: 1442, column: 7)
!630 = !DILocation(line: 1442, column: 47, scope: !629, inlinedAt: !625)
!631 = !DILocation(line: 1442, column: 7, scope: !620, inlinedAt: !625)
!632 = !DILocation(line: 0, scope: !592, inlinedAt: !633)
!633 = distinct !DILocation(line: 1444, column: 10, scope: !620, inlinedAt: !625)
!634 = !DILocation(line: 0, scope: !601, inlinedAt: !635)
!635 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !633)
!636 = !DILocation(line: 0, scope: !609, inlinedAt: !637)
!637 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !635)
!638 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !637)
!639 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !633)
!640 = !DILocation(line: 1445, column: 7, scope: !620, inlinedAt: !625)
!641 = !DILocation(line: 1447, column: 7, scope: !642, inlinedAt: !625)
!642 = distinct !DILexicalBlock(scope: !620, file: !306, line: 1447, column: 7)
!643 = !{!644, !646, i64 24}
!644 = !{!"stat", !645, i64 0, !645, i64 8, !645, i64 16, !646, i64 24, !646, i64 28, !646, i64 32, !646, i64 36, !645, i64 40, !645, i64 48, !645, i64 56, !645, i64 64, !647, i64 72, !647, i64 88, !647, i64 104, !472, i64 120}
!645 = !{!"long", !472, i64 0}
!646 = !{!"int", !472, i64 0}
!647 = !{!"timespec", !645, i64 0, !645, i64 8}
!648 = !DILocation(line: 1447, column: 7, scope: !620, inlinedAt: !625)
!649 = !DILocation(line: 1452, column: 1, scope: !620, inlinedAt: !625)
!650 = !DILocation(line: 1233, column: 9, scope: !565)
!651 = !DILocalVariable(name: "path", arg: 1, scope: !652, file: !366, line: 83, type: !241)
!652 = distinct !DISubprogram(name: "access_utf8", scope: !366, file: !366, line: 83, type: !653, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!138, !241, !138}
!655 = !{!651, !656}
!656 = !DILocalVariable(name: "mode", arg: 2, scope: !652, file: !366, line: 83, type: !138)
!657 = !DILocation(line: 0, scope: !652, inlinedAt: !658)
!658 = distinct !DILocation(line: 1449, column: 7, scope: !659, inlinedAt: !625)
!659 = distinct !DILexicalBlock(scope: !620, file: !306, line: 1449, column: 7)
!660 = !DILocation(line: 86, column: 10, scope: !652, inlinedAt: !658)
!661 = !DILocation(line: 1449, column: 30, scope: !659, inlinedAt: !625)
!662 = !DILocation(line: 1239, column: 61, scope: !663)
!663 = distinct !DILexicalBlock(scope: !584, file: !306, line: 1235, column: 7)
!664 = !DILocation(line: 1239, column: 71, scope: !663)
!665 = !DILocation(line: 1239, column: 16, scope: !663)
!666 = !DILocation(line: 1240, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !306, line: 1240, column: 13)
!668 = !DILocation(line: 1240, column: 38, scope: !667)
!669 = !DILocation(line: 1240, column: 13, scope: !663)
!670 = !DILocation(line: 1243, column: 29, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !306, line: 1243, column: 11)
!672 = distinct !DILexicalBlock(scope: !667, file: !306, line: 1243, column: 11)
!673 = !DILocation(line: 1243, column: 32, scope: !671)
!674 = !DILocation(line: 1243, column: 11, scope: !672)
!675 = !DILocation(line: 1248, column: 12, scope: !531)
!676 = !DILocation(line: 1250, column: 7, scope: !531)
!677 = !DILocation(line: 1241, column: 18, scope: !667)
!678 = !DILocation(line: 1241, column: 11, scope: !667)
!679 = !DILocation(line: 1244, column: 18, scope: !671)
!680 = !DILocation(line: 1244, column: 17, scope: !671)
!681 = !DILocation(line: 1244, column: 15, scope: !671)
!682 = !DILocation(line: 1243, column: 42, scope: !671)
!683 = distinct !{!683, !674, !684, !685, !419}
!684 = !DILocation(line: 1244, column: 21, scope: !672)
!685 = !{!"llvm.loop.mustprogress"}
!686 = !DILocation(line: 1222, column: 34, scope: !561)
!687 = !DILocation(line: 1222, column: 3, scope: !561)
!688 = distinct !{!688, !562, !689, !685, !419}
!689 = !DILocation(line: 1247, column: 3, scope: !558)
!690 = !DILocation(line: 1250, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1250, column: 7)
!692 = !DILocation(line: 1250, column: 10, scope: !691)
!693 = !DILocation(line: 1251, column: 17, scope: !691)
!694 = !DILocation(line: 1251, column: 16, scope: !691)
!695 = !DILocation(line: 1251, column: 34, scope: !691)
!696 = !DILocation(line: 1252, column: 8, scope: !697)
!697 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1252, column: 7)
!698 = !DILocation(line: 1252, column: 11, scope: !697)
!699 = !DILocation(line: 1252, column: 19, scope: !697)
!700 = !DILocation(line: 1252, column: 23, scope: !697)
!701 = !DILocation(line: 1252, column: 45, scope: !697)
!702 = !DILocation(line: 1252, column: 63, scope: !697)
!703 = !DILocation(line: 0, scope: !620, inlinedAt: !704)
!704 = distinct !DILocation(line: 1253, column: 8, scope: !697)
!705 = !DILocation(line: 1439, column: 3, scope: !620, inlinedAt: !704)
!706 = !DILocation(line: 1440, column: 5, scope: !620, inlinedAt: !704)
!707 = !DILocation(line: 1442, column: 41, scope: !629, inlinedAt: !704)
!708 = !DILocation(line: 1442, column: 47, scope: !629, inlinedAt: !704)
!709 = !DILocation(line: 1442, column: 7, scope: !620, inlinedAt: !704)
!710 = !DILocation(line: 0, scope: !592, inlinedAt: !711)
!711 = distinct !DILocation(line: 1444, column: 10, scope: !620, inlinedAt: !704)
!712 = !DILocation(line: 0, scope: !601, inlinedAt: !713)
!713 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !711)
!714 = !DILocation(line: 0, scope: !609, inlinedAt: !715)
!715 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !713)
!716 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !715)
!717 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !711)
!718 = !DILocation(line: 1445, column: 7, scope: !620, inlinedAt: !704)
!719 = !DILocation(line: 1447, column: 7, scope: !642, inlinedAt: !704)
!720 = !DILocation(line: 1447, column: 7, scope: !620, inlinedAt: !704)
!721 = !DILocation(line: 1452, column: 1, scope: !620, inlinedAt: !704)
!722 = !DILocation(line: 1252, column: 7, scope: !531)
!723 = !DILocation(line: 0, scope: !652, inlinedAt: !724)
!724 = distinct !DILocation(line: 1449, column: 7, scope: !659, inlinedAt: !704)
!725 = !DILocation(line: 86, column: 10, scope: !652, inlinedAt: !724)
!726 = !DILocation(line: 1449, column: 30, scope: !659, inlinedAt: !704)
!727 = !DILocation(line: 1258, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !306, line: 1258, column: 7)
!729 = distinct !DILexicalBlock(scope: !697, file: !306, line: 1254, column: 5)
!730 = !DILocation(line: 0, scope: !728)
!731 = !DILocation(line: 1258, column: 21, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !306, line: 1258, column: 7)
!733 = !DILocation(line: 0, scope: !729)
!734 = !DILocation(line: 1259, column: 13, scope: !732)
!735 = distinct !{!735, !727, !736, !685, !419}
!736 = !DILocation(line: 1260, column: 11, scope: !728)
!737 = !DILocation(line: 1261, column: 11, scope: !729)
!738 = !DILocation(line: 1263, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !306, line: 1262, column: 9)
!740 = distinct !DILexicalBlock(scope: !729, file: !306, line: 1261, column: 11)
!741 = !DILocation(line: 1264, column: 21, scope: !739)
!742 = !DILocation(line: 1264, column: 23, scope: !739)
!743 = !DILocation(line: 1264, column: 11, scope: !739)
!744 = !DILocation(line: 1264, column: 26, scope: !739)
!745 = !DILocation(line: 1265, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !739, file: !306, line: 1265, column: 15)
!747 = !DILocation(line: 1265, column: 54, scope: !746)
!748 = !DILocation(line: 1265, column: 70, scope: !746)
!749 = !DILocation(line: 1266, column: 16, scope: !746)
!750 = !DILocation(line: 1266, column: 37, scope: !746)
!751 = !DILocation(line: 1265, column: 15, scope: !739)
!752 = !DILocation(line: 1267, column: 22, scope: !746)
!753 = !DILocation(line: 1267, column: 13, scope: !746)
!754 = !DILocation(line: 1269, column: 15, scope: !746)
!755 = !DILocation(line: 1273, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1273, column: 7)
!757 = !DILocation(line: 1273, column: 10, scope: !756)
!758 = !DILocation(line: 1273, column: 7, scope: !531)
!759 = !DILocation(line: 1274, column: 22, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !306, line: 1274, column: 5)
!761 = !DILocation(line: 1274, column: 21, scope: !760)
!762 = !DILocation(line: 1274, column: 10, scope: !760)
!763 = !DILocation(line: 0, scope: !760)
!764 = !DILocation(line: 1274, column: 45, scope: !765)
!765 = distinct !DILexicalBlock(scope: !760, file: !306, line: 1274, column: 5)
!766 = !DILocation(line: 1274, column: 5, scope: !760)
!767 = !DILocation(line: 1275, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !306, line: 1275, column: 11)
!769 = !DILocation(line: 1275, column: 11, scope: !765)
!770 = distinct !{!770, !766, !771, !685, !419}
!771 = !DILocation(line: 1276, column: 9, scope: !760)
!772 = !DILocation(line: 1277, column: 3, scope: !531)
!773 = !DILocation(line: 1281, column: 14, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1280, column: 5)
!775 = distinct !DILexicalBlock(scope: !531, file: !306, line: 1278, column: 3)
!776 = !DILocation(line: 1282, column: 7, scope: !774)
!777 = !DILocation(line: 1286, column: 25, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !306, line: 1286, column: 7)
!779 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1285, column: 5)
!780 = !DILocation(line: 1286, column: 42, scope: !778)
!781 = !DILocation(line: 1286, column: 23, scope: !778)
!782 = !DILocation(line: 1286, column: 49, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !306, line: 1286, column: 7)
!784 = !DILocation(line: 1286, column: 7, scope: !778)
!785 = !DILocation(line: 1288, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !306, line: 1288, column: 13)
!787 = distinct !DILexicalBlock(scope: !783, file: !306, line: 1287, column: 7)
!788 = !DILocation(line: 1288, column: 13, scope: !787)
!789 = !DILocation(line: 1286, column: 63, scope: !783)
!790 = distinct !{!790, !784, !791, !685, !419}
!791 = !DILocation(line: 1292, column: 7, scope: !778)
!792 = !DILocation(line: 0, scope: !778)
!793 = !DILocation(line: 1293, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !779, file: !306, line: 1293, column: 11)
!795 = !DILocation(line: 1293, column: 14, scope: !794)
!796 = !DILocation(line: 1293, column: 11, scope: !779)
!797 = !DILocation(line: 1294, column: 11, scope: !794)
!798 = !DILocation(line: 1294, column: 9, scope: !794)
!799 = !DILocation(line: 1299, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1298, column: 5)
!801 = !DILocation(line: 1300, column: 7, scope: !800)
!802 = !DILocation(line: 1304, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !306, line: 1304, column: 11)
!804 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1303, column: 5)
!805 = !DILocation(line: 1304, column: 11, scope: !804)
!806 = !DILocation(line: 1306, column: 37, scope: !803)
!807 = !DILocation(line: 1306, column: 41, scope: !803)
!808 = !DILocation(line: 1306, column: 52, scope: !803)
!809 = !DILocation(line: 1305, column: 16, scope: !803)
!810 = !DILocation(line: 1305, column: 9, scope: !803)
!811 = !DILocation(line: 1311, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !306, line: 1311, column: 11)
!813 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1310, column: 5)
!814 = !DILocation(line: 1311, column: 11, scope: !813)
!815 = !DILocation(line: 1312, column: 44, scope: !812)
!816 = !DILocation(line: 1312, column: 16, scope: !812)
!817 = !DILocation(line: 1312, column: 9, scope: !812)
!818 = !DILocation(line: 1313, column: 25, scope: !819)
!819 = distinct !DILexicalBlock(scope: !813, file: !306, line: 1313, column: 7)
!820 = !DILocation(line: 1313, column: 42, scope: !819)
!821 = !DILocation(line: 1313, column: 49, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !306, line: 1313, column: 7)
!823 = !DILocation(line: 1313, column: 7, scope: !819)
!824 = !DILocation(line: 1313, column: 23, scope: !819)
!825 = !DILocation(line: 1314, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !306, line: 1314, column: 13)
!827 = !DILocation(line: 1314, column: 16, scope: !826)
!828 = !DILocation(line: 1314, column: 13, scope: !822)
!829 = !DILocation(line: 1316, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !306, line: 1315, column: 11)
!831 = !DILocation(line: 1317, column: 13, scope: !830)
!832 = !DILocation(line: 1313, column: 63, scope: !822)
!833 = distinct !{!833, !823, !834, !685, !419}
!834 = !DILocation(line: 1318, column: 11, scope: !819)
!835 = !DILocation(line: 1323, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !306, line: 1323, column: 11)
!837 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1322, column: 5)
!838 = !DILocation(line: 1323, column: 11, scope: !837)
!839 = !DILocation(line: 1324, column: 44, scope: !836)
!840 = !DILocation(line: 1324, column: 16, scope: !836)
!841 = !DILocation(line: 1326, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !306, line: 1326, column: 11)
!843 = !DILocation(line: 1324, column: 9, scope: !836)
!844 = !DILocation(line: 1326, column: 14, scope: !842)
!845 = !DILocation(line: 1326, column: 11, scope: !837)
!846 = !DILocation(line: 1327, column: 26, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !306, line: 1327, column: 9)
!848 = !DILocation(line: 1327, column: 25, scope: !847)
!849 = !DILocation(line: 1327, column: 14, scope: !847)
!850 = !DILocation(line: 0, scope: !847)
!851 = !DILocation(line: 1327, column: 49, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !306, line: 1327, column: 9)
!853 = !DILocation(line: 1327, column: 9, scope: !847)
!854 = !DILocation(line: 1328, column: 15, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !306, line: 1328, column: 15)
!856 = !DILocation(line: 1328, column: 18, scope: !855)
!857 = !DILocation(line: 1328, column: 15, scope: !852)
!858 = distinct !{!858, !853, !859, !685, !419}
!859 = !DILocation(line: 1329, column: 13, scope: !847)
!860 = !DILocation(line: 0, scope: !837)
!861 = !DILocation(line: 1330, column: 17, scope: !837)
!862 = !DILocation(line: 1331, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !837, file: !306, line: 1331, column: 11)
!864 = !DILocation(line: 1331, column: 14, scope: !863)
!865 = !DILocation(line: 1331, column: 11, scope: !837)
!866 = !DILocation(line: 1332, column: 44, scope: !863)
!867 = !DILocation(line: 1332, column: 16, scope: !863)
!868 = !DILocation(line: 1332, column: 9, scope: !863)
!869 = !DILocation(line: 1337, column: 14, scope: !870)
!870 = distinct !DILexicalBlock(scope: !775, file: !306, line: 1336, column: 5)
!871 = !DILocation(line: 1338, column: 7, scope: !870)
!872 = !DILocation(line: 1344, column: 1, scope: !531)
!873 = distinct !DISubprogram(name: "Base64Decode", scope: !306, file: !306, line: 337, type: !874, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!874 = !DISubroutineType(types: !875)
!875 = !{!216, !241, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!877 = !{!878, !879, !880, !881, !882, !883, !884}
!878 = !DILocalVariable(name: "source", arg: 1, scope: !873, file: !306, line: 337, type: !241)
!879 = !DILocalVariable(name: "length", arg: 2, scope: !873, file: !306, line: 337, type: !876)
!880 = !DILocalVariable(name: "state", scope: !873, file: !306, line: 340, type: !138)
!881 = !DILocalVariable(name: "p", scope: !873, file: !306, line: 343, type: !241)
!882 = !DILocalVariable(name: "q", scope: !873, file: !306, line: 344, type: !241)
!883 = !DILocalVariable(name: "i", scope: !873, file: !306, line: 347, type: !213)
!884 = !DILocalVariable(name: "decode", scope: !873, file: !306, line: 350, type: !216)
!885 = !DILocation(line: 0, scope: !873)
!886 = !DILocation(line: 352, column: 10, scope: !873)
!887 = !DILocation(line: 355, column: 10, scope: !873)
!888 = !{!645, !645, i64 0}
!889 = !DILocation(line: 356, column: 49, scope: !873)
!890 = !DILocation(line: 356, column: 63, scope: !873)
!891 = !DILocation(line: 356, column: 65, scope: !873)
!892 = !DILocation(line: 356, column: 28, scope: !873)
!893 = !DILocation(line: 358, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !873, file: !306, line: 358, column: 7)
!895 = !DILocation(line: 358, column: 7, scope: !873)
!896 = !DILocation(line: 362, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !306, line: 362, column: 3)
!898 = distinct !DILexicalBlock(scope: !873, file: !306, line: 362, column: 3)
!899 = !DILocation(line: 362, column: 21, scope: !897)
!900 = !DILocation(line: 362, column: 3, scope: !898)
!901 = !DILocation(line: 364, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !306, line: 364, column: 9)
!903 = distinct !DILexicalBlock(scope: !897, file: !306, line: 363, column: 3)
!904 = !{!905, !905, i64 0}
!905 = !{!"any pointer", !472, i64 0}
!906 = !{!907, !907, i64 0}
!907 = !{!"short", !472, i64 0}
!908 = !DILocation(line: 364, column: 45, scope: !902)
!909 = !DILocation(line: 364, column: 9, scope: !903)
!910 = !DILocation(line: 366, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !903, file: !306, line: 366, column: 9)
!912 = !DILocation(line: 366, column: 9, scope: !903)
!913 = !DILocation(line: 368, column: 7, scope: !903)
!914 = !DILocation(line: 369, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !306, line: 369, column: 9)
!916 = !DILocation(line: 369, column: 9, scope: !903)
!917 = !DILocation(line: 371, column: 34, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !306, line: 370, column: 7)
!919 = !DILocation(line: 372, column: 9, scope: !918)
!920 = !DILocation(line: 374, column: 5, scope: !903)
!921 = !DILocation(line: 378, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !306, line: 377, column: 7)
!923 = distinct !DILexicalBlock(scope: !903, file: !306, line: 375, column: 5)
!924 = !DILocation(line: 378, column: 19, scope: !922)
!925 = !DILocation(line: 378, column: 9, scope: !922)
!926 = !DILocation(line: 378, column: 18, scope: !922)
!927 = !DILocation(line: 380, column: 9, scope: !922)
!928 = !DILocation(line: 384, column: 24, scope: !929)
!929 = distinct !DILexicalBlock(scope: !923, file: !306, line: 383, column: 7)
!930 = !DILocation(line: 384, column: 33, scope: !929)
!931 = !DILocation(line: 384, column: 17, scope: !929)
!932 = !DILocation(line: 384, column: 9, scope: !929)
!933 = !DILocation(line: 384, column: 20, scope: !929)
!934 = !DILocation(line: 385, column: 19, scope: !929)
!935 = !DILocation(line: 385, column: 9, scope: !929)
!936 = !DILocation(line: 385, column: 18, scope: !929)
!937 = !DILocation(line: 387, column: 9, scope: !929)
!938 = !DILocation(line: 391, column: 24, scope: !939)
!939 = distinct !DILexicalBlock(scope: !923, file: !306, line: 390, column: 7)
!940 = !DILocation(line: 391, column: 33, scope: !939)
!941 = !DILocation(line: 391, column: 17, scope: !939)
!942 = !DILocation(line: 391, column: 9, scope: !939)
!943 = !DILocation(line: 391, column: 20, scope: !939)
!944 = !DILocation(line: 392, column: 19, scope: !939)
!945 = !DILocation(line: 392, column: 9, scope: !939)
!946 = !DILocation(line: 392, column: 18, scope: !939)
!947 = !DILocation(line: 394, column: 9, scope: !939)
!948 = !DILocation(line: 398, column: 24, scope: !949)
!949 = distinct !DILexicalBlock(scope: !923, file: !306, line: 397, column: 7)
!950 = !DILocation(line: 398, column: 17, scope: !949)
!951 = !DILocation(line: 398, column: 9, scope: !949)
!952 = !DILocation(line: 398, column: 20, scope: !949)
!953 = !DILocation(line: 400, column: 9, scope: !949)
!954 = !DILocation(line: 362, column: 31, scope: !897)
!955 = distinct !{!955, !900, !956, !685, !419}
!956 = !DILocation(line: 403, column: 3, scope: !898)
!957 = !DILocation(line: 409, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !306, line: 409, column: 11)
!959 = distinct !DILexicalBlock(scope: !960, file: !306, line: 408, column: 5)
!960 = distinct !DILexicalBlock(scope: !873, file: !306, line: 407, column: 7)
!961 = !DILocation(line: 409, column: 11, scope: !959)
!962 = !DILocation(line: 411, column: 36, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !306, line: 410, column: 9)
!964 = !DILocation(line: 412, column: 11, scope: !963)
!965 = !DILocation(line: 417, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !306, line: 416, column: 5)
!967 = !DILocation(line: 418, column: 7, scope: !966)
!968 = !DILocation(line: 431, column: 19, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !306, line: 431, column: 11)
!970 = distinct !DILexicalBlock(scope: !971, file: !306, line: 431, column: 11)
!971 = distinct !DILexicalBlock(scope: !972, file: !306, line: 430, column: 9)
!972 = distinct !DILexicalBlock(scope: !966, file: !306, line: 419, column: 7)
!973 = !DILocation(line: 431, column: 22, scope: !969)
!974 = !DILocation(line: 431, column: 11, scope: !970)
!975 = !DILocation(line: 426, column: 36, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !306, line: 422, column: 9)
!977 = !DILocation(line: 427, column: 11, scope: !976)
!978 = !DILocation(line: 432, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !969, file: !306, line: 432, column: 17)
!980 = !DILocation(line: 432, column: 53, scope: !979)
!981 = !DILocation(line: 432, column: 17, scope: !969)
!982 = !DILocation(line: 431, column: 32, scope: !969)
!983 = distinct !{!983, !974, !984, !685, !419}
!984 = !DILocation(line: 433, column: 15, scope: !970)
!985 = !DILocation(line: 434, column: 18, scope: !986)
!986 = distinct !DILexicalBlock(scope: !971, file: !306, line: 434, column: 15)
!987 = !DILocation(line: 434, column: 15, scope: !971)
!988 = !DILocation(line: 436, column: 40, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !306, line: 435, column: 13)
!990 = !DILocation(line: 437, column: 15, scope: !989)
!991 = !DILocation(line: 439, column: 12, scope: !971)
!992 = !DILocation(line: 440, column: 9, scope: !971)
!993 = !DILocation(line: 0, scope: !966)
!994 = !DILocation(line: 443, column: 19, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !306, line: 443, column: 11)
!996 = distinct !DILexicalBlock(scope: !997, file: !306, line: 443, column: 11)
!997 = distinct !DILexicalBlock(scope: !972, file: !306, line: 442, column: 9)
!998 = !DILocation(line: 443, column: 22, scope: !995)
!999 = !DILocation(line: 443, column: 11, scope: !996)
!1000 = !DILocation(line: 443, column: 32, scope: !995)
!1001 = distinct !{!1001, !999, !1002, !685, !419}
!1002 = !DILocation(line: 448, column: 15, scope: !996)
!1003 = !DILocation(line: 444, column: 17, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !995, file: !306, line: 444, column: 17)
!1005 = !DILocation(line: 444, column: 53, scope: !1004)
!1006 = !DILocation(line: 444, column: 17, scope: !995)
!1007 = !DILocation(line: 446, column: 42, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !306, line: 445, column: 15)
!1009 = !DILocation(line: 447, column: 17, scope: !1008)
!1010 = !DILocation(line: 449, column: 21, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !997, file: !306, line: 449, column: 15)
!1012 = !DILocation(line: 449, column: 31, scope: !1011)
!1013 = !DILocation(line: 449, column: 15, scope: !997)
!1014 = !DILocation(line: 451, column: 40, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !306, line: 450, column: 13)
!1016 = !DILocation(line: 452, column: 15, scope: !1015)
!1017 = !DILocation(line: 457, column: 10, scope: !873)
!1018 = !DILocation(line: 458, column: 3, scope: !873)
!1019 = !DILocation(line: 459, column: 1, scope: !873)
!1020 = distinct !DISubprogram(name: "Base64Encode", scope: !306, file: !306, line: 491, type: !1021, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!225, !279, !438, !876}
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1034}
!1024 = !DILocalVariable(name: "blob", arg: 1, scope: !1020, file: !306, line: 491, type: !279)
!1025 = !DILocalVariable(name: "blob_length", arg: 2, scope: !1020, file: !306, line: 492, type: !438)
!1026 = !DILocalVariable(name: "encode_length", arg: 3, scope: !1020, file: !306, line: 492, type: !876)
!1027 = !DILocalVariable(name: "encode", scope: !1020, file: !306, line: 495, type: !225)
!1028 = !DILocalVariable(name: "p", scope: !1020, file: !306, line: 498, type: !279)
!1029 = !DILocalVariable(name: "i", scope: !1020, file: !306, line: 501, type: !213)
!1030 = !DILocalVariable(name: "remainder", scope: !1020, file: !306, line: 504, type: !213)
!1031 = !DILocalVariable(name: "j", scope: !1032, file: !306, line: 526, type: !219)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !306, line: 524, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1020, file: !306, line: 523, column: 7)
!1034 = !DILocalVariable(name: "code", scope: !1032, file: !306, line: 529, type: !1035)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !277)
!1036 = !DILocation(line: 0, scope: !1020)
!1037 = !DILocation(line: 506, column: 10, scope: !1020)
!1038 = !DILocation(line: 510, column: 17, scope: !1020)
!1039 = !DILocation(line: 511, column: 51, scope: !1020)
!1040 = !DILocation(line: 522, column: 25, scope: !1020)
!1041 = !DILocation(line: 511, column: 53, scope: !1020)
!1042 = !DILocation(line: 511, column: 19, scope: !1020)
!1043 = !DILocation(line: 512, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1020, file: !306, line: 512, column: 7)
!1045 = !DILocation(line: 512, column: 7, scope: !1020)
!1046 = !DILocation(line: 515, column: 18, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !306, line: 515, column: 3)
!1048 = distinct !DILexicalBlock(scope: !1020, file: !306, line: 515, column: 3)
!1049 = !DILocation(line: 515, column: 3, scope: !1048)
!1050 = !DILocation(line: 517, column: 31, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !306, line: 516, column: 3)
!1052 = !DILocation(line: 517, column: 34, scope: !1051)
!1053 = !DILocation(line: 517, column: 17, scope: !1051)
!1054 = !DILocation(line: 517, column: 13, scope: !1051)
!1055 = !DILocation(line: 517, column: 5, scope: !1051)
!1056 = !DILocation(line: 517, column: 16, scope: !1051)
!1057 = !DILocation(line: 518, column: 33, scope: !1051)
!1058 = !DILocation(line: 518, column: 44, scope: !1051)
!1059 = !DILocation(line: 518, column: 54, scope: !1051)
!1060 = !DILocation(line: 518, column: 51, scope: !1051)
!1061 = !DILocation(line: 518, column: 58, scope: !1051)
!1062 = !DILocation(line: 518, column: 49, scope: !1051)
!1063 = !DILocation(line: 518, column: 17, scope: !1051)
!1064 = !DILocation(line: 518, column: 13, scope: !1051)
!1065 = !DILocation(line: 518, column: 5, scope: !1051)
!1066 = !DILocation(line: 518, column: 16, scope: !1051)
!1067 = !DILocation(line: 519, column: 33, scope: !1051)
!1068 = !DILocation(line: 519, column: 48, scope: !1051)
!1069 = !DILocation(line: 519, column: 58, scope: !1051)
!1070 = !DILocation(line: 519, column: 55, scope: !1051)
!1071 = !DILocation(line: 519, column: 62, scope: !1051)
!1072 = !DILocation(line: 519, column: 53, scope: !1051)
!1073 = !DILocation(line: 519, column: 17, scope: !1051)
!1074 = !DILocation(line: 519, column: 13, scope: !1051)
!1075 = !DILocation(line: 519, column: 5, scope: !1051)
!1076 = !DILocation(line: 519, column: 16, scope: !1051)
!1077 = !DILocation(line: 520, column: 31, scope: !1051)
!1078 = !DILocation(line: 520, column: 38, scope: !1051)
!1079 = !DILocation(line: 520, column: 17, scope: !1051)
!1080 = !DILocation(line: 520, column: 13, scope: !1051)
!1081 = !DILocation(line: 520, column: 5, scope: !1051)
!1082 = !DILocation(line: 520, column: 16, scope: !1051)
!1083 = !DILocation(line: 515, column: 43, scope: !1047)
!1084 = distinct !{!1084, !1049, !1085, !685, !419}
!1085 = !DILocation(line: 521, column: 3, scope: !1048)
!1086 = !DILocation(line: 0, scope: !1048)
!1087 = !DILocation(line: 523, column: 17, scope: !1033)
!1088 = !DILocation(line: 523, column: 7, scope: !1020)
!1089 = !DILocation(line: 528, column: 7, scope: !1032)
!1090 = !DILocation(line: 529, column: 9, scope: !1032)
!1091 = !DILocation(line: 531, column: 14, scope: !1032)
!1092 = !DILocation(line: 532, column: 7, scope: !1032)
!1093 = !DILocation(line: 532, column: 14, scope: !1032)
!1094 = !DILocation(line: 533, column: 7, scope: !1032)
!1095 = !DILocation(line: 533, column: 14, scope: !1032)
!1096 = !DILocation(line: 0, scope: !1032)
!1097 = !DILocation(line: 534, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1032, file: !306, line: 534, column: 7)
!1099 = !DILocation(line: 535, column: 20, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1098, file: !306, line: 534, column: 7)
!1101 = !DILocation(line: 535, column: 18, scope: !1100)
!1102 = !DILocation(line: 535, column: 9, scope: !1100)
!1103 = !DILocation(line: 535, column: 16, scope: !1100)
!1104 = !DILocation(line: 534, column: 43, scope: !1100)
!1105 = !DILocation(line: 534, column: 19, scope: !1100)
!1106 = distinct !{!1106, !1097, !1107, !685, !419}
!1107 = !DILocation(line: 535, column: 22, scope: !1098)
!1108 = !DILocation(line: 536, column: 33, scope: !1032)
!1109 = !DILocation(line: 537, column: 58, scope: !1032)
!1110 = !DILocation(line: 536, column: 41, scope: !1032)
!1111 = !DILocation(line: 536, column: 19, scope: !1032)
!1112 = !DILocation(line: 536, column: 15, scope: !1032)
!1113 = !DILocation(line: 536, column: 7, scope: !1032)
!1114 = !DILocation(line: 536, column: 18, scope: !1032)
!1115 = !DILocation(line: 537, column: 51, scope: !1032)
!1116 = !DILocation(line: 537, column: 66, scope: !1032)
!1117 = !DILocation(line: 537, column: 56, scope: !1032)
!1118 = !DILocation(line: 537, column: 19, scope: !1032)
!1119 = !DILocation(line: 537, column: 15, scope: !1032)
!1120 = !DILocation(line: 537, column: 7, scope: !1032)
!1121 = !DILocation(line: 537, column: 18, scope: !1032)
!1122 = !DILocation(line: 538, column: 21, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1032, file: !306, line: 538, column: 11)
!1124 = !DILocation(line: 538, column: 11, scope: !1032)
!1125 = !DILocation(line: 541, column: 53, scope: !1123)
!1126 = !DILocation(line: 541, column: 60, scope: !1123)
!1127 = !DILocation(line: 541, column: 68, scope: !1123)
!1128 = !DILocation(line: 541, column: 58, scope: !1123)
!1129 = !DILocation(line: 541, column: 21, scope: !1123)
!1130 = !DILocation(line: 0, scope: !1123)
!1131 = !DILocation(line: 539, column: 9, scope: !1123)
!1132 = !DILocation(line: 539, column: 20, scope: !1123)
!1133 = !DILocation(line: 542, column: 15, scope: !1032)
!1134 = !DILocation(line: 542, column: 7, scope: !1032)
!1135 = !DILocation(line: 542, column: 18, scope: !1032)
!1136 = !DILocation(line: 543, column: 5, scope: !1033)
!1137 = !DILocation(line: 543, column: 5, scope: !1032)
!1138 = !DILocation(line: 544, column: 17, scope: !1020)
!1139 = !DILocation(line: 545, column: 3, scope: !1020)
!1140 = !DILocation(line: 545, column: 14, scope: !1020)
!1141 = !DILocation(line: 546, column: 3, scope: !1020)
!1142 = !DILocation(line: 547, column: 1, scope: !1020)
!1143 = distinct !DISubprogram(name: "ChopPathComponents", scope: !306, file: !306, line: 574, type: !1144, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !225, !438}
!1146 = !{!1147, !1148, !1149}
!1147 = !DILocalVariable(name: "path", arg: 1, scope: !1143, file: !306, line: 574, type: !225)
!1148 = !DILocalVariable(name: "components", arg: 2, scope: !1143, file: !306, line: 574, type: !438)
!1149 = !DILocalVariable(name: "i", scope: !1143, file: !306, line: 577, type: !219)
!1150 = !DILocation(line: 0, scope: !1143)
!1151 = !DILocation(line: 579, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !306, line: 579, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1143, file: !306, line: 579, column: 3)
!1154 = !DILocation(line: 579, column: 3, scope: !1153)
!1155 = !DILocation(line: 580, column: 5, scope: !1152)
!1156 = !DILocation(line: 579, column: 40, scope: !1152)
!1157 = distinct !{!1157, !1154, !1158, !685, !419}
!1158 = !DILocation(line: 580, column: 40, scope: !1153)
!1159 = !DILocation(line: 581, column: 1, scope: !1143)
!1160 = distinct !DISubprogram(name: "ExpandFilename", scope: !306, file: !306, line: 606, type: !1161, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !225}
!1163 = !{!1164, !1165, !1166, !1169, !1171, !1172}
!1164 = !DILocalVariable(name: "path", arg: 1, scope: !1160, file: !306, line: 606, type: !225)
!1165 = !DILocalVariable(name: "expand_path", scope: !1160, file: !306, line: 609, type: !457)
!1166 = !DILocalVariable(name: "home", scope: !1167, file: !306, line: 619, type: !225)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !306, line: 617, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !306, line: 616, column: 7)
!1169 = !DILocalVariable(name: "username", scope: !1170, file: !306, line: 640, type: !457)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !306, line: 637, column: 5)
!1171 = !DILocalVariable(name: "p", scope: !1170, file: !306, line: 643, type: !225)
!1172 = !DILocalVariable(name: "entry", scope: !1170, file: !306, line: 646, type: !227)
!1173 = !DILocation(line: 0, scope: !1160)
!1174 = !DILocation(line: 608, column: 3, scope: !1160)
!1175 = !DILocation(line: 609, column: 5, scope: !1160)
!1176 = !DILocation(line: 611, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1160, file: !306, line: 611, column: 7)
!1178 = !DILocation(line: 611, column: 7, scope: !1160)
!1179 = !DILocation(line: 613, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1160, file: !306, line: 613, column: 7)
!1181 = !DILocation(line: 613, column: 13, scope: !1180)
!1182 = !DILocation(line: 613, column: 7, scope: !1160)
!1183 = !DILocation(line: 615, column: 10, scope: !1160)
!1184 = !DILocation(line: 616, column: 14, scope: !1168)
!1185 = !DILocation(line: 616, column: 8, scope: !1168)
!1186 = !DILocation(line: 616, column: 42, scope: !1168)
!1187 = !DILocation(line: 624, column: 14, scope: !1167)
!1188 = !DILocation(line: 625, column: 14, scope: !1167)
!1189 = !DILocation(line: 626, column: 12, scope: !1167)
!1190 = !DILocation(line: 0, scope: !1167)
!1191 = !DILocation(line: 627, column: 16, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1167, file: !306, line: 627, column: 11)
!1193 = !DILocation(line: 627, column: 11, scope: !1167)
!1194 = !DILocation(line: 628, column: 14, scope: !1192)
!1195 = !DILocation(line: 629, column: 16, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1167, file: !306, line: 629, column: 11)
!1197 = !DILocation(line: 629, column: 11, scope: !1167)
!1198 = !DILocation(line: 631, column: 18, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !306, line: 630, column: 9)
!1200 = !DILocation(line: 632, column: 18, scope: !1199)
!1201 = !DILocation(line: 633, column: 16, scope: !1199)
!1202 = !DILocation(line: 634, column: 9, scope: !1199)
!1203 = !DILocation(line: 639, column: 7, scope: !1170)
!1204 = !DILocation(line: 640, column: 9, scope: !1170)
!1205 = !DILocation(line: 651, column: 14, scope: !1170)
!1206 = !DILocation(line: 652, column: 9, scope: !1170)
!1207 = !DILocation(line: 0, scope: !1170)
!1208 = !DILocation(line: 653, column: 13, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1170, file: !306, line: 653, column: 11)
!1210 = !DILocation(line: 653, column: 11, scope: !1170)
!1211 = !DILocation(line: 654, column: 11, scope: !1209)
!1212 = !DILocation(line: 654, column: 9, scope: !1209)
!1213 = !DILocation(line: 655, column: 13, scope: !1170)
!1214 = !DILocation(line: 656, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1170, file: !306, line: 656, column: 11)
!1216 = !DILocation(line: 656, column: 11, scope: !1170)
!1217 = !DILocation(line: 658, column: 50, scope: !1170)
!1218 = !{!1219, !905, i64 32}
!1219 = !{!"passwd", !905, i64 0, !905, i64 8, !646, i64 16, !646, i64 20, !905, i64 24, !905, i64 32, !905, i64 40}
!1220 = !DILocation(line: 658, column: 14, scope: !1170)
!1221 = !DILocation(line: 659, column: 11, scope: !1170)
!1222 = !DILocation(line: 661, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !306, line: 660, column: 9)
!1224 = distinct !DILexicalBlock(scope: !1170, file: !306, line: 659, column: 11)
!1225 = !DILocation(line: 662, column: 55, scope: !1223)
!1226 = !DILocation(line: 662, column: 18, scope: !1223)
!1227 = !DILocation(line: 663, column: 9, scope: !1223)
!1228 = !DILocation(line: 665, column: 5, scope: !1168)
!1229 = !DILocation(line: 666, column: 10, scope: !1160)
!1230 = !DILocation(line: 667, column: 1, scope: !1160)
!1231 = !DISubprogram(name: "ConcatenateMagickString", scope: !519, file: !519, line: 76, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1232 = !DISubprogram(name: "GetEnvironmentValue", scope: !519, file: !519, line: 50, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!225, !241}
!1235 = !DISubprogram(name: "DestroyString", scope: !519, file: !519, line: 46, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!225, !225}
!1238 = !DISubprogram(name: "getpwnam", scope: !229, file: !229, line: 116, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!227, !241}
!1241 = distinct !DISubprogram(name: "ExpandFilenames", scope: !306, file: !306, line: 725, type: !1242, scopeLine: 727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!324, !1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1260, !1277, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1290, !1292, !1293, !1299, !1302, !1303, !1306, !1309, !1310}
!1247 = !DILocalVariable(name: "number_arguments", arg: 1, scope: !1241, file: !306, line: 725, type: !1244)
!1248 = !DILocalVariable(name: "arguments", arg: 2, scope: !1241, file: !306, line: 726, type: !1245)
!1249 = !DILocalVariable(name: "directory", scope: !1241, file: !306, line: 729, type: !225)
!1250 = !DILocalVariable(name: "home_directory", scope: !1241, file: !306, line: 730, type: !457)
!1251 = !DILocalVariable(name: "vector", scope: !1241, file: !306, line: 731, type: !240)
!1252 = !DILocalVariable(name: "i", scope: !1241, file: !306, line: 734, type: !219)
!1253 = !DILocalVariable(name: "j", scope: !1241, file: !306, line: 735, type: !219)
!1254 = !DILocalVariable(name: "number_files", scope: !1241, file: !306, line: 738, type: !213)
!1255 = !DILocalVariable(name: "count", scope: !1241, file: !306, line: 741, type: !219)
!1256 = !DILocalVariable(name: "parameters", scope: !1241, file: !306, line: 742, type: !219)
!1257 = !DILocalVariable(name: "message", scope: !1258, file: !306, line: 753, type: !225)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !306, line: 753, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1241, file: !306, line: 752, column: 7)
!1260 = !DILocalVariable(name: "exception", scope: !1258, file: !306, line: 753, type: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !64, line: 102, size: 448, elements: !1263)
!1263 = !{!1264, !1266, !1267, !1268, !1269, !1270, !1271, !1276}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1262, file: !64, line: 105, baseType: !1265, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !64, line: 100, baseType: !63)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !1262, file: !64, line: 108, baseType: !138, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1262, file: !64, line: 111, baseType: !225, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1262, file: !64, line: 112, baseType: !225, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !1262, file: !64, line: 115, baseType: !218, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !1262, file: !64, line: 118, baseType: !324, size: 32, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1262, file: !64, line: 121, baseType: !1272, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !1274, line: 26, baseType: !1275)
!1274 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !1274, line: 25, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1262, file: !64, line: 124, baseType: !213, size: 64, offset: 384)
!1277 = !DILocalVariable(name: "filelist", scope: !1278, file: !306, line: 762, type: !240)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !306, line: 760, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !306, line: 759, column: 3)
!1280 = distinct !DILexicalBlock(scope: !1241, file: !306, line: 759, column: 3)
!1281 = !DILocalVariable(name: "filename", scope: !1278, file: !306, line: 763, type: !457)
!1282 = !DILocalVariable(name: "magick", scope: !1278, file: !306, line: 764, type: !457)
!1283 = !DILocalVariable(name: "option", scope: !1278, file: !306, line: 765, type: !225)
!1284 = !DILocalVariable(name: "path", scope: !1278, file: !306, line: 766, type: !457)
!1285 = !DILocalVariable(name: "subimage", scope: !1278, file: !306, line: 767, type: !457)
!1286 = !DILocalVariable(name: "destroy", scope: !1278, file: !306, line: 770, type: !324)
!1287 = !DILocalVariable(name: "files", scope: !1288, file: !306, line: 824, type: !225)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !306, line: 822, column: 7)
!1289 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 807, column: 9)
!1290 = !DILocalVariable(name: "exception", scope: !1288, file: !306, line: 827, type: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1292 = !DILocalVariable(name: "length", scope: !1288, file: !306, line: 830, type: !138)
!1293 = !DILocalVariable(name: "k", scope: !1294, file: !306, line: 875, type: !219)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !306, line: 873, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !306, line: 872, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !306, line: 869, column: 5)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !306, line: 868, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 868, column: 5)
!1299 = !DILocalVariable(name: "message", scope: !1300, file: !306, line: 899, type: !225)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !306, line: 899, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !306, line: 898, column: 11)
!1302 = !DILocalVariable(name: "exception", scope: !1300, file: !306, line: 899, type: !1261)
!1303 = !DILocalVariable(name: "path", scope: !1304, file: !306, line: 903, type: !457)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !306, line: 901, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !306, line: 900, column: 11)
!1306 = !DILocalVariable(name: "message", scope: !1307, file: !306, line: 919, type: !225)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !306, line: 919, column: 13)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !306, line: 918, column: 15)
!1309 = !DILocalVariable(name: "exception", scope: !1307, file: !306, line: 919, type: !1261)
!1310 = !DILocalVariable(name: "command_line", scope: !1311, file: !306, line: 935, type: !225)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !306, line: 933, column: 5)
!1312 = distinct !DILexicalBlock(scope: !1241, file: !306, line: 932, column: 7)
!1313 = !DILocation(line: 0, scope: !1241)
!1314 = !DILocation(line: 728, column: 3, scope: !1241)
!1315 = !DILocation(line: 730, column: 5, scope: !1241)
!1316 = !DILocation(line: 737, column: 3, scope: !1241)
!1317 = !DILocation(line: 747, column: 10, scope: !1241)
!1318 = !DILocation(line: 750, column: 51, scope: !1241)
!1319 = !{!646, !646, i64 0}
!1320 = !DILocation(line: 750, column: 68, scope: !1241)
!1321 = !DILocation(line: 750, column: 41, scope: !1241)
!1322 = !DILocation(line: 750, column: 20, scope: !1241)
!1323 = !DILocation(line: 752, column: 14, scope: !1259)
!1324 = !DILocation(line: 752, column: 7, scope: !1241)
!1325 = !DILocation(line: 753, column: 5, scope: !1258)
!1326 = !DILocation(line: 0, scope: !1258)
!1327 = !DILocation(line: 757, column: 18, scope: !1241)
!1328 = !DILocation(line: 0, scope: !1278)
!1329 = !DILocation(line: 759, column: 27, scope: !1279)
!1330 = !DILocation(line: 759, column: 15, scope: !1279)
!1331 = !DILocation(line: 759, column: 3, scope: !1280)
!1332 = !DILocation(line: 761, column: 5, scope: !1278)
!1333 = !DILocation(line: 763, column: 7, scope: !1278)
!1334 = !DILocation(line: 764, column: 7, scope: !1278)
!1335 = !DILocation(line: 766, column: 7, scope: !1278)
!1336 = !DILocation(line: 767, column: 7, scope: !1278)
!1337 = !DILocation(line: 772, column: 13, scope: !1278)
!1338 = !DILocation(line: 772, column: 12, scope: !1278)
!1339 = !DILocation(line: 773, column: 12, scope: !1278)
!1340 = !DILocation(line: 774, column: 10, scope: !1278)
!1341 = !DILocation(line: 775, column: 14, scope: !1278)
!1342 = !DILocation(line: 776, column: 14, scope: !1278)
!1343 = !DILocation(line: 777, column: 17, scope: !1278)
!1344 = !DILocation(line: 778, column: 21, scope: !1278)
!1345 = !DILocation(line: 778, column: 17, scope: !1278)
!1346 = !DILocation(line: 778, column: 5, scope: !1278)
!1347 = !DILocation(line: 778, column: 20, scope: !1278)
!1348 = !DILocation(line: 780, column: 16, scope: !1278)
!1349 = !DILocation(line: 781, column: 20, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 781, column: 9)
!1351 = !DILocation(line: 781, column: 9, scope: !1278)
!1352 = !DILocation(line: 786, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !306, line: 786, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !306, line: 782, column: 7)
!1355 = !DILocation(line: 788, column: 12, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !306, line: 787, column: 9)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !306, line: 786, column: 9)
!1358 = !DILocation(line: 789, column: 30, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !306, line: 789, column: 15)
!1360 = !DILocation(line: 789, column: 20, scope: !1359)
!1361 = !DILocation(line: 789, column: 17, scope: !1359)
!1362 = !DILocation(line: 789, column: 15, scope: !1356)
!1363 = !DILocation(line: 791, column: 19, scope: !1356)
!1364 = !DILocation(line: 791, column: 18, scope: !1356)
!1365 = !DILocation(line: 792, column: 27, scope: !1356)
!1366 = !DILocation(line: 792, column: 23, scope: !1356)
!1367 = !DILocation(line: 792, column: 11, scope: !1356)
!1368 = !DILocation(line: 792, column: 26, scope: !1356)
!1369 = !DILocation(line: 786, column: 21, scope: !1357)
!1370 = distinct !{!1370, !1352, !1371, !685, !419}
!1371 = !DILocation(line: 793, column: 9, scope: !1353)
!1372 = !DILocation(line: 796, column: 10, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 796, column: 9)
!1374 = !DILocation(line: 796, column: 26, scope: !1373)
!1375 = !DILocation(line: 798, column: 5, scope: !1278)
!1376 = !DILocation(line: 799, column: 5, scope: !1278)
!1377 = !DILocation(line: 800, column: 10, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 800, column: 9)
!1379 = !DILocation(line: 800, column: 42, scope: !1378)
!1380 = !DILocation(line: 800, column: 48, scope: !1378)
!1381 = !DILocation(line: 801, column: 10, scope: !1378)
!1382 = !DILocation(line: 801, column: 40, scope: !1378)
!1383 = !DILocation(line: 801, column: 46, scope: !1378)
!1384 = !DILocation(line: 802, column: 10, scope: !1378)
!1385 = !DILocation(line: 802, column: 40, scope: !1378)
!1386 = !DILocation(line: 802, column: 46, scope: !1378)
!1387 = !DILocation(line: 803, column: 10, scope: !1378)
!1388 = !DILocation(line: 803, column: 38, scope: !1378)
!1389 = !DILocation(line: 800, column: 9, scope: !1278)
!1390 = !DILocation(line: 805, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 805, column: 9)
!1392 = !DILocation(line: 805, column: 27, scope: !1391)
!1393 = !DILocation(line: 805, column: 43, scope: !1391)
!1394 = !DILocation(line: 805, column: 9, scope: !1278)
!1395 = !DILocation(line: 807, column: 9, scope: !1278)
!1396 = !DILocation(line: 812, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1289, file: !306, line: 808, column: 7)
!1398 = !DILocation(line: 813, column: 9, scope: !1397)
!1399 = !DILocation(line: 814, column: 9, scope: !1397)
!1400 = !DILocation(line: 815, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !306, line: 815, column: 13)
!1402 = !DILocation(line: 815, column: 29, scope: !1401)
!1403 = !DILocation(line: 815, column: 13, scope: !1397)
!1404 = !DILocation(line: 816, column: 21, scope: !1401)
!1405 = !DILocation(line: 816, column: 11, scope: !1401)
!1406 = !DILocation(line: 829, column: 9, scope: !1288)
!1407 = !DILocation(line: 835, column: 19, scope: !1288)
!1408 = !DILocation(line: 0, scope: !1288)
!1409 = !DILocation(line: 836, column: 34, scope: !1288)
!1410 = !DILocation(line: 836, column: 15, scope: !1288)
!1411 = !DILocation(line: 837, column: 19, scope: !1288)
!1412 = !DILocation(line: 838, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1288, file: !306, line: 838, column: 13)
!1414 = !DILocation(line: 838, column: 13, scope: !1288)
!1415 = !DILocation(line: 840, column: 18, scope: !1288)
!1416 = !DILocation(line: 841, column: 22, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1288, file: !306, line: 841, column: 13)
!1418 = !DILocation(line: 841, column: 13, scope: !1288)
!1419 = !DILocation(line: 843, column: 15, scope: !1288)
!1420 = !DILocation(line: 844, column: 35, scope: !1288)
!1421 = !DILocation(line: 844, column: 21, scope: !1288)
!1422 = !DILocation(line: 844, column: 20, scope: !1288)
!1423 = !DILocation(line: 845, column: 21, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !306, line: 845, column: 9)
!1425 = distinct !DILexicalBlock(scope: !1288, file: !306, line: 845, column: 9)
!1426 = !DILocation(line: 845, column: 9, scope: !1425)
!1427 = !DILocation(line: 846, column: 22, scope: !1424)
!1428 = !DILocation(line: 847, column: 22, scope: !1288)
!1429 = !DILocation(line: 848, column: 7, scope: !1289)
!1430 = !DILocation(line: 847, column: 37, scope: !1288)
!1431 = !DILocation(line: 847, column: 21, scope: !1288)
!1432 = !DILocation(line: 849, column: 9, scope: !1278)
!1433 = !DILocation(line: 818, column: 28, scope: !1397)
!1434 = !DILocation(line: 818, column: 34, scope: !1397)
!1435 = !DILocation(line: 818, column: 18, scope: !1397)
!1436 = !DILocation(line: 849, column: 18, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 849, column: 9)
!1438 = !DILocation(line: 851, column: 17, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !306, line: 851, column: 5)
!1440 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 851, column: 5)
!1441 = !DILocation(line: 851, column: 5, scope: !1440)
!1442 = !DILocation(line: 852, column: 27, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !306, line: 852, column: 11)
!1444 = !DILocation(line: 0, scope: !576, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 852, column: 11, scope: !1443)
!1446 = !DILocation(line: 1482, column: 3, scope: !576, inlinedAt: !1445)
!1447 = !DILocation(line: 1483, column: 5, scope: !576, inlinedAt: !1445)
!1448 = !DILocation(line: 1485, column: 13, scope: !588, inlinedAt: !1445)
!1449 = !DILocation(line: 1485, column: 37, scope: !588, inlinedAt: !1445)
!1450 = !DILocation(line: 1485, column: 41, scope: !588, inlinedAt: !1445)
!1451 = !DILocation(line: 1485, column: 47, scope: !588, inlinedAt: !1445)
!1452 = !DILocation(line: 1485, column: 7, scope: !576, inlinedAt: !1445)
!1453 = !DILocation(line: 0, scope: !592, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 1487, column: 10, scope: !576, inlinedAt: !1445)
!1455 = !DILocation(line: 0, scope: !601, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !1454)
!1457 = !DILocation(line: 0, scope: !609, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1456)
!1459 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1458)
!1460 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !1454)
!1461 = !DILocation(line: 1488, column: 7, scope: !576, inlinedAt: !1445)
!1462 = !DILocation(line: 1493, column: 1, scope: !576, inlinedAt: !1445)
!1463 = !DILocation(line: 852, column: 11, scope: !1439)
!1464 = !DILocation(line: 1490, column: 7, scope: !1465, inlinedAt: !1445)
!1465 = distinct !DILexicalBlock(scope: !576, file: !306, line: 1490, column: 7)
!1466 = !DILocation(line: 851, column: 44, scope: !1439)
!1467 = distinct !{!1467, !1441, !1468, !685, !419}
!1468 = !DILocation(line: 853, column: 9, scope: !1440)
!1469 = !DILocation(line: 854, column: 11, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 854, column: 9)
!1471 = !DILocation(line: 854, column: 9, scope: !1278)
!1472 = !DILocation(line: 856, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !306, line: 856, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !306, line: 855, column: 7)
!1475 = !DILocation(line: 857, column: 37, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !306, line: 856, column: 9)
!1477 = !DILocation(line: 857, column: 23, scope: !1476)
!1478 = !DILocation(line: 857, column: 22, scope: !1476)
!1479 = !DILocation(line: 856, column: 48, scope: !1476)
!1480 = !DILocation(line: 856, column: 21, scope: !1476)
!1481 = distinct !{!1481, !1472, !1482, !685, !419}
!1482 = !DILocation(line: 857, column: 48, scope: !1473)
!1483 = !DILocation(line: 858, column: 28, scope: !1474)
!1484 = !DILocation(line: 859, column: 9, scope: !1474)
!1485 = !DILocation(line: 864, column: 58, scope: !1278)
!1486 = !DILocation(line: 864, column: 49, scope: !1278)
!1487 = !DILocation(line: 864, column: 75, scope: !1278)
!1488 = !DILocation(line: 865, column: 12, scope: !1278)
!1489 = !DILocation(line: 865, column: 25, scope: !1278)
!1490 = !DILocation(line: 864, column: 22, scope: !1278)
!1491 = !DILocation(line: 866, column: 16, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1278, file: !306, line: 866, column: 9)
!1493 = !DILocation(line: 866, column: 9, scope: !1278)
!1494 = !DILocation(line: 868, column: 5, scope: !1298)
!1495 = !DILocation(line: 870, column: 14, scope: !1296)
!1496 = !DILocation(line: 871, column: 18, scope: !1296)
!1497 = !DILocation(line: 872, column: 22, scope: !1295)
!1498 = !DILocation(line: 872, column: 11, scope: !1296)
!1499 = !DILocation(line: 880, column: 27, scope: !1294)
!1500 = !DILocation(line: 880, column: 11, scope: !1294)
!1501 = !DILocation(line: 880, column: 26, scope: !1294)
!1502 = !DILocation(line: 0, scope: !1294)
!1503 = !DILocation(line: 881, column: 11, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1294, file: !306, line: 881, column: 11)
!1505 = !DILocation(line: 883, column: 14, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !306, line: 882, column: 11)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !306, line: 881, column: 11)
!1508 = !DILocation(line: 884, column: 19, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !306, line: 884, column: 17)
!1510 = !DILocation(line: 884, column: 17, scope: !1506)
!1511 = !DILocation(line: 886, column: 20, scope: !1506)
!1512 = !DILocation(line: 887, column: 29, scope: !1506)
!1513 = !DILocation(line: 887, column: 13, scope: !1506)
!1514 = !DILocation(line: 887, column: 28, scope: !1506)
!1515 = !DILocation(line: 881, column: 23, scope: !1507)
!1516 = distinct !{!1516, !1503, !1517, !685, !419}
!1517 = !DILocation(line: 888, column: 11, scope: !1504)
!1518 = !DILocation(line: 891, column: 14, scope: !1296)
!1519 = !DILocation(line: 892, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1296, file: !306, line: 892, column: 11)
!1521 = !DILocation(line: 892, column: 17, scope: !1520)
!1522 = !DILocation(line: 892, column: 11, scope: !1296)
!1523 = !DILocation(line: 893, column: 16, scope: !1520)
!1524 = !DILocation(line: 893, column: 9, scope: !1520)
!1525 = !DILocation(line: 895, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1296, file: !306, line: 895, column: 11)
!1527 = !DILocation(line: 895, column: 23, scope: !1526)
!1528 = !DILocation(line: 895, column: 11, scope: !1296)
!1529 = !DILocation(line: 896, column: 16, scope: !1526)
!1530 = !DILocation(line: 897, column: 33, scope: !1296)
!1531 = !DILocation(line: 896, column: 9, scope: !1526)
!1532 = !DILocation(line: 897, column: 19, scope: !1296)
!1533 = !DILocation(line: 897, column: 18, scope: !1296)
!1534 = !DILocation(line: 898, column: 11, scope: !1301)
!1535 = !DILocation(line: 898, column: 28, scope: !1301)
!1536 = !DILocation(line: 898, column: 11, scope: !1296)
!1537 = !DILocation(line: 899, column: 9, scope: !1300)
!1538 = !DILocation(line: 0, scope: !1300)
!1539 = !DILocation(line: 0, scope: !576, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 900, column: 11, scope: !1305)
!1541 = !DILocation(line: 1482, column: 3, scope: !576, inlinedAt: !1540)
!1542 = !DILocation(line: 1483, column: 5, scope: !576, inlinedAt: !1540)
!1543 = !DILocation(line: 1485, column: 41, scope: !588, inlinedAt: !1540)
!1544 = !DILocation(line: 1485, column: 47, scope: !588, inlinedAt: !1540)
!1545 = !DILocation(line: 1485, column: 7, scope: !576, inlinedAt: !1540)
!1546 = !DILocation(line: 0, scope: !592, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 1487, column: 10, scope: !576, inlinedAt: !1540)
!1548 = !DILocation(line: 0, scope: !601, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !1547)
!1550 = !DILocation(line: 0, scope: !609, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1549)
!1552 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1551)
!1553 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !1547)
!1554 = !DILocation(line: 1488, column: 7, scope: !576, inlinedAt: !1540)
!1555 = !DILocation(line: 1493, column: 1, scope: !576, inlinedAt: !1540)
!1556 = !DILocation(line: 900, column: 11, scope: !1296)
!1557 = !DILocation(line: 1490, column: 7, scope: !1465, inlinedAt: !1540)
!1558 = !DILocation(line: 902, column: 11, scope: !1304)
!1559 = !DILocation(line: 903, column: 13, scope: !1304)
!1560 = !DILocation(line: 905, column: 16, scope: !1304)
!1561 = !DILocation(line: 906, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1304, file: !306, line: 906, column: 15)
!1563 = !DILocation(line: 906, column: 23, scope: !1562)
!1564 = !DILocation(line: 906, column: 15, scope: !1304)
!1565 = !DILocation(line: 908, column: 22, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !306, line: 907, column: 13)
!1567 = !DILocation(line: 909, column: 22, scope: !1566)
!1568 = !DILocation(line: 910, column: 13, scope: !1566)
!1569 = !DILocation(line: 911, column: 18, scope: !1304)
!1570 = !DILocation(line: 912, column: 15, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1304, file: !306, line: 912, column: 15)
!1572 = !DILocation(line: 912, column: 25, scope: !1571)
!1573 = !DILocation(line: 912, column: 15, scope: !1304)
!1574 = !DILocation(line: 914, column: 22, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !306, line: 913, column: 13)
!1576 = !DILocation(line: 915, column: 22, scope: !1575)
!1577 = !DILocation(line: 916, column: 22, scope: !1575)
!1578 = !DILocation(line: 917, column: 13, scope: !1575)
!1579 = !DILocation(line: 918, column: 15, scope: !1308)
!1580 = !DILocation(line: 918, column: 28, scope: !1308)
!1581 = !DILocation(line: 918, column: 15, scope: !1304)
!1582 = !DILocation(line: 919, column: 13, scope: !1307)
!1583 = !DILocation(line: 0, scope: !1307)
!1584 = !DILocation(line: 920, column: 23, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1304, file: !306, line: 920, column: 15)
!1586 = !DILocation(line: 920, column: 15, scope: !1304)
!1587 = !DILocation(line: 922, column: 20, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !306, line: 921, column: 13)
!1589 = !DILocation(line: 923, column: 43, scope: !1588)
!1590 = !DILocation(line: 923, column: 29, scope: !1588)
!1591 = !DILocation(line: 923, column: 28, scope: !1588)
!1592 = !DILocation(line: 925, column: 13, scope: !1588)
!1593 = !DILocation(line: 926, column: 27, scope: !1304)
!1594 = !DILocation(line: 926, column: 23, scope: !1304)
!1595 = !DILocation(line: 926, column: 11, scope: !1304)
!1596 = !DILocation(line: 926, column: 26, scope: !1304)
!1597 = !DILocation(line: 927, column: 9, scope: !1305)
!1598 = !DILocation(line: 927, column: 9, scope: !1304)
!1599 = !DILocation(line: 0, scope: !1298)
!1600 = !DILocation(line: 868, column: 44, scope: !1297)
!1601 = !DILocation(line: 868, column: 17, scope: !1297)
!1602 = distinct !{!1602, !1494, !1603, !685, !419}
!1603 = !DILocation(line: 928, column: 5, scope: !1298)
!1604 = !DILocation(line: 929, column: 24, scope: !1278)
!1605 = !DILocation(line: 930, column: 3, scope: !1279)
!1606 = !DILocation(line: 759, column: 47, scope: !1279)
!1607 = !DILocation(line: 759, column: 17, scope: !1279)
!1608 = distinct !{!1608, !1331, !1609, !685, !419}
!1609 = !DILocation(line: 930, column: 3, scope: !1280)
!1610 = !DILocation(line: 750, column: 9, scope: !1241)
!1611 = !DILocation(line: 931, column: 3, scope: !1241)
!1612 = !DILocation(line: 931, column: 16, scope: !1241)
!1613 = !DILocation(line: 932, column: 7, scope: !1312)
!1614 = !DILocation(line: 932, column: 24, scope: !1312)
!1615 = !DILocation(line: 932, column: 7, scope: !1241)
!1616 = !DILocation(line: 934, column: 7, scope: !1311)
!1617 = !DILocation(line: 937, column: 34, scope: !1311)
!1618 = !DILocation(line: 937, column: 20, scope: !1311)
!1619 = !DILocation(line: 0, scope: !1311)
!1620 = !DILocation(line: 937, column: 19, scope: !1311)
!1621 = !DILocation(line: 938, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !306, line: 938, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1311, file: !306, line: 938, column: 7)
!1624 = !DILocation(line: 938, column: 7, scope: !1623)
!1625 = !DILocation(line: 940, column: 16, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !306, line: 939, column: 7)
!1627 = !DILocation(line: 941, column: 48, scope: !1626)
!1628 = !DILocation(line: 941, column: 16, scope: !1626)
!1629 = !DILocation(line: 942, column: 16, scope: !1626)
!1630 = !DILocation(line: 938, column: 29, scope: !1622)
!1631 = distinct !{!1631, !1624, !1632, !685, !419}
!1632 = !DILocation(line: 943, column: 7, scope: !1623)
!1633 = !DILocation(line: 945, column: 28, scope: !1311)
!1634 = !DILocation(line: 944, column: 14, scope: !1311)
!1635 = !DILocation(line: 946, column: 34, scope: !1311)
!1636 = !DILocation(line: 946, column: 20, scope: !1311)
!1637 = !DILocation(line: 947, column: 5, scope: !1312)
!1638 = !DILocation(line: 947, column: 5, scope: !1311)
!1639 = !DILocation(line: 948, column: 21, scope: !1241)
!1640 = !DILocation(line: 948, column: 20, scope: !1241)
!1641 = !DILocation(line: 949, column: 13, scope: !1241)
!1642 = !DILocation(line: 950, column: 3, scope: !1241)
!1643 = !DILocation(line: 951, column: 1, scope: !1241)
!1644 = !DISubprogram(name: "GetExceptionInfo", scope: !64, file: !64, line: 166, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1291}
!1647 = !DISubprogram(name: "GetExceptionMessage", scope: !64, file: !64, line: 137, type: !1648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!225, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1651 = !DISubprogram(name: "ThrowMagickException", scope: !64, file: !64, line: 156, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!324, !1291, !241, !241, !438, !1654, !241, !241, null}
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!1655 = !DISubprogram(name: "CatchException", scope: !64, file: !64, line: 164, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1656 = !DISubprogram(name: "DestroyExceptionInfo", scope: !64, file: !64, line: 148, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1291, !1291}
!1659 = !DISubprogram(name: "MagickCoreTerminus", scope: !1660, file: !1660, line: 147, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1660 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null}
!1663 = !DISubprogram(name: "ConstantString", scope: !519, file: !519, line: 45, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1664 = !DISubprogram(name: "ParseCommandOption", scope: !137, file: !137, line: 172, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!219, !1667, !1669, !241}
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !137, line: 99, baseType: !136)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!1670 = !DISubprogram(name: "IsGlob", scope: !1671, file: !1671, line: 37, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1671 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1672 = !DISubprogram(name: "getcwd", scope: !341, file: !341, line: 511, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!225, !225, !213}
!1675 = distinct !DISubprogram(name: "ListFiles", scope: !306, file: !306, line: 1562, type: !1676, scopeLine: 1564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!240, !241, !241, !876}
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1690}
!1679 = !DILocalVariable(name: "directory", arg: 1, scope: !1675, file: !306, line: 1562, type: !241)
!1680 = !DILocalVariable(name: "pattern", arg: 2, scope: !1675, file: !306, line: 1562, type: !241)
!1681 = !DILocalVariable(name: "number_entries", arg: 3, scope: !1675, file: !306, line: 1563, type: !876)
!1682 = !DILocalVariable(name: "filelist", scope: !1675, file: !306, line: 1566, type: !240)
!1683 = !DILocalVariable(name: "current_directory", scope: !1675, file: !306, line: 1569, type: !281)
!1684 = !DILocalVariable(name: "buffer", scope: !1675, file: !306, line: 1572, type: !285)
!1685 = !DILocalVariable(name: "entry", scope: !1675, file: !306, line: 1573, type: !285)
!1686 = !DILocalVariable(name: "max_entries", scope: !1675, file: !306, line: 1576, type: !213)
!1687 = !DILocalVariable(name: "message", scope: !1688, file: !306, line: 1606, type: !225)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !306, line: 1606, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1675, file: !306, line: 1605, column: 7)
!1690 = !DILocalVariable(name: "exception", scope: !1688, file: !306, line: 1606, type: !1261)
!1691 = !DILocation(line: 0, scope: !1675)
!1692 = !DILocation(line: 1582, column: 10, scope: !1675)
!1693 = !DILocation(line: 1585, column: 18, scope: !1675)
!1694 = !DILocation(line: 1586, column: 21, scope: !1675)
!1695 = !DILocation(line: 1587, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1675, file: !306, line: 1587, column: 7)
!1697 = !DILocation(line: 1587, column: 7, scope: !1675)
!1698 = !DILocation(line: 1593, column: 22, scope: !1675)
!1699 = !DILocation(line: 1595, column: 16, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1675, file: !306, line: 1595, column: 7)
!1701 = !DILocation(line: 1595, column: 7, scope: !1675)
!1702 = !DILocation(line: 1597, column: 14, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !306, line: 1596, column: 5)
!1704 = !DILocation(line: 1598, column: 7, scope: !1703)
!1705 = !DILocation(line: 1603, column: 28, scope: !1675)
!1706 = !DILocation(line: 1605, column: 14, scope: !1689)
!1707 = !DILocation(line: 1605, column: 7, scope: !1675)
!1708 = !DILocation(line: 1607, column: 3, scope: !1675)
!1709 = !DILocation(line: 1606, column: 5, scope: !1688)
!1710 = !DILocation(line: 0, scope: !1688)
!1711 = !DILocalVariable(name: "directory", arg: 1, scope: !1712, file: !306, line: 1549, type: !281)
!1712 = distinct !DISubprogram(name: "MagickReadDirectory", scope: !306, file: !306, line: 1549, type: !1713, scopeLine: 1551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!138, !281, !285, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1716 = !{!1711, !1717, !1718}
!1717 = !DILocalVariable(name: "entry", arg: 2, scope: !1712, file: !306, line: 1549, type: !285)
!1718 = !DILocalVariable(name: "result", arg: 3, scope: !1712, file: !306, line: 1550, type: !1715)
!1719 = !DILocation(line: 0, scope: !1712, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1607, column: 11, scope: !1675)
!1721 = !DILocation(line: 1556, column: 8, scope: !1712, inlinedAt: !1720)
!1722 = !DILocation(line: 1557, column: 11, scope: !1712, inlinedAt: !1720)
!1723 = !DILocation(line: 1558, column: 10, scope: !1712, inlinedAt: !1720)
!1724 = !DILocation(line: 1607, column: 64, scope: !1675)
!1725 = !DILocation(line: 1607, column: 70, scope: !1675)
!1726 = !DILocation(line: 1610, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !306, line: 1610, column: 9)
!1728 = distinct !DILexicalBlock(scope: !1675, file: !306, line: 1609, column: 3)
!1729 = !DILocation(line: 1610, column: 9, scope: !1727)
!1730 = !DILocation(line: 1610, column: 24, scope: !1727)
!1731 = !DILocation(line: 1610, column: 9, scope: !1728)
!1732 = distinct !{!1732, !1708, !1733, !685, !419}
!1733 = !DILocation(line: 1646, column: 3, scope: !1675)
!1734 = !DILocation(line: 0, scope: !576, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1612, column: 10, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1728, file: !306, line: 1612, column: 9)
!1737 = !DILocation(line: 1482, column: 3, scope: !576, inlinedAt: !1735)
!1738 = !DILocation(line: 1483, column: 5, scope: !576, inlinedAt: !1735)
!1739 = !DILocation(line: 1485, column: 47, scope: !588, inlinedAt: !1735)
!1740 = !DILocation(line: 1485, column: 7, scope: !576, inlinedAt: !1735)
!1741 = !DILocation(line: 0, scope: !592, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 1487, column: 10, scope: !576, inlinedAt: !1735)
!1743 = !DILocation(line: 0, scope: !601, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !1742)
!1745 = !DILocation(line: 0, scope: !609, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1744)
!1747 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1746)
!1748 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !1742)
!1749 = !DILocation(line: 1488, column: 7, scope: !576, inlinedAt: !1735)
!1750 = !DILocation(line: 1493, column: 1, scope: !576, inlinedAt: !1735)
!1751 = !DILocation(line: 1612, column: 46, scope: !1736)
!1752 = !DILocation(line: 1490, column: 7, scope: !1465, inlinedAt: !1735)
!1753 = !DILocation(line: 1616, column: 10, scope: !1736)
!1754 = !DILocation(line: 1616, column: 60, scope: !1736)
!1755 = !DILocation(line: 1612, column: 9, scope: !1728)
!1756 = !DILocation(line: 1619, column: 13, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !306, line: 1619, column: 13)
!1758 = distinct !DILexicalBlock(scope: !1736, file: !306, line: 1618, column: 7)
!1759 = !DILocation(line: 1619, column: 29, scope: !1757)
!1760 = !DILocation(line: 1619, column: 13, scope: !1758)
!1761 = !DILocation(line: 1624, column: 24, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !306, line: 1620, column: 11)
!1763 = !DILocation(line: 1625, column: 32, scope: !1762)
!1764 = !DILocation(line: 1627, column: 26, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !306, line: 1627, column: 17)
!1766 = !DILocation(line: 1627, column: 17, scope: !1762)
!1767 = !DILocation(line: 1643, column: 44, scope: !1758)
!1768 = !DILocation(line: 1643, column: 18, scope: !1758)
!1769 = !DILocation(line: 1643, column: 9, scope: !1758)
!1770 = !DILocation(line: 1643, column: 34, scope: !1758)
!1771 = !DILocation(line: 1644, column: 26, scope: !1758)
!1772 = !DILocation(line: 1645, column: 7, scope: !1758)
!1773 = !DILocation(line: 1647, column: 28, scope: !1675)
!1774 = !DILocation(line: 1648, column: 10, scope: !1675)
!1775 = !DILocation(line: 1649, column: 16, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1675, file: !306, line: 1649, column: 7)
!1777 = !DILocation(line: 1649, column: 7, scope: !1675)
!1778 = !DILocation(line: 1654, column: 36, scope: !1675)
!1779 = !DILocation(line: 1654, column: 3, scope: !1675)
!1780 = !DILocation(line: 1656, column: 3, scope: !1675)
!1781 = !DILocation(line: 1657, column: 1, scope: !1675)
!1782 = !DISubprogram(name: "AcquireExceptionInfo", scope: !64, file: !64, line: 146, type: !1783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1291}
!1785 = !DISubprogram(name: "FileToString", scope: !519, file: !519, line: 49, type: !1786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!225, !241, !438, !1291}
!1788 = !DISubprogram(name: "StringToArgv", scope: !519, file: !519, line: 53, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!240, !241, !1244}
!1791 = !DISubprogram(name: "ResizeQuantumMemory", scope: !435, file: !435, line: 55, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!218, !218, !438, !438}
!1794 = !DISubprogram(name: "IsEventLogging", scope: !12, file: !12, line: 80, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!324}
!1797 = !DISubprogram(name: "AcquireString", scope: !519, file: !519, line: 43, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1798 = !DISubprogram(name: "ConcatenateString", scope: !519, file: !519, line: 70, type: !1799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!324, !240, !241}
!1801 = distinct !DISubprogram(name: "GetExecutionPath", scope: !306, file: !306, line: 978, type: !1802, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!324, !225, !438}
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "path", arg: 1, scope: !1801, file: !306, line: 978, type: !225)
!1806 = !DILocalVariable(name: "extent", arg: 2, scope: !1801, file: !306, line: 978, type: !438)
!1807 = !DILocalVariable(name: "directory", scope: !1801, file: !306, line: 981, type: !225)
!1808 = !DILocation(line: 0, scope: !1801)
!1809 = !DILocation(line: 983, column: 8, scope: !1801)
!1810 = !DILocation(line: 984, column: 13, scope: !1801)
!1811 = !DILocation(line: 0, scope: !620, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1087, column: 10, scope: !1801)
!1813 = !DILocation(line: 1439, column: 3, scope: !620, inlinedAt: !1812)
!1814 = !DILocation(line: 1440, column: 5, scope: !620, inlinedAt: !1812)
!1815 = !DILocation(line: 1442, column: 41, scope: !629, inlinedAt: !1812)
!1816 = !DILocation(line: 1442, column: 47, scope: !629, inlinedAt: !1812)
!1817 = !DILocation(line: 1442, column: 7, scope: !620, inlinedAt: !1812)
!1818 = !DILocation(line: 0, scope: !592, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 1444, column: 10, scope: !620, inlinedAt: !1812)
!1820 = !DILocation(line: 0, scope: !601, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !1819)
!1822 = !DILocation(line: 0, scope: !609, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1821)
!1824 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1823)
!1825 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !1819)
!1826 = !DILocation(line: 1445, column: 7, scope: !620, inlinedAt: !1812)
!1827 = !DILocation(line: 1447, column: 7, scope: !642, inlinedAt: !1812)
!1828 = !DILocation(line: 1447, column: 7, scope: !620, inlinedAt: !1812)
!1829 = !DILocation(line: 0, scope: !652, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 1449, column: 7, scope: !659, inlinedAt: !1812)
!1831 = !DILocation(line: 86, column: 10, scope: !652, inlinedAt: !1830)
!1832 = !DILocation(line: 1449, column: 30, scope: !659, inlinedAt: !1812)
!1833 = !DILocation(line: 1452, column: 1, scope: !620, inlinedAt: !1812)
!1834 = !DILocation(line: 1087, column: 3, scope: !1801)
!1835 = !DILocation(line: 0, scope: !620)
!1836 = !DILocation(line: 1439, column: 3, scope: !620)
!1837 = !DILocation(line: 1440, column: 5, scope: !620)
!1838 = !DILocation(line: 1442, column: 13, scope: !629)
!1839 = !DILocation(line: 1442, column: 37, scope: !629)
!1840 = !DILocation(line: 1442, column: 41, scope: !629)
!1841 = !DILocation(line: 1442, column: 47, scope: !629)
!1842 = !DILocation(line: 1442, column: 7, scope: !620)
!1843 = !DILocation(line: 0, scope: !592, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 1444, column: 10, scope: !620)
!1845 = !DILocation(line: 0, scope: !601, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 1162, column: 10, scope: !592, inlinedAt: !1844)
!1847 = !DILocation(line: 0, scope: !609, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1846)
!1849 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1848)
!1850 = !DILocation(line: 1162, column: 53, scope: !592, inlinedAt: !1844)
!1851 = !DILocation(line: 1445, column: 7, scope: !620)
!1852 = !DILocation(line: 1447, column: 7, scope: !642)
!1853 = !DILocation(line: 1447, column: 7, scope: !620)
!1854 = !DILocation(line: 0, scope: !652, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1449, column: 7, scope: !659)
!1856 = !DILocation(line: 86, column: 10, scope: !652, inlinedAt: !1855)
!1857 = !DILocation(line: 1449, column: 30, scope: !659)
!1858 = !DILocation(line: 1452, column: 1, scope: !620)
!1859 = !DILocation(line: 1113, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !305, file: !306, line: 1113, column: 7)
!1861 = !DILocation(line: 1113, column: 7, scope: !305)
!1862 = !DILocation(line: 1123, column: 14, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !305, file: !306, line: 1122, column: 7)
!1864 = !DILocation(line: 1124, column: 3, scope: !305)
!1865 = !DILocation(line: 1125, column: 1, scope: !305)
!1866 = !DILocation(line: 0, scope: !592)
!1867 = !DILocation(line: 1157, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !592, file: !306, line: 1157, column: 7)
!1869 = !DILocation(line: 1157, column: 7, scope: !592)
!1870 = !DILocation(line: 1159, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !306, line: 1158, column: 5)
!1872 = !DILocation(line: 1159, column: 12, scope: !1871)
!1873 = !DILocation(line: 1160, column: 7, scope: !1871)
!1874 = !DILocation(line: 0, scope: !601, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 1162, column: 10, scope: !592)
!1876 = !DILocation(line: 0, scope: !609, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 235, column: 10, scope: !601, inlinedAt: !1875)
!1878 = !DILocation(line: 455, column: 10, scope: !609, inlinedAt: !1877)
!1879 = !DILocation(line: 1162, column: 53, scope: !592)
!1880 = !DILocation(line: 1162, column: 10, scope: !592)
!1881 = !DILocation(line: 1164, column: 3, scope: !592)
!1882 = !DILocation(line: 1165, column: 1, scope: !592)
!1883 = !DISubprogram(name: "IsMagickConflict", scope: !1884, file: !1884, line: 528, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1884 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!1885 = !DISubprogram(name: "IsSceneGeometry", scope: !1886, file: !1886, line: 137, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1886 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!324, !241, !1669}
!1889 = !DISubprogram(name: "IsGeometry", scope: !1886, file: !1886, line: 136, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1890 = !DISubprogram(name: "CopyMagickMemory", scope: !435, file: !435, line: 44, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!218, !218, !445, !438}
!1893 = distinct !DISubprogram(name: "GetPathComponents", scope: !306, file: !306, line: 1371, type: !1894, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!240, !241, !876}
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1906, !1907, !1913}
!1897 = !DILocalVariable(name: "path", arg: 1, scope: !1893, file: !306, line: 1371, type: !241)
!1898 = !DILocalVariable(name: "number_components", arg: 2, scope: !1893, file: !306, line: 1372, type: !876)
!1899 = !DILocalVariable(name: "components", scope: !1893, file: !306, line: 1375, type: !240)
!1900 = !DILocalVariable(name: "p", scope: !1893, file: !306, line: 1378, type: !241)
!1901 = !DILocalVariable(name: "q", scope: !1893, file: !306, line: 1379, type: !241)
!1902 = !DILocalVariable(name: "i", scope: !1893, file: !306, line: 1382, type: !219)
!1903 = !DILocalVariable(name: "message", scope: !1904, file: !306, line: 1393, type: !225)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !306, line: 1393, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1893, file: !306, line: 1392, column: 7)
!1906 = !DILocalVariable(name: "exception", scope: !1904, file: !306, line: 1393, type: !1261)
!1907 = !DILocalVariable(name: "message", scope: !1908, file: !306, line: 1403, type: !225)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !306, line: 1403, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !306, line: 1402, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !306, line: 1396, column: 3)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !306, line: 1395, column: 3)
!1912 = distinct !DILexicalBlock(scope: !1893, file: !306, line: 1395, column: 3)
!1913 = !DILocalVariable(name: "exception", scope: !1908, file: !306, line: 1403, type: !1261)
!1914 = !DILocation(line: 0, scope: !1893)
!1915 = !DILocation(line: 1384, column: 12, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1893, file: !306, line: 1384, column: 7)
!1917 = !DILocation(line: 1384, column: 7, scope: !1893)
!1918 = !DILocation(line: 1386, column: 21, scope: !1893)
!1919 = !DILocation(line: 1387, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1893, file: !306, line: 1387, column: 3)
!1921 = !DILocation(line: 0, scope: !1920)
!1922 = !DILocation(line: 1387, column: 16, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !306, line: 1387, column: 3)
!1924 = !DILocation(line: 1387, column: 3, scope: !1920)
!1925 = !DILocation(line: 1389, column: 27, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !306, line: 1388, column: 9)
!1927 = !DILocation(line: 1389, column: 7, scope: !1926)
!1928 = !DILocation(line: 1387, column: 29, scope: !1923)
!1929 = !DILocation(line: 1387, column: 3, scope: !1923)
!1930 = distinct !{!1930, !1924, !1931, !685, !419}
!1931 = !DILocation(line: 1389, column: 27, scope: !1920)
!1932 = !DILocation(line: 1390, column: 72, scope: !1893)
!1933 = !DILocation(line: 1390, column: 24, scope: !1893)
!1934 = !DILocation(line: 1392, column: 18, scope: !1905)
!1935 = !DILocation(line: 1392, column: 7, scope: !1893)
!1936 = !DILocation(line: 1395, column: 27, scope: !1911)
!1937 = !DILocation(line: 1395, column: 15, scope: !1911)
!1938 = !DILocation(line: 1395, column: 3, scope: !1912)
!1939 = !DILocation(line: 1393, column: 5, scope: !1904)
!1940 = !DILocation(line: 0, scope: !1904)
!1941 = !DILocation(line: 1397, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1910, file: !306, line: 1397, column: 5)
!1943 = !DILocation(line: 0, scope: !1942)
!1944 = !DILocation(line: 1397, column: 15, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !306, line: 1397, column: 5)
!1946 = !DILocation(line: 1397, column: 28, scope: !1945)
!1947 = !DILocation(line: 1397, column: 5, scope: !1945)
!1948 = distinct !{!1948, !1941, !1949, !685, !419}
!1949 = !DILocation(line: 1399, column: 9, scope: !1942)
!1950 = !DILocation(line: 1400, column: 60, scope: !1910)
!1951 = !DILocation(line: 1400, column: 63, scope: !1910)
!1952 = !DILocation(line: 1400, column: 28, scope: !1910)
!1953 = !DILocation(line: 1400, column: 5, scope: !1910)
!1954 = !DILocation(line: 1400, column: 18, scope: !1910)
!1955 = !DILocation(line: 1402, column: 23, scope: !1909)
!1956 = !DILocation(line: 1402, column: 9, scope: !1910)
!1957 = !DILocation(line: 1403, column: 7, scope: !1908)
!1958 = !DILocation(line: 0, scope: !1908)
!1959 = !DILocation(line: 1404, column: 58, scope: !1910)
!1960 = !DILocation(line: 1404, column: 12, scope: !1910)
!1961 = !DILocation(line: 1405, column: 8, scope: !1910)
!1962 = !DILocation(line: 1395, column: 48, scope: !1911)
!1963 = distinct !{!1963, !1938, !1964, !685, !419}
!1964 = !DILocation(line: 1406, column: 3, scope: !1912)
!1965 = !DILocation(line: 0, scope: !1912)
!1966 = !DILocation(line: 1407, column: 3, scope: !1893)
!1967 = !DILocation(line: 1407, column: 16, scope: !1893)
!1968 = !DILocation(line: 1408, column: 3, scope: !1893)
!1969 = !DILocation(line: 1409, column: 1, scope: !1893)
!1970 = !DISubprogram(name: "opendir", scope: !283, file: !283, line: 134, type: !1971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!281, !241}
!1973 = !DISubprogram(name: "closedir", scope: !283, file: !283, line: 149, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!138, !281}
!1976 = !DISubprogram(name: "AcquireMagickMemory", scope: !435, file: !435, line: 40, type: !1977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!218, !438}
!1979 = !DISubprogram(name: "GlobExpression", scope: !1671, file: !1671, line: 36, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!324, !241, !241, !1669}
!1982 = !DISubprogram(name: "qsort", scope: !1983, file: !1983, line: 830, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!1983 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !218, !213, !213, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1983, line: 808, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!138, !445, !445}
!1990 = distinct !DISubprogram(name: "FileCompare", scope: !306, file: !306, line: 1534, type: !1988, scopeLine: 1535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1991)
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DILocalVariable(name: "x", arg: 1, scope: !1990, file: !306, line: 1534, type: !445)
!1993 = !DILocalVariable(name: "y", arg: 2, scope: !1990, file: !306, line: 1534, type: !445)
!1994 = !DILocalVariable(name: "p", scope: !1990, file: !306, line: 1537, type: !301)
!1995 = !DILocalVariable(name: "q", scope: !1990, file: !306, line: 1538, type: !301)
!1996 = !DILocation(line: 0, scope: !1990)
!1997 = !DILocation(line: 1542, column: 24, scope: !1990)
!1998 = !DILocation(line: 1542, column: 27, scope: !1990)
!1999 = !DILocation(line: 1542, column: 10, scope: !1990)
!2000 = !DILocation(line: 1542, column: 3, scope: !1990)
!2001 = distinct !DISubprogram(name: "MagickDelay", scope: !306, file: !306, line: 1683, type: !2002, scopeLine: 1684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!2005 = !{!2006}
!2006 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !2001, file: !306, line: 1683, type: !2004)
!2007 = !DILocation(line: 0, scope: !2001)
!2008 = !DILocation(line: 1686, column: 3, scope: !2001)
!2009 = distinct !DISubprogram(name: "MultilineCensus", scope: !306, file: !306, line: 1754, type: !2010, scopeLine: 1755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!213, !241}
!2012 = !{!2013, !2014}
!2013 = !DILocalVariable(name: "label", arg: 1, scope: !2009, file: !306, line: 1754, type: !241)
!2014 = !DILocalVariable(name: "number_lines", scope: !2009, file: !306, line: 1757, type: !213)
!2015 = !DILocation(line: 0, scope: !2009)
!2016 = !DILocation(line: 1762, column: 13, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !306, line: 1762, column: 7)
!2018 = !DILocation(line: 1762, column: 7, scope: !2009)
!2019 = !DILocation(line: 0, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2009, file: !306, line: 1764, column: 3)
!2021 = !DILocation(line: 1764, column: 24, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !306, line: 1764, column: 3)
!2023 = !DILocation(line: 1764, column: 3, scope: !2020)
!2024 = !DILocation(line: 1766, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !306, line: 1765, column: 9)
!2026 = !DILocation(line: 1766, column: 7, scope: !2025)
!2027 = !DILocation(line: 1764, column: 45, scope: !2022)
!2028 = !DILocation(line: 1764, column: 3, scope: !2022)
!2029 = distinct !{!2029, !2023, !2030, !685, !419}
!2030 = !DILocation(line: 1766, column: 19, scope: !2020)
!2031 = !DILocation(line: 1768, column: 1, scope: !2009)
!2032 = distinct !DISubprogram(name: "ShredFile", scope: !306, file: !306, line: 1795, type: !432, scopeLine: 1796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2050, !2051, !2052}
!2034 = !DILocalVariable(name: "path", arg: 1, scope: !2032, file: !306, line: 1795, type: !241)
!2035 = !DILocalVariable(name: "passes", scope: !2032, file: !306, line: 1798, type: !225)
!2036 = !DILocalVariable(name: "file", scope: !2032, file: !306, line: 1801, type: !138)
!2037 = !DILocalVariable(name: "status", scope: !2032, file: !306, line: 1802, type: !138)
!2038 = !DILocalVariable(name: "length", scope: !2032, file: !306, line: 1805, type: !297)
!2039 = !DILocalVariable(name: "i", scope: !2032, file: !306, line: 1808, type: !219)
!2040 = !DILocalVariable(name: "quantum", scope: !2032, file: !306, line: 1811, type: !213)
!2041 = !DILocalVariable(name: "file_stats", scope: !2032, file: !306, line: 1814, type: !244)
!2042 = !DILocalVariable(name: "random_info", scope: !2043, file: !306, line: 1849, type: !2046)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !306, line: 1847, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !306, line: 1846, column: 3)
!2045 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1846, column: 3)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !2048, line: 31, baseType: !2049)
!2048 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !2048, line: 30, flags: DIFlagFwdDecl)
!2050 = !DILocalVariable(name: "j", scope: !2043, file: !306, line: 1852, type: !299)
!2051 = !DILocalVariable(name: "count", scope: !2043, file: !306, line: 1855, type: !219)
!2052 = !DILocalVariable(name: "key", scope: !2053, file: !306, line: 1863, type: !2056)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !306, line: 1861, column: 5)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !306, line: 1860, column: 5)
!2055 = distinct !DILexicalBlock(scope: !2043, file: !306, line: 1860, column: 5)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !519, line: 40, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !519, line: 29, size: 32960, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !2058, file: !519, line: 32, baseType: !457, size: 32768)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !2058, file: !519, line: 35, baseType: !216, size: 64, offset: 32768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2058, file: !519, line: 38, baseType: !213, size: 64, offset: 32832)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2058, file: !519, line: 39, baseType: !213, size: 64, offset: 32896)
!2064 = !DILocation(line: 0, scope: !2032)
!2065 = !DILocation(line: 1813, column: 3, scope: !2032)
!2066 = !DILocation(line: 1814, column: 5, scope: !2032)
!2067 = !DILocation(line: 1816, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1816, column: 7)
!2069 = !DILocation(line: 1816, column: 37, scope: !2068)
!2070 = !DILocation(line: 1816, column: 41, scope: !2068)
!2071 = !DILocation(line: 1816, column: 47, scope: !2068)
!2072 = !DILocation(line: 1816, column: 7, scope: !2032)
!2073 = !DILocation(line: 1818, column: 10, scope: !2032)
!2074 = !DILocation(line: 1819, column: 14, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1819, column: 7)
!2076 = !DILocation(line: 1819, column: 7, scope: !2032)
!2077 = !DILocalVariable(name: "path", arg: 1, scope: !2078, file: !366, line: 184, type: !241)
!2078 = distinct !DISubprogram(name: "remove_utf8", scope: !366, file: !366, line: 184, type: !577, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2079 = !{!2077}
!2080 = !DILocation(line: 0, scope: !2078, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 1824, column: 14, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2075, file: !306, line: 1820, column: 5)
!2083 = !DILocation(line: 187, column: 10, scope: !2078, inlinedAt: !2081)
!2084 = !DILocation(line: 1825, column: 18, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !306, line: 1825, column: 11)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocation(line: 0, scope: !365, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 1829, column: 8, scope: !2032)
!2089 = !DILocation(line: 139, column: 10, scope: !365, inlinedAt: !2088)
!2090 = !DILocation(line: 1830, column: 12, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1830, column: 7)
!2092 = !DILocation(line: 1830, column: 7, scope: !2032)
!2093 = !DILocation(line: 0, scope: !2078, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1835, column: 14, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !306, line: 1831, column: 5)
!2096 = !DILocation(line: 187, column: 10, scope: !2078, inlinedAt: !2094)
!2097 = !DILocation(line: 1836, column: 7, scope: !2095)
!2098 = !DILocation(line: 0, scope: !385, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 1842, column: 8, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1842, column: 7)
!2101 = !DILocation(line: 469, column: 10, scope: !385, inlinedAt: !2099)
!2102 = !DILocation(line: 1842, column: 32, scope: !2100)
!2103 = !DILocation(line: 1842, column: 38, scope: !2100)
!2104 = !DILocalVariable(name: "value", arg: 1, scope: !2105, file: !2106, line: 63, type: !527)
!2105 = distinct !DISubprogram(name: "StringToInteger", scope: !2106, file: !2106, line: 63, type: !2107, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2106 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!138, !527}
!2109 = !{!2104}
!2110 = !DILocation(line: 0, scope: !2105, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 1846, column: 27, scope: !2044)
!2112 = !DILocation(line: 65, column: 16, scope: !2105, inlinedAt: !2111)
!2113 = !DILocation(line: 1846, column: 15, scope: !2044)
!2114 = !DILocation(line: 1846, column: 3, scope: !2045)
!2115 = !DILocation(line: 1860, column: 5, scope: !2055)
!2116 = !DILocation(line: 1857, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2043, file: !306, line: 1857, column: 9)
!2118 = !DILocation(line: 1857, column: 32, scope: !2117)
!2119 = !DILocation(line: 1857, column: 9, scope: !2043)
!2120 = !DILocation(line: 1859, column: 17, scope: !2043)
!2121 = !DILocation(line: 0, scope: !2043)
!2122 = !DILocation(line: 1866, column: 11, scope: !2053)
!2123 = !DILocation(line: 1865, column: 11, scope: !2053)
!2124 = !DILocation(line: 0, scope: !2053)
!2125 = !DILocation(line: 1868, column: 24, scope: !2053)
!2126 = !DILocation(line: 1869, column: 33, scope: !2053)
!2127 = !DILocalVariable(name: "x", arg: 1, scope: !2128, file: !306, line: 150, type: !2004)
!2128 = distinct !DISubprogram(name: "MagickMin", scope: !306, file: !306, line: 150, type: !2129, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!297, !2004, !2004}
!2131 = !{!2127, !2132}
!2132 = !DILocalVariable(name: "y", arg: 2, scope: !2128, file: !306, line: 151, type: !2004)
!2133 = !DILocation(line: 0, scope: !2128, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 1869, column: 9, scope: !2053)
!2135 = !DILocation(line: 1868, column: 13, scope: !2053)
!2136 = !DILocation(line: 1870, column: 11, scope: !2053)
!2137 = !DILocation(line: 1871, column: 17, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2053, file: !306, line: 1871, column: 11)
!2139 = !DILocation(line: 1871, column: 11, scope: !2053)
!2140 = !DILocation(line: 1874, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !306, line: 1874, column: 15)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !306, line: 1872, column: 9)
!2143 = !DILocation(line: 1874, column: 21, scope: !2141)
!2144 = !DILocation(line: 1874, column: 15, scope: !2142)
!2145 = !DILocation(line: 1860, column: 47, scope: !2054)
!2146 = !DILocation(line: 1860, column: 17, scope: !2054)
!2147 = distinct !{!2147, !2115, !2148, !685, !419}
!2148 = !DILocation(line: 1877, column: 5, scope: !2055)
!2149 = !DILocation(line: 1878, column: 17, scope: !2043)
!2150 = !DILocation(line: 1846, column: 53, scope: !2044)
!2151 = !DILocation(line: 1846, column: 17, scope: !2044)
!2152 = distinct !{!2152, !2114, !2153, !685, !419}
!2153 = !DILocation(line: 1881, column: 3, scope: !2045)
!2154 = !DILocation(line: 1867, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2053, file: !306, line: 1866, column: 11)
!2156 = !DILocation(line: 0, scope: !2044)
!2157 = !DILocation(line: 1882, column: 10, scope: !2032)
!2158 = !DILocation(line: 0, scope: !2078, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 1883, column: 10, scope: !2032)
!2160 = !DILocation(line: 187, column: 10, scope: !2078, inlinedAt: !2159)
!2161 = !DILocation(line: 1884, column: 14, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2032, file: !306, line: 1884, column: 7)
!2163 = !DILocation(line: 1884, column: 7, scope: !2032)
!2164 = !DILocation(line: 0, scope: !2105, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 1886, column: 24, scope: !2032)
!2166 = !DILocation(line: 65, column: 16, scope: !2105, inlinedAt: !2165)
!2167 = !DILocation(line: 1886, column: 14, scope: !2032)
!2168 = !DILocation(line: 1886, column: 12, scope: !2032)
!2169 = !DILocation(line: 1886, column: 3, scope: !2032)
!2170 = !DILocation(line: 1887, column: 1, scope: !2032)
!2171 = !DISubprogram(name: "lseek", scope: !341, file: !341, line: 334, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!260, !138, !260, !138}
!2174 = !DISubprogram(name: "AcquireRandomInfo", scope: !2048, file: !2048, line: 44, type: !2175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!2046}
!2177 = !DISubprogram(name: "GetRandomKey", scope: !2048, file: !2048, line: 48, type: !2178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2056, !2046, !438}
!2180 = !DISubprogram(name: "ResetStringInfo", scope: !519, file: !519, line: 105, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !2056}
!2183 = !DISubprogram(name: "GetStringInfoDatum", scope: !519, file: !519, line: 97, type: !2184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!216, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2057)
!2188 = !DISubprogram(name: "DestroyStringInfo", scope: !519, file: !519, line: 91, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!2056, !2056}
!2191 = !DISubprogram(name: "DestroyRandomInfo", scope: !2048, file: !2048, line: 45, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!2046, !2046}
!2194 = distinct !DISubprogram(name: "SystemCommand", scope: !306, file: !306, line: 1922, type: !2195, scopeLine: 1924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!138, !1669, !1669, !241, !1291}
!2197 = !{!2198, !2199, !2200, !2201}
!2198 = !DILocalVariable(name: "asynchronous", arg: 1, scope: !2194, file: !306, line: 1922, type: !1669)
!2199 = !DILocalVariable(name: "verbose", arg: 2, scope: !2194, file: !306, line: 1923, type: !1669)
!2200 = !DILocalVariable(name: "command", arg: 3, scope: !2194, file: !306, line: 1923, type: !241)
!2201 = !DILocalVariable(name: "exception", arg: 4, scope: !2194, file: !306, line: 1923, type: !1291)
!2202 = !DILocation(line: 0, scope: !2194)
!2203 = !DILocation(line: 1926, column: 3, scope: !2194)
!2204 = !DISubprogram(name: "open", scope: !2205, file: !2205, line: 168, type: !2206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2205 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!138, !241, !138, null}
!2208 = !DISubprogram(name: "access", scope: !341, file: !341, line: 287, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2209 = !DISubprogram(name: "readdir", scope: !283, file: !283, line: 162, type: !2210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!285, !281}
!2212 = !DISubprogram(name: "unlink", scope: !341, file: !341, line: 825, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !309)
