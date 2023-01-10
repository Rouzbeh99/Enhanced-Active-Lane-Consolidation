; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/input/timecode.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timecode_hnd_t = type { %struct.cli_input_t, ptr, i32, i32, i32, i64, i64, i32, i32, ptr, double, double }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@timecode_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"timecode [error]: malloc failed\0A\00", align 1
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"timecode [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"timecode [error]: can't open `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"timecode [error]: unsupported timecode format\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"timecode [error]: tcfile parsing error: assumed fps not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"timecode [error]: invalid assumed fps %.6f\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"timecode [error]: invalid input tcfile\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"timecode [error]: invalid input tcfile at line %d: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"timecode [error]: input tcfile doesn't have any timecodes!\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"timecode [error]: invalid input tcfile for frame 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"timecode [error]: invalid input tcfile for frame %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"timecode [info]: automatic timebase generation %lu/%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [117 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"timecode [error]: invalid timebase or timecode for frame %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [126 x i8] c"timecode [error]: tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1
@.str.25 = private unnamed_addr constant [118 x i8] c"timecode [info]: input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef %info, ptr nocapture noundef readonly %opt) #0 !dbg !289 {
entry:
  %buff.i = alloca [256 x i8], align 16
  %tcfv.i = alloca i32, align 4
  %seq_fps.i = alloca double, align 8
  %start.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !291, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !292, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr %info, metadata !293, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr %opt, metadata !294, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()), !dbg !374
  %call = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13, !dbg !375
  call void @llvm.dbg.value(metadata ptr %call, metadata !354, metadata !DIExpression()), !dbg !374
  %tobool.not = icmp eq ptr %call, null, !dbg !376
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !379, !tbaa !381
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %0) #14, !dbg !385
  br label %cleanup, !dbg !386

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !dbg !387, !tbaa.struct !388
  %2 = load ptr, ptr %p_handle, align 8, !dbg !389, !tbaa !381
  %p_handle2 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 1, !dbg !390
  store ptr %2, ptr %p_handle2, align 8, !dbg !391, !tbaa !392
  %3 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !dbg !398, !tbaa !399
  %call4 = tail call i32 %3(ptr noundef %2) #15, !dbg !400
  %frame_total = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 2, !dbg !401
  store i32 %call4, ptr %frame_total, align 8, !dbg !402, !tbaa !403
  %seek = getelementptr inbounds %struct.cli_input_opt_t, ptr %opt, i64 0, i32 3, !dbg !404
  %4 = load i32, ptr %seek, align 8, !dbg !404, !tbaa !405
  %seek5 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 7, !dbg !407
  store i32 %4, ptr %seek5, align 8, !dbg !408, !tbaa !409
  %timebase = getelementptr inbounds %struct.cli_input_opt_t, ptr %opt, i64 0, i32 2, !dbg !410
  %5 = load ptr, ptr %timebase, align 8, !dbg !410, !tbaa !412
  %tobool6.not = icmp eq ptr %5, null, !dbg !413
  br i1 %tobool6.not, label %if.end22.thread, label %if.then7, !dbg !414

if.end22.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %call9, metadata !295, metadata !DIExpression()), !dbg !374
  %auto_timebase_num113 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 3, !dbg !415
  store i32 1, ptr %auto_timebase_num113, align 4, !dbg !416, !tbaa !417
  %auto_timebase_den116 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 4, !dbg !418
  store i32 1, ptr %auto_timebase_den116, align 8, !dbg !419, !tbaa !420
  br label %if.then27, !dbg !421

if.then7:                                         ; preds = %if.end
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 5, !dbg !422
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !424
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %timebase_num, ptr noundef nonnull %timebase_den) #15, !dbg !425
  call void @llvm.dbg.value(metadata i32 %call9, metadata !295, metadata !DIExpression()), !dbg !374
  %cmp = icmp eq i32 %call9, 1, !dbg !426
  br i1 %cmp, label %if.then10, label %if.end14thread-pre-split, !dbg !428

if.then10:                                        ; preds = %if.then7
  %6 = load ptr, ptr %timebase, align 8, !dbg !429, !tbaa !412
  %call12 = tail call i64 @strtoul(ptr nocapture noundef %6, ptr noundef null, i32 noundef 10) #15, !dbg !430
  store i64 %call12, ptr %timebase_num, align 8, !dbg !431, !tbaa !432
  br label %if.end14, !dbg !433

if.end14thread-pre-split:                         ; preds = %if.then7
  %.pr = load i64, ptr %timebase_num, align 8, !dbg !434, !tbaa !432
  br label %if.end14, !dbg !434

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.then10
  %7 = phi i64 [ %.pr, %if.end14thread-pre-split ], [ %call12, %if.then10 ], !dbg !434
  %cmp16 = icmp ugt i64 %7, 4294967295, !dbg !436
  br i1 %cmp16, label %if.then19, label %lor.lhs.false, !dbg !437

lor.lhs.false:                                    ; preds = %if.end14
  %8 = load i64, ptr %timebase_den, align 8, !dbg !438, !tbaa !439
  %cmp18 = icmp ugt i64 %8, 4294967295, !dbg !440
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !441

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  %9 = load ptr, ptr @stderr, align 8, !dbg !442, !tbaa !381
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %9) #14, !dbg !444
  br label %cleanup, !dbg !445

if.end22:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 %call9, metadata !295, metadata !DIExpression()), !dbg !374
  %tobool23.not = icmp eq i32 %call9, 0, !dbg !446
  %lnot.ext = zext i1 %tobool23.not to i32, !dbg !446
  %auto_timebase_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 3, !dbg !415
  store i32 %lnot.ext, ptr %auto_timebase_num, align 4, !dbg !416, !tbaa !417
  %cmp24 = icmp slt i32 %call9, 2, !dbg !447
  %conv = zext i1 %cmp24 to i32, !dbg !447
  %auto_timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 4, !dbg !418
  store i32 %conv, ptr %auto_timebase_den, align 8, !dbg !419, !tbaa !420
  br i1 %tobool23.not, label %if.then27, label %if.end30, !dbg !421

if.then27:                                        ; preds = %if.end22.thread, %if.end22
  %auto_timebase_den128 = phi ptr [ %auto_timebase_den116, %if.end22.thread ], [ %auto_timebase_den, %if.end22 ]
  %conv126 = phi i32 [ 1, %if.end22.thread ], [ %conv, %if.end22 ]
  %auto_timebase_num118 = phi ptr [ %auto_timebase_num113, %if.end22.thread ], [ %auto_timebase_num, %if.end22 ]
  %fps_den = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 2, !dbg !448
  %11 = load i32, ptr %fps_den, align 4, !dbg !448, !tbaa !450
  %conv28 = zext i32 %11 to i64, !dbg !452
  %timebase_num29 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 5, !dbg !453
  store i64 %conv28, ptr %timebase_num29, align 8, !dbg !454, !tbaa !432
  br label %if.end30, !dbg !455

if.end30:                                         ; preds = %if.then27, %if.end22
  %auto_timebase_den127 = phi ptr [ %auto_timebase_den128, %if.then27 ], [ %auto_timebase_den, %if.end22 ]
  %conv125 = phi i32 [ %conv126, %if.then27 ], [ %conv, %if.end22 ]
  %auto_timebase_num117 = phi ptr [ %auto_timebase_num118, %if.then27 ], [ %auto_timebase_num, %if.end22 ]
  %tobool32.not = icmp eq i32 %conv125, 0, !dbg !456
  br i1 %tobool32.not, label %if.end35, label %if.then33, !dbg !458

if.then33:                                        ; preds = %if.end30
  %timebase_den34 = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !459
  store i64 0, ptr %timebase_den34, align 8, !dbg !460, !tbaa !439
  br label %if.end35, !dbg !461

if.end35:                                         ; preds = %if.then33, %if.end30
  %picture_alloc = getelementptr inbounds %struct.cli_input_t, ptr %call, i64 0, i32 2, !dbg !462
  %12 = load ptr, ptr %picture_alloc, align 8, !dbg !462, !tbaa !463
  store ptr %12, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 2), align 8, !dbg !464, !tbaa !465
  %picture_clean = getelementptr inbounds %struct.cli_input_t, ptr %call, i64 0, i32 5, !dbg !466
  %13 = load ptr, ptr %picture_clean, align 8, !dbg !466, !tbaa !467
  store ptr %13, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 5), align 8, !dbg !468, !tbaa !469
  store ptr %call, ptr %p_handle, align 8, !dbg !470, !tbaa !381
  %call38 = tail call ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.3), !dbg !471
  call void @llvm.dbg.value(metadata ptr %call38, metadata !296, metadata !DIExpression()), !dbg !374
  %tobool39.not = icmp eq ptr %call38, null, !dbg !472
  br i1 %tobool39.not, label %if.then40, label %if.else, !dbg !474

if.then40:                                        ; preds = %if.end35
  %14 = load ptr, ptr @stderr, align 8, !dbg !475, !tbaa !381
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef %psz_filename) #14, !dbg !477
  br label %cleanup, !dbg !478

if.else:                                          ; preds = %if.end35
  call void @llvm.dbg.value(metadata ptr %call38, metadata !479, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %call, metadata !484, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %info, metadata !485, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buff.i) #15, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %buff.i, metadata !486, metadata !DIExpression()) #15, !dbg !536
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcfv.i) #15, !dbg !537
  call void @llvm.dbg.value(metadata ptr null, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr null, metadata !498, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %tcfv.i, metadata !491, metadata !DIExpression(DW_OP_deref)) #15, !dbg !532
  %call.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call38, ptr noundef nonnull @.str.6, ptr noundef nonnull %tcfv.i) #15, !dbg !538
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  %cmp.not.i = icmp eq i32 %call.i, 1, !dbg !539
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i, !dbg !541

lor.lhs.false.i:                                  ; preds = %if.else
  %15 = load i32, ptr %tcfv.i, align 4, !dbg !542, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %15, metadata !491, metadata !DIExpression()) #15, !dbg !532
  %16 = add i32 %15, -3, !dbg !544
  %17 = icmp ult i32 %16, -2, !dbg !544
  br i1 %17, label %if.then.i, label %if.end.i, !dbg !544

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.else
  %18 = load ptr, ptr @stderr, align 8, !dbg !545, !tbaa !381
  %19 = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %18) #16, !dbg !547
  br label %if.then52, !dbg !548

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp4.i = icmp eq i32 %15, 1, !dbg !549
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i, !dbg !550

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq_fps.i) #15, !dbg !551
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #15, !dbg !552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #15, !dbg !552
  %20 = load i32, ptr %seek5, align 8, !dbg !553, !tbaa !409
  call void @llvm.dbg.value(metadata i32 %20, metadata !505, metadata !DIExpression()) #15, !dbg !554
  store i32 %20, ptr %end.i, align 4, !dbg !555, !tbaa !543
  call void @llvm.dbg.value(metadata i32 -1, metadata !506, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 -1, metadata !507, metadata !DIExpression()) #15, !dbg !554
  %assume_fps6.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 10, !dbg !556
  store double 0.000000e+00, ptr %assume_fps6.i, align 8, !dbg !557, !tbaa !558
  call void @llvm.dbg.value(metadata i32 2, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %call71028.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38) #15, !dbg !559
  %cmp8.not1029.i = icmp eq ptr %call71028.i, null, !dbg !562
  br i1 %cmp8.not1029.i, label %for.end.i, label %for.body.i, !dbg !563

for.body.i:                                       ; preds = %if.then5.i, %for.inc.i
  %num.01030.i = phi i32 [ %inc.i, %for.inc.i ], [ 2, %if.then5.i ]
  call void @llvm.dbg.value(metadata i32 %num.01030.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %21 = load i8, ptr %buff.i, align 16, !dbg !564, !tbaa !567
  switch i8 %21, label %if.end22.i [
    i8 35, label %for.inc.i
    i8 13, label %for.inc.i
    i8 10, label %for.inc.i
  ], !dbg !568

if.end22.i:                                       ; preds = %for.body.i
  %call25.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %assume_fps6.i) #15, !dbg !569
  %cmp26.not.i = icmp eq i32 %call25.i, 1, !dbg !571
  br i1 %cmp26.not.i, label %for.end.i, label %land.lhs.true28.i, !dbg !572

land.lhs.true28.i:                                ; preds = %if.end22.i
  %call31.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %assume_fps6.i) #15, !dbg !573
  %cmp32.not.i = icmp eq i32 %call31.i, 1, !dbg !574
  br i1 %cmp32.not.i, label %for.end.i, label %if.then34.i, !dbg !575

if.then34.i:                                      ; preds = %land.lhs.true28.i
  %22 = load ptr, ptr @stderr, align 8, !dbg !576, !tbaa !381
  %23 = call i64 @fwrite(ptr nonnull @.str.10, i64 62, i64 1, ptr %22) #16, !dbg !578
  br label %cleanup342.thread.i, !dbg !579

for.inc.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %inc.i = add nuw nsw i32 %num.01030.i, 1, !dbg !580
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %call7.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !559
  %cmp8.not.i = icmp eq ptr %call7.i, null, !dbg !562
  br i1 %cmp8.not.i, label %for.end.i, label %for.body.i, !dbg !563, !llvm.loop !581

for.end.i:                                        ; preds = %for.inc.i, %land.lhs.true28.i, %if.end22.i, %if.then5.i
  %num.0998.i = phi i32 [ %num.01030.i, %if.end22.i ], [ %num.01030.i, %land.lhs.true28.i ], [ 2, %if.then5.i ], [ %inc.i, %for.inc.i ]
  %24 = load double, ptr %assume_fps6.i, align 8, !dbg !585, !tbaa !558
  %cmp38.i = fcmp ugt double %24, 0.000000e+00, !dbg !587
  br i1 %cmp38.i, label %if.end43.i, label %if.then40.i, !dbg !588

if.then40.i:                                      ; preds = %for.end.i
  %25 = load ptr, ptr @stderr, align 8, !dbg !589, !tbaa !381
  %call42.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.11, double noundef %24) #16, !dbg !591
  br label %cleanup342.thread.i, !dbg !592

if.end43.i:                                       ; preds = %for.end.i
  %call44.i = call i64 @ftell(ptr noundef %call38) #15, !dbg !593
  call void @llvm.dbg.value(metadata i64 %call44.i, metadata !499, metadata !DIExpression()) #15, !dbg !554
  %stored_pts_num.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 8, !dbg !594
  store i32 0, ptr %stored_pts_num.i, align 4, !dbg !595, !tbaa !596
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %num.0998.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 -1, metadata !507, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 -1, metadata !506, metadata !DIExpression()) #15, !dbg !554
  %call471032.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !597
  %cmp48.not1033.i = icmp eq ptr %call471032.i, null, !dbg !600
  br i1 %cmp48.not1033.i, label %for.end107.i, label %for.body50.i, !dbg !601

