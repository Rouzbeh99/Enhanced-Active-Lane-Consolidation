; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/output/matroska.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/matroska.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.mkv_hnd_t = type { ptr, i32, i32, i32, i32, i64, i8, i32, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@mkv_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !271, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !272, metadata !DIExpression()), !dbg !292
  store ptr null, ptr %p_handle, align 8, !dbg !293, !tbaa !294
  %calloc = call dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48), !dbg !298
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !273, metadata !DIExpression()), !dbg !292
  %tobool.not = icmp eq ptr %calloc, null, !dbg !299
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !301

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mk_create_writer(ptr noundef %psz_filename) #8, !dbg !302
  store ptr %call1, ptr %calloc, align 8, !dbg !303, !tbaa !304
  %tobool3.not = icmp eq ptr %call1, null, !dbg !308
  br i1 %tobool3.not, label %if.then4, label %if.end5, !dbg !310

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %calloc) #8, !dbg !311
  br label %cleanup, !dbg !313

if.end5:                                          ; preds = %if.end
  store ptr %calloc, ptr %p_handle, align 8, !dbg !314, !tbaa !294
  br label %cleanup, !dbg !315

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then4 ], [ -1, %entry ], !dbg !292
  ret i32 %retval.0, !dbg !316
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @set_param(ptr nocapture noundef writeonly %handle, ptr nocapture noundef readonly %p_param) #1 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !319, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr %p_param, metadata !320, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr %handle, metadata !321, metadata !DIExpression()), !dbg !327
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 48, !dbg !328
  %0 = load i32, ptr %i_fps_num, align 4, !dbg !328, !tbaa !330
  %cmp.not = icmp eq i32 %0, 0, !dbg !336
  br i1 %cmp.not, label %if.end, label %land.lhs.true, !dbg !337

land.lhs.true:                                    ; preds = %entry
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 47, !dbg !338
  %1 = load i32, ptr %b_vfr_input, align 8, !dbg !338, !tbaa !339
  %tobool.not = icmp eq i32 %1, 0, !dbg !340
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %land.lhs.true
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 49, !dbg !342
  %2 = load i32, ptr %i_fps_den, align 8, !dbg !342, !tbaa !344
  %conv = zext i32 %2 to i64, !dbg !345
  %mul = mul nuw nsw i64 %conv, 1000000000, !dbg !346
  %conv2 = zext i32 %0 to i64, !dbg !347
  %div = udiv i64 %mul, %conv2, !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %.sink = phi i64 [ %div, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %frame_duration3 = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 5, !dbg !350
  store i64 %.sink, ptr %frame_duration3, align 8, !dbg !350, !tbaa !351
  %i_width = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 5, !dbg !352
  %3 = load i32, ptr %i_width, align 4, !dbg !352, !tbaa !353
  %width = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 1, !dbg !354
  store i32 %3, ptr %width, align 8, !dbg !355, !tbaa !356
  %i_height = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 6, !dbg !357
  %4 = load i32, ptr %i_height, align 8, !dbg !357, !tbaa !358
  %height = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 2, !dbg !359
  store i32 %4, ptr %height, align 4, !dbg !360, !tbaa !361
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 11, i32 1, !dbg !362
  %5 = load i32, ptr %i_sar_width, align 4, !dbg !362, !tbaa !364
  %tobool4.not = icmp eq i32 %5, 0, !dbg !365
  br i1 %tobool4.not, label %if.else21, label %land.lhs.true5, !dbg !366

land.lhs.true5:                                   ; preds = %if.end
  %vui = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 11, !dbg !367
  %6 = load i32, ptr %vui, align 4, !dbg !368, !tbaa !369
  %tobool7.not = icmp eq i32 %6, 0, !dbg !370
  br i1 %tobool7.not, label %if.else21, label %if.then8, !dbg !371

if.then8:                                         ; preds = %land.lhs.true5
  %conv10 = sext i32 %3 to i64, !dbg !372
  %conv13 = sext i32 %5 to i64, !dbg !374
  %mul14 = mul nsw i64 %conv13, %conv10, !dbg !375
  call void @llvm.dbg.value(metadata i64 %mul14, metadata !322, metadata !DIExpression()), !dbg !327
  %conv16 = sext i32 %4 to i64, !dbg !376
  %conv19 = sext i32 %6 to i64, !dbg !377
  %mul20 = mul nsw i64 %conv19, %conv16, !dbg !378
  call void @llvm.dbg.value(metadata i64 %mul20, metadata !323, metadata !DIExpression()), !dbg !327
  br label %if.end26, !dbg !379

if.else21:                                        ; preds = %land.lhs.true5, %if.end
  %conv23 = sext i32 %3 to i64, !dbg !380
  call void @llvm.dbg.value(metadata i64 %conv23, metadata !322, metadata !DIExpression()), !dbg !327
  %conv25 = sext i32 %4 to i64, !dbg !382
  call void @llvm.dbg.value(metadata i64 %conv25, metadata !323, metadata !DIExpression()), !dbg !327
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then8
  %dh.0 = phi i64 [ %mul20, %if.then8 ], [ %conv25, %if.else21 ], !dbg !383
  %dw.0 = phi i64 [ %mul14, %if.then8 ], [ %conv23, %if.else21 ], !dbg !383
  call void @llvm.dbg.value(metadata i64 %dw.0, metadata !322, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %dh.0, metadata !323, metadata !DIExpression()), !dbg !327
  %cmp27 = icmp sgt i64 %dw.0, 0, !dbg !384
  %cmp30 = icmp sgt i64 %dh.0, 0
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false, !dbg !385
  br i1 %or.cond, label %while.body.i, label %if.end35, !dbg !385

while.body.i:                                     ; preds = %if.end26, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %dw.0, %if.end26 ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %dh.0, %if.end26 ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i, metadata !386, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i, metadata !391, metadata !DIExpression()), !dbg !394
  %rem.i = srem i64 %a.addr.0.i, %b.addr.0.i, !dbg !396
  call void @llvm.dbg.value(metadata i64 %rem.i, metadata !392, metadata !DIExpression()), !dbg !397
  %tobool.not.not.i = icmp eq i64 %rem.i, 0, !dbg !398
  call void @llvm.dbg.value(metadata i64 undef, metadata !386, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 undef, metadata !391, metadata !DIExpression()), !dbg !394
  br i1 %tobool.not.not.i, label %gcd.exit, label %while.body.i

gcd.exit:                                         ; preds = %while.body.i
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i, metadata !324, metadata !DIExpression()), !dbg !400
  %div33 = sdiv i64 %dw.0, %b.addr.0.i, !dbg !401
  call void @llvm.dbg.value(metadata i64 %div33, metadata !322, metadata !DIExpression()), !dbg !327
  %div34 = sdiv i64 %dh.0, %b.addr.0.i, !dbg !402
  call void @llvm.dbg.value(metadata i64 %div34, metadata !323, metadata !DIExpression()), !dbg !327
  br label %if.end35, !dbg !403

if.end35:                                         ; preds = %gcd.exit, %if.end26
  %dh.1 = phi i64 [ %div34, %gcd.exit ], [ %dh.0, %if.end26 ], !dbg !327
  %dw.1 = phi i64 [ %div33, %gcd.exit ], [ %dw.0, %if.end26 ], !dbg !327
  call void @llvm.dbg.value(metadata i64 %dw.1, metadata !322, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %dh.1, metadata !323, metadata !DIExpression()), !dbg !327
  %conv36 = trunc i64 %dw.1 to i32, !dbg !404
  %d_width = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 3, !dbg !405
  store i32 %conv36, ptr %d_width, align 8, !dbg !406, !tbaa !407
  %conv37 = trunc i64 %dh.1 to i32, !dbg !408
  %d_height = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 4, !dbg !409
  store i32 %conv37, ptr %d_height, align 4, !dbg !410, !tbaa !411
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 50, !dbg !412
  %7 = load i32, ptr %i_timebase_num, align 4, !dbg !412, !tbaa !413
  %i_timebase_num38 = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 7, !dbg !414
  store i32 %7, ptr %i_timebase_num38, align 4, !dbg !415, !tbaa !416
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, ptr %p_param, i64 0, i32 51, !dbg !417
  %8 = load i32, ptr %i_timebase_den, align 8, !dbg !417, !tbaa !418
  %i_timebase_den39 = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 8, !dbg !419
  store i32 %8, ptr %i_timebase_den39, align 8, !dbg !420, !tbaa !421
  ret i32 0, !dbg !422
}

