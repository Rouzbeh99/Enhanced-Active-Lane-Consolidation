; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/input/y4m.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/y4m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.y4m_hnd_t = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@y4m_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"420\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"y4m [error]: colorspace unhandled\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"y4m [error]: bad header magic (%x <=> %s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"y4m [error]: bad frame header!\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr nocapture noundef writeonly %info, ptr nocapture noundef readnone %opt) #0 !dbg !306 {
entry:
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %header = alloca [90 x i8], align 16
  %tokend = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !308, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !309, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %info, metadata !310, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %opt, metadata !311, metadata !DIExpression()), !dbg !392
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12, !dbg !393
  call void @llvm.dbg.value(metadata ptr %call, metadata !312, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #13, !dbg !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #13, !dbg !394
  call void @llvm.lifetime.start.p0(i64 90, ptr nonnull %header) #13, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %header, metadata !382, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tokend) #13, !dbg !397
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 0, metadata !389, metadata !DIExpression()), !dbg !392
  %tobool.not = icmp eq ptr %call, null, !dbg !398
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !400

if.end:                                           ; preds = %entry
  %next_frame = getelementptr inbounds %struct.y4m_hnd_t, ptr %call, i64 0, i32 3, !dbg !401
  store i32 0, ptr %next_frame, align 8, !dbg !402, !tbaa !403
  %vfr = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 10, !dbg !409
  store i32 0, ptr %vfr, align 4, !dbg !410, !tbaa !411
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %psz_filename, ptr noundef nonnull dereferenceable(2) @.str) #14, !dbg !413
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !413
  br i1 %tobool2.not, label %if.then3, label %if.else, !dbg !415

if.then3:                                         ; preds = %if.end
  %0 = load ptr, ptr @stdin, align 8, !dbg !416, !tbaa !417
  br label %if.end6, !dbg !418

if.else:                                          ; preds = %if.end
  %call4 = tail call ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.1), !dbg !419
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %storemerge = phi ptr [ %0, %if.then3 ], [ %call4, %if.else ], !dbg !420
  store ptr %storemerge, ptr %call, align 8, !dbg !420, !tbaa !421
  %cmp = icmp eq ptr %storemerge, null, !dbg !422
  br i1 %cmp, label %cleanup, label %if.end9, !dbg !424

if.end9:                                          ; preds = %if.end6
  %frame_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %call, i64 0, i32 5, !dbg !425
  store i32 6, ptr %frame_header_len, align 8, !dbg !426, !tbaa !427
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !392
  %call12196 = tail call i32 @fgetc(ptr noundef nonnull %storemerge), !dbg !428
  %conv197 = trunc i32 %call12196 to i8, !dbg !428
  store i8 %conv197, ptr %header, align 16, !dbg !432, !tbaa !433
  %sext.mask198 = and i32 %call12196, 255, !dbg !434
  %cmp16199 = icmp eq i32 %sext.mask198, 10, !dbg !434
  br i1 %cmp16199, label %lor.lhs.false, label %for.inc, !dbg !436

for.inc:                                          ; preds = %if.end9, %for.inc.for.body_crit_edge
  %indvars.iv200 = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv200, metadata !379, metadata !DIExpression()), !dbg !392
  %indvars.iv.next = add nuw nsw i64 %indvars.iv200, 1, !dbg !437
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !379, metadata !DIExpression()), !dbg !392
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80, !dbg !438
  br i1 %exitcond.not, label %cleanup, label %for.inc.for.body_crit_edge, !dbg !439, !llvm.loop !440

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load ptr, ptr %call, align 8, !dbg !444, !tbaa !421
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !379, metadata !DIExpression()), !dbg !392
  %call12 = tail call i32 @fgetc(ptr noundef %.pre), !dbg !428
  %conv = trunc i32 %call12 to i8, !dbg !428
  %arrayidx = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %indvars.iv.next, !dbg !445
  store i8 %conv, ptr %arrayidx, align 1, !dbg !432, !tbaa !433
  %sext.mask = and i32 %call12, 255, !dbg !434
  %cmp16 = icmp eq i32 %sext.mask, 10, !dbg !434
  br i1 %cmp16, label %lor.lhs.false, label %for.inc, !dbg !436

lor.lhs.false:                                    ; preds = %for.inc.for.body_crit_edge, %if.end9
  %indvars.iv.lcssa = phi i64 [ 0, %if.end9 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %add = add nuw i64 %indvars.iv.lcssa, 1, !dbg !446
  %idxprom19 = and i64 %add, 4294967295, !dbg !448
  %arrayidx20 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom19, !dbg !448
  store i8 32, ptr %arrayidx20, align 1, !dbg !449, !tbaa !433
  %add21 = add nuw i64 %indvars.iv.lcssa, 2, !dbg !450
  %idxprom22 = and i64 %add21, 4294967295, !dbg !451
  %arrayidx23 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom22, !dbg !451
  store i8 0, ptr %arrayidx23, align 1, !dbg !452, !tbaa !433
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %header, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9), !dbg !453
  %tobool28.not = icmp eq i32 %bcmp, 0, !dbg !453
  br i1 %tobool28.not, label %if.end30, label %cleanup, !dbg !455