for.body50.i:                                     ; preds = %if.end43.i, %for.inc105.i
  %num.11038.i = phi i32 [ %inc106.i, %for.inc105.i ], [ %num.0998.i, %if.end43.i ]
  %seq_num.01036.i = phi i32 [ %seq_num.1.i, %for.inc105.i ], [ 0, %if.end43.i ]
  %prev_end.01035.i = phi i32 [ %prev_end.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
  %prev_start.01034.i = phi i32 [ %prev_start.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
  call void @llvm.dbg.value(metadata i32 %num.11038.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %seq_num.01036.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %prev_end.01035.i, metadata !507, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 %prev_start.01034.i, metadata !506, metadata !DIExpression()) #15, !dbg !554
  %26 = load i8, ptr %buff.i, align 16, !dbg !602, !tbaa !567
  switch i8 %26, label %if.end74.i [
    i8 35, label %if.then65.i
    i8 13, label %if.then65.i
    i8 10, label %if.then65.i
  ], !dbg !605

if.then65.i:                                      ; preds = %for.body50.i, %for.body50.i, %for.body50.i
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !505, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  %call67.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %end.i) #15, !dbg !606
  %cmp68.i = icmp eq i32 %call67.i, 1, !dbg !609
  br i1 %cmp68.i, label %if.then70.i, label %for.inc105.i, !dbg !610

if.then70.i:                                      ; preds = %if.then65.i
  %27 = load i32, ptr %end.i, align 4, !dbg !611, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %27, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %add.i = add nsw i32 %27, 1, !dbg !612
  %28 = load i32, ptr %seek5, align 8, !dbg !613, !tbaa !409
  %sub.i = sub i32 %add.i, %28, !dbg !614
  store i32 %sub.i, ptr %stored_pts_num.i, align 4, !dbg !615, !tbaa !596
  br label %for.inc105.i, !dbg !616

if.end74.i:                                       ; preds = %for.body50.i
  call void @llvm.dbg.value(metadata ptr %seq_fps.i, metadata !503, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %start.i, metadata !504, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !505, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  %call76.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #15, !dbg !617
  call void @llvm.dbg.value(metadata i32 %call76.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  switch i32 %call76.i, label %if.then82.i [
    i32 -1, label %if.end84.i
    i32 3, label %if.end84.i
  ], !dbg !618

if.then82.i:                                      ; preds = %if.end74.i
  %29 = load ptr, ptr @stderr, align 8, !dbg !620, !tbaa !381
  %30 = call i64 @fwrite(ptr nonnull @.str.14, i64 39, i64 1, ptr %29) #16, !dbg !622
  br label %cleanup342.thread.i, !dbg !623

if.end84.i:                                       ; preds = %if.end74.i, %if.end74.i
  %31 = load i32, ptr %start.i, align 4, !dbg !624, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %31, metadata !504, metadata !DIExpression()) #15, !dbg !554
  %32 = load i32, ptr %end.i, align 4, !dbg !626, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %32, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %cmp85.i = icmp sle i32 %31, %32, !dbg !627
  %cmp88.not.i = icmp sgt i32 %31, %prev_start.01034.i
  %or.cond.i = select i1 %cmp85.i, i1 %cmp88.not.i, i1 false, !dbg !628
  br i1 %or.cond.i, label %lor.lhs.false90.i, label %if.then96.i, !dbg !628

lor.lhs.false90.i:                                ; preds = %if.end84.i
  %cmp91.i = icmp sle i32 %32, %prev_end.01035.i, !dbg !629
  %33 = load double, ptr %seq_fps.i, align 8
  call void @llvm.dbg.value(metadata double %33, metadata !503, metadata !DIExpression()) #15, !dbg !554
  %cmp94.i = fcmp ole double %33, 0.000000e+00
  %or.cond691.i = select i1 %cmp91.i, i1 true, i1 %cmp94.i, !dbg !630
  br i1 %or.cond691.i, label %if.then96.i, label %if.end99.i, !dbg !630

if.then96.i:                                      ; preds = %lor.lhs.false90.i, %if.end84.i
  %34 = load ptr, ptr @stderr, align 8, !dbg !631, !tbaa !381
  %call98.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.15, i32 noundef %num.11038.i, ptr noundef nonnull %buff.i) #16, !dbg !633
  br label %cleanup342.thread.i, !dbg !634

if.end99.i:                                       ; preds = %lor.lhs.false90.i
  call void @llvm.dbg.value(metadata i32 %31, metadata !506, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 %32, metadata !507, metadata !DIExpression()) #15, !dbg !554
  %35 = load i32, ptr %auto_timebase_den127, align 8, !dbg !635, !tbaa !420
  %tobool.not.i = icmp eq i32 %35, 0, !dbg !637
  br i1 %tobool.not.i, label %lor.lhs.false100.i, label %if.then102.i, !dbg !638

lor.lhs.false100.i:                               ; preds = %if.end99.i
  %36 = load i32, ptr %auto_timebase_num117, align 4, !dbg !639, !tbaa !417
  %tobool101.not.i = icmp eq i32 %36, 0, !dbg !640
  br i1 %tobool101.not.i, label %for.inc105.i, label %if.then102.i, !dbg !641

if.then102.i:                                     ; preds = %lor.lhs.false100.i, %if.end99.i
  %inc103.i = add nsw i32 %seq_num.01036.i, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %inc103.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  br label %for.inc105.i, !dbg !642

for.inc105.i:                                     ; preds = %if.then102.i, %lor.lhs.false100.i, %if.then70.i, %if.then65.i
  %prev_start.1.i = phi i32 [ %prev_start.01034.i, %if.then70.i ], [ %prev_start.01034.i, %if.then65.i ], [ %31, %if.then102.i ], [ %31, %lor.lhs.false100.i ], !dbg !554
  %prev_end.1.i = phi i32 [ %prev_end.01035.i, %if.then70.i ], [ %prev_end.01035.i, %if.then65.i ], [ %32, %if.then102.i ], [ %32, %lor.lhs.false100.i ], !dbg !554
  %seq_num.1.i = phi i32 [ %seq_num.01036.i, %if.then70.i ], [ %seq_num.01036.i, %if.then65.i ], [ %inc103.i, %if.then102.i ], [ %seq_num.01036.i, %lor.lhs.false100.i ], !dbg !643
  call void @llvm.dbg.value(metadata i32 %seq_num.1.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %prev_end.1.i, metadata !507, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 %prev_start.1.i, metadata !506, metadata !DIExpression()) #15, !dbg !554
  %inc106.i = add nuw nsw i32 %num.11038.i, 1, !dbg !644
  call void @llvm.dbg.value(metadata i32 %inc106.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %call47.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !597
  %cmp48.not.i = icmp eq ptr %call47.i, null, !dbg !600
  br i1 %cmp48.not.i, label %for.end107.i, label %for.body50.i, !dbg !601, !llvm.loop !645

for.end107.i:                                     ; preds = %for.inc105.i, %if.end43.i
  %seq_num.0.lcssa.i = phi i32 [ 0, %if.end43.i ], [ %seq_num.1.i, %for.inc105.i ], !dbg !647
  %37 = load i32, ptr %stored_pts_num.i, align 4, !dbg !648, !tbaa !596
  %tobool109.not.i = icmp eq i32 %37, 0, !dbg !650
  br i1 %tobool109.not.i, label %if.then110.i, label %for.end107.if.end115_crit_edge.i, !dbg !651

for.end107.if.end115_crit_edge.i:                 ; preds = %for.end107.i
  %.pre1122.i = load i32, ptr %seek5, align 8, !dbg !652, !tbaa !409
  br label %if.end115.i, !dbg !651

if.then110.i:                                     ; preds = %for.end107.i
  %38 = load i32, ptr %end.i, align 4, !dbg !653, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %38, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %add111.i = add nsw i32 %38, 1, !dbg !654
  %39 = load i32, ptr %seek5, align 8, !dbg !655, !tbaa !409
  %sub113.i = sub i32 %add111.i, %39, !dbg !656
  store i32 %sub113.i, ptr %stored_pts_num.i, align 4, !dbg !657, !tbaa !596
  br label %if.end115.i, !dbg !658

if.end115.i:                                      ; preds = %if.then110.i, %for.end107.if.end115_crit_edge.i
  %40 = phi i32 [ %39, %if.then110.i ], [ %.pre1122.i, %for.end107.if.end115_crit_edge.i ], !dbg !652
  %41 = phi i32 [ %sub113.i, %if.then110.i ], [ %37, %for.end107.if.end115_crit_edge.i ], !dbg !659
  %add118.i = add nsw i32 %41, %40, !dbg !660
  call void @llvm.dbg.value(metadata i32 %add118.i, metadata !494, metadata !DIExpression()) #15, !dbg !532
  %call119.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0) #15, !dbg !661
  %conv120.i = sext i32 %add118.i to i64, !dbg !662
  %mul.i = shl nsw i64 %conv120.i, 3, !dbg !663
  %call121.i = call noalias ptr @malloc(i64 noundef %mul.i) #13, !dbg !664
  call void @llvm.dbg.value(metadata ptr %call121.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  %tobool122.not.i = icmp eq ptr %call121.i, null, !dbg !665
  br i1 %tobool122.not.i, label %cleanup342.thread.i, label %if.end124.i, !dbg !667

if.end124.i:                                      ; preds = %if.end115.i
  %42 = load i32, ptr %auto_timebase_den127, align 8, !dbg !668, !tbaa !420
  %tobool126.not.i = icmp eq i32 %42, 0, !dbg !670
  br i1 %tobool126.not.i, label %lor.lhs.false127.i, label %if.then130.i, !dbg !671

lor.lhs.false127.i:                               ; preds = %if.end124.i
  %43 = load i32, ptr %auto_timebase_num117, align 4, !dbg !672, !tbaa !417
  %tobool129.not.i = icmp eq i32 %43, 0, !dbg !673
  br i1 %tobool129.not.i, label %if.end138.i, label %if.then130.i, !dbg !674

if.then130.i:                                     ; preds = %lor.lhs.false127.i, %if.end124.i
  %add131.i = add nsw i32 %seq_num.0.lcssa.i, 1, !dbg !675
  %conv132.i = sext i32 %add131.i to i64, !dbg !677
  %mul133.i = shl nsw i64 %conv132.i, 3, !dbg !678
  %call134.i = call noalias ptr @malloc(i64 noundef %mul133.i) #13, !dbg !679
  call void @llvm.dbg.value(metadata ptr %call134.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  %tobool135.not.i = icmp eq ptr %call134.i, null, !dbg !680
  br i1 %tobool135.not.i, label %cleanup342.thread952.i, label %if.end138.i, !dbg !682

if.end138.i:                                      ; preds = %if.then130.i, %lor.lhs.false127.i
  %fpss.0.i = phi ptr [ %call134.i, %if.then130.i ], [ null, %lor.lhs.false127.i ], !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.0.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  %44 = load double, ptr %assume_fps6.i, align 8, !dbg !683, !tbaa !558
  %call140.i = call fastcc double @correct_fps(double noundef %44, ptr noundef nonnull %call) #15, !dbg !684
  call void @llvm.dbg.value(metadata double %call140.i, metadata !502, metadata !DIExpression()) #15, !dbg !554
  %cmp141.i = fcmp olt double %call140.i, 0.000000e+00, !dbg !685
  br i1 %cmp141.i, label %cleanup342.thread952.i, label %if.end144.i, !dbg !687

if.end144.i:                                      ; preds = %if.end138.i
  store double 0.000000e+00, ptr %call121.i, align 8, !dbg !688, !tbaa !689
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %sub147.i = add nsw i32 %add118.i, -1
  %cmp1481061.i = icmp sgt i32 %add118.i, 1
  br i1 %cmp1481061.i, label %for.body150.lr.ph.lr.ph.i, label %for.end230.i, !dbg !690

for.body150.lr.ph.lr.ph.i:                        ; preds = %if.end144.i
  %div.i = fdiv double 1.000000e+00, %call140.i
  %45 = zext i32 %sub147.i to i64, !dbg !690
  br label %for.body150.us.preheader.i, !dbg !690

for.body150.us.preheader.i:                       ; preds = %if.end229.i, %for.body150.lr.ph.lr.ph.i
  %num.2.ph1064.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %num.5.i, %if.end229.i ]
  %seq_num.2.ph1062.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %seq_num.4.i, %if.end229.i ]
  call void @llvm.dbg.value(metadata i32 %num.2.ph1064.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %seq_num.2.ph1062.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  br label %for.body150.us.i, !dbg !692

for.body150.us.i:                                 ; preds = %for.body150.us.i.backedge, %for.body150.us.preheader.i
  %call152.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !696
  %46 = load i8, ptr %buff.i, align 16, !dbg !697, !tbaa !567
  switch i8 %46, label %if.end168.i [
    i8 35, label %for.body150.us.i.backedge
    i8 13, label %for.body150.us.i.backedge
    i8 10, label %for.body150.us.i.backedge
  ], !dbg !692

for.body150.us.i.backedge:                        ; preds = %for.body150.us.i, %for.body150.us.i, %for.body150.us.i
  br label %for.body150.us.i, !dbg !696

if.end168.i:                                      ; preds = %for.body150.us.i
  call void @llvm.dbg.value(metadata ptr %seq_fps.i, metadata !503, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %start.i, metadata !504, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !505, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  %call170.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #15, !dbg !698
  call void @llvm.dbg.value(metadata i32 %call170.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  %cmp171.not.i = icmp eq i32 %call170.i, 3, !dbg !699
  br i1 %cmp171.not.i, label %if.end168.if.end175_crit_edge.i, label %if.then173.i, !dbg !701

if.end168.if.end175_crit_edge.i:                  ; preds = %if.end168.i
  %.pre1123.i = load i32, ptr %start.i, align 4, !tbaa !543
  br label %if.end175.i, !dbg !701

if.then173.i:                                     ; preds = %if.end168.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !505, metadata !DIExpression()) #15, !dbg !554
  store i32 %sub147.i, ptr %end.i, align 4, !dbg !702, !tbaa !543
  call void @llvm.dbg.value(metadata i32 undef, metadata !504, metadata !DIExpression()) #15, !dbg !554
  store i32 %sub147.i, ptr %start.i, align 4, !dbg !703, !tbaa !543
  br label %if.end175.i, !dbg !704

if.end175.i:                                      ; preds = %if.then173.i, %if.end168.if.end175_crit_edge.i
  %47 = phi i32 [ %.pre1123.i, %if.end168.if.end175_crit_edge.i ], [ %sub147.i, %if.then173.i ]
  call void @llvm.dbg.value(metadata i32 %num.2.ph1064.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %47, metadata !504, metadata !DIExpression()) #15, !dbg !554
  %cmp1771050.i = icmp slt i32 %num.2.ph1064.i, %47, !dbg !705
  %cmp1801051.i = icmp slt i32 %num.2.ph1064.i, %sub147.i
  %or.cond9271052.i = select i1 %cmp1771050.i, i1 %cmp1801051.i, i1 false, !dbg !708
  br i1 %or.cond9271052.i, label %for.body182.preheader.i, label %for.end190.i, !dbg !708

for.body182.preheader.i:                          ; preds = %if.end175.i
  %48 = sext i32 %num.2.ph1064.i to i64, !dbg !709
  %49 = sext i32 %47 to i64, !dbg !709
  %arrayidx183.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %48
  %.pre1124.i = load double, ptr %arrayidx183.phi.trans.insert.i, align 8, !dbg !710, !tbaa !689
  br label %for.body182.i, !dbg !709

for.body182.i:                                    ; preds = %for.body182.i, %for.body182.preheader.i
  %50 = phi double [ %.pre1124.i, %for.body182.preheader.i ], [ %add184.i, %for.body182.i ], !dbg !710
  %indvars.iv1102.i = phi i64 [ %48, %for.body182.preheader.i ], [ %indvars.iv.next1103.i, %for.body182.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1102.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %add184.i = fadd double %div.i, %50, !dbg !711
  %indvars.iv.next1103.i = add nsw i64 %indvars.iv1102.i, 1, !dbg !712
  %arrayidx187.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1103.i, !dbg !713
  store double %add184.i, ptr %arrayidx187.i, align 8, !dbg !714, !tbaa !689
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1103.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %47, metadata !504, metadata !DIExpression()) #15, !dbg !554
  %cmp177.i = icmp slt i64 %indvars.iv.next1103.i, %49, !dbg !705
  %cmp180.i = icmp slt i64 %indvars.iv.next1103.i, %45
  %or.cond927.i = select i1 %cmp177.i, i1 %cmp180.i, i1 false, !dbg !708
  br i1 %or.cond927.i, label %for.body182.i, label %for.end190.loopexit.i, !dbg !708, !llvm.loop !715

for.end190.loopexit.i:                            ; preds = %for.body182.i
  %51 = trunc i64 %indvars.iv.next1103.i to i32, !dbg !717
  br i1 %cmp180.i, label %if.then194.i, label %if.end229.i, !dbg !717

for.end190.i:                                     ; preds = %if.end175.i
  br i1 %cmp1801051.i, label %if.then194.i, label %if.end229.i, !dbg !717

if.then194.i:                                     ; preds = %for.end190.i, %for.end190.loopexit.i
  %52 = load i32, ptr %auto_timebase_den127, align 8, !dbg !718, !tbaa !420
  %tobool196.not.i = icmp eq i32 %52, 0, !dbg !722
  br i1 %tobool196.not.i, label %lor.lhs.false197.i, label %if.then200.i, !dbg !723

lor.lhs.false197.i:                               ; preds = %if.then194.i
  %53 = load i32, ptr %auto_timebase_num117, align 4, !dbg !724, !tbaa !417
  %tobool199.not.i = icmp eq i32 %53, 0, !dbg !725
  br i1 %tobool199.not.i, label %lor.lhs.false197.if.end204_crit_edge.i, label %if.then200.i, !dbg !726

lor.lhs.false197.if.end204_crit_edge.i:           ; preds = %lor.lhs.false197.i
  %.pre1125.i = load double, ptr %seq_fps.i, align 8, !dbg !727, !tbaa !689
  br label %if.end204.i, !dbg !726

if.then200.i:                                     ; preds = %lor.lhs.false197.i, %if.then194.i
  %54 = load double, ptr %seq_fps.i, align 8, !dbg !728, !tbaa !689
  call void @llvm.dbg.value(metadata double %54, metadata !503, metadata !DIExpression()) #15, !dbg !554
  %inc201.i = add nsw i32 %seq_num.2.ph1062.i, 1, !dbg !729
  call void @llvm.dbg.value(metadata i32 %inc201.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  %idxprom202.i = sext i32 %seq_num.2.ph1062.i to i64, !dbg !730
  %arrayidx203.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom202.i, !dbg !730
  store double %54, ptr %arrayidx203.i, align 8, !dbg !731, !tbaa !689
  br label %if.end204.i, !dbg !730

if.end204.i:                                      ; preds = %if.then200.i, %lor.lhs.false197.if.end204_crit_edge.i
  %55 = phi double [ %54, %if.then200.i ], [ %.pre1125.i, %lor.lhs.false197.if.end204_crit_edge.i ], !dbg !727
  %seq_num.3.i = phi i32 [ %inc201.i, %if.then200.i ], [ %seq_num.2.ph1062.i, %lor.lhs.false197.if.end204_crit_edge.i ], !dbg !732
  call void @llvm.dbg.value(metadata i32 %seq_num.3.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata double %55, metadata !503, metadata !DIExpression()) #15, !dbg !554
  %call205.i = call fastcc double @correct_fps(double noundef %55, ptr noundef nonnull %call) #15, !dbg !733
  call void @llvm.dbg.value(metadata double %call205.i, metadata !503, metadata !DIExpression()) #15, !dbg !554
  store double %call205.i, ptr %seq_fps.i, align 8, !dbg !734, !tbaa !689
  %cmp206.i = fcmp olt double %call205.i, 0.000000e+00, !dbg !735
  br i1 %cmp206.i, label %cleanup342.thread952.i, label %if.end209.i, !dbg !737

if.end209.i:                                      ; preds = %if.end204.i
  %56 = load i32, ptr %start.i, align 4, !dbg !738, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %56, metadata !504, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 %56, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %57 = load i32, ptr %end.i, align 4, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %57, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %cmp211.not1056.i = icmp sle i32 %56, %57, !dbg !740
  %cmp2151057.i = icmp slt i32 %56, %sub147.i
  %or.cond9281058.i = select i1 %cmp211.not1056.i, i1 %cmp2151057.i, i1 false, !dbg !742
  br i1 %or.cond9281058.i, label %for.body218.lr.ph.i, label %if.end229.i, !dbg !742

for.body218.lr.ph.i:                              ; preds = %if.end209.i
  %div221.i = fdiv double 1.000000e+00, %call205.i
  %58 = sext i32 %56 to i64, !dbg !742
  %59 = sext i32 %57 to i64, !dbg !742
  %arrayidx220.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %58
  %.pre1126.i = load double, ptr %arrayidx220.phi.trans.insert.i, align 8, !dbg !743, !tbaa !689
  br label %for.body218.i, !dbg !742

for.body218.i:                                    ; preds = %for.body218.i, %for.body218.lr.ph.i
  %60 = phi double [ %.pre1126.i, %for.body218.lr.ph.i ], [ %add222.i, %for.body218.i ], !dbg !743
  %indvars.iv1105.i = phi i64 [ %58, %for.body218.lr.ph.i ], [ %indvars.iv.next1106.i, %for.body218.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1105.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata double %call205.i, metadata !503, metadata !DIExpression()) #15, !dbg !554
  %add222.i = fadd double %div221.i, %60, !dbg !744
  %indvars.iv.next1106.i = add nsw i64 %indvars.iv1105.i, 1, !dbg !745
  %arrayidx225.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1106.i, !dbg !746
  store double %add222.i, ptr %arrayidx225.i, align 8, !dbg !747, !tbaa !689
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1106.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %57, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %cmp211.not.i = icmp slt i64 %indvars.iv1105.i, %59, !dbg !740
  %cmp215.i = icmp slt i64 %indvars.iv.next1106.i, %45
  %or.cond928.i = select i1 %cmp211.not.i, i1 %cmp215.i, i1 false, !dbg !742
  br i1 %or.cond928.i, label %for.body218.i, label %if.end229.loopexit.i, !dbg !742, !llvm.loop !748

if.end229.loopexit.i:                             ; preds = %for.body218.i
  %61 = trunc i64 %indvars.iv.next1106.i to i32
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end229.loopexit.i, %if.end209.i, %for.end190.i, %for.end190.loopexit.i
  %seq_num.4.i = phi i32 [ %seq_num.2.ph1062.i, %for.end190.i ], [ %seq_num.3.i, %if.end209.i ], [ %seq_num.3.i, %if.end229.loopexit.i ], [ %seq_num.2.ph1062.i, %for.end190.loopexit.i ], !dbg !732
  %num.5.i = phi i32 [ %num.2.ph1064.i, %for.end190.i ], [ %56, %if.end209.i ], [ %61, %if.end229.loopexit.i ], [ %51, %for.end190.loopexit.i ], !dbg !732
  call void @llvm.dbg.value(metadata i32 %num.5.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %seq_num.4.i, metadata !493, metadata !DIExpression()) #15, !dbg !532
  %cmp148.i = icmp slt i32 %num.5.i, %sub147.i
  br i1 %cmp148.i, label %for.body150.us.preheader.i, label %for.end230.i, !dbg !690, !llvm.loop !751

for.end230.i:                                     ; preds = %if.end229.i, %if.end144.i
  %seq_num.2.ph.lcssa991.i = phi i32 [ 0, %if.end144.i ], [ %seq_num.4.i, %if.end229.i ]
  %62 = load i32, ptr %auto_timebase_den127, align 8, !dbg !753, !tbaa !420
  %tobool232.not.i = icmp eq i32 %62, 0, !dbg !755
  br i1 %tobool232.not.i, label %lor.lhs.false233.i, label %if.end240.thread975.i, !dbg !756

lor.lhs.false233.i:                               ; preds = %for.end230.i
  %63 = load i32, ptr %auto_timebase_num117, align 4, !dbg !757, !tbaa !417
  %tobool235.not.i = icmp eq i32 %63, 0, !dbg !758
  br i1 %tobool235.not.i, label %if.end334.i, label %if.then246.i, !dbg !759

if.end240.thread975.i:                            ; preds = %for.end230.i
  %64 = load double, ptr %assume_fps6.i, align 8, !dbg !760, !tbaa !558
  %idxprom238976.i = sext i32 %seq_num.2.ph.lcssa991.i to i64, !dbg !761
  %arrayidx239977.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom238976.i, !dbg !761
  store double %64, ptr %arrayidx239977.i, align 8, !dbg !762, !tbaa !689
  br label %if.then336.i, !dbg !763

if.then246.i:                                     ; preds = %lor.lhs.false233.i
  %65 = load double, ptr %assume_fps6.i, align 8, !dbg !760, !tbaa !558
  %idxprom238.i = sext i32 %seq_num.2.ph.lcssa991.i to i64, !dbg !761
  %arrayidx239.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom238.i, !dbg !761
  store double %65, ptr %arrayidx239.i, align 8, !dbg !762, !tbaa !689
  %add247.i = add nsw i32 %seq_num.2.ph.lcssa991.i, 1, !dbg !764
  %call248.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef %fpss.0.i, ptr noundef nonnull %call, i32 noundef %add247.i) #15, !dbg !766
  %cmp249.i = icmp slt i32 %call248.i, 0, !dbg !767
  br i1 %cmp249.i, label %cleanup342.thread952.i, label %if.end252.i, !dbg !768

if.end252.i:                                      ; preds = %if.then246.i
  %call253.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0) #15, !dbg !769
  %66 = load double, ptr %assume_fps6.i, align 8, !dbg !770, !tbaa !558
  call void @llvm.dbg.value(metadata double %66, metadata !771, metadata !DIExpression()) #15, !dbg !777
  call void @llvm.dbg.value(metadata ptr undef, metadata !776, metadata !DIExpression()) #15, !dbg !777
  %call.i.i = call double @log10(double noundef %66) #15, !dbg !779
  %67 = call double @llvm.floor.f64(double %call.i.i) #15, !dbg !780
  %call1.i.i = call double @pow(double noundef 1.000000e+01, double noundef %67) #15, !dbg !781
  %div.i.i = fdiv double %66, %call1.i.i, !dbg !782
  call void @llvm.dbg.value(metadata double %div.i.i, metadata !511, metadata !DIExpression()) #15, !dbg !783
  %div256.i = fdiv double 1.000000e+09, %div.i.i, !dbg !784
  %68 = call double @llvm.round.f64(double %div256.i) #15, !dbg !785
  call void @llvm.dbg.value(metadata double %call1.i.i, metadata !508, metadata !DIExpression()) #15, !dbg !783
  %div257.i = fdiv double %68, %call1.i.i, !dbg !786
  %div258.i = fdiv double 1.000000e+09, %div257.i, !dbg !787
  call void @llvm.dbg.value(metadata double %div258.i, metadata !502, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp1481061.i, label %for.body263.lr.ph.lr.ph.i, label %if.then336.i, !dbg !788

for.body263.lr.ph.lr.ph.i:                        ; preds = %if.end252.i
  %div304.i = fdiv double 1.000000e+00, %div258.i
  %69 = zext i32 %sub147.i to i64, !dbg !788
  br label %for.body263.us.preheader.i, !dbg !788

for.cond259.loopexit.loopexit.i:                  ; preds = %for.body320.i
  %70 = trunc i64 %indvars.iv.next1112.i to i32
  br label %for.cond259.loopexit.i

for.cond259.loopexit.i:                           ; preds = %for.cond312.preheader.i, %for.cond259.loopexit.loopexit.i
  %num.8.lcssa.i = phi i32 [ %75, %for.cond312.preheader.i ], [ %70, %for.cond259.loopexit.loopexit.i ], !dbg !790
  %cmp261.i = icmp slt i32 %num.8.lcssa.i, %sub147.i
  call void @llvm.dbg.value(metadata i32 %num.8.lcssa.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp261.i, label %for.body263.us.preheader.i, label %if.end334.i, !dbg !788

for.body263.us.preheader.i:                       ; preds = %for.cond259.loopexit.i, %for.body263.lr.ph.lr.ph.i
  %num.6.ph1079.i = phi i32 [ 0, %for.body263.lr.ph.lr.ph.i ], [ %num.8.lcssa.i, %for.cond259.loopexit.i ]
  call void @llvm.dbg.value(metadata i32 %num.6.ph1079.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br label %for.body263.us.i, !dbg !794

for.body263.us.i:                                 ; preds = %for.body263.us.i.backedge, %for.body263.us.preheader.i
  %call265.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !796
  %71 = load i8, ptr %buff.i, align 16, !dbg !797, !tbaa !567
  switch i8 %71, label %if.end281.i [
    i8 35, label %for.body263.us.i.backedge
    i8 13, label %for.body263.us.i.backedge
    i8 10, label %for.body263.us.i.backedge
  ], !dbg !794

for.body263.us.i.backedge:                        ; preds = %for.body263.us.i, %for.body263.us.i, %for.body263.us.i
  br label %for.body263.us.i, !dbg !796

if.end281.i:                                      ; preds = %for.body263.us.i
  call void @llvm.dbg.value(metadata ptr %seq_fps.i, metadata !503, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %start.i, metadata !504, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !505, metadata !DIExpression(DW_OP_deref)) #15, !dbg !554
  %call283.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #15, !dbg !798
  call void @llvm.dbg.value(metadata i32 %call283.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  %cmp284.not.i = icmp eq i32 %call283.i, 3, !dbg !799
  br i1 %cmp284.not.i, label %if.end288.i, label %if.then286.i, !dbg !801

if.then286.i:                                     ; preds = %if.end281.i
  call void @llvm.dbg.value(metadata i32 %sub147.i, metadata !505, metadata !DIExpression()) #15, !dbg !554
  store i32 %sub147.i, ptr %end.i, align 4, !dbg !802, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %sub147.i, metadata !504, metadata !DIExpression()) #15, !dbg !554
  store i32 %sub147.i, ptr %start.i, align 4, !dbg !803, !tbaa !543
  br label %if.end288.i, !dbg !804

if.end288.i:                                      ; preds = %if.then286.i, %if.end281.i
  %72 = load double, ptr %seq_fps.i, align 8, !dbg !805, !tbaa !689
  call void @llvm.dbg.value(metadata double %72, metadata !503, metadata !DIExpression()) #15, !dbg !554
  call void @llvm.dbg.value(metadata double %72, metadata !771, metadata !DIExpression()) #15, !dbg !806
  call void @llvm.dbg.value(metadata ptr undef, metadata !776, metadata !DIExpression()) #15, !dbg !806
  %call.i932.i = call double @log10(double noundef %72) #15, !dbg !808
  %73 = call double @llvm.floor.f64(double %call.i932.i) #15, !dbg !809
  %call1.i933.i = call double @pow(double noundef 1.000000e+01, double noundef %73) #15, !dbg !810
  %div.i934.i = fdiv double %72, %call1.i933.i, !dbg !811
  call void @llvm.dbg.value(metadata double %div.i934.i, metadata !512, metadata !DIExpression()) #15, !dbg !783
  %div290.i = fdiv double 1.000000e+09, %div.i934.i, !dbg !812
  %74 = call double @llvm.round.f64(double %div290.i) #15, !dbg !813
  call void @llvm.dbg.value(metadata double %call1.i933.i, metadata !508, metadata !DIExpression()) #15, !dbg !783
  %div291.i = fdiv double %74, %call1.i933.i, !dbg !814
  %div292.i = fdiv double 1.000000e+09, %div291.i, !dbg !815
  call void @llvm.dbg.value(metadata double %div292.i, metadata !503, metadata !DIExpression()) #15, !dbg !554
  store double %div292.i, ptr %seq_fps.i, align 8, !dbg !816, !tbaa !689
  %75 = load i32, ptr %start.i, align 4, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %num.6.ph1079.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %75, metadata !504, metadata !DIExpression()) #15, !dbg !554
  %cmp2941068.i = icmp slt i32 %num.6.ph1079.i, %75, !dbg !817
  %cmp2981069.i = icmp slt i32 %num.6.ph1079.i, %sub147.i
  %or.cond9291070.i = select i1 %cmp2941068.i, i1 %cmp2981069.i, i1 false, !dbg !820
  br i1 %or.cond9291070.i, label %for.body301.preheader.i, label %for.cond312.preheader.i, !dbg !820

for.body301.preheader.i:                          ; preds = %if.end288.i
  %76 = sext i32 %num.6.ph1079.i to i64, !dbg !821
  %77 = sext i32 %75 to i64, !dbg !821
  %arrayidx303.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %76
  %.pre1127.i = load double, ptr %arrayidx303.phi.trans.insert.i, align 8, !dbg !822, !tbaa !689
  br label %for.body301.i, !dbg !821

for.cond312.preheader.i:                          ; preds = %for.body301.i, %if.end288.i
  %78 = load i32, ptr %end.i, align 4, !tbaa !543
  call void @llvm.dbg.value(metadata i32 undef, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %78, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %cmp313.not1073.i = icmp sle i32 %75, %78, !dbg !823
  %cmp3171074.i = icmp slt i32 %75, %sub147.i
  %or.cond9301075.i = select i1 %cmp313.not1073.i, i1 %cmp3171074.i, i1 false, !dbg !825
  br i1 %or.cond9301075.i, label %for.body320.lr.ph.i, label %for.cond259.loopexit.i, !dbg !825, !llvm.loop !826

for.body320.lr.ph.i:                              ; preds = %for.cond312.preheader.i
  %div323.i = fdiv double 1.000000e+00, %div292.i
  %79 = sext i32 %75 to i64, !dbg !825
  %80 = sext i32 %78 to i64, !dbg !825
  %arrayidx322.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %79
  %.pre1128.i = load double, ptr %arrayidx322.phi.trans.insert.i, align 8, !dbg !828, !tbaa !689
  br label %for.body320.i, !dbg !825

for.body301.i:                                    ; preds = %for.body301.i, %for.body301.preheader.i
  %81 = phi double [ %.pre1127.i, %for.body301.preheader.i ], [ %add305.i, %for.body301.i ], !dbg !822
  %indvars.iv1108.i = phi i64 [ %76, %for.body301.preheader.i ], [ %indvars.iv.next1109.i, %for.body301.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1108.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %add305.i = fadd double %div304.i, %81, !dbg !829
  %indvars.iv.next1109.i = add nsw i64 %indvars.iv1108.i, 1, !dbg !830
  %arrayidx308.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1109.i, !dbg !831
  store double %add305.i, ptr %arrayidx308.i, align 8, !dbg !832, !tbaa !689
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1109.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %75, metadata !504, metadata !DIExpression()) #15, !dbg !554
  %cmp294.i = icmp slt i64 %indvars.iv.next1109.i, %77, !dbg !817
  %cmp298.i = icmp slt i64 %indvars.iv.next1109.i, %69
  %or.cond929.i = select i1 %cmp294.i, i1 %cmp298.i, i1 false, !dbg !820
  br i1 %or.cond929.i, label %for.body301.i, label %for.cond312.preheader.i, !dbg !820, !llvm.loop !833

for.body320.i:                                    ; preds = %for.body320.i, %for.body320.lr.ph.i
  %82 = phi double [ %.pre1128.i, %for.body320.lr.ph.i ], [ %add324.i, %for.body320.i ], !dbg !828
  %indvars.iv1111.i = phi i64 [ %79, %for.body320.lr.ph.i ], [ %indvars.iv.next1112.i, %for.body320.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1111.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata double %div292.i, metadata !503, metadata !DIExpression()) #15, !dbg !554
  %add324.i = fadd double %div323.i, %82, !dbg !835
  %indvars.iv.next1112.i = add nsw i64 %indvars.iv1111.i, 1, !dbg !836
  %arrayidx327.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1112.i, !dbg !837
  store double %add324.i, ptr %arrayidx327.i, align 8, !dbg !838, !tbaa !689
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1112.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i32 %78, metadata !505, metadata !DIExpression()) #15, !dbg !554
  %cmp313.not.i = icmp slt i64 %indvars.iv1111.i, %80, !dbg !823
  %cmp317.i = icmp slt i64 %indvars.iv.next1112.i, %69
  %or.cond930.i = select i1 %cmp313.not.i, i1 %cmp317.i, i1 false, !dbg !825
  br i1 %or.cond930.i, label %for.body320.i, label %for.cond259.loopexit.loopexit.i, !dbg !825, !llvm.loop !839

if.end334.i:                                      ; preds = %for.cond259.loopexit.i, %lor.lhs.false233.i
  %assume_fps.1.i = phi double [ %call140.i, %lor.lhs.false233.i ], [ %div258.i, %for.cond259.loopexit.i ], !dbg !842
  call void @llvm.dbg.value(metadata double %assume_fps.1.i, metadata !502, metadata !DIExpression()) #15, !dbg !554
  %tobool335.not.i = icmp eq ptr %fpss.0.i, null, !dbg !843
  br i1 %tobool335.not.i, label %cleanup342.i, label %if.then336.i, !dbg !845

if.then336.i:                                     ; preds = %if.end334.i, %if.end252.i, %if.end240.thread975.i
  %assume_fps.1946.i = phi double [ %assume_fps.1.i, %if.end334.i ], [ %call140.i, %if.end240.thread975.i ], [ %div258.i, %if.end252.i ]
  call void @free(ptr noundef nonnull %fpss.0.i) #15, !dbg !846
  br label %cleanup342.i, !dbg !846

cleanup342.thread.i:                              ; preds = %if.end115.i, %if.then96.i, %if.then82.i, %if.then40.i, %if.then34.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #15, !dbg !847
  br label %if.then52

cleanup342.thread952.i:                           ; preds = %if.end204.i, %if.then246.i, %if.end138.i, %if.then130.i
  %fpss.1.ph.i = phi ptr [ %fpss.0.i, %if.end138.i ], [ null, %if.then130.i ], [ %fpss.0.i, %if.then246.i ], [ %fpss.0.i, %if.end204.i ]
  call void @llvm.dbg.value(metadata ptr %call121.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.0.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #15, !dbg !847
  br label %if.then671.i

cleanup342.i:                                     ; preds = %if.then336.i, %if.end334.i
  %assume_fps.1947.i = phi double [ %assume_fps.1946.i, %if.then336.i ], [ %assume_fps.1.i, %if.end334.i ]
  store double %assume_fps.1947.i, ptr %assume_fps6.i, align 8, !dbg !848, !tbaa !558
  %idxprom340.i = sext i32 %sub147.i to i64, !dbg !849
  %arrayidx341.i = getelementptr inbounds double, ptr %call121.i, i64 %idxprom340.i, !dbg !849
  %83 = load double, ptr %arrayidx341.i, align 8, !dbg !849, !tbaa !689
  %last_timecode.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 11, !dbg !850
  store double %83, ptr %last_timecode.i, align 8, !dbg !851, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %call121.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.0.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #15, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #15, !dbg !847
  br label %if.end583.i

if.else.i:                                        ; preds = %if.end.i
  %call352.i = call i64 @ftell(ptr noundef nonnull %call38) #15, !dbg !853
  call void @llvm.dbg.value(metadata i64 %call352.i, metadata !513, metadata !DIExpression()) #15, !dbg !854
  %stored_pts_num353.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 8, !dbg !855
  store i32 0, ptr %stored_pts_num353.i, align 4, !dbg !856, !tbaa !596
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %call35510041008.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38) #15, !dbg !857
  %cmp356.not10051009.i = icmp eq ptr %call35510041008.i, null, !dbg !858
  br i1 %cmp356.not10051009.i, label %while.end.i, label %while.body.lr.ph.i, !dbg !859

while.body.lr.ph.i:                               ; preds = %if.else.i, %if.end376.i
  %num.9.ph1011.i = phi i32 [ %num.91006.i, %if.end376.i ], [ 0, %if.else.i ]
  %file_pos351.0.ph1010.i = phi i64 [ %file_pos351.1.i, %if.end376.i ], [ %call352.i, %if.else.i ]
  call void @llvm.dbg.value(metadata i32 %num.9.ph1011.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i64 %file_pos351.0.ph1010.i, metadata !513, metadata !DIExpression()) #15, !dbg !854
  br label %while.body.i, !dbg !859

while.body.i:                                     ; preds = %if.end384.i, %while.body.lr.ph.i
  %num.91006.i = phi i32 [ %num.9.ph1011.i, %while.body.lr.ph.i ], [ %inc385.i, %if.end384.i ]
  call void @llvm.dbg.value(metadata i32 %num.91006.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %84 = load i8, ptr %buff.i, align 16, !dbg !860, !tbaa !567
  switch i8 %84, label %if.end377.i [
    i8 35, label %if.then372.i
    i8 13, label %if.then372.i
    i8 10, label %if.then372.i
  ], !dbg !863

if.then372.i:                                     ; preds = %while.body.i, %while.body.i, %while.body.i
  %tobool373.not.i = icmp eq i32 %num.91006.i, 0, !dbg !864
  br i1 %tobool373.not.i, label %if.then374.i, label %if.end376.i, !dbg !867

if.then374.i:                                     ; preds = %if.then372.i
  %call375.i = call i64 @ftell(ptr noundef %call38) #15, !dbg !868
  call void @llvm.dbg.value(metadata i64 %call375.i, metadata !513, metadata !DIExpression()) #15, !dbg !854
  br label %if.end376.i, !dbg !869

if.end376.i:                                      ; preds = %if.then374.i, %if.then372.i
  %file_pos351.1.i = phi i64 [ %file_pos351.0.ph1010.i, %if.then372.i ], [ %call375.i, %if.then374.i ], !dbg !854
  call void @llvm.dbg.value(metadata i32 %num.91006.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i64 %file_pos351.1.i, metadata !513, metadata !DIExpression()) #15, !dbg !854
  %call3551004.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !857
  %cmp356.not1005.i = icmp eq ptr %call3551004.i, null, !dbg !858
  br i1 %cmp356.not1005.i, label %while.end.i, label %while.body.lr.ph.i, !dbg !859, !llvm.loop !870

if.end377.i:                                      ; preds = %while.body.i
  %85 = load i32, ptr %seek5, align 8, !dbg !872, !tbaa !409
  %cmp379.not.i = icmp slt i32 %num.91006.i, %85, !dbg !874
  br i1 %cmp379.not.i, label %if.end384.i, label %if.then381.i, !dbg !875

if.then381.i:                                     ; preds = %if.end377.i
  %86 = load i32, ptr %stored_pts_num353.i, align 4, !dbg !876, !tbaa !596
  %inc383.i = add nsw i32 %86, 1, !dbg !876
  store i32 %inc383.i, ptr %stored_pts_num353.i, align 4, !dbg !876, !tbaa !596
  br label %if.end384.i, !dbg !876

if.end384.i:                                      ; preds = %if.then381.i, %if.end377.i
  %inc385.i = add nsw i32 %num.91006.i, 1, !dbg !877
  call void @llvm.dbg.value(metadata i32 %inc385.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata i64 %file_pos351.0.ph1010.i, metadata !513, metadata !DIExpression()) #15, !dbg !854
  %call355.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !857
  %cmp356.not.i = icmp eq ptr %call355.i, null, !dbg !858
  br i1 %cmp356.not.i, label %while.end.i, label %while.body.i, !dbg !859, !llvm.loop !878

while.end.i:                                      ; preds = %if.end376.i, %if.end384.i, %if.else.i
  %file_pos351.0.ph.lcssa.i = phi i64 [ %call352.i, %if.else.i ], [ %file_pos351.0.ph1010.i, %if.end384.i ], [ %file_pos351.1.i, %if.end376.i ]
  %87 = load i32, ptr %stored_pts_num353.i, align 4, !dbg !879, !tbaa !596
  %88 = load i32, ptr %seek5, align 8, !dbg !880, !tbaa !409
  %add388.i = add i32 %88, %87, !dbg !881
  call void @llvm.dbg.value(metadata i32 %add388.i, metadata !494, metadata !DIExpression()) #15, !dbg !532
  %tobool389.not.i = icmp eq i32 %add388.i, 0, !dbg !882
  br i1 %tobool389.not.i, label %if.then390.i, label %if.end392.i, !dbg !884

if.then390.i:                                     ; preds = %while.end.i
  %89 = load ptr, ptr @stderr, align 8, !dbg !885, !tbaa !381
  %90 = call i64 @fwrite(ptr nonnull @.str.16, i64 59, i64 1, ptr %89) #16, !dbg !887
  br label %if.then52, !dbg !888

if.end392.i:                                      ; preds = %while.end.i
  %call393.i = call i32 @fseek(ptr noundef %call38, i64 noundef %file_pos351.0.ph.lcssa.i, i32 noundef 0) #15, !dbg !889
  %conv394.i = sext i32 %add388.i to i64, !dbg !890
  %mul395.i = shl nsw i64 %conv394.i, 3, !dbg !891
  %call396.i = call noalias ptr @malloc(i64 noundef %mul395.i) #13, !dbg !892
  call void @llvm.dbg.value(metadata ptr %call396.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  %tobool397.not.i = icmp eq ptr %call396.i, null, !dbg !893
  br i1 %tobool397.not.i, label %if.then52, label %if.end399.i, !dbg !895

if.end399.i:                                      ; preds = %if.end392.i
  %call401.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !896
  %call404.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %call396.i) #15, !dbg !897
  call void @llvm.dbg.value(metadata i32 %call404.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  %cmp405.not.i = icmp eq i32 %call404.i, 1, !dbg !898
  br i1 %cmp405.not.i, label %for.cond410.preheader.i, label %if.then407.i, !dbg !900

for.cond410.preheader.i:                          ; preds = %if.end399.i
  %cmp4111013.i = icmp sgt i32 %add388.i, 1
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp4111013.i, label %for.body413.lr.ph.preheader.i, label %for.end453.i, !dbg !901

for.body413.lr.ph.preheader.i:                    ; preds = %for.cond410.preheader.i
  %wide.trip.count.i = zext i32 %add388.i to i64
  br label %for.body413.lr.ph.i, !dbg !901

if.then407.i:                                     ; preds = %if.end399.i
  %91 = load ptr, ptr @stderr, align 8, !dbg !903, !tbaa !381
  %92 = call i64 @fwrite(ptr nonnull @.str.18, i64 51, i64 1, ptr %91) #16, !dbg !905
  br label %if.then671.thread.i, !dbg !906

if.end431.i:                                      ; preds = %for.body413.us.i, %for.body413.lr.ph.split.i
  %arrayidx434.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.i, !dbg !907
  %call435.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %arrayidx434.i) #15, !dbg !910
  call void @llvm.dbg.value(metadata i32 %call435.i, metadata !490, metadata !DIExpression()) #15, !dbg !532
  %93 = load double, ptr %arrayidx434.i, align 8, !dbg !911, !tbaa !689
  %mul438.i = fmul double %93, 1.000000e-03, !dbg !911
  store double %mul438.i, ptr %arrayidx434.i, align 8, !dbg !911, !tbaa !689
  %cmp439.not.i = icmp eq i32 %call435.i, 1, !dbg !912
  br i1 %cmp439.not.i, label %lor.lhs.false441.i, label %if.then449.i, !dbg !914

lor.lhs.false441.i:                               ; preds = %if.end431.i
  %94 = add nsw i64 %indvars.iv.i, -1, !dbg !915
  %arrayidx446.i = getelementptr inbounds double, ptr %call396.i, i64 %94, !dbg !916
  %95 = load double, ptr %arrayidx446.i, align 8, !dbg !916, !tbaa !689
  %cmp447.i = fcmp ugt double %mul438.i, %95, !dbg !917
  br i1 %cmp447.i, label %if.end451.i, label %if.then449.i, !dbg !918

if.then449.i:                                     ; preds = %lor.lhs.false441.i, %if.end431.i
  %96 = trunc i64 %indvars.iv.i to i32, !dbg !914
  %97 = load ptr, ptr @stderr, align 8, !dbg !919, !tbaa !381
  %call450.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.19, i32 noundef %96) #16, !dbg !921
  br label %if.then671.thread.i, !dbg !922

if.end451.i:                                      ; preds = %lor.lhs.false441.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !923
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %cmp411.i = icmp slt i64 %indvars.iv.next.i, %conv394.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end453.i, label %for.body413.lr.ph.i, !dbg !901, !llvm.loop !924

for.body413.lr.ph.i:                              ; preds = %if.end451.i, %for.body413.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body413.lr.ph.preheader.i ], [ %indvars.iv.next.i, %if.end451.i ]
  %cmp4111015.i = phi i1 [ true, %for.body413.lr.ph.preheader.i ], [ %cmp411.i, %if.end451.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp4111015.i, label %for.body413.us.i, label %for.body413.lr.ph.split.i, !dbg !901

for.body413.us.i:                                 ; preds = %for.body413.lr.ph.i, %for.body413.us.i.backedge
  %call415.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !926
  %98 = load i8, ptr %buff.i, align 16, !dbg !927, !tbaa !567
  switch i8 %98, label %if.end431.i [
    i8 35, label %for.body413.us.i.backedge
    i8 13, label %for.body413.us.i.backedge
    i8 10, label %for.body413.us.i.backedge
  ], !dbg !929

for.body413.us.i.backedge:                        ; preds = %for.body413.us.i, %for.body413.us.i, %for.body413.us.i
  br label %for.body413.us.i, !dbg !926

for.body413.lr.ph.split.i:                        ; preds = %for.body413.lr.ph.i
  %call415.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38) #15, !dbg !926
  %99 = load i8, ptr %buff.i, align 16, !dbg !927, !tbaa !567
  switch i8 %99, label %if.end431.i [
    i8 35, label %for.end453.i
    i8 13, label %for.end453.i
    i8 10, label %for.end453.i
  ], !dbg !929

for.end453.i:                                     ; preds = %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %if.end451.i, %for.cond410.preheader.i
  %cmp454.i = icmp eq i32 %add388.i, 1, !dbg !930
  br i1 %cmp454.i, label %if.end555.thread.i, label %if.else458.i, !dbg !931

if.end555.thread.i:                               ; preds = %for.end453.i
  %fps_num.i = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 1, !dbg !932
  %100 = load i32, ptr %fps_num.i, align 4, !dbg !932, !tbaa !933
  %conv457.i = zext i32 %100 to i64, !dbg !934
  %timebase_den.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !935
  store i64 %conv457.i, ptr %timebase_den.i, align 8, !dbg !936, !tbaa !439
  call void @llvm.dbg.value(metadata ptr %fpss.2.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  br label %if.else568.i, !dbg !937

if.else458.i:                                     ; preds = %for.end453.i
  %101 = load i32, ptr %auto_timebase_den127, align 8, !dbg !938, !tbaa !420
  %tobool460.not.i = icmp eq i32 %101, 0, !dbg !939
  br i1 %tobool460.not.i, label %if.end555.i, label %if.then461.i, !dbg !940

if.then461.i:                                     ; preds = %if.else458.i
  %sub462.i = add nsw i32 %add388.i, -1, !dbg !941
  %conv463.i = sext i32 %sub462.i to i64, !dbg !942
  %mul464.i = shl nsw i64 %conv463.i, 3, !dbg !943
  %call465.i = call noalias ptr @malloc(i64 noundef %mul464.i) #13, !dbg !944
  call void @llvm.dbg.value(metadata ptr %call465.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  %tobool466.not.i = icmp eq ptr %call465.i, null, !dbg !945
  br i1 %tobool466.not.i, label %if.then671.thread.i, label %for.cond469.preheader.i, !dbg !947

for.cond469.preheader.i:                          ; preds = %if.then461.i
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp4111013.i, label %for.body473.lr.ph.i, label %for.end540.i, !dbg !948

for.body473.lr.ph.i:                              ; preds = %for.cond469.preheader.i
  %timebase_den483.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6
  %timebase_num.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 5
  %wide.trip.count1100.i = zext i32 %sub462.i to i64, !dbg !949
  %.pre.i = load i64, ptr %timebase_den483.i, align 8, !dbg !950, !tbaa !439
  br label %for.body473.i, !dbg !948

for.body473.i:                                    ; preds = %for.inc538.i, %for.body473.lr.ph.i
  %102 = phi i64 [ %.pre.i, %for.body473.lr.ph.i ], [ %112, %for.inc538.i ], !dbg !950
  %indvars.iv1097.i = phi i64 [ 0, %for.body473.lr.ph.i ], [ %indvars.iv.next1098.i, %for.inc538.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1097.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %indvars.iv.next1098.i = add nuw nsw i64 %indvars.iv1097.i, 1, !dbg !951
  %arrayidx476.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.next1098.i, !dbg !952
  %103 = load double, ptr %arrayidx476.i, align 8, !dbg !952, !tbaa !689
  %arrayidx478.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv1097.i, !dbg !953
  %104 = load double, ptr %arrayidx478.i, align 8, !dbg !953, !tbaa !689
  %sub479.i = fsub double %103, %104, !dbg !954
  %div480.i = fdiv double 1.000000e+00, %sub479.i, !dbg !955
  %arrayidx482.i = getelementptr inbounds double, ptr %call465.i, i64 %indvars.iv1097.i, !dbg !956
  store double %div480.i, ptr %arrayidx482.i, align 8, !dbg !957, !tbaa !689
  %105 = and i64 %102, 2147483648, !dbg !958
  %cmp485.i = icmp eq i64 %105, 0, !dbg !958
  br i1 %cmp485.i, label %if.then487.i, label %for.inc538.i, !dbg !959

if.then487.i:                                     ; preds = %for.body473.i
  call void @llvm.dbg.value(metadata i32 1, metadata !515, metadata !DIExpression()) #15, !dbg !960
  call void @llvm.dbg.value(metadata double %div480.i, metadata !771, metadata !DIExpression()) #15, !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !776, metadata !DIExpression()) #15, !dbg !961
  %call.i935.i = call double @log10(double noundef %div480.i) #15, !dbg !963
  %106 = call double @llvm.floor.f64(double %call.i935.i) #15, !dbg !964
  %call1.i936.i = call double @pow(double noundef 1.000000e+01, double noundef %106) #15, !dbg !965
  %div.i937.i = fdiv double %div480.i, %call1.i936.i, !dbg !966
  call void @llvm.dbg.value(metadata double %div.i937.i, metadata !527, metadata !DIExpression()) #15, !dbg !960
  %107 = load i64, ptr %timebase_num.i, align 8, !tbaa !432
  call void @llvm.dbg.value(metadata i64 %107, metadata !525, metadata !DIExpression(DW_OP_constu, 1, DW_OP_mul, DW_OP_stack_value)) #15, !dbg !960
  %conv4971017.i = uitofp i64 %107 to double, !dbg !967
  %mul4981018.i = fmul double %div.i937.i, %conv4971017.i, !dbg !969
  %108 = call double @llvm.round.f64(double %mul4981018.i) #15, !dbg !970
  call void @llvm.dbg.value(metadata double %call1.i936.i, metadata !526, metadata !DIExpression()) #15, !dbg !960
  %mul4991019.i = fmul double %call1.i936.i, %108, !dbg !971
  %conv5001020.i = fptoui double %mul4991019.i to i64, !dbg !970
  call void @llvm.dbg.value(metadata i64 %conv5001020.i, metadata !524, metadata !DIExpression()) #15, !dbg !960
  %cmp5011021.i = icmp ugt i64 %conv5001020.i, 4294967295, !dbg !972
  br i1 %cmp5011021.i, label %land.lhs.true516.i, label %lor.lhs.false503.i, !dbg !974

while.cond493.i:                                  ; preds = %lor.lhs.false503.i
  %indvars.iv.next1095.i = add nuw i64 %indvars.iv1094.i, 1, !dbg !975
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #15, !dbg !960
  %mul496.i = mul i64 %indvars.iv.next1095.i, %107, !dbg !976
  call void @llvm.dbg.value(metadata i64 %mul496.i, metadata !525, metadata !DIExpression()) #15, !dbg !960
  %conv497.i = uitofp i64 %mul496.i to double, !dbg !967
  %mul498.i = fmul double %div.i937.i, %conv497.i, !dbg !969
  %109 = call double @llvm.round.f64(double %mul498.i) #15, !dbg !970
  call void @llvm.dbg.value(metadata double %call1.i936.i, metadata !526, metadata !DIExpression()) #15, !dbg !960
  %mul499.i = fmul double %call1.i936.i, %109, !dbg !971
  %conv500.i = fptoui double %mul499.i to i64, !dbg !970
  call void @llvm.dbg.value(metadata i64 %conv500.i, metadata !524, metadata !DIExpression()) #15, !dbg !960
  %cmp501.i = icmp ugt i64 %conv500.i, 4294967295, !dbg !972
  br i1 %cmp501.i, label %land.lhs.true516.i, label %lor.lhs.false503.i, !dbg !974, !llvm.loop !977

lor.lhs.false503.i:                               ; preds = %if.then487.i, %while.cond493.i
  %indvars.iv1094.i = phi i64 [ %indvars.iv.next1095.i, %while.cond493.i ], [ 1, %if.then487.i ]
  %conv5001024.i = phi i64 [ %conv500.i, %while.cond493.i ], [ %conv5001020.i, %if.then487.i ]
  %conv4971023.i = phi double [ %conv497.i, %while.cond493.i ], [ %conv4971017.i, %if.then487.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1094.i, metadata !515, metadata !DIExpression()) #15, !dbg !960
  %conv504.i = uitofp i64 %conv5001024.i to double, !dbg !980
  %div506.i = fdiv double %conv504.i, %conv4971023.i, !dbg !981
  %div507.i = fdiv double %div506.i, %call1.i936.i, !dbg !982
  %sub508.i = fsub double %div507.i, %div.i937.i, !dbg !983
  %110 = call double @llvm.fabs.f64(double %sub508.i) #15, !dbg !984
  %cmp509.i = fcmp olt double %110, 5.000000e-06, !dbg !985
  call void @llvm.dbg.value(metadata i64 %indvars.iv1094.i, metadata !515, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #15, !dbg !960
  br i1 %cmp509.i, label %while.end514.i, label %while.cond493.i, !dbg !986

while.end514.i:                                   ; preds = %lor.lhs.false503.i
  %tobool515.not.i = icmp eq i64 %conv5001024.i, 0, !dbg !987
  br i1 %tobool515.not.i, label %cond.false.i, label %land.lhs.true516.i, !dbg !988

land.lhs.true516.i:                               ; preds = %while.cond493.i, %while.end514.i, %if.then487.i
  %conv5001000.i = phi i64 [ %conv5001024.i, %while.end514.i ], [ %conv5001020.i, %if.then487.i ], [ %conv500.i, %while.cond493.i ]
  %111 = load i64, ptr %timebase_den483.i, align 8, !dbg !989, !tbaa !439
  %tobool518.not.i = icmp eq i64 %111, 0, !dbg !990
  br i1 %tobool518.not.i, label %cond.false.i, label %while.body.i.i.i, !dbg !987

while.body.i.i.i:                                 ; preds = %land.lhs.true516.i, %while.body.i.i.i
  %a.addr.0.i.i.i = phi i64 [ %b.addr.0.i.i.i, %while.body.i.i.i ], [ %111, %land.lhs.true516.i ]
  %b.addr.0.i.i.i = phi i64 [ %rem.i.i.i, %while.body.i.i.i ], [ %conv5001000.i, %land.lhs.true516.i ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i.i.i, metadata !991, metadata !DIExpression()) #15, !dbg !999
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i.i.i, metadata !996, metadata !DIExpression()) #15, !dbg !999
  %rem.i.i.i = srem i64 %a.addr.0.i.i.i, %b.addr.0.i.i.i, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i, metadata !997, metadata !DIExpression()) #15, !dbg !1007
  %tobool.not.not.i.i.i = icmp eq i64 %rem.i.i.i, 0, !dbg !1008
  call void @llvm.dbg.value(metadata i64 undef, metadata !991, metadata !DIExpression()) #15, !dbg !999
  call void @llvm.dbg.value(metadata i64 undef, metadata !996, metadata !DIExpression()) #15, !dbg !999
  br i1 %tobool.not.not.i.i.i, label %lcm.exit.i, label %while.body.i.i.i

lcm.exit.i:                                       ; preds = %while.body.i.i.i
  %div.i938.i = sdiv i64 %111, %b.addr.0.i.i.i, !dbg !1010
  %mul.i.i = mul nsw i64 %div.i938.i, %conv5001000.i, !dbg !1011
  br label %cond.end.i, !dbg !987

cond.false.i:                                     ; preds = %land.lhs.true516.i, %while.end514.i
  %conv5001001.i = phi i64 [ %conv5001000.i, %land.lhs.true516.i ], [ 0, %while.end514.i ]
  %sext.i = shl i64 %conv5001001.i, 32, !dbg !1012
  %conv522.i = ashr exact i64 %sext.i, 32, !dbg !1012
  br label %cond.end.i, !dbg !987

cond.end.i:                                       ; preds = %cond.false.i, %lcm.exit.i
  %cond.i = phi i64 [ %mul.i.i, %lcm.exit.i ], [ %conv522.i, %cond.false.i ], !dbg !987
  store i64 %cond.i, ptr %timebase_den483.i, align 8, !dbg !1013, !tbaa !439
  %cmp525.i = icmp ugt i64 %cond.i, 4294967295, !dbg !1014
  br i1 %cmp525.i, label %if.then527.i, label %for.inc538.i, !dbg !1016

if.then527.i:                                     ; preds = %cond.end.i
  store i32 0, ptr %auto_timebase_den127, align 8, !dbg !1017, !tbaa !420
  br label %for.inc538.i, !dbg !1019

for.inc538.i:                                     ; preds = %if.then527.i, %cond.end.i, %for.body473.i
  %112 = phi i64 [ %cond.i, %if.then527.i ], [ %cond.i, %cond.end.i ], [ %102, %for.body473.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1098.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %exitcond1101.not.i = icmp eq i64 %indvars.iv.next1098.i, %wide.trip.count1100.i, !dbg !949
  br i1 %exitcond1101.not.i, label %for.end540.i, label %for.body473.i, !dbg !948, !llvm.loop !1020

for.end540.i:                                     ; preds = %for.inc538.i, %for.cond469.preheader.i
  %113 = load i32, ptr %auto_timebase_num117, align 4, !dbg !1022, !tbaa !417
  %tobool542.not.i = icmp eq i32 %113, 0, !dbg !1024
  br i1 %tobool542.not.i, label %if.end553.i, label %land.lhs.true543.i, !dbg !1025

land.lhs.true543.i:                               ; preds = %for.end540.i
  %114 = load i32, ptr %auto_timebase_den127, align 8, !dbg !1026, !tbaa !420
  %tobool545.not.i = icmp eq i32 %114, 0, !dbg !1027
  br i1 %tobool545.not.i, label %if.then546.i, label %if.end553.i, !dbg !1028

if.then546.i:                                     ; preds = %land.lhs.true543.i
  %call548.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef nonnull %call465.i, ptr noundef nonnull %call, i32 noundef %sub462.i) #15, !dbg !1029
  %cmp549.i = icmp slt i32 %call548.i, 0, !dbg !1031
  br i1 %cmp549.i, label %if.then671.i, label %if.end553.i, !dbg !1032

if.end553.i:                                      ; preds = %if.then546.i, %land.lhs.true543.i, %for.end540.i
  call void @free(ptr noundef %call465.i) #15, !dbg !1033
  br label %if.end555.i, !dbg !1034

if.end555.i:                                      ; preds = %if.end553.i, %if.else458.i
  %fpss.2.i = phi ptr [ %call465.i, %if.end553.i ], [ null, %if.else458.i ], !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.2.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  br i1 %cmp4111013.i, label %if.then558.i, label %if.end555.if.else568_crit_edge.i, !dbg !937

if.end555.if.else568_crit_edge.i:                 ; preds = %if.end555.i
  %fps_num569.phi.trans.insert.i = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 1
  %.pre1121.i = load i32, ptr %fps_num569.phi.trans.insert.i, align 4, !dbg !1035, !tbaa !933
  br label %if.else568.i, !dbg !937

if.then558.i:                                     ; preds = %if.end555.i
  %sub559.i = add nsw i32 %add388.i, -1, !dbg !1037
  %115 = zext i32 %sub559.i to i64
  %arrayidx561.i = getelementptr inbounds double, ptr %call396.i, i64 %115, !dbg !1038
  %116 = load double, ptr %arrayidx561.i, align 8, !dbg !1038, !tbaa !689
  %sub562.i = add nsw i32 %add388.i, -2, !dbg !1039
  %117 = zext i32 %sub562.i to i64
  %arrayidx564.i = getelementptr inbounds double, ptr %call396.i, i64 %117, !dbg !1040
  %118 = load double, ptr %arrayidx564.i, align 8, !dbg !1040, !tbaa !689
  %sub565.i = fsub double %116, %118, !dbg !1041
  %div566.i = fdiv double 1.000000e+00, %sub565.i, !dbg !1042
  %assume_fps567.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 10, !dbg !1043
  store double %div566.i, ptr %assume_fps567.i, align 8, !dbg !1044, !tbaa !558
  br label %cleanup580.i, !dbg !1045

if.else568.i:                                     ; preds = %if.end555.if.else568_crit_edge.i, %if.end555.thread.i
  %119 = phi i32 [ %100, %if.end555.thread.i ], [ %.pre1121.i, %if.end555.if.else568_crit_edge.i ], !dbg !1035
  %fpss.2960.i = phi ptr [ null, %if.end555.thread.i ], [ %fpss.2.i, %if.end555.if.else568_crit_edge.i ]
  %conv570.i = uitofp i32 %119 to double, !dbg !1046
  %fps_den571.i = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 2, !dbg !1047
  %120 = load i32, ptr %fps_den571.i, align 4, !dbg !1047, !tbaa !450
  %conv572.i = uitofp i32 %120 to double, !dbg !1048
  %div573.i = fdiv double %conv570.i, %conv572.i, !dbg !1049
  %assume_fps574.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 10, !dbg !1050
  store double %div573.i, ptr %assume_fps574.i, align 8, !dbg !1051, !tbaa !558
  %.pre1133.i = add nsw i32 %add388.i, -1, !dbg !1052
  br label %cleanup580.i

cleanup580.i:                                     ; preds = %if.else568.i, %if.then558.i
  %sub576.pre-phi.i = phi i32 [ %sub559.i, %if.then558.i ], [ %.pre1133.i, %if.else568.i ], !dbg !1052
  %fpss.2959.i = phi ptr [ %fpss.2.i, %if.then558.i ], [ %fpss.2960.i, %if.else568.i ]
  %idxprom577.i = sext i32 %sub576.pre-phi.i to i64, !dbg !1053
  %arrayidx578.i = getelementptr inbounds double, ptr %call396.i, i64 %idxprom577.i, !dbg !1053
  %121 = load double, ptr %arrayidx578.i, align 8, !dbg !1053, !tbaa !689
  %last_timecode579.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 11, !dbg !1054
  store double %121, ptr %last_timecode579.i, align 8, !dbg !1055, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %call396.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.2959.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  br label %if.end583.i

if.end583.i:                                      ; preds = %cleanup580.i, %cleanup342.i
  %fpss.4.i = phi ptr [ %fpss.0.i, %cleanup342.i ], [ %fpss.2959.i, %cleanup580.i ], !dbg !1056
  %timecodes.2.i = phi ptr [ %call121.i, %cleanup342.i ], [ %call396.i, %cleanup580.i ], !dbg !532
  call void @llvm.dbg.value(metadata ptr %timecodes.2.i, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr %fpss.4.i, metadata !498, metadata !DIExpression()) #15, !dbg !532
  %122 = load i32, ptr %auto_timebase_den127, align 8, !dbg !1057, !tbaa !420
  %tobool585.not.i = icmp eq i32 %122, 0, !dbg !1058
  br i1 %tobool585.not.i, label %lor.lhs.false586.i, label %if.then589.i, !dbg !1059

lor.lhs.false586.i:                               ; preds = %if.end583.i
  %123 = load i32, ptr %auto_timebase_num117, align 4, !dbg !1060, !tbaa !417
  %tobool588.not.i = icmp eq i32 %123, 0, !dbg !1061
  br i1 %tobool588.not.i, label %if.else601.i, label %if.then589.i, !dbg !1062

if.then589.i:                                     ; preds = %lor.lhs.false586.i, %if.end583.i
  %timebase_num591.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 5, !dbg !1063
  %124 = load i64, ptr %timebase_num591.i, align 8, !dbg !1063, !tbaa !432
  %timebase_den592.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !1064
  %125 = load i64, ptr %timebase_den592.i, align 8, !dbg !1064, !tbaa !439
  call void @llvm.dbg.value(metadata i64 %124, metadata !996, metadata !DIExpression()) #15, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %125, metadata !991, metadata !DIExpression()) #15, !dbg !1065
  br label %while.body.i.i, !dbg !1067

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then589.i
  %a.addr.0.i.i = phi i64 [ %124, %if.then589.i ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %125, %if.then589.i ], [ %rem.i.i, %while.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i.i, metadata !991, metadata !DIExpression()) #15, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i.i, metadata !996, metadata !DIExpression()) #15, !dbg !1065
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %rem.i.i, metadata !997, metadata !DIExpression()) #15, !dbg !1069
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !1070
  call void @llvm.dbg.value(metadata i64 undef, metadata !991, metadata !DIExpression()) #15, !dbg !1065
  call void @llvm.dbg.value(metadata i64 undef, metadata !996, metadata !DIExpression()) #15, !dbg !1065
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i.i, metadata !528, metadata !DIExpression()) #15, !dbg !1071
  %div595.i = udiv i64 %124, %b.addr.0.i.i, !dbg !1072
  store i64 %div595.i, ptr %timebase_num591.i, align 8, !dbg !1072, !tbaa !432
  %div597.i = udiv i64 %125, %b.addr.0.i.i, !dbg !1073
  store i64 %div597.i, ptr %timebase_den592.i, align 8, !dbg !1073, !tbaa !439
  %126 = load ptr, ptr @stderr, align 8, !dbg !1074, !tbaa !381
  %call600.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.20, i64 noundef %div595.i, i64 noundef %div597.i) #16, !dbg !1075
  br label %if.end611.i, !dbg !1076

if.else601.i:                                     ; preds = %lor.lhs.false586.i
  %timebase_den602.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !1077
  %127 = load i64, ptr %timebase_den602.i, align 8, !dbg !1077, !tbaa !439
  %128 = add i64 %127, -4294967296, !dbg !1079
  %129 = icmp ult i64 %128, -4294967295, !dbg !1079
  br i1 %129, label %if.then608.i, label %if.end611.i, !dbg !1079

if.then608.i:                                     ; preds = %if.else601.i
  %130 = load ptr, ptr @stderr, align 8, !dbg !1080, !tbaa !381
  %131 = call i64 @fwrite(ptr nonnull @.str.21, i64 116, i64 1, ptr %130) #16, !dbg !1082
  br label %if.then671.i, !dbg !1083

if.end611.i:                                      ; preds = %if.else601.i, %gcd.exit.i
  %stored_pts_num612.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 8, !dbg !1084
  %132 = load i32, ptr %stored_pts_num612.i, align 4, !dbg !1084, !tbaa !596
  %conv613.i = sext i32 %132 to i64, !dbg !1085
  %mul614.i = shl nsw i64 %conv613.i, 3, !dbg !1086
  %call615.i = call noalias ptr @malloc(i64 noundef %mul614.i) #13, !dbg !1087
  %pts.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 9, !dbg !1088
  store ptr %call615.i, ptr %pts.i, align 8, !dbg !1089, !tbaa !1090
  %tobool617.not.i = icmp eq ptr %call615.i, null, !dbg !1091
  br i1 %tobool617.not.i, label %if.then671.i, label %if.end619.i, !dbg !1093

if.end619.i:                                      ; preds = %if.end611.i
  %133 = load i32, ptr %seek5, align 8, !dbg !1094, !tbaa !409
  %idxprom621.i = sext i32 %133 to i64, !dbg !1095
  %arrayidx622.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %idxprom621.i, !dbg !1095
  %134 = load double, ptr %arrayidx622.i, align 8, !dbg !1095, !tbaa !689
  %timebase_den623.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 6, !dbg !1096
  %135 = load i64, ptr %timebase_den623.i, align 8, !dbg !1096, !tbaa !439
  %conv624.i = uitofp i64 %135 to double, !dbg !1097
  %timebase_num625.i = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 5, !dbg !1098
  %136 = load i64, ptr %timebase_num625.i, align 8, !dbg !1098, !tbaa !432
  %conv626.i = uitofp i64 %136 to double, !dbg !1099
  %div627.i = fdiv double %conv624.i, %conv626.i, !dbg !1100
  %137 = call double @llvm.fmuladd.f64(double %134, double %div627.i, double 5.000000e-01) #15, !dbg !1101
  %conv629.i = fptosi double %137 to i64, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %conv629.i, metadata !495, metadata !DIExpression()) #15, !dbg !532
  store i64 0, ptr %call615.i, align 8, !dbg !1103, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %cmp6341081.i = icmp sgt i32 %132, 1, !dbg !1105
  br i1 %cmp6341081.i, label %for.body636.lr.ph.i, label %if.end58, !dbg !1108

for.body636.lr.ph.i:                              ; preds = %if.end619.i
  %wide.trip.count1119.i = zext i32 %132 to i64, !dbg !1105
  br label %for.body636.i, !dbg !1108

for.body636.i:                                    ; preds = %for.inc667.i, %for.body636.lr.ph.i
  %138 = phi i64 [ 0, %for.body636.lr.ph.i ], [ %sub654.i, %for.inc667.i ], !dbg !1109
  %indvars.iv1114.i = phi i64 [ 1, %for.body636.lr.ph.i ], [ %indvars.iv.next1115.i, %for.inc667.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1114.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %139 = add nsw i64 %indvars.iv1114.i, %idxprom621.i, !dbg !1112
  %arrayidx640.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %139, !dbg !1113
  %140 = load double, ptr %arrayidx640.i, align 8, !dbg !1113, !tbaa !689
  %141 = call double @llvm.fmuladd.f64(double %140, double %div627.i, double 5.000000e-01) #15, !dbg !1114
  %conv647.i = fptosi double %141 to i64, !dbg !1115
  %arrayidx653.i = getelementptr inbounds i64, ptr %call615.i, i64 %indvars.iv1114.i, !dbg !1116
  %sub654.i = sub nsw i64 %conv647.i, %conv629.i, !dbg !1117
  store i64 %sub654.i, ptr %arrayidx653.i, align 8, !dbg !1117, !tbaa !1104
  %cmp662.not.i = icmp sgt i64 %sub654.i, %138, !dbg !1118
  br i1 %cmp662.not.i, label %for.inc667.i, label %fail.thread.i, !dbg !1119

fail.thread.i:                                    ; preds = %for.body636.i
  %142 = trunc i64 %indvars.iv1114.i to i32, !dbg !1120
  %143 = load ptr, ptr @stderr, align 8, !dbg !1120, !tbaa !381
  %call665.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.22, i32 noundef %142) #16, !dbg !1122
  call void @llvm.dbg.value(metadata ptr undef, metadata !496, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.value(metadata ptr undef, metadata !498, metadata !DIExpression()) #15, !dbg !532
  call void @llvm.dbg.label(metadata !531) #15, !dbg !1123
  br label %if.then671.i, !dbg !1124

for.inc667.i:                                     ; preds = %for.body636.i
  %indvars.iv.next1115.i = add nuw nsw i64 %indvars.iv1114.i, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1115.i, metadata !492, metadata !DIExpression()) #15, !dbg !532
  %exitcond1120.not.i = icmp eq i64 %indvars.iv.next1115.i, %wide.trip.count1119.i, !dbg !1105
  br i1 %exitcond1120.not.i, label %if.end58, label %for.body636.i, !dbg !1108, !llvm.loop !1126

if.then671.thread.i:                              ; preds = %if.then461.i, %if.then449.i, %if.then407.i
  call void @free(ptr noundef nonnull %call396.i) #15, !dbg !1128
  br label %if.then52, !dbg !1130

if.then671.i:                                     ; preds = %fail.thread.i, %if.end611.i, %if.then608.i, %if.then546.i, %cleanup342.thread952.i
  %timecodes.3974.i = phi ptr [ %timecodes.2.i, %fail.thread.i ], [ %timecodes.2.i, %if.end611.i ], [ %timecodes.2.i, %if.then608.i ], [ %call121.i, %cleanup342.thread952.i ], [ %call396.i, %if.then546.i ]
  %fpss.5972.i = phi ptr [ %fpss.4.i, %fail.thread.i ], [ %fpss.4.i, %if.end611.i ], [ %fpss.4.i, %if.then608.i ], [ %fpss.1.ph.i, %cleanup342.thread952.i ], [ %call465.i, %if.then546.i ]
  call void @free(ptr noundef nonnull %timecodes.3974.i) #15, !dbg !1128
  %tobool673.not.i = icmp eq ptr %fpss.5972.i, null, !dbg !1131
  br i1 %tobool673.not.i, label %if.then52, label %if.then674.i, !dbg !1130

if.then674.i:                                     ; preds = %if.then671.i
  call void @free(ptr noundef nonnull %fpss.5972.i) #15, !dbg !1133
  br label %if.then52, !dbg !1133

if.then52:                                        ; preds = %if.then.i, %if.then674.i, %if.then671.i, %cleanup342.thread.i, %if.then390.i, %if.end392.i, %if.then671.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #15, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #15, !dbg !1134
  %pts = getelementptr inbounds %struct.timecode_hnd_t, ptr %call, i64 0, i32 9, !dbg !1135
  %144 = load ptr, ptr %pts, align 8, !dbg !1135, !tbaa !1090
  %tobool53.not = icmp eq ptr %144, null, !dbg !1138
  br i1 %tobool53.not, label %if.end56, label %if.then54, !dbg !1139

if.then54:                                        ; preds = %if.then52
  call void @free(ptr noundef nonnull %144) #15, !dbg !1140
  br label %if.end56, !dbg !1140

if.end56:                                         ; preds = %if.then54, %if.then52
  %call57 = call i32 @fclose(ptr noundef nonnull %call38), !dbg !1141
  br label %cleanup, !dbg !1142

if.end58:                                         ; preds = %for.inc667.i, %if.end619.i
  call void @free(ptr noundef %timecodes.2.i) #15, !dbg !1143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #15, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #15, !dbg !1134
  %call59 = call i32 @fclose(ptr noundef nonnull %call38), !dbg !1144
  %145 = load i64, ptr %timebase_num625.i, align 8, !dbg !1145, !tbaa !432
  %conv61 = trunc i64 %145 to i32, !dbg !1146
  %timebase_num62 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 8, !dbg !1147
  store i32 %conv61, ptr %timebase_num62, align 4, !dbg !1148, !tbaa !1149
  %146 = load i64, ptr %timebase_den623.i, align 8, !dbg !1150, !tbaa !439
  %conv64 = trunc i64 %146 to i32, !dbg !1151
  %timebase_den65 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 9, !dbg !1152
  store i32 %conv64, ptr %timebase_den65, align 4, !dbg !1153, !tbaa !1154
  %vfr = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 10, !dbg !1155
  store i32 1, ptr %vfr, align 4, !dbg !1156, !tbaa !1157
  br label %cleanup, !dbg !1158

cleanup:                                          ; preds = %if.end58, %if.end56, %if.then40, %if.then19, %if.then
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.end56 ], [ 0, %if.end58 ], [ -1, %if.then40 ], [ -1, %if.then ], !dbg !374
  ret i32 %retval.0, !dbg !1159
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !1160 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1162, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1163, metadata !DIExpression()), !dbg !1164
  %frame_total = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 2, !dbg !1165
  %0 = load i32, ptr %frame_total, align 8, !dbg !1165, !tbaa !403
  ret i32 %0, !dbg !1166
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 !dbg !1167 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !1169, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1170, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %i_frame, metadata !1171, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1172, metadata !DIExpression()), !dbg !1174
  %read_frame = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 3, !dbg !1175
  %0 = load ptr, ptr %read_frame, align 8, !dbg !1175, !tbaa !1176
  %p_handle = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 1, !dbg !1177
  %1 = load ptr, ptr %p_handle, align 8, !dbg !1177, !tbaa !392
  %call = tail call i32 %0(ptr noundef %p_pic, ptr noundef %1, i32 noundef %i_frame) #15, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %call, metadata !1173, metadata !DIExpression()), !dbg !1174
  %seek = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 7, !dbg !1179
  %2 = load i32, ptr %seek, align 8, !dbg !1179, !tbaa !409
  %sub = sub nsw i32 %i_frame, %2, !dbg !1181
  %stored_pts_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 8, !dbg !1182
  %3 = load i32, ptr %stored_pts_num, align 4, !dbg !1182, !tbaa !596
  %cmp = icmp slt i32 %sub, %3, !dbg !1183
  %pts = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 9, !dbg !1184
  %4 = load ptr, ptr %pts, align 8, !dbg !1184, !tbaa !1090
  br i1 %cmp, label %if.then, label %if.else, !dbg !1185

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %sub to i64, !dbg !1186
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1186
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1186, !tbaa !1104
  br label %if.end14, !dbg !1188

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %4, null, !dbg !1189
  br i1 %tobool.not, label %if.end, label %if.then4, !dbg !1192

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr @stderr, align 8, !dbg !1193, !tbaa !381
  %assume_fps = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 10, !dbg !1195
  %7 = load double, ptr %assume_fps, align 8, !dbg !1195, !tbaa !558
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %i_frame, double noundef %7) #14, !dbg !1196
  %8 = load ptr, ptr %pts, align 8, !dbg !1197, !tbaa !1090
  tail call void @free(ptr noundef %8) #15, !dbg !1198
  store ptr null, ptr %pts, align 8, !dbg !1199, !tbaa !1090
  br label %if.end, !dbg !1200