; Function Attrs: nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !425, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr %p_nal, metadata !426, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr %handle, metadata !427, metadata !DIExpression()), !dbg !437
  %i_payload = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 0, i32 2, !dbg !438
  %0 = load i32, ptr %i_payload, align 8, !dbg !438, !tbaa !439
  %sub = add nsw i32 %0, -4, !dbg !441
  call void @llvm.dbg.value(metadata i32 %sub, metadata !428, metadata !DIExpression()), !dbg !437
  %i_payload2 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 1, i32 2, !dbg !442
  %1 = load i32, ptr %i_payload2, align 8, !dbg !442, !tbaa !439
  %sub3 = add nsw i32 %1, -4, !dbg !443
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !429, metadata !DIExpression()), !dbg !437
  %i_payload5 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 2, i32 2, !dbg !444
  %2 = load i32, ptr %i_payload5, align 8, !dbg !444, !tbaa !439
  call void @llvm.dbg.value(metadata i32 %2, metadata !430, metadata !DIExpression()), !dbg !437
  %p_payload = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 0, i32 3, !dbg !445
  %3 = load ptr, ptr %p_payload, align 8, !dbg !445, !tbaa !446
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 4, !dbg !447
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !431, metadata !DIExpression()), !dbg !437
  %p_payload8 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 1, i32 3, !dbg !448
  %4 = load ptr, ptr %p_payload8, align 8, !dbg !448, !tbaa !446
  %add.ptr9 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !449
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !432, metadata !DIExpression()), !dbg !437
  %p_payload11 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 2, i32 3, !dbg !450
  %5 = load ptr, ptr %p_payload11, align 8, !dbg !450, !tbaa !446
  call void @llvm.dbg.value(metadata ptr %5, metadata !433, metadata !DIExpression()), !dbg !437
  %width = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 1, !dbg !451
  %6 = load i32, ptr %width, align 8, !dbg !451, !tbaa !356
  %tobool.not = icmp eq i32 %6, 0, !dbg !453
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !454

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 2, !dbg !455
  %7 = load i32, ptr %height, align 4, !dbg !455, !tbaa !361
  %tobool12.not = icmp eq i32 %7, 0, !dbg !456
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13, !dbg !457

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %d_width = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 3, !dbg !458
  %8 = load i32, ptr %d_width, align 8, !dbg !458, !tbaa !407
  %tobool14.not = icmp eq i32 %8, 0, !dbg !459
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false15, !dbg !460

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %d_height = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 4, !dbg !461
  %9 = load i32, ptr %d_height, align 4, !dbg !461, !tbaa !411
  %tobool16.not = icmp eq i32 %9, 0, !dbg !462
  br i1 %tobool16.not, label %cleanup, label %if.end, !dbg !463

if.end:                                           ; preds = %lor.lhs.false15
  %add18 = add nsw i32 %0, 7, !dbg !464
  %add19 = add nsw i32 %add18, %sub3, !dbg !465
  call void @llvm.dbg.value(metadata i32 %add19, metadata !436, metadata !DIExpression()), !dbg !437
  %conv = sext i32 %add19 to i64, !dbg !466
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #9, !dbg !467
  call void @llvm.dbg.value(metadata ptr %call, metadata !435, metadata !DIExpression()), !dbg !437
  %tobool20.not = icmp eq ptr %call, null, !dbg !468
  br i1 %tobool20.not, label %cleanup, label %if.end22, !dbg !470

if.end22:                                         ; preds = %if.end
  %add = add nsw i32 %0, 4, !dbg !471
  store i8 1, ptr %call, align 1, !dbg !472, !tbaa !473
  %arrayidx24 = getelementptr inbounds i8, ptr %3, i64 5, !dbg !474
  %10 = load i8, ptr %arrayidx24, align 1, !dbg !474, !tbaa !473
  %arrayidx25 = getelementptr inbounds i8, ptr %call, i64 1, !dbg !475
  store i8 %10, ptr %arrayidx25, align 1, !dbg !476, !tbaa !473
  %arrayidx26 = getelementptr inbounds i8, ptr %3, i64 6, !dbg !477
  %11 = load i8, ptr %arrayidx26, align 1, !dbg !477, !tbaa !473
  %arrayidx27 = getelementptr inbounds i8, ptr %call, i64 2, !dbg !478
  store i8 %11, ptr %arrayidx27, align 1, !dbg !479, !tbaa !473
  %arrayidx28 = getelementptr inbounds i8, ptr %3, i64 7, !dbg !480
  %12 = load i8, ptr %arrayidx28, align 1, !dbg !480, !tbaa !473
  %arrayidx29 = getelementptr inbounds i8, ptr %call, i64 3, !dbg !481
  store i8 %12, ptr %arrayidx29, align 1, !dbg !482, !tbaa !473
  %arrayidx30 = getelementptr inbounds i8, ptr %call, i64 4, !dbg !483
  store i8 -1, ptr %arrayidx30, align 1, !dbg !484, !tbaa !473
  %arrayidx31 = getelementptr inbounds i8, ptr %call, i64 5, !dbg !485
  store i8 -31, ptr %arrayidx31, align 1, !dbg !486, !tbaa !473
  %13 = lshr i32 %sub, 8, !dbg !487
  %conv32 = trunc i32 %13 to i8, !dbg !488
  %arrayidx33 = getelementptr inbounds i8, ptr %call, i64 6, !dbg !489
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !490, !tbaa !473
  %conv34 = trunc i32 %sub to i8, !dbg !491
  %arrayidx35 = getelementptr inbounds i8, ptr %call, i64 7, !dbg !492
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !493, !tbaa !473
  %add.ptr36 = getelementptr inbounds i8, ptr %call, i64 8, !dbg !494
  %conv37 = sext i32 %sub to i64, !dbg !495
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr36, ptr nonnull align 1 %add.ptr, i64 %conv37, i1 false), !dbg !496
  %idxprom = sext i32 %add to i64, !dbg !497
  %arrayidx39 = getelementptr inbounds i8, ptr %call, i64 %idxprom, !dbg !497
  store i8 1, ptr %arrayidx39, align 1, !dbg !498, !tbaa !473
  %14 = lshr i32 %sub3, 8, !dbg !499
  %conv41 = trunc i32 %14 to i8, !dbg !500
  %add42 = add nsw i32 %0, 5, !dbg !501
  %idxprom43 = sext i32 %add42 to i64, !dbg !502
  %arrayidx44 = getelementptr inbounds i8, ptr %call, i64 %idxprom43, !dbg !502
  store i8 %conv41, ptr %arrayidx44, align 1, !dbg !503, !tbaa !473
  %conv45 = trunc i32 %sub3 to i8, !dbg !504
  %add46 = add nsw i32 %0, 6, !dbg !505
  %idxprom47 = sext i32 %add46 to i64, !dbg !506
  %arrayidx48 = getelementptr inbounds i8, ptr %call, i64 %idxprom47, !dbg !506
  store i8 %conv45, ptr %arrayidx48, align 1, !dbg !507, !tbaa !473
  %add.ptr49 = getelementptr inbounds i8, ptr %call, i64 11, !dbg !508
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr49, i64 %conv37, !dbg !509
  %conv51 = sext i32 %sub3 to i64, !dbg !510
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr50, ptr nonnull align 1 %add.ptr9, i64 %conv51, i1 false), !dbg !511
  %15 = load ptr, ptr %handle, align 8, !dbg !512, !tbaa !304
  %frame_duration = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 5, !dbg !513
  %16 = load i64, ptr %frame_duration, align 8, !dbg !513, !tbaa !351
  %call56 = tail call i32 @mk_writeHeader(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, i32 noundef %add19, i64 noundef %16, i64 noundef 50000, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #8, !dbg !514
  call void @llvm.dbg.value(metadata i32 %call56, metadata !434, metadata !DIExpression()), !dbg !437
  %cmp = icmp slt i32 %call56, 0, !dbg !515
  br i1 %cmp, label %cleanup, label %if.end59, !dbg !517

if.end59:                                         ; preds = %if.end22
  tail call void @free(ptr noundef nonnull %call) #8, !dbg !518
  %b_writing_frame = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 6, !dbg !519
  %17 = load i8, ptr %b_writing_frame, align 8, !dbg !519, !tbaa !521
  %tobool60.not = icmp eq i8 %17, 0, !dbg !522
  br i1 %tobool60.not, label %if.then61, label %if.end69, !dbg !523

if.then61:                                        ; preds = %if.end59
  %18 = load ptr, ptr %handle, align 8, !dbg !524, !tbaa !304
  %call63 = tail call i32 @mk_start_frame(ptr noundef %18) #8, !dbg !527
  %cmp64 = icmp slt i32 %call63, 0, !dbg !528
  br i1 %cmp64, label %cleanup, label %if.end67, !dbg !529

if.end67:                                         ; preds = %if.then61
  store i8 1, ptr %b_writing_frame, align 8, !dbg !530, !tbaa !521
  br label %if.end69, !dbg !531

if.end69:                                         ; preds = %if.end67, %if.end59
  %19 = load ptr, ptr %handle, align 8, !dbg !532, !tbaa !304
  %call71 = tail call i32 @mk_add_frame_data(ptr noundef %19, ptr noundef %5, i32 noundef %2) #8, !dbg !534
  %cmp72 = icmp slt i32 %call71, 0, !dbg !535
  br i1 %cmp72, label %cleanup, label %if.end75, !dbg !536

if.end75:                                         ; preds = %if.end69
  %add76 = add nsw i32 %2, %sub, !dbg !537
  %add77 = add nsw i32 %add76, %sub3, !dbg !538
  br label %cleanup, !dbg !539

cleanup:                                          ; preds = %if.end69, %if.then61, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false15, %if.end75
  %retval.0 = phi i32 [ %add77, %if.end75 ], [ -1, %lor.lhs.false15 ], [ -1, %lor.lhs.false13 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end ], [ %call56, %if.end22 ], [ -1, %if.then61 ], [ -1, %if.end69 ], !dbg !437
  ret i32 %retval.0, !dbg !540
}