if.end30:                                         ; preds = %lor.lhs.false
  %1 = trunc i64 %indvars.iv.lcssa to i32, !dbg !446
  %add31 = add nuw nsw i32 %1, 1, !dbg !456
  %idxprom32 = zext i32 %add31 to i64, !dbg !457
  %arrayidx33 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom32, !dbg !457
  call void @llvm.dbg.value(metadata ptr %arrayidx33, metadata !387, metadata !DIExpression()), !dbg !392
  %seq_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %call, i64 0, i32 4, !dbg !458
  store i32 %add31, ptr %seq_header_len, align 4, !dbg !459, !tbaa !460
  call void @llvm.dbg.value(metadata ptr %header, metadata !390, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !461
  call void @llvm.dbg.value(metadata i32 0, metadata !389, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !392
  %cmp37183 = icmp ugt i32 %1, 9, !dbg !462
  br i1 %cmp37183, label %for.body39.lr.ph, label %for.cond.cleanup.thread, !dbg !464

for.body39.lr.ph:                                 ; preds = %if.end30
  %arrayidx35 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 10, !dbg !465
  call void @llvm.dbg.value(metadata ptr %arrayidx35, metadata !390, metadata !DIExpression()), !dbg !461
  %sar_width = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 5
  %sar_height = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 6
  %fps_num = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 1
  %fps_den = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 2
  %interlaced68 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 4
  %tff66 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 7
  %height = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 3
  %height52 = getelementptr inbounds %struct.y4m_hnd_t, ptr %call, i64 0, i32 2
  %width = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 11
  %width48 = getelementptr inbounds %struct.y4m_hnd_t, ptr %call, i64 0, i32 1
  br label %for.body39, !dbg !464

for.cond.cleanup:                                 ; preds = %for.inc102
  %cmp105 = icmp eq i32 %colorspace.2, 0, !dbg !466
  br i1 %cmp105, label %for.cond.cleanup.thread, label %2, !dbg !468

for.cond.cleanup.thread:                          ; preds = %if.end30, %for.cond.cleanup
  %alt_colorspace.0.lcssa193 = phi i32 [ %alt_colorspace.2, %for.cond.cleanup ], [ 0, %if.end30 ]
  br label %2, !dbg !468

2:                                                ; preds = %for.cond.cleanup, %for.cond.cleanup.thread
  %3 = phi i32 [ %alt_colorspace.0.lcssa193, %for.cond.cleanup.thread ], [ %colorspace.2, %for.cond.cleanup ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !388, metadata !DIExpression()), !dbg !392
  %4 = icmp ult i32 %3, 2, !dbg !469
  br i1 %4, label %if.end117, label %if.then115, !dbg !471

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc102
  %tokstart.0186 = phi ptr [ %arrayidx35, %for.body39.lr.ph ], [ %incdec.ptr103, %for.inc102 ]
  %alt_colorspace.0185 = phi i32 [ 0, %for.body39.lr.ph ], [ %alt_colorspace.2, %for.inc102 ]
  %colorspace.0184 = phi i32 [ 0, %for.body39.lr.ph ], [ %colorspace.2, %for.inc102 ]
  call void @llvm.dbg.value(metadata ptr %tokstart.0186, metadata !390, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i32 %alt_colorspace.0185, metadata !389, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 %colorspace.0184, metadata !388, metadata !DIExpression()), !dbg !392
  %5 = load i8, ptr %tokstart.0186, align 1, !dbg !472, !tbaa !433
  %cmp41 = icmp eq i8 %5, 32, !dbg !475
  br i1 %cmp41, label %for.inc102, label %if.end44, !dbg !476

if.end44:                                         ; preds = %for.body39
  %conv40 = sext i8 %5 to i32, !dbg !472
  %incdec.ptr = getelementptr inbounds i8, ptr %tokstart.0186, i64 1, !dbg !477
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !390, metadata !DIExpression()), !dbg !461
  switch i32 %conv40, label %for.inc102 [
    i32 87, label %sw.bb
    i32 72, label %sw.bb49
    i32 67, label %sw.bb53
    i32 73, label %sw.bb60
    i32 70, label %sw.bb69
    i32 65, label %sw.bb79
    i32 88, label %sw.bb90
  ], !dbg !478

sw.bb:                                            ; preds = %if.end44
  call void @llvm.dbg.value(metadata ptr %tokend, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !392
  %call46 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #13, !dbg !479
  %conv47 = trunc i64 %call46 to i32, !dbg !479
  store i32 %conv47, ptr %width, align 4, !dbg !481, !tbaa !482
  store i32 %conv47, ptr %width48, align 8, !dbg !483, !tbaa !484
  %6 = load ptr, ptr %tokend, align 8, !dbg !485, !tbaa !417
  call void @llvm.dbg.value(metadata ptr %6, metadata !386, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %6, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !486

sw.bb49:                                          ; preds = %if.end44
  call void @llvm.dbg.value(metadata ptr %tokend, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !392
  %call50 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #13, !dbg !487
  %conv51 = trunc i64 %call50 to i32, !dbg !487
  store i32 %conv51, ptr %height, align 4, !dbg !488, !tbaa !489
  store i32 %conv51, ptr %height52, align 4, !dbg !490, !tbaa !491
  %7 = load ptr, ptr %tokend, align 8, !dbg !492, !tbaa !417
  call void @llvm.dbg.value(metadata ptr %7, metadata !386, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %7, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !493

sw.bb53:                                          ; preds = %if.end44
  %call54 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull %incdec.ptr, i64 noundef 3) #14, !dbg !494
  %tobool55.not = icmp eq i32 %call54, 0, !dbg !494
  %. = select i1 %tobool55.not, i32 1, i32 9
  call void @llvm.dbg.value(metadata i32 %., metadata !388, metadata !DIExpression()), !dbg !392
  %call59 = call ptr @strchr(ptr noundef nonnull %incdec.ptr, i32 noundef 32) #14, !dbg !496
  call void @llvm.dbg.value(metadata ptr %call59, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !497

sw.bb60:                                          ; preds = %if.end44
  %incdec.ptr61 = getelementptr inbounds i8, ptr %tokstart.0186, i64 2, !dbg !498
  call void @llvm.dbg.value(metadata ptr %incdec.ptr61, metadata !390, metadata !DIExpression()), !dbg !461
  %8 = load i8, ptr %incdec.ptr, align 1, !dbg !499, !tbaa !433
  %conv62 = sext i8 %8 to i32, !dbg !499
  switch i32 %conv62, label %for.inc102 [
    i32 116, label %sw.bb63
    i32 98, label %sw.bb64
    i32 109, label %sw.bb67
  ], !dbg !500

sw.bb63:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !501, !tbaa !503
  store i32 1, ptr %tff66, align 4, !dbg !504, !tbaa !505
  br label %for.inc102, !dbg !506

sw.bb64:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !507, !tbaa !503
  store i32 0, ptr %tff66, align 4, !dbg !508, !tbaa !505
  br label %for.inc102, !dbg !509

sw.bb67:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !510, !tbaa !503
  br label %for.inc102, !dbg !511

sw.bb69:                                          ; preds = %if.end44
  call void @llvm.dbg.value(metadata ptr %n, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @llvm.dbg.value(metadata ptr %d, metadata !381, metadata !DIExpression(DW_OP_deref)), !dbg !392
  %call70 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #13, !dbg !512
  %cmp71 = icmp eq i32 %call70, 2, !dbg !514
  %9 = load i32, ptr %n, align 4
  call void @llvm.dbg.value(metadata i32 %9, metadata !380, metadata !DIExpression()), !dbg !392
  %tobool73 = icmp ne i32 %9, 0
  %or.cond = select i1 %cmp71, i1 %tobool73, i1 false, !dbg !515
  %10 = load i32, ptr %d, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !381, metadata !DIExpression()), !dbg !392
  %tobool75 = icmp ne i32 %10, 0
  %or.cond126 = select i1 %or.cond, i1 %tobool75, i1 false, !dbg !515
  br i1 %or.cond126, label %if.then76, label %if.end77, !dbg !515

if.then76:                                        ; preds = %sw.bb69
  call void @llvm.dbg.value(metadata ptr %n, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @llvm.dbg.value(metadata ptr %d, metadata !381, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #13, !dbg !516
  %11 = load i32, ptr %n, align 4, !dbg !518, !tbaa !519
  call void @llvm.dbg.value(metadata i32 %11, metadata !380, metadata !DIExpression()), !dbg !392
  store i32 %11, ptr %fps_num, align 4, !dbg !520, !tbaa !521
  %12 = load i32, ptr %d, align 4, !dbg !522, !tbaa !519
  call void @llvm.dbg.value(metadata i32 %12, metadata !381, metadata !DIExpression()), !dbg !392
  store i32 %12, ptr %fps_den, align 4, !dbg !523, !tbaa !524
  br label %if.end77, !dbg !525

if.end77:                                         ; preds = %if.then76, %sw.bb69
  %call78 = call ptr @strchr(ptr noundef nonnull %incdec.ptr, i32 noundef 32) #14, !dbg !526
  call void @llvm.dbg.value(metadata ptr %call78, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !527

sw.bb79:                                          ; preds = %if.end44
  call void @llvm.dbg.value(metadata ptr %n, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @llvm.dbg.value(metadata ptr %d, metadata !381, metadata !DIExpression(DW_OP_deref)), !dbg !392
  %call80 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #13, !dbg !528
  %cmp81 = icmp eq i32 %call80, 2, !dbg !530
  %13 = load i32, ptr %n, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !380, metadata !DIExpression()), !dbg !392
  %tobool84 = icmp ne i32 %13, 0
  %or.cond127 = select i1 %cmp81, i1 %tobool84, i1 false, !dbg !531
  %14 = load i32, ptr %d, align 4
  call void @llvm.dbg.value(metadata i32 %14, metadata !381, metadata !DIExpression()), !dbg !392
  %tobool86 = icmp ne i32 %14, 0
  %or.cond128 = select i1 %or.cond127, i1 %tobool86, i1 false, !dbg !531
  br i1 %or.cond128, label %if.then87, label %if.end88, !dbg !531

if.then87:                                        ; preds = %sw.bb79
  call void @llvm.dbg.value(metadata ptr %n, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @llvm.dbg.value(metadata ptr %d, metadata !381, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #13, !dbg !532
  %15 = load i32, ptr %n, align 4, !dbg !534, !tbaa !519
  call void @llvm.dbg.value(metadata i32 %15, metadata !380, metadata !DIExpression()), !dbg !392
  store i32 %15, ptr %sar_width, align 4, !dbg !535, !tbaa !536
  %16 = load i32, ptr %d, align 4, !dbg !537, !tbaa !519
  call void @llvm.dbg.value(metadata i32 %16, metadata !381, metadata !DIExpression()), !dbg !392
  store i32 %16, ptr %sar_height, align 4, !dbg !538, !tbaa !539
  br label %if.end88, !dbg !540

if.end88:                                         ; preds = %if.then87, %sw.bb79
  %call89 = call ptr @strchr(ptr noundef nonnull %incdec.ptr, i32 noundef 32) #14, !dbg !541
  call void @llvm.dbg.value(metadata ptr %call89, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !542

sw.bb90:                                          ; preds = %if.end44
  %call91 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.5, ptr noundef nonnull %incdec.ptr, i64 noundef 6) #14, !dbg !543
  %tobool92.not = icmp eq i32 %call91, 0, !dbg !543
  br i1 %tobool92.not, label %if.then93, label %if.end99, !dbg !545

if.then93:                                        ; preds = %sw.bb90
  %add.ptr = getelementptr inbounds i8, ptr %tokstart.0186, i64 7, !dbg !546
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !390, metadata !DIExpression()), !dbg !461
  %call94 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull %add.ptr, i64 noundef 3) #14, !dbg !548
  %tobool95.not = icmp eq i32 %call94, 0, !dbg !548
  %.178 = select i1 %tobool95.not, i32 1, i32 9
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %sw.bb90
  %alt_colorspace.1 = phi i32 [ %alt_colorspace.0185, %sw.bb90 ], [ %.178, %if.then93 ], !dbg !392
  %tokstart.1 = phi ptr [ %incdec.ptr, %sw.bb90 ], [ %add.ptr, %if.then93 ], !dbg !550
  call void @llvm.dbg.value(metadata ptr %tokstart.1, metadata !390, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i32 %alt_colorspace.1, metadata !389, metadata !DIExpression()), !dbg !392
  %call100 = call ptr @strchr(ptr noundef nonnull %tokstart.1, i32 noundef 32) #14, !dbg !551
  call void @llvm.dbg.value(metadata ptr %call100, metadata !390, metadata !DIExpression()), !dbg !461
  br label %for.inc102, !dbg !552

for.inc102:                                       ; preds = %sw.bb, %sw.bb49, %sw.bb53, %if.end77, %if.end88, %if.end99, %if.end44, %sw.bb60, %sw.bb67, %sw.bb64, %sw.bb63, %for.body39
  %colorspace.2 = phi i32 [ %colorspace.0184, %for.body39 ], [ %colorspace.0184, %if.end44 ], [ %colorspace.0184, %if.end99 ], [ %colorspace.0184, %if.end88 ], [ %colorspace.0184, %if.end77 ], [ %colorspace.0184, %sw.bb60 ], [ %colorspace.0184, %sw.bb67 ], [ %colorspace.0184, %sw.bb64 ], [ %colorspace.0184, %sw.bb63 ], [ %., %sw.bb53 ], [ %colorspace.0184, %sw.bb49 ], [ %colorspace.0184, %sw.bb ], !dbg !392
  %alt_colorspace.2 = phi i32 [ %alt_colorspace.0185, %for.body39 ], [ %alt_colorspace.0185, %if.end44 ], [ %alt_colorspace.1, %if.end99 ], [ %alt_colorspace.0185, %if.end88 ], [ %alt_colorspace.0185, %if.end77 ], [ %alt_colorspace.0185, %sw.bb60 ], [ %alt_colorspace.0185, %sw.bb67 ], [ %alt_colorspace.0185, %sw.bb64 ], [ %alt_colorspace.0185, %sw.bb63 ], [ %alt_colorspace.0185, %sw.bb53 ], [ %alt_colorspace.0185, %sw.bb49 ], [ %alt_colorspace.0185, %sw.bb ], !dbg !553
  %tokstart.2 = phi ptr [ %tokstart.0186, %for.body39 ], [ %incdec.ptr, %if.end44 ], [ %call100, %if.end99 ], [ %call89, %if.end88 ], [ %call78, %if.end77 ], [ %incdec.ptr61, %sw.bb60 ], [ %incdec.ptr61, %sw.bb67 ], [ %incdec.ptr61, %sw.bb64 ], [ %incdec.ptr61, %sw.bb63 ], [ %call59, %sw.bb53 ], [ %7, %sw.bb49 ], [ %6, %sw.bb ], !dbg !461
  call void @llvm.dbg.value(metadata ptr %tokstart.2, metadata !390, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i32 %alt_colorspace.2, metadata !389, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 %colorspace.2, metadata !388, metadata !DIExpression()), !dbg !392
  %incdec.ptr103 = getelementptr inbounds i8, ptr %tokstart.2, i64 1, !dbg !554
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !390, metadata !DIExpression()), !dbg !461
  %cmp37 = icmp ult ptr %incdec.ptr103, %arrayidx33, !dbg !462
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup, !dbg !464, !llvm.loop !555

if.then115:                                       ; preds = %2
  %17 = load ptr, ptr @stderr, align 8, !dbg !557, !tbaa !417
  %18 = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %17) #15, !dbg !559
  br label %cleanup, !dbg !560

if.end117:                                        ; preds = %2
  store ptr %call, ptr %p_handle, align 8, !dbg !561, !tbaa !417
  br label %cleanup, !dbg !562

cleanup:                                          ; preds = %for.inc, %lor.lhs.false, %if.end6, %entry, %if.end117, %if.then115
  %retval.0 = phi i32 [ -1, %if.then115 ], [ 0, %if.end117 ], [ -1, %entry ], [ -1, %if.end6 ], [ -1, %lor.lhs.false ], [ -1, %for.inc ], !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tokend) #13, !dbg !563
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %header) #13, !dbg !563
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #13, !dbg !563
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #13, !dbg !563
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !566, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata ptr %handle, metadata !567, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i32 0, metadata !568, metadata !DIExpression()), !dbg !573
  %0 = load ptr, ptr %handle, align 8, !dbg !574, !tbaa !421
  %call2 = tail call i64 @ftell(ptr noundef %0), !dbg !575
  call void @llvm.dbg.value(metadata i64 %call2, metadata !569, metadata !DIExpression()), !dbg !576
  %1 = load ptr, ptr %handle, align 8, !dbg !577, !tbaa !421
  %call4 = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2), !dbg !578
  %2 = load ptr, ptr %handle, align 8, !dbg !579, !tbaa !421
  %call6 = tail call i64 @ftell(ptr noundef %2), !dbg !580
  call void @llvm.dbg.value(metadata i64 %call6, metadata !572, metadata !DIExpression()), !dbg !576
  %3 = load ptr, ptr %handle, align 8, !dbg !581, !tbaa !421
  %call8 = tail call i32 @fseek(ptr noundef %3, i64 noundef %call2, i32 noundef 0), !dbg !582
  call void @llvm.dbg.value(metadata i64 undef, metadata !568, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !573
  %seq_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 4, !dbg !583
  %4 = load i32, ptr %seq_header_len, align 4, !dbg !583, !tbaa !460
  %conv = sext i32 %4 to i64, !dbg !584
  %sub = sub i64 %call6, %conv, !dbg !585
  %width = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 1, !dbg !586
  %5 = load i32, ptr %width, align 8, !dbg !586, !tbaa !484
  %height = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 2, !dbg !587
  %6 = load i32, ptr %height, align 4, !dbg !587, !tbaa !491
  %mul = mul i32 %5, 3, !dbg !588
  %mul9 = mul i32 %mul, %6, !dbg !589
  %div = sdiv i32 %mul9, 2, !dbg !590
  %frame_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 5, !dbg !591
  %7 = load i32, ptr %frame_header_len, align 8, !dbg !591, !tbaa !427
  %add = add nsw i32 %div, %7, !dbg !592
  %conv10 = sext i32 %add to i64, !dbg !593
  %div11 = udiv i64 %sub, %conv10, !dbg !594
  call void @llvm.dbg.value(metadata i64 %div11, metadata !568, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !573
  %conv12 = trunc i64 %div11 to i32, !dbg !595
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !568, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 undef, metadata !568, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !573
  ret i32 %conv12, !dbg !596
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind uwtable
define internal i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #1 !dbg !597 {
entry:
  %header.i = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !599, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata ptr %handle, metadata !600, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %i_frame, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata ptr %handle, metadata !602, metadata !DIExpression()), !dbg !603
  %next_frame = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 3, !dbg !604
  %0 = load i32, ptr %next_frame, align 8, !dbg !604, !tbaa !403
  %cmp = icmp slt i32 %0, %i_frame, !dbg !606
  br i1 %cmp, label %if.then, label %if.end17, !dbg !607

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !608, !tbaa !421
  %conv = sext i32 %i_frame to i64, !dbg !611
  %width = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 1, !dbg !612
  %2 = load i32, ptr %width, align 8, !dbg !612, !tbaa !484
  %height = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 2, !dbg !613
  %3 = load i32, ptr %height, align 4, !dbg !613, !tbaa !491
  %mul = mul i32 %2, 3, !dbg !614
  %mul3 = mul i32 %mul, %3, !dbg !615
  %div = sdiv i32 %mul3, 2, !dbg !616
  %frame_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 5, !dbg !617
  %4 = load i32, ptr %frame_header_len, align 8, !dbg !617, !tbaa !427
  %add = add nsw i32 %div, %4, !dbg !618
  %conv4 = sext i32 %add to i64, !dbg !619
  %mul5 = mul nsw i64 %conv4, %conv, !dbg !620
  %seq_header_len = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 4, !dbg !621
  %5 = load i32, ptr %seq_header_len, align 4, !dbg !621, !tbaa !460
  %conv6 = sext i32 %5 to i64, !dbg !622
  %add7 = add nsw i64 %mul5, %conv6, !dbg !623
  %call8 = tail call i32 @fseek(ptr noundef %1, i64 noundef %add7, i32 noundef 0), !dbg !624
  br label %if.end17, !dbg !624

if.end17:                                         ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !625, metadata !DIExpression()) #13, !dbg !635
  call void @llvm.dbg.value(metadata ptr %handle, metadata !630, metadata !DIExpression()) #13, !dbg !635
  call void @llvm.dbg.value(metadata i32 5, metadata !631, metadata !DIExpression()) #13, !dbg !635
  call void @llvm.dbg.value(metadata i32 0, metadata !632, metadata !DIExpression()) #13, !dbg !635
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i) #13, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %header.i, metadata !633, metadata !DIExpression()) #13, !dbg !639
  %6 = load ptr, ptr %handle, align 8, !dbg !640, !tbaa !421
  %call.i = call i64 @fread(ptr noundef nonnull %header.i, i64 noundef 1, i64 noundef 5, ptr noundef %6) #13, !dbg !642
  %conv1.i = trunc i64 %call.i to i32, !dbg !643
  %cmp.not.i = icmp eq i32 %conv1.i, 5, !dbg !644
  br i1 %cmp.not.i, label %if.end.i, label %read_frame_internal.exit.thread, !dbg !645

if.end.i:                                         ; preds = %if.end17
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %header.i, i64 0, i64 5, !dbg !646
  store i8 0, ptr %arrayidx.i, align 1, !dbg !647, !tbaa !433
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %header.i, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5) #13, !dbg !648
  %tobool.not.i = icmp eq i32 %bcmp.i, 0, !dbg !648
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then6.i, !dbg !650