if.end:                                           ; preds = %if.then4, %if.else
  %assume_fps8 = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 10, !dbg !1201
  %9 = load double, ptr %assume_fps8, align 8, !dbg !1201, !tbaa !558
  %div = fdiv double 1.000000e+00, %9, !dbg !1202
  %last_timecode = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 11, !dbg !1203
  %10 = load double, ptr %last_timecode, align 8, !dbg !1204, !tbaa !852
  %add = fadd double %10, %div, !dbg !1204
  store double %add, ptr %last_timecode, align 8, !dbg !1204, !tbaa !852
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 6, !dbg !1205
  %11 = load i64, ptr %timebase_den, align 8, !dbg !1205, !tbaa !439
  %conv = uitofp i64 %11 to double, !dbg !1206
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 5, !dbg !1207
  %12 = load i64, ptr %timebase_num, align 8, !dbg !1207, !tbaa !432
  %conv10 = uitofp i64 %12 to double, !dbg !1208
  %div11 = fdiv double %conv, %conv10, !dbg !1209
  %13 = tail call double @llvm.fmuladd.f64(double %add, double %div11, double 5.000000e-01), !dbg !1210
  %conv12 = fptosi double %13 to i64, !dbg !1211
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %conv12.sink = phi i64 [ %conv12, %if.end ], [ %5, %if.then ]
  %i_pts13 = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 4, !dbg !1184
  store i64 %conv12.sink, ptr %i_pts13, align 8, !dbg !1184, !tbaa !1212
  ret i32 %call, !dbg !1216
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 !dbg !1217 {
entry:
  call void @llvm.dbg.value(metadata ptr %pic, metadata !1219, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1220, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1221, metadata !DIExpression()), !dbg !1222
  %release_frame = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 4, !dbg !1223
  %0 = load ptr, ptr %release_frame, align 8, !dbg !1223, !tbaa !1225
  %tobool.not = icmp eq ptr %0, null, !dbg !1226
  br i1 %tobool.not, label %cleanup, label %if.then, !dbg !1227

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 1, !dbg !1228
  %1 = load ptr, ptr %p_handle, align 8, !dbg !1228, !tbaa !392
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #15, !dbg !1229
  br label %cleanup, !dbg !1230

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], !dbg !1222
  ret i32 %retval.0, !dbg !1231
}

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr nocapture noundef %handle) #0 !dbg !1232 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1234, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %handle, metadata !1235, metadata !DIExpression()), !dbg !1236
  %pts = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 9, !dbg !1237
  %0 = load ptr, ptr %pts, align 8, !dbg !1237, !tbaa !1090
  %tobool.not = icmp eq ptr %0, null, !dbg !1239
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1240

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #15, !dbg !1241
  br label %if.end, !dbg !1241

