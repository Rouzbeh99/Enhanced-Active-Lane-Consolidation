; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/input/yuv.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.yuv_hnd_t = type { ptr, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@yuv_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"yuv [error]: rawyuv input requires a resolution.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nofree nounwind uwtable
define internal i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr noundef %info, ptr nocapture noundef readonly %opt) #0 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !295, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !296, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata ptr %info, metadata !297, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata ptr %opt, metadata !298, metadata !DIExpression()), !dbg !368
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #9, !dbg !369
  call void @llvm.dbg.value(metadata ptr %call, metadata !299, metadata !DIExpression()), !dbg !368
  %tobool.not = icmp eq ptr %call, null, !dbg !370
  br i1 %tobool.not, label %cleanup42, label %if.end, !dbg !372

if.end:                                           ; preds = %entry
  %resolution = getelementptr inbounds %struct.cli_input_opt_t, ptr %opt, i64 0, i32 1, !dbg !373
  %0 = load ptr, ptr %resolution, align 8, !dbg !373, !tbaa !374
  %tobool1.not = icmp eq ptr %0, null, !dbg !380
  %width = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 11, !dbg !381
  %height = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 3, !dbg !381
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else, !dbg !382

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !364, metadata !DIExpression()), !dbg !383
  %1 = load i8, ptr %psz_filename, align 1, !dbg !384, !tbaa !386
  %tobool3.not66 = icmp eq i8 %1, 0, !dbg !387
  br i1 %tobool3.not66, label %if.end18, label %for.body, !dbg !387

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %5, %for.inc ], [ %1, %for.cond.preheader ]
  %p.067 = phi ptr [ %incdec.ptr, %for.inc ], [ %psz_filename, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.067, metadata !364, metadata !DIExpression()), !dbg !383
  %3 = add i8 %2, -48, !dbg !388
  %4 = icmp ult i8 %3, 10, !dbg !388
  br i1 %4, label %land.lhs.true8, label %for.inc, !dbg !388

land.lhs.true8:                                   ; preds = %for.body
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %p.067, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #10, !dbg !390
  %cmp10 = icmp eq i32 %call9, 2, !dbg !391
  br i1 %cmp10, label %if.end18, label %for.inc, !dbg !392

for.inc:                                          ; preds = %for.body, %land.lhs.true8
  %incdec.ptr = getelementptr inbounds i8, ptr %p.067, i64 1, !dbg !393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !364, metadata !DIExpression()), !dbg !383
  %5 = load i8, ptr %incdec.ptr, align 1, !dbg !384, !tbaa !386
  %tobool3.not = icmp eq i8 %5, 0, !dbg !387
  br i1 %tobool3.not, label %if.end18, label %for.body, !dbg !387, !llvm.loop !394

if.else:                                          ; preds = %if.end
  %call17 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #10, !dbg !398
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true8, %for.inc, %for.cond.preheader, %if.else
  %width19 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 11, !dbg !399
  %6 = load i32, ptr %width19, align 4, !dbg !399, !tbaa !401
  %tobool20.not = icmp eq i32 %6, 0, !dbg !403
  br i1 %tobool20.not, label %if.then23, label %lor.lhs.false, !dbg !404

lor.lhs.false:                                    ; preds = %if.end18
  %height21 = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 3, !dbg !405
  %7 = load i32, ptr %height21, align 4, !dbg !405, !tbaa !406
  %tobool22.not = icmp eq i32 %7, 0, !dbg !407
  br i1 %tobool22.not, label %if.then23, label %if.end25, !dbg !408

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  %8 = load ptr, ptr @stderr, align 8, !dbg !409, !tbaa !411
  %9 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 49, i64 1, ptr %8) #11, !dbg !412
  br label %cleanup42, !dbg !413

if.end25:                                         ; preds = %lor.lhs.false
  %next_frame = getelementptr inbounds %struct.yuv_hnd_t, ptr %call, i64 0, i32 3, !dbg !414
  store i32 0, ptr %next_frame, align 8, !dbg !415, !tbaa !416
  %vfr = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 10, !dbg !418
  store i32 0, ptr %vfr, align 4, !dbg !419, !tbaa !420
  %width27 = getelementptr inbounds %struct.yuv_hnd_t, ptr %call, i64 0, i32 1, !dbg !421
  store i32 %6, ptr %width27, align 8, !dbg !422, !tbaa !423
  %height29 = getelementptr inbounds %struct.yuv_hnd_t, ptr %call, i64 0, i32 2, !dbg !424
  store i32 %7, ptr %height29, align 4, !dbg !425, !tbaa !426
  %call30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %psz_filename, ptr noundef nonnull dereferenceable(2) @.str.2) #12, !dbg !427
  %tobool31.not = icmp eq i32 %call30, 0, !dbg !427
  br i1 %tobool31.not, label %if.then32, label %if.else33, !dbg !429

if.then32:                                        ; preds = %if.end25
  %10 = load ptr, ptr @stdin, align 8, !dbg !430, !tbaa !411
  br label %if.end36, !dbg !431

if.else33:                                        ; preds = %if.end25
  %call34 = tail call ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.3), !dbg !432
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  %storemerge = phi ptr [ %10, %if.then32 ], [ %call34, %if.else33 ], !dbg !433
  store ptr %storemerge, ptr %call, align 8, !dbg !433, !tbaa !434
  %cmp38 = icmp eq ptr %storemerge, null, !dbg !435
  br i1 %cmp38, label %cleanup42, label %if.end41, !dbg !437