if.then6.i:                                       ; preds = %if.end.i
  %7 = load ptr, ptr @stderr, align 8, !dbg !651, !tbaa !417
  %8 = load i32, ptr %header.i, align 16, !dbg !653, !tbaa !433
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %8, ptr noundef nonnull %header.i) #16, !dbg !654
  br label %read_frame_internal.exit.thread, !dbg !655

land.rhs.i:                                       ; preds = %if.end.i, %while.body.i
  %i.080.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 %i.080.i, metadata !632, metadata !DIExpression()) #13, !dbg !635
  %9 = load ptr, ptr %handle, align 8, !dbg !656, !tbaa !421
  %call14.i = tail call i32 @fgetc(ptr noundef %9) #13, !dbg !657
  %cmp15.not.i = icmp eq i32 %call14.i, 10, !dbg !658
  br i1 %cmp15.not.i, label %if.end21.i, label %while.body.i, !dbg !659

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.080.i, 1, !dbg !660
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !632, metadata !DIExpression()) #13, !dbg !635
  %exitcond.not.i = icmp eq i32 %inc.i, 80, !dbg !661
  br i1 %exitcond.not.i, label %if.then19.i, label %land.rhs.i, !dbg !662, !llvm.loop !663

if.then19.i:                                      ; preds = %while.body.i
  %10 = load ptr, ptr @stderr, align 8, !dbg !664, !tbaa !417
  %11 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %10) #16, !dbg !667
  br label %read_frame_internal.exit.thread, !dbg !668