if.end:                                           ; preds = %if.then, %entry
  %close_file = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 6, !dbg !1242
  %1 = load ptr, ptr %close_file, align 8, !dbg !1242, !tbaa !1243
  %p_handle = getelementptr inbounds %struct.timecode_hnd_t, ptr %handle, i64 0, i32 1, !dbg !1244
  %2 = load ptr, ptr %p_handle, align 8, !dbg !1244, !tbaa !392
  %call = tail call i32 %1(ptr noundef %2) #15, !dbg !1245
  tail call void @free(ptr noundef nonnull %handle) #15, !dbg !1246
  ret i32 0, !dbg !1247
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1248 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1253 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1258 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1261 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @correct_fps(double noundef %fps, ptr nocapture noundef %h) unnamed_addr #10 !dbg !1264 {
entry:
  call void @llvm.dbg.value(metadata double %fps, metadata !1268, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %h, metadata !1269, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i32 1, metadata !1270, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata double %fps, metadata !771, metadata !DIExpression()) #15, !dbg !1276
  call void @llvm.dbg.value(metadata ptr undef, metadata !776, metadata !DIExpression()) #15, !dbg !1276
  %call.i = tail call double @log10(double noundef %fps) #15, !dbg !1278
  %0 = tail call double @llvm.floor.f64(double %call.i) #15, !dbg !1279
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %0) #15, !dbg !1280
  %div.i = fdiv double %fps, %call1.i, !dbg !1281
  call void @llvm.dbg.value(metadata double %div.i, metadata !1274, metadata !DIExpression()), !dbg !1275
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %h, i64 0, i32 5
  %1 = load i64, ptr %timebase_num, align 8, !tbaa !432
  call void @llvm.dbg.value(metadata i32 1, metadata !1270, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %1, metadata !1272, metadata !DIExpression()), !dbg !1275
  %conv151 = uitofp i64 %1 to double, !dbg !1282
  %mul252 = fmul double %div.i, %conv151, !dbg !1284
  %2 = tail call double @llvm.round.f64(double %mul252), !dbg !1285
  call void @llvm.dbg.value(metadata double %call1.i, metadata !1273, metadata !DIExpression()), !dbg !1275
  %mul353 = fmul double %call1.i, %2, !dbg !1286
  %conv454 = fptoui double %mul353 to i64, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %conv454, metadata !1271, metadata !DIExpression()), !dbg !1275
  %cmp55 = icmp ugt i64 %conv454, 4294967295, !dbg !1287
  br i1 %cmp55, label %if.then, label %if.end, !dbg !1289

while.cond:                                       ; preds = %if.end
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1270, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1270, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1275
  %mul = mul i64 %1, %indvars.iv.next, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1272, metadata !DIExpression()), !dbg !1275
  %conv1 = uitofp i64 %mul to double, !dbg !1282
  %mul2 = fmul double %div.i, %conv1, !dbg !1284
  %3 = tail call double @llvm.round.f64(double %mul2), !dbg !1285
  call void @llvm.dbg.value(metadata double %call1.i, metadata !1273, metadata !DIExpression()), !dbg !1275
  %mul3 = fmul double %call1.i, %3, !dbg !1286
  %conv4 = fptoui double %mul3 to i64, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %conv4, metadata !1271, metadata !DIExpression()), !dbg !1275
  %cmp = icmp ugt i64 %conv4, 4294967295, !dbg !1287
  br i1 %cmp, label %if.then, label %if.end, !dbg !1289, !llvm.loop !1292

if.then:                                          ; preds = %while.cond, %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !381
  %5 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 125, i64 1, ptr %4) #14, !dbg !1297
  br label %cleanup, !dbg !1298

if.end:                                           ; preds = %entry, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %conv458 = phi i64 [ %conv4, %while.cond ], [ %conv454, %entry ]
  %conv157 = phi double [ %conv1, %while.cond ], [ %conv151, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1270, metadata !DIExpression()), !dbg !1275
  %conv7 = uitofp i64 %conv458 to double, !dbg !1299
  %div = fdiv double %conv7, %conv157, !dbg !1301
  %div9 = fdiv double %div, %call1.i, !dbg !1302
  %sub = fsub double %div9, %div.i, !dbg !1303
  %6 = tail call double @llvm.fabs.f64(double %sub), !dbg !1304
  %cmp10 = fcmp olt double %6, 5.000000e-06, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1270, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1275
  br i1 %cmp10, label %while.end, label %while.cond, !dbg !1306

while.end:                                        ; preds = %if.end
  %auto_timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %h, i64 0, i32 4, !dbg !1307
  %7 = load i32, ptr %auto_timebase_den, align 8, !dbg !1307, !tbaa !420
  %tobool.not = icmp eq i32 %7, 0, !dbg !1309
  br i1 %tobool.not, label %cleanup, label %if.then14, !dbg !1310

if.then14:                                        ; preds = %while.end
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %h, i64 0, i32 6, !dbg !1311
  %8 = load i64, ptr %timebase_den, align 8, !dbg !1311, !tbaa !439
  %tobool15.not = icmp eq i64 %8, 0, !dbg !1313
  br i1 %tobool15.not, label %cond.false, label %while.body.i.i, !dbg !1313

while.body.i.i:                                   ; preds = %if.then14, %while.body.i.i
  %a.addr.0.i.i = phi i64 [ %b.addr.0.i.i, %while.body.i.i ], [ %8, %if.then14 ]
  %b.addr.0.i.i = phi i64 [ %rem.i.i, %while.body.i.i ], [ %conv458, %if.then14 ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i.i, metadata !991, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i.i, metadata !996, metadata !DIExpression()), !dbg !1314
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %rem.i.i, metadata !997, metadata !DIExpression()), !dbg !1318
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !1319
  call void @llvm.dbg.value(metadata i64 undef, metadata !991, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 undef, metadata !996, metadata !DIExpression()), !dbg !1314
  br i1 %tobool.not.not.i.i, label %lcm.exit, label %while.body.i.i