; Function Attrs: nounwind uwtable
define internal i32 @write_frame(ptr nocapture noundef %handle, ptr noundef %p_nalu, i32 noundef %i_size, ptr nocapture noundef readonly %p_picture) #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !543, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata ptr %p_nalu, metadata !544, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32 %i_size, metadata !545, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata ptr %p_picture, metadata !546, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata ptr %handle, metadata !547, metadata !DIExpression()), !dbg !549
  %b_writing_frame = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 6, !dbg !550
  %0 = load i8, ptr %b_writing_frame, align 8, !dbg !550, !tbaa !521
  %tobool.not = icmp eq i8 %0, 0, !dbg !552
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !553

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !554, !tbaa !304
  %call = tail call i32 @mk_start_frame(ptr noundef %1) #8, !dbg !557
  %cmp = icmp slt i32 %call, 0, !dbg !558
  br i1 %cmp, label %cleanup22, label %if.end, !dbg !559

if.end:                                           ; preds = %if.then
  store i8 1, ptr %b_writing_frame, align 8, !dbg !560, !tbaa !521
  br label %if.end3, !dbg !561

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr %handle, align 8, !dbg !562, !tbaa !304
  %call5 = tail call i32 @mk_add_frame_data(ptr noundef %2, ptr noundef %p_nalu, i32 noundef %i_size) #8, !dbg !564
  %cmp6 = icmp slt i32 %call5, 0, !dbg !565
  br i1 %cmp6, label %cleanup22, label %if.end8, !dbg !566

if.end8:                                          ; preds = %if.end3
  %i_pts = getelementptr inbounds %struct.x264_picture_t, ptr %p_picture, i64 0, i32 4, !dbg !567
  %3 = load i64, ptr %i_pts, align 8, !dbg !567, !tbaa !568
  %conv = sitofp i64 %3 to double, !dbg !573
  %mul = fmul double %conv, 1.000000e+09, !dbg !574
  %i_timebase_num = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 7, !dbg !575
  %4 = load i32, ptr %i_timebase_num, align 4, !dbg !575, !tbaa !416
  %conv9 = uitofp i32 %4 to double, !dbg !576
  %mul10 = fmul double %mul, %conv9, !dbg !577
  %i_timebase_den = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 8, !dbg !578
  %5 = load i32, ptr %i_timebase_den, align 8, !dbg !578, !tbaa !421
  %conv11 = uitofp i32 %5 to double, !dbg !579
  %div = fdiv double %mul10, %conv11, !dbg !580
  %add = fadd double %div, 5.000000e-01, !dbg !581
  %conv12 = fptosi double %add to i64, !dbg !582
  call void @llvm.dbg.value(metadata i64 %conv12, metadata !548, metadata !DIExpression()), !dbg !549
  store i8 0, ptr %b_writing_frame, align 8, !dbg !583, !tbaa !521
  %6 = load ptr, ptr %handle, align 8, !dbg !584, !tbaa !304
  %b_keyframe = getelementptr inbounds %struct.x264_picture_t, ptr %p_picture, i64 0, i32 3, !dbg !586
  %7 = load i32, ptr %b_keyframe, align 4, !dbg !586, !tbaa !587
  %8 = load i32, ptr %p_picture, align 8, !dbg !588, !tbaa !589
  %cmp15 = icmp eq i32 %8, 5, !dbg !590
  %conv16 = zext i1 %cmp15 to i32, !dbg !590
  %call17 = tail call i32 @mk_set_frame_flags(ptr noundef %6, i64 noundef %conv12, i32 noundef %7, i32 noundef %conv16) #8, !dbg !591
  %cmp18.inv = icmp sgt i32 %call17, -1, !dbg !549
  %.i_size = select i1 %cmp18.inv, i32 %i_size, i32 -1, !dbg !549
  br label %cleanup22

cleanup22:                                        ; preds = %if.end3, %if.then, %if.end8
  %retval.1 = phi i32 [ %.i_size, %if.end8 ], [ -1, %if.then ], [ -1, %if.end3 ], !dbg !549
  ret i32 %retval.1, !dbg !592
}

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr nocapture noundef %handle, i64 noundef %largest_pts, i64 noundef %second_largest_pts) #0 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !595, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i64 %largest_pts, metadata !596, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i64 %second_largest_pts, metadata !597, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata ptr %handle, metadata !598, metadata !DIExpression()), !dbg !601
  %sub = sub nsw i64 %largest_pts, %second_largest_pts, !dbg !602
  %i_timebase_num = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 7, !dbg !603
  %0 = load i32, ptr %i_timebase_num, align 4, !dbg !603, !tbaa !416
  %conv = zext i32 %0 to i64, !dbg !604
  %mul = mul nsw i64 %sub, %conv, !dbg !605
  %i_timebase_den = getelementptr inbounds %struct.mkv_hnd_t, ptr %handle, i64 0, i32 8, !dbg !606
  %1 = load i32, ptr %i_timebase_den, align 8, !dbg !606, !tbaa !421
  %conv1 = zext i32 %1 to i64, !dbg !607
  %div = sdiv i64 %mul, %conv1, !dbg !608
  %conv2 = sitofp i64 %div to double, !dbg !609
  %add = fadd double %conv2, 5.000000e-01, !dbg !610
  %conv3 = fptosi double %add to i64, !dbg !611
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !600, metadata !DIExpression()), !dbg !601
  %2 = load ptr, ptr %handle, align 8, !dbg !612, !tbaa !304
  %call = tail call i32 @mk_close(ptr noundef %2, i64 noundef %conv3) #8, !dbg !613
  call void @llvm.dbg.value(metadata i32 %call, metadata !599, metadata !DIExpression()), !dbg !601
  tail call void @free(ptr noundef %handle) #8, !dbg !614
  ret i32 %call, !dbg !615
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare !dbg !616 ptr @mk_create_writer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !620 i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !625 i32 @mk_start_frame(ptr noundef) local_unnamed_addr #3