if.end21.i:                                       ; preds = %land.rhs.i
  %add22.i = add nuw nsw i32 %i.080.i, 6, !dbg !669
  %frame_header_len.i = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 5, !dbg !670
  store i32 %add22.i, ptr %frame_header_len.i, align 8, !dbg !671, !tbaa !427
  %plane.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, !dbg !672
  %12 = load ptr, ptr %plane.i, align 8, !dbg !674, !tbaa !417
  %width.i = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 1, !dbg !675
  %13 = load i32, ptr %width.i, align 8, !dbg !675, !tbaa !484
  %height.i = getelementptr inbounds %struct.y4m_hnd_t, ptr %handle, i64 0, i32 2, !dbg !676
  %14 = load i32, ptr %height.i, align 4, !dbg !676, !tbaa !491
  %mul.i = mul nsw i32 %14, %13, !dbg !677
  %conv24.i = sext i32 %mul.i to i64, !dbg !678
  %15 = load ptr, ptr %handle, align 8, !dbg !679, !tbaa !421
  %call26.i = tail call i64 @fread(ptr noundef %12, i64 noundef %conv24.i, i64 noundef 1, ptr noundef %15) #13, !dbg !680
  %cmp27.i = icmp eq i64 %call26.i, 0, !dbg !681
  br i1 %cmp27.i, label %read_frame_internal.exit.thread, label %lor.lhs.false.i, !dbg !682

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %arrayidx31.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, i64 1, !dbg !683
  %16 = load ptr, ptr %arrayidx31.i, align 8, !dbg !683, !tbaa !417
  %17 = load i32, ptr %width.i, align 8, !dbg !684, !tbaa !484
  %18 = load i32, ptr %height.i, align 4, !dbg !685, !tbaa !491
  %mul34.i = mul nsw i32 %18, %17, !dbg !686
  %div.i = sdiv i32 %mul34.i, 4, !dbg !687
  %conv35.i = sext i32 %div.i to i64, !dbg !688
  %19 = load ptr, ptr %handle, align 8, !dbg !689, !tbaa !421
  %call37.i = tail call i64 @fread(ptr noundef %16, i64 noundef %conv35.i, i64 noundef 1, ptr noundef %19) #13, !dbg !690
  %cmp38.i = icmp eq i64 %call37.i, 0, !dbg !691
  br i1 %cmp38.i, label %read_frame_internal.exit.thread, label %read_frame_internal.exit, !dbg !692

read_frame_internal.exit.thread:                  ; preds = %if.then6.i, %if.then19.i, %if.end17, %lor.lhs.false.i, %if.end21.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #13, !dbg !693
  br label %cleanup, !dbg !694

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx43.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, i64 2, !dbg !695
  %20 = load ptr, ptr %arrayidx43.i, align 8, !dbg !695, !tbaa !417
  %21 = load i32, ptr %width.i, align 8, !dbg !696, !tbaa !484
  %22 = load i32, ptr %height.i, align 4, !dbg !697, !tbaa !491
  %mul46.i = mul nsw i32 %22, %21, !dbg !698
  %div47.i = sdiv i32 %mul46.i, 4, !dbg !699
  %conv48.i = sext i32 %div47.i to i64, !dbg !700
  %23 = load ptr, ptr %handle, align 8, !dbg !701, !tbaa !421
  %call50.i = tail call i64 @fread(ptr noundef %20, i64 noundef %conv48.i, i64 noundef 1, ptr noundef %23) #13, !dbg !702
  %cmp51.i.not = icmp eq i64 %call50.i, 0, !dbg !703
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #13, !dbg !693
  br i1 %cmp51.i.not, label %cleanup, label %if.end21, !dbg !694

if.end21:                                         ; preds = %read_frame_internal.exit
  %add22 = add nsw i32 %i_frame, 1, !dbg !704
  store i32 %add22, ptr %next_frame, align 8, !dbg !705, !tbaa !403
  br label %cleanup, !dbg !706

cleanup:                                          ; preds = %read_frame_internal.exit.thread, %read_frame_internal.exit, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %read_frame_internal.exit ], [ -1, %read_frame_internal.exit.thread ], !dbg !603
  ret i32 %retval.0, !dbg !707
}