lcm.exit:                                         ; preds = %while.body.i.i
  %div.i49 = sdiv i64 %8, %b.addr.0.i.i, !dbg !1320
  %mul.i = mul nsw i64 %div.i49, %conv458, !dbg !1321
  br label %cond.end, !dbg !1313

cond.false:                                       ; preds = %if.then14
  %sext = shl nuw i64 %conv458, 32, !dbg !1322
  %conv19 = ashr exact i64 %sext, 32, !dbg !1322
  br label %cond.end, !dbg !1313

cond.end:                                         ; preds = %cond.false, %lcm.exit
  %cond = phi i64 [ %mul.i, %lcm.exit ], [ %conv19, %cond.false ], !dbg !1313
  store i64 %cond, ptr %timebase_den, align 8, !dbg !1323, !tbaa !439
  %cmp22 = icmp ugt i64 %cond, 4294967295, !dbg !1324
  br i1 %cmp22, label %if.then24, label %cleanup, !dbg !1326

if.then24:                                        ; preds = %cond.end
  store i32 0, ptr %auto_timebase_den, align 8, !dbg !1327, !tbaa !420
  br label %cleanup, !dbg !1328

cleanup:                                          ; preds = %while.end, %if.then24, %cond.end, %if.then
  %retval.0 = phi double [ -1.000000e+00, %if.then ], [ %div, %cond.end ], [ %div, %if.then24 ], [ %div, %while.end ], !dbg !1275
  ret double %retval.0, !dbg !1329
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @try_mkv_timebase_den(ptr nocapture noundef readonly %fpss, ptr nocapture noundef %h, i32 noundef %loop_num) unnamed_addr #10 !dbg !1330 {
entry:
  call void @llvm.dbg.value(metadata ptr %fpss, metadata !1334, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata ptr %h, metadata !1335, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !1336, metadata !DIExpression()), !dbg !1344
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, ptr %h, i64 0, i32 5, !dbg !1345
  store i64 0, ptr %timebase_num, align 8, !dbg !1346, !tbaa !432
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, ptr %h, i64 0, i32 6, !dbg !1347
  store i64 1000000000, ptr %timebase_den, align 8, !dbg !1348, !tbaa !439
  call void @llvm.dbg.value(metadata i32 0, metadata !1337, metadata !DIExpression()), !dbg !1349
  %cmp33 = icmp sgt i32 %loop_num, 0, !dbg !1350
  br i1 %cmp33, label %for.body.preheader, label %cleanup17, !dbg !1351

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %loop_num to i64, !dbg !1351
  %wide.trip.count = zext i32 %loop_num to i64, !dbg !1350
  br label %for.body, !dbg !1351

for.cond:                                         ; preds = %cond.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1337, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1337, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1349
  %cmp = icmp ult i64 %indvars.iv.next, %0, !dbg !1350
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1350
  br i1 %exitcond.not, label %cleanup17, label %for.body, !dbg !1351, !llvm.loop !1353

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %cmp35 = phi i1 [ true, %for.body.preheader ], [ %cmp, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1337, metadata !DIExpression()), !dbg !1349
  %arrayidx = getelementptr inbounds double, ptr %fpss, i64 %indvars.iv, !dbg !1355
  %1 = load double, ptr %arrayidx, align 8, !dbg !1355, !tbaa !689
  call void @llvm.dbg.value(metadata double %1, metadata !771, metadata !DIExpression()) #15, !dbg !1356
  call void @llvm.dbg.value(metadata ptr undef, metadata !776, metadata !DIExpression()) #15, !dbg !1356
  %call.i = tail call double @log10(double noundef %1) #15, !dbg !1358
  %2 = tail call double @llvm.floor.f64(double %call.i) #15, !dbg !1359
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %2) #15, !dbg !1360
  %div.i = fdiv double %1, %call1.i, !dbg !1361
  call void @llvm.dbg.value(metadata double %div.i, metadata !1343, metadata !DIExpression()), !dbg !1362
  %div = fdiv double 1.000000e+09, %div.i, !dbg !1363
  %3 = tail call double @llvm.round.f64(double %div), !dbg !1364
  call void @llvm.dbg.value(metadata double %call1.i, metadata !1342, metadata !DIExpression()), !dbg !1362
  %div1 = fdiv double %3, %call1.i, !dbg !1365
  %conv = fptoui double %div1 to i64, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1339, metadata !DIExpression()), !dbg !1362
  %tobool.not = icmp eq i64 %conv, 0, !dbg !1366
  br i1 %tobool.not, label %cond.false, label %land.lhs.true, !dbg !1367

land.lhs.true:                                    ; preds = %for.body
  %4 = load i64, ptr %timebase_num, align 8, !dbg !1368, !tbaa !432
  %tobool3.not = icmp eq i64 %4, 0, !dbg !1369
  br i1 %tobool3.not, label %cond.false, label %while.body.i, !dbg !1366

while.body.i:                                     ; preds = %land.lhs.true, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %4, %land.lhs.true ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %conv, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i, metadata !991, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i, metadata !996, metadata !DIExpression()), !dbg !1370
  %rem.i = srem i64 %a.addr.0.i, %b.addr.0.i, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %rem.i, metadata !997, metadata !DIExpression()), !dbg !1373
  %tobool.not.not.i = icmp eq i64 %rem.i, 0, !dbg !1374
  call void @llvm.dbg.value(metadata i64 undef, metadata !991, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 undef, metadata !996, metadata !DIExpression()), !dbg !1370
  br i1 %tobool.not.not.i, label %cond.end, label %while.body.i

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %sext = shl i64 %conv, 32, !dbg !1375
  %conv7 = ashr exact i64 %sext, 32, !dbg !1375
  br label %cond.end, !dbg !1366

cond.end:                                         ; preds = %while.body.i, %cond.false
  %cond = phi i64 [ %conv7, %cond.false ], [ %b.addr.0.i, %while.body.i ], !dbg !1366
  store i64 %cond, ptr %timebase_num, align 8, !dbg !1376, !tbaa !432
  %5 = add i64 %cond, -4294967296, !dbg !1377
  %6 = icmp ult i64 %5, -4294967295, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1337, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1349
  br i1 %6, label %if.then, label %for.cond, !dbg !1377

if.then:                                          ; preds = %cond.end
  %7 = load ptr, ptr @stderr, align 8, !dbg !1379, !tbaa !381
  %8 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %7) #14, !dbg !1381
  br label %cleanup17