if.end41:                                         ; preds = %if.end36
  store ptr %call, ptr %p_handle, align 8, !dbg !438, !tbaa !411
  br label %cleanup42, !dbg !439

cleanup42:                                        ; preds = %if.end36, %entry, %if.end41, %if.then23
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -1, %if.then23 ], [ -1, %entry ], [ -1, %if.end36 ], !dbg !368
  ret i32 %retval.0, !dbg !440
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !443, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %handle, metadata !444, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !449
  %0 = load ptr, ptr %handle, align 8, !dbg !450, !tbaa !434
  %call2 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2), !dbg !451
  %1 = load ptr, ptr %handle, align 8, !dbg !452, !tbaa !434
  %call4 = tail call i64 @ftell(ptr noundef %1), !dbg !453
  call void @llvm.dbg.value(metadata i64 %call4, metadata !446, metadata !DIExpression()), !dbg !454
  %2 = load ptr, ptr %handle, align 8, !dbg !455, !tbaa !434
  %call6 = tail call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0), !dbg !456
  call void @llvm.dbg.value(metadata i64 undef, metadata !445, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !449
  %width = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 1, !dbg !457
  %3 = load i32, ptr %width, align 8, !dbg !457, !tbaa !423
  %height = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 2, !dbg !458
  %4 = load i32, ptr %height, align 4, !dbg !458, !tbaa !426
  %mul = mul i32 %3, 3, !dbg !459
  %mul7 = mul i32 %mul, %4, !dbg !460
  %div = sdiv i32 %mul7, 2, !dbg !461
  %conv = sext i32 %div to i64, !dbg !462
  %div8 = udiv i64 %call4, %conv, !dbg !463
  call void @llvm.dbg.value(metadata i64 %div8, metadata !445, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !449
  %conv9 = trunc i64 %div8 to i32, !dbg !464
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 undef, metadata !445, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !449
  ret i32 %conv9, !dbg !465
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind uwtable
define internal i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 !dbg !466 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !468, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata ptr %handle, metadata !469, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 %i_frame, metadata !470, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata ptr %handle, metadata !471, metadata !DIExpression()), !dbg !472
  %next_frame = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 3, !dbg !473
  %0 = load i32, ptr %next_frame, align 8, !dbg !473, !tbaa !416
  %cmp = icmp slt i32 %0, %i_frame, !dbg !475
  br i1 %cmp, label %if.then, label %if.end16, !dbg !476

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !477, !tbaa !434
  %conv = sext i32 %i_frame to i64, !dbg !480
  %width = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 1, !dbg !481
  %2 = load i32, ptr %width, align 8, !dbg !481, !tbaa !423
  %conv3 = sext i32 %2 to i64, !dbg !482
  %height = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 2, !dbg !483
  %3 = load i32, ptr %height, align 4, !dbg !483, !tbaa !426
  %conv4 = sext i32 %3 to i64, !dbg !484
  %mul = mul nsw i64 %conv, 3, !dbg !485
  %mul5 = mul i64 %mul, %conv3, !dbg !486
  %mul6 = mul i64 %mul5, %conv4, !dbg !487
  %div35 = lshr i64 %mul6, 1, !dbg !488
  %call7 = tail call i32 @fseek(ptr noundef %1, i64 noundef %div35, i32 noundef 0), !dbg !489
  br label %if.end16, !dbg !489

if.end16:                                         ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !490, metadata !DIExpression()) #10, !dbg !496
  call void @llvm.dbg.value(metadata ptr %handle, metadata !495, metadata !DIExpression()) #10, !dbg !496
  %plane.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, !dbg !499
  %4 = load ptr, ptr %plane.i, align 8, !dbg !500, !tbaa !411
  %width.i = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 1, !dbg !501
  %5 = load i32, ptr %width.i, align 8, !dbg !501, !tbaa !423
  %height.i = getelementptr inbounds %struct.yuv_hnd_t, ptr %handle, i64 0, i32 2, !dbg !502
  %6 = load i32, ptr %height.i, align 4, !dbg !502, !tbaa !426
  %mul.i = mul nsw i32 %6, %5, !dbg !503
  %conv.i = sext i32 %mul.i to i64, !dbg !504
  %7 = load ptr, ptr %handle, align 8, !dbg !505, !tbaa !434
  %call.i = tail call i64 @fread(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %7) #10, !dbg !506
  %cmp.i = icmp eq i64 %call.i, 0, !dbg !507
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i, !dbg !508