declare void @x264_picture_clean(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr noundef %handle) #0 !dbg !708 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata ptr %handle, metadata !711, metadata !DIExpression()), !dbg !712
  %tobool.not = icmp eq ptr %handle, null, !dbg !713
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !715

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8, !dbg !716, !tbaa !421
  %tobool1.not = icmp eq ptr %0, null, !dbg !717
  br i1 %tobool1.not, label %cleanup, label %if.end, !dbg !718

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !719
  tail call void @free(ptr noundef nonnull %handle) #13, !dbg !720
  br label %cleanup, !dbg !721

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !722
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !723 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare !dbg !728 void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !732 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !735 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !738 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold }
attributes #16 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y4m_input", scope: !2, file: !36, line: 265, type: !37, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/y4m.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "bd4a78066023f04fd68f7bcf30d32bbf")
!4 = !{!5, !6, !7, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !14, line: 89, baseType: !15)
!14 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !14, line: 89, size: 32, elements: !16)
!16 = !{!17, !21, !28}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !15, file: !14, line: 89, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !14, line: 89, baseType: !22, size: 32)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !26)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 25, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 40, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 2)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !15, file: !14, line: 89, baseType: !29, size: 32)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !33)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 4)
!35 = !{!0}
!36 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/y4m.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bd4a78066023f04fd68f7bcf30d32bbf")
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !39, line: 63, baseType: !40)
!39 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/input.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 54, size: 448, elements: !41)
!41 = !{!42, !75, !79, !286, !290, !294, !298}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !40, file: !39, line: 56, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!6, !46, !48, !51, !67}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !50, line: 30, baseType: !5)
!50 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !39, line: 52, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 38, size: 384, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !53, file: !39, line: 40, baseType: !6, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !53, file: !39, line: 41, baseType: !18, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !53, file: !39, line: 42, baseType: !18, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !53, file: !39, line: 43, baseType: !6, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !53, file: !39, line: 44, baseType: !6, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !53, file: !39, line: 45, baseType: !18, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !53, file: !39, line: 46, baseType: !18, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !53, file: !39, line: 47, baseType: !6, size: 32, offset: 224)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !53, file: !39, line: 48, baseType: !18, size: 32, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !53, file: !39, line: 49, baseType: !18, size: 32, offset: 288)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !53, file: !39, line: 50, baseType: !6, size: 32, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !53, file: !39, line: 51, baseType: !6, size: 32, offset: 352)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !39, line: 35, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 29, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !69, file: !39, line: 31, baseType: !46, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !69, file: !39, line: 32, baseType: !46, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !69, file: !39, line: 33, baseType: !46, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !69, file: !39, line: 34, baseType: !6, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !40, file: !39, line: 57, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!6, !49}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !40, file: !39, line: 58, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!6, !83, !6, !6, !6}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !85, line: 549, baseType: !86)
!85 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 513, size: 1088, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !97, !98, !265, !276, !285}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !86, file: !85, line: 521, baseType: !6, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !86, file: !85, line: 523, baseType: !6, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !86, file: !85, line: 526, baseType: !6, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !86, file: !85, line: 529, baseType: !6, size: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !86, file: !85, line: 531, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !94, line: 27, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !96)
!96 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !86, file: !85, line: 534, baseType: !93, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !86, file: !85, line: 541, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !85, line: 376, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !85, line: 176, size: 5632, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !148, !149, !150, !151, !155, !156, !170, !171, !172, !173, !174, !203, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !101, file: !85, line: 179, baseType: !20, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !101, file: !85, line: 180, baseType: !6, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !101, file: !85, line: 181, baseType: !6, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !101, file: !85, line: 182, baseType: !6, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !101, file: !85, line: 183, baseType: !6, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !101, file: !85, line: 186, baseType: !6, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !101, file: !85, line: 187, baseType: !6, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !101, file: !85, line: 188, baseType: !6, size: 32, offset: 224)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !101, file: !85, line: 189, baseType: !6, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !101, file: !85, line: 190, baseType: !6, size: 32, offset: 288)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !101, file: !85, line: 198, baseType: !6, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !101, file: !85, line: 215, baseType: !115, size: 288, offset: 352)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !85, line: 200, size: 288, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !115, file: !85, line: 203, baseType: !6, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !115, file: !85, line: 204, baseType: !6, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !115, file: !85, line: 206, baseType: !6, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !115, file: !85, line: 209, baseType: !6, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !115, file: !85, line: 210, baseType: !6, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !115, file: !85, line: 211, baseType: !6, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !115, file: !85, line: 212, baseType: !6, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !115, file: !85, line: 213, baseType: !6, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !115, file: !85, line: 214, baseType: !6, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !101, file: !85, line: 218, baseType: !6, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !101, file: !85, line: 219, baseType: !6, size: 32, offset: 672)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !101, file: !85, line: 220, baseType: !6, size: 32, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !101, file: !85, line: 221, baseType: !6, size: 32, offset: 736)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !101, file: !85, line: 222, baseType: !6, size: 32, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !101, file: !85, line: 224, baseType: !6, size: 32, offset: 800)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !101, file: !85, line: 225, baseType: !6, size: 32, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !101, file: !85, line: 226, baseType: !6, size: 32, offset: 864)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !101, file: !85, line: 227, baseType: !6, size: 32, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !101, file: !85, line: 229, baseType: !6, size: 32, offset: 928)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !101, file: !85, line: 230, baseType: !6, size: 32, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !101, file: !85, line: 231, baseType: !6, size: 32, offset: 992)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !101, file: !85, line: 233, baseType: !6, size: 32, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !101, file: !85, line: 234, baseType: !6, size: 32, offset: 1056)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !101, file: !85, line: 236, baseType: !6, size: 32, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !101, file: !85, line: 237, baseType: !6, size: 32, offset: 1120)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !101, file: !85, line: 239, baseType: !6, size: 32, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !101, file: !85, line: 240, baseType: !46, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !101, file: !85, line: 241, baseType: !145, size: 128, offset: 1280)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !101, file: !85, line: 242, baseType: !145, size: 128, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !101, file: !85, line: 243, baseType: !145, size: 128, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !101, file: !85, line: 244, baseType: !145, size: 128, offset: 1664)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !101, file: !85, line: 245, baseType: !152, size: 512, offset: 1792)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !101, file: !85, line: 246, baseType: !152, size: 512, offset: 2304)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !101, file: !85, line: 249, baseType: !157, size: 64, offset: 2816)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !5, !6, !160, !162}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !164)
!164 = !{!165, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !163, file: !166, line: 265, baseType: !20, size: 32)
!166 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/y4m.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !163, file: !166, line: 265, baseType: !20, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !163, file: !166, line: 265, baseType: !5, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !163, file: !166, line: 265, baseType: !5, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !101, file: !85, line: 250, baseType: !5, size: 64, offset: 2880)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !101, file: !85, line: 251, baseType: !6, size: 32, offset: 2944)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !101, file: !85, line: 252, baseType: !6, size: 32, offset: 2976)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !101, file: !85, line: 253, baseType: !46, size: 64, offset: 3008)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !101, file: !85, line: 287, baseType: !175, size: 800, offset: 3072)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !85, line: 256, size: 800, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !197, !198, !199, !201, !202}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !175, file: !85, line: 258, baseType: !20, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !175, file: !85, line: 259, baseType: !20, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !175, file: !85, line: 261, baseType: !6, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !175, file: !85, line: 262, baseType: !6, size: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !175, file: !85, line: 263, baseType: !6, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !175, file: !85, line: 264, baseType: !6, size: 32, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !175, file: !85, line: 265, baseType: !6, size: 32, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !175, file: !85, line: 267, baseType: !6, size: 32, offset: 224)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !175, file: !85, line: 268, baseType: !6, size: 32, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !175, file: !85, line: 269, baseType: !6, size: 32, offset: 288)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !175, file: !85, line: 270, baseType: !6, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !175, file: !85, line: 271, baseType: !6, size: 32, offset: 352)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !175, file: !85, line: 272, baseType: !6, size: 32, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !175, file: !85, line: 273, baseType: !6, size: 32, offset: 416)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !175, file: !85, line: 274, baseType: !6, size: 32, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !175, file: !85, line: 275, baseType: !6, size: 32, offset: 480)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !175, file: !85, line: 276, baseType: !6, size: 32, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !175, file: !85, line: 277, baseType: !6, size: 32, offset: 544)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !175, file: !85, line: 278, baseType: !196, size: 32, offset: 576)
!196 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !175, file: !85, line: 279, baseType: !196, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !175, file: !85, line: 280, baseType: !6, size: 32, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !175, file: !85, line: 283, baseType: !200, size: 64, offset: 672)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !26)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !175, file: !85, line: 285, baseType: !6, size: 32, offset: 736)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !175, file: !85, line: 286, baseType: !6, size: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !101, file: !85, line: 327, baseType: !204, size: 1152, offset: 3904)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !85, line: 290, size: 1152, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !243, !244}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !204, file: !85, line: 292, baseType: !6, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !204, file: !85, line: 294, baseType: !6, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !204, file: !85, line: 295, baseType: !6, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !204, file: !85, line: 296, baseType: !6, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !204, file: !85, line: 297, baseType: !6, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !204, file: !85, line: 299, baseType: !6, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !204, file: !85, line: 300, baseType: !196, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !204, file: !85, line: 301, baseType: !196, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !204, file: !85, line: 302, baseType: !196, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !204, file: !85, line: 303, baseType: !6, size: 32, offset: 288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !204, file: !85, line: 304, baseType: !6, size: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !204, file: !85, line: 305, baseType: !196, size: 32, offset: 352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !204, file: !85, line: 306, baseType: !196, size: 32, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !204, file: !85, line: 307, baseType: !196, size: 32, offset: 416)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !204, file: !85, line: 309, baseType: !6, size: 32, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !204, file: !85, line: 310, baseType: !196, size: 32, offset: 480)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !204, file: !85, line: 311, baseType: !6, size: 32, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !204, file: !85, line: 312, baseType: !6, size: 32, offset: 544)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !204, file: !85, line: 315, baseType: !6, size: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !204, file: !85, line: 316, baseType: !46, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !204, file: !85, line: 317, baseType: !6, size: 32, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !204, file: !85, line: 318, baseType: !46, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !204, file: !85, line: 321, baseType: !196, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !204, file: !85, line: 322, baseType: !196, size: 32, offset: 864)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !204, file: !85, line: 323, baseType: !196, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !204, file: !85, line: 324, baseType: !232, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !85, line: 174, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 167, size: 256, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !234, file: !85, line: 169, baseType: !6, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !234, file: !85, line: 169, baseType: !6, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !234, file: !85, line: 170, baseType: !6, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !234, file: !85, line: 171, baseType: !6, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !234, file: !85, line: 172, baseType: !196, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !234, file: !85, line: 173, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !204, file: !85, line: 325, baseType: !6, size: 32, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !204, file: !85, line: 326, baseType: !46, size: 64, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !101, file: !85, line: 330, baseType: !6, size: 32, offset: 5056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !101, file: !85, line: 331, baseType: !6, size: 32, offset: 5088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !101, file: !85, line: 332, baseType: !6, size: 32, offset: 5120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !101, file: !85, line: 334, baseType: !6, size: 32, offset: 5152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !101, file: !85, line: 335, baseType: !6, size: 32, offset: 5184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !101, file: !85, line: 336, baseType: !18, size: 32, offset: 5216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !101, file: !85, line: 337, baseType: !18, size: 32, offset: 5248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !101, file: !85, line: 338, baseType: !18, size: 32, offset: 5280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !101, file: !85, line: 339, baseType: !18, size: 32, offset: 5312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !101, file: !85, line: 340, baseType: !6, size: 32, offset: 5344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !101, file: !85, line: 344, baseType: !6, size: 32, offset: 5376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !101, file: !85, line: 356, baseType: !6, size: 32, offset: 5408)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !101, file: !85, line: 364, baseType: !6, size: 32, offset: 5440)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !101, file: !85, line: 367, baseType: !6, size: 32, offset: 5472)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !101, file: !85, line: 368, baseType: !6, size: 32, offset: 5504)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !101, file: !85, line: 369, baseType: !6, size: 32, offset: 5536)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !101, file: !85, line: 375, baseType: !262, size: 64, offset: 5568)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !5}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !86, file: !85, line: 543, baseType: !266, size: 448, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !85, line: 511, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 505, size: 448, elements: !268)
!268 = !{!269, !270, !271, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !267, file: !85, line: 507, baseType: !6, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !267, file: !85, line: 508, baseType: !6, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !267, file: !85, line: 509, baseType: !272, size: 128, offset: 64)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !33)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !267, file: !85, line: 510, baseType: !274, size: 256, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !33)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !86, file: !85, line: 545, baseType: !277, size: 256, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !85, line: 503, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 496, size: 256, elements: !279)
!279 = !{!280, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !278, file: !85, line: 498, baseType: !281, size: 64)
!281 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !278, file: !85, line: 499, baseType: !281, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !278, file: !85, line: 500, baseType: !281, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !278, file: !85, line: 502, baseType: !281, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !86, file: !85, line: 548, baseType: !5, size: 64, offset: 1024)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !40, file: !39, line: 59, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!6, !83, !49, !6}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !40, file: !39, line: 60, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!6, !83, !49}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !40, file: !39, line: 61, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !83}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !40, file: !39, line: 62, baseType: !76, size: 64, offset: 384)
!299 = !{i32 7, !"Dwarf Version", i32 5}
!300 = !{i32 2, !"Debug Info Version", i32 3}
!301 = !{i32 1, !"wchar_size", i32 4}
!302 = !{i32 7, !"PIC Level", i32 2}
!303 = !{i32 7, !"PIE Level", i32 2}
!304 = !{i32 7, !"uwtable", i32 2}
!305 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!306 = distinct !DISubprogram(name: "open_file", scope: !36, file: !36, line: 40, type: !44, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!307 = !{!308, !309, !310, !311, !312, !379, !380, !381, !382, !386, !387, !388, !389, !390}
!308 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !306, file: !36, line: 40, type: !46)
!309 = !DILocalVariable(name: "p_handle", arg: 2, scope: !306, file: !36, line: 40, type: !48)
!310 = !DILocalVariable(name: "info", arg: 3, scope: !306, file: !36, line: 40, type: !51)
!311 = !DILocalVariable(name: "opt", arg: 4, scope: !306, file: !36, line: 40, type: !67)
!312 = !DILocalVariable(name: "h", scope: !306, file: !36, line: 42, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "y4m_hnd_t", file: !36, line: 33, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 26, size: 256, elements: !316)
!316 = !{!317, !373, !374, !375, !376, !377, !378}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !315, file: !36, line: 28, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !320, line: 7, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !322, line: 49, size: 1728, elements: !323)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !339, !341, !342, !343, !345, !346, !348, !352, !355, !357, !360, !363, !364, !365, !368, !369}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !321, file: !322, line: 51, baseType: !6, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !321, file: !322, line: 54, baseType: !46, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !321, file: !322, line: 55, baseType: !46, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !321, file: !322, line: 56, baseType: !46, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !321, file: !322, line: 57, baseType: !46, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !321, file: !322, line: 58, baseType: !46, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !321, file: !322, line: 59, baseType: !46, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !321, file: !322, line: 60, baseType: !46, size: 64, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !321, file: !322, line: 61, baseType: !46, size: 64, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !321, file: !322, line: 64, baseType: !46, size: 64, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !321, file: !322, line: 65, baseType: !46, size: 64, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !321, file: !322, line: 66, baseType: !46, size: 64, offset: 704)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !321, file: !322, line: 68, baseType: !337, size: 64, offset: 768)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !322, line: 36, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !321, file: !322, line: 70, baseType: !340, size: 64, offset: 832)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !321, file: !322, line: 72, baseType: !6, size: 32, offset: 896)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !321, file: !322, line: 73, baseType: !6, size: 32, offset: 928)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !321, file: !322, line: 74, baseType: !344, size: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !321, file: !322, line: 77, baseType: !25, size: 16, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !321, file: !322, line: 78, baseType: !347, size: 8, offset: 1040)
!347 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !321, file: !322, line: 79, baseType: !349, size: 8, offset: 1048)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 1)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !321, file: !322, line: 81, baseType: !353, size: 64, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !322, line: 43, baseType: null)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !321, file: !322, line: 89, baseType: !356, size: 64, offset: 1152)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 153, baseType: !96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !321, file: !322, line: 91, baseType: !358, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !322, line: 37, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !321, file: !322, line: 92, baseType: !361, size: 64, offset: 1280)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !322, line: 38, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !321, file: !322, line: 93, baseType: !340, size: 64, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !321, file: !322, line: 94, baseType: !5, size: 64, offset: 1408)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !321, file: !322, line: 95, baseType: !366, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !367, line: 46, baseType: !11)
!367 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !321, file: !322, line: 96, baseType: !6, size: 32, offset: 1536)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !321, file: !322, line: 98, baseType: !370, size: 160, offset: 1568)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 20)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !315, file: !36, line: 29, baseType: !6, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !315, file: !36, line: 29, baseType: !6, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !315, file: !36, line: 30, baseType: !6, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "seq_header_len", scope: !315, file: !36, line: 31, baseType: !6, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "frame_header_len", scope: !315, file: !36, line: 31, baseType: !6, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !315, file: !36, line: 32, baseType: !6, size: 32, offset: 224)
!379 = !DILocalVariable(name: "i", scope: !306, file: !36, line: 43, type: !6)
!380 = !DILocalVariable(name: "n", scope: !306, file: !36, line: 44, type: !18)
!381 = !DILocalVariable(name: "d", scope: !306, file: !36, line: 44, type: !18)
!382 = !DILocalVariable(name: "header", scope: !306, file: !36, line: 45, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 720, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 90)
!386 = !DILocalVariable(name: "tokend", scope: !306, file: !36, line: 46, type: !46)
!387 = !DILocalVariable(name: "header_end", scope: !306, file: !36, line: 46, type: !46)
!388 = !DILocalVariable(name: "colorspace", scope: !306, file: !36, line: 47, type: !6)
!389 = !DILocalVariable(name: "alt_colorspace", scope: !306, file: !36, line: 48, type: !6)
!390 = !DILocalVariable(name: "tokstart", scope: !391, file: !36, line: 83, type: !46)
!391 = distinct !DILexicalBlock(scope: !306, file: !36, line: 83, column: 5)
!392 = !DILocation(line: 0, scope: !306)
!393 = !DILocation(line: 42, column: 20, scope: !306)
!394 = !DILocation(line: 44, column: 5, scope: !306)
!395 = !DILocation(line: 45, column: 5, scope: !306)
!396 = !DILocation(line: 45, column: 10, scope: !306)
!397 = !DILocation(line: 46, column: 5, scope: !306)
!398 = !DILocation(line: 49, column: 10, scope: !399)
!399 = distinct !DILexicalBlock(scope: !306, file: !36, line: 49, column: 9)
!400 = !DILocation(line: 49, column: 9, scope: !306)
!401 = !DILocation(line: 52, column: 8, scope: !306)
!402 = !DILocation(line: 52, column: 19, scope: !306)
!403 = !{!404, !408, i64 16}
!404 = !{!"", !405, i64 0, !408, i64 8, !408, i64 12, !408, i64 16, !408, i64 20, !408, i64 24, !408, i64 28}
!405 = !{!"any pointer", !406, i64 0}
!406 = !{!"omnipotent char", !407, i64 0}
!407 = !{!"Simple C/C++ TBAA"}
!408 = !{!"int", !406, i64 0}
!409 = !DILocation(line: 53, column: 11, scope: !306)
!410 = !DILocation(line: 53, column: 15, scope: !306)
!411 = !{!412, !408, i64 40}
!412 = !{!"", !408, i64 0, !408, i64 4, !408, i64 8, !408, i64 12, !408, i64 16, !408, i64 20, !408, i64 24, !408, i64 28, !408, i64 32, !408, i64 36, !408, i64 40, !408, i64 44}
!413 = !DILocation(line: 55, column: 10, scope: !414)
!414 = distinct !DILexicalBlock(scope: !306, file: !36, line: 55, column: 9)
!415 = !DILocation(line: 55, column: 9, scope: !306)
!416 = !DILocation(line: 56, column: 17, scope: !414)
!417 = !{!405, !405, i64 0}
!418 = !DILocation(line: 56, column: 9, scope: !414)
!419 = !DILocation(line: 58, column: 17, scope: !414)
!420 = !DILocation(line: 0, scope: !414)
!421 = !{!404, !405, i64 0}
!422 = !DILocation(line: 59, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !306, file: !36, line: 59, column: 9)
!424 = !DILocation(line: 59, column: 9, scope: !306)
!425 = !DILocation(line: 62, column: 8, scope: !306)
!426 = !DILocation(line: 62, column: 25, scope: !306)
!427 = !{!404, !408, i64 24}
!428 = !DILocation(line: 67, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !36, line: 66, column: 5)
!430 = distinct !DILexicalBlock(scope: !431, file: !36, line: 65, column: 5)
!431 = distinct !DILexicalBlock(scope: !306, file: !36, line: 65, column: 5)
!432 = !DILocation(line: 67, column: 19, scope: !429)
!433 = !{!406, !406, i64 0}
!434 = !DILocation(line: 68, column: 23, scope: !435)
!435 = distinct !DILexicalBlock(scope: !429, file: !36, line: 68, column: 13)
!436 = !DILocation(line: 68, column: 13, scope: !429)
!437 = !DILocation(line: 65, column: 39, scope: !430)
!438 = !DILocation(line: 65, column: 19, scope: !430)
!439 = !DILocation(line: 65, column: 5, scope: !431)
!440 = distinct !{!440, !439, !441, !442, !443}
!441 = !DILocation(line: 76, column: 5, scope: !431)
!442 = !{!"llvm.loop.mustprogress"}
!443 = !{!"llvm.loop.unroll.disable"}
!444 = !DILocation(line: 67, column: 31, scope: !429)
!445 = !DILocation(line: 67, column: 9, scope: !429)
!446 = !DILocation(line: 72, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !435, file: !36, line: 69, column: 9)
!448 = !DILocation(line: 72, column: 13, scope: !447)
!449 = !DILocation(line: 72, column: 25, scope: !447)
!450 = !DILocation(line: 73, column: 21, scope: !447)
!451 = !DILocation(line: 73, column: 13, scope: !447)
!452 = !DILocation(line: 73, column: 25, scope: !447)
!453 = !DILocation(line: 77, column: 33, scope: !454)
!454 = distinct !DILexicalBlock(scope: !306, file: !36, line: 77, column: 9)
!455 = !DILocation(line: 77, column: 9, scope: !306)
!456 = !DILocation(line: 81, column: 27, scope: !306)
!457 = !DILocation(line: 81, column: 19, scope: !306)
!458 = !DILocation(line: 82, column: 8, scope: !306)
!459 = !DILocation(line: 82, column: 23, scope: !306)
!460 = !{!404, !408, i64 20}
!461 = !DILocation(line: 0, scope: !391)
!462 = !DILocation(line: 83, column: 68, scope: !463)
!463 = distinct !DILexicalBlock(scope: !391, file: !36, line: 83, column: 5)
!464 = !DILocation(line: 83, column: 5, scope: !391)
!465 = !DILocation(line: 83, column: 28, scope: !391)
!466 = !DILocation(line: 158, column: 20, scope: !467)
!467 = distinct !DILexicalBlock(scope: !306, file: !36, line: 158, column: 9)
!468 = !DILocation(line: 158, column: 9, scope: !306)
!469 = !DILocation(line: 165, column: 20, scope: !470)
!470 = distinct !DILexicalBlock(scope: !306, file: !36, line: 165, column: 9)
!471 = !DILocation(line: 165, column: 9, scope: !306)
!472 = !DILocation(line: 85, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !36, line: 85, column: 13)
!474 = distinct !DILexicalBlock(scope: !463, file: !36, line: 84, column: 5)
!475 = !DILocation(line: 85, column: 23, scope: !473)
!476 = !DILocation(line: 85, column: 13, scope: !474)
!477 = !DILocation(line: 87, column: 26, scope: !474)
!478 = !DILocation(line: 87, column: 9, scope: !474)
!479 = !DILocation(line: 90, column: 42, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !36, line: 88, column: 9)
!481 = !DILocation(line: 90, column: 40, scope: !480)
!482 = !{!412, !408, i64 44}
!483 = !DILocation(line: 90, column: 26, scope: !480)
!484 = !{!404, !408, i64 8}
!485 = !DILocation(line: 91, column: 26, scope: !480)
!486 = !DILocation(line: 92, column: 17, scope: !480)
!487 = !DILocation(line: 94, column: 44, scope: !480)
!488 = !DILocation(line: 94, column: 42, scope: !480)
!489 = !{!412, !408, i64 12}
!490 = !DILocation(line: 94, column: 27, scope: !480)
!491 = !{!404, !408, i64 12}
!492 = !DILocation(line: 95, column: 26, scope: !480)
!493 = !DILocation(line: 96, column: 17, scope: !480)
!494 = !DILocation(line: 98, column: 22, scope: !495)
!495 = distinct !DILexicalBlock(scope: !480, file: !36, line: 98, column: 21)
!496 = !DILocation(line: 102, column: 28, scope: !480)
!497 = !DILocation(line: 103, column: 17, scope: !480)
!498 = !DILocation(line: 105, column: 34, scope: !480)
!499 = !DILocation(line: 105, column: 25, scope: !480)
!500 = !DILocation(line: 105, column: 17, scope: !480)
!501 = !DILocation(line: 108, column: 42, scope: !502)
!502 = distinct !DILexicalBlock(scope: !480, file: !36, line: 106, column: 17)
!503 = !{!412, !408, i64 16}
!504 = !DILocation(line: 109, column: 35, scope: !502)
!505 = !{!412, !408, i64 28}
!506 = !DILocation(line: 110, column: 25, scope: !502)
!507 = !DILocation(line: 112, column: 42, scope: !502)
!508 = !DILocation(line: 113, column: 35, scope: !502)
!509 = !DILocation(line: 114, column: 25, scope: !502)
!510 = !DILocation(line: 116, column: 42, scope: !502)
!511 = !DILocation(line: 117, column: 25, scope: !502)
!512 = !DILocation(line: 125, column: 21, scope: !513)
!513 = distinct !DILexicalBlock(scope: !480, file: !36, line: 125, column: 21)
!514 = !DILocation(line: 125, column: 57, scope: !513)
!515 = !DILocation(line: 125, column: 62, scope: !513)
!516 = !DILocation(line: 127, column: 21, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !36, line: 126, column: 17)
!518 = !DILocation(line: 128, column: 37, scope: !517)
!519 = !{!408, !408, i64 0}
!520 = !DILocation(line: 128, column: 35, scope: !517)
!521 = !{!412, !408, i64 4}
!522 = !DILocation(line: 129, column: 37, scope: !517)
!523 = !DILocation(line: 129, column: 35, scope: !517)
!524 = !{!412, !408, i64 8}
!525 = !DILocation(line: 130, column: 17, scope: !517)
!526 = !DILocation(line: 131, column: 28, scope: !480)
!527 = !DILocation(line: 132, column: 17, scope: !480)
!528 = !DILocation(line: 135, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !480, file: !36, line: 135, column: 21)
!530 = !DILocation(line: 135, column: 57, scope: !529)
!531 = !DILocation(line: 135, column: 62, scope: !529)
!532 = !DILocation(line: 137, column: 21, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !36, line: 136, column: 17)
!534 = !DILocation(line: 138, column: 40, scope: !533)
!535 = !DILocation(line: 138, column: 38, scope: !533)
!536 = !{!412, !408, i64 20}
!537 = !DILocation(line: 139, column: 40, scope: !533)
!538 = !DILocation(line: 139, column: 38, scope: !533)
!539 = !{!412, !408, i64 24}
!540 = !DILocation(line: 140, column: 17, scope: !533)
!541 = !DILocation(line: 141, column: 28, scope: !480)
!542 = !DILocation(line: 142, column: 17, scope: !480)
!543 = !DILocation(line: 144, column: 22, scope: !544)
!544 = distinct !DILexicalBlock(scope: !480, file: !36, line: 144, column: 21)
!545 = !DILocation(line: 144, column: 21, scope: !480)
!546 = !DILocation(line: 147, column: 30, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !36, line: 145, column: 17)
!548 = !DILocation(line: 148, column: 26, scope: !549)
!549 = distinct !DILexicalBlock(scope: !547, file: !36, line: 148, column: 25)
!550 = !DILocation(line: 0, scope: !474)
!551 = !DILocation(line: 153, column: 28, scope: !480)
!552 = !DILocation(line: 154, column: 17, scope: !480)
!553 = !DILocation(line: 48, column: 9, scope: !306)
!554 = !DILocation(line: 83, column: 90, scope: !463)
!555 = distinct !{!555, !464, !556, !442, !443}
!556 = !DILocation(line: 156, column: 5, scope: !391)
!557 = !DILocation(line: 167, column: 18, scope: !558)
!558 = distinct !DILexicalBlock(scope: !470, file: !36, line: 166, column: 5)
!559 = !DILocation(line: 167, column: 9, scope: !558)
!560 = !DILocation(line: 168, column: 9, scope: !558)
!561 = !DILocation(line: 171, column: 15, scope: !306)
!562 = !DILocation(line: 172, column: 5, scope: !306)
!563 = !DILocation(line: 173, column: 1, scope: !306)
!564 = distinct !DISubprogram(name: "get_frame_total", scope: !36, file: !36, line: 176, type: !77, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!565 = !{!566, !567, !568, !569, !572}
!566 = !DILocalVariable(name: "handle", arg: 1, scope: !564, file: !36, line: 176, type: !49)
!567 = !DILocalVariable(name: "h", scope: !564, file: !36, line: 178, type: !313)
!568 = !DILocalVariable(name: "i_frame_total", scope: !564, file: !36, line: 179, type: !6)
!569 = !DILocalVariable(name: "init_pos", scope: !570, file: !36, line: 183, type: !7)
!570 = distinct !DILexicalBlock(scope: !571, file: !36, line: 182, column: 5)
!571 = distinct !DILexicalBlock(scope: !564, file: !36, line: 181, column: 9)
!572 = !DILocalVariable(name: "i_size", scope: !570, file: !36, line: 185, type: !7)
!573 = !DILocation(line: 0, scope: !564)
!574 = !DILocation(line: 183, column: 39, scope: !570)
!575 = !DILocation(line: 183, column: 29, scope: !570)
!576 = !DILocation(line: 0, scope: !570)
!577 = !DILocation(line: 184, column: 19, scope: !570)
!578 = !DILocation(line: 184, column: 9, scope: !570)
!579 = !DILocation(line: 185, column: 37, scope: !570)
!580 = !DILocation(line: 185, column: 27, scope: !570)
!581 = !DILocation(line: 186, column: 19, scope: !570)
!582 = !DILocation(line: 186, column: 9, scope: !570)
!583 = !DILocation(line: 187, column: 44, scope: !570)
!584 = !DILocation(line: 187, column: 41, scope: !570)
!585 = !DILocation(line: 187, column: 39, scope: !570)
!586 = !DILocation(line: 188, column: 38, scope: !570)
!587 = !DILocation(line: 188, column: 47, scope: !570)
!588 = !DILocation(line: 188, column: 43, scope: !570)
!589 = !DILocation(line: 188, column: 33, scope: !570)
!590 = !DILocation(line: 188, column: 54, scope: !570)
!591 = !DILocation(line: 188, column: 60, scope: !570)
!592 = !DILocation(line: 188, column: 56, scope: !570)
!593 = !DILocation(line: 188, column: 31, scope: !570)
!594 = !DILocation(line: 187, column: 60, scope: !570)
!595 = !DILocation(line: 187, column: 25, scope: !570)
!596 = !DILocation(line: 191, column: 5, scope: !564)
!597 = distinct !DISubprogram(name: "read_frame", scope: !36, file: !36, line: 230, type: !288, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(name: "p_pic", arg: 1, scope: !597, file: !36, line: 230, type: !83)
!600 = !DILocalVariable(name: "handle", arg: 2, scope: !597, file: !36, line: 230, type: !49)
!601 = !DILocalVariable(name: "i_frame", arg: 3, scope: !597, file: !36, line: 230, type: !6)
!602 = !DILocalVariable(name: "h", scope: !597, file: !36, line: 232, type: !313)
!603 = !DILocation(line: 0, scope: !597)
!604 = !DILocation(line: 234, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !36, line: 234, column: 9)
!606 = !DILocation(line: 234, column: 17, scope: !605)
!607 = !DILocation(line: 234, column: 9, scope: !597)
!608 = !DILocation(line: 237, column: 23, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !36, line: 236, column: 13)
!610 = distinct !DILexicalBlock(scope: !605, file: !36, line: 235, column: 5)
!611 = !DILocation(line: 237, column: 27, scope: !609)
!612 = !DILocation(line: 237, column: 52, scope: !609)
!613 = !DILocation(line: 237, column: 61, scope: !609)
!614 = !DILocation(line: 237, column: 57, scope: !609)
!615 = !DILocation(line: 237, column: 47, scope: !609)
!616 = !DILocation(line: 237, column: 68, scope: !609)
!617 = !DILocation(line: 237, column: 74, scope: !609)
!618 = !DILocation(line: 237, column: 70, scope: !609)
!619 = !DILocation(line: 237, column: 45, scope: !609)
!620 = !DILocation(line: 237, column: 44, scope: !609)
!621 = !DILocation(line: 238, column: 23, scope: !609)
!622 = !DILocation(line: 238, column: 20, scope: !609)
!623 = !DILocation(line: 238, column: 18, scope: !609)
!624 = !DILocation(line: 237, column: 13, scope: !609)
!625 = !DILocalVariable(name: "p_pic", arg: 1, scope: !626, file: !36, line: 194, type: !83)
!626 = distinct !DISubprogram(name: "read_frame_internal", scope: !36, file: !36, line: 194, type: !627, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!6, !83, !313}
!629 = !{!625, !630, !631, !632, !633}
!630 = !DILocalVariable(name: "h", arg: 2, scope: !626, file: !36, line: 194, type: !313)
!631 = !DILocalVariable(name: "slen", scope: !626, file: !36, line: 196, type: !6)
!632 = !DILocalVariable(name: "i", scope: !626, file: !36, line: 197, type: !6)
!633 = !DILocalVariable(name: "header", scope: !626, file: !36, line: 198, type: !634)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !146)
!635 = !DILocation(line: 0, scope: !626, inlinedAt: !636)
!636 = distinct !DILocation(line: 248, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !597, file: !36, line: 248, column: 9)
!638 = !DILocation(line: 198, column: 5, scope: !626, inlinedAt: !636)
!639 = !DILocation(line: 198, column: 10, scope: !626, inlinedAt: !636)
!640 = !DILocation(line: 201, column: 42, scope: !641, inlinedAt: !636)
!641 = distinct !DILexicalBlock(scope: !626, file: !36, line: 201, column: 9)
!642 = !DILocation(line: 201, column: 15, scope: !641, inlinedAt: !636)
!643 = !DILocation(line: 201, column: 9, scope: !641, inlinedAt: !636)
!644 = !DILocation(line: 201, column: 47, scope: !641, inlinedAt: !636)
!645 = !DILocation(line: 201, column: 9, scope: !626, inlinedAt: !636)
!646 = !DILocation(line: 204, column: 5, scope: !626, inlinedAt: !636)
!647 = !DILocation(line: 204, column: 18, scope: !626, inlinedAt: !636)
!648 = !DILocation(line: 205, column: 9, scope: !649, inlinedAt: !636)
!649 = distinct !DILexicalBlock(scope: !626, file: !36, line: 205, column: 9)
!650 = !DILocation(line: 205, column: 9, scope: !626, inlinedAt: !636)
!651 = !DILocation(line: 207, column: 18, scope: !652, inlinedAt: !636)
!652 = distinct !DILexicalBlock(scope: !649, file: !36, line: 206, column: 5)
!653 = !DILocation(line: 208, column: 18, scope: !652, inlinedAt: !636)
!654 = !DILocation(line: 207, column: 9, scope: !652, inlinedAt: !636)
!655 = !DILocation(line: 209, column: 9, scope: !652, inlinedAt: !636)
!656 = !DILocation(line: 213, column: 46, scope: !626, inlinedAt: !636)
!657 = !DILocation(line: 213, column: 36, scope: !626, inlinedAt: !636)
!658 = !DILocation(line: 213, column: 51, scope: !626, inlinedAt: !636)
!659 = !DILocation(line: 213, column: 5, scope: !626, inlinedAt: !636)
!660 = !DILocation(line: 214, column: 10, scope: !626, inlinedAt: !636)
!661 = !DILocation(line: 213, column: 14, scope: !626, inlinedAt: !636)
!662 = !DILocation(line: 213, column: 33, scope: !626, inlinedAt: !636)
!663 = distinct !{!663, !659, !660, !442, !443}
!664 = !DILocation(line: 217, column: 18, scope: !665, inlinedAt: !636)
!665 = distinct !DILexicalBlock(scope: !666, file: !36, line: 216, column: 5)
!666 = distinct !DILexicalBlock(scope: !626, file: !36, line: 215, column: 9)
!667 = !DILocation(line: 217, column: 9, scope: !665, inlinedAt: !636)
!668 = !DILocation(line: 218, column: 9, scope: !665, inlinedAt: !636)
!669 = !DILocation(line: 220, column: 33, scope: !626, inlinedAt: !636)
!670 = !DILocation(line: 220, column: 8, scope: !626, inlinedAt: !636)
!671 = !DILocation(line: 220, column: 25, scope: !626, inlinedAt: !636)
!672 = !DILocation(line: 222, column: 27, scope: !673, inlinedAt: !636)
!673 = distinct !DILexicalBlock(scope: !626, file: !36, line: 222, column: 9)
!674 = !DILocation(line: 222, column: 16, scope: !673, inlinedAt: !636)
!675 = !DILocation(line: 222, column: 40, scope: !673, inlinedAt: !636)
!676 = !DILocation(line: 222, column: 51, scope: !673, inlinedAt: !636)
!677 = !DILocation(line: 222, column: 46, scope: !673, inlinedAt: !636)
!678 = !DILocation(line: 222, column: 37, scope: !673, inlinedAt: !636)
!679 = !DILocation(line: 222, column: 65, scope: !673, inlinedAt: !636)
!680 = !DILocation(line: 222, column: 9, scope: !673, inlinedAt: !636)
!681 = !DILocation(line: 222, column: 70, scope: !673, inlinedAt: !636)
!682 = !DILocation(line: 223, column: 6, scope: !673, inlinedAt: !636)
!683 = !DILocation(line: 223, column: 16, scope: !673, inlinedAt: !636)
!684 = !DILocation(line: 223, column: 40, scope: !673, inlinedAt: !636)
!685 = !DILocation(line: 223, column: 51, scope: !673, inlinedAt: !636)
!686 = !DILocation(line: 223, column: 46, scope: !673, inlinedAt: !636)
!687 = !DILocation(line: 223, column: 58, scope: !673, inlinedAt: !636)
!688 = !DILocation(line: 223, column: 37, scope: !673, inlinedAt: !636)
!689 = !DILocation(line: 223, column: 69, scope: !673, inlinedAt: !636)
!690 = !DILocation(line: 223, column: 9, scope: !673, inlinedAt: !636)
!691 = !DILocation(line: 223, column: 74, scope: !673, inlinedAt: !636)
!692 = !DILocation(line: 224, column: 6, scope: !673, inlinedAt: !636)
!693 = !DILocation(line: 228, column: 1, scope: !626, inlinedAt: !636)
!694 = !DILocation(line: 248, column: 9, scope: !597)
!695 = !DILocation(line: 224, column: 16, scope: !673, inlinedAt: !636)
!696 = !DILocation(line: 224, column: 40, scope: !673, inlinedAt: !636)
!697 = !DILocation(line: 224, column: 51, scope: !673, inlinedAt: !636)
!698 = !DILocation(line: 224, column: 46, scope: !673, inlinedAt: !636)
!699 = !DILocation(line: 224, column: 58, scope: !673, inlinedAt: !636)
!700 = !DILocation(line: 224, column: 37, scope: !673, inlinedAt: !636)
!701 = !DILocation(line: 224, column: 69, scope: !673, inlinedAt: !636)
!702 = !DILocation(line: 224, column: 9, scope: !673, inlinedAt: !636)
!703 = !DILocation(line: 224, column: 74, scope: !673, inlinedAt: !636)
!704 = !DILocation(line: 251, column: 28, scope: !597)
!705 = !DILocation(line: 251, column: 19, scope: !597)
!706 = !DILocation(line: 252, column: 5, scope: !597)
!707 = !DILocation(line: 253, column: 1, scope: !597)
!708 = distinct !DISubprogram(name: "close_file", scope: !36, file: !36, line: 255, type: !77, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711}
!710 = !DILocalVariable(name: "handle", arg: 1, scope: !708, file: !36, line: 255, type: !49)
!711 = !DILocalVariable(name: "h", scope: !708, file: !36, line: 257, type: !313)
!712 = !DILocation(line: 0, scope: !708)
!713 = !DILocation(line: 258, column: 10, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !36, line: 258, column: 9)
!715 = !DILocation(line: 258, column: 12, scope: !714)
!716 = !DILocation(line: 258, column: 19, scope: !714)
!717 = !DILocation(line: 258, column: 16, scope: !714)
!718 = !DILocation(line: 258, column: 9, scope: !708)
!719 = !DILocation(line: 260, column: 5, scope: !708)
!720 = !DILocation(line: 261, column: 5, scope: !708)
!721 = !DILocation(line: 262, column: 5, scope: !708)
!722 = !DILocation(line: 263, column: 1, scope: !708)
!723 = !DISubprogram(name: "fgetc", scope: !724, file: !724, line: 485, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !727)
!724 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!725 = !DISubroutineType(types: !726)
!726 = !{!6, !318}
!727 = !{}
!728 = !DISubprogram(name: "x264_reduce_fraction", scope: !14, file: !14, line: 192, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !727)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !731, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!732 = !DISubprogram(name: "ftell", scope: !724, file: !724, line: 689, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !727)
!733 = !DISubroutineType(types: !734)
!734 = !{!96, !318}
!735 = !DISubprogram(name: "fseek", scope: !724, file: !724, line: 684, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !727)
!736 = !DISubroutineType(types: !737)
!737 = !{!6, !318, !96, !6}
!738 = !DISubprogram(name: "fclose", scope: !724, file: !724, line: 213, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !727)