cleanup17:                                        ; preds = %for.cond, %entry, %if.then
  %cmp32 = phi i1 [ %cmp35, %if.then ], [ false, %entry ], [ %cmp, %for.cond ]
  %spec.select = sext i1 %cmp32 to i32
  ret i32 %spec.select, !dbg !1382
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "timecode_input", scope: !2, file: !14, line: 499, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/timecode.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "38d56a1630a2a8343c423fb69854a920")
!4 = !{!5, !6, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !11, line: 44, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!12 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!13 = !{!0}
!14 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/timecode.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38d56a1630a2a8343c423fb69854a920")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !16, line: 63, baseType: !17)
!16 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/input.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 54, size: 448, elements: !18)
!18 = !{!19, !56, !60, !269, !273, !277, !281}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !17, file: !16, line: 56, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!6, !23, !25, !28, !48}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !27, line: 30, baseType: !5)
!27 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !16, line: 52, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 38, size: 384, elements: !31)
!31 = !{!32, !33, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !30, file: !16, line: 40, baseType: !6, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !30, file: !16, line: 41, baseType: !34, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 26, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !30, file: !16, line: 42, baseType: !34, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !30, file: !16, line: 43, baseType: !6, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !30, file: !16, line: 44, baseType: !6, size: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !30, file: !16, line: 45, baseType: !34, size: 32, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !30, file: !16, line: 46, baseType: !34, size: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !30, file: !16, line: 47, baseType: !6, size: 32, offset: 224)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !30, file: !16, line: 48, baseType: !34, size: 32, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !30, file: !16, line: 49, baseType: !34, size: 32, offset: 288)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !30, file: !16, line: 50, baseType: !6, size: 32, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !30, file: !16, line: 51, baseType: !6, size: 32, offset: 352)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !16, line: 35, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 29, size: 256, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !50, file: !16, line: 31, baseType: !23, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !50, file: !16, line: 32, baseType: !23, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !50, file: !16, line: 33, baseType: !23, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !50, file: !16, line: 34, baseType: !6, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !17, file: !16, line: 57, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!6, !26}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !17, file: !16, line: 58, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!6, !64, !6, !6, !6}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !66, line: 549, baseType: !67)
!66 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 513, size: 1088, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !247, !260, !268}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !67, file: !66, line: 521, baseType: !6, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !67, file: !66, line: 523, baseType: !6, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !67, file: !66, line: 526, baseType: !6, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !67, file: !66, line: 529, baseType: !6, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !67, file: !66, line: 531, baseType: !8, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !67, file: !66, line: 534, baseType: !8, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !67, file: !66, line: 541, baseType: !76, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !66, line: 376, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !66, line: 176, size: 5632, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !128, !129, !130, !131, !135, !136, !150, !151, !152, !153, !154, !185, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !78, file: !66, line: 179, baseType: !37, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !78, file: !66, line: 180, baseType: !6, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !78, file: !66, line: 181, baseType: !6, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !78, file: !66, line: 182, baseType: !6, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !78, file: !66, line: 183, baseType: !6, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !78, file: !66, line: 186, baseType: !6, size: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !78, file: !66, line: 187, baseType: !6, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !78, file: !66, line: 188, baseType: !6, size: 32, offset: 224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !78, file: !66, line: 189, baseType: !6, size: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !78, file: !66, line: 190, baseType: !6, size: 32, offset: 288)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !78, file: !66, line: 198, baseType: !6, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !78, file: !66, line: 215, baseType: !92, size: 288, offset: 352)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !78, file: !66, line: 200, size: 288, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !92, file: !66, line: 203, baseType: !6, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !92, file: !66, line: 204, baseType: !6, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !92, file: !66, line: 206, baseType: !6, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !92, file: !66, line: 209, baseType: !6, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !92, file: !66, line: 210, baseType: !6, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !92, file: !66, line: 211, baseType: !6, size: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !92, file: !66, line: 212, baseType: !6, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !92, file: !66, line: 213, baseType: !6, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !92, file: !66, line: 214, baseType: !6, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !78, file: !66, line: 218, baseType: !6, size: 32, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !78, file: !66, line: 219, baseType: !6, size: 32, offset: 672)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !78, file: !66, line: 220, baseType: !6, size: 32, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !78, file: !66, line: 221, baseType: !6, size: 32, offset: 736)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !78, file: !66, line: 222, baseType: !6, size: 32, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !78, file: !66, line: 224, baseType: !6, size: 32, offset: 800)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !78, file: !66, line: 225, baseType: !6, size: 32, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !78, file: !66, line: 226, baseType: !6, size: 32, offset: 864)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !78, file: !66, line: 227, baseType: !6, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !78, file: !66, line: 229, baseType: !6, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !78, file: !66, line: 230, baseType: !6, size: 32, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !78, file: !66, line: 231, baseType: !6, size: 32, offset: 992)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !78, file: !66, line: 233, baseType: !6, size: 32, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !78, file: !66, line: 234, baseType: !6, size: 32, offset: 1056)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !78, file: !66, line: 236, baseType: !6, size: 32, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !78, file: !66, line: 237, baseType: !6, size: 32, offset: 1120)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !78, file: !66, line: 239, baseType: !6, size: 32, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !78, file: !66, line: 240, baseType: !23, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !78, file: !66, line: 241, baseType: !122, size: 128, offset: 1280)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 38, baseType: !125)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !78, file: !66, line: 242, baseType: !122, size: 128, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !78, file: !66, line: 243, baseType: !122, size: 128, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !78, file: !66, line: 244, baseType: !122, size: 128, offset: 1664)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !78, file: !66, line: 245, baseType: !132, size: 512, offset: 1792)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !78, file: !66, line: 246, baseType: !132, size: 512, offset: 2304)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !78, file: !66, line: 249, baseType: !137, size: 64, offset: 2816)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !5, !6, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !144)
!144 = !{!145, !147, !148, !149}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !143, file: !146, line: 499, baseType: !37, size: 32)
!146 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/timecode.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !143, file: !146, line: 499, baseType: !37, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !143, file: !146, line: 499, baseType: !5, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !143, file: !146, line: 499, baseType: !5, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !78, file: !66, line: 250, baseType: !5, size: 64, offset: 2880)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !78, file: !66, line: 251, baseType: !6, size: 32, offset: 2944)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !78, file: !66, line: 252, baseType: !6, size: 32, offset: 2976)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !78, file: !66, line: 253, baseType: !23, size: 64, offset: 3008)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !78, file: !66, line: 287, baseType: !155, size: 800, offset: 3072)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !78, file: !66, line: 256, size: 800, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !177, !178, !179, !183, !184}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !155, file: !66, line: 258, baseType: !37, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !155, file: !66, line: 259, baseType: !37, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !155, file: !66, line: 261, baseType: !6, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !155, file: !66, line: 262, baseType: !6, size: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !155, file: !66, line: 263, baseType: !6, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !155, file: !66, line: 264, baseType: !6, size: 32, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !155, file: !66, line: 265, baseType: !6, size: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !155, file: !66, line: 267, baseType: !6, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !155, file: !66, line: 268, baseType: !6, size: 32, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !155, file: !66, line: 269, baseType: !6, size: 32, offset: 288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !155, file: !66, line: 270, baseType: !6, size: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !155, file: !66, line: 271, baseType: !6, size: 32, offset: 352)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !155, file: !66, line: 272, baseType: !6, size: 32, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !155, file: !66, line: 273, baseType: !6, size: 32, offset: 416)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !155, file: !66, line: 274, baseType: !6, size: 32, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !155, file: !66, line: 275, baseType: !6, size: 32, offset: 480)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !155, file: !66, line: 276, baseType: !6, size: 32, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !155, file: !66, line: 277, baseType: !6, size: 32, offset: 544)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !155, file: !66, line: 278, baseType: !176, size: 32, offset: 576)
!176 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !155, file: !66, line: 279, baseType: !176, size: 32, offset: 608)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !155, file: !66, line: 280, baseType: !6, size: 32, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !155, file: !66, line: 283, baseType: !180, size: 64, offset: 672)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 2)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !155, file: !66, line: 285, baseType: !6, size: 32, offset: 736)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !155, file: !66, line: 286, baseType: !6, size: 32, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !78, file: !66, line: 327, baseType: !186, size: 1152, offset: 3904)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !78, file: !66, line: 290, size: 1152, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !225, !226}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !186, file: !66, line: 292, baseType: !6, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !186, file: !66, line: 294, baseType: !6, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !186, file: !66, line: 295, baseType: !6, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !186, file: !66, line: 296, baseType: !6, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !186, file: !66, line: 297, baseType: !6, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !186, file: !66, line: 299, baseType: !6, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !186, file: !66, line: 300, baseType: !176, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !186, file: !66, line: 301, baseType: !176, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !186, file: !66, line: 302, baseType: !176, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !186, file: !66, line: 303, baseType: !6, size: 32, offset: 288)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !186, file: !66, line: 304, baseType: !6, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !186, file: !66, line: 305, baseType: !176, size: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !186, file: !66, line: 306, baseType: !176, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !186, file: !66, line: 307, baseType: !176, size: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !186, file: !66, line: 309, baseType: !6, size: 32, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !186, file: !66, line: 310, baseType: !176, size: 32, offset: 480)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !186, file: !66, line: 311, baseType: !6, size: 32, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !186, file: !66, line: 312, baseType: !6, size: 32, offset: 544)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !186, file: !66, line: 315, baseType: !6, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !186, file: !66, line: 316, baseType: !23, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !186, file: !66, line: 317, baseType: !6, size: 32, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !186, file: !66, line: 318, baseType: !23, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !186, file: !66, line: 321, baseType: !176, size: 32, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !186, file: !66, line: 322, baseType: !176, size: 32, offset: 864)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !186, file: !66, line: 323, baseType: !176, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !186, file: !66, line: 324, baseType: !214, size: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !66, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 167, size: 256, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !216, file: !66, line: 169, baseType: !6, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !216, file: !66, line: 169, baseType: !6, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !216, file: !66, line: 170, baseType: !6, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !216, file: !66, line: 171, baseType: !6, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !216, file: !66, line: 172, baseType: !176, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !216, file: !66, line: 173, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !186, file: !66, line: 325, baseType: !6, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !186, file: !66, line: 326, baseType: !23, size: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !78, file: !66, line: 330, baseType: !6, size: 32, offset: 5056)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !78, file: !66, line: 331, baseType: !6, size: 32, offset: 5088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !78, file: !66, line: 332, baseType: !6, size: 32, offset: 5120)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !78, file: !66, line: 334, baseType: !6, size: 32, offset: 5152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !78, file: !66, line: 335, baseType: !6, size: 32, offset: 5184)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !78, file: !66, line: 336, baseType: !34, size: 32, offset: 5216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !78, file: !66, line: 337, baseType: !34, size: 32, offset: 5248)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !78, file: !66, line: 338, baseType: !34, size: 32, offset: 5280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !78, file: !66, line: 339, baseType: !34, size: 32, offset: 5312)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !78, file: !66, line: 340, baseType: !6, size: 32, offset: 5344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !78, file: !66, line: 344, baseType: !6, size: 32, offset: 5376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !78, file: !66, line: 356, baseType: !6, size: 32, offset: 5408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !78, file: !66, line: 364, baseType: !6, size: 32, offset: 5440)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !78, file: !66, line: 367, baseType: !6, size: 32, offset: 5472)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !78, file: !66, line: 368, baseType: !6, size: 32, offset: 5504)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !78, file: !66, line: 369, baseType: !6, size: 32, offset: 5536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !78, file: !66, line: 375, baseType: !244, size: 64, offset: 5568)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !5}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !67, file: !66, line: 543, baseType: !248, size: 448, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !66, line: 511, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 505, size: 448, elements: !250)
!250 = !{!251, !252, !253, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !249, file: !66, line: 507, baseType: !6, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !249, file: !66, line: 508, baseType: !6, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !249, file: !66, line: 509, baseType: !254, size: 128, offset: 64)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 4)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !249, file: !66, line: 510, baseType: !258, size: 256, offset: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !255)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !67, file: !66, line: 545, baseType: !261, size: 256, offset: 768)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !66, line: 503, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 496, size: 256, elements: !263)
!263 = !{!264, !265, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !262, file: !66, line: 498, baseType: !7, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !262, file: !66, line: 499, baseType: !7, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !262, file: !66, line: 500, baseType: !7, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !262, file: !66, line: 502, baseType: !7, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !67, file: !66, line: 548, baseType: !5, size: 64, offset: 1024)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !17, file: !16, line: 59, baseType: !270, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!6, !64, !26, !6}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !17, file: !16, line: 60, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!6, !64, !26}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !17, file: !16, line: 61, baseType: !278, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !64}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !17, file: !16, line: 62, baseType: !57, size: 64, offset: 384)
!282 = !{i32 7, !"Dwarf Version", i32 5}
!283 = !{i32 2, !"Debug Info Version", i32 3}
!284 = !{i32 1, !"wchar_size", i32 4}
!285 = !{i32 7, !"PIC Level", i32 2}
!286 = !{i32 7, !"PIE Level", i32 2}
!287 = !{i32 7, !"uwtable", i32 2}
!288 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!289 = distinct !DISubprogram(name: "open_file", scope: !14, file: !14, line: 384, type: !21, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !354}
!291 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !289, file: !14, line: 384, type: !23)
!292 = !DILocalVariable(name: "p_handle", arg: 2, scope: !289, file: !14, line: 384, type: !25)
!293 = !DILocalVariable(name: "info", arg: 3, scope: !289, file: !14, line: 384, type: !28)
!294 = !DILocalVariable(name: "opt", arg: 4, scope: !289, file: !14, line: 384, type: !48)
!295 = !DILocalVariable(name: "ret", scope: !289, file: !14, line: 386, type: !6)
!296 = !DILocalVariable(name: "tcfile_in", scope: !289, file: !14, line: 387, type: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !299, line: 7, baseType: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !301, line: 49, size: 1728, elements: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !318, !320, !321, !322, !324, !326, !328, !332, !335, !337, !340, !343, !344, !345, !349, !350}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !300, file: !301, line: 51, baseType: !6, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !300, file: !301, line: 54, baseType: !23, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !300, file: !301, line: 55, baseType: !23, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !300, file: !301, line: 56, baseType: !23, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !300, file: !301, line: 57, baseType: !23, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !300, file: !301, line: 58, baseType: !23, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !300, file: !301, line: 59, baseType: !23, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !300, file: !301, line: 60, baseType: !23, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !300, file: !301, line: 61, baseType: !23, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !300, file: !301, line: 64, baseType: !23, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !300, file: !301, line: 65, baseType: !23, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !300, file: !301, line: 66, baseType: !23, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !300, file: !301, line: 68, baseType: !316, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !301, line: 36, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !300, file: !301, line: 70, baseType: !319, size: 64, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !300, file: !301, line: 72, baseType: !6, size: 32, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !300, file: !301, line: 73, baseType: !6, size: 32, offset: 928)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !300, file: !301, line: 74, baseType: !323, size: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !11, line: 152, baseType: !12)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !300, file: !301, line: 77, baseType: !325, size: 16, offset: 1024)
!325 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !300, file: !301, line: 78, baseType: !327, size: 8, offset: 1040)
!327 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !300, file: !301, line: 79, baseType: !329, size: 8, offset: 1048)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 1)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !300, file: !301, line: 81, baseType: !333, size: 64, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !301, line: 43, baseType: null)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !300, file: !301, line: 89, baseType: !336, size: 64, offset: 1152)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !11, line: 153, baseType: !12)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !300, file: !301, line: 91, baseType: !338, size: 64, offset: 1216)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !301, line: 37, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !300, file: !301, line: 92, baseType: !341, size: 64, offset: 1280)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !301, line: 38, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !300, file: !301, line: 93, baseType: !319, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !300, file: !301, line: 94, baseType: !5, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !300, file: !301, line: 95, baseType: !346, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !347, line: 46, baseType: !348)
!347 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!348 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !300, file: !301, line: 96, baseType: !6, size: 32, offset: 1536)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !300, file: !301, line: 98, baseType: !351, size: 160, offset: 1568)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 20)
!354 = !DILocalVariable(name: "h", scope: !289, file: !14, line: 388, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "timecode_hnd_t", file: !14, line: 42, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 28, size: 1024, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !367, !368, !369, !370, !372, !373}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !357, file: !14, line: 30, baseType: !15, size: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "p_handle", scope: !357, file: !14, line: 31, baseType: !26, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "frame_total", scope: !357, file: !14, line: 32, baseType: !6, size: 32, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "auto_timebase_num", scope: !357, file: !14, line: 33, baseType: !6, size: 32, offset: 544)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "auto_timebase_den", scope: !357, file: !14, line: 34, baseType: !6, size: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !357, file: !14, line: 35, baseType: !365, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 27, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 45, baseType: !348)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !357, file: !14, line: 36, baseType: !365, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !357, file: !14, line: 37, baseType: !6, size: 32, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "stored_pts_num", scope: !357, file: !14, line: 38, baseType: !6, size: 32, offset: 800)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pts", scope: !357, file: !14, line: 39, baseType: !371, size: 64, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "assume_fps", scope: !357, file: !14, line: 40, baseType: !7, size: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_timecode", scope: !357, file: !14, line: 41, baseType: !7, size: 64, offset: 960)
!374 = !DILocation(line: 0, scope: !289)
!375 = !DILocation(line: 388, column: 25, scope: !289)
!376 = !DILocation(line: 389, column: 10, scope: !377)
!377 = distinct !DILexicalBlock(scope: !289, file: !14, line: 389, column: 9)
!378 = !DILocation(line: 389, column: 9, scope: !289)
!379 = !DILocation(line: 391, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !14, line: 390, column: 5)
!381 = !{!382, !382, i64 0}
!382 = !{!"any pointer", !383, i64 0}
!383 = !{!"omnipotent char", !384, i64 0}
!384 = !{!"Simple C/C++ TBAA"}
!385 = !DILocation(line: 391, column: 9, scope: !380)
!386 = !DILocation(line: 392, column: 9, scope: !380)
!387 = !DILocation(line: 394, column: 16, scope: !289)
!388 = !{i64 0, i64 8, !381, i64 8, i64 8, !381, i64 16, i64 8, !381, i64 24, i64 8, !381, i64 32, i64 8, !381, i64 40, i64 8, !381, i64 48, i64 8, !381}
!389 = !DILocation(line: 395, column: 19, scope: !289)
!390 = !DILocation(line: 395, column: 8, scope: !289)
!391 = !DILocation(line: 395, column: 17, scope: !289)
!392 = !{!393, !382, i64 56}
!393 = !{!"", !394, i64 0, !382, i64 56, !395, i64 64, !395, i64 68, !395, i64 72, !396, i64 80, !396, i64 88, !395, i64 96, !395, i64 100, !382, i64 104, !397, i64 112, !397, i64 120}
!394 = !{!"", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !382, i64 32, !382, i64 40, !382, i64 48}
!395 = !{!"int", !383, i64 0}
!396 = !{!"long", !383, i64 0}
!397 = !{!"double", !383, i64 0}
!398 = !DILocation(line: 396, column: 28, scope: !289)
!399 = !{!394, !382, i64 8}
!400 = !DILocation(line: 396, column: 22, scope: !289)
!401 = !DILocation(line: 396, column: 8, scope: !289)
!402 = !DILocation(line: 396, column: 20, scope: !289)
!403 = !{!393, !395, i64 64}
!404 = !DILocation(line: 397, column: 20, scope: !289)
!405 = !{!406, !395, i64 24}
!406 = !{!"", !382, i64 0, !382, i64 8, !382, i64 16, !395, i64 24}
!407 = !DILocation(line: 397, column: 8, scope: !289)
!408 = !DILocation(line: 397, column: 13, scope: !289)
!409 = !{!393, !395, i64 96}
!410 = !DILocation(line: 398, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !289, file: !14, line: 398, column: 9)
!412 = !{!406, !382, i64 16}
!413 = !DILocation(line: 398, column: 9, scope: !411)
!414 = !DILocation(line: 398, column: 9, scope: !289)
!415 = !DILocation(line: 409, column: 8, scope: !289)
!416 = !DILocation(line: 409, column: 26, scope: !289)
!417 = !{!393, !395, i64 68}
!418 = !DILocation(line: 410, column: 8, scope: !289)
!419 = !DILocation(line: 410, column: 26, scope: !289)
!420 = !{!393, !395, i64 72}
!421 = !DILocation(line: 411, column: 9, scope: !289)
!422 = !DILocation(line: 400, column: 63, scope: !423)
!423 = distinct !DILexicalBlock(scope: !411, file: !14, line: 399, column: 5)
!424 = !DILocation(line: 400, column: 81, scope: !423)
!425 = !DILocation(line: 400, column: 15, scope: !423)
!426 = !DILocation(line: 401, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !14, line: 401, column: 13)
!428 = !DILocation(line: 401, column: 13, scope: !423)
!429 = !DILocation(line: 402, column: 45, scope: !427)
!430 = !DILocation(line: 402, column: 31, scope: !427)
!431 = !DILocation(line: 402, column: 29, scope: !427)
!432 = !{!393, !396, i64 80}
!433 = !DILocation(line: 402, column: 13, scope: !427)
!434 = !DILocation(line: 403, column: 16, scope: !435)
!435 = distinct !DILexicalBlock(scope: !423, file: !14, line: 403, column: 13)
!436 = !DILocation(line: 403, column: 29, scope: !435)
!437 = !DILocation(line: 403, column: 42, scope: !435)
!438 = !DILocation(line: 403, column: 48, scope: !435)
!439 = !{!393, !396, i64 88}
!440 = !DILocation(line: 403, column: 61, scope: !435)
!441 = !DILocation(line: 403, column: 13, scope: !423)
!442 = !DILocation(line: 405, column: 22, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !14, line: 404, column: 9)
!444 = !DILocation(line: 405, column: 13, scope: !443)
!445 = !DILocation(line: 406, column: 13, scope: !443)
!446 = !DILocation(line: 409, column: 28, scope: !289)
!447 = !DILocation(line: 410, column: 32, scope: !289)
!448 = !DILocation(line: 412, column: 33, scope: !449)
!449 = distinct !DILexicalBlock(scope: !289, file: !14, line: 411, column: 9)
!450 = !{!451, !395, i64 8}
!451 = !{!"", !395, i64 0, !395, i64 4, !395, i64 8, !395, i64 12, !395, i64 16, !395, i64 20, !395, i64 24, !395, i64 28, !395, i64 32, !395, i64 36, !395, i64 40, !395, i64 44}
!452 = !DILocation(line: 412, column: 27, scope: !449)
!453 = !DILocation(line: 412, column: 12, scope: !449)
!454 = !DILocation(line: 412, column: 25, scope: !449)
!455 = !DILocation(line: 412, column: 9, scope: !449)
!456 = !DILocation(line: 413, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !289, file: !14, line: 413, column: 9)
!458 = !DILocation(line: 413, column: 9, scope: !289)
!459 = !DILocation(line: 414, column: 12, scope: !457)
!460 = !DILocation(line: 414, column: 25, scope: !457)
!461 = !DILocation(line: 414, column: 9, scope: !457)
!462 = !DILocation(line: 415, column: 45, scope: !289)
!463 = !{!393, !382, i64 16}
!464 = !DILocation(line: 415, column: 34, scope: !289)
!465 = !{!394, !382, i64 16}
!466 = !DILocation(line: 416, column: 45, scope: !289)
!467 = !{!393, !382, i64 40}
!468 = !DILocation(line: 416, column: 34, scope: !289)
!469 = !{!394, !382, i64 40}
!470 = !DILocation(line: 418, column: 15, scope: !289)
!471 = !DILocation(line: 420, column: 17, scope: !289)
!472 = !DILocation(line: 421, column: 10, scope: !473)
!473 = distinct !DILexicalBlock(scope: !289, file: !14, line: 421, column: 9)
!474 = !DILocation(line: 421, column: 9, scope: !289)
!475 = !DILocation(line: 423, column: 18, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !14, line: 422, column: 5)
!477 = !DILocation(line: 423, column: 9, scope: !476)
!478 = !DILocation(line: 424, column: 9, scope: !476)
!479 = !DILocalVariable(name: "tcfile_in", arg: 1, scope: !480, file: !14, line: 104, type: !297)
!480 = distinct !DISubprogram(name: "parse_tcfile", scope: !14, file: !14, line: 104, type: !481, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!6, !297, !355, !28}
!483 = !{!479, !484, !485, !486, !490, !491, !492, !493, !494, !495, !496, !498, !499, !502, !503, !504, !505, !506, !507, !508, !511, !512, !513, !515, !524, !525, !526, !527, !528, !531}
!484 = !DILocalVariable(name: "h", arg: 2, scope: !480, file: !14, line: 104, type: !355)
!485 = !DILocalVariable(name: "info", arg: 3, scope: !480, file: !14, line: 104, type: !28)
!486 = !DILocalVariable(name: "buff", scope: !480, file: !14, line: 106, type: !487)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 256)
!490 = !DILocalVariable(name: "ret", scope: !480, file: !14, line: 107, type: !6)
!491 = !DILocalVariable(name: "tcfv", scope: !480, file: !14, line: 107, type: !6)
!492 = !DILocalVariable(name: "num", scope: !480, file: !14, line: 107, type: !6)
!493 = !DILocalVariable(name: "seq_num", scope: !480, file: !14, line: 107, type: !6)
!494 = !DILocalVariable(name: "timecodes_num", scope: !480, file: !14, line: 107, type: !6)
!495 = !DILocalVariable(name: "pts_seek_offset", scope: !480, file: !14, line: 108, type: !8)
!496 = !DILocalVariable(name: "timecodes", scope: !480, file: !14, line: 109, type: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!498 = !DILocalVariable(name: "fpss", scope: !480, file: !14, line: 110, type: !497)
!499 = !DILocalVariable(name: "file_pos", scope: !500, file: !14, line: 121, type: !365)
!500 = distinct !DILexicalBlock(scope: !501, file: !14, line: 120, column: 5)
!501 = distinct !DILexicalBlock(scope: !480, file: !14, line: 119, column: 9)
!502 = !DILocalVariable(name: "assume_fps", scope: !500, file: !14, line: 122, type: !7)
!503 = !DILocalVariable(name: "seq_fps", scope: !500, file: !14, line: 122, type: !7)
!504 = !DILocalVariable(name: "start", scope: !500, file: !14, line: 123, type: !6)
!505 = !DILocalVariable(name: "end", scope: !500, file: !14, line: 123, type: !6)
!506 = !DILocalVariable(name: "prev_start", scope: !500, file: !14, line: 124, type: !6)
!507 = !DILocalVariable(name: "prev_end", scope: !500, file: !14, line: 124, type: !6)
!508 = !DILocalVariable(name: "exponent", scope: !509, file: !14, line: 215, type: !7)
!509 = distinct !DILexicalBlock(scope: !510, file: !14, line: 214, column: 9)
!510 = distinct !DILexicalBlock(scope: !500, file: !14, line: 213, column: 13)
!511 = !DILocalVariable(name: "assume_fps_sig", scope: !509, file: !14, line: 216, type: !7)
!512 = !DILocalVariable(name: "seq_fps_sig", scope: !509, file: !14, line: 216, type: !7)
!513 = !DILocalVariable(name: "file_pos", scope: !514, file: !14, line: 246, type: !365)
!514 = distinct !DILexicalBlock(scope: !501, file: !14, line: 245, column: 5)
!515 = !DILocalVariable(name: "i", scope: !516, file: !14, line: 307, type: !6)
!516 = distinct !DILexicalBlock(scope: !517, file: !14, line: 306, column: 17)
!517 = distinct !DILexicalBlock(scope: !518, file: !14, line: 305, column: 21)
!518 = distinct !DILexicalBlock(scope: !519, file: !14, line: 303, column: 13)
!519 = distinct !DILexicalBlock(scope: !520, file: !14, line: 302, column: 13)
!520 = distinct !DILexicalBlock(scope: !521, file: !14, line: 302, column: 13)
!521 = distinct !DILexicalBlock(scope: !522, file: !14, line: 298, column: 9)
!522 = distinct !DILexicalBlock(scope: !523, file: !14, line: 297, column: 18)
!523 = distinct !DILexicalBlock(scope: !514, file: !14, line: 295, column: 13)
!524 = !DILocalVariable(name: "fps_num", scope: !516, file: !14, line: 308, type: !365)
!525 = !DILocalVariable(name: "fps_den", scope: !516, file: !14, line: 308, type: !365)
!526 = !DILocalVariable(name: "exponent", scope: !516, file: !14, line: 309, type: !7)
!527 = !DILocalVariable(name: "fps_sig", scope: !516, file: !14, line: 310, type: !7)
!528 = !DILocalVariable(name: "i", scope: !529, file: !14, line: 342, type: !365)
!529 = distinct !DILexicalBlock(scope: !530, file: !14, line: 341, column: 5)
!530 = distinct !DILexicalBlock(scope: !480, file: !14, line: 340, column: 9)
!531 = !DILabel(scope: !480, name: "fail", file: !14, line: 373)
!532 = !DILocation(line: 0, scope: !480, inlinedAt: !533)
!533 = distinct !DILocation(line: 433, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !289, file: !14, line: 433, column: 9)
!535 = !DILocation(line: 106, column: 5, scope: !480, inlinedAt: !533)
!536 = !DILocation(line: 106, column: 10, scope: !480, inlinedAt: !533)
!537 = !DILocation(line: 107, column: 5, scope: !480, inlinedAt: !533)
!538 = !DILocation(line: 112, column: 11, scope: !480, inlinedAt: !533)
!539 = !DILocation(line: 113, column: 13, scope: !540, inlinedAt: !533)
!540 = distinct !DILexicalBlock(scope: !480, file: !14, line: 113, column: 9)
!541 = !DILocation(line: 113, column: 18, scope: !540, inlinedAt: !533)
!542 = !DILocation(line: 113, column: 22, scope: !540, inlinedAt: !533)
!543 = !{!395, !395, i64 0}
!544 = !DILocation(line: 113, column: 32, scope: !540, inlinedAt: !533)
!545 = !DILocation(line: 115, column: 18, scope: !546, inlinedAt: !533)
!546 = distinct !DILexicalBlock(scope: !540, file: !14, line: 114, column: 5)
!547 = !DILocation(line: 115, column: 9, scope: !546, inlinedAt: !533)
!548 = !DILocation(line: 116, column: 9, scope: !546, inlinedAt: !533)
!549 = !DILocation(line: 119, column: 14, scope: !501, inlinedAt: !533)
!550 = !DILocation(line: 119, column: 9, scope: !480, inlinedAt: !533)
!551 = !DILocation(line: 122, column: 9, scope: !500, inlinedAt: !533)
!552 = !DILocation(line: 123, column: 9, scope: !500, inlinedAt: !533)
!553 = !DILocation(line: 123, column: 29, scope: !500, inlinedAt: !533)
!554 = !DILocation(line: 0, scope: !500, inlinedAt: !533)
!555 = !DILocation(line: 123, column: 20, scope: !500, inlinedAt: !533)
!556 = !DILocation(line: 126, column: 12, scope: !500, inlinedAt: !533)
!557 = !DILocation(line: 126, column: 23, scope: !500, inlinedAt: !533)
!558 = !{!393, !397, i64 112}
!559 = !DILocation(line: 127, column: 23, scope: !560, inlinedAt: !533)
!560 = distinct !DILexicalBlock(scope: !561, file: !14, line: 127, column: 9)
!561 = distinct !DILexicalBlock(scope: !500, file: !14, line: 127, column: 9)
!562 = !DILocation(line: 127, column: 62, scope: !560, inlinedAt: !533)
!563 = !DILocation(line: 127, column: 9, scope: !561, inlinedAt: !533)
!564 = !DILocation(line: 129, column: 17, scope: !565, inlinedAt: !533)
!565 = distinct !DILexicalBlock(scope: !566, file: !14, line: 129, column: 17)
!566 = distinct !DILexicalBlock(scope: !560, file: !14, line: 128, column: 9)
!567 = !{!383, !383, i64 0}
!568 = !DILocation(line: 129, column: 32, scope: !565, inlinedAt: !533)
!569 = !DILocation(line: 131, column: 17, scope: !570, inlinedAt: !533)
!570 = distinct !DILexicalBlock(scope: !566, file: !14, line: 131, column: 17)
!571 = !DILocation(line: 131, column: 62, scope: !570, inlinedAt: !533)
!572 = !DILocation(line: 131, column: 67, scope: !570, inlinedAt: !533)
!573 = !DILocation(line: 131, column: 70, scope: !570, inlinedAt: !533)
!574 = !DILocation(line: 131, column: 115, scope: !570, inlinedAt: !533)
!575 = !DILocation(line: 131, column: 17, scope: !566, inlinedAt: !533)
!576 = !DILocation(line: 133, column: 26, scope: !577, inlinedAt: !533)
!577 = distinct !DILexicalBlock(scope: !570, file: !14, line: 132, column: 13)
!578 = !DILocation(line: 133, column: 17, scope: !577, inlinedAt: !533)
!579 = !DILocation(line: 134, column: 17, scope: !577, inlinedAt: !533)
!580 = !DILocation(line: 127, column: 74, scope: !560, inlinedAt: !533)
!581 = distinct !{!581, !563, !582, !583, !584}
!582 = !DILocation(line: 137, column: 9, scope: !561, inlinedAt: !533)
!583 = !{!"llvm.loop.mustprogress"}
!584 = !{!"llvm.loop.unroll.disable"}
!585 = !DILocation(line: 138, column: 16, scope: !586, inlinedAt: !533)
!586 = distinct !DILexicalBlock(scope: !500, file: !14, line: 138, column: 13)
!587 = !DILocation(line: 138, column: 27, scope: !586, inlinedAt: !533)
!588 = !DILocation(line: 138, column: 13, scope: !500, inlinedAt: !533)
!589 = !DILocation(line: 140, column: 22, scope: !590, inlinedAt: !533)
!590 = distinct !DILexicalBlock(scope: !586, file: !14, line: 139, column: 9)
!591 = !DILocation(line: 140, column: 13, scope: !590, inlinedAt: !533)
!592 = !DILocation(line: 141, column: 13, scope: !590, inlinedAt: !533)
!593 = !DILocation(line: 144, column: 20, scope: !500, inlinedAt: !533)
!594 = !DILocation(line: 145, column: 12, scope: !500, inlinedAt: !533)
!595 = !DILocation(line: 145, column: 27, scope: !500, inlinedAt: !533)
!596 = !{!393, !395, i64 100}
!597 = !DILocation(line: 146, column: 27, scope: !598, inlinedAt: !533)
!598 = distinct !DILexicalBlock(scope: !599, file: !14, line: 146, column: 9)
!599 = distinct !DILexicalBlock(scope: !500, file: !14, line: 146, column: 9)
!600 = !DILocation(line: 146, column: 66, scope: !598, inlinedAt: !533)
!601 = !DILocation(line: 146, column: 9, scope: !599, inlinedAt: !533)
!602 = !DILocation(line: 148, column: 17, scope: !603, inlinedAt: !533)
!603 = distinct !DILexicalBlock(scope: !604, file: !14, line: 148, column: 17)
!604 = distinct !DILexicalBlock(scope: !598, file: !14, line: 147, column: 9)
!605 = !DILocation(line: 148, column: 32, scope: !603, inlinedAt: !533)
!606 = !DILocation(line: 150, column: 21, scope: !607, inlinedAt: !533)
!607 = distinct !DILexicalBlock(scope: !608, file: !14, line: 150, column: 21)
!608 = distinct !DILexicalBlock(scope: !603, file: !14, line: 149, column: 13)
!609 = !DILocation(line: 150, column: 82, scope: !607, inlinedAt: !533)
!610 = !DILocation(line: 150, column: 21, scope: !608, inlinedAt: !533)
!611 = !DILocation(line: 151, column: 41, scope: !607, inlinedAt: !533)
!612 = !DILocation(line: 151, column: 45, scope: !607, inlinedAt: !533)
!613 = !DILocation(line: 151, column: 54, scope: !607, inlinedAt: !533)
!614 = !DILocation(line: 151, column: 49, scope: !607, inlinedAt: !533)
!615 = !DILocation(line: 151, column: 39, scope: !607, inlinedAt: !533)
!616 = !DILocation(line: 151, column: 21, scope: !607, inlinedAt: !533)
!617 = !DILocation(line: 154, column: 19, scope: !604, inlinedAt: !533)
!618 = !DILocation(line: 155, column: 26, scope: !619, inlinedAt: !533)
!619 = distinct !DILexicalBlock(scope: !604, file: !14, line: 155, column: 17)
!620 = !DILocation(line: 157, column: 26, scope: !621, inlinedAt: !533)
!621 = distinct !DILexicalBlock(scope: !619, file: !14, line: 156, column: 13)
!622 = !DILocation(line: 157, column: 17, scope: !621, inlinedAt: !533)
!623 = !DILocation(line: 158, column: 17, scope: !621, inlinedAt: !533)
!624 = !DILocation(line: 160, column: 17, scope: !625, inlinedAt: !533)
!625 = distinct !DILexicalBlock(scope: !604, file: !14, line: 160, column: 17)
!626 = !DILocation(line: 160, column: 25, scope: !625, inlinedAt: !533)
!627 = !DILocation(line: 160, column: 23, scope: !625, inlinedAt: !533)
!628 = !DILocation(line: 160, column: 29, scope: !625, inlinedAt: !533)
!629 = !DILocation(line: 160, column: 59, scope: !625, inlinedAt: !533)
!630 = !DILocation(line: 160, column: 71, scope: !625, inlinedAt: !533)
!631 = !DILocation(line: 162, column: 26, scope: !632, inlinedAt: !533)
!632 = distinct !DILexicalBlock(scope: !625, file: !14, line: 161, column: 13)
!633 = !DILocation(line: 162, column: 17, scope: !632, inlinedAt: !533)
!634 = !DILocation(line: 163, column: 17, scope: !632, inlinedAt: !533)
!635 = !DILocation(line: 167, column: 20, scope: !636, inlinedAt: !533)
!636 = distinct !DILexicalBlock(scope: !604, file: !14, line: 167, column: 17)
!637 = !DILocation(line: 167, column: 17, scope: !636, inlinedAt: !533)
!638 = !DILocation(line: 167, column: 38, scope: !636, inlinedAt: !533)
!639 = !DILocation(line: 167, column: 44, scope: !636, inlinedAt: !533)
!640 = !DILocation(line: 167, column: 41, scope: !636, inlinedAt: !533)
!641 = !DILocation(line: 167, column: 17, scope: !604, inlinedAt: !533)
!642 = !DILocation(line: 168, column: 17, scope: !636, inlinedAt: !533)
!643 = !DILocation(line: 0, scope: !599, inlinedAt: !533)
!644 = !DILocation(line: 146, column: 78, scope: !598, inlinedAt: !533)
!645 = distinct !{!645, !601, !646, !583, !584}
!646 = !DILocation(line: 169, column: 9, scope: !599, inlinedAt: !533)
!647 = !DILocation(line: 146, column: 22, scope: !599, inlinedAt: !533)
!648 = !DILocation(line: 170, column: 17, scope: !649, inlinedAt: !533)
!649 = distinct !DILexicalBlock(scope: !500, file: !14, line: 170, column: 13)
!650 = !DILocation(line: 170, column: 14, scope: !649, inlinedAt: !533)
!651 = !DILocation(line: 170, column: 13, scope: !500, inlinedAt: !533)
!652 = !DILocation(line: 172, column: 48, scope: !500, inlinedAt: !533)
!653 = !DILocation(line: 171, column: 33, scope: !649, inlinedAt: !533)
!654 = !DILocation(line: 171, column: 37, scope: !649, inlinedAt: !533)
!655 = !DILocation(line: 171, column: 46, scope: !649, inlinedAt: !533)
!656 = !DILocation(line: 171, column: 41, scope: !649, inlinedAt: !533)
!657 = !DILocation(line: 171, column: 31, scope: !649, inlinedAt: !533)
!658 = !DILocation(line: 171, column: 13, scope: !649, inlinedAt: !533)
!659 = !DILocation(line: 172, column: 28, scope: !500, inlinedAt: !533)
!660 = !DILocation(line: 172, column: 43, scope: !500, inlinedAt: !533)
!661 = !DILocation(line: 173, column: 9, scope: !500, inlinedAt: !533)
!662 = !DILocation(line: 175, column: 29, scope: !500, inlinedAt: !533)
!663 = !DILocation(line: 175, column: 43, scope: !500, inlinedAt: !533)
!664 = !DILocation(line: 175, column: 21, scope: !500, inlinedAt: !533)
!665 = !DILocation(line: 176, column: 14, scope: !666, inlinedAt: !533)
!666 = distinct !DILexicalBlock(scope: !500, file: !14, line: 176, column: 13)
!667 = !DILocation(line: 176, column: 13, scope: !500, inlinedAt: !533)
!668 = !DILocation(line: 178, column: 16, scope: !669, inlinedAt: !533)
!669 = distinct !DILexicalBlock(scope: !500, file: !14, line: 178, column: 13)
!670 = !DILocation(line: 178, column: 13, scope: !669, inlinedAt: !533)
!671 = !DILocation(line: 178, column: 34, scope: !669, inlinedAt: !533)
!672 = !DILocation(line: 178, column: 40, scope: !669, inlinedAt: !533)
!673 = !DILocation(line: 178, column: 37, scope: !669, inlinedAt: !533)
!674 = !DILocation(line: 178, column: 13, scope: !500, inlinedAt: !533)
!675 = !DILocation(line: 180, column: 37, scope: !676, inlinedAt: !533)
!676 = distinct !DILexicalBlock(scope: !669, file: !14, line: 179, column: 9)
!677 = !DILocation(line: 180, column: 28, scope: !676, inlinedAt: !533)
!678 = !DILocation(line: 180, column: 42, scope: !676, inlinedAt: !533)
!679 = !DILocation(line: 180, column: 20, scope: !676, inlinedAt: !533)
!680 = !DILocation(line: 181, column: 18, scope: !681, inlinedAt: !533)
!681 = distinct !DILexicalBlock(scope: !676, file: !14, line: 181, column: 17)
!682 = !DILocation(line: 181, column: 17, scope: !676, inlinedAt: !533)
!683 = !DILocation(line: 185, column: 38, scope: !500, inlinedAt: !533)
!684 = !DILocation(line: 185, column: 22, scope: !500, inlinedAt: !533)
!685 = !DILocation(line: 186, column: 24, scope: !686, inlinedAt: !533)
!686 = distinct !DILexicalBlock(scope: !500, file: !14, line: 186, column: 13)
!687 = !DILocation(line: 186, column: 13, scope: !500, inlinedAt: !533)
!688 = !DILocation(line: 188, column: 22, scope: !500, inlinedAt: !533)
!689 = !{!397, !397, i64 0}
!690 = !DILocation(line: 189, column: 9, scope: !691, inlinedAt: !533)
!691 = distinct !DILexicalBlock(scope: !500, file: !14, line: 189, column: 9)
!692 = !DILocation(line: 192, column: 32, scope: !693, inlinedAt: !533)
!693 = distinct !DILexicalBlock(scope: !694, file: !14, line: 192, column: 17)
!694 = distinct !DILexicalBlock(scope: !695, file: !14, line: 190, column: 9)
!695 = distinct !DILexicalBlock(scope: !691, file: !14, line: 189, column: 9)
!696 = !DILocation(line: 191, column: 13, scope: !694, inlinedAt: !533)
!697 = !DILocation(line: 192, column: 17, scope: !693, inlinedAt: !533)
!698 = !DILocation(line: 194, column: 19, scope: !694, inlinedAt: !533)
!699 = !DILocation(line: 195, column: 21, scope: !700, inlinedAt: !533)
!700 = distinct !DILexicalBlock(scope: !694, file: !14, line: 195, column: 17)
!701 = !DILocation(line: 195, column: 17, scope: !694, inlinedAt: !533)
!702 = !DILocation(line: 196, column: 29, scope: !700, inlinedAt: !533)
!703 = !DILocation(line: 196, column: 23, scope: !700, inlinedAt: !533)
!704 = !DILocation(line: 196, column: 17, scope: !700, inlinedAt: !533)
!705 = !DILocation(line: 197, column: 24, scope: !706, inlinedAt: !533)
!706 = distinct !DILexicalBlock(scope: !707, file: !14, line: 197, column: 13)
!707 = distinct !DILexicalBlock(scope: !694, file: !14, line: 197, column: 13)
!708 = !DILocation(line: 197, column: 32, scope: !706, inlinedAt: !533)
!709 = !DILocation(line: 197, column: 13, scope: !707, inlinedAt: !533)
!710 = !DILocation(line: 198, column: 38, scope: !706, inlinedAt: !533)
!711 = !DILocation(line: 198, column: 53, scope: !706, inlinedAt: !533)
!712 = !DILocation(line: 198, column: 31, scope: !706, inlinedAt: !533)
!713 = !DILocation(line: 198, column: 17, scope: !706, inlinedAt: !533)
!714 = !DILocation(line: 198, column: 36, scope: !706, inlinedAt: !533)
!715 = distinct !{!715, !709, !716, !583, !584}
!716 = !DILocation(line: 198, column: 59, scope: !707, inlinedAt: !533)
!717 = !DILocation(line: 199, column: 17, scope: !694, inlinedAt: !533)
!718 = !DILocation(line: 201, column: 24, scope: !719, inlinedAt: !533)
!719 = distinct !DILexicalBlock(scope: !720, file: !14, line: 201, column: 21)
!720 = distinct !DILexicalBlock(scope: !721, file: !14, line: 200, column: 13)
!721 = distinct !DILexicalBlock(scope: !694, file: !14, line: 199, column: 17)
!722 = !DILocation(line: 201, column: 21, scope: !719, inlinedAt: !533)
!723 = !DILocation(line: 201, column: 42, scope: !719, inlinedAt: !533)
!724 = !DILocation(line: 201, column: 48, scope: !719, inlinedAt: !533)
!725 = !DILocation(line: 201, column: 45, scope: !719, inlinedAt: !533)
!726 = !DILocation(line: 201, column: 21, scope: !720, inlinedAt: !533)
!727 = !DILocation(line: 203, column: 40, scope: !720, inlinedAt: !533)
!728 = !DILocation(line: 202, column: 39, scope: !719, inlinedAt: !533)
!729 = !DILocation(line: 202, column: 33, scope: !719, inlinedAt: !533)
!730 = !DILocation(line: 202, column: 21, scope: !719, inlinedAt: !533)
!731 = !DILocation(line: 202, column: 37, scope: !719, inlinedAt: !533)
!732 = !DILocation(line: 0, scope: !691, inlinedAt: !533)
!733 = !DILocation(line: 203, column: 27, scope: !720, inlinedAt: !533)
!734 = !DILocation(line: 203, column: 25, scope: !720, inlinedAt: !533)
!735 = !DILocation(line: 204, column: 29, scope: !736, inlinedAt: !533)
!736 = distinct !DILexicalBlock(scope: !720, file: !14, line: 204, column: 21)
!737 = !DILocation(line: 204, column: 21, scope: !720, inlinedAt: !533)
!738 = !DILocation(line: 206, column: 28, scope: !739, inlinedAt: !533)
!739 = distinct !DILexicalBlock(scope: !720, file: !14, line: 206, column: 17)
!740 = !DILocation(line: 206, column: 39, scope: !741, inlinedAt: !533)
!741 = distinct !DILexicalBlock(scope: !739, file: !14, line: 206, column: 17)
!742 = !DILocation(line: 206, column: 46, scope: !741, inlinedAt: !533)
!743 = !DILocation(line: 207, column: 42, scope: !741, inlinedAt: !533)
!744 = !DILocation(line: 207, column: 57, scope: !741, inlinedAt: !533)
!745 = !DILocation(line: 207, column: 35, scope: !741, inlinedAt: !533)
!746 = !DILocation(line: 207, column: 21, scope: !741, inlinedAt: !533)
!747 = !DILocation(line: 207, column: 40, scope: !741, inlinedAt: !533)
!748 = distinct !{!748, !749, !750, !583, !584}
!749 = !DILocation(line: 206, column: 17, scope: !739, inlinedAt: !533)
!750 = !DILocation(line: 207, column: 63, scope: !739, inlinedAt: !533)
!751 = distinct !{!751, !690, !752, !583, !584}
!752 = !DILocation(line: 209, column: 9, scope: !691, inlinedAt: !533)
!753 = !DILocation(line: 210, column: 16, scope: !754, inlinedAt: !533)
!754 = distinct !DILexicalBlock(scope: !500, file: !14, line: 210, column: 13)
!755 = !DILocation(line: 210, column: 13, scope: !754, inlinedAt: !533)
!756 = !DILocation(line: 210, column: 34, scope: !754, inlinedAt: !533)
!757 = !DILocation(line: 210, column: 40, scope: !754, inlinedAt: !533)
!758 = !DILocation(line: 210, column: 37, scope: !754, inlinedAt: !533)
!759 = !DILocation(line: 210, column: 13, scope: !500, inlinedAt: !533)
!760 = !DILocation(line: 211, column: 32, scope: !754, inlinedAt: !533)
!761 = !DILocation(line: 211, column: 13, scope: !754, inlinedAt: !533)
!762 = !DILocation(line: 211, column: 27, scope: !754, inlinedAt: !533)
!763 = !DILocation(line: 213, column: 34, scope: !510, inlinedAt: !533)
!764 = !DILocation(line: 217, column: 56, scope: !765, inlinedAt: !533)
!765 = distinct !DILexicalBlock(scope: !509, file: !14, line: 217, column: 17)
!766 = !DILocation(line: 217, column: 17, scope: !765, inlinedAt: !533)
!767 = !DILocation(line: 217, column: 62, scope: !765, inlinedAt: !533)
!768 = !DILocation(line: 217, column: 17, scope: !509, inlinedAt: !533)
!769 = !DILocation(line: 219, column: 13, scope: !509, inlinedAt: !533)
!770 = !DILocation(line: 220, column: 43, scope: !509, inlinedAt: !533)
!771 = !DILocalVariable(name: "value", arg: 1, scope: !772, file: !14, line: 44, type: !7)
!772 = distinct !DISubprogram(name: "sigexp10", scope: !14, file: !14, line: 44, type: !773, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!7, !7, !497}
!775 = !{!771, !776}
!776 = !DILocalVariable(name: "exponent", arg: 2, scope: !772, file: !14, line: 44, type: !497)
!777 = !DILocation(line: 0, scope: !772, inlinedAt: !778)
!778 = distinct !DILocation(line: 220, column: 30, scope: !509, inlinedAt: !533)
!779 = !DILocation(line: 47, column: 33, scope: !772, inlinedAt: !778)
!780 = !DILocation(line: 47, column: 26, scope: !772, inlinedAt: !778)
!781 = !DILocation(line: 47, column: 17, scope: !772, inlinedAt: !778)
!782 = !DILocation(line: 48, column: 18, scope: !772, inlinedAt: !778)
!783 = !DILocation(line: 0, scope: !509, inlinedAt: !533)
!784 = !DILocation(line: 221, column: 71, scope: !509, inlinedAt: !533)
!785 = !DILocation(line: 221, column: 47, scope: !509, inlinedAt: !533)
!786 = !DILocation(line: 221, column: 90, scope: !509, inlinedAt: !533)
!787 = !DILocation(line: 221, column: 43, scope: !509, inlinedAt: !533)
!788 = !DILocation(line: 222, column: 13, scope: !789, inlinedAt: !533)
!789 = distinct !DILexicalBlock(scope: !509, file: !14, line: 222, column: 13)
!790 = !DILocation(line: 0, scope: !791, inlinedAt: !533)
!791 = distinct !DILexicalBlock(scope: !792, file: !14, line: 234, column: 17)
!792 = distinct !DILexicalBlock(scope: !793, file: !14, line: 223, column: 13)
!793 = distinct !DILexicalBlock(scope: !789, file: !14, line: 222, column: 13)
!794 = !DILocation(line: 225, column: 36, scope: !795, inlinedAt: !533)
!795 = distinct !DILexicalBlock(scope: !792, file: !14, line: 225, column: 21)
!796 = !DILocation(line: 224, column: 17, scope: !792, inlinedAt: !533)
!797 = !DILocation(line: 225, column: 21, scope: !795, inlinedAt: !533)
!798 = !DILocation(line: 227, column: 23, scope: !792, inlinedAt: !533)
!799 = !DILocation(line: 228, column: 25, scope: !800, inlinedAt: !533)
!800 = distinct !DILexicalBlock(scope: !792, file: !14, line: 228, column: 21)
!801 = !DILocation(line: 228, column: 21, scope: !792, inlinedAt: !533)
!802 = !DILocation(line: 229, column: 33, scope: !800, inlinedAt: !533)
!803 = !DILocation(line: 229, column: 27, scope: !800, inlinedAt: !533)
!804 = !DILocation(line: 229, column: 21, scope: !800, inlinedAt: !533)
!805 = !DILocation(line: 230, column: 41, scope: !792, inlinedAt: !533)
!806 = !DILocation(line: 0, scope: !772, inlinedAt: !807)
!807 = distinct !DILocation(line: 230, column: 31, scope: !792, inlinedAt: !533)
!808 = !DILocation(line: 47, column: 33, scope: !772, inlinedAt: !807)
!809 = !DILocation(line: 47, column: 26, scope: !772, inlinedAt: !807)
!810 = !DILocation(line: 47, column: 17, scope: !772, inlinedAt: !807)
!811 = !DILocation(line: 48, column: 18, scope: !772, inlinedAt: !807)
!812 = !DILocation(line: 231, column: 72, scope: !792, inlinedAt: !533)
!813 = !DILocation(line: 231, column: 48, scope: !792, inlinedAt: !533)
!814 = !DILocation(line: 231, column: 88, scope: !792, inlinedAt: !533)
!815 = !DILocation(line: 231, column: 44, scope: !792, inlinedAt: !533)
!816 = !DILocation(line: 231, column: 25, scope: !792, inlinedAt: !533)
!817 = !DILocation(line: 232, column: 28, scope: !818, inlinedAt: !533)
!818 = distinct !DILexicalBlock(scope: !819, file: !14, line: 232, column: 17)
!819 = distinct !DILexicalBlock(scope: !792, file: !14, line: 232, column: 17)
!820 = !DILocation(line: 232, column: 36, scope: !818, inlinedAt: !533)
!821 = !DILocation(line: 232, column: 17, scope: !819, inlinedAt: !533)
!822 = !DILocation(line: 233, column: 42, scope: !818, inlinedAt: !533)
!823 = !DILocation(line: 234, column: 39, scope: !824, inlinedAt: !533)
!824 = distinct !DILexicalBlock(scope: !791, file: !14, line: 234, column: 17)
!825 = !DILocation(line: 234, column: 46, scope: !824, inlinedAt: !533)
!826 = distinct !{!826, !788, !827, !583, !584}
!827 = !DILocation(line: 236, column: 13, scope: !789, inlinedAt: !533)
!828 = !DILocation(line: 235, column: 42, scope: !824, inlinedAt: !533)
!829 = !DILocation(line: 233, column: 57, scope: !818, inlinedAt: !533)
!830 = !DILocation(line: 233, column: 35, scope: !818, inlinedAt: !533)
!831 = !DILocation(line: 233, column: 21, scope: !818, inlinedAt: !533)
!832 = !DILocation(line: 233, column: 40, scope: !818, inlinedAt: !533)
!833 = distinct !{!833, !821, !834, !583, !584}
!834 = !DILocation(line: 233, column: 63, scope: !819, inlinedAt: !533)
!835 = !DILocation(line: 235, column: 57, scope: !824, inlinedAt: !533)
!836 = !DILocation(line: 235, column: 35, scope: !824, inlinedAt: !533)
!837 = !DILocation(line: 235, column: 21, scope: !824, inlinedAt: !533)
!838 = !DILocation(line: 235, column: 40, scope: !824, inlinedAt: !533)
!839 = distinct !{!839, !840, !841, !583, !584}
!840 = !DILocation(line: 234, column: 17, scope: !791, inlinedAt: !533)
!841 = !DILocation(line: 235, column: 63, scope: !791, inlinedAt: !533)
!842 = !DILocation(line: 185, column: 20, scope: !500, inlinedAt: !533)
!843 = !DILocation(line: 238, column: 13, scope: !844, inlinedAt: !533)
!844 = distinct !DILexicalBlock(scope: !500, file: !14, line: 238, column: 13)
!845 = !DILocation(line: 238, column: 13, scope: !500, inlinedAt: !533)
!846 = !DILocation(line: 239, column: 13, scope: !844, inlinedAt: !533)
!847 = !DILocation(line: 243, column: 5, scope: !501, inlinedAt: !533)
!848 = !DILocation(line: 241, column: 23, scope: !500, inlinedAt: !533)
!849 = !DILocation(line: 242, column: 28, scope: !500, inlinedAt: !533)
!850 = !DILocation(line: 242, column: 12, scope: !500, inlinedAt: !533)
!851 = !DILocation(line: 242, column: 26, scope: !500, inlinedAt: !533)
!852 = !{!393, !397, i64 120}
!853 = !DILocation(line: 246, column: 29, scope: !514, inlinedAt: !533)
!854 = !DILocation(line: 0, scope: !514, inlinedAt: !533)
!855 = !DILocation(line: 248, column: 18, scope: !514, inlinedAt: !533)
!856 = !DILocation(line: 248, column: 33, scope: !514, inlinedAt: !533)
!857 = !DILocation(line: 249, column: 16, scope: !514, inlinedAt: !533)
!858 = !DILocation(line: 249, column: 55, scope: !514, inlinedAt: !533)
!859 = !DILocation(line: 249, column: 9, scope: !514, inlinedAt: !533)
!860 = !DILocation(line: 251, column: 17, scope: !861, inlinedAt: !533)
!861 = distinct !DILexicalBlock(scope: !862, file: !14, line: 251, column: 17)
!862 = distinct !DILexicalBlock(scope: !514, file: !14, line: 250, column: 9)
!863 = !DILocation(line: 251, column: 32, scope: !861, inlinedAt: !533)
!864 = !DILocation(line: 253, column: 22, scope: !865, inlinedAt: !533)
!865 = distinct !DILexicalBlock(scope: !866, file: !14, line: 253, column: 21)
!866 = distinct !DILexicalBlock(scope: !861, file: !14, line: 252, column: 13)
!867 = !DILocation(line: 253, column: 21, scope: !866, inlinedAt: !533)
!868 = !DILocation(line: 254, column: 32, scope: !865, inlinedAt: !533)
!869 = !DILocation(line: 254, column: 21, scope: !865, inlinedAt: !533)
!870 = distinct !{!870, !859, !871, !583, !584}
!871 = !DILocation(line: 260, column: 9, scope: !514, inlinedAt: !533)
!872 = !DILocation(line: 257, column: 27, scope: !873, inlinedAt: !533)
!873 = distinct !DILexicalBlock(scope: !862, file: !14, line: 257, column: 17)
!874 = !DILocation(line: 257, column: 21, scope: !873, inlinedAt: !533)
!875 = !DILocation(line: 257, column: 17, scope: !862, inlinedAt: !533)
!876 = !DILocation(line: 258, column: 17, scope: !873, inlinedAt: !533)
!877 = !DILocation(line: 259, column: 13, scope: !862, inlinedAt: !533)
!878 = distinct !{!878, !859, !871, !583, !584}
!879 = !DILocation(line: 261, column: 28, scope: !514, inlinedAt: !533)
!880 = !DILocation(line: 261, column: 48, scope: !514, inlinedAt: !533)
!881 = !DILocation(line: 261, column: 43, scope: !514, inlinedAt: !533)
!882 = !DILocation(line: 262, column: 14, scope: !883, inlinedAt: !533)
!883 = distinct !DILexicalBlock(scope: !514, file: !14, line: 262, column: 13)
!884 = !DILocation(line: 262, column: 13, scope: !514, inlinedAt: !533)
!885 = !DILocation(line: 264, column: 22, scope: !886, inlinedAt: !533)
!886 = distinct !DILexicalBlock(scope: !883, file: !14, line: 263, column: 9)
!887 = !DILocation(line: 264, column: 13, scope: !886, inlinedAt: !533)
!888 = !DILocation(line: 265, column: 13, scope: !886, inlinedAt: !533)
!889 = !DILocation(line: 267, column: 9, scope: !514, inlinedAt: !533)
!890 = !DILocation(line: 269, column: 29, scope: !514, inlinedAt: !533)
!891 = !DILocation(line: 269, column: 43, scope: !514, inlinedAt: !533)
!892 = !DILocation(line: 269, column: 21, scope: !514, inlinedAt: !533)
!893 = !DILocation(line: 270, column: 14, scope: !894, inlinedAt: !533)
!894 = distinct !DILexicalBlock(scope: !514, file: !14, line: 270, column: 13)
!895 = !DILocation(line: 270, column: 13, scope: !514, inlinedAt: !533)
!896 = !DILocation(line: 273, column: 9, scope: !514, inlinedAt: !533)
!897 = !DILocation(line: 274, column: 15, scope: !514, inlinedAt: !533)
!898 = !DILocation(line: 275, column: 17, scope: !899, inlinedAt: !533)
!899 = distinct !DILexicalBlock(scope: !514, file: !14, line: 275, column: 13)
!900 = !DILocation(line: 275, column: 13, scope: !514, inlinedAt: !533)
!901 = !DILocation(line: 280, column: 9, scope: !902, inlinedAt: !533)
!902 = distinct !DILexicalBlock(scope: !514, file: !14, line: 280, column: 9)
!903 = !DILocation(line: 277, column: 22, scope: !904, inlinedAt: !533)
!904 = distinct !DILexicalBlock(scope: !899, file: !14, line: 276, column: 9)
!905 = !DILocation(line: 277, column: 13, scope: !904, inlinedAt: !533)
!906 = !DILocation(line: 278, column: 13, scope: !904, inlinedAt: !533)
!907 = !DILocation(line: 285, column: 41, scope: !908, inlinedAt: !533)
!908 = distinct !DILexicalBlock(scope: !909, file: !14, line: 281, column: 9)
!909 = distinct !DILexicalBlock(scope: !902, file: !14, line: 280, column: 9)
!910 = !DILocation(line: 285, column: 19, scope: !908, inlinedAt: !533)
!911 = !DILocation(line: 286, column: 28, scope: !908, inlinedAt: !533)
!912 = !DILocation(line: 287, column: 21, scope: !913, inlinedAt: !533)
!913 = distinct !DILexicalBlock(scope: !908, file: !14, line: 287, column: 17)
!914 = !DILocation(line: 287, column: 26, scope: !913, inlinedAt: !533)
!915 = !DILocation(line: 287, column: 61, scope: !913, inlinedAt: !533)
!916 = !DILocation(line: 287, column: 47, scope: !913, inlinedAt: !533)
!917 = !DILocation(line: 287, column: 44, scope: !913, inlinedAt: !533)
!918 = !DILocation(line: 287, column: 17, scope: !908, inlinedAt: !533)
!919 = !DILocation(line: 289, column: 26, scope: !920, inlinedAt: !533)
!920 = distinct !DILexicalBlock(scope: !913, file: !14, line: 288, column: 13)
!921 = !DILocation(line: 289, column: 17, scope: !920, inlinedAt: !533)
!922 = !DILocation(line: 290, column: 17, scope: !920, inlinedAt: !533)
!923 = !DILocation(line: 292, column: 13, scope: !908, inlinedAt: !533)
!924 = distinct !{!924, !901, !925, !583, !584}
!925 = !DILocation(line: 293, column: 9, scope: !902, inlinedAt: !533)
!926 = !DILocation(line: 282, column: 13, scope: !908, inlinedAt: !533)
!927 = !DILocation(line: 283, column: 17, scope: !928, inlinedAt: !533)
!928 = distinct !DILexicalBlock(scope: !908, file: !14, line: 283, column: 17)
!929 = !DILocation(line: 283, column: 32, scope: !928, inlinedAt: !533)
!930 = !DILocation(line: 295, column: 27, scope: !523, inlinedAt: !533)
!931 = !DILocation(line: 295, column: 13, scope: !514, inlinedAt: !533)
!932 = !DILocation(line: 296, column: 37, scope: !523, inlinedAt: !533)
!933 = !{!451, !395, i64 4}
!934 = !DILocation(line: 296, column: 31, scope: !523, inlinedAt: !533)
!935 = !DILocation(line: 296, column: 16, scope: !523, inlinedAt: !533)
!936 = !DILocation(line: 296, column: 29, scope: !523, inlinedAt: !533)
!937 = !DILocation(line: 333, column: 13, scope: !514, inlinedAt: !533)
!938 = !DILocation(line: 297, column: 21, scope: !522, inlinedAt: !533)
!939 = !DILocation(line: 297, column: 18, scope: !522, inlinedAt: !533)
!940 = !DILocation(line: 297, column: 18, scope: !523, inlinedAt: !533)
!941 = !DILocation(line: 299, column: 43, scope: !521, inlinedAt: !533)
!942 = !DILocation(line: 299, column: 28, scope: !521, inlinedAt: !533)
!943 = !DILocation(line: 299, column: 48, scope: !521, inlinedAt: !533)
!944 = !DILocation(line: 299, column: 20, scope: !521, inlinedAt: !533)
!945 = !DILocation(line: 300, column: 18, scope: !946, inlinedAt: !533)
!946 = distinct !DILexicalBlock(scope: !521, file: !14, line: 300, column: 17)
!947 = !DILocation(line: 300, column: 17, scope: !521, inlinedAt: !533)
!948 = !DILocation(line: 302, column: 13, scope: !520, inlinedAt: !533)
!949 = !DILocation(line: 302, column: 31, scope: !519, inlinedAt: !533)
!950 = !DILocation(line: 305, column: 30, scope: !517, inlinedAt: !533)
!951 = !DILocation(line: 304, column: 48, scope: !518, inlinedAt: !533)
!952 = !DILocation(line: 304, column: 34, scope: !518, inlinedAt: !533)
!953 = !DILocation(line: 304, column: 55, scope: !518, inlinedAt: !533)
!954 = !DILocation(line: 304, column: 53, scope: !518, inlinedAt: !533)
!955 = !DILocation(line: 304, column: 31, scope: !518, inlinedAt: !533)
!956 = !DILocation(line: 304, column: 17, scope: !518, inlinedAt: !533)
!957 = !DILocation(line: 304, column: 27, scope: !518, inlinedAt: !533)
!958 = !DILocation(line: 305, column: 43, scope: !517, inlinedAt: !533)
!959 = !DILocation(line: 305, column: 21, scope: !518, inlinedAt: !533)
!960 = !DILocation(line: 0, scope: !516, inlinedAt: !533)
!961 = !DILocation(line: 0, scope: !772, inlinedAt: !962)
!962 = distinct !DILocation(line: 310, column: 38, scope: !516, inlinedAt: !533)
!963 = !DILocation(line: 47, column: 33, scope: !772, inlinedAt: !962)
!964 = !DILocation(line: 47, column: 26, scope: !772, inlinedAt: !962)
!965 = !DILocation(line: 47, column: 17, scope: !772, inlinedAt: !962)
!966 = !DILocation(line: 48, column: 18, scope: !772, inlinedAt: !962)
!967 = !DILocation(line: 314, column: 42, scope: !968, inlinedAt: !533)
!968 = distinct !DILexicalBlock(scope: !516, file: !14, line: 312, column: 21)
!969 = !DILocation(line: 314, column: 50, scope: !968, inlinedAt: !533)
!970 = !DILocation(line: 314, column: 35, scope: !968, inlinedAt: !533)
!971 = !DILocation(line: 314, column: 62, scope: !968, inlinedAt: !533)
!972 = !DILocation(line: 315, column: 37, scope: !973, inlinedAt: !533)
!973 = distinct !DILexicalBlock(scope: !968, file: !14, line: 315, column: 29)
!974 = !DILocation(line: 315, column: 50, scope: !973, inlinedAt: !533)
!975 = !DILocation(line: 317, column: 25, scope: !968, inlinedAt: !533)
!976 = !DILocation(line: 313, column: 37, scope: !968, inlinedAt: !533)
!977 = distinct !{!977, !978, !979, !584}
!978 = !DILocation(line: 311, column: 21, scope: !516, inlinedAt: !533)
!979 = !DILocation(line: 318, column: 21, scope: !516, inlinedAt: !533)
!980 = !DILocation(line: 315, column: 60, scope: !973, inlinedAt: !533)
!981 = !DILocation(line: 315, column: 76, scope: !973, inlinedAt: !533)
!982 = !DILocation(line: 315, column: 87, scope: !973, inlinedAt: !533)
!983 = !DILocation(line: 315, column: 98, scope: !973, inlinedAt: !533)
!984 = !DILocation(line: 315, column: 53, scope: !973, inlinedAt: !533)
!985 = !DILocation(line: 315, column: 110, scope: !973, inlinedAt: !533)
!986 = !DILocation(line: 315, column: 29, scope: !968, inlinedAt: !533)
!987 = !DILocation(line: 319, column: 39, scope: !516, inlinedAt: !533)
!988 = !DILocation(line: 319, column: 47, scope: !516, inlinedAt: !533)
!989 = !DILocation(line: 319, column: 53, scope: !516, inlinedAt: !533)
!990 = !DILocation(line: 319, column: 50, scope: !516, inlinedAt: !533)
!991 = !DILocalVariable(name: "b", arg: 2, scope: !992, file: !27, line: 32, type: !8)
!992 = distinct !DISubprogram(name: "gcd", scope: !27, file: !27, line: 32, type: !993, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!8, !8, !8}
!995 = !{!996, !991, !997}
!996 = !DILocalVariable(name: "a", arg: 1, scope: !992, file: !27, line: 32, type: !8)
!997 = !DILocalVariable(name: "c", scope: !998, file: !27, line: 36, type: !8)
!998 = distinct !DILexicalBlock(scope: !992, file: !27, line: 35, column: 5)
!999 = !DILocation(line: 0, scope: !992, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 46, column: 18, scope: !1001, inlinedAt: !1005)
!1001 = distinct !DISubprogram(name: "lcm", scope: !27, file: !27, line: 44, type: !993, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1003, !1004}
!1003 = !DILocalVariable(name: "a", arg: 1, scope: !1001, file: !27, line: 44, type: !8)
!1004 = !DILocalVariable(name: "b", arg: 2, scope: !1001, file: !27, line: 44, type: !8)
!1005 = distinct !DILocation(line: 319, column: 68, scope: !516, inlinedAt: !533)
!1006 = !DILocation(line: 36, column: 23, scope: !998, inlinedAt: !1000)
!1007 = !DILocation(line: 0, scope: !998, inlinedAt: !1000)
!1008 = !DILocation(line: 37, column: 14, scope: !1009, inlinedAt: !1000)
!1009 = distinct !DILexicalBlock(scope: !998, file: !27, line: 37, column: 13)
!1010 = !DILocation(line: 46, column: 16, scope: !1001, inlinedAt: !1005)
!1011 = !DILocation(line: 46, column: 32, scope: !1001, inlinedAt: !1005)
!1012 = !DILocation(line: 319, column: 102, scope: !516, inlinedAt: !533)
!1013 = !DILocation(line: 319, column: 37, scope: !516, inlinedAt: !533)
!1014 = !DILocation(line: 320, column: 41, scope: !1015, inlinedAt: !533)
!1015 = distinct !DILexicalBlock(scope: !516, file: !14, line: 320, column: 25)
!1016 = !DILocation(line: 320, column: 25, scope: !516, inlinedAt: !533)
!1017 = !DILocation(line: 322, column: 46, scope: !1018, inlinedAt: !533)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !14, line: 321, column: 21)
!1019 = !DILocation(line: 323, column: 25, scope: !1018, inlinedAt: !533)
!1020 = distinct !{!1020, !948, !1021, !583, !584}
!1021 = !DILocation(line: 326, column: 13, scope: !520, inlinedAt: !533)
!1022 = !DILocation(line: 327, column: 20, scope: !1023, inlinedAt: !533)
!1023 = distinct !DILexicalBlock(scope: !521, file: !14, line: 327, column: 17)
!1024 = !DILocation(line: 327, column: 17, scope: !1023, inlinedAt: !533)
!1025 = !DILocation(line: 327, column: 38, scope: !1023, inlinedAt: !533)
!1026 = !DILocation(line: 327, column: 45, scope: !1023, inlinedAt: !533)
!1027 = !DILocation(line: 327, column: 42, scope: !1023, inlinedAt: !533)
!1028 = !DILocation(line: 327, column: 17, scope: !521, inlinedAt: !533)
!1029 = !DILocation(line: 328, column: 21, scope: !1030, inlinedAt: !533)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !14, line: 328, column: 21)
!1031 = !DILocation(line: 328, column: 72, scope: !1030, inlinedAt: !533)
!1032 = !DILocation(line: 328, column: 21, scope: !1023, inlinedAt: !533)
!1033 = !DILocation(line: 330, column: 13, scope: !521, inlinedAt: !533)
!1034 = !DILocation(line: 331, column: 9, scope: !521, inlinedAt: !533)
!1035 = !DILocation(line: 336, column: 43, scope: !1036, inlinedAt: !533)
!1036 = distinct !DILexicalBlock(scope: !514, file: !14, line: 333, column: 13)
!1037 = !DILocation(line: 334, column: 58, scope: !1036, inlinedAt: !533)
!1038 = !DILocation(line: 334, column: 34, scope: !1036, inlinedAt: !533)
!1039 = !DILocation(line: 334, column: 89, scope: !1036, inlinedAt: !533)
!1040 = !DILocation(line: 334, column: 65, scope: !1036, inlinedAt: !533)
!1041 = !DILocation(line: 334, column: 63, scope: !1036, inlinedAt: !533)
!1042 = !DILocation(line: 334, column: 31, scope: !1036, inlinedAt: !533)
!1043 = !DILocation(line: 334, column: 16, scope: !1036, inlinedAt: !533)
!1044 = !DILocation(line: 334, column: 27, scope: !1036, inlinedAt: !533)
!1045 = !DILocation(line: 334, column: 13, scope: !1036, inlinedAt: !533)
!1046 = !DILocation(line: 336, column: 29, scope: !1036, inlinedAt: !533)
!1047 = !DILocation(line: 336, column: 59, scope: !1036, inlinedAt: !533)
!1048 = !DILocation(line: 336, column: 53, scope: !1036, inlinedAt: !533)
!1049 = !DILocation(line: 336, column: 51, scope: !1036, inlinedAt: !533)
!1050 = !DILocation(line: 336, column: 16, scope: !1036, inlinedAt: !533)
!1051 = !DILocation(line: 336, column: 27, scope: !1036, inlinedAt: !533)
!1052 = !DILocation(line: 337, column: 52, scope: !514, inlinedAt: !533)
!1053 = !DILocation(line: 337, column: 28, scope: !514, inlinedAt: !533)
!1054 = !DILocation(line: 337, column: 12, scope: !514, inlinedAt: !533)
!1055 = !DILocation(line: 337, column: 26, scope: !514, inlinedAt: !533)
!1056 = !DILocation(line: 110, column: 13, scope: !480, inlinedAt: !533)
!1057 = !DILocation(line: 340, column: 12, scope: !530, inlinedAt: !533)
!1058 = !DILocation(line: 340, column: 9, scope: !530, inlinedAt: !533)
!1059 = !DILocation(line: 340, column: 30, scope: !530, inlinedAt: !533)
!1060 = !DILocation(line: 340, column: 36, scope: !530, inlinedAt: !533)
!1061 = !DILocation(line: 340, column: 33, scope: !530, inlinedAt: !533)
!1062 = !DILocation(line: 340, column: 9, scope: !480, inlinedAt: !533)
!1063 = !DILocation(line: 342, column: 30, scope: !529, inlinedAt: !533)
!1064 = !DILocation(line: 342, column: 47, scope: !529, inlinedAt: !533)
!1065 = !DILocation(line: 0, scope: !992, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 342, column: 22, scope: !529, inlinedAt: !533)
!1067 = !DILocation(line: 34, column: 5, scope: !992, inlinedAt: !1066)
!1068 = !DILocation(line: 36, column: 23, scope: !998, inlinedAt: !1066)
!1069 = !DILocation(line: 0, scope: !998, inlinedAt: !1066)
!1070 = !DILocation(line: 37, column: 14, scope: !1009, inlinedAt: !1066)
!1071 = !DILocation(line: 0, scope: !529, inlinedAt: !533)
!1072 = !DILocation(line: 343, column: 25, scope: !529, inlinedAt: !533)
!1073 = !DILocation(line: 344, column: 25, scope: !529, inlinedAt: !533)
!1074 = !DILocation(line: 345, column: 18, scope: !529, inlinedAt: !533)
!1075 = !DILocation(line: 345, column: 9, scope: !529, inlinedAt: !533)
!1076 = !DILocation(line: 346, column: 5, scope: !529, inlinedAt: !533)
!1077 = !DILocation(line: 347, column: 17, scope: !1078, inlinedAt: !533)
!1078 = distinct !DILexicalBlock(scope: !530, file: !14, line: 347, column: 14)
!1079 = !DILocation(line: 347, column: 43, scope: !1078, inlinedAt: !533)
!1080 = !DILocation(line: 349, column: 18, scope: !1081, inlinedAt: !533)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !14, line: 348, column: 5)
!1082 = !DILocation(line: 349, column: 9, scope: !1081, inlinedAt: !533)
!1083 = !DILocation(line: 351, column: 9, scope: !1081, inlinedAt: !533)
!1084 = !DILocation(line: 354, column: 25, scope: !480, inlinedAt: !533)
!1085 = !DILocation(line: 354, column: 22, scope: !480, inlinedAt: !533)
!1086 = !DILocation(line: 354, column: 40, scope: !480, inlinedAt: !533)
!1087 = !DILocation(line: 354, column: 14, scope: !480, inlinedAt: !533)
!1088 = !DILocation(line: 354, column: 8, scope: !480, inlinedAt: !533)
!1089 = !DILocation(line: 354, column: 12, scope: !480, inlinedAt: !533)
!1090 = !{!393, !382, i64 104}
!1091 = !DILocation(line: 355, column: 10, scope: !1092, inlinedAt: !533)
!1092 = distinct !DILexicalBlock(scope: !480, file: !14, line: 355, column: 9)
!1093 = !DILocation(line: 355, column: 9, scope: !480, inlinedAt: !533)
!1094 = !DILocation(line: 357, column: 47, scope: !480, inlinedAt: !533)
!1095 = !DILocation(line: 357, column: 34, scope: !480, inlinedAt: !533)
!1096 = !DILocation(line: 357, column: 67, scope: !480, inlinedAt: !533)
!1097 = !DILocation(line: 357, column: 56, scope: !480, inlinedAt: !533)
!1098 = !DILocation(line: 357, column: 85, scope: !480, inlinedAt: !533)
!1099 = !DILocation(line: 357, column: 82, scope: !480, inlinedAt: !533)
!1100 = !DILocation(line: 357, column: 80, scope: !480, inlinedAt: !533)
!1101 = !DILocation(line: 357, column: 99, scope: !480, inlinedAt: !533)
!1102 = !DILocation(line: 357, column: 23, scope: !480, inlinedAt: !533)
!1103 = !DILocation(line: 358, column: 15, scope: !480, inlinedAt: !533)
!1104 = !{!396, !396, i64 0}
!1105 = !DILocation(line: 359, column: 23, scope: !1106, inlinedAt: !533)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !14, line: 359, column: 5)
!1107 = distinct !DILexicalBlock(scope: !480, file: !14, line: 359, column: 5)
!1108 = !DILocation(line: 359, column: 5, scope: !1107, inlinedAt: !533)
!1109 = !DILocation(line: 363, column: 28, scope: !1110, inlinedAt: !533)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !14, line: 363, column: 13)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !14, line: 360, column: 5)
!1112 = !DILocation(line: 361, column: 52, scope: !1111, inlinedAt: !533)
!1113 = !DILocation(line: 361, column: 34, scope: !1111, inlinedAt: !533)
!1114 = !DILocation(line: 361, column: 105, scope: !1111, inlinedAt: !533)
!1115 = !DILocation(line: 361, column: 23, scope: !1111, inlinedAt: !533)
!1116 = !DILocation(line: 362, column: 9, scope: !1111, inlinedAt: !533)
!1117 = !DILocation(line: 362, column: 21, scope: !1111, inlinedAt: !533)
!1118 = !DILocation(line: 363, column: 25, scope: !1110, inlinedAt: !533)
!1119 = !DILocation(line: 363, column: 13, scope: !1111, inlinedAt: !533)
!1120 = !DILocation(line: 365, column: 22, scope: !1121, inlinedAt: !533)
!1121 = distinct !DILexicalBlock(scope: !1110, file: !14, line: 364, column: 9)
!1122 = !DILocation(line: 365, column: 13, scope: !1121, inlinedAt: !533)
!1123 = !DILocation(line: 373, column: 1, scope: !480, inlinedAt: !533)
!1124 = !DILocation(line: 374, column: 9, scope: !480, inlinedAt: !533)
!1125 = !DILocation(line: 359, column: 47, scope: !1106, inlinedAt: !533)
!1126 = distinct !{!1126, !1108, !1127, !583, !584}
!1127 = !DILocation(line: 368, column: 5, scope: !1107, inlinedAt: !533)
!1128 = !DILocation(line: 375, column: 9, scope: !1129, inlinedAt: !533)
!1129 = distinct !DILexicalBlock(scope: !480, file: !14, line: 374, column: 9)
!1130 = !DILocation(line: 376, column: 9, scope: !480, inlinedAt: !533)
!1131 = !DILocation(line: 376, column: 9, scope: !1132, inlinedAt: !533)
!1132 = distinct !DILexicalBlock(scope: !480, file: !14, line: 376, column: 9)
!1133 = !DILocation(line: 377, column: 9, scope: !1132, inlinedAt: !533)
!1134 = !DILocation(line: 379, column: 1, scope: !480, inlinedAt: !533)
!1135 = !DILocation(line: 435, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !14, line: 435, column: 13)
!1137 = distinct !DILexicalBlock(scope: !534, file: !14, line: 434, column: 5)
!1138 = !DILocation(line: 435, column: 13, scope: !1136)
!1139 = !DILocation(line: 435, column: 13, scope: !1137)
!1140 = !DILocation(line: 436, column: 13, scope: !1136)
!1141 = !DILocation(line: 437, column: 9, scope: !1137)
!1142 = !DILocation(line: 438, column: 9, scope: !1137)
!1143 = !DILocation(line: 370, column: 5, scope: !480, inlinedAt: !533)
!1144 = !DILocation(line: 440, column: 5, scope: !289)
!1145 = !DILocation(line: 442, column: 29, scope: !289)
!1146 = !DILocation(line: 442, column: 26, scope: !289)
!1147 = !DILocation(line: 442, column: 11, scope: !289)
!1148 = !DILocation(line: 442, column: 24, scope: !289)
!1149 = !{!451, !395, i64 32}
!1150 = !DILocation(line: 443, column: 29, scope: !289)
!1151 = !DILocation(line: 443, column: 26, scope: !289)
!1152 = !DILocation(line: 443, column: 11, scope: !289)
!1153 = !DILocation(line: 443, column: 24, scope: !289)
!1154 = !{!451, !395, i64 36}
!1155 = !DILocation(line: 444, column: 11, scope: !289)
!1156 = !DILocation(line: 444, column: 15, scope: !289)
!1157 = !{!451, !395, i64 40}
!1158 = !DILocation(line: 446, column: 5, scope: !289)
!1159 = !DILocation(line: 447, column: 1, scope: !289)
!1160 = distinct !DISubprogram(name: "get_frame_total", scope: !14, file: !14, line: 449, type: !58, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1161)
!1161 = !{!1162, !1163}
!1162 = !DILocalVariable(name: "handle", arg: 1, scope: !1160, file: !14, line: 449, type: !26)
!1163 = !DILocalVariable(name: "h", scope: !1160, file: !14, line: 451, type: !355)
!1164 = !DILocation(line: 0, scope: !1160)
!1165 = !DILocation(line: 452, column: 15, scope: !1160)
!1166 = !DILocation(line: 452, column: 5, scope: !1160)
!1167 = distinct !DISubprogram(name: "read_frame", scope: !14, file: !14, line: 455, type: !271, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173}
!1169 = !DILocalVariable(name: "p_pic", arg: 1, scope: !1167, file: !14, line: 455, type: !64)
!1170 = !DILocalVariable(name: "handle", arg: 2, scope: !1167, file: !14, line: 455, type: !26)
!1171 = !DILocalVariable(name: "i_frame", arg: 3, scope: !1167, file: !14, line: 455, type: !6)
!1172 = !DILocalVariable(name: "h", scope: !1167, file: !14, line: 457, type: !355)
!1173 = !DILocalVariable(name: "ret", scope: !1167, file: !14, line: 458, type: !6)
!1174 = !DILocation(line: 0, scope: !1167)
!1175 = !DILocation(line: 458, column: 24, scope: !1167)
!1176 = !{!393, !382, i64 24}
!1177 = !DILocation(line: 458, column: 46, scope: !1167)
!1178 = !DILocation(line: 458, column: 15, scope: !1167)
!1179 = !DILocation(line: 460, column: 22, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !14, line: 460, column: 9)
!1181 = !DILocation(line: 460, column: 17, scope: !1180)
!1182 = !DILocation(line: 460, column: 32, scope: !1180)
!1183 = !DILocation(line: 460, column: 27, scope: !1180)
!1184 = !DILocation(line: 0, scope: !1180)
!1185 = !DILocation(line: 460, column: 9, scope: !1167)
!1186 = !DILocation(line: 463, column: 24, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !14, line: 461, column: 5)
!1188 = !DILocation(line: 464, column: 5, scope: !1187)
!1189 = !DILocation(line: 467, column: 13, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !14, line: 467, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !14, line: 466, column: 5)
!1192 = !DILocation(line: 467, column: 13, scope: !1191)
!1193 = !DILocation(line: 469, column: 22, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !14, line: 468, column: 9)
!1195 = !DILocation(line: 470, column: 91, scope: !1194)
!1196 = !DILocation(line: 469, column: 13, scope: !1194)
!1197 = !DILocation(line: 471, column: 22, scope: !1194)
!1198 = !DILocation(line: 471, column: 13, scope: !1194)
!1199 = !DILocation(line: 472, column: 20, scope: !1194)
!1200 = !DILocation(line: 473, column: 9, scope: !1194)
!1201 = !DILocation(line: 474, column: 36, scope: !1191)
!1202 = !DILocation(line: 474, column: 31, scope: !1191)
!1203 = !DILocation(line: 474, column: 12, scope: !1191)
!1204 = !DILocation(line: 474, column: 26, scope: !1191)
!1205 = !DILocation(line: 475, column: 66, scope: !1191)
!1206 = !DILocation(line: 475, column: 55, scope: !1191)
!1207 = !DILocation(line: 475, column: 84, scope: !1191)
!1208 = !DILocation(line: 475, column: 81, scope: !1191)
!1209 = !DILocation(line: 475, column: 79, scope: !1191)
!1210 = !DILocation(line: 475, column: 98, scope: !1191)
!1211 = !DILocation(line: 475, column: 24, scope: !1191)
!1212 = !{!1213, !396, i64 16}
!1213 = !{!"", !395, i64 0, !395, i64 4, !395, i64 8, !395, i64 12, !396, i64 16, !396, i64 24, !382, i64 32, !1214, i64 40, !1215, i64 96, !382, i64 128}
!1214 = !{!"", !395, i64 0, !395, i64 4, !383, i64 8, !383, i64 24}
!1215 = !{!"", !397, i64 0, !397, i64 8, !397, i64 16, !397, i64 24}
!1216 = !DILocation(line: 478, column: 5, scope: !1167)
!1217 = distinct !DISubprogram(name: "release_frame", scope: !14, file: !14, line: 481, type: !275, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DILocalVariable(name: "pic", arg: 1, scope: !1217, file: !14, line: 481, type: !64)
!1220 = !DILocalVariable(name: "handle", arg: 2, scope: !1217, file: !14, line: 481, type: !26)
!1221 = !DILocalVariable(name: "h", scope: !1217, file: !14, line: 483, type: !355)
!1222 = !DILocation(line: 0, scope: !1217)
!1223 = !DILocation(line: 484, column: 18, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1217, file: !14, line: 484, column: 9)
!1225 = !{!393, !382, i64 32}
!1226 = !DILocation(line: 484, column: 9, scope: !1224)
!1227 = !DILocation(line: 484, column: 9, scope: !1217)
!1228 = !DILocation(line: 485, column: 48, scope: !1224)
!1229 = !DILocation(line: 485, column: 16, scope: !1224)
!1230 = !DILocation(line: 485, column: 9, scope: !1224)
!1231 = !DILocation(line: 487, column: 1, scope: !1217)
!1232 = distinct !DISubprogram(name: "close_file", scope: !14, file: !14, line: 489, type: !58, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1233)
!1233 = !{!1234, !1235}
!1234 = !DILocalVariable(name: "handle", arg: 1, scope: !1232, file: !14, line: 489, type: !26)
!1235 = !DILocalVariable(name: "h", scope: !1232, file: !14, line: 491, type: !355)
!1236 = !DILocation(line: 0, scope: !1232)
!1237 = !DILocation(line: 492, column: 12, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !14, line: 492, column: 9)
!1239 = !DILocation(line: 492, column: 9, scope: !1238)
!1240 = !DILocation(line: 492, column: 9, scope: !1232)
!1241 = !DILocation(line: 493, column: 9, scope: !1238)
!1242 = !DILocation(line: 494, column: 14, scope: !1232)
!1243 = !{!393, !382, i64 48}
!1244 = !DILocation(line: 494, column: 29, scope: !1232)
!1245 = !DILocation(line: 494, column: 5, scope: !1232)
!1246 = !DILocation(line: 495, column: 5, scope: !1232)
!1247 = !DILocation(line: 496, column: 5, scope: !1232)
!1248 = !DISubprogram(name: "fclose", scope: !1249, file: !1249, line: 213, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1252)
!1249 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!6, !297}
!1252 = !{}
!1253 = !DISubprogram(name: "fgets", scope: !1249, file: !1249, line: 564, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1252)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!23, !1256, !6, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!1257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !297)
!1258 = !DISubprogram(name: "ftell", scope: !1249, file: !1249, line: 689, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1252)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!12, !297}
!1261 = !DISubprogram(name: "fseek", scope: !1249, file: !1249, line: 684, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1252)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!6, !297, !12, !6}
!1264 = distinct !DISubprogram(name: "correct_fps", scope: !14, file: !14, line: 54, type: !1265, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!7, !7, !355}
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1268 = !DILocalVariable(name: "fps", arg: 1, scope: !1264, file: !14, line: 54, type: !7)
!1269 = !DILocalVariable(name: "h", arg: 2, scope: !1264, file: !14, line: 54, type: !355)
!1270 = !DILocalVariable(name: "i", scope: !1264, file: !14, line: 56, type: !6)
!1271 = !DILocalVariable(name: "fps_num", scope: !1264, file: !14, line: 57, type: !365)
!1272 = !DILocalVariable(name: "fps_den", scope: !1264, file: !14, line: 57, type: !365)
!1273 = !DILocalVariable(name: "exponent", scope: !1264, file: !14, line: 58, type: !7)
!1274 = !DILocalVariable(name: "fps_sig", scope: !1264, file: !14, line: 59, type: !7)
!1275 = !DILocation(line: 0, scope: !1264)
!1276 = !DILocation(line: 0, scope: !772, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 59, column: 22, scope: !1264)
!1278 = !DILocation(line: 47, column: 33, scope: !772, inlinedAt: !1277)
!1279 = !DILocation(line: 47, column: 26, scope: !772, inlinedAt: !1277)
!1280 = !DILocation(line: 47, column: 17, scope: !772, inlinedAt: !1277)
!1281 = !DILocation(line: 48, column: 18, scope: !772, inlinedAt: !1277)
!1282 = !DILocation(line: 63, column: 26, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 61, column: 5)
!1284 = !DILocation(line: 63, column: 34, scope: !1283)
!1285 = !DILocation(line: 63, column: 19, scope: !1283)
!1286 = !DILocation(line: 63, column: 46, scope: !1283)
!1287 = !DILocation(line: 64, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !14, line: 64, column: 13)
!1289 = !DILocation(line: 64, column: 13, scope: !1283)
!1290 = !DILocation(line: 72, column: 9, scope: !1283)
!1291 = !DILocation(line: 62, column: 21, scope: !1283)
!1292 = distinct !{!1292, !1293, !1294, !584}
!1293 = !DILocation(line: 60, column: 5, scope: !1264)
!1294 = !DILocation(line: 73, column: 5, scope: !1264)
!1295 = !DILocation(line: 66, column: 22, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1288, file: !14, line: 65, column: 9)
!1297 = !DILocation(line: 66, column: 13, scope: !1296)
!1298 = !DILocation(line: 68, column: 13, scope: !1296)
!1299 = !DILocation(line: 70, column: 20, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1283, file: !14, line: 70, column: 13)
!1301 = !DILocation(line: 70, column: 36, scope: !1300)
!1302 = !DILocation(line: 70, column: 47, scope: !1300)
!1303 = !DILocation(line: 70, column: 58, scope: !1300)
!1304 = !DILocation(line: 70, column: 13, scope: !1300)
!1305 = !DILocation(line: 70, column: 70, scope: !1300)
!1306 = !DILocation(line: 70, column: 13, scope: !1283)
!1307 = !DILocation(line: 74, column: 12, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 74, column: 9)
!1309 = !DILocation(line: 74, column: 9, scope: !1308)
!1310 = !DILocation(line: 74, column: 9, scope: !1264)
!1311 = !DILocation(line: 76, column: 30, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !14, line: 75, column: 5)
!1313 = !DILocation(line: 76, column: 27, scope: !1312)
!1314 = !DILocation(line: 0, scope: !992, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 46, column: 18, scope: !1001, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 76, column: 45, scope: !1312)
!1317 = !DILocation(line: 36, column: 23, scope: !998, inlinedAt: !1315)
!1318 = !DILocation(line: 0, scope: !998, inlinedAt: !1315)
!1319 = !DILocation(line: 37, column: 14, scope: !1009, inlinedAt: !1315)
!1320 = !DILocation(line: 46, column: 16, scope: !1001, inlinedAt: !1316)
!1321 = !DILocation(line: 46, column: 32, scope: !1001, inlinedAt: !1316)
!1322 = !DILocation(line: 76, column: 79, scope: !1312)
!1323 = !DILocation(line: 76, column: 25, scope: !1312)
!1324 = !DILocation(line: 77, column: 29, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1312, file: !14, line: 77, column: 13)
!1326 = !DILocation(line: 77, column: 13, scope: !1312)
!1327 = !DILocation(line: 78, column: 34, scope: !1325)
!1328 = !DILocation(line: 78, column: 13, scope: !1325)
!1329 = !DILocation(line: 81, column: 1, scope: !1264)
!1330 = distinct !DISubprogram(name: "try_mkv_timebase_den", scope: !14, file: !14, line: 83, type: !1331, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!6, !497, !355, !6}
!1333 = !{!1334, !1335, !1336, !1337, !1339, !1342, !1343}
!1334 = !DILocalVariable(name: "fpss", arg: 1, scope: !1330, file: !14, line: 83, type: !497)
!1335 = !DILocalVariable(name: "h", arg: 2, scope: !1330, file: !14, line: 83, type: !355)
!1336 = !DILocalVariable(name: "loop_num", arg: 3, scope: !1330, file: !14, line: 83, type: !6)
!1337 = !DILocalVariable(name: "num", scope: !1338, file: !14, line: 87, type: !6)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !14, line: 87, column: 5)
!1339 = !DILocalVariable(name: "fps_den", scope: !1340, file: !14, line: 89, type: !365)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !14, line: 88, column: 5)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !14, line: 87, column: 5)
!1342 = !DILocalVariable(name: "exponent", scope: !1340, file: !14, line: 90, type: !7)
!1343 = !DILocalVariable(name: "fps_sig", scope: !1340, file: !14, line: 91, type: !7)
!1344 = !DILocation(line: 0, scope: !1330)
!1345 = !DILocation(line: 85, column: 8, scope: !1330)
!1346 = !DILocation(line: 85, column: 21, scope: !1330)
!1347 = !DILocation(line: 86, column: 8, scope: !1330)
!1348 = !DILocation(line: 86, column: 21, scope: !1330)
!1349 = !DILocation(line: 0, scope: !1338)
!1350 = !DILocation(line: 87, column: 27, scope: !1341)
!1351 = !DILocation(line: 87, column: 5, scope: !1338)
!1352 = !DILocation(line: 87, column: 42, scope: !1341)
!1353 = distinct !{!1353, !1351, !1354, !583, !584}
!1354 = !DILocation(line: 100, column: 5, scope: !1338)
!1355 = !DILocation(line: 91, column: 36, scope: !1340)
!1356 = !DILocation(line: 0, scope: !772, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 91, column: 26, scope: !1340)
!1358 = !DILocation(line: 47, column: 33, scope: !772, inlinedAt: !1357)
!1359 = !DILocation(line: 47, column: 26, scope: !772, inlinedAt: !1357)
!1360 = !DILocation(line: 47, column: 17, scope: !772, inlinedAt: !1357)
!1361 = !DILocation(line: 48, column: 18, scope: !772, inlinedAt: !1357)
!1362 = !DILocation(line: 0, scope: !1340)
!1363 = !DILocation(line: 92, column: 43, scope: !1340)
!1364 = !DILocation(line: 92, column: 19, scope: !1340)
!1365 = !DILocation(line: 92, column: 55, scope: !1340)
!1366 = !DILocation(line: 93, column: 27, scope: !1340)
!1367 = !DILocation(line: 93, column: 35, scope: !1340)
!1368 = !DILocation(line: 93, column: 41, scope: !1340)
!1369 = !DILocation(line: 93, column: 38, scope: !1340)
!1370 = !DILocation(line: 0, scope: !992, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 93, column: 56, scope: !1340)
!1372 = !DILocation(line: 36, column: 23, scope: !998, inlinedAt: !1371)
!1373 = !DILocation(line: 0, scope: !998, inlinedAt: !1371)
!1374 = !DILocation(line: 37, column: 14, scope: !1009, inlinedAt: !1371)
!1375 = !DILocation(line: 93, column: 90, scope: !1340)
!1376 = !DILocation(line: 93, column: 25, scope: !1340)
!1377 = !DILocation(line: 94, column: 42, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1340, file: !14, line: 94, column: 13)
!1379 = !DILocation(line: 96, column: 22, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1378, file: !14, line: 95, column: 9)
!1381 = !DILocation(line: 96, column: 13, scope: !1380)
!1382 = !DILocation(line: 102, column: 1, scope: !1330)