lor.lhs.false.i:                                  ; preds = %if.end16
  %arrayidx4.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, i64 1, !dbg !509
  %8 = load ptr, ptr %arrayidx4.i, align 8, !dbg !509, !tbaa !411
  %9 = load i32, ptr %width.i, align 8, !dbg !510, !tbaa !423
  %10 = load i32, ptr %height.i, align 4, !dbg !511, !tbaa !426
  %mul7.i = mul nsw i32 %10, %9, !dbg !512
  %div.i = sdiv i32 %mul7.i, 4, !dbg !513
  %conv8.i = sext i32 %div.i to i64, !dbg !514
  %11 = load ptr, ptr %handle, align 8, !dbg !515, !tbaa !434
  %call10.i = tail call i64 @fread(ptr noundef %8, i64 noundef %conv8.i, i64 noundef 1, ptr noundef %11) #10, !dbg !516
  %cmp11.i = icmp eq i64 %call10.i, 0, !dbg !517
  br i1 %cmp11.i, label %cleanup, label %read_frame_internal.exit, !dbg !518

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx15.i = getelementptr inbounds %struct.x264_picture_t, ptr %p_pic, i64 0, i32 7, i32 3, i64 2, !dbg !519
  %12 = load ptr, ptr %arrayidx15.i, align 8, !dbg !519, !tbaa !411
  %13 = load i32, ptr %width.i, align 8, !dbg !520, !tbaa !423
  %14 = load i32, ptr %height.i, align 4, !dbg !521, !tbaa !426
  %mul18.i = mul nsw i32 %14, %13, !dbg !522
  %div19.i = sdiv i32 %mul18.i, 4, !dbg !523
  %conv20.i = sext i32 %div19.i to i64, !dbg !524
  %15 = load ptr, ptr %handle, align 8, !dbg !525, !tbaa !434
  %call22.i = tail call i64 @fread(ptr noundef %12, i64 noundef %conv20.i, i64 noundef 1, ptr noundef %15) #10, !dbg !526
  %cmp23.i.not = icmp eq i64 %call22.i, 0, !dbg !527
  br i1 %cmp23.i.not, label %cleanup, label %if.end20, !dbg !528

if.end20:                                         ; preds = %read_frame_internal.exit
  %add = add nsw i32 %i_frame, 1, !dbg !529
  store i32 %add, ptr %next_frame, align 8, !dbg !530, !tbaa !416
  br label %cleanup, !dbg !531

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.i, %read_frame_internal.exit, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %read_frame_internal.exit ], [ -1, %lor.lhs.false.i ], [ -1, %if.end16 ], !dbg !472
  ret i32 %retval.0, !dbg !532
}