declare !dbg !628 i32 @mk_add_frame_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !631 i32 @mk_set_frame_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !634 i32 @mk_close(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mkv_output", scope: !2, file: !13, line: 211, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/matroska.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "1a7ca5fe13daa7a376c13c3ae71ee0de")
!4 = !{!5, !6, !11}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 44, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!0}
!13 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/matroska.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1a7ca5fe13daa7a376c13c3ae71ee0de")
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !16, line: 34, baseType: !17)
!16 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/output.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 27, size: 320, elements: !18)
!18 = !{!19, !28, !208, !221, !258}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !17, file: !16, line: 29, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!11, !23, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !27, line: 30, baseType: !5)
!27 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !17, file: !16, line: 30, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!11, !26, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !34, line: 376, baseType: !35)
!34 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !34, line: 176, size: 5632, elements: !36)
!36 = !{!37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !87, !88, !89, !90, !94, !95, !109, !110, !111, !112, !113, !144, !186, !187, !188, !189, !190, !191, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !35, file: !34, line: 179, baseType: !38, size: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !35, file: !34, line: 180, baseType: !11, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !35, file: !34, line: 181, baseType: !11, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !35, file: !34, line: 182, baseType: !11, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !35, file: !34, line: 183, baseType: !11, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !35, file: !34, line: 186, baseType: !11, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !35, file: !34, line: 187, baseType: !11, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !35, file: !34, line: 188, baseType: !11, size: 32, offset: 224)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !35, file: !34, line: 189, baseType: !11, size: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !35, file: !34, line: 190, baseType: !11, size: 32, offset: 288)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !35, file: !34, line: 198, baseType: !11, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !35, file: !34, line: 215, baseType: !50, size: 288, offset: 352)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 200, size: 288, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !50, file: !34, line: 203, baseType: !11, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !50, file: !34, line: 204, baseType: !11, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !50, file: !34, line: 206, baseType: !11, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !50, file: !34, line: 209, baseType: !11, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !50, file: !34, line: 210, baseType: !11, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !50, file: !34, line: 211, baseType: !11, size: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !50, file: !34, line: 212, baseType: !11, size: 32, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !50, file: !34, line: 213, baseType: !11, size: 32, offset: 224)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !50, file: !34, line: 214, baseType: !11, size: 32, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !35, file: !34, line: 218, baseType: !11, size: 32, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !35, file: !34, line: 219, baseType: !11, size: 32, offset: 672)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !35, file: !34, line: 220, baseType: !11, size: 32, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !35, file: !34, line: 221, baseType: !11, size: 32, offset: 736)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !35, file: !34, line: 222, baseType: !11, size: 32, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !35, file: !34, line: 224, baseType: !11, size: 32, offset: 800)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !35, file: !34, line: 225, baseType: !11, size: 32, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !35, file: !34, line: 226, baseType: !11, size: 32, offset: 864)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !35, file: !34, line: 227, baseType: !11, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !35, file: !34, line: 229, baseType: !11, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !35, file: !34, line: 230, baseType: !11, size: 32, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !35, file: !34, line: 231, baseType: !11, size: 32, offset: 992)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !35, file: !34, line: 233, baseType: !11, size: 32, offset: 1024)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !35, file: !34, line: 234, baseType: !11, size: 32, offset: 1056)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !35, file: !34, line: 236, baseType: !11, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !35, file: !34, line: 237, baseType: !11, size: 32, offset: 1120)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !35, file: !34, line: 239, baseType: !11, size: 32, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !35, file: !34, line: 240, baseType: !23, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !35, file: !34, line: 241, baseType: !80, size: 128, offset: 1280)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !85)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !82, line: 24, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !84)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !{!86}
!86 = !DISubrange(count: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !35, file: !34, line: 242, baseType: !80, size: 128, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !35, file: !34, line: 243, baseType: !80, size: 128, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !35, file: !34, line: 244, baseType: !80, size: 128, offset: 1664)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !35, file: !34, line: 245, baseType: !91, size: 512, offset: 1792)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !35, file: !34, line: 246, baseType: !91, size: 512, offset: 2304)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !35, file: !34, line: 249, baseType: !96, size: 64, offset: 2816)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !5, !11, !99, !101}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !103)
!103 = !{!104, !106, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !102, file: !105, line: 211, baseType: !38, size: 32)
!105 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/matroska.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !102, file: !105, line: 211, baseType: !38, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !102, file: !105, line: 211, baseType: !5, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !102, file: !105, line: 211, baseType: !5, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !35, file: !34, line: 250, baseType: !5, size: 64, offset: 2880)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !35, file: !34, line: 251, baseType: !11, size: 32, offset: 2944)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !35, file: !34, line: 252, baseType: !11, size: 32, offset: 2976)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !35, file: !34, line: 253, baseType: !23, size: 64, offset: 3008)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !35, file: !34, line: 287, baseType: !114, size: 800, offset: 3072)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 256, size: 800, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !142, !143}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !114, file: !34, line: 258, baseType: !38, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !114, file: !34, line: 259, baseType: !38, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !114, file: !34, line: 261, baseType: !11, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !114, file: !34, line: 262, baseType: !11, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !114, file: !34, line: 263, baseType: !11, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !114, file: !34, line: 264, baseType: !11, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !114, file: !34, line: 265, baseType: !11, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !114, file: !34, line: 267, baseType: !11, size: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !114, file: !34, line: 268, baseType: !11, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !114, file: !34, line: 269, baseType: !11, size: 32, offset: 288)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !114, file: !34, line: 270, baseType: !11, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !114, file: !34, line: 271, baseType: !11, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !114, file: !34, line: 272, baseType: !11, size: 32, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !114, file: !34, line: 273, baseType: !11, size: 32, offset: 416)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !114, file: !34, line: 274, baseType: !11, size: 32, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !114, file: !34, line: 275, baseType: !11, size: 32, offset: 480)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !114, file: !34, line: 276, baseType: !11, size: 32, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !114, file: !34, line: 277, baseType: !11, size: 32, offset: 544)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !114, file: !34, line: 278, baseType: !135, size: 32, offset: 576)
!135 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !114, file: !34, line: 279, baseType: !135, size: 32, offset: 608)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !114, file: !34, line: 280, baseType: !11, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !114, file: !34, line: 283, baseType: !139, size: 64, offset: 672)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 2)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !114, file: !34, line: 285, baseType: !11, size: 32, offset: 736)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !114, file: !34, line: 286, baseType: !11, size: 32, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !35, file: !34, line: 327, baseType: !145, size: 1152, offset: 3904)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 290, size: 1152, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !184, !185}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !145, file: !34, line: 292, baseType: !11, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !145, file: !34, line: 294, baseType: !11, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !145, file: !34, line: 295, baseType: !11, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !145, file: !34, line: 296, baseType: !11, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !145, file: !34, line: 297, baseType: !11, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !145, file: !34, line: 299, baseType: !11, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !145, file: !34, line: 300, baseType: !135, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !145, file: !34, line: 301, baseType: !135, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !145, file: !34, line: 302, baseType: !135, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !145, file: !34, line: 303, baseType: !11, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !145, file: !34, line: 304, baseType: !11, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !145, file: !34, line: 305, baseType: !135, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !145, file: !34, line: 306, baseType: !135, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !145, file: !34, line: 307, baseType: !135, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !145, file: !34, line: 309, baseType: !11, size: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !145, file: !34, line: 310, baseType: !135, size: 32, offset: 480)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !145, file: !34, line: 311, baseType: !11, size: 32, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !145, file: !34, line: 312, baseType: !11, size: 32, offset: 544)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !145, file: !34, line: 315, baseType: !11, size: 32, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !145, file: !34, line: 316, baseType: !23, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !145, file: !34, line: 317, baseType: !11, size: 32, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !145, file: !34, line: 318, baseType: !23, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !145, file: !34, line: 321, baseType: !135, size: 32, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !145, file: !34, line: 322, baseType: !135, size: 32, offset: 864)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !145, file: !34, line: 323, baseType: !135, size: 32, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !145, file: !34, line: 324, baseType: !173, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !34, line: 174, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 167, size: 256, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !175, file: !34, line: 169, baseType: !11, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !175, file: !34, line: 169, baseType: !11, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !175, file: !34, line: 170, baseType: !11, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !175, file: !34, line: 171, baseType: !11, size: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !175, file: !34, line: 172, baseType: !135, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !175, file: !34, line: 173, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !145, file: !34, line: 325, baseType: !11, size: 32, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !145, file: !34, line: 326, baseType: !23, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !35, file: !34, line: 330, baseType: !11, size: 32, offset: 5056)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !35, file: !34, line: 331, baseType: !11, size: 32, offset: 5088)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !35, file: !34, line: 332, baseType: !11, size: 32, offset: 5120)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !35, file: !34, line: 334, baseType: !11, size: 32, offset: 5152)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !35, file: !34, line: 335, baseType: !11, size: 32, offset: 5184)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !35, file: !34, line: 336, baseType: !192, size: 32, offset: 5216)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 26, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !38)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !35, file: !34, line: 337, baseType: !192, size: 32, offset: 5248)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !35, file: !34, line: 338, baseType: !192, size: 32, offset: 5280)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !35, file: !34, line: 339, baseType: !192, size: 32, offset: 5312)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !35, file: !34, line: 340, baseType: !11, size: 32, offset: 5344)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !35, file: !34, line: 344, baseType: !11, size: 32, offset: 5376)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !35, file: !34, line: 356, baseType: !11, size: 32, offset: 5408)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !35, file: !34, line: 364, baseType: !11, size: 32, offset: 5440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !35, file: !34, line: 367, baseType: !11, size: 32, offset: 5472)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !35, file: !34, line: 368, baseType: !11, size: 32, offset: 5504)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !35, file: !34, line: 369, baseType: !11, size: 32, offset: 5536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !35, file: !34, line: 375, baseType: !205, size: 64, offset: 5568)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !5}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !17, file: !16, line: 31, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!11, !26, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !34, line: 604, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 593, size: 192, elements: !215)
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !214, file: !34, line: 595, baseType: !11, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !214, file: !34, line: 596, baseType: !11, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !214, file: !34, line: 599, baseType: !11, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !214, file: !34, line: 603, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !17, file: !16, line: 32, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!11, !26, !220, !11, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !34, line: 549, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 513, size: 1088, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !248, !257}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !227, file: !34, line: 521, baseType: !11, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !227, file: !34, line: 523, baseType: !11, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !227, file: !34, line: 526, baseType: !11, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !227, file: !34, line: 529, baseType: !11, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !227, file: !34, line: 531, baseType: !6, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !227, file: !34, line: 534, baseType: !6, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !227, file: !34, line: 541, baseType: !32, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !227, file: !34, line: 543, baseType: !237, size: 448, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !34, line: 511, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 505, size: 448, elements: !239)
!239 = !{!240, !241, !242, !246}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !238, file: !34, line: 507, baseType: !11, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !238, file: !34, line: 508, baseType: !11, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !238, file: !34, line: 509, baseType: !243, size: 128, offset: 64)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 4)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !238, file: !34, line: 510, baseType: !247, size: 256, offset: 192)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !244)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !227, file: !34, line: 545, baseType: !249, size: 256, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !34, line: 503, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 496, size: 256, elements: !251)
!251 = !{!252, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !250, file: !34, line: 498, baseType: !253, size: 64)
!253 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !250, file: !34, line: 499, baseType: !253, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !250, file: !34, line: 500, baseType: !253, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !250, file: !34, line: 502, baseType: !253, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !227, file: !34, line: 548, baseType: !5, size: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !17, file: !16, line: 33, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!11, !26, !6, !6}
!262 = !{i32 7, !"Dwarf Version", i32 5}
!263 = !{i32 2, !"Debug Info Version", i32 3}
!264 = !{i32 1, !"wchar_size", i32 4}
!265 = !{i32 7, !"PIC Level", i32 2}
!266 = !{i32 7, !"PIE Level", i32 2}
!267 = !{i32 7, !"uwtable", i32 2}
!268 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!269 = distinct !DISubprogram(name: "open_file", scope: !13, file: !13, line: 38, type: !21, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!270 = !{!271, !272, !273}
!271 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !269, file: !13, line: 38, type: !23)
!272 = !DILocalVariable(name: "p_handle", arg: 2, scope: !269, file: !13, line: 38, type: !25)
!273 = !DILocalVariable(name: "p_mkv", scope: !269, file: !13, line: 40, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "mkv_hnd_t", file: !13, line: 36, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 24, size: 384, elements: !277)
!277 = !{!278, !283, !284, !285, !286, !287, !288, !290, !291}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !276, file: !13, line: 26, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_writer", file: !281, line: 24, baseType: !282)
!281 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/matroska_ebml.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1745c5eb41455b01e98496f56a8b1e8e")
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mk_writer", file: !281, line: 24, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !276, file: !13, line: 28, baseType: !11, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !276, file: !13, line: 28, baseType: !11, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "d_width", scope: !276, file: !13, line: 28, baseType: !11, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "d_height", scope: !276, file: !13, line: 28, baseType: !11, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "frame_duration", scope: !276, file: !13, line: 30, baseType: !6, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_writing_frame", scope: !276, file: !13, line: 32, baseType: !289, size: 8, offset: 256)
!289 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !276, file: !13, line: 33, baseType: !192, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !276, file: !13, line: 34, baseType: !192, size: 32, offset: 320)
!292 = !DILocation(line: 0, scope: !269)
!293 = !DILocation(line: 42, column: 15, scope: !269)
!294 = !{!295, !295, i64 0}
!295 = !{!"any pointer", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !DILocation(line: 44, column: 14, scope: !269)
!299 = !DILocation(line: 45, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !269, file: !13, line: 45, column: 9)
!301 = !DILocation(line: 45, column: 9, scope: !269)
!302 = !DILocation(line: 50, column: 16, scope: !269)
!303 = !DILocation(line: 50, column: 14, scope: !269)
!304 = !{!305, !295, i64 0}
!305 = !{!"", !295, i64 0, !306, i64 8, !306, i64 12, !306, i64 16, !306, i64 20, !307, i64 24, !296, i64 32, !306, i64 36, !306, i64 40}
!306 = !{!"int", !296, i64 0}
!307 = !{!"long", !296, i64 0}
!308 = !DILocation(line: 51, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !269, file: !13, line: 51, column: 9)
!310 = !DILocation(line: 51, column: 9, scope: !269)
!311 = !DILocation(line: 53, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !13, line: 52, column: 5)
!313 = !DILocation(line: 54, column: 9, scope: !312)
!314 = !DILocation(line: 57, column: 15, scope: !269)
!315 = !DILocation(line: 59, column: 5, scope: !269)
!316 = !DILocation(line: 60, column: 1, scope: !269)
!317 = distinct !DISubprogram(name: "set_param", scope: !13, file: !13, line: 62, type: !30, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DILocalVariable(name: "handle", arg: 1, scope: !317, file: !13, line: 62, type: !26)
!320 = !DILocalVariable(name: "p_param", arg: 2, scope: !317, file: !13, line: 62, type: !32)
!321 = !DILocalVariable(name: "p_mkv", scope: !317, file: !13, line: 64, type: !274)
!322 = !DILocalVariable(name: "dw", scope: !317, file: !13, line: 65, type: !6)
!323 = !DILocalVariable(name: "dh", scope: !317, file: !13, line: 65, type: !6)
!324 = !DILocalVariable(name: "x", scope: !325, file: !13, line: 93, type: !6)
!325 = distinct !DILexicalBlock(scope: !326, file: !13, line: 92, column: 5)
!326 = distinct !DILexicalBlock(scope: !317, file: !13, line: 91, column: 9)
!327 = !DILocation(line: 0, scope: !317)
!328 = !DILocation(line: 67, column: 18, scope: !329)
!329 = distinct !DILexicalBlock(scope: !317, file: !13, line: 67, column: 9)
!330 = !{!331, !306, i64 652}
!331 = !{!"x264_param_t", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !306, i64 16, !306, i64 20, !306, i64 24, !306, i64 28, !306, i64 32, !306, i64 36, !306, i64 40, !332, i64 44, !306, i64 80, !306, i64 84, !306, i64 88, !306, i64 92, !306, i64 96, !306, i64 100, !306, i64 104, !306, i64 108, !306, i64 112, !306, i64 116, !306, i64 120, !306, i64 124, !306, i64 128, !306, i64 132, !306, i64 136, !306, i64 140, !306, i64 144, !295, i64 152, !296, i64 160, !296, i64 176, !296, i64 192, !296, i64 208, !296, i64 224, !296, i64 288, !295, i64 352, !295, i64 360, !306, i64 368, !306, i64 372, !295, i64 376, !333, i64 384, !335, i64 488, !306, i64 632, !306, i64 636, !306, i64 640, !306, i64 644, !306, i64 648, !306, i64 652, !306, i64 656, !306, i64 660, !306, i64 664, !306, i64 668, !306, i64 672, !306, i64 676, !306, i64 680, !306, i64 684, !306, i64 688, !306, i64 692, !295, i64 696}
!332 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !306, i64 16, !306, i64 20, !306, i64 24, !306, i64 28, !306, i64 32}
!333 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !306, i64 16, !306, i64 20, !306, i64 24, !306, i64 28, !306, i64 32, !306, i64 36, !306, i64 40, !306, i64 44, !306, i64 48, !306, i64 52, !306, i64 56, !306, i64 60, !306, i64 64, !306, i64 68, !334, i64 72, !334, i64 76, !306, i64 80, !296, i64 84, !306, i64 92, !306, i64 96}
!334 = !{!"float", !296, i64 0}
!335 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !306, i64 16, !306, i64 20, !334, i64 24, !334, i64 28, !334, i64 32, !306, i64 36, !306, i64 40, !334, i64 44, !334, i64 48, !334, i64 52, !306, i64 56, !334, i64 60, !306, i64 64, !306, i64 68, !306, i64 72, !295, i64 80, !306, i64 88, !295, i64 96, !334, i64 104, !334, i64 108, !334, i64 112, !295, i64 120, !306, i64 128, !295, i64 136}
!336 = !DILocation(line: 67, column: 28, scope: !329)
!337 = !DILocation(line: 67, column: 32, scope: !329)
!338 = !DILocation(line: 67, column: 45, scope: !329)
!339 = !{!331, !306, i64 648}
!340 = !DILocation(line: 67, column: 36, scope: !329)
!341 = !DILocation(line: 67, column: 9, scope: !317)
!342 = !DILocation(line: 69, column: 51, scope: !343)
!343 = distinct !DILexicalBlock(scope: !329, file: !13, line: 68, column: 5)
!344 = !{!331, !306, i64 656}
!345 = !DILocation(line: 69, column: 33, scope: !343)
!346 = !DILocation(line: 69, column: 61, scope: !343)
!347 = !DILocation(line: 70, column: 55, scope: !343)
!348 = !DILocation(line: 70, column: 53, scope: !343)
!349 = !DILocation(line: 71, column: 5, scope: !343)
!350 = !DILocation(line: 0, scope: !329)
!351 = !{!305, !307, i64 24}
!352 = !DILocation(line: 77, column: 29, scope: !317)
!353 = !{!331, !306, i64 20}
!354 = !DILocation(line: 77, column: 12, scope: !317)
!355 = !DILocation(line: 77, column: 18, scope: !317)
!356 = !{!305, !306, i64 8}
!357 = !DILocation(line: 78, column: 30, scope: !317)
!358 = !{!331, !306, i64 24}
!359 = !DILocation(line: 78, column: 12, scope: !317)
!360 = !DILocation(line: 78, column: 19, scope: !317)
!361 = !{!305, !306, i64 12}
!362 = !DILocation(line: 80, column: 22, scope: !363)
!363 = distinct !DILexicalBlock(scope: !317, file: !13, line: 80, column: 9)
!364 = !{!331, !306, i64 48}
!365 = !DILocation(line: 80, column: 9, scope: !363)
!366 = !DILocation(line: 80, column: 34, scope: !363)
!367 = !DILocation(line: 80, column: 18, scope: !363)
!368 = !DILocation(line: 80, column: 50, scope: !363)
!369 = !{!331, !306, i64 44}
!370 = !DILocation(line: 80, column: 37, scope: !363)
!371 = !DILocation(line: 80, column: 9, scope: !317)
!372 = !DILocation(line: 82, column: 14, scope: !373)
!373 = distinct !DILexicalBlock(scope: !363, file: !13, line: 81, column: 5)
!374 = !DILocation(line: 82, column: 43, scope: !373)
!375 = !DILocation(line: 82, column: 41, scope: !373)
!376 = !DILocation(line: 83, column: 14, scope: !373)
!377 = !DILocation(line: 83, column: 43, scope: !373)
!378 = !DILocation(line: 83, column: 41, scope: !373)
!379 = !DILocation(line: 84, column: 5, scope: !373)
!380 = !DILocation(line: 87, column: 14, scope: !381)
!381 = distinct !DILexicalBlock(scope: !363, file: !13, line: 86, column: 5)
!382 = !DILocation(line: 88, column: 14, scope: !381)
!383 = !DILocation(line: 0, scope: !363)
!384 = !DILocation(line: 91, column: 12, scope: !326)
!385 = !DILocation(line: 91, column: 16, scope: !326)
!386 = !DILocalVariable(name: "b", arg: 2, scope: !387, file: !27, line: 32, type: !6)
!387 = distinct !DISubprogram(name: "gcd", scope: !27, file: !27, line: 32, type: !388, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!6, !6, !6}
!390 = !{!391, !386, !392}
!391 = !DILocalVariable(name: "a", arg: 1, scope: !387, file: !27, line: 32, type: !6)
!392 = !DILocalVariable(name: "c", scope: !393, file: !27, line: 36, type: !6)
!393 = distinct !DILexicalBlock(scope: !387, file: !27, line: 35, column: 5)
!394 = !DILocation(line: 0, scope: !387, inlinedAt: !395)
!395 = distinct !DILocation(line: 93, column: 21, scope: !325)
!396 = !DILocation(line: 36, column: 23, scope: !393, inlinedAt: !395)
!397 = !DILocation(line: 0, scope: !393, inlinedAt: !395)
!398 = !DILocation(line: 37, column: 14, scope: !399, inlinedAt: !395)
!399 = distinct !DILexicalBlock(scope: !393, file: !27, line: 37, column: 13)
!400 = !DILocation(line: 0, scope: !325)
!401 = !DILocation(line: 94, column: 12, scope: !325)
!402 = !DILocation(line: 95, column: 12, scope: !325)
!403 = !DILocation(line: 96, column: 5, scope: !325)
!404 = !DILocation(line: 98, column: 22, scope: !317)
!405 = !DILocation(line: 98, column: 12, scope: !317)
!406 = !DILocation(line: 98, column: 20, scope: !317)
!407 = !{!305, !306, i64 16}
!408 = !DILocation(line: 99, column: 23, scope: !317)
!409 = !DILocation(line: 99, column: 12, scope: !317)
!410 = !DILocation(line: 99, column: 21, scope: !317)
!411 = !{!305, !306, i64 20}
!412 = !DILocation(line: 100, column: 38, scope: !317)
!413 = !{!331, !306, i64 660}
!414 = !DILocation(line: 100, column: 12, scope: !317)
!415 = !DILocation(line: 100, column: 27, scope: !317)
!416 = !{!305, !306, i64 36}
!417 = !DILocation(line: 101, column: 38, scope: !317)
!418 = !{!331, !306, i64 664}
!419 = !DILocation(line: 101, column: 12, scope: !317)
!420 = !DILocation(line: 101, column: 27, scope: !317)
!421 = !{!305, !306, i64 40}
!422 = !DILocation(line: 103, column: 5, scope: !317)
!423 = distinct !DISubprogram(name: "write_headers", scope: !13, file: !13, line: 106, type: !210, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!425 = !DILocalVariable(name: "handle", arg: 1, scope: !423, file: !13, line: 106, type: !26)
!426 = !DILocalVariable(name: "p_nal", arg: 2, scope: !423, file: !13, line: 106, type: !212)
!427 = !DILocalVariable(name: "p_mkv", scope: !423, file: !13, line: 108, type: !274)
!428 = !DILocalVariable(name: "sps_size", scope: !423, file: !13, line: 110, type: !11)
!429 = !DILocalVariable(name: "pps_size", scope: !423, file: !13, line: 111, type: !11)
!430 = !DILocalVariable(name: "sei_size", scope: !423, file: !13, line: 112, type: !11)
!431 = !DILocalVariable(name: "sps", scope: !423, file: !13, line: 114, type: !220)
!432 = !DILocalVariable(name: "pps", scope: !423, file: !13, line: 115, type: !220)
!433 = !DILocalVariable(name: "sei", scope: !423, file: !13, line: 116, type: !220)
!434 = !DILocalVariable(name: "ret", scope: !423, file: !13, line: 118, type: !11)
!435 = !DILocalVariable(name: "avcC", scope: !423, file: !13, line: 119, type: !220)
!436 = !DILocalVariable(name: "avcC_len", scope: !423, file: !13, line: 120, type: !11)
!437 = !DILocation(line: 0, scope: !423)
!438 = !DILocation(line: 110, column: 29, scope: !423)
!439 = !{!440, !306, i64 8}
!440 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !295, i64 16}
!441 = !DILocation(line: 110, column: 39, scope: !423)
!442 = !DILocation(line: 111, column: 29, scope: !423)
!443 = !DILocation(line: 111, column: 39, scope: !423)
!444 = !DILocation(line: 112, column: 29, scope: !423)
!445 = !DILocation(line: 114, column: 29, scope: !423)
!446 = !{!440, !295, i64 16}
!447 = !DILocation(line: 114, column: 39, scope: !423)
!448 = !DILocation(line: 115, column: 29, scope: !423)
!449 = !DILocation(line: 115, column: 39, scope: !423)
!450 = !DILocation(line: 116, column: 29, scope: !423)
!451 = !DILocation(line: 122, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !423, file: !13, line: 122, column: 9)
!453 = !DILocation(line: 122, column: 10, scope: !452)
!454 = !DILocation(line: 122, column: 23, scope: !452)
!455 = !DILocation(line: 122, column: 34, scope: !452)
!456 = !DILocation(line: 122, column: 27, scope: !452)
!457 = !DILocation(line: 122, column: 41, scope: !452)
!458 = !DILocation(line: 123, column: 17, scope: !452)
!459 = !DILocation(line: 123, column: 10, scope: !452)
!460 = !DILocation(line: 123, column: 25, scope: !452)
!461 = !DILocation(line: 123, column: 36, scope: !452)
!462 = !DILocation(line: 123, column: 29, scope: !452)
!463 = !DILocation(line: 122, column: 9, scope: !423)
!464 = !DILocation(line: 126, column: 41, scope: !423)
!465 = !DILocation(line: 126, column: 45, scope: !423)
!466 = !DILocation(line: 127, column: 20, scope: !423)
!467 = !DILocation(line: 127, column: 12, scope: !423)
!468 = !DILocation(line: 128, column: 10, scope: !469)
!469 = distinct !DILexicalBlock(scope: !423, file: !13, line: 128, column: 9)
!470 = !DILocation(line: 128, column: 9, scope: !423)
!471 = !DILocation(line: 126, column: 26, scope: !423)
!472 = !DILocation(line: 131, column: 13, scope: !423)
!473 = !{!296, !296, i64 0}
!474 = !DILocation(line: 132, column: 15, scope: !423)
!475 = !DILocation(line: 132, column: 5, scope: !423)
!476 = !DILocation(line: 132, column: 13, scope: !423)
!477 = !DILocation(line: 133, column: 15, scope: !423)
!478 = !DILocation(line: 133, column: 5, scope: !423)
!479 = !DILocation(line: 133, column: 13, scope: !423)
!480 = !DILocation(line: 134, column: 15, scope: !423)
!481 = !DILocation(line: 134, column: 5, scope: !423)
!482 = !DILocation(line: 134, column: 13, scope: !423)
!483 = !DILocation(line: 135, column: 5, scope: !423)
!484 = !DILocation(line: 135, column: 13, scope: !423)
!485 = !DILocation(line: 136, column: 5, scope: !423)
!486 = !DILocation(line: 136, column: 13, scope: !423)
!487 = !DILocation(line: 138, column: 24, scope: !423)
!488 = !DILocation(line: 138, column: 15, scope: !423)
!489 = !DILocation(line: 138, column: 5, scope: !423)
!490 = !DILocation(line: 138, column: 13, scope: !423)
!491 = !DILocation(line: 139, column: 15, scope: !423)
!492 = !DILocation(line: 139, column: 5, scope: !423)
!493 = !DILocation(line: 139, column: 13, scope: !423)
!494 = !DILocation(line: 141, column: 17, scope: !423)
!495 = !DILocation(line: 141, column: 26, scope: !423)
!496 = !DILocation(line: 141, column: 5, scope: !423)
!497 = !DILocation(line: 143, column: 5, scope: !423)
!498 = !DILocation(line: 143, column: 22, scope: !423)
!499 = !DILocation(line: 144, column: 33, scope: !423)
!500 = !DILocation(line: 144, column: 24, scope: !423)
!501 = !DILocation(line: 144, column: 11, scope: !423)
!502 = !DILocation(line: 144, column: 5, scope: !423)
!503 = !DILocation(line: 144, column: 22, scope: !423)
!504 = !DILocation(line: 145, column: 25, scope: !423)
!505 = !DILocation(line: 145, column: 12, scope: !423)
!506 = !DILocation(line: 145, column: 5, scope: !423)
!507 = !DILocation(line: 145, column: 23, scope: !423)
!508 = !DILocation(line: 147, column: 17, scope: !423)
!509 = !DILocation(line: 147, column: 20, scope: !423)
!510 = !DILocation(line: 147, column: 36, scope: !423)
!511 = !DILocation(line: 147, column: 5, scope: !423)
!512 = !DILocation(line: 149, column: 34, scope: !423)
!513 = !DILocation(line: 150, column: 50, scope: !423)
!514 = !DILocation(line: 149, column: 11, scope: !423)
!515 = !DILocation(line: 153, column: 13, scope: !516)
!516 = distinct !DILexicalBlock(scope: !423, file: !13, line: 153, column: 9)
!517 = !DILocation(line: 153, column: 9, scope: !423)
!518 = !DILocation(line: 156, column: 5, scope: !423)
!519 = !DILocation(line: 160, column: 17, scope: !520)
!520 = distinct !DILexicalBlock(scope: !423, file: !13, line: 160, column: 9)
!521 = !{!305, !296, i64 32}
!522 = !DILocation(line: 160, column: 10, scope: !520)
!523 = !DILocation(line: 160, column: 9, scope: !423)
!524 = !DILocation(line: 162, column: 36, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !13, line: 162, column: 13)
!526 = distinct !DILexicalBlock(scope: !520, file: !13, line: 161, column: 5)
!527 = !DILocation(line: 162, column: 13, scope: !525)
!528 = !DILocation(line: 162, column: 40, scope: !525)
!529 = !DILocation(line: 162, column: 13, scope: !526)
!530 = !DILocation(line: 164, column: 32, scope: !526)
!531 = !DILocation(line: 165, column: 5, scope: !526)
!532 = !DILocation(line: 166, column: 35, scope: !533)
!533 = distinct !DILexicalBlock(scope: !423, file: !13, line: 166, column: 9)
!534 = !DILocation(line: 166, column: 9, scope: !533)
!535 = !DILocation(line: 166, column: 54, scope: !533)
!536 = !DILocation(line: 166, column: 9, scope: !423)
!537 = !DILocation(line: 169, column: 21, scope: !423)
!538 = !DILocation(line: 169, column: 32, scope: !423)
!539 = !DILocation(line: 169, column: 5, scope: !423)
!540 = !DILocation(line: 170, column: 1, scope: !423)
!541 = distinct !DISubprogram(name: "write_frame", scope: !13, file: !13, line: 172, type: !223, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!542 = !{!543, !544, !545, !546, !547, !548}
!543 = !DILocalVariable(name: "handle", arg: 1, scope: !541, file: !13, line: 172, type: !26)
!544 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !541, file: !13, line: 172, type: !220)
!545 = !DILocalVariable(name: "i_size", arg: 3, scope: !541, file: !13, line: 172, type: !11)
!546 = !DILocalVariable(name: "p_picture", arg: 4, scope: !541, file: !13, line: 172, type: !225)
!547 = !DILocalVariable(name: "p_mkv", scope: !541, file: !13, line: 174, type: !274)
!548 = !DILocalVariable(name: "i_stamp", scope: !541, file: !13, line: 186, type: !6)
!549 = !DILocation(line: 0, scope: !541)
!550 = !DILocation(line: 176, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !541, file: !13, line: 176, column: 9)
!552 = !DILocation(line: 176, column: 10, scope: !551)
!553 = !DILocation(line: 176, column: 9, scope: !541)
!554 = !DILocation(line: 178, column: 36, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !13, line: 178, column: 13)
!556 = distinct !DILexicalBlock(scope: !551, file: !13, line: 177, column: 5)
!557 = !DILocation(line: 178, column: 13, scope: !555)
!558 = !DILocation(line: 178, column: 40, scope: !555)
!559 = !DILocation(line: 178, column: 13, scope: !556)
!560 = !DILocation(line: 180, column: 32, scope: !556)
!561 = !DILocation(line: 181, column: 5, scope: !556)
!562 = !DILocation(line: 183, column: 35, scope: !563)
!563 = distinct !DILexicalBlock(scope: !541, file: !13, line: 183, column: 9)
!564 = !DILocation(line: 183, column: 9, scope: !563)
!565 = !DILocation(line: 183, column: 55, scope: !563)
!566 = !DILocation(line: 183, column: 9, scope: !541)
!567 = !DILocation(line: 186, column: 45, scope: !541)
!568 = !{!569, !307, i64 16}
!569 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !307, i64 16, !307, i64 24, !295, i64 32, !570, i64 40, !571, i64 96, !295, i64 128}
!570 = !{!"", !306, i64 0, !306, i64 4, !296, i64 8, !296, i64 24}
!571 = !{!"", !572, i64 0, !572, i64 8, !572, i64 16, !572, i64 24}
!572 = !{!"double", !296, i64 0}
!573 = !DILocation(line: 186, column: 34, scope: !541)
!574 = !DILocation(line: 186, column: 51, scope: !541)
!575 = !DILocation(line: 186, column: 66, scope: !541)
!576 = !DILocation(line: 186, column: 59, scope: !541)
!577 = !DILocation(line: 186, column: 57, scope: !541)
!578 = !DILocation(line: 186, column: 90, scope: !541)
!579 = !DILocation(line: 186, column: 83, scope: !541)
!580 = !DILocation(line: 186, column: 81, scope: !541)
!581 = !DILocation(line: 186, column: 106, scope: !541)
!582 = !DILocation(line: 186, column: 23, scope: !541)
!583 = !DILocation(line: 188, column: 28, scope: !541)
!584 = !DILocation(line: 190, column: 36, scope: !585)
!585 = distinct !DILexicalBlock(scope: !541, file: !13, line: 190, column: 9)
!586 = !DILocation(line: 190, column: 59, scope: !585)
!587 = !{!569, !306, i64 12}
!588 = !DILocation(line: 190, column: 82, scope: !585)
!589 = !{!569, !306, i64 0}
!590 = !DILocation(line: 190, column: 89, scope: !585)
!591 = !DILocation(line: 190, column: 9, scope: !585)
!592 = !DILocation(line: 194, column: 1, scope: !541)
!593 = distinct !DISubprogram(name: "close_file", scope: !13, file: !13, line: 196, type: !260, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!594 = !{!595, !596, !597, !598, !599, !600}
!595 = !DILocalVariable(name: "handle", arg: 1, scope: !593, file: !13, line: 196, type: !26)
!596 = !DILocalVariable(name: "largest_pts", arg: 2, scope: !593, file: !13, line: 196, type: !6)
!597 = !DILocalVariable(name: "second_largest_pts", arg: 3, scope: !593, file: !13, line: 196, type: !6)
!598 = !DILocalVariable(name: "p_mkv", scope: !593, file: !13, line: 198, type: !274)
!599 = !DILocalVariable(name: "ret", scope: !593, file: !13, line: 199, type: !11)
!600 = !DILocalVariable(name: "i_last_delta", scope: !593, file: !13, line: 200, type: !6)
!601 = !DILocation(line: 0, scope: !593)
!602 = !DILocation(line: 202, column: 44, scope: !593)
!603 = !DILocation(line: 202, column: 75, scope: !593)
!604 = !DILocation(line: 202, column: 68, scope: !593)
!605 = !DILocation(line: 202, column: 66, scope: !593)
!606 = !DILocation(line: 202, column: 99, scope: !593)
!607 = !DILocation(line: 202, column: 92, scope: !593)
!608 = !DILocation(line: 202, column: 90, scope: !593)
!609 = !DILocation(line: 202, column: 30, scope: !593)
!610 = !DILocation(line: 202, column: 115, scope: !593)
!611 = !DILocation(line: 202, column: 20, scope: !593)
!612 = !DILocation(line: 204, column: 28, scope: !593)
!613 = !DILocation(line: 204, column: 11, scope: !593)
!614 = !DILocation(line: 206, column: 5, scope: !593)
!615 = !DILocation(line: 208, column: 5, scope: !593)
!616 = !DISubprogram(name: "mk_create_writer", scope: !281, file: !281, line: 26, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!279, !99}
!619 = !{}
!620 = !DISubprogram(name: "mk_writeHeader", scope: !281, file: !281, line: 28, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!621 = !DISubroutineType(types: !622)
!622 = !{!11, !279, !99, !99, !623, !38, !6, !6, !38, !38, !38, !38}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!625 = !DISubprogram(name: "mk_start_frame", scope: !281, file: !281, line: 36, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!626 = !DISubroutineType(types: !627)
!627 = !{!11, !279}
!628 = !DISubprogram(name: "mk_add_frame_data", scope: !281, file: !281, line: 37, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!629 = !DISubroutineType(types: !630)
!630 = !{!11, !279, !623, !38}
!631 = !DISubprogram(name: "mk_set_frame_flags", scope: !281, file: !281, line: 38, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!632 = !DISubroutineType(types: !633)
!633 = !{!11, !279, !6, !11, !11}
!634 = !DISubprogram(name: "mk_close", scope: !281, file: !281, line: 39, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!635 = !DISubroutineType(types: !636)
!636 = !{!11, !279, !6}