declare void @x264_picture_clean(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr noundef %handle) #2 !dbg !533 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata ptr %handle, metadata !536, metadata !DIExpression()), !dbg !537
  %tobool.not = icmp eq ptr %handle, null, !dbg !538
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !540

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8, !dbg !541, !tbaa !434
  %tobool1.not = icmp eq ptr %0, null, !dbg !542
  br i1 %tobool1.not, label %cleanup, label %if.end, !dbg !543

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !544
  tail call void @free(ptr noundef nonnull %handle) #10, !dbg !545
  br label %cleanup, !dbg !546

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !547
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !548 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !553 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !556 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "yuv_input", scope: !2, file: !13, line: 127, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/yuv.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "4e80518590cb4689aaf4976a13133997")
!4 = !{!5, !6, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !{!0}
!13 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/yuv.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4e80518590cb4689aaf4976a13133997")
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !16, line: 63, baseType: !17)
!16 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/input.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 54, size: 448, elements: !18)
!18 = !{!19, !55, !59, !273, !277, !281, !285}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !17, file: !16, line: 56, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!6, !23, !25, !28, !47}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !27, line: 30, baseType: !5)
!27 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !16, line: 52, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 38, size: 384, elements: !31)
!31 = !{!32, !33, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !30, file: !16, line: 40, baseType: !6, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !30, file: !16, line: 41, baseType: !34, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !30, file: !16, line: 42, baseType: !34, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !30, file: !16, line: 43, baseType: !6, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !30, file: !16, line: 44, baseType: !6, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !30, file: !16, line: 45, baseType: !34, size: 32, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !30, file: !16, line: 46, baseType: !34, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !30, file: !16, line: 47, baseType: !6, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !30, file: !16, line: 48, baseType: !34, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !30, file: !16, line: 49, baseType: !34, size: 32, offset: 288)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !30, file: !16, line: 50, baseType: !6, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !30, file: !16, line: 51, baseType: !6, size: 32, offset: 352)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !16, line: 35, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 29, size: 256, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !49, file: !16, line: 31, baseType: !23, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !49, file: !16, line: 32, baseType: !23, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !49, file: !16, line: 33, baseType: !23, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !49, file: !16, line: 34, baseType: !6, size: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !17, file: !16, line: 57, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!6, !26}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !17, file: !16, line: 58, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!6, !63, !6, !6, !6}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !65, line: 549, baseType: !66)
!65 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 513, size: 1088, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !77, !78, !250, !263, !272}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !66, file: !65, line: 521, baseType: !6, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !66, file: !65, line: 523, baseType: !6, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !66, file: !65, line: 526, baseType: !6, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !66, file: !65, line: 529, baseType: !6, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !66, file: !65, line: 531, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !74, line: 27, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !76)
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !66, file: !65, line: 534, baseType: !73, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !66, file: !65, line: 541, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !65, line: 376, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !65, line: 176, size: 5632, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !131, !132, !133, !134, !138, !139, !153, !154, !155, !156, !157, !188, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !81, file: !65, line: 179, baseType: !36, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !81, file: !65, line: 180, baseType: !6, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !81, file: !65, line: 181, baseType: !6, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !81, file: !65, line: 182, baseType: !6, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !81, file: !65, line: 183, baseType: !6, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !81, file: !65, line: 186, baseType: !6, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !81, file: !65, line: 187, baseType: !6, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !81, file: !65, line: 188, baseType: !6, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !81, file: !65, line: 189, baseType: !6, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !81, file: !65, line: 190, baseType: !6, size: 32, offset: 288)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !81, file: !65, line: 198, baseType: !6, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !81, file: !65, line: 215, baseType: !95, size: 288, offset: 352)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 200, size: 288, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !95, file: !65, line: 203, baseType: !6, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !95, file: !65, line: 204, baseType: !6, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !95, file: !65, line: 206, baseType: !6, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !95, file: !65, line: 209, baseType: !6, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !95, file: !65, line: 210, baseType: !6, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !95, file: !65, line: 211, baseType: !6, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !95, file: !65, line: 212, baseType: !6, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !95, file: !65, line: 213, baseType: !6, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !95, file: !65, line: 214, baseType: !6, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !81, file: !65, line: 218, baseType: !6, size: 32, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !81, file: !65, line: 219, baseType: !6, size: 32, offset: 672)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !81, file: !65, line: 220, baseType: !6, size: 32, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !81, file: !65, line: 221, baseType: !6, size: 32, offset: 736)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !81, file: !65, line: 222, baseType: !6, size: 32, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !81, file: !65, line: 224, baseType: !6, size: 32, offset: 800)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !81, file: !65, line: 225, baseType: !6, size: 32, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !81, file: !65, line: 226, baseType: !6, size: 32, offset: 864)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !81, file: !65, line: 227, baseType: !6, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !81, file: !65, line: 229, baseType: !6, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !81, file: !65, line: 230, baseType: !6, size: 32, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !81, file: !65, line: 231, baseType: !6, size: 32, offset: 992)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !81, file: !65, line: 233, baseType: !6, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !81, file: !65, line: 234, baseType: !6, size: 32, offset: 1056)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !81, file: !65, line: 236, baseType: !6, size: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !81, file: !65, line: 237, baseType: !6, size: 32, offset: 1120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !81, file: !65, line: 239, baseType: !6, size: 32, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !81, file: !65, line: 240, baseType: !23, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !81, file: !65, line: 241, baseType: !125, size: 128, offset: 1280)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !129)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !81, file: !65, line: 242, baseType: !125, size: 128, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !81, file: !65, line: 243, baseType: !125, size: 128, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !81, file: !65, line: 244, baseType: !125, size: 128, offset: 1664)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !81, file: !65, line: 245, baseType: !135, size: 512, offset: 1792)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !81, file: !65, line: 246, baseType: !135, size: 512, offset: 2304)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !81, file: !65, line: 249, baseType: !140, size: 64, offset: 2816)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !5, !6, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !147)
!147 = !{!148, !150, !151, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !149, line: 127, baseType: !36, size: 32)
!149 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/yuv.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !149, line: 127, baseType: !36, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !149, line: 127, baseType: !5, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !149, line: 127, baseType: !5, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !81, file: !65, line: 250, baseType: !5, size: 64, offset: 2880)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !81, file: !65, line: 251, baseType: !6, size: 32, offset: 2944)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !81, file: !65, line: 252, baseType: !6, size: 32, offset: 2976)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !81, file: !65, line: 253, baseType: !23, size: 64, offset: 3008)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !81, file: !65, line: 287, baseType: !158, size: 800, offset: 3072)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 256, size: 800, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !186, !187}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !158, file: !65, line: 258, baseType: !36, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !158, file: !65, line: 259, baseType: !36, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !158, file: !65, line: 261, baseType: !6, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !158, file: !65, line: 262, baseType: !6, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !158, file: !65, line: 263, baseType: !6, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !158, file: !65, line: 264, baseType: !6, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !158, file: !65, line: 265, baseType: !6, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !158, file: !65, line: 267, baseType: !6, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !158, file: !65, line: 268, baseType: !6, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !158, file: !65, line: 269, baseType: !6, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !158, file: !65, line: 270, baseType: !6, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !158, file: !65, line: 271, baseType: !6, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !158, file: !65, line: 272, baseType: !6, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !158, file: !65, line: 273, baseType: !6, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !158, file: !65, line: 274, baseType: !6, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !158, file: !65, line: 275, baseType: !6, size: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !158, file: !65, line: 276, baseType: !6, size: 32, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !158, file: !65, line: 277, baseType: !6, size: 32, offset: 544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !158, file: !65, line: 278, baseType: !179, size: 32, offset: 576)
!179 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !158, file: !65, line: 279, baseType: !179, size: 32, offset: 608)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !158, file: !65, line: 280, baseType: !6, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !158, file: !65, line: 283, baseType: !183, size: 64, offset: 672)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !158, file: !65, line: 285, baseType: !6, size: 32, offset: 736)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !158, file: !65, line: 286, baseType: !6, size: 32, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !81, file: !65, line: 327, baseType: !189, size: 1152, offset: 3904)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 290, size: 1152, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !228, !229}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !189, file: !65, line: 292, baseType: !6, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !189, file: !65, line: 294, baseType: !6, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !189, file: !65, line: 295, baseType: !6, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !189, file: !65, line: 296, baseType: !6, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !189, file: !65, line: 297, baseType: !6, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !189, file: !65, line: 299, baseType: !6, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !189, file: !65, line: 300, baseType: !179, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !189, file: !65, line: 301, baseType: !179, size: 32, offset: 224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !189, file: !65, line: 302, baseType: !179, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !189, file: !65, line: 303, baseType: !6, size: 32, offset: 288)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !189, file: !65, line: 304, baseType: !6, size: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !189, file: !65, line: 305, baseType: !179, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !189, file: !65, line: 306, baseType: !179, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !189, file: !65, line: 307, baseType: !179, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !189, file: !65, line: 309, baseType: !6, size: 32, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !189, file: !65, line: 310, baseType: !179, size: 32, offset: 480)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !189, file: !65, line: 311, baseType: !6, size: 32, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !189, file: !65, line: 312, baseType: !6, size: 32, offset: 544)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !189, file: !65, line: 315, baseType: !6, size: 32, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !189, file: !65, line: 316, baseType: !23, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !189, file: !65, line: 317, baseType: !6, size: 32, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !189, file: !65, line: 318, baseType: !23, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !189, file: !65, line: 321, baseType: !179, size: 32, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !189, file: !65, line: 322, baseType: !179, size: 32, offset: 864)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !189, file: !65, line: 323, baseType: !179, size: 32, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !189, file: !65, line: 324, baseType: !217, size: 64, offset: 960)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !65, line: 174, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 167, size: 256, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !219, file: !65, line: 169, baseType: !6, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !219, file: !65, line: 169, baseType: !6, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !219, file: !65, line: 170, baseType: !6, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !219, file: !65, line: 171, baseType: !6, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !219, file: !65, line: 172, baseType: !179, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !219, file: !65, line: 173, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !189, file: !65, line: 325, baseType: !6, size: 32, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !189, file: !65, line: 326, baseType: !23, size: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !81, file: !65, line: 330, baseType: !6, size: 32, offset: 5056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !81, file: !65, line: 331, baseType: !6, size: 32, offset: 5088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !81, file: !65, line: 332, baseType: !6, size: 32, offset: 5120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !81, file: !65, line: 334, baseType: !6, size: 32, offset: 5152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !81, file: !65, line: 335, baseType: !6, size: 32, offset: 5184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !81, file: !65, line: 336, baseType: !34, size: 32, offset: 5216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !81, file: !65, line: 337, baseType: !34, size: 32, offset: 5248)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !81, file: !65, line: 338, baseType: !34, size: 32, offset: 5280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !81, file: !65, line: 339, baseType: !34, size: 32, offset: 5312)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !81, file: !65, line: 340, baseType: !6, size: 32, offset: 5344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !81, file: !65, line: 344, baseType: !6, size: 32, offset: 5376)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !81, file: !65, line: 356, baseType: !6, size: 32, offset: 5408)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !81, file: !65, line: 364, baseType: !6, size: 32, offset: 5440)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !81, file: !65, line: 367, baseType: !6, size: 32, offset: 5472)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !81, file: !65, line: 368, baseType: !6, size: 32, offset: 5504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !81, file: !65, line: 369, baseType: !6, size: 32, offset: 5536)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !81, file: !65, line: 375, baseType: !247, size: 64, offset: 5568)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !5}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !66, file: !65, line: 543, baseType: !251, size: 448, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !65, line: 511, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 505, size: 448, elements: !253)
!253 = !{!254, !255, !256, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !252, file: !65, line: 507, baseType: !6, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !252, file: !65, line: 508, baseType: !6, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !252, file: !65, line: 509, baseType: !257, size: 128, offset: 64)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !252, file: !65, line: 510, baseType: !261, size: 256, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !258)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !66, file: !65, line: 545, baseType: !264, size: 256, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !65, line: 503, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 496, size: 256, elements: !266)
!266 = !{!267, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !265, file: !65, line: 498, baseType: !268, size: 64)
!268 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !265, file: !65, line: 499, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !265, file: !65, line: 500, baseType: !268, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !265, file: !65, line: 502, baseType: !268, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !66, file: !65, line: 548, baseType: !5, size: 64, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !17, file: !16, line: 59, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!6, !63, !26, !6}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !17, file: !16, line: 60, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!6, !63, !26}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !17, file: !16, line: 61, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !63}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !17, file: !16, line: 62, baseType: !56, size: 64, offset: 384)
!286 = !{i32 7, !"Dwarf Version", i32 5}
!287 = !{i32 2, !"Debug Info Version", i32 3}
!288 = !{i32 1, !"wchar_size", i32 4}
!289 = !{i32 7, !"PIC Level", i32 2}
!290 = !{i32 7, !"PIE Level", i32 2}
!291 = !{i32 7, !"uwtable", i32 2}
!292 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!293 = distinct !DISubprogram(name: "open_file", scope: !13, file: !13, line: 33, type: !21, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!294 = !{!295, !296, !297, !298, !299, !364}
!295 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !293, file: !13, line: 33, type: !23)
!296 = !DILocalVariable(name: "p_handle", arg: 2, scope: !293, file: !13, line: 33, type: !25)
!297 = !DILocalVariable(name: "info", arg: 3, scope: !293, file: !13, line: 33, type: !28)
!298 = !DILocalVariable(name: "opt", arg: 4, scope: !293, file: !13, line: 33, type: !47)
!299 = !DILocalVariable(name: "h", scope: !293, file: !13, line: 35, type: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "yuv_hnd_t", file: !13, line: 31, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 26, size: 192, elements: !303)
!303 = !{!304, !361, !362, !363}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !302, file: !13, line: 28, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !307, line: 7, baseType: !308)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !309, line: 49, size: 1728, elements: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !326, !328, !329, !330, !332, !334, !336, !340, !343, !345, !348, !351, !352, !353, !356, !357}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !308, file: !309, line: 51, baseType: !6, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !308, file: !309, line: 54, baseType: !23, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !308, file: !309, line: 55, baseType: !23, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !308, file: !309, line: 56, baseType: !23, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !308, file: !309, line: 57, baseType: !23, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !308, file: !309, line: 58, baseType: !23, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !308, file: !309, line: 59, baseType: !23, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !308, file: !309, line: 60, baseType: !23, size: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !308, file: !309, line: 61, baseType: !23, size: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !308, file: !309, line: 64, baseType: !23, size: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !308, file: !309, line: 65, baseType: !23, size: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !308, file: !309, line: 66, baseType: !23, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !308, file: !309, line: 68, baseType: !324, size: 64, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !309, line: 36, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !308, file: !309, line: 70, baseType: !327, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !308, file: !309, line: 72, baseType: !6, size: 32, offset: 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !308, file: !309, line: 73, baseType: !6, size: 32, offset: 928)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !308, file: !309, line: 74, baseType: !331, size: 64, offset: 960)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !76)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !308, file: !309, line: 77, baseType: !333, size: 16, offset: 1024)
!333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !308, file: !309, line: 78, baseType: !335, size: 8, offset: 1040)
!335 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !308, file: !309, line: 79, baseType: !337, size: 8, offset: 1048)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 1)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !308, file: !309, line: 81, baseType: !341, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !309, line: 43, baseType: null)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !308, file: !309, line: 89, baseType: !344, size: 64, offset: 1152)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 153, baseType: !76)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !308, file: !309, line: 91, baseType: !346, size: 64, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !309, line: 37, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !308, file: !309, line: 92, baseType: !349, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !309, line: 38, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !308, file: !309, line: 93, baseType: !327, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !308, file: !309, line: 94, baseType: !5, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !308, file: !309, line: 95, baseType: !354, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !355, line: 46, baseType: !11)
!355 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !308, file: !309, line: 96, baseType: !6, size: 32, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !308, file: !309, line: 98, baseType: !358, size: 160, offset: 1568)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 20)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !302, file: !13, line: 29, baseType: !6, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !302, file: !13, line: 29, baseType: !6, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !302, file: !13, line: 30, baseType: !6, size: 32, offset: 128)
!364 = !DILocalVariable(name: "p", scope: !365, file: !13, line: 42, type: !23)
!365 = distinct !DILexicalBlock(scope: !366, file: !13, line: 42, column: 9)
!366 = distinct !DILexicalBlock(scope: !367, file: !13, line: 40, column: 5)
!367 = distinct !DILexicalBlock(scope: !293, file: !13, line: 39, column: 9)
!368 = !DILocation(line: 0, scope: !293)
!369 = !DILocation(line: 35, column: 20, scope: !293)
!370 = !DILocation(line: 36, column: 10, scope: !371)
!371 = distinct !DILexicalBlock(scope: !293, file: !13, line: 36, column: 9)
!372 = !DILocation(line: 36, column: 9, scope: !293)
!373 = !DILocation(line: 39, column: 15, scope: !367)
!374 = !{!375, !376, i64 8}
!375 = !{!"", !376, i64 0, !376, i64 8, !376, i64 16, !379, i64 24}
!376 = !{!"any pointer", !377, i64 0}
!377 = !{!"omnipotent char", !378, i64 0}
!378 = !{!"Simple C/C++ TBAA"}
!379 = !{!"int", !377, i64 0}
!380 = !DILocation(line: 39, column: 10, scope: !367)
!381 = !DILocation(line: 0, scope: !367)
!382 = !DILocation(line: 39, column: 9, scope: !293)
!383 = !DILocation(line: 0, scope: !365)
!384 = !DILocation(line: 42, column: 38, scope: !385)
!385 = distinct !DILexicalBlock(scope: !365, file: !13, line: 42, column: 9)
!386 = !{!377, !377, i64 0}
!387 = !DILocation(line: 42, column: 9, scope: !365)
!388 = !DILocation(line: 43, column: 27, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !13, line: 43, column: 17)
!390 = !DILocation(line: 43, column: 43, scope: !389)
!391 = !DILocation(line: 43, column: 93, scope: !389)
!392 = !DILocation(line: 43, column: 17, scope: !385)
!393 = !DILocation(line: 42, column: 43, scope: !385)
!394 = distinct !{!394, !387, !395, !396, !397}
!395 = !DILocation(line: 44, column: 17, scope: !365)
!396 = !{!"llvm.loop.mustprogress"}
!397 = !{!"llvm.loop.unroll.disable"}
!398 = !DILocation(line: 47, column: 9, scope: !367)
!399 = !DILocation(line: 48, column: 16, scope: !400)
!400 = distinct !DILexicalBlock(scope: !293, file: !13, line: 48, column: 9)
!401 = !{!402, !379, i64 44}
!402 = !{!"", !379, i64 0, !379, i64 4, !379, i64 8, !379, i64 12, !379, i64 16, !379, i64 20, !379, i64 24, !379, i64 28, !379, i64 32, !379, i64 36, !379, i64 40, !379, i64 44}
!403 = !DILocation(line: 48, column: 10, scope: !400)
!404 = !DILocation(line: 48, column: 22, scope: !400)
!405 = !DILocation(line: 48, column: 32, scope: !400)
!406 = !{!402, !379, i64 12}
!407 = !DILocation(line: 48, column: 26, scope: !400)
!408 = !DILocation(line: 48, column: 9, scope: !293)
!409 = !DILocation(line: 50, column: 18, scope: !410)
!410 = distinct !DILexicalBlock(scope: !400, file: !13, line: 49, column: 5)
!411 = !{!376, !376, i64 0}
!412 = !DILocation(line: 50, column: 9, scope: !410)
!413 = !DILocation(line: 51, column: 9, scope: !410)
!414 = !DILocation(line: 54, column: 8, scope: !293)
!415 = !DILocation(line: 54, column: 19, scope: !293)
!416 = !{!417, !379, i64 16}
!417 = !{!"", !376, i64 0, !379, i64 8, !379, i64 12, !379, i64 16}
!418 = !DILocation(line: 55, column: 11, scope: !293)
!419 = !DILocation(line: 55, column: 19, scope: !293)
!420 = !{!402, !379, i64 40}
!421 = !DILocation(line: 56, column: 8, scope: !293)
!422 = !DILocation(line: 56, column: 19, scope: !293)
!423 = !{!417, !379, i64 8}
!424 = !DILocation(line: 57, column: 8, scope: !293)
!425 = !DILocation(line: 57, column: 19, scope: !293)
!426 = !{!417, !379, i64 12}
!427 = !DILocation(line: 59, column: 10, scope: !428)
!428 = distinct !DILexicalBlock(scope: !293, file: !13, line: 59, column: 9)
!429 = !DILocation(line: 59, column: 9, scope: !293)
!430 = !DILocation(line: 60, column: 17, scope: !428)
!431 = !DILocation(line: 60, column: 9, scope: !428)
!432 = !DILocation(line: 62, column: 17, scope: !428)
!433 = !DILocation(line: 0, scope: !428)
!434 = !{!417, !376, i64 0}
!435 = !DILocation(line: 63, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !293, file: !13, line: 63, column: 9)
!437 = !DILocation(line: 63, column: 9, scope: !293)
!438 = !DILocation(line: 66, column: 15, scope: !293)
!439 = !DILocation(line: 67, column: 5, scope: !293)
!440 = !DILocation(line: 68, column: 1, scope: !293)
!441 = distinct !DISubprogram(name: "get_frame_total", scope: !13, file: !13, line: 70, type: !57, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "handle", arg: 1, scope: !441, file: !13, line: 70, type: !26)
!444 = !DILocalVariable(name: "h", scope: !441, file: !13, line: 72, type: !300)
!445 = !DILocalVariable(name: "i_frame_total", scope: !441, file: !13, line: 73, type: !6)
!446 = !DILocalVariable(name: "i_size", scope: !447, file: !13, line: 78, type: !7)
!447 = distinct !DILexicalBlock(scope: !448, file: !13, line: 76, column: 5)
!448 = distinct !DILexicalBlock(scope: !441, file: !13, line: 75, column: 9)
!449 = !DILocation(line: 0, scope: !441)
!450 = !DILocation(line: 77, column: 19, scope: !447)
!451 = !DILocation(line: 77, column: 9, scope: !447)
!452 = !DILocation(line: 78, column: 37, scope: !447)
!453 = !DILocation(line: 78, column: 27, scope: !447)
!454 = !DILocation(line: 0, scope: !447)
!455 = !DILocation(line: 79, column: 19, scope: !447)
!456 = !DILocation(line: 79, column: 9, scope: !447)
!457 = !DILocation(line: 80, column: 45, scope: !447)
!458 = !DILocation(line: 80, column: 56, scope: !447)
!459 = !DILocation(line: 80, column: 51, scope: !447)
!460 = !DILocation(line: 80, column: 63, scope: !447)
!461 = !DILocation(line: 80, column: 67, scope: !447)
!462 = !DILocation(line: 80, column: 40, scope: !447)
!463 = !DILocation(line: 80, column: 38, scope: !447)
!464 = !DILocation(line: 80, column: 25, scope: !447)
!465 = !DILocation(line: 83, column: 5, scope: !441)
!466 = distinct !DISubprogram(name: "read_frame", scope: !13, file: !13, line: 93, type: !275, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!467 = !{!468, !469, !470, !471}
!468 = !DILocalVariable(name: "p_pic", arg: 1, scope: !466, file: !13, line: 93, type: !63)
!469 = !DILocalVariable(name: "handle", arg: 2, scope: !466, file: !13, line: 93, type: !26)
!470 = !DILocalVariable(name: "i_frame", arg: 3, scope: !466, file: !13, line: 93, type: !6)
!471 = !DILocalVariable(name: "h", scope: !466, file: !13, line: 95, type: !300)
!472 = !DILocation(line: 0, scope: !466)
!473 = !DILocation(line: 97, column: 22, scope: !474)
!474 = distinct !DILexicalBlock(scope: !466, file: !13, line: 97, column: 9)
!475 = !DILocation(line: 97, column: 17, scope: !474)
!476 = !DILocation(line: 97, column: 9, scope: !466)
!477 = !DILocation(line: 100, column: 23, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !13, line: 99, column: 13)
!479 = distinct !DILexicalBlock(scope: !474, file: !13, line: 98, column: 5)
!480 = !DILocation(line: 100, column: 27, scope: !478)
!481 = !DILocation(line: 100, column: 50, scope: !478)
!482 = !DILocation(line: 100, column: 47, scope: !478)
!483 = !DILocation(line: 100, column: 61, scope: !478)
!484 = !DILocation(line: 100, column: 58, scope: !478)
!485 = !DILocation(line: 100, column: 45, scope: !478)
!486 = !DILocation(line: 100, column: 56, scope: !478)
!487 = !DILocation(line: 100, column: 68, scope: !478)
!488 = !DILocation(line: 100, column: 72, scope: !478)
!489 = !DILocation(line: 100, column: 13, scope: !478)
!490 = !DILocalVariable(name: "p_pic", arg: 1, scope: !491, file: !13, line: 86, type: !63)
!491 = distinct !DISubprogram(name: "read_frame_internal", scope: !13, file: !13, line: 86, type: !492, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!6, !63, !300}
!494 = !{!490, !495}
!495 = !DILocalVariable(name: "h", arg: 2, scope: !491, file: !13, line: 86, type: !300)
!496 = !DILocation(line: 0, scope: !491, inlinedAt: !497)
!497 = distinct !DILocation(line: 110, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !466, file: !13, line: 110, column: 9)
!499 = !DILocation(line: 88, column: 30, scope: !491, inlinedAt: !497)
!500 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !497)
!501 = !DILocation(line: 88, column: 43, scope: !491, inlinedAt: !497)
!502 = !DILocation(line: 88, column: 54, scope: !491, inlinedAt: !497)
!503 = !DILocation(line: 88, column: 49, scope: !491, inlinedAt: !497)
!504 = !DILocation(line: 88, column: 40, scope: !491, inlinedAt: !497)
!505 = !DILocation(line: 88, column: 68, scope: !491, inlinedAt: !497)
!506 = !DILocation(line: 88, column: 12, scope: !491, inlinedAt: !497)
!507 = !DILocation(line: 88, column: 73, scope: !491, inlinedAt: !497)
!508 = !DILocation(line: 89, column: 9, scope: !491, inlinedAt: !497)
!509 = !DILocation(line: 89, column: 19, scope: !491, inlinedAt: !497)
!510 = !DILocation(line: 89, column: 43, scope: !491, inlinedAt: !497)
!511 = !DILocation(line: 89, column: 54, scope: !491, inlinedAt: !497)
!512 = !DILocation(line: 89, column: 49, scope: !491, inlinedAt: !497)
!513 = !DILocation(line: 89, column: 61, scope: !491, inlinedAt: !497)
!514 = !DILocation(line: 89, column: 40, scope: !491, inlinedAt: !497)
!515 = !DILocation(line: 89, column: 72, scope: !491, inlinedAt: !497)
!516 = !DILocation(line: 89, column: 12, scope: !491, inlinedAt: !497)
!517 = !DILocation(line: 89, column: 77, scope: !491, inlinedAt: !497)
!518 = !DILocation(line: 90, column: 9, scope: !491, inlinedAt: !497)
!519 = !DILocation(line: 90, column: 19, scope: !491, inlinedAt: !497)
!520 = !DILocation(line: 90, column: 43, scope: !491, inlinedAt: !497)
!521 = !DILocation(line: 90, column: 54, scope: !491, inlinedAt: !497)
!522 = !DILocation(line: 90, column: 49, scope: !491, inlinedAt: !497)
!523 = !DILocation(line: 90, column: 61, scope: !491, inlinedAt: !497)
!524 = !DILocation(line: 90, column: 40, scope: !491, inlinedAt: !497)
!525 = !DILocation(line: 90, column: 72, scope: !491, inlinedAt: !497)
!526 = !DILocation(line: 90, column: 12, scope: !491, inlinedAt: !497)
!527 = !DILocation(line: 90, column: 77, scope: !491, inlinedAt: !497)
!528 = !DILocation(line: 110, column: 9, scope: !466)
!529 = !DILocation(line: 113, column: 28, scope: !466)
!530 = !DILocation(line: 113, column: 19, scope: !466)
!531 = !DILocation(line: 114, column: 5, scope: !466)
!532 = !DILocation(line: 115, column: 1, scope: !466)
!533 = distinct !DISubprogram(name: "close_file", scope: !13, file: !13, line: 117, type: !57, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "handle", arg: 1, scope: !533, file: !13, line: 117, type: !26)
!536 = !DILocalVariable(name: "h", scope: !533, file: !13, line: 119, type: !300)
!537 = !DILocation(line: 0, scope: !533)
!538 = !DILocation(line: 120, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !13, line: 120, column: 9)
!540 = !DILocation(line: 120, column: 12, scope: !539)
!541 = !DILocation(line: 120, column: 19, scope: !539)
!542 = !DILocation(line: 120, column: 16, scope: !539)
!543 = !DILocation(line: 120, column: 9, scope: !533)
!544 = !DILocation(line: 122, column: 5, scope: !533)
!545 = !DILocation(line: 123, column: 5, scope: !533)
!546 = !DILocation(line: 124, column: 5, scope: !533)
!547 = !DILocation(line: 125, column: 1, scope: !533)
!548 = !DISubprogram(name: "fseek", scope: !549, file: !549, line: 684, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !552)
!549 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!550 = !DISubroutineType(types: !551)
!551 = !{!6, !305, !76, !6}
!552 = !{}
!553 = !DISubprogram(name: "ftell", scope: !549, file: !549, line: 689, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !552)
!554 = !DISubroutineType(types: !555)
!555 = !{!76, !305}
!556 = !DISubprogram(name: "fclose", scope: !549, file: !549, line: 213, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !552)
!557 = !DISubroutineType(types: !558)
!558 = !{!6, !305}
