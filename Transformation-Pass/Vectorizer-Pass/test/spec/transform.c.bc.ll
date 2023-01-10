; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/transform.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/transform.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Chop/Image\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Crop/Image\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Excerpt/Image\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Flip/Image\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Flop/Image\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Roll/Image\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Splice/Image\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Transpose/Image\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Transverse/Image\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AutoOrientImage(ptr noundef %image, i32 noundef %orientation, ptr noundef %exception) local_unnamed_addr #0 !dbg !660 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !669, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i32 %orientation, metadata !670, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata ptr %exception, metadata !671, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata ptr null, metadata !672, metadata !DIExpression()), !dbg !673
  switch i32 %orientation, label %sw.default [
    i32 8, label %sw.bb13
    i32 7, label %sw.bb11
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
  ], !dbg !674

sw.default:                                       ; preds = %entry
  %call = tail call ptr @CloneImage(ptr noundef %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #8, !dbg !675
  call void @llvm.dbg.value(metadata ptr %call, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !678

sw.bb1:                                           ; preds = %entry
  %call2 = tail call ptr @FlopImage(ptr noundef %image, ptr noundef %exception), !dbg !679
  call void @llvm.dbg.value(metadata ptr %call2, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !681

sw.bb3:                                           ; preds = %entry
  %call4 = tail call ptr @RotateImage(ptr noundef %image, double noundef 1.800000e+02, ptr noundef %exception) #8, !dbg !682
  call void @llvm.dbg.value(metadata ptr %call4, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !684

sw.bb5:                                           ; preds = %entry
  %call6 = tail call ptr @FlipImage(ptr noundef %image, ptr noundef %exception), !dbg !685
  call void @llvm.dbg.value(metadata ptr %call6, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !687

sw.bb7:                                           ; preds = %entry
  %call8 = tail call ptr @TransposeImage(ptr noundef %image, ptr noundef %exception), !dbg !688
  call void @llvm.dbg.value(metadata ptr %call8, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !690

sw.bb9:                                           ; preds = %entry
  %call10 = tail call ptr @RotateImage(ptr noundef %image, double noundef 9.000000e+01, ptr noundef %exception) #8, !dbg !691
  call void @llvm.dbg.value(metadata ptr %call10, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !693

sw.bb11:                                          ; preds = %entry
  %call12 = tail call ptr @TransverseImage(ptr noundef %image, ptr noundef %exception), !dbg !694
  call void @llvm.dbg.value(metadata ptr %call12, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !696

sw.bb13:                                          ; preds = %entry
  %call14 = tail call ptr @RotateImage(ptr noundef %image, double noundef 2.700000e+02, ptr noundef %exception) #8, !dbg !697
  call void @llvm.dbg.value(metadata ptr %call14, metadata !672, metadata !DIExpression()), !dbg !673
  br label %sw.epilog, !dbg !699

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.default
  %orient_image.0 = phi ptr [ %call, %sw.default ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call12, %sw.bb11 ], [ %call14, %sw.bb13 ], !dbg !700
  call void @llvm.dbg.value(metadata ptr %orient_image.0, metadata !672, metadata !DIExpression()), !dbg !673
  %cmp.not = icmp eq ptr %orient_image.0, null, !dbg !701
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !703

if.then:                                          ; preds = %sw.epilog
  %orientation15 = getelementptr inbounds %struct._Image, ptr %orient_image.0, i64 0, i32 4, !dbg !704
  store i32 1, ptr %orientation15, align 8, !dbg !705, !tbaa !706
  br label %if.end, !dbg !725

if.end:                                           ; preds = %if.then, %sw.epilog
  ret ptr %orient_image.0, !dbg !726
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !727 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @FlopImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !733 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !737, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %exception, metadata !738, metadata !DIExpression()), !dbg !765
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !766
  %0 = load i32, ptr %debug, align 8, !dbg !766, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !769
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !770

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !771
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1386, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !772
  br label %if.end, !dbg !773

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !774
  %1 = load i64, ptr %columns, align 8, !dbg !774, !tbaa !775
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !776
  %2 = load i64, ptr %rows, align 8, !dbg !776, !tbaa !777
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !778
  call void @llvm.dbg.value(metadata ptr %call1, metadata !745, metadata !DIExpression()), !dbg !765
  %cmp2 = icmp eq ptr %call1, null, !dbg !779
  br i1 %cmp2, label %cleanup90, label %if.end4, !dbg !781

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !746, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 0, metadata !747, metadata !DIExpression()), !dbg !765
  %page5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !782
  %page.sroa.0.0.copyload = load i64, ptr %page5, align 8, !dbg !782, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !765
  %page.sroa.6.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 8, !dbg !782
  %page.sroa.6.0.copyload = load i64, ptr %page.sroa.6.0.page5.sroa_idx, align 8, !dbg !782, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page.sroa.6.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !765
  %page.sroa.6116.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 16, !dbg !782
  %page.sroa.6116.0.copyload = load i64, ptr %page.sroa.6116.0.page5.sroa_idx, align 8, !dbg !782, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %page.sroa.6116.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !765
  %page.sroa.8.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 24, !dbg !782
  %page.sroa.8.0.copyload = load i64, ptr %page.sroa.8.0.page5.sroa_idx, align 8, !dbg !782, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %page.sroa.8.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !765
  %call6 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !788
  call void @llvm.dbg.value(metadata ptr %call6, metadata !744, metadata !DIExpression()), !dbg !765
  %call7 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #8, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call7, metadata !739, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 0, metadata !749, metadata !DIExpression()), !dbg !765
  %rows8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !749, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 1, metadata !746, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 0, metadata !747, metadata !DIExpression()), !dbg !765
  %3 = load i64, ptr %rows8, align 8, !dbg !790, !tbaa !777
  %cmp9160 = icmp sgt i64 %3, 0, !dbg !791
  br i1 %cmp9160, label %for.body.lr.ph, label %for.end71, !dbg !792

for.body.lr.ph:                                   ; preds = %if.end4
  %columns15 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !792

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0163 = phi i64 [ 0, %for.body.lr.ph ], [ %inc70, %cleanup ]
  %status.0162 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0161 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0163, metadata !749, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %status.0162, metadata !746, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 %progress.0161, metadata !747, metadata !DIExpression()), !dbg !765
  %cmp10 = icmp eq i32 %status.0162, 0, !dbg !793
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !795

if.end12:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !796, !tbaa !775
  %call14 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call6, i64 noundef 0, i64 noundef %y.0163, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #9, !dbg !797
  call void @llvm.dbg.value(metadata ptr %call14, metadata !755, metadata !DIExpression()), !dbg !798
  %5 = load i64, ptr %columns15, align 8, !dbg !799, !tbaa !775
  %call16 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call7, i64 noundef 0, i64 noundef %y.0163, i64 noundef %5, i64 noundef 1, ptr noundef %exception) #9, !dbg !800
  call void @llvm.dbg.value(metadata ptr %call16, metadata !760, metadata !DIExpression()), !dbg !798
  %cmp17 = icmp eq ptr %call14, null, !dbg !801
  %cmp18 = icmp eq ptr %call16, null
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18, !dbg !803
  br i1 %or.cond, label %cleanup, label %if.end20, !dbg !803

if.end20:                                         ; preds = %if.end12
  %6 = load i64, ptr %columns15, align 8, !dbg !804, !tbaa !775
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call16, i64 %6), metadata !760, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !798
  %call22 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call6) #8, !dbg !805
  call void @llvm.dbg.value(metadata ptr %call22, metadata !750, metadata !DIExpression()), !dbg !798
  %call23 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call7) #8, !dbg !806
  call void @llvm.dbg.value(metadata ptr %call23, metadata !757, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !759, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call16, i64 %6), metadata !760, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !798
  call void @llvm.dbg.value(metadata ptr %call14, metadata !755, metadata !DIExpression()), !dbg !798
  %7 = load i64, ptr %columns15, align 8, !dbg !807, !tbaa !775
  %cmp26155 = icmp sgt i64 %7, 0, !dbg !810
  br i1 %cmp26155, label %for.body27.lr.ph, label %for.end, !dbg !811

for.body27.lr.ph:                                 ; preds = %if.end20
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call16, i64 %6, !dbg !812
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !760, metadata !DIExpression()), !dbg !798
  %cmp29 = icmp ne ptr %call22, null
  %cmp30 = icmp ne ptr %call23, null
  %or.cond97 = select i1 %cmp29, i1 %cmp30, i1 false
  br i1 %or.cond97, label %for.body27.us.preheader, label %for.body27, !dbg !813

for.body27.us.preheader:                          ; preds = %for.body27.lr.ph
  %add.ptr43.us = getelementptr inbounds i16, ptr %call23, i64 -1
  br label %for.body27.us, !dbg !811

for.body27.us:                                    ; preds = %for.body27.us.preheader, %for.body27.us
  %q.0159.us = phi ptr [ %incdec.ptr.us, %for.body27.us ], [ %add.ptr, %for.body27.us.preheader ]
  %x.0157.us = phi i64 [ %inc.us, %for.body27.us ], [ 0, %for.body27.us.preheader ]
  %p.0156.us = phi ptr [ %incdec.ptr28.us, %for.body27.us ], [ %call14, %for.body27.us.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.0159.us, metadata !760, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %x.0157.us, metadata !759, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0156.us, metadata !755, metadata !DIExpression()), !dbg !798
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0159.us, i64 -1, !dbg !816
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !760, metadata !DIExpression()), !dbg !798
  %incdec.ptr28.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0156.us, i64 1, !dbg !817
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.us, metadata !755, metadata !DIExpression()), !dbg !798
  %8 = load i64, ptr %p.0156.us, align 2, !dbg !818
  store i64 %8, ptr %incdec.ptr.us, align 2, !dbg !818
  %idx.neg.us = sub nsw i64 0, %x.0157.us, !dbg !819
  %add.ptr38.us = getelementptr inbounds i16, ptr %call22, i64 %x.0157.us, !dbg !819
  %9 = load i16, ptr %add.ptr38.us, align 2, !dbg !819, !tbaa !822
  %10 = load i64, ptr %columns15, align 8, !dbg !819, !tbaa !775
  %add.ptr45.us = getelementptr inbounds i16, ptr %add.ptr43.us, i64 %10, !dbg !819
  %add.ptr46.us = getelementptr inbounds i16, ptr %add.ptr45.us, i64 %idx.neg.us, !dbg !819
  store i16 %9, ptr %add.ptr46.us, align 2, !dbg !819, !tbaa !822
  %inc.us = add nuw nsw i64 %x.0157.us, 1, !dbg !823
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !760, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !759, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.us, metadata !755, metadata !DIExpression()), !dbg !798
  %cmp26.us = icmp slt i64 %inc.us, %10, !dbg !810
  br i1 %cmp26.us, label %for.body27.us, label %for.end, !dbg !811, !llvm.loop !824

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %q.0159 = phi ptr [ %incdec.ptr, %for.body27 ], [ %add.ptr, %for.body27.lr.ph ]
  %x.0157 = phi i64 [ %inc, %for.body27 ], [ 0, %for.body27.lr.ph ]
  %p.0156 = phi ptr [ %incdec.ptr28, %for.body27 ], [ %call14, %for.body27.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0159, metadata !760, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %x.0157, metadata !759, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0156, metadata !755, metadata !DIExpression()), !dbg !798
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0159, i64 -1, !dbg !816
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !760, metadata !DIExpression()), !dbg !798
  %incdec.ptr28 = getelementptr inbounds %struct._PixelPacket, ptr %p.0156, i64 1, !dbg !817
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28, metadata !755, metadata !DIExpression()), !dbg !798
  %11 = load i64, ptr %p.0156, align 2, !dbg !818
  store i64 %11, ptr %incdec.ptr, align 2, !dbg !818
  %inc = add nuw nsw i64 %x.0157, 1, !dbg !823
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !760, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %inc, metadata !759, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28, metadata !755, metadata !DIExpression()), !dbg !798
  %12 = load i64, ptr %columns15, align 8, !dbg !807, !tbaa !775
  %cmp26 = icmp slt i64 %inc, %12, !dbg !810
  br i1 %cmp26, label %for.body27, label %for.end, !dbg !811, !llvm.loop !824

for.end:                                          ; preds = %for.body27, %for.body27.us, %if.end20
  %call49 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call7, ptr noundef %exception) #9, !dbg !828
  %cmp50 = icmp ne i32 %call49, 0, !dbg !830
  %spec.select = zext i1 %cmp50 to i32, !dbg !831
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !746, metadata !DIExpression()), !dbg !765
  %13 = load ptr, ptr %progress_monitor, align 8, !dbg !832, !tbaa !833
  %cmp54.not = icmp eq ptr %13, null, !dbg !834
  br i1 %cmp54.not, label %cleanup, label %SetImageProgress.exit, !dbg !835

SetImageProgress.exit:                            ; preds = %for.end
  %inc57 = add nsw i64 %progress.0161, 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !747, metadata !DIExpression()), !dbg !765
  %14 = load i64, ptr %rows, align 8, !dbg !837, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !848
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !844, metadata !DIExpression()) #8, !dbg !848
  call void @llvm.dbg.value(metadata i64 %progress.0161, metadata !845, metadata !DIExpression()) #8, !dbg !848
  call void @llvm.dbg.value(metadata i64 %14, metadata !846, metadata !DIExpression()) #8, !dbg !848
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !851
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i) #8, !dbg !852
  %15 = load ptr, ptr %progress_monitor, align 8, !dbg !853, !tbaa !833
  %16 = load ptr, ptr %client_data.i, align 8, !dbg !854, !tbaa !855
  %call4.i = call i32 %15(ptr noundef nonnull %message.i, i64 noundef %progress.0161, i64 noundef %14, ptr noundef %16) #8, !dbg !856
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !857
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !762, metadata !DIExpression()), !dbg !858
  %cmp60 = icmp eq i32 %call4.i, 0, !dbg !859
  %spec.select153 = select i1 %cmp60, i32 0, i32 %spec.select, !dbg !861
  call void @llvm.dbg.value(metadata i32 %spec.select153, metadata !746, metadata !DIExpression()), !dbg !765
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end12, %for.body
  %progress.2 = phi i64 [ %progress.0161, %for.body ], [ %progress.0161, %if.end12 ], [ %inc57, %SetImageProgress.exit ], [ %progress.0161, %for.end ], !dbg !765
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end12 ], [ %spec.select153, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !765
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !746, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !747, metadata !DIExpression()), !dbg !765
  %inc70 = add nuw nsw i64 %y.0163, 1, !dbg !863
  call void @llvm.dbg.value(metadata i64 %inc70, metadata !749, metadata !DIExpression()), !dbg !765
  %17 = load i64, ptr %rows8, align 8, !dbg !790, !tbaa !777
  %cmp9 = icmp slt i64 %inc70, %17, !dbg !791
  br i1 %cmp9, label %for.body, label %for.end71, !dbg !792, !llvm.loop !864

for.end71:                                        ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.4, %cleanup ], !dbg !866
  %call72 = call ptr @DestroyCacheView(ptr noundef %call7) #8, !dbg !867
  call void @llvm.dbg.value(metadata ptr %call72, metadata !739, metadata !DIExpression()), !dbg !765
  %call73 = call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !868
  call void @llvm.dbg.value(metadata ptr %call73, metadata !744, metadata !DIExpression()), !dbg !765
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !869
  %18 = load i32, ptr %type, align 8, !dbg !869, !tbaa !870
  %type74 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !871
  store i32 %18, ptr %type74, align 8, !dbg !872, !tbaa !870
  %cmp75.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !873
  br i1 %cmp75.not, label %if.end83, label %if.then77, !dbg !875

if.then77:                                        ; preds = %for.end71
  %columns79 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !876
  %19 = load i64, ptr %columns79, align 8, !dbg !876, !tbaa !775
  %20 = add i64 %page.sroa.6116.0.copyload, %19, !dbg !877
  %sub81 = sub i64 %page.sroa.0.0.copyload, %20, !dbg !877
  call void @llvm.dbg.value(metadata i64 %sub81, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !765
  br label %if.end83, !dbg !878

if.end83:                                         ; preds = %if.then77, %for.end71
  %page.sroa.6116.0 = phi i64 [ %sub81, %if.then77 ], [ %page.sroa.6116.0.copyload, %for.end71 ], !dbg !765
  call void @llvm.dbg.value(metadata i64 %page.sroa.6116.0, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !765
  %page84 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !879
  store i64 %page.sroa.0.0.copyload, ptr %page84, align 8, !dbg !880, !tbaa.struct !783
  %page.sroa.6.0.page84.sroa_idx = getelementptr inbounds i8, ptr %page84, i64 8, !dbg !880
  store i64 %page.sroa.6.0.copyload, ptr %page.sroa.6.0.page84.sroa_idx, align 8, !dbg !880, !tbaa.struct !785
  %page.sroa.6116.0.page84.sroa_idx = getelementptr inbounds i8, ptr %page84, i64 16, !dbg !880
  store i64 %page.sroa.6116.0, ptr %page.sroa.6116.0.page84.sroa_idx, align 8, !dbg !880, !tbaa.struct !786
  %page.sroa.8.0.page84.sroa_idx = getelementptr inbounds i8, ptr %page84, i64 24, !dbg !880
  store i64 %page.sroa.8.0.copyload, ptr %page.sroa.8.0.page84.sroa_idx, align 8, !dbg !880, !tbaa.struct !787
  %cmp85 = icmp eq i32 %status.0.lcssa, 0, !dbg !881
  br i1 %cmp85, label %if.then87, label %cleanup90, !dbg !883

if.then87:                                        ; preds = %if.end83
  %call88 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !884
  call void @llvm.dbg.value(metadata ptr %call88, metadata !745, metadata !DIExpression()), !dbg !765
  br label %cleanup90, !dbg !885

cleanup90:                                        ; preds = %if.end83, %if.then87, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call88, %if.then87 ], [ %call1, %if.end83 ], !dbg !765
  ret ptr %retval.0, !dbg !886
}

declare !dbg !887 ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @FlipImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !892 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !894, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %exception, metadata !895, metadata !DIExpression()), !dbg !913
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !914
  %0 = load i32, ptr %debug, align 8, !dbg !914, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !916
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !917

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !918
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1258, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !919
  br label %if.end, !dbg !920

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !921
  %1 = load i64, ptr %columns, align 8, !dbg !921, !tbaa !775
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !922
  %2 = load i64, ptr %rows, align 8, !dbg !922, !tbaa !777
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !923
  call void @llvm.dbg.value(metadata ptr %call1, metadata !898, metadata !DIExpression()), !dbg !913
  %cmp2 = icmp eq ptr %call1, null, !dbg !924
  br i1 %cmp2, label %cleanup69, label %if.end4, !dbg !926

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !899, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 0, metadata !900, metadata !DIExpression()), !dbg !913
  %page5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !927
  %page.sroa.0.0.copyload = load i64, ptr %page5, align 8, !dbg !927, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !913
  %page.sroa.4.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 8, !dbg !927
  %page.sroa.4.0.copyload = load i64, ptr %page.sroa.4.0.page5.sroa_idx, align 8, !dbg !927, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page.sroa.4.0.copyload, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !913
  %page.sroa.6.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 16, !dbg !927
  %page.sroa.6.0.copyload = load i64, ptr %page.sroa.6.0.page5.sroa_idx, align 8, !dbg !927, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %page.sroa.6.0.copyload, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !913
  %page.sroa.687.0.page5.sroa_idx = getelementptr inbounds i8, ptr %page5, i64 24, !dbg !927
  %page.sroa.687.0.copyload = load i64, ptr %page.sroa.687.0.page5.sroa_idx, align 8, !dbg !927, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %page.sroa.687.0.copyload, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !913
  %call6 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !928
  call void @llvm.dbg.value(metadata ptr %call6, metadata !897, metadata !DIExpression()), !dbg !913
  %call7 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #8, !dbg !929
  call void @llvm.dbg.value(metadata ptr %call7, metadata !896, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 0, metadata !902, metadata !DIExpression()), !dbg !913
  %rows8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !899, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 0, metadata !902, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 0, metadata !900, metadata !DIExpression()), !dbg !913
  %3 = load i64, ptr %rows8, align 8, !dbg !930, !tbaa !777
  %cmp9124 = icmp sgt i64 %3, 0, !dbg !931
  br i1 %cmp9124, label %for.body.lr.ph, label %for.end, !dbg !932

for.body.lr.ph:                                   ; preds = %if.end4
  %columns17 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !932

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0128 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0126 = phi i64 [ 0, %for.body.lr.ph ], [ %inc51, %cleanup ]
  %progress.0125 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0128, metadata !899, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 %y.0126, metadata !902, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 %progress.0125, metadata !900, metadata !DIExpression()), !dbg !913
  %cmp10 = icmp eq i32 %status.0128, 0, !dbg !933
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !935

if.end12:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !936, !tbaa !775
  %call14 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call6, i64 noundef 0, i64 noundef %y.0126, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #9, !dbg !937
  call void @llvm.dbg.value(metadata ptr %call14, metadata !907, metadata !DIExpression()), !dbg !938
  %5 = load i64, ptr %rows8, align 8, !dbg !939, !tbaa !777
  %6 = xor i64 %y.0126, -1, !dbg !940
  %sub16 = add i64 %5, %6, !dbg !940
  %7 = load i64, ptr %columns17, align 8, !dbg !941, !tbaa !775
  %call18 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call7, i64 noundef 0, i64 noundef %sub16, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #9, !dbg !942
  call void @llvm.dbg.value(metadata ptr %call18, metadata !909, metadata !DIExpression()), !dbg !938
  %cmp19 = icmp eq ptr %call14, null, !dbg !943
  %cmp20 = icmp eq ptr %call18, null
  %or.cond = select i1 %cmp19, i1 true, i1 %cmp20, !dbg !945
  br i1 %or.cond, label %cleanup, label %if.end22, !dbg !945

if.end22:                                         ; preds = %if.end12
  %8 = load i64, ptr %columns, align 8, !dbg !946, !tbaa !775
  %mul = shl i64 %8, 3, !dbg !947
  %call24 = call ptr @CopyMagickMemory(ptr noundef nonnull %call18, ptr noundef nonnull %call14, i64 noundef %mul) #8, !dbg !948
  %call25 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call6) #8, !dbg !949
  call void @llvm.dbg.value(metadata ptr %call25, metadata !903, metadata !DIExpression()), !dbg !938
  %cmp26.not = icmp eq ptr %call25, null, !dbg !950
  br i1 %cmp26.not, label %if.end35, label %if.then27, !dbg !952

if.then27:                                        ; preds = %if.end22
  %call28 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call7) #8, !dbg !953
  call void @llvm.dbg.value(metadata ptr %call28, metadata !908, metadata !DIExpression()), !dbg !938
  %cmp29.not = icmp eq ptr %call28, null, !dbg !955
  br i1 %cmp29.not, label %if.end35, label %if.then30, !dbg !957

if.then30:                                        ; preds = %if.then27
  %9 = load i64, ptr %columns, align 8, !dbg !958, !tbaa !775
  %mul32 = shl i64 %9, 1, !dbg !959
  %call33 = call ptr @CopyMagickMemory(ptr noundef nonnull %call28, ptr noundef nonnull %call25, i64 noundef %mul32) #8, !dbg !960
  br label %if.end35, !dbg !961

if.end35:                                         ; preds = %if.then27, %if.then30, %if.end22
  %call36 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call7, ptr noundef %exception) #9, !dbg !962
  %cmp37 = icmp ne i32 %call36, 0, !dbg !964
  %spec.select = zext i1 %cmp37 to i32, !dbg !965
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !899, metadata !DIExpression()), !dbg !913
  %10 = load ptr, ptr %progress_monitor, align 8, !dbg !966, !tbaa !833
  %cmp40.not = icmp eq ptr %10, null, !dbg !967
  br i1 %cmp40.not, label %cleanup, label %SetImageProgress.exit, !dbg !968

SetImageProgress.exit:                            ; preds = %if.end35
  %inc = add nsw i64 %progress.0125, 1, !dbg !969
  call void @llvm.dbg.value(metadata i64 %inc, metadata !900, metadata !DIExpression()), !dbg !913
  %11 = load i64, ptr %rows, align 8, !dbg !970, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !844, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata i64 %progress.0125, metadata !845, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata i64 %11, metadata !846, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !974
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #8, !dbg !975
  %12 = load ptr, ptr %progress_monitor, align 8, !dbg !976, !tbaa !833
  %13 = load ptr, ptr %client_data.i, align 8, !dbg !977, !tbaa !855
  %call4.i = call i32 %12(ptr noundef nonnull %message.i, i64 noundef %progress.0125, i64 noundef %11, ptr noundef %13) #8, !dbg !978
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !979
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !910, metadata !DIExpression()), !dbg !980
  %cmp44 = icmp eq i32 %call4.i, 0, !dbg !981
  %spec.select122 = select i1 %cmp44, i32 0, i32 %spec.select, !dbg !983
  call void @llvm.dbg.value(metadata i32 %spec.select122, metadata !899, metadata !DIExpression()), !dbg !913
  br label %cleanup, !dbg !984

cleanup:                                          ; preds = %if.end35, %SetImageProgress.exit, %if.end12, %for.body
  %progress.2 = phi i64 [ %progress.0125, %for.body ], [ %progress.0125, %if.end12 ], [ %inc, %SetImageProgress.exit ], [ %progress.0125, %if.end35 ], !dbg !913
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end12 ], [ %spec.select122, %SetImageProgress.exit ], [ %spec.select, %if.end35 ], !dbg !913
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !899, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !900, metadata !DIExpression()), !dbg !913
  %inc51 = add nuw nsw i64 %y.0126, 1, !dbg !985
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !902, metadata !DIExpression()), !dbg !913
  %14 = load i64, ptr %rows8, align 8, !dbg !930, !tbaa !777
  %cmp9 = icmp slt i64 %inc51, %14, !dbg !931
  br i1 %cmp9, label %for.body, label %for.end, !dbg !932, !llvm.loop !986

for.end:                                          ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.4, %cleanup ], !dbg !988
  %call52 = call ptr @DestroyCacheView(ptr noundef %call7) #8, !dbg !989
  call void @llvm.dbg.value(metadata ptr %call52, metadata !896, metadata !DIExpression()), !dbg !913
  %call53 = call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !990
  call void @llvm.dbg.value(metadata ptr %call53, metadata !897, metadata !DIExpression()), !dbg !913
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !991
  %15 = load i32, ptr %type, align 8, !dbg !991, !tbaa !870
  %type54 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !992
  store i32 %15, ptr %type54, align 8, !dbg !993, !tbaa !870
  %cmp55.not = icmp eq i64 %page.sroa.4.0.copyload, 0, !dbg !994
  br i1 %cmp55.not, label %if.end63, label %if.then56, !dbg !996

if.then56:                                        ; preds = %for.end
  %16 = load i64, ptr %rows8, align 8, !dbg !997, !tbaa !777
  %17 = add i64 %page.sroa.687.0.copyload, %16, !dbg !998
  %sub61 = sub i64 %page.sroa.4.0.copyload, %17, !dbg !998
  call void @llvm.dbg.value(metadata i64 %sub61, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !913
  br label %if.end63, !dbg !999

if.end63:                                         ; preds = %if.then56, %for.end
  %page.sroa.687.0 = phi i64 [ %sub61, %if.then56 ], [ %page.sroa.687.0.copyload, %for.end ], !dbg !913
  call void @llvm.dbg.value(metadata i64 %page.sroa.687.0, metadata !901, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !913
  %page64 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1000
  store i64 %page.sroa.0.0.copyload, ptr %page64, align 8, !dbg !1001, !tbaa.struct !783
  %page.sroa.4.0.page64.sroa_idx = getelementptr inbounds i8, ptr %page64, i64 8, !dbg !1001
  store i64 %page.sroa.4.0.copyload, ptr %page.sroa.4.0.page64.sroa_idx, align 8, !dbg !1001, !tbaa.struct !785
  %page.sroa.6.0.page64.sroa_idx = getelementptr inbounds i8, ptr %page64, i64 16, !dbg !1001
  store i64 %page.sroa.6.0.copyload, ptr %page.sroa.6.0.page64.sroa_idx, align 8, !dbg !1001, !tbaa.struct !786
  %page.sroa.687.0.page64.sroa_idx = getelementptr inbounds i8, ptr %page64, i64 24, !dbg !1001
  store i64 %page.sroa.687.0, ptr %page.sroa.687.0.page64.sroa_idx, align 8, !dbg !1001, !tbaa.struct !787
  %cmp65 = icmp eq i32 %status.0.lcssa, 0, !dbg !1002
  br i1 %cmp65, label %if.then66, label %cleanup69, !dbg !1004

if.then66:                                        ; preds = %if.end63
  %call67 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %call67, metadata !898, metadata !DIExpression()), !dbg !913
  br label %cleanup69, !dbg !1006

cleanup69:                                        ; preds = %if.end63, %if.then66, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call67, %if.then66 ], [ %call1, %if.end63 ], !dbg !913
  ret ptr %retval.0, !dbg !1007
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TransposeImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1008 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1010, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1011, metadata !DIExpression()), !dbg !1029
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1030
  %0 = load i32, ptr %debug, align 8, !dbg !1030, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !1032
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1033

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1034
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2215, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !1035
  br label %if.end, !dbg !1036

if.end:                                           ; preds = %if.then, %entry
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1037
  %1 = load i64, ptr %rows, align 8, !dbg !1037, !tbaa !777
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1038
  %2 = load i64, ptr %columns, align 8, !dbg !1038, !tbaa !775
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1014, metadata !DIExpression()), !dbg !1029
  %cmp2 = icmp eq ptr %call1, null, !dbg !1040
  br i1 %cmp2, label %cleanup77, label %if.end4, !dbg !1042

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1015, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1016, metadata !DIExpression()), !dbg !1029
  %call5 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1012, metadata !DIExpression()), !dbg !1029
  %call6 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #8, !dbg !1044
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1013, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1018, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32 1, metadata !1015, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1016, metadata !DIExpression()), !dbg !1029
  %3 = load i64, ptr %rows, align 8, !dbg !1045, !tbaa !777
  %cmp8137 = icmp sgt i64 %3, 0, !dbg !1046
  br i1 %cmp8137, label %for.body.lr.ph, label %for.end, !dbg !1047

for.body.lr.ph:                                   ; preds = %if.end4
  %rows19 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1047

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %4 = phi i64 [ %3, %for.body.lr.ph ], [ %15, %cleanup ]
  %status.0141 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0139 = phi i64 [ 0, %for.body.lr.ph ], [ %inc53, %cleanup ]
  %progress.0138 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0141, metadata !1015, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %y.0139, metadata !1018, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %progress.0138, metadata !1016, metadata !DIExpression()), !dbg !1029
  %cmp9 = icmp eq i32 %status.0141, 0, !dbg !1048
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !1050

if.end11:                                         ; preds = %for.body
  %5 = xor i64 %y.0139, -1, !dbg !1051
  %sub13 = add i64 %4, %5, !dbg !1051
  %6 = load i64, ptr %columns, align 8, !dbg !1052, !tbaa !775
  %call15 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call5, i64 noundef 0, i64 noundef %sub13, i64 noundef %6, i64 noundef 1, ptr noundef %exception) #9, !dbg !1053
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1019, metadata !DIExpression()), !dbg !1054
  %7 = load i64, ptr %rows, align 8, !dbg !1055, !tbaa !777
  %sub18 = add i64 %7, %5, !dbg !1056
  %8 = load i64, ptr %rows19, align 8, !dbg !1057, !tbaa !777
  %call20 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call6, i64 noundef %sub18, i64 noundef 0, i64 noundef 1, i64 noundef %8, ptr noundef %exception) #9, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1025, metadata !DIExpression()), !dbg !1054
  %cmp21 = icmp eq ptr %call15, null, !dbg !1059
  %cmp22 = icmp eq ptr %call20, null
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22, !dbg !1061
  br i1 %or.cond, label %cleanup, label %if.end24, !dbg !1061

if.end24:                                         ; preds = %if.end11
  %9 = load i64, ptr %columns, align 8, !dbg !1062, !tbaa !775
  %mul = shl i64 %9, 3, !dbg !1063
  %call26 = call ptr @CopyMagickMemory(ptr noundef nonnull %call20, ptr noundef nonnull %call15, i64 noundef %mul) #8, !dbg !1064
  %call27 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call5) #8, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1024, metadata !DIExpression()), !dbg !1054
  %cmp28.not = icmp eq ptr %call27, null, !dbg !1066
  br i1 %cmp28.not, label %if.end37, label %if.then29, !dbg !1068

if.then29:                                        ; preds = %if.end24
  %call30 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call6) #8, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call30, metadata !1023, metadata !DIExpression()), !dbg !1054
  %cmp31.not = icmp eq ptr %call30, null, !dbg !1071
  br i1 %cmp31.not, label %if.end37, label %if.then32, !dbg !1073

if.then32:                                        ; preds = %if.then29
  %10 = load i64, ptr %columns, align 8, !dbg !1074, !tbaa !775
  %mul34 = shl i64 %10, 1, !dbg !1075
  %call35 = call ptr @CopyMagickMemory(ptr noundef nonnull %call30, ptr noundef nonnull %call27, i64 noundef %mul34) #8, !dbg !1076
  br label %if.end37, !dbg !1077

if.end37:                                         ; preds = %if.then29, %if.then32, %if.end24
  %call38 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call6, ptr noundef %exception) #9, !dbg !1078
  %cmp39 = icmp ne i32 %call38, 0, !dbg !1080
  %spec.select = zext i1 %cmp39 to i32, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1015, metadata !DIExpression()), !dbg !1029
  %11 = load ptr, ptr %progress_monitor, align 8, !dbg !1082, !tbaa !833
  %cmp42.not = icmp eq ptr %11, null, !dbg !1083
  br i1 %cmp42.not, label %cleanup, label %SetImageProgress.exit, !dbg !1084

SetImageProgress.exit:                            ; preds = %if.end37
  %inc = add nsw i64 %progress.0138, 1, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1016, metadata !DIExpression()), !dbg !1029
  %12 = load i64, ptr %rows, align 8, !dbg !1086, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !1087
  call void @llvm.dbg.value(metadata ptr @.str.12, metadata !844, metadata !DIExpression()) #8, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %progress.0138, metadata !845, metadata !DIExpression()) #8, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %12, metadata !846, metadata !DIExpression()) #8, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !1090
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef nonnull %filename.i) #8, !dbg !1091
  %13 = load ptr, ptr %progress_monitor, align 8, !dbg !1092, !tbaa !833
  %14 = load ptr, ptr %client_data.i, align 8, !dbg !1093, !tbaa !855
  %call4.i = call i32 %13(ptr noundef nonnull %message.i, i64 noundef %progress.0138, i64 noundef %12, ptr noundef %14) #8, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1095
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1026, metadata !DIExpression()), !dbg !1096
  %cmp46 = icmp eq i32 %call4.i, 0, !dbg !1097
  %spec.select136 = select i1 %cmp46, i32 0, i32 %spec.select, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %spec.select136, metadata !1015, metadata !DIExpression()), !dbg !1029
  br label %cleanup, !dbg !1100

cleanup:                                          ; preds = %if.end37, %SetImageProgress.exit, %if.end11, %for.body
  %progress.2 = phi i64 [ %progress.0138, %for.body ], [ %progress.0138, %if.end11 ], [ %inc, %SetImageProgress.exit ], [ %progress.0138, %if.end37 ], !dbg !1029
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end11 ], [ %spec.select136, %SetImageProgress.exit ], [ %spec.select, %if.end37 ], !dbg !1029
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1015, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1016, metadata !DIExpression()), !dbg !1029
  %inc53 = add nuw nsw i64 %y.0139, 1, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !1018, metadata !DIExpression()), !dbg !1029
  %15 = load i64, ptr %rows, align 8, !dbg !1045, !tbaa !777
  %cmp8 = icmp sgt i64 %15, %inc53, !dbg !1046
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1047, !llvm.loop !1102

for.end:                                          ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.4, %cleanup ], !dbg !1104
  %call54 = call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %call54, metadata !1013, metadata !DIExpression()), !dbg !1029
  %call55 = call ptr @DestroyCacheView(ptr noundef %call5) #8, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %call55, metadata !1012, metadata !DIExpression()), !dbg !1029
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1107
  %16 = load i32, ptr %type, align 8, !dbg !1107, !tbaa !870
  %type56 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !1108
  store i32 %16, ptr %type56, align 8, !dbg !1109, !tbaa !870
  %page57 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1110
  %page.sroa.0.0.copyload = load i64, ptr %page57, align 8, !dbg !1110, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1029
  %page.sroa.9.0.page57.sroa_idx = getelementptr inbounds i8, ptr %page57, i64 8, !dbg !1110
  %page.sroa.9.0.copyload = load i64, ptr %page.sroa.9.0.page57.sroa_idx, align 8, !dbg !1110, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page.sroa.9.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1029
  %page.sroa.13.0.page57.sroa_idx = getelementptr inbounds i8, ptr %page57, i64 16, !dbg !1110
  %page.sroa.13.0.copyload = load i64, ptr %page.sroa.13.0.page57.sroa_idx, align 8, !dbg !1110, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %page.sroa.13.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1029
  %page.sroa.18.0.page57.sroa_idx = getelementptr inbounds i8, ptr %page57, i64 24, !dbg !1110
  %page.sroa.18.0.copyload = load i64, ptr %page.sroa.18.0.page57.sroa_idx, align 8, !dbg !1110, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %page.sroa.9.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %page.sroa.13.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !1017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1029
  store i64 %page.sroa.9.0.copyload, ptr %page57, align 8, !dbg !1111, !tbaa.struct !783
  store i64 %page.sroa.0.0.copyload, ptr %page.sroa.9.0.page57.sroa_idx, align 8, !dbg !1111, !tbaa.struct !785
  store i64 %page.sroa.18.0.copyload, ptr %page.sroa.13.0.page57.sroa_idx, align 8, !dbg !1111, !tbaa.struct !786
  store i64 %page.sroa.13.0.copyload, ptr %page.sroa.18.0.page57.sroa_idx, align 8, !dbg !1111, !tbaa.struct !787
  %cmp73 = icmp eq i32 %status.0.lcssa, 0, !dbg !1112
  br i1 %cmp73, label %if.then74, label %cleanup77, !dbg !1114

if.then74:                                        ; preds = %for.end
  %call75 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %call75, metadata !1014, metadata !DIExpression()), !dbg !1029
  br label %cleanup77, !dbg !1116

cleanup77:                                        ; preds = %for.end, %if.then74, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call75, %if.then74 ], [ %call1, %for.end ], !dbg !1029
  ret ptr %retval.0, !dbg !1117
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TransverseImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1118 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1120, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1121, metadata !DIExpression()), !dbg !1141
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1142
  %0 = load i32, ptr %debug, align 8, !dbg !1142, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !1144
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1145

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1146
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2344, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !1147
  br label %if.end, !dbg !1148

if.end:                                           ; preds = %if.then, %entry
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1149
  %1 = load i64, ptr %rows, align 8, !dbg !1149, !tbaa !777
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1150
  %2 = load i64, ptr %columns, align 8, !dbg !1150, !tbaa !775
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1124, metadata !DIExpression()), !dbg !1141
  %cmp2 = icmp eq ptr %call1, null, !dbg !1152
  br i1 %cmp2, label %cleanup130, label %if.end4, !dbg !1154

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1125, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, metadata !1126, metadata !DIExpression()), !dbg !1141
  %call5 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !1155
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1122, metadata !DIExpression()), !dbg !1141
  %call6 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #8, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1123, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, metadata !1128, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, metadata !1126, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 1, metadata !1125, metadata !DIExpression()), !dbg !1141
  %3 = load i64, ptr %rows, align 8, !dbg !1157, !tbaa !777
  %cmp8219 = icmp sgt i64 %3, 0, !dbg !1158
  br i1 %cmp8219, label %for.body.lr.ph, label %for.end82, !dbg !1159

for.body.lr.ph:                                   ; preds = %if.end4
  %rows16 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1159

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0222 = phi i64 [ 0, %for.body.lr.ph ], [ %inc81, %cleanup ]
  %progress.0221 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.0220 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0222, metadata !1128, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %progress.0221, metadata !1126, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %status.0220, metadata !1125, metadata !DIExpression()), !dbg !1141
  %cmp9 = icmp eq i32 %status.0220, 0, !dbg !1160
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !1162

if.end11:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !1163, !tbaa !775
  %call13 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call5, i64 noundef 0, i64 noundef %y.0222, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #9, !dbg !1164
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1133, metadata !DIExpression()), !dbg !1165
  %5 = load i64, ptr %rows, align 8, !dbg !1166, !tbaa !777
  %6 = xor i64 %y.0222, -1, !dbg !1167
  %sub15 = add i64 %5, %6, !dbg !1167
  %7 = load i64, ptr %rows16, align 8, !dbg !1168, !tbaa !777
  %call17 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call6, i64 noundef %sub15, i64 noundef 0, i64 noundef 1, i64 noundef %7, ptr noundef %exception) #9, !dbg !1169
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1137, metadata !DIExpression()), !dbg !1165
  %cmp18 = icmp eq ptr %call13, null, !dbg !1170
  %cmp19 = icmp eq ptr %call17, null
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp19, !dbg !1172
  br i1 %or.cond, label %cleanup, label %if.end21, !dbg !1172

if.end21:                                         ; preds = %if.end11
  %8 = load i64, ptr %columns, align 8, !dbg !1173, !tbaa !775
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call17, i64 %8), metadata !1137, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1133, metadata !DIExpression()), !dbg !1165
  %cmp25213 = icmp sgt i64 %8, 0, !dbg !1174
  br i1 %cmp25213, label %for.body26.preheader, label %for.end, !dbg !1177

for.body26.preheader:                             ; preds = %if.end21
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call17, i64 %8, !dbg !1178
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1137, metadata !DIExpression()), !dbg !1165
  br label %for.body26, !dbg !1177

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %q.0216 = phi ptr [ %incdec.ptr, %for.body26 ], [ %add.ptr, %for.body26.preheader ]
  %x.0215 = phi i64 [ %inc, %for.body26 ], [ 0, %for.body26.preheader ]
  %p.0214 = phi ptr [ %incdec.ptr27, %for.body26 ], [ %call13, %for.body26.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.0216, metadata !1137, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %x.0215, metadata !1136, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata ptr %p.0214, metadata !1133, metadata !DIExpression()), !dbg !1165
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0216, i64 -1, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1137, metadata !DIExpression()), !dbg !1165
  %incdec.ptr27 = getelementptr inbounds %struct._PixelPacket, ptr %p.0214, i64 1, !dbg !1180
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27, metadata !1133, metadata !DIExpression()), !dbg !1165
  %9 = load i64, ptr %p.0214, align 2, !dbg !1181
  store i64 %9, ptr %incdec.ptr, align 2, !dbg !1181
  %inc = add nuw nsw i64 %x.0215, 1, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1136, metadata !DIExpression()), !dbg !1165
  %10 = load i64, ptr %columns, align 8, !dbg !1183, !tbaa !775
  %cmp25 = icmp slt i64 %inc, %10, !dbg !1174
  br i1 %cmp25, label %for.body26, label %for.end, !dbg !1177, !llvm.loop !1184

for.end:                                          ; preds = %for.body26, %if.end21
  %call28 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call5) #8, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1135, metadata !DIExpression()), !dbg !1165
  %cmp29.not = icmp eq ptr %call28, null, !dbg !1187
  br i1 %cmp29.not, label %if.end58, label %if.then30, !dbg !1189

if.then30:                                        ; preds = %for.end
  %call31 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call6) #8, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1134, metadata !DIExpression()), !dbg !1165
  %cmp32.not = icmp eq ptr %call31, null, !dbg !1192
  br i1 %cmp32.not, label %if.end58, label %for.cond34.preheader, !dbg !1194

for.cond34.preheader:                             ; preds = %if.then30
  %11 = load i64, ptr %columns, align 8, !tbaa !775
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1165
  %cmp36217 = icmp sgt i64 %11, 0, !dbg !1195
  br i1 %cmp36217, label %for.body37.lr.ph, label %if.end58, !dbg !1198

for.body37.lr.ph:                                 ; preds = %for.cond34.preheader
  %add.ptr49 = getelementptr inbounds i16, ptr %call31, i64 -1
  %add.ptr51 = getelementptr inbounds i16, ptr %add.ptr49, i64 %11
  br label %for.body37, !dbg !1198

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %x.1218 = phi i64 [ 0, %for.body37.lr.ph ], [ %inc55, %for.body37 ]
  call void @llvm.dbg.value(metadata i64 %x.1218, metadata !1136, metadata !DIExpression()), !dbg !1165
  %idx.neg = sub nsw i64 0, %x.1218, !dbg !1199
  %add.ptr44 = getelementptr inbounds i16, ptr %call28, i64 %x.1218, !dbg !1199
  %12 = load i16, ptr %add.ptr44, align 2, !dbg !1199, !tbaa !822
  %add.ptr52 = getelementptr inbounds i16, ptr %add.ptr51, i64 %idx.neg, !dbg !1199
  store i16 %12, ptr %add.ptr52, align 2, !dbg !1199, !tbaa !822
  %inc55 = add nuw nsw i64 %x.1218, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %inc55, metadata !1136, metadata !DIExpression()), !dbg !1165
  %exitcond.not = icmp eq i64 %inc55, %11, !dbg !1195
  br i1 %exitcond.not, label %if.end58, label %for.body37, !dbg !1198, !llvm.loop !1203

if.end58:                                         ; preds = %for.body37, %for.cond34.preheader, %if.then30, %for.end
  %call59 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call6, ptr noundef %exception) #9, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %call59, metadata !1129, metadata !DIExpression()), !dbg !1165
  %cmp60 = icmp ne i32 %call59, 0, !dbg !1206
  %spec.select = zext i1 %cmp60 to i32, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1125, metadata !DIExpression()), !dbg !1141
  %13 = load ptr, ptr %progress_monitor, align 8, !dbg !1209, !tbaa !833
  %cmp64.not = icmp eq ptr %13, null, !dbg !1210
  br i1 %cmp64.not, label %cleanup, label %SetImageProgress.exit, !dbg !1211

SetImageProgress.exit:                            ; preds = %if.end58
  %inc67 = add nsw i64 %progress.0221, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !1126, metadata !DIExpression()), !dbg !1141
  %14 = load i64, ptr %rows, align 8, !dbg !1213, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !1214
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !844, metadata !DIExpression()) #8, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %progress.0221, metadata !845, metadata !DIExpression()) #8, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %14, metadata !846, metadata !DIExpression()) #8, !dbg !1214
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !1217
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %filename.i) #8, !dbg !1218
  %15 = load ptr, ptr %progress_monitor, align 8, !dbg !1219, !tbaa !833
  %16 = load ptr, ptr %client_data.i, align 8, !dbg !1220, !tbaa !855
  %call4.i = call i32 %15(ptr noundef nonnull %message.i, i64 noundef %progress.0221, i64 noundef %14, ptr noundef %16) #8, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1138, metadata !DIExpression()), !dbg !1223
  %cmp70 = icmp eq i32 %call4.i, 0, !dbg !1224
  %spec.select209 = select i1 %cmp70, i32 0, i32 %spec.select, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %spec.select209, metadata !1125, metadata !DIExpression()), !dbg !1141
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %if.end58, %SetImageProgress.exit, %if.end11, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end11 ], [ %spec.select209, %SetImageProgress.exit ], [ %spec.select, %if.end58 ], !dbg !1141
  %progress.2 = phi i64 [ %progress.0221, %for.body ], [ %progress.0221, %if.end11 ], [ %inc67, %SetImageProgress.exit ], [ %progress.0221, %if.end58 ], !dbg !1141
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1126, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1125, metadata !DIExpression()), !dbg !1141
  %inc81 = add nuw nsw i64 %y.0222, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %inc81, metadata !1128, metadata !DIExpression()), !dbg !1141
  %17 = load i64, ptr %rows, align 8, !dbg !1157, !tbaa !777
  %cmp8 = icmp slt i64 %inc81, %17, !dbg !1158
  br i1 %cmp8, label %for.body, label %for.end82, !dbg !1159, !llvm.loop !1229

for.end82:                                        ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.4, %cleanup ], !dbg !1231
  %call83 = call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !1232
  call void @llvm.dbg.value(metadata ptr %call83, metadata !1123, metadata !DIExpression()), !dbg !1141
  %call84 = call ptr @DestroyCacheView(ptr noundef %call5) #8, !dbg !1233
  call void @llvm.dbg.value(metadata ptr %call84, metadata !1122, metadata !DIExpression()), !dbg !1141
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1234
  %18 = load i32, ptr %type, align 8, !dbg !1234, !tbaa !870
  %type85 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !1235
  store i32 %18, ptr %type85, align 8, !dbg !1236, !tbaa !870
  %page86 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1237
  %page.sroa.0.0.copyload = load i64, ptr %page86, align 8, !dbg !1237, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1141
  %page.sroa.11.0.page86.sroa_idx = getelementptr inbounds i8, ptr %page86, i64 8, !dbg !1237
  %page.sroa.11.0.copyload = load i64, ptr %page.sroa.11.0.page86.sroa_idx, align 8, !dbg !1237, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page.sroa.11.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1141
  %page.sroa.17.0.page86.sroa_idx = getelementptr inbounds i8, ptr %page86, i64 16, !dbg !1237
  %page.sroa.17.0.copyload = load i64, ptr %page.sroa.17.0.page86.sroa_idx, align 8, !dbg !1237, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %page.sroa.17.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1141
  %page.sroa.24.0.page86.sroa_idx = getelementptr inbounds i8, ptr %page86, i64 24, !dbg !1237
  %page.sroa.24.0.copyload = load i64, ptr %page.sroa.24.0.page86.sroa_idx, align 8, !dbg !1237, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %page.sroa.11.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %page.sroa.17.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %page.sroa.24.0.copyload, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1141
  %cmp103.not = icmp eq i64 %page.sroa.11.0.copyload, 0, !dbg !1238
  br i1 %cmp103.not, label %if.end112, label %if.then105, !dbg !1240

if.then105:                                       ; preds = %for.end82
  %columns107 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !1241
  %19 = load i64, ptr %columns107, align 8, !dbg !1241, !tbaa !775
  %20 = add i64 %page.sroa.24.0.copyload, %19, !dbg !1242
  %sub110 = sub i64 %page.sroa.11.0.copyload, %20, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %sub110, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1141
  br label %if.end112, !dbg !1243

if.end112:                                        ; preds = %if.then105, %for.end82
  %page.sroa.17.0 = phi i64 [ %sub110, %if.then105 ], [ %page.sroa.24.0.copyload, %for.end82 ], !dbg !1141
  call void @llvm.dbg.value(metadata i64 %page.sroa.17.0, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1141
  %cmp114.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !1244
  br i1 %cmp114.not, label %if.end123, label %if.then116, !dbg !1246

if.then116:                                       ; preds = %if.end112
  %rows118 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !1247
  %21 = load i64, ptr %rows118, align 8, !dbg !1247, !tbaa !777
  %22 = add i64 %page.sroa.17.0.copyload, %21, !dbg !1248
  %sub121 = sub i64 %page.sroa.0.0.copyload, %22, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %sub121, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1141
  br label %if.end123, !dbg !1249

if.end123:                                        ; preds = %if.then116, %if.end112
  %page.sroa.24.0 = phi i64 [ %sub121, %if.then116 ], [ %page.sroa.17.0.copyload, %if.end112 ], !dbg !1141
  call void @llvm.dbg.value(metadata i64 %page.sroa.24.0, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1141
  store i64 %page.sroa.11.0.copyload, ptr %page86, align 8, !dbg !1250, !tbaa.struct !783
  store i64 %page.sroa.0.0.copyload, ptr %page.sroa.11.0.page86.sroa_idx, align 8, !dbg !1250, !tbaa.struct !785
  store i64 %page.sroa.17.0, ptr %page.sroa.17.0.page86.sroa_idx, align 8, !dbg !1250, !tbaa.struct !786
  store i64 %page.sroa.24.0, ptr %page.sroa.24.0.page86.sroa_idx, align 8, !dbg !1250, !tbaa.struct !787
  %cmp125 = icmp eq i32 %status.0.lcssa, 0, !dbg !1251
  br i1 %cmp125, label %if.then127, label %cleanup130, !dbg !1253

if.then127:                                       ; preds = %if.end123
  %call128 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !1254
  call void @llvm.dbg.value(metadata ptr %call128, metadata !1124, metadata !DIExpression()), !dbg !1141
  br label %cleanup130, !dbg !1255

cleanup130:                                       ; preds = %if.end123, %if.then127, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call128, %if.then127 ], [ %call1, %if.end123 ], !dbg !1141
  ret ptr %retval.0, !dbg !1256
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ChopImage(ptr noundef %image, ptr nocapture noundef readonly %chop_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1257 {
entry:
  %message.i377 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1263, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata ptr %chop_info, metadata !1264, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1265, metadata !DIExpression()), !dbg !1295
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1296
  %0 = load i32, ptr %debug, align 8, !dbg !1296, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !1298
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1299

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1300
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !1301
  br label %if.end, !dbg !1302

if.end:                                           ; preds = %if.then, %entry
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %chop_info, i64 0, i32 2, !dbg !1303
  %1 = load i64, ptr %x, align 8, !dbg !1303, !tbaa !1305
  %2 = load i64, ptr %chop_info, align 8, !dbg !1306, !tbaa !1307
  %add = add nsw i64 %2, %1, !dbg !1308
  %cmp1 = icmp slt i64 %add, 0, !dbg !1309
  br i1 %cmp1, label %if.then11, label %lor.lhs.false, !dbg !1310

lor.lhs.false:                                    ; preds = %if.end
  %y2 = getelementptr inbounds %struct._RectangleInfo, ptr %chop_info, i64 0, i32 3, !dbg !1311
  %3 = load i64, ptr %y2, align 8, !dbg !1311, !tbaa !1312
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %chop_info, i64 0, i32 1, !dbg !1313
  %4 = load i64, ptr %height, align 8, !dbg !1313, !tbaa !1314
  %add3 = add nsw i64 %4, %3, !dbg !1315
  %cmp4 = icmp slt i64 %add3, 0, !dbg !1316
  br i1 %cmp4, label %if.then11, label %lor.lhs.false5, !dbg !1317

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1318
  %5 = load i64, ptr %columns, align 8, !dbg !1318, !tbaa !775
  %cmp7 = icmp slt i64 %5, %1, !dbg !1319
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8, !dbg !1320

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1321
  %6 = load i64, ptr %rows, align 8, !dbg !1321, !tbaa !777
  %cmp10 = icmp slt i64 %6, %3, !dbg !1322
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !1323

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %if.end
  %filename12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1324
  %call14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 225, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename12) #8, !dbg !1324
  br label %cleanup244, !dbg !1324

if.end15:                                         ; preds = %lor.lhs.false8
  call void @llvm.dbg.value(metadata i64 %2, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %4, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %1, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %3, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1295
  %cmp20 = icmp sgt i64 %add, %5, !dbg !1326
  %sub = sub nsw i64 %5, %1
  %spec.select = select i1 %cmp20, i64 %sub, i64 %2, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1295
  %cmp30 = icmp sgt i64 %add3, %6, !dbg !1329
  %sub34 = sub nsw i64 %6, %3
  %spec.select374 = select i1 %cmp30, i64 %sub34, i64 %4, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %spec.select374, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1295
  %7 = tail call i64 @llvm.smax.i64(i64 %1, i64 0), !dbg !1332
  %8 = tail call i64 @llvm.smin.i64(i64 %1, i64 0), !dbg !1332
  %spec.select367 = add i64 %spec.select, %8, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %spec.select367, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %7, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1295
  %9 = tail call i64 @llvm.smax.i64(i64 %3, i64 0), !dbg !1333
  %10 = tail call i64 @llvm.smin.i64(i64 %3, i64 0), !dbg !1333
  %spec.select376 = add i64 %spec.select374, %10, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %spec.select376, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %9, metadata !1271, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1295
  %sub57 = sub i64 %5, %spec.select367, !dbg !1334
  %sub60 = sub i64 %6, %spec.select376, !dbg !1335
  %call61 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %sub57, i64 noundef %sub60, i32 noundef 1, ptr noundef %exception) #8, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %call61, metadata !1268, metadata !DIExpression()), !dbg !1295
  %cmp62 = icmp eq ptr %call61, null, !dbg !1337
  br i1 %cmp62, label %cleanup244, label %if.end64, !dbg !1339

if.end64:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32 1, metadata !1269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()), !dbg !1295
  %call65 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1267, metadata !DIExpression()), !dbg !1295
  %call66 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call61, ptr noundef %exception) #8, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1266, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 0, metadata !1272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 1, metadata !1269, metadata !DIExpression()), !dbg !1295
  %cmp68395.not = icmp slt i64 %3, 1, !dbg !1342
  br i1 %cmp68395.not, label %for.cond131.preheader, label %for.body.lr.ph, !dbg !1343

for.body.lr.ph:                                   ; preds = %if.end64
  %columns75 = getelementptr inbounds %struct._Image, ptr %call61, i64 0, i32 7
  %add93 = add i64 %spec.select367, %7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1343

for.cond131.preheader:                            ; preds = %cleanup, %if.end64
  %status.0.lcssa = phi i32 [ 1, %if.end64 ], [ %status.4, %cleanup ], !dbg !1344
  %progress.0.lcssa = phi i64 [ 0, %if.end64 ], [ %progress.2, %cleanup ], !dbg !1345
  %add135 = add i64 %spec.select376, %9
  call void @llvm.dbg.value(metadata i64 0, metadata !1272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %progress.0.lcssa, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa, metadata !1269, metadata !DIExpression()), !dbg !1295
  %11 = load i64, ptr %rows, align 8, !dbg !1346, !tbaa !777
  %sub136408 = sub i64 %11, %add135, !dbg !1347
  %cmp137409 = icmp sgt i64 %sub136408, 0, !dbg !1348
  br i1 %cmp137409, label %for.body139.lr.ph, label %for.end235, !dbg !1349

for.body139.lr.ph:                                ; preds = %for.cond131.preheader
  %columns157 = getelementptr inbounds %struct._Image, ptr %call61, i64 0, i32 7
  %add179 = add i64 %spec.select367, %7
  %progress_monitor213 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i380 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i382 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body139, !dbg !1349

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0398 = phi i64 [ 0, %for.body.lr.ph ], [ %inc129, %cleanup ]
  %progress.0397 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.0396 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0398, metadata !1272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %progress.0397, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.0396, metadata !1269, metadata !DIExpression()), !dbg !1295
  %cmp70 = icmp eq i32 %status.0396, 0, !dbg !1350
  br i1 %cmp70, label %cleanup, label %if.end72, !dbg !1352

if.end72:                                         ; preds = %for.body
  %12 = load i64, ptr %columns, align 8, !dbg !1353, !tbaa !775
  %call74 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call65, i64 noundef 0, i64 noundef %y.0398, i64 noundef %12, i64 noundef 1, ptr noundef %exception) #9, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1273, metadata !DIExpression()), !dbg !1355
  %13 = load i64, ptr %columns75, align 8, !dbg !1356, !tbaa !775
  %call76 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call66, i64 noundef 0, i64 noundef %y.0398, i64 noundef %13, i64 noundef 1, ptr noundef %exception) #9, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1280, metadata !DIExpression()), !dbg !1355
  %cmp77 = icmp eq ptr %call74, null, !dbg !1358
  %cmp79 = icmp eq ptr %call76, null
  %or.cond = select i1 %cmp77, i1 true, i1 %cmp79, !dbg !1360
  br i1 %or.cond, label %cleanup, label %if.end81, !dbg !1360

if.end81:                                         ; preds = %if.end72
  %call82 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call65) #8, !dbg !1361
  call void @llvm.dbg.value(metadata ptr %call82, metadata !1278, metadata !DIExpression()), !dbg !1355
  %call83 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call66) #8, !dbg !1362
  call void @llvm.dbg.value(metadata ptr %call83, metadata !1277, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1280, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1273, metadata !DIExpression()), !dbg !1355
  %14 = load i64, ptr %columns, align 8, !dbg !1363, !tbaa !775
  %cmp86387 = icmp sgt i64 %14, 0, !dbg !1366
  br i1 %cmp86387, label %for.body87.lr.ph, label %for.end, !dbg !1367

for.body87.lr.ph:                                 ; preds = %if.end81
  %cmp96.not = icmp eq ptr %call82, null
  br i1 %cmp96.not, label %for.body87.us, label %for.body87

for.body87.us:                                    ; preds = %for.body87.lr.ph, %if.end106.us
  %15 = phi i64 [ %17, %if.end106.us ], [ %14, %for.body87.lr.ph ]
  %q.0394.us = phi ptr [ %q.1.us, %if.end106.us ], [ %call76, %for.body87.lr.ph ]
  %x69.0391.us = phi i64 [ %inc.us, %if.end106.us ], [ 0, %for.body87.lr.ph ]
  %p.0388.us = phi ptr [ %incdec.ptr107.us, %if.end106.us ], [ %call74, %for.body87.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0394.us, metadata !1280, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %x69.0391.us, metadata !1279, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %p.0388.us, metadata !1273, metadata !DIExpression()), !dbg !1355
  %cmp89.us = icmp uge i64 %x69.0391.us, %7, !dbg !1368
  %cmp94.not.us = icmp slt i64 %x69.0391.us, %add93
  %or.cond368.us = select i1 %cmp89.us, i1 %cmp94.not.us, i1 false, !dbg !1371
  br i1 %or.cond368.us, label %if.end106.us, label %if.then95.us, !dbg !1371

if.then95.us:                                     ; preds = %for.body87.us
  %16 = load i64, ptr %p.0388.us, align 2, !dbg !1372
  store i64 %16, ptr %q.0394.us, align 2, !dbg !1372
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1355
  %incdec.ptr105.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0394.us, i64 1, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105.us, metadata !1280, metadata !DIExpression()), !dbg !1355
  %.pre416 = load i64, ptr %columns, align 8, !dbg !1363, !tbaa !775
  br label %if.end106.us, !dbg !1375

if.end106.us:                                     ; preds = %if.then95.us, %for.body87.us
  %17 = phi i64 [ %.pre416, %if.then95.us ], [ %15, %for.body87.us ], !dbg !1363
  %q.1.us = phi ptr [ %incdec.ptr105.us, %if.then95.us ], [ %q.0394.us, %for.body87.us ], !dbg !1355
  call void @llvm.dbg.value(metadata ptr %q.1.us, metadata !1280, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr undef, metadata !1277, metadata !DIExpression()), !dbg !1355
  %incdec.ptr107.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0388.us, i64 1, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %incdec.ptr107.us, metadata !1273, metadata !DIExpression()), !dbg !1355
  %inc.us = add nuw nsw i64 %x69.0391.us, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1279, metadata !DIExpression()), !dbg !1355
  %cmp86.us = icmp slt i64 %inc.us, %17, !dbg !1366
  br i1 %cmp86.us, label %for.body87.us, label %for.end, !dbg !1367, !llvm.loop !1378

for.body87:                                       ; preds = %for.body87.lr.ph, %if.end106
  %18 = phi i64 [ %21, %if.end106 ], [ %14, %for.body87.lr.ph ]
  %q.0394 = phi ptr [ %q.1, %if.end106 ], [ %call76, %for.body87.lr.ph ]
  %x69.0391 = phi i64 [ %inc, %if.end106 ], [ 0, %for.body87.lr.ph ]
  %chop_indexes.0390 = phi ptr [ %chop_indexes.2, %if.end106 ], [ %call83, %for.body87.lr.ph ]
  %p.0388 = phi ptr [ %incdec.ptr107, %if.end106 ], [ %call74, %for.body87.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0394, metadata !1280, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %x69.0391, metadata !1279, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %chop_indexes.0390, metadata !1277, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %p.0388, metadata !1273, metadata !DIExpression()), !dbg !1355
  %cmp89 = icmp uge i64 %x69.0391, %7, !dbg !1368
  %cmp94.not = icmp slt i64 %x69.0391, %add93
  %or.cond368 = select i1 %cmp89, i1 %cmp94.not, i1 false, !dbg !1371
  br i1 %or.cond368, label %if.end106, label %if.then95, !dbg !1371

if.then95:                                        ; preds = %for.body87
  %19 = load i64, ptr %p.0388, align 2, !dbg !1372
  store i64 %19, ptr %q.0394, align 2, !dbg !1372
  %cmp98.not = icmp eq ptr %chop_indexes.0390, null
  br i1 %cmp98.not, label %if.end104, label %cond.end, !dbg !1380

cond.end:                                         ; preds = %if.then95
  %add.ptr = getelementptr inbounds i16, ptr %call82, i64 %x69.0391, !dbg !1381
  %20 = load i16, ptr %add.ptr, align 2, !dbg !1381, !tbaa !822
  %incdec.ptr = getelementptr inbounds i16, ptr %chop_indexes.0390, i64 1, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1277, metadata !DIExpression()), !dbg !1355
  store i16 %20, ptr %chop_indexes.0390, align 2, !dbg !1386, !tbaa !822
  br label %if.end104, !dbg !1387

if.end104:                                        ; preds = %cond.end, %if.then95
  %chop_indexes.1 = phi ptr [ %incdec.ptr, %cond.end ], [ null, %if.then95 ], !dbg !1355
  call void @llvm.dbg.value(metadata ptr %chop_indexes.1, metadata !1277, metadata !DIExpression()), !dbg !1355
  %incdec.ptr105 = getelementptr inbounds %struct._PixelPacket, ptr %q.0394, i64 1, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !1280, metadata !DIExpression()), !dbg !1355
  %.pre = load i64, ptr %columns, align 8, !dbg !1363, !tbaa !775
  br label %if.end106, !dbg !1375

if.end106:                                        ; preds = %for.body87, %if.end104
  %21 = phi i64 [ %.pre, %if.end104 ], [ %18, %for.body87 ], !dbg !1363
  %chop_indexes.2 = phi ptr [ %chop_indexes.1, %if.end104 ], [ %chop_indexes.0390, %for.body87 ], !dbg !1355
  %q.1 = phi ptr [ %incdec.ptr105, %if.end104 ], [ %q.0394, %for.body87 ], !dbg !1355
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !1280, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %chop_indexes.2, metadata !1277, metadata !DIExpression()), !dbg !1355
  %incdec.ptr107 = getelementptr inbounds %struct._PixelPacket, ptr %p.0388, i64 1, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %incdec.ptr107, metadata !1273, metadata !DIExpression()), !dbg !1355
  %inc = add nuw nsw i64 %x69.0391, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1279, metadata !DIExpression()), !dbg !1355
  %cmp86 = icmp slt i64 %inc, %21, !dbg !1366
  br i1 %cmp86, label %for.body87, label %for.end, !dbg !1367, !llvm.loop !1378

for.end:                                          ; preds = %if.end106, %if.end106.us, %if.end81
  %call108 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call66, ptr noundef %exception) #9, !dbg !1388
  %cmp109 = icmp ne i32 %call108, 0, !dbg !1390
  %spec.select369 = zext i1 %cmp109 to i32, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %spec.select369, metadata !1269, metadata !DIExpression()), !dbg !1295
  %22 = load ptr, ptr %progress_monitor, align 8, !dbg !1392, !tbaa !833
  %cmp113.not = icmp eq ptr %22, null, !dbg !1393
  br i1 %cmp113.not, label %cleanup, label %SetImageProgress.exit, !dbg !1394

SetImageProgress.exit:                            ; preds = %for.end
  %inc116 = add nsw i64 %progress.0397, 1, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !1270, metadata !DIExpression()), !dbg !1295
  %23 = load i64, ptr %rows, align 8, !dbg !1396, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !1397
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !844, metadata !DIExpression()) #8, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %progress.0397, metadata !845, metadata !DIExpression()) #8, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %23, metadata !846, metadata !DIExpression()) #8, !dbg !1397
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !1400
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i) #8, !dbg !1401
  %24 = load ptr, ptr %progress_monitor, align 8, !dbg !1402, !tbaa !833
  %25 = load ptr, ptr %client_data.i, align 8, !dbg !1403, !tbaa !855
  %call4.i = call i32 %24(ptr noundef nonnull %message.i, i64 noundef %progress.0397, i64 noundef %23, ptr noundef %25) #8, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1281, metadata !DIExpression()), !dbg !1406
  %cmp119 = icmp eq i32 %call4.i, 0, !dbg !1407
  %spec.select370 = select i1 %cmp119, i32 0, i32 %spec.select369, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %spec.select370, metadata !1269, metadata !DIExpression()), !dbg !1295
  br label %cleanup, !dbg !1410

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end72, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end72 ], [ %spec.select370, %SetImageProgress.exit ], [ %spec.select369, %for.end ], !dbg !1295
  %progress.2 = phi i64 [ %progress.0397, %for.body ], [ %progress.0397, %if.end72 ], [ %inc116, %SetImageProgress.exit ], [ %progress.0397, %for.end ], !dbg !1295
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1269, metadata !DIExpression()), !dbg !1295
  %inc129 = add nuw nsw i64 %y.0398, 1, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %inc129, metadata !1272, metadata !DIExpression()), !dbg !1295
  %exitcond.not = icmp eq i64 %inc129, %9, !dbg !1342
  br i1 %exitcond.not, label %for.cond131.preheader, label %for.body, !dbg !1343, !llvm.loop !1412

for.body139:                                      ; preds = %for.body139.lr.ph, %cleanup226
  %y.1412 = phi i64 [ 0, %for.body139.lr.ph ], [ %inc234, %cleanup226 ]
  %progress.3411 = phi i64 [ %progress.0.lcssa, %for.body139.lr.ph ], [ %progress.5, %cleanup226 ]
  %status.5410 = phi i32 [ %status.0.lcssa, %for.body139.lr.ph ], [ %status.9, %cleanup226 ]
  call void @llvm.dbg.value(metadata i64 %y.1412, metadata !1272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %progress.3411, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.5410, metadata !1269, metadata !DIExpression()), !dbg !1295
  %cmp145 = icmp eq i32 %status.5410, 0, !dbg !1414
  br i1 %cmp145, label %cleanup226, label %if.end148, !dbg !1416

if.end148:                                        ; preds = %for.body139
  %add152 = add i64 %y.1412, %add135, !dbg !1417
  %26 = load i64, ptr %columns, align 8, !dbg !1418, !tbaa !775
  %call154 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call65, i64 noundef 0, i64 noundef %add152, i64 noundef %26, i64 noundef 1, ptr noundef %exception) #9, !dbg !1419
  call void @llvm.dbg.value(metadata ptr %call154, metadata !1284, metadata !DIExpression()), !dbg !1420
  %add156 = add nuw nsw i64 %y.1412, %9, !dbg !1421
  %27 = load i64, ptr %columns157, align 8, !dbg !1422, !tbaa !775
  %call158 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call66, i64 noundef 0, i64 noundef %add156, i64 noundef %27, i64 noundef 1, ptr noundef %exception) #9, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %call158, metadata !1291, metadata !DIExpression()), !dbg !1420
  %cmp159 = icmp eq ptr %call154, null, !dbg !1424
  %cmp162 = icmp eq ptr %call158, null
  %or.cond251 = select i1 %cmp159, i1 true, i1 %cmp162, !dbg !1426
  br i1 %or.cond251, label %cleanup226, label %if.end165, !dbg !1426

if.end165:                                        ; preds = %if.end148
  %call166 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call65) #8, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %call166, metadata !1289, metadata !DIExpression()), !dbg !1420
  %call167 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call66) #8, !dbg !1428
  call void @llvm.dbg.value(metadata ptr %call167, metadata !1288, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %call158, metadata !1291, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %call154, metadata !1284, metadata !DIExpression()), !dbg !1420
  %28 = load i64, ptr %columns, align 8, !dbg !1429, !tbaa !775
  %cmp170400 = icmp sgt i64 %28, 0, !dbg !1432
  br i1 %cmp170400, label %for.body172.lr.ph, label %for.end207, !dbg !1433

for.body172.lr.ph:                                ; preds = %if.end165
  %cmp183.not = icmp eq ptr %call166, null
  br i1 %cmp183.not, label %for.body172.us, label %for.body172

for.body172.us:                                   ; preds = %for.body172.lr.ph, %if.end203.us
  %29 = phi i64 [ %31, %if.end203.us ], [ %28, %for.body172.lr.ph ]
  %q144.0407.us = phi ptr [ %q144.1.us, %if.end203.us ], [ %call158, %for.body172.lr.ph ]
  %x143.0404.us = phi i64 [ %inc206.us, %if.end203.us ], [ 0, %for.body172.lr.ph ]
  %p140.0401.us = phi ptr [ %incdec.ptr204.us, %if.end203.us ], [ %call154, %for.body172.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q144.0407.us, metadata !1291, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %x143.0404.us, metadata !1290, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr undef, metadata !1288, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %p140.0401.us, metadata !1284, metadata !DIExpression()), !dbg !1420
  %cmp174.us = icmp uge i64 %x143.0404.us, %7, !dbg !1434
  %cmp180.not.us = icmp slt i64 %x143.0404.us, %add179
  %or.cond371.us = select i1 %cmp174.us, i1 %cmp180.not.us, i1 false, !dbg !1437
  br i1 %or.cond371.us, label %if.end203.us, label %if.then182.us, !dbg !1437

if.then182.us:                                    ; preds = %for.body172.us
  %30 = load i64, ptr %p140.0401.us, align 2, !dbg !1438
  store i64 %30, ptr %q144.0407.us, align 2, !dbg !1438
  call void @llvm.dbg.value(metadata ptr undef, metadata !1288, metadata !DIExpression()), !dbg !1420
  %incdec.ptr202.us = getelementptr inbounds %struct._PixelPacket, ptr %q144.0407.us, i64 1, !dbg !1440
  call void @llvm.dbg.value(metadata ptr %incdec.ptr202.us, metadata !1291, metadata !DIExpression()), !dbg !1420
  %.pre418 = load i64, ptr %columns, align 8, !dbg !1429, !tbaa !775
  br label %if.end203.us, !dbg !1441

if.end203.us:                                     ; preds = %if.then182.us, %for.body172.us
  %31 = phi i64 [ %.pre418, %if.then182.us ], [ %29, %for.body172.us ], !dbg !1429
  %q144.1.us = phi ptr [ %incdec.ptr202.us, %if.then182.us ], [ %q144.0407.us, %for.body172.us ], !dbg !1420
  call void @llvm.dbg.value(metadata ptr %q144.1.us, metadata !1291, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr undef, metadata !1288, metadata !DIExpression()), !dbg !1420
  %incdec.ptr204.us = getelementptr inbounds %struct._PixelPacket, ptr %p140.0401.us, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %incdec.ptr204.us, metadata !1284, metadata !DIExpression()), !dbg !1420
  %inc206.us = add nuw nsw i64 %x143.0404.us, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %inc206.us, metadata !1290, metadata !DIExpression()), !dbg !1420
  %cmp170.us = icmp slt i64 %inc206.us, %31, !dbg !1432
  br i1 %cmp170.us, label %for.body172.us, label %for.end207, !dbg !1433, !llvm.loop !1444

for.body172:                                      ; preds = %for.body172.lr.ph, %if.end203
  %32 = phi i64 [ %35, %if.end203 ], [ %28, %for.body172.lr.ph ]
  %q144.0407 = phi ptr [ %q144.1, %if.end203 ], [ %call158, %for.body172.lr.ph ]
  %x143.0404 = phi i64 [ %inc206, %if.end203 ], [ 0, %for.body172.lr.ph ]
  %chop_indexes141.0403 = phi ptr [ %chop_indexes141.2, %if.end203 ], [ %call167, %for.body172.lr.ph ]
  %p140.0401 = phi ptr [ %incdec.ptr204, %if.end203 ], [ %call154, %for.body172.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q144.0407, metadata !1291, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %x143.0404, metadata !1290, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %chop_indexes141.0403, metadata !1288, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %p140.0401, metadata !1284, metadata !DIExpression()), !dbg !1420
  %cmp174 = icmp uge i64 %x143.0404, %7, !dbg !1434
  %cmp180.not = icmp slt i64 %x143.0404, %add179
  %or.cond371 = select i1 %cmp174, i1 %cmp180.not, i1 false, !dbg !1437
  br i1 %or.cond371, label %if.end203, label %if.then182, !dbg !1437

if.then182:                                       ; preds = %for.body172
  %33 = load i64, ptr %p140.0401, align 2, !dbg !1438
  store i64 %33, ptr %q144.0407, align 2, !dbg !1438
  %cmp186.not = icmp eq ptr %chop_indexes141.0403, null
  br i1 %cmp186.not, label %if.end201, label %cond.end196, !dbg !1446

cond.end196:                                      ; preds = %if.then182
  %add.ptr189 = getelementptr inbounds i16, ptr %call166, i64 %x143.0404, !dbg !1447
  %34 = load i16, ptr %add.ptr189, align 2, !dbg !1447, !tbaa !822
  %incdec.ptr199 = getelementptr inbounds i16, ptr %chop_indexes141.0403, i64 1, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %incdec.ptr199, metadata !1288, metadata !DIExpression()), !dbg !1420
  store i16 %34, ptr %chop_indexes141.0403, align 2, !dbg !1452, !tbaa !822
  br label %if.end201, !dbg !1453

if.end201:                                        ; preds = %cond.end196, %if.then182
  %chop_indexes141.1 = phi ptr [ %incdec.ptr199, %cond.end196 ], [ null, %if.then182 ], !dbg !1420
  call void @llvm.dbg.value(metadata ptr %chop_indexes141.1, metadata !1288, metadata !DIExpression()), !dbg !1420
  %incdec.ptr202 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0407, i64 1, !dbg !1440
  call void @llvm.dbg.value(metadata ptr %incdec.ptr202, metadata !1291, metadata !DIExpression()), !dbg !1420
  %.pre417 = load i64, ptr %columns, align 8, !dbg !1429, !tbaa !775
  br label %if.end203, !dbg !1441

if.end203:                                        ; preds = %for.body172, %if.end201
  %35 = phi i64 [ %.pre417, %if.end201 ], [ %32, %for.body172 ], !dbg !1429
  %chop_indexes141.2 = phi ptr [ %chop_indexes141.1, %if.end201 ], [ %chop_indexes141.0403, %for.body172 ], !dbg !1420
  %q144.1 = phi ptr [ %incdec.ptr202, %if.end201 ], [ %q144.0407, %for.body172 ], !dbg !1420
  call void @llvm.dbg.value(metadata ptr %q144.1, metadata !1291, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %chop_indexes141.2, metadata !1288, metadata !DIExpression()), !dbg !1420
  %incdec.ptr204 = getelementptr inbounds %struct._PixelPacket, ptr %p140.0401, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %incdec.ptr204, metadata !1284, metadata !DIExpression()), !dbg !1420
  %inc206 = add nuw nsw i64 %x143.0404, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %inc206, metadata !1290, metadata !DIExpression()), !dbg !1420
  %cmp170 = icmp slt i64 %inc206, %35, !dbg !1432
  br i1 %cmp170, label %for.body172, label %for.end207, !dbg !1433, !llvm.loop !1444

for.end207:                                       ; preds = %if.end203, %if.end203.us, %if.end165
  %call208 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call66, ptr noundef %exception) #9, !dbg !1454
  %cmp209 = icmp ne i32 %call208, 0, !dbg !1456
  %spec.select372 = zext i1 %cmp209 to i32, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %spec.select372, metadata !1269, metadata !DIExpression()), !dbg !1295
  %36 = load ptr, ptr %progress_monitor213, align 8, !dbg !1458, !tbaa !833
  %cmp214.not = icmp eq ptr %36, null, !dbg !1459
  br i1 %cmp214.not, label %cleanup226, label %SetImageProgress.exit386, !dbg !1460

SetImageProgress.exit386:                         ; preds = %for.end207
  %inc218 = add nsw i64 %progress.3411, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %inc218, metadata !1270, metadata !DIExpression()), !dbg !1295
  %37 = load i64, ptr %rows, align 8, !dbg !1462, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !1463
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !844, metadata !DIExpression()) #8, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %progress.3411, metadata !845, metadata !DIExpression()) #8, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %37, metadata !846, metadata !DIExpression()) #8, !dbg !1463
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i377) #8, !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %message.i377, metadata !847, metadata !DIExpression()) #8, !dbg !1466
  %call.i381 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i377, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i380) #8, !dbg !1467
  %38 = load ptr, ptr %progress_monitor213, align 8, !dbg !1468, !tbaa !833
  %39 = load ptr, ptr %client_data.i382, align 8, !dbg !1469, !tbaa !855
  %call4.i383 = call i32 %38(ptr noundef nonnull %message.i377, i64 noundef %progress.3411, i64 noundef %37, ptr noundef %39) #8, !dbg !1470
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i377) #8, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %call4.i383, metadata !1292, metadata !DIExpression()), !dbg !1472
  %cmp221 = icmp eq i32 %call4.i383, 0, !dbg !1473
  %spec.select373 = select i1 %cmp221, i32 0, i32 %spec.select372, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %spec.select373, metadata !1269, metadata !DIExpression()), !dbg !1295
  br label %cleanup226, !dbg !1476

cleanup226:                                       ; preds = %for.end207, %SetImageProgress.exit386, %if.end148, %for.body139
  %status.9 = phi i32 [ 0, %for.body139 ], [ 0, %if.end148 ], [ %spec.select373, %SetImageProgress.exit386 ], [ %spec.select372, %for.end207 ], !dbg !1295
  %progress.5 = phi i64 [ %progress.3411, %for.body139 ], [ %progress.3411, %if.end148 ], [ %inc218, %SetImageProgress.exit386 ], [ %progress.3411, %for.end207 ], !dbg !1295
  call void @llvm.dbg.value(metadata i64 %progress.5, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !1269, metadata !DIExpression()), !dbg !1295
  %inc234 = add nuw nsw i64 %y.1412, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %inc234, metadata !1272, metadata !DIExpression()), !dbg !1295
  %40 = load i64, ptr %rows, align 8, !dbg !1346, !tbaa !777
  %sub136 = sub i64 %40, %add135, !dbg !1347
  %cmp137 = icmp slt i64 %inc234, %sub136, !dbg !1348
  br i1 %cmp137, label %for.body139, label %for.end235, !dbg !1349, !llvm.loop !1478

for.end235:                                       ; preds = %cleanup226, %for.cond131.preheader
  %status.5.lcssa = phi i32 [ %status.0.lcssa, %for.cond131.preheader ], [ %status.9, %cleanup226 ], !dbg !1344
  %call236 = call ptr @DestroyCacheView(ptr noundef %call66) #8, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %call236, metadata !1266, metadata !DIExpression()), !dbg !1295
  %call237 = call ptr @DestroyCacheView(ptr noundef %call65) #8, !dbg !1481
  call void @llvm.dbg.value(metadata ptr %call237, metadata !1267, metadata !DIExpression()), !dbg !1295
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1482
  %41 = load i32, ptr %type, align 8, !dbg !1482, !tbaa !870
  %type238 = getelementptr inbounds %struct._Image, ptr %call61, i64 0, i32 77, !dbg !1483
  store i32 %41, ptr %type238, align 8, !dbg !1484, !tbaa !870
  %cmp239 = icmp eq i32 %status.5.lcssa, 0, !dbg !1485
  br i1 %cmp239, label %if.then241, label %cleanup244, !dbg !1487

if.then241:                                       ; preds = %for.end235
  %call242 = call ptr @DestroyImage(ptr noundef nonnull %call61) #8, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %call242, metadata !1268, metadata !DIExpression()), !dbg !1295
  br label %cleanup244, !dbg !1489

cleanup244:                                       ; preds = %for.end235, %if.then241, %if.end15, %if.then11
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %if.end15 ], [ %call242, %if.then241 ], [ %call61, %for.end235 ], !dbg !1295
  ret ptr %retval.0, !dbg !1490
}

declare !dbg !1491 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1496 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !1500 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1503 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1504 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !1510 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !1513 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1516 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !1519 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1522 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ConsolidateCMYKImages(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !1525 {
entry:
  %cmyk_images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !1527, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1528, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmyk_images) #8, !dbg !1564
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1565
  %0 = load i32, ptr %debug, align 8, !dbg !1565, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !1567
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1568

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1569
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !1570
  br label %if.end, !dbg !1571

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @NewImageList() #8, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1532, metadata !DIExpression()), !dbg !1563
  store ptr %call1, ptr %cmyk_images, align 8, !dbg !1573, !tbaa !1574
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %images, metadata !1527, metadata !DIExpression()), !dbg !1563
  %call2397 = call i64 @GetImageListLength(ptr noundef nonnull %images) #8, !dbg !1575
  %cmp3398 = icmp sgt i64 %call2397, 0, !dbg !1576
  br i1 %cmp3398, label %for.body, label %for.end199, !dbg !1577

for.cond:                                         ; preds = %for.end191
  %add = add nuw nsw i64 %i.0399, 4, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %add, metadata !1533, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %call194, metadata !1527, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %i.0399, metadata !1533, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1563
  %call2 = call i64 @GetImageListLength(ptr noundef nonnull %call194) #8, !dbg !1575
  %cmp3 = icmp slt i64 %add, %call2, !dbg !1576
  br i1 %cmp3, label %for.body, label %for.end199, !dbg !1577, !llvm.loop !1579

for.body:                                         ; preds = %if.end, %for.cond
  %images.addr.0400 = phi ptr [ %call194, %for.cond ], [ %images, %if.end ]
  %i.0399 = phi i64 [ %add, %for.cond ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata ptr %images.addr.0400, metadata !1527, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %i.0399, metadata !1533, metadata !DIExpression()), !dbg !1563
  %columns = getelementptr inbounds %struct._Image, ptr %images.addr.0400, i64 0, i32 7, !dbg !1581
  %1 = load i64, ptr %columns, align 8, !dbg !1581, !tbaa !775
  %rows = getelementptr inbounds %struct._Image, ptr %images.addr.0400, i64 0, i32 8, !dbg !1582
  %2 = load i64, ptr %rows, align 8, !dbg !1582, !tbaa !777
  %call4 = call ptr @CloneImage(ptr noundef nonnull %images.addr.0400, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1531, metadata !DIExpression()), !dbg !1563
  %cmp5 = icmp eq ptr %call4, null, !dbg !1584
  br i1 %cmp5, label %for.end199, label %if.end7, !dbg !1586

if.end7:                                          ; preds = %for.body
  %call8 = call i32 @SetImageStorageClass(ptr noundef nonnull %call4, i32 noundef 1) #8, !dbg !1587
  %cmp9 = icmp eq i32 %call8, 0, !dbg !1589
  br i1 %cmp9, label %for.end199, label %if.end11, !dbg !1590

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @SetImageColorspace(ptr noundef nonnull %call4, i32 noundef 12) #8, !dbg !1591
  %call13 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %images.addr.0400, ptr noundef %exception) #8, !dbg !1592
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call14 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call4, ptr noundef %exception) #8, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1529, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1534, metadata !DIExpression()), !dbg !1563
  %3 = load i64, ptr %rows, align 8, !dbg !1594, !tbaa !777
  %cmp17377 = icmp sgt i64 %3, 0, !dbg !1595
  br i1 %cmp17377, label %for.body18.lr.ph, label %for.end42, !dbg !1596

for.body18.lr.ph:                                 ; preds = %if.end11
  %columns21 = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 7
  br label %for.body18, !dbg !1596

for.cond15:                                       ; preds = %for.end
  %inc41 = add nuw nsw i64 %y.0378, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !1534, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 undef, metadata !1534, metadata !DIExpression()), !dbg !1563
  %4 = load i64, ptr %rows, align 8, !dbg !1594, !tbaa !777
  %cmp17 = icmp slt i64 %inc41, %4, !dbg !1595
  br i1 %cmp17, label %for.body18, label %for.end42, !dbg !1596, !llvm.loop !1598

for.body18:                                       ; preds = %for.body18.lr.ph, %for.cond15
  %y.0378 = phi i64 [ 0, %for.body18.lr.ph ], [ %inc41, %for.cond15 ]
  call void @llvm.dbg.value(metadata i64 %y.0378, metadata !1534, metadata !DIExpression()), !dbg !1563
  %5 = load i64, ptr %columns, align 8, !dbg !1600, !tbaa !775
  %call20 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef 0, i64 noundef %y.0378, i64 noundef %5, i64 noundef 1, ptr noundef %exception) #9, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1535, metadata !DIExpression()), !dbg !1602
  %6 = load i64, ptr %columns21, align 8, !dbg !1603, !tbaa !775
  %call22 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef 0, i64 noundef %y.0378, i64 noundef %6, i64 noundef 1, ptr noundef %exception) #9, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1543, metadata !DIExpression()), !dbg !1602
  %cmp23 = icmp eq ptr %call20, null, !dbg !1605
  %cmp24 = icmp eq ptr %call22, null
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp24, !dbg !1607
  br i1 %or.cond, label %for.end42, label %for.cond27.preheader, !dbg !1607

for.cond27.preheader:                             ; preds = %for.body18
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1542, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1535, metadata !DIExpression()), !dbg !1602
  %7 = load i64, ptr %columns, align 8, !dbg !1608, !tbaa !775
  %cmp29373 = icmp sgt i64 %7, 0, !dbg !1611
  br i1 %cmp29373, label %for.body30, label %for.end, !dbg !1612

for.body30:                                       ; preds = %for.cond27.preheader, %ClampToQuantum.exit
  %q.0376 = phi ptr [ %incdec.ptr33, %ClampToQuantum.exit ], [ %call22, %for.cond27.preheader ]
  %x.0375 = phi i64 [ %inc, %ClampToQuantum.exit ], [ 0, %for.cond27.preheader ]
  %p.0374 = phi ptr [ %incdec.ptr, %ClampToQuantum.exit ], [ %call20, %for.cond27.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.0376, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %x.0375, metadata !1542, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata ptr %p.0374, metadata !1535, metadata !DIExpression()), !dbg !1602
  %call31 = call float @GetPixelIntensity(ptr noundef nonnull %images.addr.0400, ptr noundef nonnull %p.0374) #9, !dbg !1613
  %sub = fsub float 6.553500e+04, %call31, !dbg !1613
  call void @llvm.dbg.value(metadata float %sub, metadata !1615, metadata !DIExpression()), !dbg !1621
  %cmp.i = fcmp ugt float %sub, 0.000000e+00, !dbg !1623
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1625

if.end.i:                                         ; preds = %for.body30
  %cmp1.i = fcmp ult float %sub, 6.553500e+04, !dbg !1626
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1628

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %sub, 5.000000e-01, !dbg !1629
  %conv.i = fptoui float %add.i to i16, !dbg !1630
  br label %ClampToQuantum.exit, !dbg !1631

ClampToQuantum.exit:                              ; preds = %for.body30, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.body30 ], [ -1, %if.end.i ], !dbg !1621
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 0, i32 2, !dbg !1613
  store i16 %retval.0.i, ptr %red, align 2, !dbg !1613, !tbaa !1632
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 1, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1535, metadata !DIExpression()), !dbg !1602
  %incdec.ptr33 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 1, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %incdec.ptr33, metadata !1543, metadata !DIExpression()), !dbg !1602
  %inc = add nuw nsw i64 %x.0375, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1542, metadata !DIExpression()), !dbg !1602
  %8 = load i64, ptr %columns, align 8, !dbg !1608, !tbaa !775
  %cmp29 = icmp slt i64 %inc, %8, !dbg !1611
  br i1 %cmp29, label %for.body30, label %for.end, !dbg !1612, !llvm.loop !1636

for.end:                                          ; preds = %ClampToQuantum.exit, %for.cond27.preheader
  %call34 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #9, !dbg !1638
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %y.0378, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1563
  br i1 %cmp35, label %for.end42, label %for.cond15, !dbg !1641

for.end42:                                        ; preds = %for.cond15, %for.body18, %for.end, %if.end11
  %call43 = call ptr @DestroyCacheView(ptr noundef %call14) #8, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1529, metadata !DIExpression()), !dbg !1563
  %call44 = call ptr @DestroyCacheView(ptr noundef %call13) #8, !dbg !1643
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call45 = call ptr @GetNextImageInList(ptr noundef nonnull %images.addr.0400) #8, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %call45, metadata !1527, metadata !DIExpression()), !dbg !1563
  %cmp46 = icmp eq ptr %call45, null, !dbg !1645
  br i1 %cmp46, label %for.end199, label %if.end48, !dbg !1647

if.end48:                                         ; preds = %for.end42
  %call49 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call45, ptr noundef %exception) #8, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %call49, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call50 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call4, ptr noundef %exception) #8, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1529, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1534, metadata !DIExpression()), !dbg !1563
  %rows52 = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 8
  %9 = load i64, ptr %rows52, align 8, !dbg !1650, !tbaa !777
  %cmp53383 = icmp sgt i64 %9, 0, !dbg !1651
  br i1 %cmp53383, label %for.body54.lr.ph, label %for.end90, !dbg !1652

for.body54.lr.ph:                                 ; preds = %if.end48
  %columns58 = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 7
  %columns60 = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 7
  br label %for.body54, !dbg !1652

for.cond51:                                       ; preds = %for.end78
  %inc89 = add nuw nsw i64 %y.1384, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i64 undef, metadata !1534, metadata !DIExpression()), !dbg !1563
  %10 = load i64, ptr %rows52, align 8, !dbg !1650, !tbaa !777
  %cmp53 = icmp slt i64 %inc89, %10, !dbg !1651
  br i1 %cmp53, label %for.body54, label %for.end90, !dbg !1652, !llvm.loop !1654

for.body54:                                       ; preds = %for.body54.lr.ph, %for.cond51
  %y.1384 = phi i64 [ 0, %for.body54.lr.ph ], [ %inc89, %for.cond51 ]
  call void @llvm.dbg.value(metadata i64 %y.1384, metadata !1534, metadata !DIExpression()), !dbg !1563
  %11 = load i64, ptr %columns58, align 8, !dbg !1656, !tbaa !775
  %call59 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call49, i64 noundef 0, i64 noundef %y.1384, i64 noundef %11, i64 noundef 1, ptr noundef %exception) #9, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1544, metadata !DIExpression()), !dbg !1658
  %12 = load i64, ptr %columns60, align 8, !dbg !1659, !tbaa !775
  %call61 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call50, i64 noundef 0, i64 noundef %y.1384, i64 noundef %12, i64 noundef 1, ptr noundef %exception) #9, !dbg !1660
  call void @llvm.dbg.value(metadata ptr %call61, metadata !1549, metadata !DIExpression()), !dbg !1658
  %cmp62 = icmp eq ptr %call59, null, !dbg !1661
  %cmp64 = icmp eq ptr %call61, null
  %or.cond206 = select i1 %cmp62, i1 true, i1 %cmp64, !dbg !1663
  br i1 %or.cond206, label %for.end90, label %for.cond67.preheader, !dbg !1663

for.cond67.preheader:                             ; preds = %for.body54
  call void @llvm.dbg.value(metadata ptr %call61, metadata !1549, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1548, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1544, metadata !DIExpression()), !dbg !1658
  %13 = load i64, ptr %columns58, align 8, !dbg !1664, !tbaa !775
  %cmp69379 = icmp sgt i64 %13, 0, !dbg !1667
  br i1 %cmp69379, label %for.body70, label %for.end78, !dbg !1668

for.body70:                                       ; preds = %for.cond67.preheader, %ClampToQuantum.exit345
  %q57.0382 = phi ptr [ %incdec.ptr75, %ClampToQuantum.exit345 ], [ %call61, %for.cond67.preheader ]
  %x56.0381 = phi i64 [ %inc77, %ClampToQuantum.exit345 ], [ 0, %for.cond67.preheader ]
  %p55.0380 = phi ptr [ %incdec.ptr74, %ClampToQuantum.exit345 ], [ %call59, %for.cond67.preheader ]
  call void @llvm.dbg.value(metadata ptr %q57.0382, metadata !1549, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %x56.0381, metadata !1548, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %p55.0380, metadata !1544, metadata !DIExpression()), !dbg !1658
  %call71 = call float @GetPixelIntensity(ptr noundef nonnull %call45, ptr noundef nonnull %p55.0380) #9, !dbg !1669
  %sub72 = fsub float 6.553500e+04, %call71, !dbg !1671
  call void @llvm.dbg.value(metadata float %sub72, metadata !1615, metadata !DIExpression()), !dbg !1672
  %cmp.i338 = fcmp ugt float %sub72, 0.000000e+00, !dbg !1674
  br i1 %cmp.i338, label %if.end.i340, label %ClampToQuantum.exit345, !dbg !1675

if.end.i340:                                      ; preds = %for.body70
  %cmp1.i339 = fcmp ult float %sub72, 6.553500e+04, !dbg !1676
  br i1 %cmp1.i339, label %if.end3.i343, label %ClampToQuantum.exit345, !dbg !1677

if.end3.i343:                                     ; preds = %if.end.i340
  %add.i341 = fadd float %sub72, 5.000000e-01, !dbg !1678
  %conv.i342 = fptoui float %add.i341 to i16, !dbg !1679
  br label %ClampToQuantum.exit345, !dbg !1680

ClampToQuantum.exit345:                           ; preds = %for.body70, %if.end.i340, %if.end3.i343
  %retval.0.i344 = phi i16 [ %conv.i342, %if.end3.i343 ], [ 0, %for.body70 ], [ -1, %if.end.i340 ], !dbg !1672
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q57.0382, i64 0, i32 1, !dbg !1681
  store i16 %retval.0.i344, ptr %green, align 2, !dbg !1682, !tbaa !1683
  %incdec.ptr74 = getelementptr inbounds %struct._PixelPacket, ptr %p55.0380, i64 1, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %incdec.ptr74, metadata !1544, metadata !DIExpression()), !dbg !1658
  %incdec.ptr75 = getelementptr inbounds %struct._PixelPacket, ptr %q57.0382, i64 1, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !1549, metadata !DIExpression()), !dbg !1658
  %inc77 = add nuw nsw i64 %x56.0381, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %inc77, metadata !1548, metadata !DIExpression()), !dbg !1658
  %14 = load i64, ptr %columns58, align 8, !dbg !1664, !tbaa !775
  %cmp69 = icmp slt i64 %inc77, %14, !dbg !1667
  br i1 %cmp69, label %for.body70, label %for.end78, !dbg !1668, !llvm.loop !1687

for.end78:                                        ; preds = %ClampToQuantum.exit345, %for.cond67.preheader
  %call79 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call50, ptr noundef %exception) #9, !dbg !1689
  %cmp80 = icmp eq i32 %call79, 0, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %y.1384, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1563
  br i1 %cmp80, label %for.end90, label %for.cond51, !dbg !1692

for.end90:                                        ; preds = %for.cond51, %for.body54, %for.end78, %if.end48
  %call91 = call ptr @DestroyCacheView(ptr noundef %call50) #8, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %call91, metadata !1529, metadata !DIExpression()), !dbg !1563
  %call92 = call ptr @DestroyCacheView(ptr noundef %call49) #8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call93 = call ptr @GetNextImageInList(ptr noundef nonnull %call45) #8, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %call93, metadata !1527, metadata !DIExpression()), !dbg !1563
  %cmp94 = icmp eq ptr %call93, null, !dbg !1696
  br i1 %cmp94, label %for.end199, label %if.end96, !dbg !1698

if.end96:                                         ; preds = %for.end90
  %call97 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call93, ptr noundef %exception) #8, !dbg !1699
  call void @llvm.dbg.value(metadata ptr %call97, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call98 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call4, ptr noundef %exception) #8, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %call98, metadata !1529, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1534, metadata !DIExpression()), !dbg !1563
  %rows100 = getelementptr inbounds %struct._Image, ptr %call93, i64 0, i32 8
  %15 = load i64, ptr %rows100, align 8, !dbg !1701, !tbaa !777
  %cmp101389 = icmp sgt i64 %15, 0, !dbg !1702
  br i1 %cmp101389, label %for.body102.lr.ph, label %for.end138, !dbg !1703

for.body102.lr.ph:                                ; preds = %if.end96
  %columns106 = getelementptr inbounds %struct._Image, ptr %call93, i64 0, i32 7
  %columns108 = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 7
  br label %for.body102, !dbg !1703

for.cond99:                                       ; preds = %for.end126
  %inc137 = add nuw nsw i64 %y.2390, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i64 undef, metadata !1534, metadata !DIExpression()), !dbg !1563
  %16 = load i64, ptr %rows100, align 8, !dbg !1701, !tbaa !777
  %cmp101 = icmp slt i64 %inc137, %16, !dbg !1702
  br i1 %cmp101, label %for.body102, label %for.end138, !dbg !1703, !llvm.loop !1705

for.body102:                                      ; preds = %for.body102.lr.ph, %for.cond99
  %y.2390 = phi i64 [ 0, %for.body102.lr.ph ], [ %inc137, %for.cond99 ]
  call void @llvm.dbg.value(metadata i64 %y.2390, metadata !1534, metadata !DIExpression()), !dbg !1563
  %17 = load i64, ptr %columns106, align 8, !dbg !1707, !tbaa !775
  %call107 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call97, i64 noundef 0, i64 noundef %y.2390, i64 noundef %17, i64 noundef 1, ptr noundef %exception) #9, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %call107, metadata !1550, metadata !DIExpression()), !dbg !1709
  %18 = load i64, ptr %columns108, align 8, !dbg !1710, !tbaa !775
  %call109 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call98, i64 noundef 0, i64 noundef %y.2390, i64 noundef %18, i64 noundef 1, ptr noundef %exception) #9, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %call109, metadata !1555, metadata !DIExpression()), !dbg !1709
  %cmp110 = icmp eq ptr %call107, null, !dbg !1712
  %cmp112 = icmp eq ptr %call109, null
  %or.cond207 = select i1 %cmp110, i1 true, i1 %cmp112, !dbg !1714
  br i1 %or.cond207, label %for.end138, label %for.cond115.preheader, !dbg !1714

for.cond115.preheader:                            ; preds = %for.body102
  call void @llvm.dbg.value(metadata ptr %call109, metadata !1555, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call107, metadata !1550, metadata !DIExpression()), !dbg !1709
  %19 = load i64, ptr %columns106, align 8, !dbg !1715, !tbaa !775
  %cmp117385 = icmp sgt i64 %19, 0, !dbg !1718
  br i1 %cmp117385, label %for.body118, label %for.end126, !dbg !1719

for.body118:                                      ; preds = %for.cond115.preheader, %ClampToQuantum.exit353
  %q105.0388 = phi ptr [ %incdec.ptr123, %ClampToQuantum.exit353 ], [ %call109, %for.cond115.preheader ]
  %x104.0387 = phi i64 [ %inc125, %ClampToQuantum.exit353 ], [ 0, %for.cond115.preheader ]
  %p103.0386 = phi ptr [ %incdec.ptr122, %ClampToQuantum.exit353 ], [ %call107, %for.cond115.preheader ]
  call void @llvm.dbg.value(metadata ptr %q105.0388, metadata !1555, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %x104.0387, metadata !1554, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %p103.0386, metadata !1550, metadata !DIExpression()), !dbg !1709
  %call119 = call float @GetPixelIntensity(ptr noundef nonnull %call93, ptr noundef nonnull %p103.0386) #9, !dbg !1720
  %sub120 = fsub float 6.553500e+04, %call119, !dbg !1722
  call void @llvm.dbg.value(metadata float %sub120, metadata !1615, metadata !DIExpression()), !dbg !1723
  %cmp.i346 = fcmp ugt float %sub120, 0.000000e+00, !dbg !1725
  br i1 %cmp.i346, label %if.end.i348, label %ClampToQuantum.exit353, !dbg !1726

if.end.i348:                                      ; preds = %for.body118
  %cmp1.i347 = fcmp ult float %sub120, 6.553500e+04, !dbg !1727
  br i1 %cmp1.i347, label %if.end3.i351, label %ClampToQuantum.exit353, !dbg !1728

if.end3.i351:                                     ; preds = %if.end.i348
  %add.i349 = fadd float %sub120, 5.000000e-01, !dbg !1729
  %conv.i350 = fptoui float %add.i349 to i16, !dbg !1730
  br label %ClampToQuantum.exit353, !dbg !1731

ClampToQuantum.exit353:                           ; preds = %for.body118, %if.end.i348, %if.end3.i351
  %retval.0.i352 = phi i16 [ %conv.i350, %if.end3.i351 ], [ 0, %for.body118 ], [ -1, %if.end.i348 ], !dbg !1723
  store i16 %retval.0.i352, ptr %q105.0388, align 2, !dbg !1732, !tbaa !1733
  %incdec.ptr122 = getelementptr inbounds %struct._PixelPacket, ptr %p103.0386, i64 1, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !1550, metadata !DIExpression()), !dbg !1709
  %incdec.ptr123 = getelementptr inbounds %struct._PixelPacket, ptr %q105.0388, i64 1, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr123, metadata !1555, metadata !DIExpression()), !dbg !1709
  %inc125 = add nuw nsw i64 %x104.0387, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %inc125, metadata !1554, metadata !DIExpression()), !dbg !1709
  %20 = load i64, ptr %columns106, align 8, !dbg !1715, !tbaa !775
  %cmp117 = icmp slt i64 %inc125, %20, !dbg !1718
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !1719, !llvm.loop !1737

for.end126:                                       ; preds = %ClampToQuantum.exit353, %for.cond115.preheader
  %call127 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call98, ptr noundef %exception) #9, !dbg !1739
  %cmp128 = icmp eq i32 %call127, 0, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %y.2390, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1563
  br i1 %cmp128, label %for.end138, label %for.cond99, !dbg !1742

for.end138:                                       ; preds = %for.cond99, %for.body102, %for.end126, %if.end96
  %call139 = call ptr @DestroyCacheView(ptr noundef %call98) #8, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %call139, metadata !1529, metadata !DIExpression()), !dbg !1563
  %call140 = call ptr @DestroyCacheView(ptr noundef %call97) #8, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %call140, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call141 = call ptr @GetNextImageInList(ptr noundef nonnull %call93) #8, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %call141, metadata !1527, metadata !DIExpression()), !dbg !1563
  %cmp142 = icmp eq ptr %call141, null, !dbg !1746
  br i1 %cmp142, label %for.end199, label %if.end144, !dbg !1748

if.end144:                                        ; preds = %for.end138
  %call145 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call141, ptr noundef %exception) #8, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %call145, metadata !1530, metadata !DIExpression()), !dbg !1563
  %call146 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call4, ptr noundef %exception) #8, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %call146, metadata !1529, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1534, metadata !DIExpression()), !dbg !1563
  %rows148 = getelementptr inbounds %struct._Image, ptr %call141, i64 0, i32 8
  %21 = load i64, ptr %rows148, align 8, !dbg !1751, !tbaa !777
  %cmp149395 = icmp sgt i64 %21, 0, !dbg !1752
  br i1 %cmp149395, label %for.body150.lr.ph, label %for.end191, !dbg !1753

for.body150.lr.ph:                                ; preds = %if.end144
  %columns154 = getelementptr inbounds %struct._Image, ptr %call141, i64 0, i32 7
  %columns156 = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 7
  br label %for.body150, !dbg !1753

for.cond147:                                      ; preds = %for.end178
  %inc190 = add nuw nsw i64 %y.3396, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 undef, metadata !1534, metadata !DIExpression()), !dbg !1563
  %22 = load i64, ptr %rows148, align 8, !dbg !1751, !tbaa !777
  %cmp149 = icmp slt i64 %inc190, %22, !dbg !1752
  br i1 %cmp149, label %for.body150, label %for.end191, !dbg !1753, !llvm.loop !1755

for.body150:                                      ; preds = %for.body150.lr.ph, %for.cond147
  %y.3396 = phi i64 [ 0, %for.body150.lr.ph ], [ %inc190, %for.cond147 ]
  call void @llvm.dbg.value(metadata i64 %y.3396, metadata !1534, metadata !DIExpression()), !dbg !1563
  %23 = load i64, ptr %columns154, align 8, !dbg !1757, !tbaa !775
  %call155 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call145, i64 noundef 0, i64 noundef %y.3396, i64 noundef %23, i64 noundef 1, ptr noundef %exception) #9, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1556, metadata !DIExpression()), !dbg !1759
  %24 = load i64, ptr %columns156, align 8, !dbg !1760, !tbaa !775
  %call157 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call146, i64 noundef 0, i64 noundef %y.3396, i64 noundef %24, i64 noundef 1, ptr noundef %exception) #9, !dbg !1761
  call void @llvm.dbg.value(metadata ptr %call157, metadata !1562, metadata !DIExpression()), !dbg !1759
  %cmp158 = icmp eq ptr %call155, null, !dbg !1762
  %cmp160 = icmp eq ptr %call157, null
  %or.cond208 = select i1 %cmp158, i1 true, i1 %cmp160, !dbg !1764
  br i1 %or.cond208, label %for.end191, label %if.end162, !dbg !1764

if.end162:                                        ; preds = %for.body150
  %call163 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call146) #8, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %call163, metadata !1560, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 0, metadata !1561, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1556, metadata !DIExpression()), !dbg !1759
  %25 = load i64, ptr %columns154, align 8, !dbg !1766, !tbaa !775
  %cmp166391 = icmp slt i64 %25, 1, !dbg !1769
  %cmp168.not = icmp eq ptr %call163, null
  %or.cond403 = select i1 %cmp166391, i1 true, i1 %cmp168.not, !dbg !1770
  br i1 %or.cond403, label %for.end178, label %for.body167, !dbg !1770

for.body167:                                      ; preds = %if.end162, %ClampToQuantum.exit361
  %x152.0393 = phi i64 [ %inc177, %ClampToQuantum.exit361 ], [ 0, %if.end162 ]
  %p151.0392 = phi ptr [ %incdec.ptr175, %ClampToQuantum.exit361 ], [ %call155, %if.end162 ]
  call void @llvm.dbg.value(metadata i64 %x152.0393, metadata !1561, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %p151.0392, metadata !1556, metadata !DIExpression()), !dbg !1759
  %add.ptr = getelementptr inbounds i16, ptr %call163, i64 %x152.0393, !dbg !1771
  %call170 = call float @GetPixelIntensity(ptr noundef nonnull %call141, ptr noundef nonnull %p151.0392) #9, !dbg !1771
  %sub171 = fsub float 6.553500e+04, %call170, !dbg !1771
  call void @llvm.dbg.value(metadata float %sub171, metadata !1615, metadata !DIExpression()), !dbg !1775
  %cmp.i354 = fcmp ugt float %sub171, 0.000000e+00, !dbg !1777
  br i1 %cmp.i354, label %if.end.i356, label %ClampToQuantum.exit361, !dbg !1778

if.end.i356:                                      ; preds = %for.body167
  %cmp1.i355 = fcmp ult float %sub171, 6.553500e+04, !dbg !1779
  br i1 %cmp1.i355, label %if.end3.i359, label %ClampToQuantum.exit361, !dbg !1780

if.end3.i359:                                     ; preds = %if.end.i356
  %add.i357 = fadd float %sub171, 5.000000e-01, !dbg !1781
  %conv.i358 = fptoui float %add.i357 to i16, !dbg !1782
  br label %ClampToQuantum.exit361, !dbg !1783

ClampToQuantum.exit361:                           ; preds = %for.body167, %if.end.i356, %if.end3.i359
  %retval.0.i360 = phi i16 [ %conv.i358, %if.end3.i359 ], [ 0, %for.body167 ], [ -1, %if.end.i356 ], !dbg !1775
  store i16 %retval.0.i360, ptr %add.ptr, align 2, !dbg !1771, !tbaa !822
  %incdec.ptr175 = getelementptr inbounds %struct._PixelPacket, ptr %p151.0392, i64 1, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %incdec.ptr175, metadata !1556, metadata !DIExpression()), !dbg !1759
  %inc177 = add nuw nsw i64 %x152.0393, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %inc177, metadata !1561, metadata !DIExpression()), !dbg !1759
  %26 = load i64, ptr %columns154, align 8, !dbg !1766, !tbaa !775
  %cmp166 = icmp slt i64 %inc177, %26, !dbg !1769
  br i1 %cmp166, label %for.body167, label %for.end178, !dbg !1770, !llvm.loop !1786

for.end178:                                       ; preds = %ClampToQuantum.exit361, %if.end162
  %call179 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call146, ptr noundef %exception) #9, !dbg !1788
  %cmp180 = icmp eq i32 %call179, 0, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %y.3396, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1563
  br i1 %cmp180, label %for.end191, label %for.cond147, !dbg !1791

for.end191:                                       ; preds = %for.cond147, %for.body150, %for.end178, %if.end144
  %call192 = call ptr @DestroyCacheView(ptr noundef %call146) #8, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %call192, metadata !1529, metadata !DIExpression()), !dbg !1563
  %call193 = call ptr @DestroyCacheView(ptr noundef %call145) #8, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %call193, metadata !1530, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %cmyk_images, metadata !1532, metadata !DIExpression(DW_OP_deref)), !dbg !1563
  call void @AppendImageToList(ptr noundef nonnull %cmyk_images, ptr noundef nonnull %call4) #8, !dbg !1794
  %call194 = call ptr @GetNextImageInList(ptr noundef nonnull %call141) #8, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %call194, metadata !1527, metadata !DIExpression()), !dbg !1563
  %cmp195 = icmp eq ptr %call194, null, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %i.0399, metadata !1533, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1563
  br i1 %cmp195, label %for.end199, label %for.cond, !dbg !1798

for.end199:                                       ; preds = %for.cond, %for.body, %if.end7, %for.end42, %for.end90, %for.end138, %for.end191, %if.end
  %27 = load ptr, ptr %cmyk_images, align 8, !dbg !1799, !tbaa !1574
  call void @llvm.dbg.value(metadata ptr %27, metadata !1532, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmyk_images) #8, !dbg !1800
  ret ptr %27, !dbg !1801
}

declare !dbg !1802 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !1806 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare !dbg !1809 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1813 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1817 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !1820 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1823 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !1824 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CropImage(ptr noundef %image, ptr nocapture noundef readonly %geometry, ptr noundef %exception) local_unnamed_addr #0 !dbg !1827 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1829, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1830, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1831, metadata !DIExpression()), !dbg !1850
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1851
  %0 = load i32, ptr %debug, align 8, !dbg !1851, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !1853
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1854

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1855
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !1856
  br label %if.end, !dbg !1857

if.end:                                           ; preds = %if.then, %entry
  %page1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !1858
  %bounding_box.sroa.0.0.copyload = load i64, ptr %page1, align 8, !dbg !1858, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.0.copyload, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %bounding_box.sroa.9.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 8, !dbg !1858
  %bounding_box.sroa.9.0.copyload = load i64, ptr %bounding_box.sroa.9.0.page1.sroa_idx, align 8, !dbg !1858, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.9.0.copyload, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %bounding_box.sroa.14.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 16, !dbg !1858
  %bounding_box.sroa.14.0.copyload = load i64, ptr %bounding_box.sroa.14.0.page1.sroa_idx, align 8, !dbg !1858, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.14.0.copyload, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  %bounding_box.sroa.24.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 24, !dbg !1858
  %bounding_box.sroa.24.0.copyload = load i64, ptr %bounding_box.sroa.24.0.page1.sroa_idx, align 8, !dbg !1858, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.24.0.copyload, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  %cmp2 = icmp eq i64 %bounding_box.sroa.0.0.copyload, 0, !dbg !1859
  %cmp3 = icmp eq i64 %bounding_box.sroa.9.0.copyload, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3, !dbg !1861
  br i1 %or.cond, label %if.then4, label %if.end7, !dbg !1861

if.then4:                                         ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1862
  %1 = load i64, ptr %columns, align 8, !dbg !1862, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %1, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1864
  %2 = load i64, ptr %rows, align 8, !dbg !1864, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %2, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  br label %if.end7, !dbg !1865

if.end7:                                          ; preds = %if.end, %if.then4
  %bounding_box.sroa.9.0 = phi i64 [ %2, %if.then4 ], [ %bounding_box.sroa.9.0.copyload, %if.end ], !dbg !1850
  %bounding_box.sroa.0.0 = phi i64 [ %1, %if.then4 ], [ %bounding_box.sroa.0.0.copyload, %if.end ], !dbg !1850
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.0, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.9.0, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %page.sroa.0.0.copyload = load i64, ptr %geometry, align 8, !dbg !1866, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %page.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 8, !dbg !1866
  %page.sroa.16.0.copyload = load i64, ptr %page.sroa.16.0..sroa_idx, align 8, !dbg !1866, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page.sroa.16.0.copyload, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %page.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 16, !dbg !1866
  %page.sroa.29.0.copyload = load i64, ptr %page.sroa.29.0..sroa_idx, align 8, !dbg !1866, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.0.copyload, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  %page.sroa.43.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 24, !dbg !1866
  %page.sroa.43.0.copyload = load i64, ptr %page.sroa.43.0..sroa_idx, align 8, !dbg !1866, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %page.sroa.43.0.copyload, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  %cmp9 = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !1867
  %spec.select = select i1 %cmp9, i64 %bounding_box.sroa.0.0, i64 %page.sroa.0.0.copyload, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %cmp15 = icmp eq i64 %page.sroa.16.0.copyload, 0, !dbg !1870
  %spec.select422 = select i1 %cmp15, i64 %bounding_box.sroa.9.0, i64 %page.sroa.16.0.copyload, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %spec.select422, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %sub = sub nsw i64 %bounding_box.sroa.14.0.copyload, %page.sroa.29.0.copyload, !dbg !1873
  %cmp22.not = icmp sgt i64 %spec.select, %sub, !dbg !1875
  br i1 %cmp22.not, label %lor.lhs.false23, label %if.then41, !dbg !1876

lor.lhs.false23:                                  ; preds = %if.end7
  %sub26 = sub nsw i64 %bounding_box.sroa.24.0.copyload, %page.sroa.43.0.copyload, !dbg !1877
  %cmp28.not = icmp sgt i64 %spec.select422, %sub26, !dbg !1878
  br i1 %cmp28.not, label %lor.lhs.false29, label %if.then41, !dbg !1879

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %sub32 = sub nsw i64 %page.sroa.29.0.copyload, %bounding_box.sroa.14.0.copyload, !dbg !1880
  %columns33 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1881
  %3 = load i64, ptr %columns33, align 8, !dbg !1881, !tbaa !775
  %cmp34 = icmp sgt i64 %sub32, %3, !dbg !1882
  br i1 %cmp34, label %if.then41, label %lor.lhs.false35, !dbg !1883

lor.lhs.false35:                                  ; preds = %lor.lhs.false29
  %sub38 = sub nsw i64 %page.sroa.43.0.copyload, %bounding_box.sroa.24.0.copyload, !dbg !1884
  %rows39 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1885
  %4 = load i64, ptr %rows39, align 8, !dbg !1885, !tbaa !777
  %cmp40 = icmp sgt i64 %sub38, %4, !dbg !1886
  br i1 %cmp40, label %if.then41, label %if.end59, !dbg !1887

if.then41:                                        ; preds = %lor.lhs.false35, %lor.lhs.false29, %lor.lhs.false23, %if.end7
  %filename42 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1888
  %call44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 666, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename42) #8, !dbg !1890
  %call45 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %exception) #8, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %call45, metadata !1834, metadata !DIExpression()), !dbg !1850
  %cmp46 = icmp eq ptr %call45, null, !dbg !1892
  br i1 %cmp46, label %cleanup264, label %if.end48, !dbg !1894

if.end48:                                         ; preds = %if.then41
  %opacity = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 12, i32 3, !dbg !1895
  store i16 -1, ptr %opacity, align 2, !dbg !1896, !tbaa !1897
  %call49 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call45) #8, !dbg !1898
  %page50 = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 26, !dbg !1899
  store i64 %bounding_box.sroa.0.0, ptr %page50, align 8, !dbg !1900, !tbaa.struct !783
  %bounding_box.sroa.9.0.page50.sroa_idx = getelementptr inbounds i8, ptr %page50, i64 8, !dbg !1900
  store i64 %bounding_box.sroa.9.0, ptr %bounding_box.sroa.9.0.page50.sroa_idx, align 8, !dbg !1900, !tbaa.struct !785
  %x52 = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 26, i32 2, !dbg !1901
  %dispose = getelementptr inbounds %struct._Image, ptr %call45, i64 0, i32 37, !dbg !1902
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x52, i8 -1, i64 16, i1 false), !dbg !1904
  %5 = load i32, ptr %dispose, align 4, !dbg !1902, !tbaa !1905
  %cmp55 = icmp eq i32 %5, 2, !dbg !1906
  br i1 %cmp55, label %if.then56, label %cleanup264, !dbg !1907

if.then56:                                        ; preds = %if.end48
  store i32 1, ptr %dispose, align 4, !dbg !1908, !tbaa !1905
  br label %cleanup264, !dbg !1909

if.end59:                                         ; preds = %lor.lhs.false35
  %cmp61 = icmp slt i64 %page.sroa.29.0.copyload, 0, !dbg !1910
  %cmp63 = icmp sgt i64 %bounding_box.sroa.14.0.copyload, -1
  %or.cond272 = select i1 %cmp61, i1 %cmp63, i1 false, !dbg !1912
  br i1 %or.cond272, label %if.then64, label %if.else, !dbg !1912

if.then64:                                        ; preds = %if.end59
  %add = add i64 %sub32, %spec.select, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %add, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  br label %if.end83, !dbg !1915

if.else:                                          ; preds = %if.end59
  %sub74 = sub i64 %spec.select, %sub, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %sub74, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %sub32, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  %6 = tail call i64 @llvm.smax.i64(i64 %sub32, i64 0), !dbg !1918
  br label %if.end83, !dbg !1918

if.end83:                                         ; preds = %if.else, %if.then64
  %page.sroa.29.0 = phi i64 [ 0, %if.then64 ], [ %6, %if.else ], !dbg !1919
  %page.sroa.0.1 = phi i64 [ %add, %if.then64 ], [ %sub74, %if.else ], !dbg !1919
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.1, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.0, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  %cmp85 = icmp slt i64 %page.sroa.43.0.copyload, 0, !dbg !1920
  %cmp88 = icmp sgt i64 %bounding_box.sroa.24.0.copyload, -1
  %or.cond273 = select i1 %cmp85, i1 %cmp88, i1 false, !dbg !1922
  br i1 %or.cond273, label %if.then89, label %if.else96, !dbg !1922

if.then89:                                        ; preds = %if.end83
  %add94 = add i64 %sub38, %spec.select422, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %add94, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  br label %if.end110, !dbg !1925

if.else96:                                        ; preds = %if.end83
  %sub101 = sub i64 %spec.select422, %sub26, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %sub101, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %sub38, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  %7 = tail call i64 @llvm.smax.i64(i64 %sub38, i64 0), !dbg !1928
  br label %if.end110, !dbg !1928

if.end110:                                        ; preds = %if.else96, %if.then89
  %page.sroa.43.0 = phi i64 [ 0, %if.then89 ], [ %7, %if.else96 ], !dbg !1929
  %page.sroa.16.1 = phi i64 [ %add94, %if.then89 ], [ %sub101, %if.else96 ], !dbg !1929
  call void @llvm.dbg.value(metadata i64 %page.sroa.16.1, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %page.sroa.43.0, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  %add113 = add nsw i64 %page.sroa.0.1, %page.sroa.29.0, !dbg !1930
  %cmp115 = icmp sgt i64 %add113, %3, !dbg !1932
  %sub119 = sub i64 %3, %page.sroa.29.0
  %spec.select416 = select i1 %cmp115, i64 %sub119, i64 %page.sroa.0.1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %spec.select416, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %cmp123.not = icmp ne i64 %page.sroa.0.0.copyload, 0, !dbg !1934
  %cmp127 = icmp ugt i64 %spec.select416, %page.sroa.0.0.copyload
  %or.cond417 = select i1 %cmp123.not, i1 %cmp127, i1 false, !dbg !1936
  %spec.select423 = select i1 %or.cond417, i64 %page.sroa.0.0.copyload, i64 %spec.select416, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %spec.select423, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1850
  %add134 = add nsw i64 %page.sroa.16.1, %page.sroa.43.0, !dbg !1937
  %cmp136 = icmp sgt i64 %add134, %4, !dbg !1939
  %sub140 = sub i64 %4, %page.sroa.43.0
  %spec.select418 = select i1 %cmp136, i64 %sub140, i64 %page.sroa.16.1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %spec.select418, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %cmp144.not = icmp ne i64 %page.sroa.16.0.copyload, 0, !dbg !1941
  %cmp148 = icmp ugt i64 %spec.select418, %page.sroa.16.0.copyload
  %or.cond419 = select i1 %cmp144.not, i1 %cmp148, i1 false, !dbg !1943
  %spec.select424 = select i1 %or.cond419, i64 %page.sroa.16.0.copyload, i64 %spec.select418, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %spec.select424, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1850
  %add155 = add nsw i64 %page.sroa.29.0, %bounding_box.sroa.14.0.copyload, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %add155, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1850
  %add158 = add nsw i64 %page.sroa.43.0, %bounding_box.sroa.24.0.copyload, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %add158, metadata !1837, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1850
  %cmp160 = icmp eq i64 %spec.select423, 0, !dbg !1946
  %cmp163 = icmp eq i64 %spec.select424, 0
  %or.cond274 = select i1 %cmp160, i1 true, i1 %cmp163, !dbg !1948
  br i1 %or.cond274, label %if.then164, label %if.end168, !dbg !1948

if.then164:                                       ; preds = %if.end110
  %filename165 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1949
  %call167 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename165) #8, !dbg !1951
  br label %cleanup264, !dbg !1952

if.end168:                                        ; preds = %if.end110
  %call171 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %spec.select423, i64 noundef %spec.select424, i32 noundef 1, ptr noundef %exception) #8, !dbg !1953
  call void @llvm.dbg.value(metadata ptr %call171, metadata !1834, metadata !DIExpression()), !dbg !1850
  %cmp172 = icmp eq ptr %call171, null, !dbg !1954
  br i1 %cmp172, label %cleanup264, label %if.end174, !dbg !1956

if.end174:                                        ; preds = %if.end168
  %8 = load i64, ptr %page1, align 8, !dbg !1957, !tbaa !1958
  %page177 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 26, !dbg !1959
  store i64 %8, ptr %page177, align 8, !dbg !1960, !tbaa !1958
  %height180 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !1961
  %9 = load i64, ptr %height180, align 8, !dbg !1961, !tbaa !1962
  %height182 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 26, i32 1, !dbg !1963
  store i64 %9, ptr %height182, align 8, !dbg !1964, !tbaa !1962
  %add185 = add i64 %add155, %bounding_box.sroa.0.0, !dbg !1965
  %10 = load i64, ptr %page1, align 8, !dbg !1967, !tbaa !1958
  %cmp188 = icmp sgt i64 %add185, %10, !dbg !1968
  br i1 %cmp188, label %if.then196, label %lor.lhs.false189, !dbg !1969

lor.lhs.false189:                                 ; preds = %if.end174
  %add192 = add i64 %add158, %bounding_box.sroa.9.0, !dbg !1970
  %11 = load i64, ptr %height180, align 8, !dbg !1971, !tbaa !1962
  %cmp195 = icmp sgt i64 %add192, %11, !dbg !1972
  br i1 %cmp195, label %if.then196, label %if.end203, !dbg !1973

if.then196:                                       ; preds = %lor.lhs.false189, %if.end174
  store i64 %bounding_box.sroa.0.0, ptr %page177, align 8, !dbg !1974, !tbaa !1958
  store i64 %bounding_box.sroa.9.0, ptr %height182, align 8, !dbg !1976, !tbaa !1962
  br label %if.end203, !dbg !1977

if.end203:                                        ; preds = %if.then196, %lor.lhs.false189
  %x206 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 26, i32 2, !dbg !1978
  store i64 %add155, ptr %x206, align 8, !dbg !1979, !tbaa !1980
  %y209 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 26, i32 3, !dbg !1981
  store i64 %add158, ptr %y209, align 8, !dbg !1982, !tbaa !1983
  call void @llvm.dbg.value(metadata i32 1, metadata !1835, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1850
  %call210 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %call210, metadata !1833, metadata !DIExpression()), !dbg !1850
  %call211 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call171, ptr noundef %exception) #8, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %call211, metadata !1832, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1839, metadata !DIExpression()), !dbg !1850
  %rows212 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1835, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1839, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1850
  %12 = load i64, ptr %rows212, align 8, !dbg !1986, !tbaa !777
  %cmp213425 = icmp sgt i64 %12, 0, !dbg !1987
  br i1 %cmp213425, label %for.body.lr.ph, label %for.end, !dbg !1988

for.body.lr.ph:                                   ; preds = %if.end203
  %columns220 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1988

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0428 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0427 = phi i64 [ 0, %for.body.lr.ph ], [ %inc256, %cleanup ]
  %progress.0426 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0428, metadata !1835, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %y.0427, metadata !1839, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %progress.0426, metadata !1836, metadata !DIExpression()), !dbg !1850
  %cmp214 = icmp eq i32 %status.0428, 0, !dbg !1989
  br i1 %cmp214, label %cleanup, label %if.end216, !dbg !1991

if.end216:                                        ; preds = %for.body
  %add219 = add nuw nsw i64 %y.0427, %page.sroa.43.0, !dbg !1992
  %13 = load i64, ptr %columns220, align 8, !dbg !1993, !tbaa !775
  %call221 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call210, i64 noundef %page.sroa.29.0, i64 noundef %add219, i64 noundef %13, i64 noundef 1, ptr noundef %exception) #9, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %call221, metadata !1844, metadata !DIExpression()), !dbg !1995
  %14 = load i64, ptr %columns220, align 8, !dbg !1996, !tbaa !775
  %call223 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call211, i64 noundef 0, i64 noundef %y.0427, i64 noundef %14, i64 noundef 1, ptr noundef %exception) #9, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %call223, metadata !1846, metadata !DIExpression()), !dbg !1995
  %cmp224 = icmp eq ptr %call221, null, !dbg !1998
  %cmp226 = icmp eq ptr %call223, null
  %or.cond275 = select i1 %cmp224, i1 true, i1 %cmp226, !dbg !2000
  br i1 %or.cond275, label %cleanup, label %if.end228, !dbg !2000

if.end228:                                        ; preds = %if.end216
  %call229 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call210) #8, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %call229, metadata !1840, metadata !DIExpression()), !dbg !1995
  %call230 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call211) #8, !dbg !2002
  call void @llvm.dbg.value(metadata ptr %call230, metadata !1845, metadata !DIExpression()), !dbg !1995
  %15 = load i64, ptr %columns220, align 8, !dbg !2003, !tbaa !775
  %mul = shl i64 %15, 3, !dbg !2004
  %call232 = call ptr @CopyMagickMemory(ptr noundef nonnull %call223, ptr noundef nonnull %call221, i64 noundef %mul) #8, !dbg !2005
  %cmp233 = icmp ne ptr %call229, null, !dbg !2006
  %cmp235 = icmp ne ptr %call230, null
  %or.cond276 = select i1 %cmp233, i1 %cmp235, i1 false, !dbg !2008
  br i1 %or.cond276, label %if.then236, label %if.end240, !dbg !2008

if.then236:                                       ; preds = %if.end228
  %16 = load i64, ptr %columns220, align 8, !dbg !2009, !tbaa !775
  %mul238 = shl i64 %16, 1, !dbg !2010
  %call239 = call ptr @CopyMagickMemory(ptr noundef nonnull %call230, ptr noundef nonnull %call229, i64 noundef %mul238) #8, !dbg !2011
  br label %if.end240, !dbg !2012

if.end240:                                        ; preds = %if.then236, %if.end228
  %call241 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call211, ptr noundef %exception) #9, !dbg !2013
  %cmp242 = icmp ne i32 %call241, 0, !dbg !2015
  %spec.select420 = zext i1 %cmp242 to i32, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %spec.select420, metadata !1835, metadata !DIExpression()), !dbg !1850
  %17 = load ptr, ptr %progress_monitor, align 8, !dbg !2017, !tbaa !833
  %cmp245.not = icmp eq ptr %17, null, !dbg !2018
  br i1 %cmp245.not, label %cleanup, label %SetImageProgress.exit, !dbg !2019

SetImageProgress.exit:                            ; preds = %if.end240
  %inc = add nsw i64 %progress.0426, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1836, metadata !DIExpression()), !dbg !1850
  %18 = load i64, ptr %rows39, align 8, !dbg !2021, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2022
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !844, metadata !DIExpression()) #8, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %progress.0426, metadata !845, metadata !DIExpression()) #8, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %18, metadata !846, metadata !DIExpression()) #8, !dbg !2022
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !2025
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename.i) #8, !dbg !2026
  %19 = load ptr, ptr %progress_monitor, align 8, !dbg !2027, !tbaa !833
  %20 = load ptr, ptr %client_data.i, align 8, !dbg !2028, !tbaa !855
  %call4.i = call i32 %19(ptr noundef nonnull %message.i, i64 noundef %progress.0426, i64 noundef %18, ptr noundef %20) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1847, metadata !DIExpression()), !dbg !2031
  %cmp249 = icmp eq i32 %call4.i, 0, !dbg !2032
  %spec.select421 = select i1 %cmp249, i32 0, i32 %spec.select420, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %spec.select421, metadata !1835, metadata !DIExpression()), !dbg !1850
  br label %cleanup, !dbg !2035

cleanup:                                          ; preds = %if.end240, %SetImageProgress.exit, %if.end216, %for.body
  %progress.2 = phi i64 [ %progress.0426, %for.body ], [ %progress.0426, %if.end216 ], [ %inc, %SetImageProgress.exit ], [ %progress.0426, %if.end240 ], !dbg !1850
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end216 ], [ %spec.select421, %SetImageProgress.exit ], [ %spec.select420, %if.end240 ], !dbg !1850
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1835, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1836, metadata !DIExpression()), !dbg !1850
  %inc256 = add nuw nsw i64 %y.0427, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %inc256, metadata !1839, metadata !DIExpression()), !dbg !1850
  %21 = load i64, ptr %rows212, align 8, !dbg !1986, !tbaa !777
  %cmp213 = icmp slt i64 %inc256, %21, !dbg !1987
  br i1 %cmp213, label %for.body, label %for.end, !dbg !1988, !llvm.loop !2037

for.end:                                          ; preds = %cleanup, %if.end203
  %status.0.lcssa = phi i32 [ 1, %if.end203 ], [ %status.4, %cleanup ], !dbg !2039
  %call257 = call ptr @DestroyCacheView(ptr noundef %call211) #8, !dbg !2040
  call void @llvm.dbg.value(metadata ptr %call257, metadata !1832, metadata !DIExpression()), !dbg !1850
  %call258 = call ptr @DestroyCacheView(ptr noundef %call210) #8, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %call258, metadata !1833, metadata !DIExpression()), !dbg !1850
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2042
  %22 = load i32, ptr %type, align 8, !dbg !2042, !tbaa !870
  %type259 = getelementptr inbounds %struct._Image, ptr %call171, i64 0, i32 77, !dbg !2043
  store i32 %22, ptr %type259, align 8, !dbg !2044, !tbaa !870
  %cmp260 = icmp eq i32 %status.0.lcssa, 0, !dbg !2045
  br i1 %cmp260, label %if.then261, label %cleanup264, !dbg !2047

if.then261:                                       ; preds = %for.end
  %call262 = call ptr @DestroyImage(ptr noundef nonnull %call171) #8, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %call262, metadata !1834, metadata !DIExpression()), !dbg !1850
  br label %cleanup264, !dbg !2049

cleanup264:                                       ; preds = %for.end, %if.then261, %if.end168, %if.end48, %if.then56, %if.then41, %if.then164
  %retval.0 = phi ptr [ null, %if.then164 ], [ null, %if.then41 ], [ %call45, %if.then56 ], [ %call45, %if.end48 ], [ null, %if.end168 ], [ %call262, %if.then261 ], [ %call171, %for.end ], !dbg !1850
  ret ptr %retval.0, !dbg !2050
}

declare !dbg !2051 i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

declare !dbg !2054 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !2057 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CropImageToTiles(ptr noundef %image, ptr noundef %crop_geometry, ptr noundef %exception) local_unnamed_addr #0 !dbg !2063 {
entry:
  %crop_image = alloca ptr, align 8
  %geometry = alloca %struct._RectangleInfo, align 8
  %crop = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2067, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %crop_geometry, metadata !2068, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2069, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crop_image) #8, !dbg !2096
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #8, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2074, metadata !DIExpression()), !dbg !2098
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2099
  %0 = load i32, ptr %debug, align 8, !dbg !2099, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2101
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2102

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2103
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 856, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2104
  br label %if.end, !dbg !2105

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @NewImageList() #8, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2071, metadata !DIExpression()), !dbg !2095
  store ptr %call1, ptr %crop_image, align 8, !dbg !2107, !tbaa !1574
  %call2 = tail call ptr @NewImageList() #8, !dbg !2108
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2070, metadata !DIExpression()), !dbg !2095
  %call3 = call i32 @ParseGravityGeometry(ptr noundef nonnull %image, ptr noundef %crop_geometry, ptr noundef nonnull %geometry, ptr noundef %exception) #8, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2072, metadata !DIExpression()), !dbg !2095
  %and = and i32 %call3, 131072, !dbg !2110
  %cmp4.not = icmp eq i32 %and, 0, !dbg !2111
  br i1 %cmp4.not, label %if.end249, label %if.then5, !dbg !2112

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %crop) #8, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %crop, metadata !2085, metadata !DIExpression()), !dbg !2114
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2115
  %1 = load i64, ptr %columns, align 8, !dbg !2115, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2087, metadata !DIExpression()), !dbg !2116
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2117
  %2 = load i64, ptr %rows, align 8, !dbg !2117, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %2, metadata !2086, metadata !DIExpression()), !dbg !2116
  %3 = load i64, ptr %geometry, align 8, !dbg !2118, !tbaa !1307
  %cmp7 = icmp eq i64 %3, 0, !dbg !2120
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !2121

if.then8:                                         ; preds = %if.then5
  store i64 1, ptr %geometry, align 8, !dbg !2122, !tbaa !1307
  br label %if.end10, !dbg !2123

if.end10:                                         ; preds = %if.then8, %if.then5
  %4 = phi i64 [ 1, %if.then8 ], [ %3, %if.then5 ]
  %height11 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !2124
  %5 = load i64, ptr %height11, align 8, !dbg !2124, !tbaa !1314
  %cmp12 = icmp eq i64 %5, 0, !dbg !2126
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !2127

if.then13:                                        ; preds = %if.end10
  store i64 1, ptr %height11, align 8, !dbg !2128, !tbaa !1314
  br label %if.end15, !dbg !2129

if.end15:                                         ; preds = %if.then13, %if.end10
  %6 = phi i64 [ 1, %if.then13 ], [ %5, %if.end10 ]
  %and16 = and i32 %call3, 8192, !dbg !2130
  %cmp17 = icmp eq i32 %and16, 0, !dbg !2132
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !2133
  %7 = load i64, ptr %x, align 8, !dbg !2133, !tbaa !1305
  %8 = call i64 @llvm.abs.i64(i64 %7, i1 true), !dbg !2133
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !2134

if.then18:                                        ; preds = %if.end15
  %sub = sub i64 %1, %8, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2087, metadata !DIExpression()), !dbg !2116
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !2137
  %9 = load i64, ptr %y, align 8, !dbg !2137, !tbaa !1312
  %10 = call i64 @llvm.abs.i64(i64 %9, i1 true), !dbg !2138
  %sub27 = sub i64 %2, %10, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %sub27, metadata !2086, metadata !DIExpression()), !dbg !2116
  br label %if.end43, !dbg !2140

if.else:                                          ; preds = %if.end15
  %add = add i64 %8, %1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %add, metadata !2087, metadata !DIExpression()), !dbg !2116
  %y35 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !2143
  %11 = load i64, ptr %y35, align 8, !dbg !2143, !tbaa !1312
  %12 = call i64 @llvm.abs.i64(i64 %11, i1 true), !dbg !2144
  %add42 = add i64 %12, %2, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %add42, metadata !2086, metadata !DIExpression()), !dbg !2116
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then18
  %height.0 = phi i64 [ %sub27, %if.then18 ], [ %add42, %if.else ], !dbg !2133
  %width.0 = phi i64 [ %sub, %if.then18 ], [ %add, %if.else ], !dbg !2133
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !2087, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %height.0, metadata !2086, metadata !DIExpression()), !dbg !2116
  %conv44 = uitofp i64 %width.0 to double, !dbg !2146
  %conv46 = uitofp i64 %4 to double, !dbg !2147
  %div = fdiv double %conv44, %conv46, !dbg !2148
  call void @llvm.dbg.value(metadata double %div, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %conv48 = uitofp i64 %height.0 to double, !dbg !2149
  %conv50 = uitofp i64 %6 to double, !dbg !2150
  %div51 = fdiv double %conv48, %conv50, !dbg !2151
  call void @llvm.dbg.value(metadata double %div51, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  %cmp54 = fcmp olt double %div, 1.000000e+00, !dbg !2152
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !2154

if.then56:                                        ; preds = %if.end43
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  br label %if.end58, !dbg !2155

if.end58:                                         ; preds = %if.then56, %if.end43
  %delta.sroa.0.0 = phi double [ 1.000000e+00, %if.then56 ], [ %div, %if.end43 ], !dbg !2116
  call void @llvm.dbg.value(metadata double %delta.sroa.0.0, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %cmp60 = fcmp olt double %div51, 1.000000e+00, !dbg !2156
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !2158

if.then62:                                        ; preds = %if.end58
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  br label %if.end64, !dbg !2159

if.end64:                                         ; preds = %if.then62, %if.end58
  %delta.sroa.7.0 = phi double [ 1.000000e+00, %if.then62 ], [ %div51, %if.end58 ], !dbg !2116
  call void @llvm.dbg.value(metadata double %delta.sroa.7.0, metadata !2075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  %y108 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  %y122 = getelementptr inbounds %struct._RectangleInfo, ptr %crop, i64 0, i32 3
  %height141 = getelementptr inbounds %struct._RectangleInfo, ptr %crop, i64 0, i32 1
  %y146 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3
  %cmp153487.not = icmp eq i64 %width.0, 0
  %x197 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %x211 = getelementptr inbounds %struct._RectangleInfo, ptr %crop, i64 0, i32 2
  %x236 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2
  br label %for.cond, !dbg !2160

for.cond:                                         ; preds = %for.end, %if.end64
  %next.0 = phi ptr [ %call2, %if.end64 ], [ %next.1.lcssa, %for.end ], !dbg !2095
  %offset.sroa.12.0 = phi double [ 0.000000e+00, %if.end64 ], [ %offset.sroa.12.1510, %for.end ], !dbg !2162
  call void @llvm.dbg.value(metadata double %offset.sroa.12.0, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp68 = fcmp olt double %offset.sroa.12.0, %conv48, !dbg !2163
  br i1 %cmp68, label %for.body, label %for.end248, !dbg !2165

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %y108, align 8, !dbg !2166, !tbaa !1312
  br i1 %cmp17, label %if.end142, label %if.end142.thread, !dbg !2169

if.end142:                                        ; preds = %for.body
  %14 = call i64 @llvm.smin.i64(i64 %13, i64 0), !dbg !2170
  %conv80 = sitofp i64 %14 to double, !dbg !2172
  %sub81 = fsub double %offset.sroa.12.0, %conv80, !dbg !2173
  %conv82 = fptrunc double %sub81 to float, !dbg !2174
  %conv83 = fpext float %conv82 to double, !dbg !2174
  call void @llvm.dbg.value(metadata double %conv83, metadata !2175, metadata !DIExpression()) #8, !dbg !2180
  %15 = call double @llvm.floor.f64(double %conv83) #8, !dbg !2182
  %sub.i = fsub double %conv83, %15, !dbg !2184
  %16 = call double @llvm.ceil.f64(double %conv83) #8, !dbg !2185
  %sub1.i = fsub double %16, %conv83, !dbg !2186
  %cmp.i = fcmp olt double %sub.i, %sub1.i, !dbg !2187
  %..i = select i1 %cmp.i, double %15, double %16, !dbg !2180
  %conv85 = fptosi double %..i to i64, !dbg !2188
  %add89 = fadd double %delta.sroa.7.0, %offset.sroa.12.0, !dbg !2189
  call void @llvm.dbg.value(metadata double %add89, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  %17 = call i64 @llvm.smax.i64(i64 %13, i64 0), !dbg !2190
  %conv99 = sitofp i64 %17 to double, !dbg !2191
  %add100 = fadd double %add89, %conv99, !dbg !2192
  %conv101 = fptrunc double %add100 to float, !dbg !2193
  %conv102 = fpext float %conv101 to double, !dbg !2193
  call void @llvm.dbg.value(metadata double %conv102, metadata !2175, metadata !DIExpression()) #8, !dbg !2194
  %18 = call double @llvm.floor.f64(double %conv102) #8, !dbg !2196
  %sub.i450 = fsub double %conv102, %18, !dbg !2197
  %19 = call double @llvm.ceil.f64(double %conv102) #8, !dbg !2198
  %sub1.i451 = fsub double %19, %conv102, !dbg !2199
  %cmp.i452 = fcmp olt double %sub.i450, %sub1.i451, !dbg !2200
  %..i453 = select i1 %cmp.i452, double %18, double %19, !dbg !2194
  %storemerge503 = fptoui double %..i453 to i64, !dbg !2166
  %sub145 = sub i64 %storemerge503, %conv85, !dbg !2201
  store i64 %sub145, ptr %height141, align 8, !dbg !2201, !tbaa !1314
  %20 = load i64, ptr %y146, align 8, !dbg !2202, !tbaa !1983
  %add148 = add nsw i64 %20, %conv85, !dbg !2203
  store i64 %add148, ptr %y122, align 8, !dbg !2203, !tbaa !1312
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !2070, metadata !DIExpression()), !dbg !2095
  br i1 %cmp153487.not, label %for.end, label %for.body155.us, !dbg !2204

if.end142.thread:                                 ; preds = %for.body
  %21 = call i64 @llvm.smax.i64(i64 %13, i64 0), !dbg !2206
  %conv116 = sitofp i64 %21 to double, !dbg !2208
  %sub117 = fsub double %offset.sroa.12.0, %conv116, !dbg !2209
  %conv118 = fptrunc double %sub117 to float, !dbg !2210
  %conv119 = fpext float %conv118 to double, !dbg !2210
  call void @llvm.dbg.value(metadata double %conv119, metadata !2175, metadata !DIExpression()) #8, !dbg !2211
  %22 = call double @llvm.floor.f64(double %conv119) #8, !dbg !2213
  %sub.i454 = fsub double %conv119, %22, !dbg !2214
  %23 = call double @llvm.ceil.f64(double %conv119) #8, !dbg !2215
  %sub1.i455 = fsub double %23, %conv119, !dbg !2216
  %cmp.i456 = fcmp olt double %sub.i454, %sub1.i455, !dbg !2217
  %..i457 = select i1 %cmp.i456, double %22, double %23, !dbg !2211
  %conv121 = fptosi double %..i457 to i64, !dbg !2218
  %add125 = fadd double %delta.sroa.7.0, %offset.sroa.12.0, !dbg !2219
  call void @llvm.dbg.value(metadata double %add125, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  %24 = call i64 @llvm.smin.i64(i64 %13, i64 0), !dbg !2220
  %conv135 = sitofp i64 %24 to double, !dbg !2221
  %add136 = fadd double %add125, %conv135, !dbg !2222
  %conv137 = fptrunc double %add136 to float, !dbg !2223
  %conv138 = fpext float %conv137 to double, !dbg !2223
  call void @llvm.dbg.value(metadata double %conv138, metadata !2175, metadata !DIExpression()) #8, !dbg !2224
  %25 = call double @llvm.floor.f64(double %conv138) #8, !dbg !2226
  %sub.i458 = fsub double %conv138, %25, !dbg !2227
  %26 = call double @llvm.ceil.f64(double %conv138) #8, !dbg !2228
  %sub1.i459 = fsub double %26, %conv138, !dbg !2229
  %cmp.i460 = fcmp olt double %sub.i458, %sub1.i459, !dbg !2230
  %..i461 = select i1 %cmp.i460, double %25, double %26, !dbg !2224
  %storemerge503506 = fptoui double %..i461 to i64, !dbg !2166
  call void @llvm.dbg.value(metadata double %add89, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2116
  %sub145507 = sub i64 %storemerge503506, %conv121, !dbg !2201
  store i64 %sub145507, ptr %height141, align 8, !dbg !2201, !tbaa !1314
  %27 = load i64, ptr %y146, align 8, !dbg !2202, !tbaa !1983
  %add148508 = add nsw i64 %27, %conv121, !dbg !2203
  store i64 %add148508, ptr %y122, align 8, !dbg !2203, !tbaa !1312
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !2070, metadata !DIExpression()), !dbg !2095
  br i1 %cmp153487.not, label %for.end, label %for.body155, !dbg !2204

for.body155.us:                                   ; preds = %if.end142, %if.end243.us
  %offset.sroa.0.0488.us = phi double [ %add178.us, %if.end243.us ], [ 0.000000e+00, %if.end142 ]
  call void @llvm.dbg.value(metadata double %offset.sroa.0.0488.us, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %28 = load i64, ptr %x197, align 8, !dbg !2231, !tbaa !1305
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 0), !dbg !2236
  %conv169.us = sitofp i64 %29 to double, !dbg !2237
  %sub170.us = fsub double %offset.sroa.0.0488.us, %conv169.us, !dbg !2238
  %conv171.us = fptrunc double %sub170.us to float, !dbg !2239
  %conv172.us = fpext float %conv171.us to double, !dbg !2239
  call void @llvm.dbg.value(metadata double %conv172.us, metadata !2175, metadata !DIExpression()) #8, !dbg !2240
  %30 = call double @llvm.floor.f64(double %conv172.us) #8, !dbg !2242
  %sub.i462.us = fsub double %conv172.us, %30, !dbg !2243
  %31 = call double @llvm.ceil.f64(double %conv172.us) #8, !dbg !2244
  %sub1.i463.us = fsub double %31, %conv172.us, !dbg !2245
  %cmp.i464.us = fcmp olt double %sub.i462.us, %sub1.i463.us, !dbg !2246
  %..i465.us = select i1 %cmp.i464.us, double %30, double %31, !dbg !2240
  %conv174.us = fptosi double %..i465.us to i64, !dbg !2247
  %add178.us = fadd double %delta.sroa.0.0, %offset.sroa.0.0488.us, !dbg !2248
  call void @llvm.dbg.value(metadata double %add178.us, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %32 = call i64 @llvm.smax.i64(i64 %28, i64 0), !dbg !2249
  %conv188.us = sitofp i64 %32 to double, !dbg !2250
  %add189.us = fadd double %add178.us, %conv188.us, !dbg !2251
  %conv190.us = fptrunc double %add189.us to float, !dbg !2252
  %conv191.us = fpext float %conv190.us to double, !dbg !2252
  call void @llvm.dbg.value(metadata double %conv191.us, metadata !2175, metadata !DIExpression()) #8, !dbg !2253
  %33 = call double @llvm.floor.f64(double %conv191.us) #8, !dbg !2255
  %sub.i466.us = fsub double %conv191.us, %33, !dbg !2256
  %34 = call double @llvm.ceil.f64(double %conv191.us) #8, !dbg !2257
  %sub1.i467.us = fsub double %34, %conv191.us, !dbg !2258
  %cmp.i468.us = fcmp olt double %sub.i466.us, %sub1.i467.us, !dbg !2259
  %..i469.us = select i1 %cmp.i468.us, double %33, double %34, !dbg !2253
  %storemerge.us = fptoui double %..i469.us to i64, !dbg !2260
  call void @llvm.dbg.value(metadata double undef, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %sub234.us = sub i64 %storemerge.us, %conv174.us, !dbg !2261
  store i64 %sub234.us, ptr %crop, align 8, !dbg !2261, !tbaa !1307
  %35 = load i64, ptr %x236, align 8, !dbg !2262, !tbaa !1980
  %add238.us = add nsw i64 %35, %conv174.us, !dbg !2263
  store i64 %add238.us, ptr %x211, align 8, !dbg !2263, !tbaa !1305
  %call239.us = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %crop, ptr noundef %exception), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %call239.us, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp240.us = icmp eq ptr %call239.us, null, !dbg !2265
  br i1 %cmp240.us, label %for.end248, label %if.end243.us, !dbg !2267

if.end243.us:                                     ; preds = %for.body155.us
  call void @llvm.dbg.value(metadata ptr %crop_image, metadata !2071, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @AppendImageToList(ptr noundef nonnull %crop_image, ptr noundef nonnull %call239.us) #8, !dbg !2268
  call void @llvm.dbg.value(metadata double undef, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %call239.us, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp153.us = fcmp olt double %add178.us, %conv44, !dbg !2269
  br i1 %cmp153.us, label %for.body155.us, label %for.end, !dbg !2204, !llvm.loop !2270

for.body155:                                      ; preds = %if.end142.thread, %if.end243
  %offset.sroa.0.0488 = phi double [ %add214, %if.end243 ], [ 0.000000e+00, %if.end142.thread ]
  call void @llvm.dbg.value(metadata double %offset.sroa.0.0488, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %36 = load i64, ptr %x197, align 8, !dbg !2272, !tbaa !1305
  %37 = call i64 @llvm.smax.i64(i64 %36, i64 0), !dbg !2274
  %conv205 = sitofp i64 %37 to double, !dbg !2275
  %sub206 = fsub double %offset.sroa.0.0488, %conv205, !dbg !2276
  %conv207 = fptrunc double %sub206 to float, !dbg !2277
  %conv208 = fpext float %conv207 to double, !dbg !2277
  call void @llvm.dbg.value(metadata double %conv208, metadata !2175, metadata !DIExpression()) #8, !dbg !2278
  %38 = call double @llvm.floor.f64(double %conv208) #8, !dbg !2280
  %sub.i470 = fsub double %conv208, %38, !dbg !2281
  %39 = call double @llvm.ceil.f64(double %conv208) #8, !dbg !2282
  %sub1.i471 = fsub double %39, %conv208, !dbg !2283
  %cmp.i472 = fcmp olt double %sub.i470, %sub1.i471, !dbg !2284
  %..i473 = select i1 %cmp.i472, double %38, double %39, !dbg !2278
  %conv210 = fptosi double %..i473 to i64, !dbg !2285
  %add214 = fadd double %delta.sroa.0.0, %offset.sroa.0.0488, !dbg !2286
  call void @llvm.dbg.value(metadata double %add214, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  %40 = call i64 @llvm.smin.i64(i64 %36, i64 0), !dbg !2287
  %conv224 = sitofp i64 %40 to double, !dbg !2288
  %add225 = fadd double %add214, %conv224, !dbg !2289
  %conv226 = fptrunc double %add225 to float, !dbg !2290
  %conv227 = fpext float %conv226 to double, !dbg !2290
  call void @llvm.dbg.value(metadata double %conv227, metadata !2175, metadata !DIExpression()) #8, !dbg !2291
  %41 = call double @llvm.floor.f64(double %conv227) #8, !dbg !2293
  %sub.i474 = fsub double %conv227, %41, !dbg !2294
  %42 = call double @llvm.ceil.f64(double %conv227) #8, !dbg !2295
  %sub1.i475 = fsub double %42, %conv227, !dbg !2296
  %cmp.i476 = fcmp olt double %sub.i474, %sub1.i475, !dbg !2297
  %..i477 = select i1 %cmp.i476, double %41, double %42, !dbg !2291
  %storemerge = fptoui double %..i477 to i64, !dbg !2260
  %sub234 = sub i64 %storemerge, %conv210, !dbg !2261
  store i64 %sub234, ptr %crop, align 8, !dbg !2261, !tbaa !1307
  %43 = load i64, ptr %x236, align 8, !dbg !2262, !tbaa !1980
  %add238 = add nsw i64 %43, %conv210, !dbg !2263
  store i64 %add238, ptr %x211, align 8, !dbg !2263, !tbaa !1305
  %call239 = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %crop, ptr noundef %exception), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %call239, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp240 = icmp eq ptr %call239, null, !dbg !2265
  br i1 %cmp240, label %for.end248, label %if.end243, !dbg !2267

if.end243:                                        ; preds = %for.body155
  call void @llvm.dbg.value(metadata ptr %crop_image, metadata !2071, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @AppendImageToList(ptr noundef nonnull %crop_image, ptr noundef nonnull %call239) #8, !dbg !2268
  call void @llvm.dbg.value(metadata double %add214, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %call239, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp153 = fcmp olt double %add214, %conv44, !dbg !2269
  br i1 %cmp153, label %for.body155, label %for.end, !dbg !2204, !llvm.loop !2270

for.end:                                          ; preds = %if.end243, %if.end243.us, %if.end142.thread, %if.end142
  %offset.sroa.12.1510 = phi double [ %add89, %if.end142 ], [ %add125, %if.end142.thread ], [ %add89, %if.end243.us ], [ %add125, %if.end243 ]
  %next.1.lcssa = phi ptr [ %next.0, %if.end142 ], [ %next.0, %if.end142.thread ], [ %call239.us, %if.end243.us ], [ %call239, %if.end243 ], !dbg !2095
  call void @llvm.dbg.value(metadata ptr %next.1.lcssa, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp244 = icmp eq ptr %next.1.lcssa, null, !dbg !2298
  br i1 %cmp244, label %for.end248, label %for.cond, !dbg !2300, !llvm.loop !2301

for.end248:                                       ; preds = %for.end, %for.cond, %for.body155, %for.body155.us
  call void @ClearMagickException(ptr noundef %exception) #8, !dbg !2303
  %44 = load ptr, ptr %crop_image, align 8, !dbg !2304, !tbaa !1574
  call void @llvm.dbg.value(metadata ptr %44, metadata !2071, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %crop) #8, !dbg !2305
  br label %cleanup

if.end249:                                        ; preds = %if.end
  %45 = load i64, ptr %geometry, align 8, !dbg !2306, !tbaa !1307
  %cmp251 = icmp eq i64 %45, 0, !dbg !2308
  %height253 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  %46 = load i64, ptr %height253, align 8
  %cmp254 = icmp eq i64 %46, 0
  %or.cond = select i1 %cmp251, i1 %cmp254, i1 false, !dbg !2309
  %or.cond.not = xor i1 %or.cond, true, !dbg !2309
  %and256 = and i32 %call3, 1
  %cmp257.not = icmp eq i32 %and256, 0
  %or.cond441 = select i1 %or.cond.not, i1 %cmp257.not, i1 false, !dbg !2309
  %and260 = and i32 %call3, 2
  %cmp261.not = icmp eq i32 %and260, 0
  %or.cond442 = select i1 %or.cond441, i1 %cmp261.not, i1 false, !dbg !2309
  br i1 %or.cond442, label %if.end287, label %if.then263, !dbg !2309

if.then263:                                       ; preds = %if.end249
  %call264 = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %geometry, ptr noundef %exception), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %call264, metadata !2071, metadata !DIExpression()), !dbg !2095
  %cmp265.not = icmp eq ptr %call264, null, !dbg !2312
  %and268 = and i32 %call3, 8192
  %cmp269.not = icmp eq i32 %and268, 0
  %or.cond443 = select i1 %cmp265.not, i1 true, i1 %cmp269.not, !dbg !2314
  br i1 %or.cond443, label %cleanup, label %if.then271, !dbg !2314

if.then271:                                       ; preds = %if.then263
  %47 = load i64, ptr %geometry, align 8, !dbg !2315, !tbaa !1307
  %page273 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, !dbg !2317
  store i64 %47, ptr %page273, align 8, !dbg !2318, !tbaa !1958
  %48 = load i64, ptr %height253, align 8, !dbg !2319, !tbaa !1314
  call void @llvm.dbg.value(metadata ptr %call264, metadata !2071, metadata !DIExpression()), !dbg !2095
  %height277 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, i32 1, !dbg !2320
  store i64 %48, ptr %height277, align 8, !dbg !2321, !tbaa !1962
  %x278 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !2322
  %49 = load i64, ptr %x278, align 8, !dbg !2322, !tbaa !1305
  %x280 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, i32 2, !dbg !2323
  %50 = load i64, ptr %x280, align 8, !dbg !2324, !tbaa !1980
  %sub281 = sub nsw i64 %50, %49, !dbg !2324
  store i64 %sub281, ptr %x280, align 8, !dbg !2324, !tbaa !1980
  %y282 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !2325
  %51 = load i64, ptr %y282, align 8, !dbg !2325, !tbaa !1312
  %y284 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, i32 3, !dbg !2326
  %52 = load i64, ptr %y284, align 8, !dbg !2327, !tbaa !1983
  %sub285 = sub nsw i64 %52, %51, !dbg !2327
  store i64 %sub285, ptr %y284, align 8, !dbg !2327, !tbaa !1983
  br label %cleanup, !dbg !2328

if.end287:                                        ; preds = %if.end249
  %columns288 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2329
  %53 = load i64, ptr %columns288, align 8, !dbg !2329, !tbaa !775
  %cmp290 = icmp ugt i64 %53, %45, !dbg !2330
  br i1 %cmp290, label %if.then297, label %lor.lhs.false292, !dbg !2331

lor.lhs.false292:                                 ; preds = %if.end287
  %rows293 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2332
  %54 = load i64, ptr %rows293, align 8, !dbg !2332, !tbaa !777
  %cmp295 = icmp ugt i64 %54, %46, !dbg !2333
  br i1 %cmp295, label %if.then297, label %if.end359, !dbg !2334

if.then297:                                       ; preds = %lor.lhs.false292, %if.end287
  %page303 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !2335
  %page298.sroa.0.0.copyload = load i64, ptr %page303, align 8, !dbg !2335, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %page298.sroa.0.0.copyload, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2336
  %page298.sroa.7.0.page303.sroa_idx = getelementptr inbounds i8, ptr %page303, i64 8, !dbg !2335
  %page298.sroa.7.0.copyload = load i64, ptr %page298.sroa.7.0.page303.sroa_idx, align 8, !dbg !2335, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %page298.sroa.7.0.copyload, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2336
  %cmp305 = icmp eq i64 %page298.sroa.0.0.copyload, 0, !dbg !2337
  %spec.select482 = select i1 %cmp305, i64 %53, i64 %page298.sroa.0.0.copyload, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %spec.select482, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2336
  %cmp312 = icmp eq i64 %page298.sroa.7.0.copyload, 0, !dbg !2340
  br i1 %cmp312, label %if.then314, label %if.end317, !dbg !2342

if.then314:                                       ; preds = %if.then297
  %rows315 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2343
  %55 = load i64, ptr %rows315, align 8, !dbg !2343, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %55, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2336
  br label %if.end317, !dbg !2344

if.end317:                                        ; preds = %if.then314, %if.then297
  %page298.sroa.7.0 = phi i64 [ %55, %if.then314 ], [ %page298.sroa.7.0.copyload, %if.then297 ], !dbg !2336
  call void @llvm.dbg.value(metadata i64 %page298.sroa.7.0, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %45, metadata !2092, metadata !DIExpression()), !dbg !2336
  %spec.select444 = select i1 %cmp251, i64 %spec.select482, i64 %45, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %spec.select444, metadata !2092, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %46, metadata !2091, metadata !DIExpression()), !dbg !2336
  %spec.select449 = select i1 %cmp254, i64 %page298.sroa.7.0, i64 %46, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %spec.select449, metadata !2091, metadata !DIExpression()), !dbg !2336
  %call330 = call ptr @NewImageList() #8, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %call330, metadata !2070, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2336
  %cmp333492 = icmp sgt i64 %page298.sroa.7.0, 0, !dbg !2348
  br i1 %cmp333492, label %for.cond336.preheader.lr.ph, label %for.end358, !dbg !2351

for.cond336.preheader.lr.ph:                      ; preds = %if.end317
  %cmp338489 = icmp sgt i64 %spec.select482, 0
  %x343 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %y344 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  br i1 %cmp338489, label %for.cond336.preheader.us, label %for.end358, !dbg !2352

for.cond336.preheader.us:                         ; preds = %for.cond336.preheader.lr.ph, %for.cond336.for.end351_crit_edge.us
  %y302.0494.us = phi i64 [ %add357.us, %for.cond336.for.end351_crit_edge.us ], [ 0, %for.cond336.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y302.0494.us, metadata !2094, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 0, metadata !2093, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr undef, metadata !2070, metadata !DIExpression()), !dbg !2095
  br label %for.body340.us, !dbg !2352

for.body340.us:                                   ; preds = %for.cond336.preheader.us, %if.end349.us
  %x301.0490.us = phi i64 [ 0, %for.cond336.preheader.us ], [ %add350.us, %if.end349.us ]
  call void @llvm.dbg.value(metadata i64 %x301.0490.us, metadata !2093, metadata !DIExpression()), !dbg !2336
  store i64 %spec.select444, ptr %geometry, align 8, !dbg !2355, !tbaa !1307
  store i64 %spec.select449, ptr %height253, align 8, !dbg !2358, !tbaa !1314
  store i64 %x301.0490.us, ptr %x343, align 8, !dbg !2359, !tbaa !1305
  store i64 %y302.0494.us, ptr %y344, align 8, !dbg !2360, !tbaa !1312
  %call345.us = call ptr @CropImage(ptr noundef %image, ptr noundef nonnull %geometry, ptr noundef %exception), !dbg !2361
  call void @llvm.dbg.value(metadata ptr %call345.us, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp346.us = icmp eq ptr %call345.us, null, !dbg !2362
  br i1 %cmp346.us, label %for.end358, label %if.end349.us, !dbg !2364

if.end349.us:                                     ; preds = %for.body340.us
  call void @llvm.dbg.value(metadata ptr %crop_image, metadata !2071, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @AppendImageToList(ptr noundef nonnull %crop_image, ptr noundef nonnull %call345.us) #8, !dbg !2365
  %add350.us = add nsw i64 %x301.0490.us, %spec.select444, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %add350.us, metadata !2093, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %call345.us, metadata !2070, metadata !DIExpression()), !dbg !2095
  %cmp338.us = icmp slt i64 %add350.us, %spec.select482, !dbg !2367
  br i1 %cmp338.us, label %for.body340.us, label %for.cond336.for.end351_crit_edge.us, !dbg !2352, !llvm.loop !2368

for.cond336.for.end351_crit_edge.us:              ; preds = %if.end349.us
  call void @llvm.dbg.value(metadata ptr undef, metadata !2070, metadata !DIExpression()), !dbg !2095
  %add357.us = add nsw i64 %y302.0494.us, %spec.select449, !dbg !2370
  call void @llvm.dbg.value(metadata i64 undef, metadata !2094, metadata !DIExpression()), !dbg !2336
  %cmp333.us = icmp slt i64 %add357.us, %page298.sroa.7.0, !dbg !2348
  br i1 %cmp333.us, label %for.cond336.preheader.us, label %for.end358, !dbg !2351, !llvm.loop !2371

for.end358:                                       ; preds = %for.cond336.for.end351_crit_edge.us, %for.body340.us, %for.cond336.preheader.lr.ph, %if.end317
  %56 = load ptr, ptr %crop_image, align 8, !dbg !2373, !tbaa !1574
  call void @llvm.dbg.value(metadata ptr %56, metadata !2071, metadata !DIExpression()), !dbg !2095
  br label %cleanup

if.end359:                                        ; preds = %lor.lhs.false292
  %call360 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #8, !dbg !2374
  br label %cleanup, !dbg !2375

cleanup:                                          ; preds = %if.then263, %if.then271, %if.end359, %for.end358, %for.end248
  %retval.0 = phi ptr [ %44, %for.end248 ], [ %56, %for.end358 ], [ %call360, %if.end359 ], [ %call264, %if.then271 ], [ %call264, %if.then263 ], !dbg !2095
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #8, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crop_image) #8, !dbg !2376
  ret ptr %retval.0, !dbg !2376
}

declare !dbg !2377 i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2381 void @ClearMagickException(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ExcerptImage(ptr noundef %image, ptr nocapture noundef readonly %geometry, ptr noundef %exception) local_unnamed_addr #0 !dbg !2384 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2386, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2387, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2388, metadata !DIExpression()), !dbg !2405
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2406
  %0 = load i32, ptr %debug, align 8, !dbg !2406, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2408
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2409

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2410
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2411
  br label %if.end, !dbg !2412

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %geometry, align 8, !dbg !2413, !tbaa !1307
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !2414
  %2 = load i64, ptr %height, align 8, !dbg !2414, !tbaa !1314
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !2415
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2391, metadata !DIExpression()), !dbg !2405
  %cmp2 = icmp eq ptr %call1, null, !dbg !2416
  br i1 %cmp2, label %cleanup55, label %if.end4, !dbg !2418

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2393, metadata !DIExpression()), !dbg !2405
  %call5 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !2419
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2390, metadata !DIExpression()), !dbg !2405
  %call6 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #8, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2389, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2394, metadata !DIExpression()), !dbg !2405
  %rows = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2394, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2393, metadata !DIExpression()), !dbg !2405
  %3 = load i64, ptr %rows, align 8, !dbg !2421, !tbaa !777
  %cmp799 = icmp sgt i64 %3, 0, !dbg !2422
  br i1 %cmp799, label %for.body.lr.ph, label %for.end, !dbg !2423

for.body.lr.ph:                                   ; preds = %if.end4
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %y11 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  %columns = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %rows38 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2423

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0102 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0101 = phi i64 [ 0, %for.body.lr.ph ], [ %inc47, %cleanup ]
  %progress.0100 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0102, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %y.0101, metadata !2394, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %progress.0100, metadata !2393, metadata !DIExpression()), !dbg !2405
  %cmp8 = icmp eq i32 %status.0102, 0, !dbg !2424
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !2426

if.end10:                                         ; preds = %for.body
  %4 = load i64, ptr %x, align 8, !dbg !2427, !tbaa !1305
  %5 = load i64, ptr %y11, align 8, !dbg !2428, !tbaa !1312
  %add = add nsw i64 %5, %y.0101, !dbg !2429
  %6 = load i64, ptr %geometry, align 8, !dbg !2430, !tbaa !1307
  %call13 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call5, i64 noundef %4, i64 noundef %add, i64 noundef %6, i64 noundef 1, ptr noundef %exception) #9, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2395, metadata !DIExpression()), !dbg !2432
  %7 = load i64, ptr %columns, align 8, !dbg !2433, !tbaa !775
  %call14 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call6, i64 noundef 0, i64 noundef %y.0101, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #9, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2401, metadata !DIExpression()), !dbg !2432
  %cmp15 = icmp eq ptr %call13, null, !dbg !2435
  %cmp16 = icmp eq ptr %call14, null
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp16, !dbg !2437
  br i1 %or.cond, label %cleanup, label %if.end18, !dbg !2437

if.end18:                                         ; preds = %if.end10
  %8 = load i64, ptr %columns, align 8, !dbg !2438, !tbaa !775
  %mul = shl i64 %8, 3, !dbg !2439
  %call20 = call ptr @CopyMagickMemory(ptr noundef nonnull %call14, ptr noundef nonnull %call13, i64 noundef %mul) #8, !dbg !2440
  %call21 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call5) #8, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %call21, metadata !2400, metadata !DIExpression()), !dbg !2432
  %cmp22.not = icmp eq ptr %call21, null, !dbg !2442
  br i1 %cmp22.not, label %if.end31, label %if.then23, !dbg !2444

if.then23:                                        ; preds = %if.end18
  %call24 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call6) #8, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2399, metadata !DIExpression()), !dbg !2432
  %cmp25.not = icmp eq ptr %call24, null, !dbg !2447
  br i1 %cmp25.not, label %if.end31, label %if.then26, !dbg !2449

if.then26:                                        ; preds = %if.then23
  %9 = load i64, ptr %columns, align 8, !dbg !2450, !tbaa !775
  %mul28 = shl i64 %9, 1, !dbg !2451
  %call29 = call ptr @CopyMagickMemory(ptr noundef nonnull %call24, ptr noundef nonnull %call21, i64 noundef %mul28) #8, !dbg !2452
  br label %if.end31, !dbg !2453

if.end31:                                         ; preds = %if.then23, %if.then26, %if.end18
  %call32 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call6, ptr noundef %exception) #9, !dbg !2454
  %cmp33 = icmp ne i32 %call32, 0, !dbg !2456
  %spec.select = zext i1 %cmp33 to i32, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2392, metadata !DIExpression()), !dbg !2405
  %10 = load ptr, ptr %progress_monitor, align 8, !dbg !2458, !tbaa !833
  %cmp36.not = icmp eq ptr %10, null, !dbg !2459
  br i1 %cmp36.not, label %cleanup, label %SetImageProgress.exit, !dbg !2460

SetImageProgress.exit:                            ; preds = %if.end31
  %inc = add nsw i64 %progress.0100, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2393, metadata !DIExpression()), !dbg !2405
  %11 = load i64, ptr %rows38, align 8, !dbg !2462, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2463
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !844, metadata !DIExpression()) #8, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %progress.0100, metadata !845, metadata !DIExpression()) #8, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %11, metadata !846, metadata !DIExpression()) #8, !dbg !2463
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !2466
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #8, !dbg !2467
  %12 = load ptr, ptr %progress_monitor, align 8, !dbg !2468, !tbaa !833
  %13 = load ptr, ptr %client_data.i, align 8, !dbg !2469, !tbaa !855
  %call4.i = call i32 %12(ptr noundef nonnull %message.i, i64 noundef %progress.0100, i64 noundef %11, ptr noundef %13) #8, !dbg !2470
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2402, metadata !DIExpression()), !dbg !2472
  %cmp40 = icmp eq i32 %call4.i, 0, !dbg !2473
  %spec.select98 = select i1 %cmp40, i32 0, i32 %spec.select, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %spec.select98, metadata !2392, metadata !DIExpression()), !dbg !2405
  br label %cleanup, !dbg !2476

cleanup:                                          ; preds = %if.end31, %SetImageProgress.exit, %if.end10, %for.body
  %progress.2 = phi i64 [ %progress.0100, %for.body ], [ %progress.0100, %if.end10 ], [ %inc, %SetImageProgress.exit ], [ %progress.0100, %if.end31 ], !dbg !2405
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end10 ], [ %spec.select98, %SetImageProgress.exit ], [ %spec.select, %if.end31 ], !dbg !2405
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2393, metadata !DIExpression()), !dbg !2405
  %inc47 = add nuw nsw i64 %y.0101, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %inc47, metadata !2394, metadata !DIExpression()), !dbg !2405
  %14 = load i64, ptr %rows, align 8, !dbg !2421, !tbaa !777
  %cmp7 = icmp slt i64 %inc47, %14, !dbg !2422
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2423, !llvm.loop !2478

for.end:                                          ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.4, %cleanup ], !dbg !2480
  %call48 = call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !2481
  call void @llvm.dbg.value(metadata ptr %call48, metadata !2389, metadata !DIExpression()), !dbg !2405
  %call49 = call ptr @DestroyCacheView(ptr noundef %call5) #8, !dbg !2482
  call void @llvm.dbg.value(metadata ptr %call49, metadata !2390, metadata !DIExpression()), !dbg !2405
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2483
  %15 = load i32, ptr %type, align 8, !dbg !2483, !tbaa !870
  %type50 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !2484
  store i32 %15, ptr %type50, align 8, !dbg !2485, !tbaa !870
  %cmp51 = icmp eq i32 %status.0.lcssa, 0, !dbg !2486
  br i1 %cmp51, label %if.then52, label %cleanup55, !dbg !2488

if.then52:                                        ; preds = %for.end
  %call53 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !2489
  call void @llvm.dbg.value(metadata ptr %call53, metadata !2391, metadata !DIExpression()), !dbg !2405
  br label %cleanup55, !dbg !2490

cleanup55:                                        ; preds = %for.end, %if.then52, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call53, %if.then52 ], [ %call1, %for.end ], !dbg !2405
  ret ptr %retval.0, !dbg !2491
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ExtentImage(ptr noundef %image, ptr nocapture noundef readonly %geometry, ptr noundef %exception) local_unnamed_addr #0 !dbg !2492 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2494, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2496, metadata !DIExpression()), !dbg !2498
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2499
  %0 = load i32, ptr %debug, align 8, !dbg !2499, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2501
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2502

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2503
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1185, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2504
  br label %if.end, !dbg !2505

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %geometry, align 8, !dbg !2506, !tbaa !1307
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !2507
  %2 = load i64, ptr %height, align 8, !dbg !2507, !tbaa !1314
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2497, metadata !DIExpression()), !dbg !2498
  %cmp2 = icmp eq ptr %call1, null, !dbg !2509
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !2511

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call1, i32 noundef 1) #8, !dbg !2512
  %cmp6 = icmp eq i32 %call5, 0, !dbg !2514
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !2515

if.then7:                                         ; preds = %if.end4
  %exception8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !2516
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception8) #8, !dbg !2518
  %call9 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2497, metadata !DIExpression()), !dbg !2498
  br label %cleanup, !dbg !2520

if.end10:                                         ; preds = %if.end4
  %opacity = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 12, i32 3, !dbg !2521
  %3 = load i16, ptr %opacity, align 2, !dbg !2521, !tbaa !1897
  %cmp11.not = icmp eq i16 %3, 0, !dbg !2523
  br i1 %cmp11.not, label %if.end14, label %if.then13, !dbg !2524

if.then13:                                        ; preds = %if.end10
  %matte = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 6, !dbg !2525
  store i32 1, ptr %matte, align 8, !dbg !2526, !tbaa !2527
  br label %if.end14, !dbg !2528

if.end14:                                         ; preds = %if.then13, %if.end10
  %call15 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call1) #8, !dbg !2529
  %compose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !2530
  %4 = load i32, ptr %compose, align 8, !dbg !2530, !tbaa !2531
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !2532
  %5 = load i64, ptr %x, align 8, !dbg !2532, !tbaa !1305
  %sub = sub nsw i64 0, %5, !dbg !2533
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !2534
  %6 = load i64, ptr %y, align 8, !dbg !2534, !tbaa !1312
  %sub16 = sub nsw i64 0, %6, !dbg !2535
  %call17 = tail call i32 @CompositeImage(ptr noundef nonnull %call1, i32 noundef %4, ptr noundef nonnull %image, i64 noundef %sub, i64 noundef %sub16) #8, !dbg !2536
  br label %cleanup, !dbg !2537

cleanup:                                          ; preds = %if.end, %if.end14, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call1, %if.end14 ], [ null, %if.end ], !dbg !2498
  ret ptr %retval.0, !dbg !2538
}

declare !dbg !2539 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2544 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @RollImage(ptr noundef %image, i64 noundef %x_offset, i64 noundef %y_offset, ptr noundef %exception) local_unnamed_addr #0 !dbg !2548 {
entry:
  %message.i167 = alloca [4096 x i8], align 16
  %message.i157 = alloca [4096 x i8], align 16
  %message.i147 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.declare(metadata ptr undef, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 128)), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %image, metadata !2552, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2554, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2555, metadata !DIExpression()), !dbg !2560
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2561
  %0 = load i32, ptr %debug, align 8, !dbg !2561, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2563
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2564

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2565
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1589, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2566
  br label %if.end, !dbg !2567

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2568
  %1 = load i64, ptr %columns, align 8, !dbg !2568, !tbaa !775
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2569
  %2 = load i64, ptr %rows, align 8, !dbg !2569, !tbaa !777
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #8, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2556, metadata !DIExpression()), !dbg !2560
  %cmp2 = icmp eq ptr %call1, null, !dbg !2571
  br i1 %cmp2, label %cleanup, label %while.cond.preheader, !dbg !2573

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2560
  %cmp6178 = icmp slt i64 %x_offset, 0, !dbg !2574
  %3 = load i64, ptr %columns, align 8, !tbaa !775
  br i1 %cmp6178, label %while.body, label %while.cond9.preheader, !dbg !2575

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %offset.sroa.2.0179 = phi i64 [ %add, %while.body ], [ %x_offset, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %offset.sroa.2.0179, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2560
  %add = add nsw i64 %3, %offset.sroa.2.0179, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %add, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2560
  %cmp6 = icmp slt i64 %add, 0, !dbg !2574
  br i1 %cmp6, label %while.body, label %while.cond9.preheader, !dbg !2575, !llvm.loop !2577

while.cond9.preheader:                            ; preds = %while.body, %while.cond.preheader
  %offset.sroa.2.1.ph = phi i64 [ %x_offset, %while.cond.preheader ], [ %add, %while.body ]
  br label %while.cond9, !dbg !2579

while.cond9:                                      ; preds = %while.cond9.preheader, %while.cond9
  %offset.sroa.2.1 = phi i64 [ %sub, %while.cond9 ], [ %offset.sroa.2.1.ph, %while.cond9.preheader ], !dbg !2560
  call void @llvm.dbg.value(metadata i64 %offset.sroa.2.1, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2560
  %cmp12.not = icmp slt i64 %offset.sroa.2.1, %3, !dbg !2580
  %sub = sub nsw i64 %offset.sroa.2.1, %3, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2560
  br i1 %cmp12.not, label %while.cond17.preheader, label %while.cond9, !dbg !2579, !llvm.loop !2582

while.cond17.preheader:                           ; preds = %while.cond9
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2560
  %cmp19180 = icmp slt i64 %y_offset, 0, !dbg !2584
  %4 = load i64, ptr %rows, align 8, !tbaa !777
  br i1 %cmp19180, label %while.body20, label %while.cond25.preheader, !dbg !2585

while.body20:                                     ; preds = %while.cond17.preheader, %while.body20
  %offset.sroa.17.0181 = phi i64 [ %add23, %while.body20 ], [ %y_offset, %while.cond17.preheader ]
  call void @llvm.dbg.value(metadata i64 %offset.sroa.17.0181, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2560
  %add23 = add nsw i64 %4, %offset.sroa.17.0181, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %add23, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2560
  %cmp19 = icmp slt i64 %add23, 0, !dbg !2584
  br i1 %cmp19, label %while.body20, label %while.cond25.preheader, !dbg !2585, !llvm.loop !2587

while.cond25.preheader:                           ; preds = %while.body20, %while.cond17.preheader
  %offset.sroa.17.1.ph = phi i64 [ %y_offset, %while.cond17.preheader ], [ %add23, %while.body20 ]
  br label %while.cond25, !dbg !2589

while.cond25:                                     ; preds = %while.cond25.preheader, %while.cond25
  %offset.sroa.17.1 = phi i64 [ %sub32, %while.cond25 ], [ %offset.sroa.17.1.ph, %while.cond25.preheader ], !dbg !2560
  call void @llvm.dbg.value(metadata i64 %offset.sroa.17.1, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2560
  %cmp28.not = icmp slt i64 %offset.sroa.17.1, %4, !dbg !2590
  %sub32 = sub nsw i64 %offset.sroa.17.1, %4, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %sub32, metadata !2558, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2560
  br i1 %cmp28.not, label %while.end33, label %while.cond25, !dbg !2589, !llvm.loop !2592

while.end33:                                      ; preds = %while.cond25
  %sub38 = sub nsw i64 %3, %offset.sroa.2.1, !dbg !2594
  %sub41 = sub nsw i64 %4, %offset.sroa.17.1, !dbg !2595
  %call42 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %call1, ptr noundef nonnull %image, i64 noundef %offset.sroa.2.1, i64 noundef %offset.sroa.17.1, i64 noundef %sub38, i64 noundef %sub41, i64 noundef 0, i64 noundef 0, ptr noundef %exception), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %call42, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2597
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !844, metadata !DIExpression()) #8, !dbg !2597
  call void @llvm.dbg.value(metadata i64 0, metadata !845, metadata !DIExpression()) #8, !dbg !2597
  call void @llvm.dbg.value(metadata i64 3, metadata !846, metadata !DIExpression()) #8, !dbg !2597
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2599
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !2600
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !2601
  %5 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2601, !tbaa !833
  %cmp.i = icmp eq ptr %5, null, !dbg !2603
  br i1 %cmp.i, label %SetImageProgress.exit, label %if.end.i, !dbg !2604

if.end.i:                                         ; preds = %while.end33
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2605
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i) #8, !dbg !2606
  %6 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2607, !tbaa !833
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2608
  %7 = load ptr, ptr %client_data.i, align 8, !dbg !2608, !tbaa !855
  %call4.i = call i32 %6(ptr noundef nonnull %message.i, i64 noundef 0, i64 noundef 3, ptr noundef %7) #8, !dbg !2609
  br label %SetImageProgress.exit, !dbg !2610

SetImageProgress.exit:                            ; preds = %while.end33, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2611
  %8 = load i64, ptr %columns, align 8, !dbg !2612, !tbaa !775
  %sub46 = sub i64 %8, %offset.sroa.2.1, !dbg !2613
  %9 = load i64, ptr %rows, align 8, !dbg !2614, !tbaa !777
  %sub50 = sub nsw i64 %9, %offset.sroa.17.1, !dbg !2615
  %call52 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %call1, ptr noundef nonnull %image, i64 noundef %sub46, i64 noundef %offset.sroa.17.1, i64 noundef 0, i64 noundef %sub50, i64 noundef %offset.sroa.2.1, i64 noundef 0, ptr noundef %exception), !dbg !2616
  %and = and i32 %call52, %call42, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %and, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2618
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !844, metadata !DIExpression()) #8, !dbg !2618
  call void @llvm.dbg.value(metadata i64 1, metadata !845, metadata !DIExpression()) #8, !dbg !2618
  call void @llvm.dbg.value(metadata i64 3, metadata !846, metadata !DIExpression()) #8, !dbg !2618
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i147) #8, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %message.i147, metadata !847, metadata !DIExpression()) #8, !dbg !2621
  %10 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2622, !tbaa !833
  %cmp.i149 = icmp eq ptr %10, null, !dbg !2623
  br i1 %cmp.i149, label %SetImageProgress.exit156, label %if.end.i154, !dbg !2624

if.end.i154:                                      ; preds = %SetImageProgress.exit
  %filename.i150 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2625
  %call.i151 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i147, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i150) #8, !dbg !2626
  %11 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2627, !tbaa !833
  %client_data.i152 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2628
  %12 = load ptr, ptr %client_data.i152, align 8, !dbg !2628, !tbaa !855
  %call4.i153 = call i32 %11(ptr noundef nonnull %message.i147, i64 noundef 1, i64 noundef 3, ptr noundef %12) #8, !dbg !2629
  br label %SetImageProgress.exit156, !dbg !2630

SetImageProgress.exit156:                         ; preds = %SetImageProgress.exit, %if.end.i154
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i147) #8, !dbg !2631
  %13 = load i64, ptr %rows, align 8, !dbg !2632, !tbaa !777
  %sub57 = sub i64 %13, %offset.sroa.17.1, !dbg !2633
  %14 = load i64, ptr %columns, align 8, !dbg !2634, !tbaa !775
  %sub60 = sub nsw i64 %14, %offset.sroa.2.1, !dbg !2635
  %call62 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %call1, ptr noundef nonnull %image, i64 noundef %offset.sroa.2.1, i64 noundef %sub57, i64 noundef %sub60, i64 noundef 0, i64 noundef 0, i64 noundef %offset.sroa.17.1, ptr noundef %exception), !dbg !2636
  %and63 = and i32 %and, %call62, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %and63, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2638
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !844, metadata !DIExpression()) #8, !dbg !2638
  call void @llvm.dbg.value(metadata i64 2, metadata !845, metadata !DIExpression()) #8, !dbg !2638
  call void @llvm.dbg.value(metadata i64 3, metadata !846, metadata !DIExpression()) #8, !dbg !2638
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i157) #8, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %message.i157, metadata !847, metadata !DIExpression()) #8, !dbg !2641
  %15 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2642, !tbaa !833
  %cmp.i159 = icmp eq ptr %15, null, !dbg !2643
  br i1 %cmp.i159, label %SetImageProgress.exit166, label %if.end.i164, !dbg !2644

if.end.i164:                                      ; preds = %SetImageProgress.exit156
  %filename.i160 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2645
  %call.i161 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i157, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i160) #8, !dbg !2646
  %16 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2647, !tbaa !833
  %client_data.i162 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2648
  %17 = load ptr, ptr %client_data.i162, align 8, !dbg !2648, !tbaa !855
  %call4.i163 = call i32 %16(ptr noundef nonnull %message.i157, i64 noundef 2, i64 noundef 3, ptr noundef %17) #8, !dbg !2649
  br label %SetImageProgress.exit166, !dbg !2650

SetImageProgress.exit166:                         ; preds = %SetImageProgress.exit156, %if.end.i164
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i157) #8, !dbg !2651
  %18 = load i64, ptr %columns, align 8, !dbg !2652, !tbaa !775
  %sub67 = sub i64 %18, %offset.sroa.2.1, !dbg !2653
  %19 = load i64, ptr %rows, align 8, !dbg !2654, !tbaa !777
  %sub70 = sub i64 %19, %offset.sroa.17.1, !dbg !2655
  %call73 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %call1, ptr noundef nonnull %image, i64 noundef %sub67, i64 noundef %sub70, i64 noundef 0, i64 noundef 0, i64 noundef %offset.sroa.2.1, i64 noundef %offset.sroa.17.1, ptr noundef %exception), !dbg !2656
  %and74 = and i32 %and63, %call73, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %and74, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2658
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !844, metadata !DIExpression()) #8, !dbg !2658
  call void @llvm.dbg.value(metadata i64 3, metadata !845, metadata !DIExpression()) #8, !dbg !2658
  call void @llvm.dbg.value(metadata i64 3, metadata !846, metadata !DIExpression()) #8, !dbg !2658
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i167) #8, !dbg !2660
  call void @llvm.dbg.declare(metadata ptr %message.i167, metadata !847, metadata !DIExpression()) #8, !dbg !2661
  %20 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2662, !tbaa !833
  %cmp.i169 = icmp eq ptr %20, null, !dbg !2663
  br i1 %cmp.i169, label %SetImageProgress.exit176, label %if.end.i174, !dbg !2664

if.end.i174:                                      ; preds = %SetImageProgress.exit166
  %filename.i170 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2665
  %call.i171 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i167, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i170) #8, !dbg !2666
  %21 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2667, !tbaa !833
  %client_data.i172 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2668
  %22 = load ptr, ptr %client_data.i172, align 8, !dbg !2668, !tbaa !855
  %call4.i173 = call i32 %21(ptr noundef nonnull %message.i167, i64 noundef 3, i64 noundef 3, ptr noundef %22) #8, !dbg !2669
  br label %SetImageProgress.exit176, !dbg !2670

SetImageProgress.exit176:                         ; preds = %SetImageProgress.exit166, %if.end.i174
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i167) #8, !dbg !2671
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2672
  %23 = load i32, ptr %type, align 8, !dbg !2672, !tbaa !870
  %type76 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !2673
  store i32 %23, ptr %type76, align 8, !dbg !2674, !tbaa !870
  %cmp77 = icmp eq i32 %and74, 0, !dbg !2675
  br i1 %cmp77, label %if.then78, label %cleanup, !dbg !2677

if.then78:                                        ; preds = %SetImageProgress.exit176
  %call79 = call ptr @DestroyImage(ptr noundef nonnull %call1) #8, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %call79, metadata !2556, metadata !DIExpression()), !dbg !2560
  br label %cleanup, !dbg !2679

cleanup:                                          ; preds = %SetImageProgress.exit176, %if.then78, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call79, %if.then78 ], [ %call1, %SetImageProgress.exit176 ], !dbg !2560
  ret ptr %retval.0, !dbg !2680
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @CopyImageRegion(ptr noundef %destination, ptr noundef %source, i64 noundef %columns, i64 noundef %rows, i64 noundef %sx, i64 noundef %sy, i64 noundef %dx, i64 noundef %dy, ptr noundef %exception) unnamed_addr #6 !dbg !2681 {
entry:
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2685, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %source, metadata !2686, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2687, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2688, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %sx, metadata !2689, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %sy, metadata !2690, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %dx, metadata !2691, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %dy, metadata !2692, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2693, metadata !DIExpression()), !dbg !2706
  %cmp = icmp eq i64 %columns, 0, !dbg !2707
  br i1 %cmp, label %cleanup34, label %if.end, !dbg !2709

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !2696, metadata !DIExpression()), !dbg !2706
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %source, ptr noundef %exception) #8, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %call, metadata !2694, metadata !DIExpression()), !dbg !2706
  %call1 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %destination, ptr noundef %exception) #8, !dbg !2711
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2695, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 1, metadata !2696, metadata !DIExpression()), !dbg !2706
  %cmp259 = icmp sgt i64 %rows, 0, !dbg !2712
  br i1 %cmp259, label %for.body.lr.ph, label %for.end, !dbg !2713

for.body.lr.ph:                                   ; preds = %if.end
  %mul = shl i64 %columns, 3
  %mul20 = shl i64 %columns, 1
  br label %for.body, !dbg !2713

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.061 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  %y.060 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.061, metadata !2696, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %y.060, metadata !2697, metadata !DIExpression()), !dbg !2706
  %cmp3 = icmp eq i32 %status.061, 0, !dbg !2714
  br i1 %cmp3, label %cleanup, label %if.end5, !dbg !2716

if.end5:                                          ; preds = %for.body
  %add = add nsw i64 %y.060, %sy, !dbg !2717
  %call6 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef %sx, i64 noundef %add, i64 noundef %columns, i64 noundef 1, ptr noundef %exception) #9, !dbg !2718
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2703, metadata !DIExpression()), !dbg !2719
  %add7 = add nsw i64 %y.060, %dy, !dbg !2720
  %call8 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call1, i64 noundef %dx, i64 noundef %add7, i64 noundef %columns, i64 noundef 1, ptr noundef %exception) #9, !dbg !2721
  call void @llvm.dbg.value(metadata ptr %call8, metadata !2705, metadata !DIExpression()), !dbg !2719
  %cmp9 = icmp eq ptr %call6, null, !dbg !2722
  %cmp10 = icmp eq ptr %call8, null
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10, !dbg !2724
  br i1 %or.cond, label %cleanup, label %if.end12, !dbg !2724

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #8, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2702, metadata !DIExpression()), !dbg !2719
  %call14 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call8, ptr noundef nonnull %call6, i64 noundef %mul) #8, !dbg !2726
  %cmp15.not = icmp eq ptr %call13, null, !dbg !2727
  br i1 %cmp15.not, label %if.end23, label %if.then16, !dbg !2729

if.then16:                                        ; preds = %if.end12
  %call17 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call1) #8, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2704, metadata !DIExpression()), !dbg !2719
  %cmp18.not = icmp eq ptr %call17, null, !dbg !2732
  br i1 %cmp18.not, label %if.end23, label %if.then19, !dbg !2734

if.then19:                                        ; preds = %if.then16
  %call21 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call17, ptr noundef nonnull %call13, i64 noundef %mul20) #8, !dbg !2735
  br label %if.end23, !dbg !2736

if.end23:                                         ; preds = %if.then16, %if.then19, %if.end12
  %call24 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call1, ptr noundef %exception) #9, !dbg !2737
  call void @llvm.dbg.value(metadata i32 %call24, metadata !2698, metadata !DIExpression()), !dbg !2719
  %cmp25 = icmp ne i32 %call24, 0, !dbg !2738
  %spec.select = zext i1 %cmp25 to i32, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2696, metadata !DIExpression()), !dbg !2706
  br label %cleanup, !dbg !2741

cleanup:                                          ; preds = %if.end5, %for.body, %if.end23
  %status.2 = phi i32 [ %spec.select, %if.end23 ], [ 0, %for.body ], [ 0, %if.end5 ], !dbg !2706
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2696, metadata !DIExpression()), !dbg !2706
  %inc = add nuw nsw i64 %y.060, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2697, metadata !DIExpression()), !dbg !2706
  %exitcond.not = icmp eq i64 %inc, %rows, !dbg !2712
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2713, !llvm.loop !2743

for.end:                                          ; preds = %cleanup, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.2, %cleanup ], !dbg !2745
  %call32 = tail call ptr @DestroyCacheView(ptr noundef %call1) #8, !dbg !2746
  call void @llvm.dbg.value(metadata ptr %call32, metadata !2695, metadata !DIExpression()), !dbg !2706
  %call33 = tail call ptr @DestroyCacheView(ptr noundef %call) #8, !dbg !2747
  call void @llvm.dbg.value(metadata ptr %call33, metadata !2694, metadata !DIExpression()), !dbg !2706
  br label %cleanup34, !dbg !2748

cleanup34:                                        ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 1, %entry ], !dbg !2706
  ret i32 %retval.0, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShaveImage(ptr noundef %image, ptr nocapture noundef readonly %shave_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !2750 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %shave_info, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #8, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2756, metadata !DIExpression()), !dbg !2759
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2760
  %0 = load i32, ptr %debug, align 8, !dbg !2760, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2762
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2763

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2764
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2765
  br label %if.end, !dbg !2766

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %shave_info, align 8, !dbg !2767, !tbaa !1307
  %mul = shl i64 %1, 1, !dbg !2769
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2770
  %2 = load i64, ptr %columns, align 8, !dbg !2770, !tbaa !775
  %cmp1.not = icmp ult i64 %mul, %2, !dbg !2771
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then4, !dbg !2772

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %shave_info, i64 0, i32 1, !dbg !2773
  %3 = load i64, ptr %height, align 8, !dbg !2773, !tbaa !1314
  %mul2 = shl i64 %3, 1, !dbg !2774
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2775
  %4 = load i64, ptr %rows, align 8, !dbg !2775, !tbaa !777
  %cmp3.not = icmp ult i64 %mul2, %4, !dbg !2776
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !2777

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %filename5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2778
  %call7 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1677, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename5) #8, !dbg !2778
  br label %cleanup, !dbg !2778

if.end8:                                          ; preds = %lor.lhs.false
  call void @SetGeometry(ptr noundef nonnull %image, ptr noundef nonnull %geometry) #8, !dbg !2780
  %5 = load i64, ptr %shave_info, align 8, !dbg !2781, !tbaa !1307
  %mul10.neg = mul i64 %5, -2, !dbg !2782
  %6 = load i64, ptr %geometry, align 8, !dbg !2783, !tbaa !1307
  %sub = add i64 %mul10.neg, %6, !dbg !2783
  store i64 %sub, ptr %geometry, align 8, !dbg !2783, !tbaa !1307
  %7 = load i64, ptr %height, align 8, !dbg !2784, !tbaa !1314
  %mul13.neg = mul i64 %7, -2, !dbg !2785
  %height14 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !2786
  %8 = load i64, ptr %height14, align 8, !dbg !2787, !tbaa !1314
  %sub15 = add i64 %mul13.neg, %8, !dbg !2787
  store i64 %sub15, ptr %height14, align 8, !dbg !2787, !tbaa !1314
  %x = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !2788
  %9 = load i64, ptr %x, align 8, !dbg !2788, !tbaa !1980
  %add = add nsw i64 %9, %5, !dbg !2789
  %x17 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !2790
  store i64 %add, ptr %x17, align 8, !dbg !2791, !tbaa !1305
  %y = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2792
  %10 = load i64, ptr %y, align 8, !dbg !2792, !tbaa !1983
  %add20 = add nsw i64 %10, %7, !dbg !2793
  %y21 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !2794
  store i64 %add20, ptr %y21, align 8, !dbg !2795, !tbaa !1312
  %call22 = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %geometry, ptr noundef %exception), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %call22, metadata !2755, metadata !DIExpression()), !dbg !2757
  %cmp23 = icmp eq ptr %call22, null, !dbg !2797
  br i1 %cmp23, label %cleanup, label %if.end25, !dbg !2799

if.end25:                                         ; preds = %if.end8
  %11 = load i64, ptr %shave_info, align 8, !dbg !2800, !tbaa !1307
  %mul27.neg = mul i64 %11, -2, !dbg !2801
  %page28 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 26, !dbg !2802
  %12 = load i64, ptr %page28, align 8, !dbg !2803, !tbaa !1958
  %sub30 = add i64 %mul27.neg, %12, !dbg !2803
  store i64 %sub30, ptr %page28, align 8, !dbg !2803, !tbaa !1958
  %13 = load i64, ptr %height, align 8, !dbg !2804, !tbaa !1314
  %mul32.neg = mul i64 %13, -2, !dbg !2805
  %height34 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 26, i32 1, !dbg !2806
  %14 = load i64, ptr %height34, align 8, !dbg !2807, !tbaa !1962
  %sub35 = add i64 %mul32.neg, %14, !dbg !2807
  store i64 %sub35, ptr %height34, align 8, !dbg !2807, !tbaa !1962
  %15 = load i64, ptr %shave_info, align 8, !dbg !2808, !tbaa !1307
  %x38 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 26, i32 2, !dbg !2809
  %16 = load i64, ptr %x38, align 8, !dbg !2810, !tbaa !1980
  %sub39 = sub nsw i64 %16, %15, !dbg !2810
  store i64 %sub39, ptr %x38, align 8, !dbg !2810, !tbaa !1980
  %17 = load i64, ptr %height, align 8, !dbg !2811, !tbaa !1314
  %y42 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 26, i32 3, !dbg !2812
  %18 = load i64, ptr %y42, align 8, !dbg !2813, !tbaa !1983
  %sub43 = sub nsw i64 %18, %17, !dbg !2813
  store i64 %sub43, ptr %y42, align 8, !dbg !2813, !tbaa !1983
  br label %cleanup, !dbg !2814

cleanup:                                          ; preds = %if.end8, %if.end25, %if.then4
  %retval.0 = phi ptr [ null, %if.then4 ], [ %call22, %if.end25 ], [ null, %if.end8 ], !dbg !2757
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #8, !dbg !2815
  ret ptr %retval.0, !dbg !2815
}

declare !dbg !2816 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SpliceImage(ptr noundef %image, ptr nocapture noundef readonly %geometry, ptr noundef %exception) local_unnamed_addr #0 !dbg !2819 {
entry:
  %message.i542 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2821, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2822, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2823, metadata !DIExpression()), !dbg !2853
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2854
  %0 = load i32, ptr %debug, align 8, !dbg !2854, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !2856
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2857

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2858
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1752, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !2859
  br label %if.end, !dbg !2860

if.end:                                           ; preds = %if.then, %entry
  %splice_geometry.sroa.0.0.copyload = load i64, ptr %geometry, align 8, !dbg !2861, !tbaa.struct !783
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.0.0.copyload, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2853
  %splice_geometry.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 8, !dbg !2861
  %splice_geometry.sroa.13.0.copyload = load i64, ptr %splice_geometry.sroa.13.0..sroa_idx, align 8, !dbg !2861, !tbaa.struct !785
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.13.0.copyload, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2853
  %splice_geometry.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 16, !dbg !2861
  %splice_geometry.sroa.21.0.copyload = load i64, ptr %splice_geometry.sroa.21.0..sroa_idx, align 8, !dbg !2861, !tbaa.struct !786
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.21.0.copyload, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  %splice_geometry.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %geometry, i64 24, !dbg !2861
  %splice_geometry.sroa.37.0.copyload = load i64, ptr %splice_geometry.sroa.37.0..sroa_idx, align 8, !dbg !2861, !tbaa.struct !787
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.37.0.copyload, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2862
  %1 = load i64, ptr %columns, align 8, !dbg !2862, !tbaa !775
  %add = add i64 %1, %splice_geometry.sroa.0.0.copyload, !dbg !2863
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2864
  %2 = load i64, ptr %rows, align 8, !dbg !2864, !tbaa !777
  %add1 = add i64 %2, %splice_geometry.sroa.13.0.copyload, !dbg !2865
  %call2 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %add, i64 noundef %add1, i32 noundef 1, ptr noundef %exception) #8, !dbg !2866
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2826, metadata !DIExpression()), !dbg !2853
  %cmp3 = icmp eq ptr %call2, null, !dbg !2867
  br i1 %cmp3, label %cleanup353, label %if.end5, !dbg !2869

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call2, i32 noundef 1) #8, !dbg !2870
  %cmp7 = icmp eq i32 %call6, 0, !dbg !2872
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !2873

if.then8:                                         ; preds = %if.end5
  %exception9 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 58, !dbg !2874
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception9) #8, !dbg !2876
  %call10 = tail call ptr @DestroyImage(ptr noundef nonnull %call2) #8, !dbg !2877
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2826, metadata !DIExpression()), !dbg !2853
  br label %cleanup353, !dbg !2878

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call2) #8, !dbg !2879
  %gravity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 35, !dbg !2880
  %3 = load i32, ptr %gravity, align 4, !dbg !2880, !tbaa !2881
  switch i32 %3, label %sw.epilog [
    i32 9, label %sw.bb54
    i32 8, label %sw.bb46
    i32 2, label %sw.bb13
    i32 3, label %sw.bb16
    i32 4, label %sw.bb20
    i32 10, label %sw.bb25
    i32 5, label %sw.bb25
    i32 6, label %sw.bb34
    i32 7, label %sw.bb42
  ], !dbg !2882

sw.bb13:                                          ; preds = %if.end11
  %div = sdiv i64 %splice_geometry.sroa.0.0.copyload, 2, !dbg !2883
  %add15 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %div, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %add15, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2887

sw.bb16:                                          ; preds = %if.end11
  %add19 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %splice_geometry.sroa.0.0.copyload, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %add19, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2890

sw.bb20:                                          ; preds = %if.end11
  %div22 = sdiv i64 %splice_geometry.sroa.0.0.copyload, 2, !dbg !2891
  %add24 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %div22, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %add24, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2894

sw.bb25:                                          ; preds = %if.end11, %if.end11
  %div27 = sdiv i64 %splice_geometry.sroa.0.0.copyload, 2, !dbg !2895
  %add29 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %div27, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %add29, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  %div31 = sdiv i64 %splice_geometry.sroa.13.0.copyload, 2, !dbg !2898
  %add33 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %div31, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %add33, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2900

sw.bb34:                                          ; preds = %if.end11
  %add37 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %splice_geometry.sroa.0.0.copyload, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %add37, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  %div39 = sdiv i64 %splice_geometry.sroa.13.0.copyload, 2, !dbg !2903
  %add41 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %div39, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %add41, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2905

sw.bb42:                                          ; preds = %if.end11
  %add45 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %splice_geometry.sroa.13.0.copyload, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %add45, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2908

sw.bb46:                                          ; preds = %if.end11
  %div48 = sdiv i64 %splice_geometry.sroa.0.0.copyload, 2, !dbg !2909
  %add50 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %div48, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %add50, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  %add53 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %splice_geometry.sroa.13.0.copyload, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %add53, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2913

sw.bb54:                                          ; preds = %if.end11
  %add57 = add nsw i64 %splice_geometry.sroa.21.0.copyload, %splice_geometry.sroa.0.0.copyload, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %add57, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  %add60 = add nsw i64 %splice_geometry.sroa.37.0.copyload, %splice_geometry.sroa.13.0.copyload, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %add60, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  br label %sw.epilog, !dbg !2917

sw.epilog:                                        ; preds = %if.end11, %sw.bb54, %sw.bb46, %sw.bb42, %sw.bb34, %sw.bb25, %sw.bb20, %sw.bb16, %sw.bb13
  %splice_geometry.sroa.37.0 = phi i64 [ %splice_geometry.sroa.37.0.copyload, %if.end11 ], [ %add45, %sw.bb42 ], [ %add41, %sw.bb34 ], [ %add33, %sw.bb25 ], [ %add24, %sw.bb20 ], [ %splice_geometry.sroa.37.0.copyload, %sw.bb16 ], [ %splice_geometry.sroa.37.0.copyload, %sw.bb13 ], [ %add53, %sw.bb46 ], [ %add60, %sw.bb54 ], !dbg !2853
  %splice_geometry.sroa.21.0 = phi i64 [ %splice_geometry.sroa.21.0.copyload, %if.end11 ], [ %splice_geometry.sroa.21.0.copyload, %sw.bb42 ], [ %add37, %sw.bb34 ], [ %add29, %sw.bb25 ], [ %splice_geometry.sroa.21.0.copyload, %sw.bb20 ], [ %add19, %sw.bb16 ], [ %add15, %sw.bb13 ], [ %add50, %sw.bb46 ], [ %add57, %sw.bb54 ], !dbg !2853
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.21.0, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %splice_geometry.sroa.37.0, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2853
  call void @llvm.dbg.value(metadata i32 1, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 0, metadata !2828, metadata !DIExpression()), !dbg !2853
  %call61 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !2918
  call void @llvm.dbg.value(metadata ptr %call61, metadata !2824, metadata !DIExpression()), !dbg !2853
  %call62 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call2, ptr noundef %exception) #8, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %call62, metadata !2825, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 0, metadata !2830, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 1, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 0, metadata !2828, metadata !DIExpression()), !dbg !2853
  %cmp64603 = icmp sgt i64 %splice_geometry.sroa.37.0, 0, !dbg !2920
  br i1 %cmp64603, label %for.body.lr.ph, label %for.end179, !dbg !2921

for.body.lr.ph:                                   ; preds = %sw.epilog
  %columns71 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 7
  %cmp81552 = icmp sgt i64 %splice_geometry.sroa.21.0, 0
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %add105 = add i64 %splice_geometry.sroa.21.0, %splice_geometry.sroa.0.0.copyload
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %rows166 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 8
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  %4 = shl i64 %splice_geometry.sroa.21.0, 1, !dbg !2921
  %5 = shl i64 %add105, 3, !dbg !2921
  br label %for.body, !dbg !2921

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0606 = phi i64 [ 0, %for.body.lr.ph ], [ %inc178, %cleanup ]
  %status.0605 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0604 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0606, metadata !2830, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %status.0605, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %progress.0604, metadata !2828, metadata !DIExpression()), !dbg !2853
  %cmp66 = icmp eq i32 %status.0605, 0, !dbg !2922
  br i1 %cmp66, label %cleanup, label %if.end68, !dbg !2924

if.end68:                                         ; preds = %for.body
  %6 = load i64, ptr %columns, align 8, !dbg !2925, !tbaa !775
  %call70 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call61, i64 noundef 0, i64 noundef %y.0606, i64 noundef %6, i64 noundef 1, ptr noundef %exception) #9, !dbg !2926
  call void @llvm.dbg.value(metadata ptr %call70, metadata !2831, metadata !DIExpression()), !dbg !2927
  %7 = load i64, ptr %columns71, align 8, !dbg !2928, !tbaa !775
  %call72 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call62, i64 noundef 0, i64 noundef %y.0606, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #9, !dbg !2929
  call void @llvm.dbg.value(metadata ptr %call72, metadata !2838, metadata !DIExpression()), !dbg !2927
  %cmp73 = icmp eq ptr %call70, null, !dbg !2930
  %cmp74 = icmp eq ptr %call72, null
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp74, !dbg !2932
  br i1 %or.cond, label %cleanup, label %if.end76, !dbg !2932

if.end76:                                         ; preds = %if.end68
  %call77 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call61) #8, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %call77, metadata !2835, metadata !DIExpression()), !dbg !2927
  %call78 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call62) #8, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call78, metadata !2836, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 0, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %call72, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %call77, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %call70, metadata !2831, metadata !DIExpression()), !dbg !2927
  br i1 %cmp81552, label %for.body82.lr.ph, label %for.cond102.preheader, !dbg !2935

for.body82.lr.ph:                                 ; preds = %if.end76
  %8 = load i32, ptr %matte, align 8, !tbaa !2527
  %cmp86.not = icmp eq i32 %8, 0
  %9 = load i32, ptr %colorspace, align 4, !tbaa !2937
  %cmp91 = icmp eq i32 %9, 12
  %cmp93.not = icmp eq ptr %call78, null
  br i1 %cmp91, label %for.body82.us, label %for.body82.lr.ph.split, !dbg !2938

for.body82.us:                                    ; preds = %for.body82.lr.ph, %if.end99.us
  %q.0559.us = phi ptr [ %incdec.ptr101.us, %if.end99.us ], [ %call72, %for.body82.lr.ph ]
  %x65.0557.us = phi i64 [ %inc.us, %if.end99.us ], [ 0, %for.body82.lr.ph ]
  %indexes.0554.us = phi ptr [ %incdec.ptr.us, %if.end99.us ], [ %call77, %for.body82.lr.ph ]
  %p.0553.us = phi ptr [ %incdec.ptr100.us, %if.end99.us ], [ %call70, %for.body82.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0559.us, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.0557.us, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %indexes.0554.us, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %p.0553.us, metadata !2831, metadata !DIExpression()), !dbg !2927
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us, i64 0, i32 2, !dbg !2941
  %10 = load i16, ptr %red.us, align 2, !dbg !2941, !tbaa !1632
  %red83.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us, i64 0, i32 2, !dbg !2941
  store i16 %10, ptr %red83.us, align 2, !dbg !2941, !tbaa !1632
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us, i64 0, i32 1, !dbg !2942
  %11 = load i16, ptr %green.us, align 2, !dbg !2942, !tbaa !1683
  %green84.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us, i64 0, i32 1, !dbg !2942
  store i16 %11, ptr %green84.us, align 2, !dbg !2942, !tbaa !1683
  %12 = load i16, ptr %p.0553.us, align 2, !dbg !2943, !tbaa !1733
  store i16 %12, ptr %q.0559.us, align 2, !dbg !2943, !tbaa !1733
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us, i64 0, i32 3, !dbg !2944
  store i16 0, ptr %opacity.us, align 2, !dbg !2944, !tbaa !2945
  br i1 %cmp86.not, label %if.end90.us, label %if.then87.us, !dbg !2946

if.then87.us:                                     ; preds = %for.body82.us
  %opacity88.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us, i64 0, i32 3, !dbg !2947
  %13 = load i16, ptr %opacity88.us, align 2, !dbg !2947, !tbaa !2945
  store i16 %13, ptr %opacity.us, align 2, !dbg !2947, !tbaa !2945
  br label %if.end90.us, !dbg !2947

if.end90.us:                                      ; preds = %if.then87.us, %for.body82.us
  %add.ptr.us = getelementptr inbounds i16, ptr %call78, i64 %x65.0557.us, !dbg !2949
  br i1 %cmp93.not, label %if.end99.us, label %if.then94.us, !dbg !2953

if.then94.us:                                     ; preds = %if.end90.us
  %cmp95.us = icmp eq ptr %indexes.0554.us, null, !dbg !2949
  br i1 %cmp95.us, label %cond.end.us, label %cond.false.us, !dbg !2949

cond.false.us:                                    ; preds = %if.then94.us
  %14 = load i16, ptr %indexes.0554.us, align 2, !dbg !2949, !tbaa !822
  br label %cond.end.us, !dbg !2949

cond.end.us:                                      ; preds = %cond.false.us, %if.then94.us
  %cond.us = phi i16 [ %14, %cond.false.us ], [ 0, %if.then94.us ], !dbg !2949
  store i16 %cond.us, ptr %add.ptr.us, align 2, !dbg !2949, !tbaa !822
  br label %if.end99.us, !dbg !2949

if.end99.us:                                      ; preds = %cond.end.us, %if.end90.us
  %incdec.ptr.us = getelementptr inbounds i16, ptr %indexes.0554.us, i64 1, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2835, metadata !DIExpression()), !dbg !2927
  %incdec.ptr100.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100.us, metadata !2831, metadata !DIExpression()), !dbg !2927
  %incdec.ptr101.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101.us, metadata !2838, metadata !DIExpression()), !dbg !2927
  %inc.us = add nuw nsw i64 %x65.0557.us, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2837, metadata !DIExpression()), !dbg !2927
  %exitcond674.not = icmp eq i64 %inc.us, %splice_geometry.sroa.21.0, !dbg !2958
  br i1 %exitcond674.not, label %for.cond102.preheader, label %for.body82.us, !dbg !2935, !llvm.loop !2959

for.body82.lr.ph.split:                           ; preds = %for.body82.lr.ph
  br i1 %cmp86.not, label %for.body82.us566, label %for.body82, !dbg !2946

for.body82.us566:                                 ; preds = %for.body82.lr.ph.split, %for.body82.us566
  %q.0559.us567 = phi ptr [ %incdec.ptr101.us579, %for.body82.us566 ], [ %call72, %for.body82.lr.ph.split ]
  %x65.0557.us568 = phi i64 [ %inc.us580, %for.body82.us566 ], [ 0, %for.body82.lr.ph.split ]
  %p.0553.us570 = phi ptr [ %incdec.ptr100.us578, %for.body82.us566 ], [ %call70, %for.body82.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q.0559.us567, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.0557.us568, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr undef, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %p.0553.us570, metadata !2831, metadata !DIExpression()), !dbg !2927
  %red.us571 = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us570, i64 0, i32 2, !dbg !2941
  %15 = load i16, ptr %red.us571, align 2, !dbg !2941, !tbaa !1632
  %red83.us572 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us567, i64 0, i32 2, !dbg !2941
  store i16 %15, ptr %red83.us572, align 2, !dbg !2941, !tbaa !1632
  %green.us573 = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us570, i64 0, i32 1, !dbg !2942
  %16 = load i16, ptr %green.us573, align 2, !dbg !2942, !tbaa !1683
  %green84.us574 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us567, i64 0, i32 1, !dbg !2942
  store i16 %16, ptr %green84.us574, align 2, !dbg !2942, !tbaa !1683
  %17 = load i16, ptr %p.0553.us570, align 2, !dbg !2943, !tbaa !1733
  store i16 %17, ptr %q.0559.us567, align 2, !dbg !2943, !tbaa !1733
  %opacity.us575 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us567, i64 0, i32 3, !dbg !2944
  store i16 0, ptr %opacity.us575, align 2, !dbg !2944, !tbaa !2945
  call void @llvm.dbg.value(metadata ptr undef, metadata !2835, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2927
  %incdec.ptr100.us578 = getelementptr inbounds %struct._PixelPacket, ptr %p.0553.us570, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100.us578, metadata !2831, metadata !DIExpression()), !dbg !2927
  %incdec.ptr101.us579 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559.us567, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101.us579, metadata !2838, metadata !DIExpression()), !dbg !2927
  %inc.us580 = add nuw nsw i64 %x65.0557.us568, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %inc.us580, metadata !2837, metadata !DIExpression()), !dbg !2927
  %exitcond673.not = icmp eq i64 %inc.us580, %splice_geometry.sroa.21.0, !dbg !2958
  br i1 %exitcond673.not, label %for.cond102.preheader.loopexit670, label %for.body82.us566, !dbg !2935, !llvm.loop !2959

for.cond102.preheader.loopexit670:                ; preds = %for.body82.us566
  %uglygep672 = getelementptr i8, ptr %call77, i64 %4, !dbg !2935
  br label %for.cond102.preheader, !dbg !2961

for.cond102.preheader.loopexit671:                ; preds = %for.body82
  %uglygep = getelementptr i8, ptr %call77, i64 %4, !dbg !2935
  br label %for.cond102.preheader, !dbg !2961

for.cond102.preheader:                            ; preds = %if.end99.us, %for.cond102.preheader.loopexit671, %for.cond102.preheader.loopexit670, %if.end76
  %p.0.lcssa = phi ptr [ %call70, %if.end76 ], [ %incdec.ptr100.us578, %for.cond102.preheader.loopexit670 ], [ %incdec.ptr100, %for.cond102.preheader.loopexit671 ], [ %incdec.ptr100.us, %if.end99.us ], !dbg !2927
  %indexes.0.lcssa = phi ptr [ %call77, %if.end76 ], [ %uglygep672, %for.cond102.preheader.loopexit670 ], [ %uglygep, %for.cond102.preheader.loopexit671 ], [ %incdec.ptr.us, %if.end99.us ], !dbg !2927
  %x65.0.lcssa = phi i64 [ 0, %if.end76 ], [ %splice_geometry.sroa.21.0, %for.cond102.preheader.loopexit670 ], [ %splice_geometry.sroa.21.0, %for.cond102.preheader.loopexit671 ], [ %splice_geometry.sroa.21.0, %if.end99.us ], !dbg !2964
  %q.0.lcssa = phi ptr [ %call72, %if.end76 ], [ %incdec.ptr101.us579, %for.cond102.preheader.loopexit670 ], [ %incdec.ptr101, %for.cond102.preheader.loopexit671 ], [ %incdec.ptr101.us, %if.end99.us ], !dbg !2927
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.0.lcssa, metadata !2837, metadata !DIExpression()), !dbg !2927
  %cmp106590 = icmp slt i64 %x65.0.lcssa, %add105, !dbg !2961
  br i1 %cmp106590, label %for.body108.preheader, label %for.cond113.preheader, !dbg !2965

for.body108.preheader:                            ; preds = %for.cond102.preheader
  %18 = mul i64 %x65.0.lcssa, -8, !dbg !2965
  call void @llvm.dbg.value(metadata i32 undef, metadata !2838, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2927
  call void @llvm.dbg.value(metadata i32 undef, metadata !2837, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2927
  %uglygep675 = getelementptr i8, ptr %q.0.lcssa, i64 %5, !dbg !2965
  %uglygep676 = getelementptr i8, ptr %uglygep675, i64 %18, !dbg !2965
  br label %for.cond113.preheader

for.body82:                                       ; preds = %for.body82.lr.ph.split, %for.body82
  %q.0559 = phi ptr [ %incdec.ptr101, %for.body82 ], [ %call72, %for.body82.lr.ph.split ]
  %x65.0557 = phi i64 [ %inc, %for.body82 ], [ 0, %for.body82.lr.ph.split ]
  %p.0553 = phi ptr [ %incdec.ptr100, %for.body82 ], [ %call70, %for.body82.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q.0559, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.0557, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr undef, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %p.0553, metadata !2831, metadata !DIExpression()), !dbg !2927
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0553, i64 0, i32 2, !dbg !2941
  %19 = load i16, ptr %red, align 2, !dbg !2941, !tbaa !1632
  %red83 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559, i64 0, i32 2, !dbg !2941
  store i16 %19, ptr %red83, align 2, !dbg !2941, !tbaa !1632
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0553, i64 0, i32 1, !dbg !2942
  %20 = load i16, ptr %green, align 2, !dbg !2942, !tbaa !1683
  %green84 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559, i64 0, i32 1, !dbg !2942
  store i16 %20, ptr %green84, align 2, !dbg !2942, !tbaa !1683
  %21 = load i16, ptr %p.0553, align 2, !dbg !2943, !tbaa !1733
  store i16 %21, ptr %q.0559, align 2, !dbg !2943, !tbaa !1733
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.0559, i64 0, i32 3, !dbg !2944
  store i16 0, ptr %opacity, align 2, !dbg !2944, !tbaa !2945
  %opacity88 = getelementptr inbounds %struct._PixelPacket, ptr %p.0553, i64 0, i32 3, !dbg !2947
  %22 = load i16, ptr %opacity88, align 2, !dbg !2947, !tbaa !2945
  store i16 %22, ptr %opacity, align 2, !dbg !2947, !tbaa !2945
  call void @llvm.dbg.value(metadata ptr undef, metadata !2835, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2927
  %incdec.ptr100 = getelementptr inbounds %struct._PixelPacket, ptr %p.0553, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !2831, metadata !DIExpression()), !dbg !2927
  %incdec.ptr101 = getelementptr inbounds %struct._PixelPacket, ptr %q.0559, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101, metadata !2838, metadata !DIExpression()), !dbg !2927
  %inc = add nuw nsw i64 %x65.0557, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2837, metadata !DIExpression()), !dbg !2927
  %exitcond.not = icmp eq i64 %inc, %splice_geometry.sroa.21.0, !dbg !2958
  br i1 %exitcond.not, label %for.cond102.preheader.loopexit671, label %for.body82, !dbg !2935, !llvm.loop !2959

for.cond113.preheader:                            ; preds = %for.body108.preheader, %for.cond102.preheader
  %x65.1.lcssa = phi i64 [ %x65.0.lcssa, %for.cond102.preheader ], [ %add105, %for.body108.preheader ], !dbg !2927
  %q.1.lcssa = phi ptr [ %q.0.lcssa, %for.cond102.preheader ], [ %uglygep676, %for.body108.preheader ], !dbg !2927
  %23 = load i64, ptr %columns71, align 8, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %q.1.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.1.lcssa, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %indexes.0.lcssa, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %p.0.lcssa, metadata !2831, metadata !DIExpression()), !dbg !2927
  %cmp115595 = icmp slt i64 %x65.1.lcssa, %23, !dbg !2966
  br i1 %cmp115595, label %for.body117.lr.ph, label %for.end156, !dbg !2969

for.body117.lr.ph:                                ; preds = %for.cond113.preheader
  %24 = load i32, ptr %matte, align 8, !tbaa !2527
  %cmp126.not = icmp eq i32 %24, 0
  %25 = load i32, ptr %colorspace, align 4, !tbaa !2937
  %cmp133 = icmp eq i32 %25, 12
  %cmp137.not = icmp eq ptr %call78, null
  br label %for.body117, !dbg !2969

for.body117:                                      ; preds = %for.body117.lr.ph, %if.end150
  %q.2602 = phi ptr [ %q.1.lcssa, %for.body117.lr.ph ], [ %incdec.ptr153, %if.end150 ]
  %x65.2600 = phi i64 [ %x65.1.lcssa, %for.body117.lr.ph ], [ %inc155, %if.end150 ]
  %indexes.1597 = phi ptr [ %indexes.0.lcssa, %for.body117.lr.ph ], [ %incdec.ptr151, %if.end150 ]
  %p.1596 = phi ptr [ %p.0.lcssa, %for.body117.lr.ph ], [ %incdec.ptr152, %if.end150 ]
  call void @llvm.dbg.value(metadata ptr %q.2602, metadata !2838, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %x65.2600, metadata !2837, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %indexes.1597, metadata !2835, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %p.1596, metadata !2831, metadata !DIExpression()), !dbg !2927
  %red118 = getelementptr inbounds %struct._PixelPacket, ptr %p.1596, i64 0, i32 2, !dbg !2970
  %26 = load i16, ptr %red118, align 2, !dbg !2970, !tbaa !1632
  %red119 = getelementptr inbounds %struct._PixelPacket, ptr %q.2602, i64 0, i32 2, !dbg !2970
  store i16 %26, ptr %red119, align 2, !dbg !2970, !tbaa !1632
  %green120 = getelementptr inbounds %struct._PixelPacket, ptr %p.1596, i64 0, i32 1, !dbg !2972
  %27 = load i16, ptr %green120, align 2, !dbg !2972, !tbaa !1683
  %green121 = getelementptr inbounds %struct._PixelPacket, ptr %q.2602, i64 0, i32 1, !dbg !2972
  store i16 %27, ptr %green121, align 2, !dbg !2972, !tbaa !1683
  %28 = load i16, ptr %p.1596, align 2, !dbg !2973, !tbaa !1733
  store i16 %28, ptr %q.2602, align 2, !dbg !2973, !tbaa !1733
  %opacity124 = getelementptr inbounds %struct._PixelPacket, ptr %q.2602, i64 0, i32 3, !dbg !2974
  store i16 0, ptr %opacity124, align 2, !dbg !2974, !tbaa !2945
  br i1 %cmp126.not, label %if.end131, label %if.then128, !dbg !2975

if.then128:                                       ; preds = %for.body117
  %opacity129 = getelementptr inbounds %struct._PixelPacket, ptr %p.1596, i64 0, i32 3, !dbg !2976
  %29 = load i16, ptr %opacity129, align 2, !dbg !2976, !tbaa !2945
  store i16 %29, ptr %opacity124, align 2, !dbg !2976, !tbaa !2945
  br label %if.end131, !dbg !2976

if.end131:                                        ; preds = %if.then128, %for.body117
  br i1 %cmp133, label %if.then135, label %if.end150, !dbg !2978

if.then135:                                       ; preds = %if.end131
  %add.ptr136 = getelementptr inbounds i16, ptr %call78, i64 %x65.2600, !dbg !2979
  br i1 %cmp137.not, label %if.end150, label %if.then139, !dbg !2983

if.then139:                                       ; preds = %if.then135
  %cmp140 = icmp eq ptr %indexes.1597, null, !dbg !2979
  br i1 %cmp140, label %cond.end145, label %cond.false143, !dbg !2979

cond.false143:                                    ; preds = %if.then139
  %30 = load i16, ptr %indexes.1597, align 2, !dbg !2979, !tbaa !822
  br label %cond.end145, !dbg !2979

cond.end145:                                      ; preds = %if.then139, %cond.false143
  %cond146 = phi i16 [ %30, %cond.false143 ], [ 0, %if.then139 ], !dbg !2979
  store i16 %cond146, ptr %add.ptr136, align 2, !dbg !2979, !tbaa !822
  br label %if.end150, !dbg !2979

if.end150:                                        ; preds = %if.then135, %cond.end145, %if.end131
  %incdec.ptr151 = getelementptr inbounds i16, ptr %indexes.1597, i64 1, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %incdec.ptr151, metadata !2835, metadata !DIExpression()), !dbg !2927
  %incdec.ptr152 = getelementptr inbounds %struct._PixelPacket, ptr %p.1596, i64 1, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %incdec.ptr152, metadata !2831, metadata !DIExpression()), !dbg !2927
  %incdec.ptr153 = getelementptr inbounds %struct._PixelPacket, ptr %q.2602, i64 1, !dbg !2986
  call void @llvm.dbg.value(metadata ptr %incdec.ptr153, metadata !2838, metadata !DIExpression()), !dbg !2927
  %inc155 = add nuw nsw i64 %x65.2600, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %inc155, metadata !2837, metadata !DIExpression()), !dbg !2927
  %exitcond677.not = icmp eq i64 %inc155, %23, !dbg !2966
  br i1 %exitcond677.not, label %for.end156, label %for.body117, !dbg !2969, !llvm.loop !2988

for.end156:                                       ; preds = %if.end150, %for.cond113.preheader
  %call157 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call62, ptr noundef %exception) #9, !dbg !2990
  %cmp158 = icmp ne i32 %call157, 0, !dbg !2992
  %spec.select = zext i1 %cmp158 to i32, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2827, metadata !DIExpression()), !dbg !2853
  %31 = load ptr, ptr %progress_monitor, align 8, !dbg !2994, !tbaa !833
  %cmp162.not = icmp eq ptr %31, null, !dbg !2995
  br i1 %cmp162.not, label %cleanup, label %SetImageProgress.exit, !dbg !2996

SetImageProgress.exit:                            ; preds = %for.end156
  %inc165 = add nsw i64 %progress.0604, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %inc165, metadata !2828, metadata !DIExpression()), !dbg !2853
  %32 = load i64, ptr %rows166, align 8, !dbg !2998, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !2999
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !844, metadata !DIExpression()) #8, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %progress.0604, metadata !845, metadata !DIExpression()) #8, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %32, metadata !846, metadata !DIExpression()) #8, !dbg !2999
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !3001
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !847, metadata !DIExpression()) #8, !dbg !3002
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename.i) #8, !dbg !3003
  %33 = load ptr, ptr %progress_monitor, align 8, !dbg !3004, !tbaa !833
  %34 = load ptr, ptr %client_data.i, align 8, !dbg !3005, !tbaa !855
  %call4.i = call i32 %33(ptr noundef nonnull %message.i, i64 noundef %progress.0604, i64 noundef %32, ptr noundef %34) #8, !dbg !3006
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2839, metadata !DIExpression()), !dbg !3008
  %cmp168 = icmp eq i32 %call4.i, 0, !dbg !3009
  %spec.select539 = select i1 %cmp168, i32 0, i32 %spec.select, !dbg !3011
  call void @llvm.dbg.value(metadata i32 %spec.select539, metadata !2827, metadata !DIExpression()), !dbg !2853
  br label %cleanup, !dbg !3012

cleanup:                                          ; preds = %for.end156, %SetImageProgress.exit, %if.end68, %for.body
  %progress.2 = phi i64 [ %progress.0604, %for.body ], [ %progress.0604, %if.end68 ], [ %inc165, %SetImageProgress.exit ], [ %progress.0604, %for.end156 ], !dbg !2853
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end68 ], [ %spec.select539, %SetImageProgress.exit ], [ %spec.select, %for.end156 ], !dbg !2853
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2828, metadata !DIExpression()), !dbg !2853
  %inc178 = add nuw nsw i64 %y.0606, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %inc178, metadata !2830, metadata !DIExpression()), !dbg !2853
  %exitcond678.not = icmp eq i64 %inc178, %splice_geometry.sroa.37.0, !dbg !2920
  br i1 %exitcond678.not, label %for.end179, label %for.body, !dbg !2921, !llvm.loop !3014

for.end179:                                       ; preds = %cleanup, %sw.epilog
  %progress.0.lcssa = phi i64 [ 0, %sw.epilog ], [ %progress.2, %cleanup ], !dbg !3016
  %status.0.lcssa = phi i32 [ 1, %sw.epilog ], [ %status.4, %cleanup ], !dbg !3017
  %add182 = add i64 %splice_geometry.sroa.37.0, %splice_geometry.sroa.13.0.copyload, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %add182, metadata !2830, metadata !DIExpression()), !dbg !2853
  %rows184 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %progress.0.lcssa, metadata !2828, metadata !DIExpression()), !dbg !2853
  %35 = load i64, ptr %rows184, align 8, !dbg !3019, !tbaa !777
  %cmp185662 = icmp slt i64 %add182, %35, !dbg !3020
  br i1 %cmp185662, label %for.body187.lr.ph, label %for.end345, !dbg !3021

for.body187.lr.ph:                                ; preds = %for.end179
  %columns208 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 7
  %cmp221609 = icmp sgt i64 %splice_geometry.sroa.21.0, 0
  %matte231 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colorspace238 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %add266 = add i64 %splice_geometry.sroa.21.0, %splice_geometry.sroa.0.0.copyload
  %progress_monitor323 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i545 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i547 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  %36 = shl i64 %splice_geometry.sroa.21.0, 1, !dbg !3021
  %37 = shl i64 %add266, 3, !dbg !3021
  br label %for.body187, !dbg !3021

for.body187:                                      ; preds = %for.body187.lr.ph, %cleanup336
  %y.1665 = phi i64 [ %add182, %for.body187.lr.ph ], [ %inc344, %cleanup336 ]
  %status.5664 = phi i32 [ %status.0.lcssa, %for.body187.lr.ph ], [ %status.9, %cleanup336 ]
  %progress.3663 = phi i64 [ %progress.0.lcssa, %for.body187.lr.ph ], [ %progress.5, %cleanup336 ]
  call void @llvm.dbg.value(metadata i64 %y.1665, metadata !2830, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %status.5664, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %progress.3663, metadata !2828, metadata !DIExpression()), !dbg !2853
  %cmp193 = icmp eq i32 %status.5664, 0, !dbg !3022
  br i1 %cmp193, label %cleanup336, label %if.end196, !dbg !3024

if.end196:                                        ; preds = %for.body187
  %sub = sub nsw i64 %y.1665, %splice_geometry.sroa.13.0.copyload, !dbg !3025
  %38 = load i64, ptr %columns, align 8, !dbg !3026, !tbaa !775
  %call199 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call61, i64 noundef 0, i64 noundef %sub, i64 noundef %38, i64 noundef 1, ptr noundef %exception) #9, !dbg !3027
  call void @llvm.dbg.value(metadata ptr %call199, metadata !2842, metadata !DIExpression()), !dbg !3028
  %cmp200 = icmp slt i64 %y.1665, 0, !dbg !3029
  br i1 %cmp200, label %cleanup336, label %lor.lhs.false202, !dbg !3031

lor.lhs.false202:                                 ; preds = %if.end196
  %39 = load i64, ptr %rows184, align 8, !dbg !3032, !tbaa !777
  %cmp204.not = icmp slt i64 %y.1665, %39, !dbg !3033
  br i1 %cmp204.not, label %if.end207, label %cleanup336, !dbg !3034

if.end207:                                        ; preds = %lor.lhs.false202
  %40 = load i64, ptr %columns208, align 8, !dbg !3035, !tbaa !775
  %call209 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call62, i64 noundef 0, i64 noundef %y.1665, i64 noundef %40, i64 noundef 1, ptr noundef %exception) #9, !dbg !3036
  call void @llvm.dbg.value(metadata ptr %call209, metadata !2849, metadata !DIExpression()), !dbg !3028
  %cmp210 = icmp eq ptr %call199, null, !dbg !3037
  %cmp213 = icmp eq ptr %call209, null
  %or.cond360 = select i1 %cmp210, i1 true, i1 %cmp213, !dbg !3039
  br i1 %or.cond360, label %cleanup336, label %if.end216, !dbg !3039

if.end216:                                        ; preds = %if.end207
  %call217 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call61) #8, !dbg !3040
  call void @llvm.dbg.value(metadata ptr %call217, metadata !2846, metadata !DIExpression()), !dbg !3028
  %call218 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call62) #8, !dbg !3041
  call void @llvm.dbg.value(metadata ptr %call218, metadata !2847, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %call209, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %call199, metadata !2842, metadata !DIExpression()), !dbg !3028
  br i1 %cmp221609, label %for.body223.lr.ph, label %for.cond263.preheader, !dbg !3042

for.body223.lr.ph:                                ; preds = %if.end216
  %41 = load i32, ptr %matte231, align 8, !tbaa !2527
  %cmp232.not = icmp eq i32 %41, 0
  %42 = load i32, ptr %colorspace238, align 4, !tbaa !2937
  %cmp239 = icmp eq i32 %42, 12
  %cmp243.not = icmp eq ptr %call218, null
  br i1 %cmp239, label %for.body223.us, label %for.body223.lr.ph.split, !dbg !3044

for.body223.us:                                   ; preds = %for.body223.lr.ph, %if.end256.us
  %q192.0616.us = phi ptr [ %incdec.ptr259.us, %if.end256.us ], [ %call209, %for.body223.lr.ph ]
  %x191.0614.us = phi i64 [ %inc261.us, %if.end256.us ], [ 0, %for.body223.lr.ph ]
  %indexes189.0611.us = phi ptr [ %incdec.ptr257.us, %if.end256.us ], [ %call217, %for.body223.lr.ph ]
  %p188.0610.us = phi ptr [ %incdec.ptr258.us, %if.end256.us ], [ %call199, %for.body223.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q192.0616.us, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.0614.us, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %indexes189.0611.us, metadata !2846, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %p188.0610.us, metadata !2842, metadata !DIExpression()), !dbg !3028
  %red224.us = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us, i64 0, i32 2, !dbg !3047
  %43 = load i16, ptr %red224.us, align 2, !dbg !3047, !tbaa !1632
  %red225.us = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us, i64 0, i32 2, !dbg !3047
  store i16 %43, ptr %red225.us, align 2, !dbg !3047, !tbaa !1632
  %green226.us = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us, i64 0, i32 1, !dbg !3048
  %44 = load i16, ptr %green226.us, align 2, !dbg !3048, !tbaa !1683
  %green227.us = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us, i64 0, i32 1, !dbg !3048
  store i16 %44, ptr %green227.us, align 2, !dbg !3048, !tbaa !1683
  %45 = load i16, ptr %p188.0610.us, align 2, !dbg !3049, !tbaa !1733
  store i16 %45, ptr %q192.0616.us, align 2, !dbg !3049, !tbaa !1733
  %opacity230.us = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us, i64 0, i32 3, !dbg !3050
  store i16 0, ptr %opacity230.us, align 2, !dbg !3050, !tbaa !2945
  br i1 %cmp232.not, label %if.end237.us, label %if.then234.us, !dbg !3051

if.then234.us:                                    ; preds = %for.body223.us
  %opacity235.us = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us, i64 0, i32 3, !dbg !3052
  %46 = load i16, ptr %opacity235.us, align 2, !dbg !3052, !tbaa !2945
  store i16 %46, ptr %opacity230.us, align 2, !dbg !3052, !tbaa !2945
  br label %if.end237.us, !dbg !3052

if.end237.us:                                     ; preds = %if.then234.us, %for.body223.us
  %add.ptr242.us = getelementptr inbounds i16, ptr %call218, i64 %x191.0614.us, !dbg !3054
  br i1 %cmp243.not, label %if.end256.us, label %if.then245.us, !dbg !3058

if.then245.us:                                    ; preds = %if.end237.us
  %cmp246.us = icmp eq ptr %indexes189.0611.us, null, !dbg !3054
  br i1 %cmp246.us, label %cond.end251.us, label %cond.false249.us, !dbg !3054

cond.false249.us:                                 ; preds = %if.then245.us
  %47 = load i16, ptr %indexes189.0611.us, align 2, !dbg !3054, !tbaa !822
  br label %cond.end251.us, !dbg !3054

cond.end251.us:                                   ; preds = %cond.false249.us, %if.then245.us
  %cond252.us = phi i16 [ %47, %cond.false249.us ], [ 0, %if.then245.us ], !dbg !3054
  store i16 %cond252.us, ptr %add.ptr242.us, align 2, !dbg !3054, !tbaa !822
  br label %if.end256.us, !dbg !3054

if.end256.us:                                     ; preds = %cond.end251.us, %if.end237.us
  %incdec.ptr257.us = getelementptr inbounds i16, ptr %indexes189.0611.us, i64 1, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %incdec.ptr257.us, metadata !2846, metadata !DIExpression()), !dbg !3028
  %incdec.ptr258.us = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us, i64 1, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %incdec.ptr258.us, metadata !2842, metadata !DIExpression()), !dbg !3028
  %incdec.ptr259.us = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %incdec.ptr259.us, metadata !2849, metadata !DIExpression()), !dbg !3028
  %inc261.us = add nuw nsw i64 %x191.0614.us, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %inc261.us, metadata !2848, metadata !DIExpression()), !dbg !3028
  %exitcond683.not = icmp eq i64 %inc261.us, %splice_geometry.sroa.21.0, !dbg !3063
  br i1 %exitcond683.not, label %for.cond263.preheader, label %for.body223.us, !dbg !3042, !llvm.loop !3064

for.body223.lr.ph.split:                          ; preds = %for.body223.lr.ph
  br i1 %cmp232.not, label %for.body223.us625, label %for.body223, !dbg !3051

for.body223.us625:                                ; preds = %for.body223.lr.ph.split, %for.body223.us625
  %q192.0616.us626 = phi ptr [ %incdec.ptr259.us638, %for.body223.us625 ], [ %call209, %for.body223.lr.ph.split ]
  %x191.0614.us627 = phi i64 [ %inc261.us639, %for.body223.us625 ], [ 0, %for.body223.lr.ph.split ]
  %p188.0610.us629 = phi ptr [ %incdec.ptr258.us637, %for.body223.us625 ], [ %call199, %for.body223.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q192.0616.us626, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.0614.us627, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr undef, metadata !2846, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %p188.0610.us629, metadata !2842, metadata !DIExpression()), !dbg !3028
  %red224.us630 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us629, i64 0, i32 2, !dbg !3047
  %48 = load i16, ptr %red224.us630, align 2, !dbg !3047, !tbaa !1632
  %red225.us631 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us626, i64 0, i32 2, !dbg !3047
  store i16 %48, ptr %red225.us631, align 2, !dbg !3047, !tbaa !1632
  %green226.us632 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us629, i64 0, i32 1, !dbg !3048
  %49 = load i16, ptr %green226.us632, align 2, !dbg !3048, !tbaa !1683
  %green227.us633 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us626, i64 0, i32 1, !dbg !3048
  store i16 %49, ptr %green227.us633, align 2, !dbg !3048, !tbaa !1683
  %50 = load i16, ptr %p188.0610.us629, align 2, !dbg !3049, !tbaa !1733
  store i16 %50, ptr %q192.0616.us626, align 2, !dbg !3049, !tbaa !1733
  %opacity230.us634 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us626, i64 0, i32 3, !dbg !3050
  store i16 0, ptr %opacity230.us634, align 2, !dbg !3050, !tbaa !2945
  call void @llvm.dbg.value(metadata ptr undef, metadata !2846, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3028
  %incdec.ptr258.us637 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610.us629, i64 1, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %incdec.ptr258.us637, metadata !2842, metadata !DIExpression()), !dbg !3028
  %incdec.ptr259.us638 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616.us626, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %incdec.ptr259.us638, metadata !2849, metadata !DIExpression()), !dbg !3028
  %inc261.us639 = add nuw nsw i64 %x191.0614.us627, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %inc261.us639, metadata !2848, metadata !DIExpression()), !dbg !3028
  %exitcond682.not = icmp eq i64 %inc261.us639, %splice_geometry.sroa.21.0, !dbg !3063
  br i1 %exitcond682.not, label %for.cond263.preheader.loopexit668, label %for.body223.us625, !dbg !3042, !llvm.loop !3064

for.cond263.preheader.loopexit668:                ; preds = %for.body223.us625
  %uglygep681 = getelementptr i8, ptr %call217, i64 %36, !dbg !3042
  br label %for.cond263.preheader, !dbg !3066

for.cond263.preheader.loopexit669:                ; preds = %for.body223
  %uglygep679 = getelementptr i8, ptr %call217, i64 %36, !dbg !3042
  br label %for.cond263.preheader, !dbg !3066

for.cond263.preheader:                            ; preds = %if.end256.us, %for.cond263.preheader.loopexit669, %for.cond263.preheader.loopexit668, %if.end216
  %p188.0.lcssa = phi ptr [ %call199, %if.end216 ], [ %incdec.ptr258.us637, %for.cond263.preheader.loopexit668 ], [ %incdec.ptr258, %for.cond263.preheader.loopexit669 ], [ %incdec.ptr258.us, %if.end256.us ], !dbg !3028
  %indexes189.0.lcssa = phi ptr [ %call217, %if.end216 ], [ %uglygep681, %for.cond263.preheader.loopexit668 ], [ %uglygep679, %for.cond263.preheader.loopexit669 ], [ %incdec.ptr257.us, %if.end256.us ], !dbg !3028
  %x191.0.lcssa = phi i64 [ 0, %if.end216 ], [ %splice_geometry.sroa.21.0, %for.cond263.preheader.loopexit668 ], [ %splice_geometry.sroa.21.0, %for.cond263.preheader.loopexit669 ], [ %splice_geometry.sroa.21.0, %if.end256.us ], !dbg !3069
  %q192.0.lcssa = phi ptr [ %call209, %if.end216 ], [ %incdec.ptr259.us638, %for.cond263.preheader.loopexit668 ], [ %incdec.ptr259, %for.cond263.preheader.loopexit669 ], [ %incdec.ptr259.us, %if.end256.us ], !dbg !3028
  call void @llvm.dbg.value(metadata ptr %q192.0.lcssa, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.0.lcssa, metadata !2848, metadata !DIExpression()), !dbg !3028
  %cmp267649 = icmp slt i64 %x191.0.lcssa, %add266, !dbg !3066
  br i1 %cmp267649, label %for.body269.preheader, label %for.cond274.preheader, !dbg !3070

for.body269.preheader:                            ; preds = %for.cond263.preheader
  %51 = mul i64 %x191.0.lcssa, -8, !dbg !3070
  call void @llvm.dbg.value(metadata i32 undef, metadata !2849, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3028
  call void @llvm.dbg.value(metadata i32 undef, metadata !2848, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3028
  %uglygep684 = getelementptr i8, ptr %q192.0.lcssa, i64 %37, !dbg !3070
  %uglygep685 = getelementptr i8, ptr %uglygep684, i64 %51, !dbg !3070
  br label %for.cond274.preheader

for.body223:                                      ; preds = %for.body223.lr.ph.split, %for.body223
  %q192.0616 = phi ptr [ %incdec.ptr259, %for.body223 ], [ %call209, %for.body223.lr.ph.split ]
  %x191.0614 = phi i64 [ %inc261, %for.body223 ], [ 0, %for.body223.lr.ph.split ]
  %p188.0610 = phi ptr [ %incdec.ptr258, %for.body223 ], [ %call199, %for.body223.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q192.0616, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.0614, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr undef, metadata !2846, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %p188.0610, metadata !2842, metadata !DIExpression()), !dbg !3028
  %red224 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610, i64 0, i32 2, !dbg !3047
  %52 = load i16, ptr %red224, align 2, !dbg !3047, !tbaa !1632
  %red225 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616, i64 0, i32 2, !dbg !3047
  store i16 %52, ptr %red225, align 2, !dbg !3047, !tbaa !1632
  %green226 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610, i64 0, i32 1, !dbg !3048
  %53 = load i16, ptr %green226, align 2, !dbg !3048, !tbaa !1683
  %green227 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616, i64 0, i32 1, !dbg !3048
  store i16 %53, ptr %green227, align 2, !dbg !3048, !tbaa !1683
  %54 = load i16, ptr %p188.0610, align 2, !dbg !3049, !tbaa !1733
  store i16 %54, ptr %q192.0616, align 2, !dbg !3049, !tbaa !1733
  %opacity230 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616, i64 0, i32 3, !dbg !3050
  store i16 0, ptr %opacity230, align 2, !dbg !3050, !tbaa !2945
  %opacity235 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610, i64 0, i32 3, !dbg !3052
  %55 = load i16, ptr %opacity235, align 2, !dbg !3052, !tbaa !2945
  store i16 %55, ptr %opacity230, align 2, !dbg !3052, !tbaa !2945
  call void @llvm.dbg.value(metadata ptr undef, metadata !2846, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3028
  %incdec.ptr258 = getelementptr inbounds %struct._PixelPacket, ptr %p188.0610, i64 1, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %incdec.ptr258, metadata !2842, metadata !DIExpression()), !dbg !3028
  %incdec.ptr259 = getelementptr inbounds %struct._PixelPacket, ptr %q192.0616, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %incdec.ptr259, metadata !2849, metadata !DIExpression()), !dbg !3028
  %inc261 = add nuw nsw i64 %x191.0614, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %inc261, metadata !2848, metadata !DIExpression()), !dbg !3028
  %exitcond680.not = icmp eq i64 %inc261, %splice_geometry.sroa.21.0, !dbg !3063
  br i1 %exitcond680.not, label %for.cond263.preheader.loopexit669, label %for.body223, !dbg !3042, !llvm.loop !3064

for.cond274.preheader:                            ; preds = %for.body269.preheader, %for.cond263.preheader
  %x191.1.lcssa = phi i64 [ %x191.0.lcssa, %for.cond263.preheader ], [ %add266, %for.body269.preheader ], !dbg !3028
  %q192.1.lcssa = phi ptr [ %q192.0.lcssa, %for.cond263.preheader ], [ %uglygep685, %for.body269.preheader ], !dbg !3028
  %56 = load i64, ptr %columns208, align 8, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %q192.1.lcssa, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.1.lcssa, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %indexes189.0.lcssa, metadata !2846, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %p188.0.lcssa, metadata !2842, metadata !DIExpression()), !dbg !3028
  %cmp276654 = icmp slt i64 %x191.1.lcssa, %56, !dbg !3071
  br i1 %cmp276654, label %for.body278.lr.ph, label %for.end317, !dbg !3074

for.body278.lr.ph:                                ; preds = %for.cond274.preheader
  %57 = load i32, ptr %matte231, align 8, !tbaa !2527
  %cmp287.not = icmp eq i32 %57, 0
  %58 = load i32, ptr %colorspace238, align 4, !tbaa !2937
  %cmp294 = icmp eq i32 %58, 12
  %cmp298.not = icmp eq ptr %call218, null
  br label %for.body278, !dbg !3074

for.body278:                                      ; preds = %for.body278.lr.ph, %if.end311
  %q192.2661 = phi ptr [ %q192.1.lcssa, %for.body278.lr.ph ], [ %incdec.ptr314, %if.end311 ]
  %x191.2659 = phi i64 [ %x191.1.lcssa, %for.body278.lr.ph ], [ %inc316, %if.end311 ]
  %indexes189.1656 = phi ptr [ %indexes189.0.lcssa, %for.body278.lr.ph ], [ %incdec.ptr312, %if.end311 ]
  %p188.1655 = phi ptr [ %p188.0.lcssa, %for.body278.lr.ph ], [ %incdec.ptr313, %if.end311 ]
  call void @llvm.dbg.value(metadata ptr %q192.2661, metadata !2849, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %x191.2659, metadata !2848, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %indexes189.1656, metadata !2846, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %p188.1655, metadata !2842, metadata !DIExpression()), !dbg !3028
  %red279 = getelementptr inbounds %struct._PixelPacket, ptr %p188.1655, i64 0, i32 2, !dbg !3075
  %59 = load i16, ptr %red279, align 2, !dbg !3075, !tbaa !1632
  %red280 = getelementptr inbounds %struct._PixelPacket, ptr %q192.2661, i64 0, i32 2, !dbg !3075
  store i16 %59, ptr %red280, align 2, !dbg !3075, !tbaa !1632
  %green281 = getelementptr inbounds %struct._PixelPacket, ptr %p188.1655, i64 0, i32 1, !dbg !3077
  %60 = load i16, ptr %green281, align 2, !dbg !3077, !tbaa !1683
  %green282 = getelementptr inbounds %struct._PixelPacket, ptr %q192.2661, i64 0, i32 1, !dbg !3077
  store i16 %60, ptr %green282, align 2, !dbg !3077, !tbaa !1683
  %61 = load i16, ptr %p188.1655, align 2, !dbg !3078, !tbaa !1733
  store i16 %61, ptr %q192.2661, align 2, !dbg !3078, !tbaa !1733
  %opacity285 = getelementptr inbounds %struct._PixelPacket, ptr %q192.2661, i64 0, i32 3, !dbg !3079
  store i16 0, ptr %opacity285, align 2, !dbg !3079, !tbaa !2945
  br i1 %cmp287.not, label %if.end292, label %if.then289, !dbg !3080

if.then289:                                       ; preds = %for.body278
  %opacity290 = getelementptr inbounds %struct._PixelPacket, ptr %p188.1655, i64 0, i32 3, !dbg !3081
  %62 = load i16, ptr %opacity290, align 2, !dbg !3081, !tbaa !2945
  store i16 %62, ptr %opacity285, align 2, !dbg !3081, !tbaa !2945
  br label %if.end292, !dbg !3081

if.end292:                                        ; preds = %if.then289, %for.body278
  br i1 %cmp294, label %if.then296, label %if.end311, !dbg !3083

if.then296:                                       ; preds = %if.end292
  %add.ptr297 = getelementptr inbounds i16, ptr %call218, i64 %x191.2659, !dbg !3084
  br i1 %cmp298.not, label %if.end311, label %if.then300, !dbg !3088

if.then300:                                       ; preds = %if.then296
  %cmp301 = icmp eq ptr %indexes189.1656, null, !dbg !3084
  br i1 %cmp301, label %cond.end306, label %cond.false304, !dbg !3084

cond.false304:                                    ; preds = %if.then300
  %63 = load i16, ptr %indexes189.1656, align 2, !dbg !3084, !tbaa !822
  br label %cond.end306, !dbg !3084

cond.end306:                                      ; preds = %if.then300, %cond.false304
  %cond307 = phi i16 [ %63, %cond.false304 ], [ 0, %if.then300 ], !dbg !3084
  store i16 %cond307, ptr %add.ptr297, align 2, !dbg !3084, !tbaa !822
  br label %if.end311, !dbg !3084

if.end311:                                        ; preds = %if.then296, %cond.end306, %if.end292
  %incdec.ptr312 = getelementptr inbounds i16, ptr %indexes189.1656, i64 1, !dbg !3089
  call void @llvm.dbg.value(metadata ptr %incdec.ptr312, metadata !2846, metadata !DIExpression()), !dbg !3028
  %incdec.ptr313 = getelementptr inbounds %struct._PixelPacket, ptr %p188.1655, i64 1, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %incdec.ptr313, metadata !2842, metadata !DIExpression()), !dbg !3028
  %incdec.ptr314 = getelementptr inbounds %struct._PixelPacket, ptr %q192.2661, i64 1, !dbg !3091
  call void @llvm.dbg.value(metadata ptr %incdec.ptr314, metadata !2849, metadata !DIExpression()), !dbg !3028
  %inc316 = add nuw nsw i64 %x191.2659, 1, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %inc316, metadata !2848, metadata !DIExpression()), !dbg !3028
  %exitcond686.not = icmp eq i64 %inc316, %56, !dbg !3071
  br i1 %exitcond686.not, label %for.end317, label %for.body278, !dbg !3074, !llvm.loop !3093

for.end317:                                       ; preds = %if.end311, %for.cond274.preheader
  %call318 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call62, ptr noundef %exception) #9, !dbg !3095
  %cmp319 = icmp ne i32 %call318, 0, !dbg !3097
  %spec.select540 = zext i1 %cmp319 to i32, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %spec.select540, metadata !2827, metadata !DIExpression()), !dbg !2853
  %64 = load ptr, ptr %progress_monitor323, align 8, !dbg !3099, !tbaa !833
  %cmp324.not = icmp eq ptr %64, null, !dbg !3100
  br i1 %cmp324.not, label %cleanup336, label %SetImageProgress.exit551, !dbg !3101

SetImageProgress.exit551:                         ; preds = %for.end317
  %inc328 = add nsw i64 %progress.3663, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %inc328, metadata !2828, metadata !DIExpression()), !dbg !2853
  %65 = load i64, ptr %rows184, align 8, !dbg !3103, !tbaa !777
  call void @llvm.dbg.value(metadata ptr %image, metadata !838, metadata !DIExpression()) #8, !dbg !3104
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !844, metadata !DIExpression()) #8, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %progress.3663, metadata !845, metadata !DIExpression()) #8, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %65, metadata !846, metadata !DIExpression()) #8, !dbg !3104
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i542) #8, !dbg !3106
  call void @llvm.dbg.declare(metadata ptr %message.i542, metadata !847, metadata !DIExpression()) #8, !dbg !3107
  %call.i546 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i542, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename.i545) #8, !dbg !3108
  %66 = load ptr, ptr %progress_monitor323, align 8, !dbg !3109, !tbaa !833
  %67 = load ptr, ptr %client_data.i547, align 8, !dbg !3110, !tbaa !855
  %call4.i548 = call i32 %66(ptr noundef nonnull %message.i542, i64 noundef %progress.3663, i64 noundef %65, ptr noundef %67) #8, !dbg !3111
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i542) #8, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %call4.i548, metadata !2850, metadata !DIExpression()), !dbg !3113
  %cmp331 = icmp eq i32 %call4.i548, 0, !dbg !3114
  %spec.select541 = select i1 %cmp331, i32 0, i32 %spec.select540, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %spec.select541, metadata !2827, metadata !DIExpression()), !dbg !2853
  br label %cleanup336, !dbg !3117

cleanup336:                                       ; preds = %for.end317, %SetImageProgress.exit551, %if.end207, %if.end196, %lor.lhs.false202, %for.body187
  %progress.5 = phi i64 [ %progress.3663, %for.body187 ], [ %progress.3663, %lor.lhs.false202 ], [ %progress.3663, %if.end196 ], [ %progress.3663, %if.end207 ], [ %inc328, %SetImageProgress.exit551 ], [ %progress.3663, %for.end317 ], !dbg !2853
  %status.9 = phi i32 [ 0, %for.body187 ], [ 1, %lor.lhs.false202 ], [ 1, %if.end196 ], [ 0, %if.end207 ], [ %spec.select541, %SetImageProgress.exit551 ], [ %spec.select540, %for.end317 ], !dbg !2853
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !2827, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %progress.5, metadata !2828, metadata !DIExpression()), !dbg !2853
  %inc344 = add nsw i64 %y.1665, 1, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %inc344, metadata !2830, metadata !DIExpression()), !dbg !2853
  %68 = load i64, ptr %rows184, align 8, !dbg !3019, !tbaa !777
  %cmp185 = icmp slt i64 %inc344, %68, !dbg !3020
  br i1 %cmp185, label %for.body187, label %for.end345, !dbg !3021, !llvm.loop !3119

for.end345:                                       ; preds = %cleanup336, %for.end179
  %status.5.lcssa = phi i32 [ %status.0.lcssa, %for.end179 ], [ %status.9, %cleanup336 ], !dbg !3017
  %call346 = call ptr @DestroyCacheView(ptr noundef %call62) #8, !dbg !3121
  call void @llvm.dbg.value(metadata ptr %call346, metadata !2825, metadata !DIExpression()), !dbg !2853
  %call347 = call ptr @DestroyCacheView(ptr noundef %call61) #8, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %call347, metadata !2824, metadata !DIExpression()), !dbg !2853
  %cmp348 = icmp eq i32 %status.5.lcssa, 0, !dbg !3123
  br i1 %cmp348, label %if.then350, label %cleanup353, !dbg !3125

if.then350:                                       ; preds = %for.end345
  %call351 = call ptr @DestroyImage(ptr noundef nonnull %call2) #8, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %call351, metadata !2826, metadata !DIExpression()), !dbg !2853
  br label %cleanup353, !dbg !3127

cleanup353:                                       ; preds = %for.end345, %if.then350, %if.end, %if.then8
  %retval.0 = phi ptr [ null, %if.then8 ], [ null, %if.end ], [ %call351, %if.then350 ], [ %call2, %for.end345 ], !dbg !2853
  ret ptr %retval.0, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransformImage(ptr nocapture noundef %image, ptr noundef %crop_geometry, ptr noundef %image_geometry) local_unnamed_addr #0 !dbg !3129 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3133, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %crop_geometry, metadata !3134, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %image_geometry, metadata !3135, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #8, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !3139, metadata !DIExpression()), !dbg !3145
  %0 = load ptr, ptr %image, align 8, !dbg !3146, !tbaa !1574
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !3148
  %1 = load i32, ptr %debug, align 8, !dbg !3148, !tbaa !768
  %cmp.not = icmp eq i32 %1, 0, !dbg !3149
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3150

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !3151
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !3152
  %.pre = load ptr, ptr %image, align 8, !dbg !3153, !tbaa !1574
  br label %if.end, !dbg !3154

if.end:                                           ; preds = %if.then, %entry
  %2 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !3153
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3143
  %cmp1.not = icmp eq ptr %crop_geometry, null, !dbg !3155
  br i1 %cmp1.not, label %if.end11, label %if.then2, !dbg !3156

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58, !dbg !3157
  %call3 = tail call ptr @CropImageToTiles(ptr noundef %2, ptr noundef nonnull %crop_geometry, ptr noundef nonnull %exception), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %call3, metadata !3140, metadata !DIExpression()), !dbg !3159
  %cmp4 = icmp eq ptr %call3, null, !dbg !3160
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3162

if.then5:                                         ; preds = %if.then2
  %3 = load ptr, ptr %image, align 8, !dbg !3163, !tbaa !1574
  %exception6 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 58, !dbg !3164
  %call7 = tail call ptr @CloneImage(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %exception6) #8, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %call7, metadata !3137, metadata !DIExpression()), !dbg !3143
  br label %if.end10, !dbg !3166

if.else:                                          ; preds = %if.then2
  %call8 = tail call ptr @DestroyImage(ptr noundef %2) #8, !dbg !3167
  call void @llvm.dbg.value(metadata ptr %call8, metadata !3137, metadata !DIExpression()), !dbg !3143
  %call9 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %call3) #8, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3137, metadata !DIExpression()), !dbg !3143
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %transform_image.0 = phi ptr [ %call7, %if.then5 ], [ %call9, %if.else ], !dbg !3170
  call void @llvm.dbg.value(metadata ptr %transform_image.0, metadata !3137, metadata !DIExpression()), !dbg !3143
  store ptr %transform_image.0, ptr %image, align 8, !dbg !3171, !tbaa !1574
  br label %if.end11, !dbg !3172

if.end11:                                         ; preds = %if.end10, %if.end
  %4 = phi ptr [ %transform_image.0, %if.end10 ], [ %2, %if.end ], !dbg !3143
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3143
  %cmp12 = icmp eq ptr %image_geometry, null, !dbg !3173
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !3175

if.end14:                                         ; preds = %if.end11
  %exception15 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 58, !dbg !3176
  %call16 = call i32 @ParseRegionGeometry(ptr noundef %4, ptr noundef nonnull %image_geometry, ptr noundef nonnull %geometry, ptr noundef nonnull %exception15) #8, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %call16, metadata !3138, metadata !DIExpression()), !dbg !3143
  %columns = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 7, !dbg !3178
  %5 = load i64, ptr %columns, align 8, !dbg !3178, !tbaa !775
  %6 = load i64, ptr %geometry, align 8, !dbg !3180, !tbaa !1307
  %cmp17 = icmp eq i64 %5, %6, !dbg !3181
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.end20_crit_edge, !dbg !3182

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  %height22.phi.trans.insert = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  %.pre55 = load i64, ptr %height22.phi.trans.insert, align 8, !dbg !3183, !tbaa !1314
  br label %if.end20, !dbg !3182

land.lhs.true:                                    ; preds = %if.end14
  %rows = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 8, !dbg !3184
  %7 = load i64, ptr %rows, align 8, !dbg !3184, !tbaa !777
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !3185
  %8 = load i64, ptr %height, align 8, !dbg !3185, !tbaa !1314
  %cmp18 = icmp eq i64 %7, %8, !dbg !3186
  br i1 %cmp18, label %cleanup, label %if.end20, !dbg !3187

if.end20:                                         ; preds = %if.end14.if.end20_crit_edge, %land.lhs.true
  %9 = phi i64 [ %.pre55, %if.end14.if.end20_crit_edge ], [ %8, %land.lhs.true ], !dbg !3183
  %filter = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 32, !dbg !3188
  %10 = load i32, ptr %filter, align 8, !dbg !3188, !tbaa !3189
  %blur = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 30, !dbg !3190
  %11 = load double, ptr %blur, align 8, !dbg !3190, !tbaa !3191
  %12 = load ptr, ptr %image, align 8, !dbg !3192, !tbaa !1574
  %exception23 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58, !dbg !3193
  %call24 = call ptr @ResizeImage(ptr noundef nonnull %4, i64 noundef %6, i64 noundef %9, i32 noundef %10, double noundef %11, ptr noundef nonnull %exception23) #8, !dbg !3194
  call void @llvm.dbg.value(metadata ptr %call24, metadata !3136, metadata !DIExpression()), !dbg !3143
  %cmp25 = icmp eq ptr %call24, null, !dbg !3195
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !3197

if.end27:                                         ; preds = %if.end20
  %call28 = call ptr @DestroyImage(ptr noundef nonnull %4) #8, !dbg !3198
  call void @llvm.dbg.value(metadata ptr %call28, metadata !3137, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %call24, metadata !3137, metadata !DIExpression()), !dbg !3143
  store ptr %call24, ptr %image, align 8, !dbg !3199, !tbaa !1574
  br label %cleanup, !dbg !3200

cleanup:                                          ; preds = %if.end20, %land.lhs.true, %if.end11, %if.end27
  %retval.0 = phi i32 [ 1, %if.end27 ], [ 1, %if.end11 ], [ 1, %land.lhs.true ], [ 0, %if.end20 ], !dbg !3143
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #8, !dbg !3201
  ret i32 %retval.0, !dbg !3201
}

declare !dbg !3202 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !3203 i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3204 ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @TransformImages(ptr nocapture noundef %images, ptr noundef %crop_geometry, ptr noundef %image_geometry) local_unnamed_addr #0 !dbg !3209 {
entry:
  %image = alloca ptr, align 8
  %transform_images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !3211, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %crop_geometry, metadata !3212, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %image_geometry, metadata !3213, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %image) #8, !dbg !3220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %transform_images) #8, !dbg !3220
  %0 = load ptr, ptr %images, align 8, !dbg !3221, !tbaa !1574
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !3223
  %1 = load i32, ptr %debug, align 8, !dbg !3223, !tbaa !768
  %cmp.not = icmp eq i32 %1, 0, !dbg !3224
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3225

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !3226
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2146, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !3227
  %.pre = load ptr, ptr %images, align 8, !dbg !3228, !tbaa !1574
  br label %if.end, !dbg !3229

if.end:                                           ; preds = %if.then, %entry
  %2 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !3228
  %exception = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58, !dbg !3230
  %call1 = tail call ptr @ImageListToArray(ptr noundef %2, ptr noundef nonnull %exception) #8, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3215, metadata !DIExpression()), !dbg !3219
  %cmp2 = icmp eq ptr %call1, null, !dbg !3232
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !3234

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !3217, metadata !DIExpression()), !dbg !3219
  %call5 = tail call ptr @NewImageList() #8, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %call5, metadata !3216, metadata !DIExpression()), !dbg !3219
  store ptr %call5, ptr %transform_images, align 8, !dbg !3236, !tbaa !1574
  call void @llvm.dbg.value(metadata i64 0, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 1, metadata !3217, metadata !DIExpression()), !dbg !3219
  %3 = load ptr, ptr %call1, align 8, !dbg !3237, !tbaa !1574
  %cmp6.not25 = icmp eq ptr %3, null, !dbg !3240
  br i1 %cmp6.not25, label %for.end, label %for.body, !dbg !3241

for.body:                                         ; preds = %if.end4, %for.body
  %4 = phi ptr [ %6, %for.body ], [ %3, %if.end4 ]
  %i.027 = phi i64 [ %inc, %for.body ], [ 0, %if.end4 ]
  %status.026 = phi i32 [ %and, %for.body ], [ 1, %if.end4 ]
  call void @llvm.dbg.value(metadata i64 %i.027, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %status.026, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %4, metadata !3214, metadata !DIExpression()), !dbg !3219
  store ptr %4, ptr %image, align 8, !dbg !3242, !tbaa !1574
  call void @llvm.dbg.value(metadata ptr %image, metadata !3214, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %call8 = call i32 @TransformImage(ptr noundef nonnull %image, ptr noundef %crop_geometry, ptr noundef %image_geometry), !dbg !3244
  %and = and i32 %call8, %status.026, !dbg !3245
  call void @llvm.dbg.value(metadata i32 %and, metadata !3217, metadata !DIExpression()), !dbg !3219
  %5 = load ptr, ptr %image, align 8, !dbg !3246, !tbaa !1574
  call void @llvm.dbg.value(metadata ptr %5, metadata !3214, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %transform_images, metadata !3216, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  call void @AppendImageToList(ptr noundef nonnull %transform_images, ptr noundef %5) #8, !dbg !3247
  %inc = add nuw nsw i64 %i.027, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3218, metadata !DIExpression()), !dbg !3219
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %inc, !dbg !3237
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !3237, !tbaa !1574
  %cmp6.not = icmp eq ptr %6, null, !dbg !3240
  br i1 %cmp6.not, label %for.end.loopexit, label %for.body, !dbg !3241, !llvm.loop !3249

for.end.loopexit:                                 ; preds = %for.body
  %.pre28 = load ptr, ptr %transform_images, align 8, !dbg !3251, !tbaa !1574
  %phi.cmp = icmp ne i32 %and, 0, !dbg !3251
  %phi.cast = zext i1 %phi.cmp to i32, !dbg !3251
  br label %for.end, !dbg !3251

for.end:                                          ; preds = %for.end.loopexit, %if.end4
  %7 = phi ptr [ %call5, %if.end4 ], [ %.pre28, %for.end.loopexit ], !dbg !3251
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %phi.cast, %for.end.loopexit ]
  call void @llvm.dbg.value(metadata ptr %7, metadata !3216, metadata !DIExpression()), !dbg !3219
  store ptr %7, ptr %images, align 8, !dbg !3252, !tbaa !1574
  %call9 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #8, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3215, metadata !DIExpression()), !dbg !3219
  br label %cleanup, !dbg !3254

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 0, %if.end ], !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %transform_images) #8, !dbg !3255
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %image) #8, !dbg !3255
  ret i32 %retval.0, !dbg !3255
}

declare !dbg !3256 ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3259 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @TrimImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !3262 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3264, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3265, metadata !DIExpression()), !dbg !3270
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #8, !dbg !3271
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !3266, metadata !DIExpression()), !dbg !3272
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3273
  %0 = load i32, ptr %debug, align 8, !dbg !3273, !tbaa !768
  %cmp.not = icmp eq i32 %0, 0, !dbg !3275
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3276

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3277
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2469, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !3278
  br label %if.end, !dbg !3279

if.end:                                           ; preds = %if.then, %entry
  call void @GetImageBoundingBox(ptr nonnull sret(%struct._RectangleInfo) align 8 %geometry, ptr noundef nonnull %image, ptr noundef %exception) #8, !dbg !3280
  %1 = load i64, ptr %geometry, align 8, !dbg !3281, !tbaa !1307
  %cmp1 = icmp eq i64 %1, 0, !dbg !3282
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  %2 = load i64, ptr %height, align 8
  %cmp2 = icmp eq i64 %2, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2, !dbg !3283
  br i1 %or.cond, label %if.then3, label %if.end12, !dbg !3283

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %exception) #8, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %call4, metadata !3267, metadata !DIExpression()), !dbg !3285
  %cmp5 = icmp eq ptr %call4, null, !dbg !3286
  br i1 %cmp5, label %cleanup21, label %if.end7, !dbg !3288

if.end7:                                          ; preds = %if.then3
  %opacity = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 12, i32 3, !dbg !3289
  store i16 -1, ptr %opacity, align 2, !dbg !3290, !tbaa !1897
  %call8 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %call4) #8, !dbg !3291
  %page = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 26, !dbg !3292
  %page9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !3293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page, ptr noundef nonnull align 8 dereferenceable(32) %page9, i64 16, i1 false), !dbg !3293, !tbaa.struct !783
  %x = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 26, i32 2, !dbg !3294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 -1, i64 16, i1 false), !dbg !3295
  br label %cleanup21, !dbg !3296

if.end12:                                         ; preds = %if.end
  %x14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !3297
  %3 = load i64, ptr %x14, align 8, !dbg !3297, !tbaa !1980
  %x15 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !3298
  %4 = load i64, ptr %x15, align 8, !dbg !3299, !tbaa !1305
  %add = add nsw i64 %4, %3, !dbg !3299
  store i64 %add, ptr %x15, align 8, !dbg !3299, !tbaa !1305
  %y17 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !3300
  %5 = load i64, ptr %y17, align 8, !dbg !3300, !tbaa !1983
  %y18 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !3301
  %6 = load i64, ptr %y18, align 8, !dbg !3302, !tbaa !1312
  %add19 = add nsw i64 %6, %5, !dbg !3302
  store i64 %add19, ptr %y18, align 8, !dbg !3302, !tbaa !1312
  %call20 = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %geometry, ptr noundef %exception), !dbg !3303
  br label %cleanup21, !dbg !3304

cleanup21:                                        ; preds = %if.end7, %if.then3, %if.end12
  %retval.1 = phi ptr [ %call20, %if.end12 ], [ %call4, %if.end7 ], [ null, %if.then3 ], !dbg !3270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #8, !dbg !3305
  ret ptr %retval.1, !dbg !3305
}

declare !dbg !3306 void @GetImageBoundingBox(ptr sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3310 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!653, !654, !655, !656, !657, !658}
!llvm.ident = !{!659}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !421, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/transform.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "051aaf514c06d6d0e3d49c9b2a68a4bf")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UndefinedClass", value: 0)
!8 = !DIEnumerator(name: "DirectClass", value: 1)
!9 = !DIEnumerator(name: "PseudoClass", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 25, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!13 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!14 = !DIEnumerator(name: "RGBColorspace", value: 1)
!15 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!16 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!17 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!18 = !DIEnumerator(name: "LabColorspace", value: 5)
!19 = !DIEnumerator(name: "XYZColorspace", value: 6)
!20 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!21 = !DIEnumerator(name: "YCCColorspace", value: 8)
!22 = !DIEnumerator(name: "YIQColorspace", value: 9)
!23 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!24 = !DIEnumerator(name: "YUVColorspace", value: 11)
!25 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!26 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!27 = !DIEnumerator(name: "HSBColorspace", value: 14)
!28 = !DIEnumerator(name: "HSLColorspace", value: 15)
!29 = !DIEnumerator(name: "HWBColorspace", value: 16)
!30 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!31 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!32 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!33 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!34 = !DIEnumerator(name: "LogColorspace", value: 21)
!35 = !DIEnumerator(name: "CMYColorspace", value: 22)
!36 = !DIEnumerator(name: "LuvColorspace", value: 23)
!37 = !DIEnumerator(name: "HCLColorspace", value: 24)
!38 = !DIEnumerator(name: "LCHColorspace", value: 25)
!39 = !DIEnumerator(name: "LMSColorspace", value: 26)
!40 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!41 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!42 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!43 = !DIEnumerator(name: "HSIColorspace", value: 30)
!44 = !DIEnumerator(name: "HSVColorspace", value: 31)
!45 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!46 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 25, baseType: !5, size: 32, elements: !49)
!48 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!50 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!51 = !DIEnumerator(name: "NoCompression", value: 1)
!52 = !DIEnumerator(name: "BZipCompression", value: 2)
!53 = !DIEnumerator(name: "DXT1Compression", value: 3)
!54 = !DIEnumerator(name: "DXT3Compression", value: 4)
!55 = !DIEnumerator(name: "DXT5Compression", value: 5)
!56 = !DIEnumerator(name: "FaxCompression", value: 6)
!57 = !DIEnumerator(name: "Group4Compression", value: 7)
!58 = !DIEnumerator(name: "JPEGCompression", value: 8)
!59 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!60 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!61 = !DIEnumerator(name: "LZWCompression", value: 11)
!62 = !DIEnumerator(name: "RLECompression", value: 12)
!63 = !DIEnumerator(name: "ZipCompression", value: 13)
!64 = !DIEnumerator(name: "ZipSCompression", value: 14)
!65 = !DIEnumerator(name: "PizCompression", value: 15)
!66 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!67 = !DIEnumerator(name: "B44Compression", value: 17)
!68 = !DIEnumerator(name: "B44ACompression", value: 18)
!69 = !DIEnumerator(name: "LZMACompression", value: 19)
!70 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!71 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 75, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83}
!75 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!76 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!77 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!78 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!79 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!80 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!81 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!82 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!83 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !85)
!85 = !{!86, !87}
!86 = !DIEnumerator(name: "MagickFalse", value: 0)
!87 = !DIEnumerator(name: "MagickTrue", value: 1)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 42, baseType: !5, size: 32, elements: !90)
!89 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!92 = !DIEnumerator(name: "SaturationIntent", value: 1)
!93 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!94 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!95 = !DIEnumerator(name: "RelativeIntent", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 88, baseType: !5, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!99 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!100 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 32, baseType: !5, size: 32, elements: !103)
!102 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!104 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!105 = !DIEnumerator(name: "PointFilter", value: 1)
!106 = !DIEnumerator(name: "BoxFilter", value: 2)
!107 = !DIEnumerator(name: "TriangleFilter", value: 3)
!108 = !DIEnumerator(name: "HermiteFilter", value: 4)
!109 = !DIEnumerator(name: "HanningFilter", value: 5)
!110 = !DIEnumerator(name: "HammingFilter", value: 6)
!111 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!112 = !DIEnumerator(name: "GaussianFilter", value: 8)
!113 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!114 = !DIEnumerator(name: "CubicFilter", value: 10)
!115 = !DIEnumerator(name: "CatromFilter", value: 11)
!116 = !DIEnumerator(name: "MitchellFilter", value: 12)
!117 = !DIEnumerator(name: "JincFilter", value: 13)
!118 = !DIEnumerator(name: "SincFilter", value: 14)
!119 = !DIEnumerator(name: "SincFastFilter", value: 15)
!120 = !DIEnumerator(name: "KaiserFilter", value: 16)
!121 = !DIEnumerator(name: "WelshFilter", value: 17)
!122 = !DIEnumerator(name: "ParzenFilter", value: 18)
!123 = !DIEnumerator(name: "BohmanFilter", value: 19)
!124 = !DIEnumerator(name: "BartlettFilter", value: 20)
!125 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!126 = !DIEnumerator(name: "LanczosFilter", value: 22)
!127 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!128 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!129 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!130 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!131 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!132 = !DIEnumerator(name: "CosineFilter", value: 28)
!133 = !DIEnumerator(name: "SplineFilter", value: 29)
!134 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!135 = !DIEnumerator(name: "SentinelFilter", value: 31)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 63, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!139 = !DIEnumerator(name: "NoInterlace", value: 1)
!140 = !DIEnumerator(name: "LineInterlace", value: 2)
!141 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!142 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!143 = !DIEnumerator(name: "GIFInterlace", value: 5)
!144 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!145 = !DIEnumerator(name: "PNGInterlace", value: 7)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 30, baseType: !5, size: 32, elements: !148)
!147 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!150 = !DIEnumerator(name: "LSBEndian", value: 1)
!151 = !DIEnumerator(name: "MSBEndian", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 77, baseType: !5, size: 32, elements: !154)
!153 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!155 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!156 = !DIEnumerator(name: "ForgetGravity", value: 0)
!157 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!158 = !DIEnumerator(name: "NorthGravity", value: 2)
!159 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!160 = !DIEnumerator(name: "WestGravity", value: 4)
!161 = !DIEnumerator(name: "CenterGravity", value: 5)
!162 = !DIEnumerator(name: "EastGravity", value: 6)
!163 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!164 = !DIEnumerator(name: "SouthGravity", value: 8)
!165 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!166 = !DIEnumerator(name: "StaticGravity", value: 10)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 25, baseType: !5, size: 32, elements: !169)
!168 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!170 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!171 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!172 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!173 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!174 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!175 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!176 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!177 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!178 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!179 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!180 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!181 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!182 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!183 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!184 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!185 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!186 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!187 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!188 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!189 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!190 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!191 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!192 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!193 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!194 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!195 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!196 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!197 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!198 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!199 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!200 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!201 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!202 = !DIEnumerator(name: "InCompositeOp", value: 32)
!203 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!204 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!205 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!206 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!207 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!208 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!209 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!210 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!211 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!212 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!213 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!214 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!215 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!216 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!217 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!218 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!219 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!220 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!221 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!222 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!223 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!224 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!225 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!226 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!227 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!228 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!229 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!230 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!231 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!232 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!233 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!234 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!235 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!236 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!237 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 25, baseType: !5, size: 32, elements: !240)
!239 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!242 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!243 = !DIEnumerator(name: "NoneDispose", value: 1)
!244 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!245 = !DIEnumerator(name: "PreviousDispose", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !247, line: 25, baseType: !5, size: 32, elements: !248)
!247 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!250 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!251 = !DIEnumerator(name: "RunningTimerState", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 28, baseType: !5, size: 32, elements: !254)
!253 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!255 = !DIEnumerator(name: "UndefinedException", value: 0)
!256 = !DIEnumerator(name: "WarningException", value: 300)
!257 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!258 = !DIEnumerator(name: "TypeWarning", value: 305)
!259 = !DIEnumerator(name: "OptionWarning", value: 310)
!260 = !DIEnumerator(name: "DelegateWarning", value: 315)
!261 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!262 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!263 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!264 = !DIEnumerator(name: "BlobWarning", value: 335)
!265 = !DIEnumerator(name: "StreamWarning", value: 340)
!266 = !DIEnumerator(name: "CacheWarning", value: 345)
!267 = !DIEnumerator(name: "CoderWarning", value: 350)
!268 = !DIEnumerator(name: "FilterWarning", value: 352)
!269 = !DIEnumerator(name: "ModuleWarning", value: 355)
!270 = !DIEnumerator(name: "DrawWarning", value: 360)
!271 = !DIEnumerator(name: "ImageWarning", value: 365)
!272 = !DIEnumerator(name: "WandWarning", value: 370)
!273 = !DIEnumerator(name: "RandomWarning", value: 375)
!274 = !DIEnumerator(name: "XServerWarning", value: 380)
!275 = !DIEnumerator(name: "MonitorWarning", value: 385)
!276 = !DIEnumerator(name: "RegistryWarning", value: 390)
!277 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!278 = !DIEnumerator(name: "PolicyWarning", value: 399)
!279 = !DIEnumerator(name: "ErrorException", value: 400)
!280 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!281 = !DIEnumerator(name: "TypeError", value: 405)
!282 = !DIEnumerator(name: "OptionError", value: 410)
!283 = !DIEnumerator(name: "DelegateError", value: 415)
!284 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!285 = !DIEnumerator(name: "CorruptImageError", value: 425)
!286 = !DIEnumerator(name: "FileOpenError", value: 430)
!287 = !DIEnumerator(name: "BlobError", value: 435)
!288 = !DIEnumerator(name: "StreamError", value: 440)
!289 = !DIEnumerator(name: "CacheError", value: 445)
!290 = !DIEnumerator(name: "CoderError", value: 450)
!291 = !DIEnumerator(name: "FilterError", value: 452)
!292 = !DIEnumerator(name: "ModuleError", value: 455)
!293 = !DIEnumerator(name: "DrawError", value: 460)
!294 = !DIEnumerator(name: "ImageError", value: 465)
!295 = !DIEnumerator(name: "WandError", value: 470)
!296 = !DIEnumerator(name: "RandomError", value: 475)
!297 = !DIEnumerator(name: "XServerError", value: 480)
!298 = !DIEnumerator(name: "MonitorError", value: 485)
!299 = !DIEnumerator(name: "RegistryError", value: 490)
!300 = !DIEnumerator(name: "ConfigureError", value: 495)
!301 = !DIEnumerator(name: "PolicyError", value: 499)
!302 = !DIEnumerator(name: "FatalErrorException", value: 700)
!303 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!304 = !DIEnumerator(name: "TypeFatalError", value: 705)
!305 = !DIEnumerator(name: "OptionFatalError", value: 710)
!306 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!307 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!308 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!309 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!310 = !DIEnumerator(name: "BlobFatalError", value: 735)
!311 = !DIEnumerator(name: "StreamFatalError", value: 740)
!312 = !DIEnumerator(name: "CacheFatalError", value: 745)
!313 = !DIEnumerator(name: "CoderFatalError", value: 750)
!314 = !DIEnumerator(name: "FilterFatalError", value: 752)
!315 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!316 = !DIEnumerator(name: "DrawFatalError", value: 760)
!317 = !DIEnumerator(name: "ImageFatalError", value: 765)
!318 = !DIEnumerator(name: "WandFatalError", value: 770)
!319 = !DIEnumerator(name: "RandomFatalError", value: 775)
!320 = !DIEnumerator(name: "XServerFatalError", value: 780)
!321 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!322 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!323 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!324 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 31, baseType: !5, size: 32, elements: !327)
!326 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!328 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!329 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!330 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!331 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!332 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!333 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!334 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!335 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!336 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!337 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!338 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!339 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!340 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!341 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 47, baseType: !5, size: 32, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!344 = !DIEnumerator(name: "UndefinedType", value: 0)
!345 = !DIEnumerator(name: "BilevelType", value: 1)
!346 = !DIEnumerator(name: "GrayscaleType", value: 2)
!347 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!348 = !DIEnumerator(name: "PaletteType", value: 4)
!349 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!350 = !DIEnumerator(name: "TrueColorType", value: 6)
!351 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!352 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!353 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!354 = !DIEnumerator(name: "OptimizeType", value: 10)
!355 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 67, baseType: !5, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!358 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!359 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!360 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!361 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!362 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!363 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!364 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!365 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!366 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!367 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 34, baseType: !5, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!371 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!372 = !DIEnumerator(name: "NoEvents", value: 0)
!373 = !DIEnumerator(name: "TraceEvent", value: 1)
!374 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!375 = !DIEnumerator(name: "BlobEvent", value: 4)
!376 = !DIEnumerator(name: "CacheEvent", value: 8)
!377 = !DIEnumerator(name: "CoderEvent", value: 16)
!378 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!379 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!380 = !DIEnumerator(name: "DrawEvent", value: 128)
!381 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!382 = !DIEnumerator(name: "ImageEvent", value: 512)
!383 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!384 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!385 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!386 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!387 = !DIEnumerator(name: "TransformEvent", value: 16384)
!388 = !DIEnumerator(name: "UserEvent", value: 36864)
!389 = !DIEnumerator(name: "WandEvent", value: 65536)
!390 = !DIEnumerator(name: "X11Event", value: 131072)
!391 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!392 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 25, baseType: !5, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!395 = !DIEnumerator(name: "NoValue", value: 0)
!396 = !DIEnumerator(name: "XValue", value: 1)
!397 = !DIEnumerator(name: "XiValue", value: 1)
!398 = !DIEnumerator(name: "YValue", value: 2)
!399 = !DIEnumerator(name: "PsiValue", value: 2)
!400 = !DIEnumerator(name: "WidthValue", value: 4)
!401 = !DIEnumerator(name: "RhoValue", value: 4)
!402 = !DIEnumerator(name: "HeightValue", value: 8)
!403 = !DIEnumerator(name: "SigmaValue", value: 8)
!404 = !DIEnumerator(name: "ChiValue", value: 16)
!405 = !DIEnumerator(name: "XiNegative", value: 32)
!406 = !DIEnumerator(name: "XNegative", value: 32)
!407 = !DIEnumerator(name: "PsiNegative", value: 64)
!408 = !DIEnumerator(name: "YNegative", value: 64)
!409 = !DIEnumerator(name: "ChiNegative", value: 128)
!410 = !DIEnumerator(name: "PercentValue", value: 4096)
!411 = !DIEnumerator(name: "AspectValue", value: 8192)
!412 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!413 = !DIEnumerator(name: "LessValue", value: 16384)
!414 = !DIEnumerator(name: "GreaterValue", value: 32768)
!415 = !DIEnumerator(name: "MinimumValue", value: 65536)
!416 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!417 = !DIEnumerator(name: "AreaValue", value: 131072)
!418 = !DIEnumerator(name: "DecimalValue", value: 262144)
!419 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!420 = !DIEnumerator(name: "AllValues", value: 2147483647)
!421 = !{!422, !478, !435, !487, !433, !644, !446, !646, !648, !551, !451, !647, !460, !650, !556, !652}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !425)
!425 = !{!426, !428, !430, !432, !436, !438, !440, !441, !442, !443, !444, !445, !456, !457, !458, !459, !461, !475, !477, !479, !481, !484, !485, !486, !492, !493, !494, !502, !503, !504, !505, !506, !507, !509, !511, !513, !515, !517, !519, !521, !522, !523, !524, !525, !526, !527, !535, !550, !564, !565, !566, !567, !571, !575, !579, !580, !581, !582, !583, !601, !602, !604, !605, !615, !616, !618, !619, !620, !621, !622, !623, !625, !626, !627, !628, !629, !630, !631, !633, !634, !635, !636, !637, !641, !643}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !424, file: !73, line: 153, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !424, file: !73, line: 156, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !424, file: !73, line: 159, baseType: !431, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !424, file: !73, line: 162, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !434, line: 46, baseType: !435)
!434 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!435 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !424, file: !73, line: 165, baseType: !437, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !424, file: !73, line: 168, baseType: !439, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !424, file: !73, line: 169, baseType: !439, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !424, file: !73, line: 172, baseType: !433, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !424, file: !73, line: 173, baseType: !433, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !424, file: !73, line: 174, baseType: !433, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !424, file: !73, line: 175, baseType: !433, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !424, file: !73, line: 178, baseType: !446, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !449)
!449 = !{!450, !453, !454, !455}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !448, file: !326, line: 143, baseType: !451, size: 16)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !452)
!452 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !448, file: !326, line: 144, baseType: !451, size: 16, offset: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !448, file: !326, line: 145, baseType: !451, size: 16, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !448, file: !326, line: 146, baseType: !451, size: 16, offset: 48)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !424, file: !73, line: 179, baseType: !447, size: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !424, file: !73, line: 180, baseType: !447, size: 64, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !424, file: !73, line: 181, baseType: !447, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !424, file: !73, line: 184, baseType: !460, size: 64, offset: 832)
!460 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !424, file: !73, line: 187, baseType: !462, size: 768, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !464)
!464 = !{!465, !472, !473, !474}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !463, file: !73, line: 124, baseType: !466, size: 192)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !467, file: !73, line: 98, baseType: !460, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !467, file: !73, line: 99, baseType: !460, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !467, file: !73, line: 100, baseType: !460, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !463, file: !73, line: 125, baseType: !466, size: 192, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !463, file: !73, line: 126, baseType: !466, size: 192, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !463, file: !73, line: 127, baseType: !466, size: 192, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !424, file: !73, line: 190, baseType: !476, size: 32, offset: 1664)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !424, file: !73, line: 193, baseType: !478, size: 64, offset: 1728)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !424, file: !73, line: 196, baseType: !480, size: 32, offset: 1792)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !424, file: !73, line: 199, baseType: !482, size: 64, offset: 1856)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !424, file: !73, line: 200, baseType: !482, size: 64, offset: 1920)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !424, file: !73, line: 201, baseType: !482, size: 64, offset: 1984)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !424, file: !73, line: 204, baseType: !487, size: 64, offset: 2048)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !488, line: 77, baseType: !489)
!488 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !490, line: 193, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!491 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !424, file: !73, line: 207, baseType: !460, size: 64, offset: 2112)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !424, file: !73, line: 208, baseType: !460, size: 64, offset: 2176)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !424, file: !73, line: 211, baseType: !495, size: 256, offset: 2240)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !497)
!497 = !{!498, !499, !500, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !496, file: !153, line: 124, baseType: !433, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !496, file: !153, line: 125, baseType: !433, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !496, file: !153, line: 128, baseType: !487, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !496, file: !153, line: 129, baseType: !487, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !424, file: !73, line: 212, baseType: !495, size: 256, offset: 2496)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !424, file: !73, line: 213, baseType: !495, size: 256, offset: 2752)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !424, file: !73, line: 216, baseType: !460, size: 64, offset: 3008)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !424, file: !73, line: 217, baseType: !460, size: 64, offset: 3072)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !424, file: !73, line: 218, baseType: !460, size: 64, offset: 3136)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !424, file: !73, line: 221, baseType: !508, size: 32, offset: 3200)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !424, file: !73, line: 224, baseType: !510, size: 32, offset: 3232)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !424, file: !73, line: 227, baseType: !512, size: 32, offset: 3264)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !424, file: !73, line: 230, baseType: !514, size: 32, offset: 3296)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !424, file: !73, line: 233, baseType: !516, size: 32, offset: 3328)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !424, file: !73, line: 236, baseType: !518, size: 32, offset: 3360)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !424, file: !73, line: 239, baseType: !520, size: 64, offset: 3392)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !424, file: !73, line: 242, baseType: !433, size: 64, offset: 3456)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !424, file: !73, line: 243, baseType: !433, size: 64, offset: 3520)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !424, file: !73, line: 246, baseType: !487, size: 64, offset: 3584)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !424, file: !73, line: 249, baseType: !433, size: 64, offset: 3648)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !424, file: !73, line: 250, baseType: !433, size: 64, offset: 3712)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !424, file: !73, line: 253, baseType: !487, size: 64, offset: 3776)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !424, file: !73, line: 256, baseType: !528, size: 192, offset: 3840)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !529, line: 68, baseType: !530)
!529 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !529, line: 62, size: 192, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !530, file: !529, line: 65, baseType: !460, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !530, file: !529, line: 66, baseType: !460, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !530, file: !529, line: 67, baseType: !460, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !424, file: !73, line: 259, baseType: !536, size: 512, offset: 4032)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !538)
!538 = !{!539, !546, !547, !549}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !537, file: !247, line: 43, baseType: !540, size: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !542)
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !541, file: !247, line: 35, baseType: !460, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !541, file: !247, line: 36, baseType: !460, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !541, file: !247, line: 37, baseType: !460, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !537, file: !247, line: 44, baseType: !540, size: 192, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !537, file: !247, line: 47, baseType: !548, size: 32, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !537, file: !247, line: 50, baseType: !433, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !424, file: !73, line: 262, baseType: !551, size: 64, offset: 4544)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !552, line: 26, baseType: !553)
!552 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!439, !556, !558, !561, !478}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !560)
!560 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !563)
!563 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !424, file: !73, line: 265, baseType: !478, size: 64, offset: 4608)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !424, file: !73, line: 266, baseType: !478, size: 64, offset: 4672)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !424, file: !73, line: 267, baseType: !478, size: 64, offset: 4736)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !424, file: !73, line: 270, baseType: !568, size: 64, offset: 4800)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !424, file: !73, line: 273, baseType: !572, size: 64, offset: 4864)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !424, file: !73, line: 276, baseType: !576, size: 32768, offset: 4928)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 32768, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 4096)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !424, file: !73, line: 277, baseType: !576, size: 32768, offset: 37696)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !424, file: !73, line: 278, baseType: !576, size: 32768, offset: 70464)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !424, file: !73, line: 281, baseType: !433, size: 64, offset: 103232)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !424, file: !73, line: 282, baseType: !433, size: 64, offset: 103296)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !424, file: !73, line: 285, baseType: !584, size: 448, offset: 103360)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !586)
!586 = !{!587, !589, !591, !592, !593, !594, !595, !600}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !585, file: !253, line: 105, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !585, file: !253, line: 108, baseType: !590, size: 32, offset: 32)
!590 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !585, file: !253, line: 111, baseType: !482, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !585, file: !253, line: 112, baseType: !482, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !585, file: !253, line: 115, baseType: !478, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !585, file: !253, line: 118, baseType: !439, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !585, file: !253, line: 121, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !598, line: 26, baseType: !599)
!598 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !598, line: 25, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !585, file: !253, line: 124, baseType: !433, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !424, file: !73, line: 288, baseType: !439, size: 32, offset: 103808)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !424, file: !73, line: 291, baseType: !603, size: 64, offset: 103872)
!603 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !487)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !424, file: !73, line: 294, baseType: !596, size: 64, offset: 103936)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !424, file: !73, line: 297, baseType: !606, size: 256, offset: 104000)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !608)
!608 = !{!609, !610, !611, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !89, line: 30, baseType: !482, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !607, file: !89, line: 33, baseType: !433, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !607, file: !89, line: 36, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !607, file: !89, line: 39, baseType: !433, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !424, file: !73, line: 298, baseType: !606, size: 256, offset: 104256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !424, file: !73, line: 299, baseType: !617, size: 64, offset: 104512)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !424, file: !73, line: 302, baseType: !433, size: 64, offset: 104576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !424, file: !73, line: 305, baseType: !433, size: 64, offset: 104640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !424, file: !73, line: 308, baseType: !520, size: 64, offset: 104704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !73, line: 309, baseType: !520, size: 64, offset: 104768)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !73, line: 310, baseType: !520, size: 64, offset: 104832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !424, file: !73, line: 313, baseType: !624, size: 32, offset: 104896)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !424, file: !73, line: 316, baseType: !439, size: 32, offset: 104928)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !424, file: !73, line: 319, baseType: !447, size: 64, offset: 104960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !424, file: !73, line: 322, baseType: !520, size: 64, offset: 105024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !424, file: !73, line: 325, baseType: !495, size: 256, offset: 105088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !424, file: !73, line: 328, baseType: !478, size: 64, offset: 105344)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !424, file: !73, line: 329, baseType: !478, size: 64, offset: 105408)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !73, line: 332, baseType: !632, size: 32, offset: 105472)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !424, file: !73, line: 335, baseType: !439, size: 32, offset: 105504)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !424, file: !73, line: 338, baseType: !562, size: 64, offset: 105536)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !424, file: !73, line: 341, baseType: !439, size: 32, offset: 105600)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !424, file: !73, line: 344, baseType: !433, size: 64, offset: 105664)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !424, file: !73, line: 347, baseType: !638, size: 64, offset: 105728)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !639, line: 7, baseType: !640)
!639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !490, line: 160, baseType: !491)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !424, file: !73, line: 350, baseType: !642, size: 32, offset: 105792)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !424, file: !73, line: 353, baseType: !433, size: 64, offset: 105856)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !451)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !651)
!651 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!653 = !{i32 7, !"Dwarf Version", i32 5}
!654 = !{i32 2, !"Debug Info Version", i32 3}
!655 = !{i32 1, !"wchar_size", i32 4}
!656 = !{i32 7, !"PIC Level", i32 2}
!657 = !{i32 7, !"PIE Level", i32 2}
!658 = !{i32 7, !"uwtable", i32 2}
!659 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!660 = distinct !DISubprogram(name: "AutoOrientImage", scope: !661, file: !661, line: 98, type: !662, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !668)
!661 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "051aaf514c06d6d0e3d49c9b2a68a4bf")
!662 = !DISubroutineType(types: !663)
!663 = !{!422, !664, !666, !667}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "image", arg: 1, scope: !660, file: !661, line: 98, type: !664)
!670 = !DILocalVariable(name: "orientation", arg: 2, scope: !660, file: !661, line: 99, type: !666)
!671 = !DILocalVariable(name: "exception", arg: 3, scope: !660, file: !661, line: 99, type: !667)
!672 = !DILocalVariable(name: "orient_image", scope: !660, file: !661, line: 102, type: !422)
!673 = !DILocation(line: 0, scope: !660)
!674 = !DILocation(line: 109, column: 3, scope: !660)
!675 = !DILocation(line: 115, column: 20, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !661, line: 114, column: 5)
!677 = distinct !DILexicalBlock(scope: !660, file: !661, line: 110, column: 3)
!678 = !DILocation(line: 116, column: 7, scope: !676)
!679 = !DILocation(line: 120, column: 20, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !661, line: 119, column: 5)
!681 = !DILocation(line: 121, column: 7, scope: !680)
!682 = !DILocation(line: 125, column: 20, scope: !683)
!683 = distinct !DILexicalBlock(scope: !677, file: !661, line: 124, column: 5)
!684 = !DILocation(line: 126, column: 7, scope: !683)
!685 = !DILocation(line: 130, column: 20, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !661, line: 129, column: 5)
!687 = !DILocation(line: 131, column: 7, scope: !686)
!688 = !DILocation(line: 135, column: 20, scope: !689)
!689 = distinct !DILexicalBlock(scope: !677, file: !661, line: 134, column: 5)
!690 = !DILocation(line: 136, column: 7, scope: !689)
!691 = !DILocation(line: 140, column: 20, scope: !692)
!692 = distinct !DILexicalBlock(scope: !677, file: !661, line: 139, column: 5)
!693 = !DILocation(line: 141, column: 7, scope: !692)
!694 = !DILocation(line: 145, column: 20, scope: !695)
!695 = distinct !DILexicalBlock(scope: !677, file: !661, line: 144, column: 5)
!696 = !DILocation(line: 146, column: 7, scope: !695)
!697 = !DILocation(line: 150, column: 20, scope: !698)
!698 = distinct !DILexicalBlock(scope: !677, file: !661, line: 149, column: 5)
!699 = !DILocation(line: 151, column: 7, scope: !698)
!700 = !DILocation(line: 0, scope: !677)
!701 = !DILocation(line: 154, column: 20, scope: !702)
!702 = distinct !DILexicalBlock(scope: !660, file: !661, line: 154, column: 7)
!703 = !DILocation(line: 154, column: 7, scope: !660)
!704 = !DILocation(line: 155, column: 19, scope: !702)
!705 = !DILocation(line: 155, column: 30, scope: !702)
!706 = !{!707, !708, i64 24}
!707 = !{!"_Image", !708, i64 0, !708, i64 4, !708, i64 8, !710, i64 16, !708, i64 24, !708, i64 28, !708, i64 32, !710, i64 40, !710, i64 48, !710, i64 56, !710, i64 64, !711, i64 72, !712, i64 80, !712, i64 88, !712, i64 96, !714, i64 104, !715, i64 112, !708, i64 208, !711, i64 216, !708, i64 224, !711, i64 232, !711, i64 240, !711, i64 248, !710, i64 256, !714, i64 264, !714, i64 272, !717, i64 280, !717, i64 312, !717, i64 344, !714, i64 376, !714, i64 384, !714, i64 392, !708, i64 400, !708, i64 404, !708, i64 408, !708, i64 412, !708, i64 416, !708, i64 420, !711, i64 424, !710, i64 432, !710, i64 440, !710, i64 448, !710, i64 456, !710, i64 464, !710, i64 472, !718, i64 480, !719, i64 504, !711, i64 568, !711, i64 576, !711, i64 584, !711, i64 592, !711, i64 600, !711, i64 608, !708, i64 616, !708, i64 4712, !708, i64 8808, !710, i64 12904, !710, i64 12912, !721, i64 12920, !708, i64 12976, !710, i64 12984, !711, i64 12992, !723, i64 13000, !723, i64 13032, !711, i64 13064, !710, i64 13072, !710, i64 13080, !711, i64 13088, !711, i64 13096, !711, i64 13104, !708, i64 13112, !708, i64 13116, !712, i64 13120, !711, i64 13128, !717, i64 13136, !711, i64 13168, !711, i64 13176, !708, i64 13184, !708, i64 13188, !724, i64 13192, !708, i64 13200, !710, i64 13208, !710, i64 13216, !708, i64 13224, !710, i64 13232}
!708 = !{!"omnipotent char", !709, i64 0}
!709 = !{!"Simple C/C++ TBAA"}
!710 = !{!"long", !708, i64 0}
!711 = !{!"any pointer", !708, i64 0}
!712 = !{!"_PixelPacket", !713, i64 0, !713, i64 2, !713, i64 4, !713, i64 6}
!713 = !{!"short", !708, i64 0}
!714 = !{!"double", !708, i64 0}
!715 = !{!"_ChromaticityInfo", !716, i64 0, !716, i64 24, !716, i64 48, !716, i64 72}
!716 = !{!"_PrimaryInfo", !714, i64 0, !714, i64 8, !714, i64 16}
!717 = !{!"_RectangleInfo", !710, i64 0, !710, i64 8, !710, i64 16, !710, i64 24}
!718 = !{!"_ErrorInfo", !714, i64 0, !714, i64 8, !714, i64 16}
!719 = !{!"_TimerInfo", !720, i64 0, !720, i64 24, !708, i64 48, !710, i64 56}
!720 = !{!"_Timer", !714, i64 0, !714, i64 8, !714, i64 16}
!721 = !{!"_ExceptionInfo", !708, i64 0, !722, i64 4, !711, i64 8, !711, i64 16, !711, i64 24, !708, i64 32, !711, i64 40, !710, i64 48}
!722 = !{!"int", !708, i64 0}
!723 = !{!"_ProfileInfo", !711, i64 0, !710, i64 8, !711, i64 16, !710, i64 24}
!724 = !{!"long long", !708, i64 0}
!725 = !DILocation(line: 155, column: 5, scope: !702)
!726 = !DILocation(line: 156, column: 3, scope: !660)
!727 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!728 = !DISubroutineType(types: !729)
!729 = !{!422, !664, !730, !730, !731, !667}
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!732 = !{}
!733 = distinct !DISubprogram(name: "FlopImage", scope: !661, file: !661, line: 1360, type: !734, scopeLine: 1361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!422, !664, !667}
!736 = !{!737, !738, !739, !744, !745, !746, !747, !748, !749, !750, !755, !757, !759, !760, !762}
!737 = !DILocalVariable(name: "image", arg: 1, scope: !733, file: !661, line: 1360, type: !664)
!738 = !DILocalVariable(name: "exception", arg: 2, scope: !733, file: !661, line: 1360, type: !667)
!739 = !DILocalVariable(name: "flop_view", scope: !733, file: !661, line: 1365, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !742, line: 50, baseType: !743)
!742 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!744 = !DILocalVariable(name: "image_view", scope: !733, file: !661, line: 1366, type: !740)
!745 = !DILocalVariable(name: "flop_image", scope: !733, file: !661, line: 1369, type: !422)
!746 = !DILocalVariable(name: "status", scope: !733, file: !661, line: 1372, type: !439)
!747 = !DILocalVariable(name: "progress", scope: !733, file: !661, line: 1375, type: !559)
!748 = !DILocalVariable(name: "page", scope: !733, file: !661, line: 1378, type: !495)
!749 = !DILocalVariable(name: "y", scope: !733, file: !661, line: 1381, type: !487)
!750 = !DILocalVariable(name: "indexes", scope: !751, file: !661, line: 1407, type: !754)
!751 = distinct !DILexicalBlock(scope: !752, file: !661, line: 1405, column: 3)
!752 = distinct !DILexicalBlock(scope: !753, file: !661, line: 1404, column: 3)
!753 = distinct !DILexicalBlock(scope: !733, file: !661, line: 1404, column: 3)
!754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !648)
!755 = !DILocalVariable(name: "p", scope: !751, file: !661, line: 1410, type: !756)
!756 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !644)
!757 = !DILocalVariable(name: "flop_indexes", scope: !751, file: !661, line: 1413, type: !758)
!758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!759 = !DILocalVariable(name: "x", scope: !751, file: !661, line: 1416, type: !487)
!760 = !DILocalVariable(name: "q", scope: !751, file: !661, line: 1419, type: !761)
!761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !446)
!762 = !DILocalVariable(name: "proceed", scope: !763, file: !661, line: 1447, type: !439)
!763 = distinct !DILexicalBlock(scope: !764, file: !661, line: 1445, column: 7)
!764 = distinct !DILexicalBlock(scope: !751, file: !661, line: 1444, column: 9)
!765 = !DILocation(line: 0, scope: !733)
!766 = !DILocation(line: 1385, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !733, file: !661, line: 1385, column: 7)
!768 = !{!707, !708, i64 12976}
!769 = !DILocation(line: 1385, column: 20, scope: !767)
!770 = !DILocation(line: 1385, column: 7, scope: !733)
!771 = !DILocation(line: 1386, column: 68, scope: !767)
!772 = !DILocation(line: 1386, column: 12, scope: !767)
!773 = !DILocation(line: 1386, column: 5, scope: !767)
!774 = !DILocation(line: 1389, column: 38, scope: !733)
!775 = !{!707, !710, i64 40}
!776 = !DILocation(line: 1389, column: 53, scope: !733)
!777 = !{!707, !710, i64 48}
!778 = !DILocation(line: 1389, column: 14, scope: !733)
!779 = !DILocation(line: 1390, column: 18, scope: !780)
!780 = distinct !DILexicalBlock(scope: !733, file: !661, line: 1390, column: 7)
!781 = !DILocation(line: 1390, column: 7, scope: !733)
!782 = !DILocation(line: 1397, column: 15, scope: !733)
!783 = !{i64 0, i64 8, !784, i64 8, i64 8, !784, i64 16, i64 8, !784, i64 24, i64 8, !784}
!784 = !{!710, !710, i64 0}
!785 = !{i64 0, i64 8, !784, i64 8, i64 8, !784, i64 16, i64 8, !784}
!786 = !{i64 0, i64 8, !784, i64 8, i64 8, !784}
!787 = !{i64 0, i64 8, !784}
!788 = !DILocation(line: 1398, column: 14, scope: !733)
!789 = !DILocation(line: 1399, column: 13, scope: !733)
!790 = !DILocation(line: 1404, column: 39, scope: !752)
!791 = !DILocation(line: 1404, column: 15, scope: !752)
!792 = !DILocation(line: 1404, column: 3, scope: !753)
!793 = !DILocation(line: 1421, column: 16, scope: !794)
!794 = distinct !DILexicalBlock(scope: !751, file: !661, line: 1421, column: 9)
!795 = !DILocation(line: 1421, column: 9, scope: !751)
!796 = !DILocation(line: 1423, column: 55, scope: !751)
!797 = !DILocation(line: 1423, column: 7, scope: !751)
!798 = !DILocation(line: 0, scope: !751)
!799 = !DILocation(line: 1424, column: 63, scope: !751)
!800 = !DILocation(line: 1424, column: 7, scope: !751)
!801 = !DILocation(line: 1426, column: 12, scope: !802)
!802 = distinct !DILexicalBlock(scope: !751, file: !661, line: 1426, column: 9)
!803 = !DILocation(line: 1426, column: 37, scope: !802)
!804 = !DILocation(line: 1431, column: 20, scope: !751)
!805 = !DILocation(line: 1432, column: 13, scope: !751)
!806 = !DILocation(line: 1433, column: 18, scope: !751)
!807 = !DILocation(line: 1434, column: 41, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !661, line: 1434, column: 5)
!809 = distinct !DILexicalBlock(scope: !751, file: !661, line: 1434, column: 5)
!810 = !DILocation(line: 1434, column: 17, scope: !808)
!811 = !DILocation(line: 1434, column: 5, scope: !809)
!812 = !DILocation(line: 1431, column: 6, scope: !751)
!813 = !DILocation(line: 1437, column: 51, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !661, line: 1437, column: 11)
!815 = distinct !DILexicalBlock(scope: !808, file: !661, line: 1435, column: 5)
!816 = !DILocation(line: 1436, column: 9, scope: !815)
!817 = !DILocation(line: 1436, column: 17, scope: !815)
!818 = !DILocation(line: 1436, column: 15, scope: !815)
!819 = !DILocation(line: 1439, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !661, line: 1439, column: 9)
!821 = distinct !DILexicalBlock(scope: !814, file: !661, line: 1439, column: 9)
!822 = !{!713, !713, i64 0}
!823 = !DILocation(line: 1434, column: 51, scope: !808)
!824 = distinct !{!824, !811, !825, !826, !827}
!825 = !DILocation(line: 1441, column: 5, scope: !809)
!826 = !{!"llvm.loop.mustprogress"}
!827 = !{!"llvm.loop.unroll.disable"}
!828 = !DILocation(line: 1442, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !751, file: !661, line: 1442, column: 9)
!830 = !DILocation(line: 1442, column: 59, scope: !829)
!831 = !DILocation(line: 1442, column: 9, scope: !751)
!832 = !DILocation(line: 1444, column: 16, scope: !764)
!833 = !{!707, !711, i64 568}
!834 = !DILocation(line: 1444, column: 33, scope: !764)
!835 = !DILocation(line: 1444, column: 9, scope: !751)
!836 = !DILocation(line: 1452, column: 61, scope: !763)
!837 = !DILocation(line: 1452, column: 71, scope: !763)
!838 = !DILocalVariable(name: "image", arg: 1, scope: !839, file: !840, line: 27, type: !664)
!839 = distinct !DISubprogram(name: "SetImageProgress", scope: !840, file: !840, line: 27, type: !841, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !843)
!840 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!841 = !DISubroutineType(types: !842)
!842 = !{!439, !664, !556, !558, !561}
!843 = !{!838, !844, !845, !846, !847}
!844 = !DILocalVariable(name: "tag", arg: 2, scope: !839, file: !840, line: 28, type: !556)
!845 = !DILocalVariable(name: "offset", arg: 3, scope: !839, file: !840, line: 28, type: !558)
!846 = !DILocalVariable(name: "extent", arg: 4, scope: !839, file: !840, line: 28, type: !561)
!847 = !DILocalVariable(name: "message", scope: !839, file: !840, line: 31, type: !576)
!848 = !DILocation(line: 0, scope: !839, inlinedAt: !849)
!849 = distinct !DILocation(line: 1452, column: 17, scope: !763)
!850 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !849)
!851 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !849)
!852 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !849)
!853 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !849)
!854 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !849)
!855 = !{!707, !711, i64 576}
!856 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !849)
!857 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !849)
!858 = !DILocation(line: 0, scope: !763)
!859 = !DILocation(line: 1453, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !763, file: !661, line: 1453, column: 13)
!861 = !DILocation(line: 1453, column: 13, scope: !763)
!862 = !DILocation(line: 1455, column: 7, scope: !763)
!863 = !DILocation(line: 1404, column: 46, scope: !752)
!864 = distinct !{!864, !792, !865, !826, !827}
!865 = !DILocation(line: 1456, column: 3, scope: !753)
!866 = !DILocation(line: 1395, column: 9, scope: !733)
!867 = !DILocation(line: 1457, column: 13, scope: !733)
!868 = !DILocation(line: 1458, column: 14, scope: !733)
!869 = !DILocation(line: 1459, column: 27, scope: !733)
!870 = !{!707, !708, i64 13184}
!871 = !DILocation(line: 1459, column: 15, scope: !733)
!872 = !DILocation(line: 1459, column: 19, scope: !733)
!873 = !DILocation(line: 1460, column: 18, scope: !874)
!874 = distinct !DILexicalBlock(scope: !733, file: !661, line: 1460, column: 7)
!875 = !DILocation(line: 1460, column: 7, scope: !733)
!876 = !DILocation(line: 1461, column: 46, scope: !874)
!877 = !DILocation(line: 1461, column: 53, scope: !874)
!878 = !DILocation(line: 1461, column: 5, scope: !874)
!879 = !DILocation(line: 1462, column: 15, scope: !733)
!880 = !DILocation(line: 1462, column: 20, scope: !733)
!881 = !DILocation(line: 1463, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !733, file: !661, line: 1463, column: 7)
!883 = !DILocation(line: 1463, column: 7, scope: !733)
!884 = !DILocation(line: 1464, column: 16, scope: !882)
!885 = !DILocation(line: 1464, column: 5, scope: !882)
!886 = !DILocation(line: 1466, column: 1, scope: !733)
!887 = !DISubprogram(name: "RotateImage", scope: !888, file: !888, line: 77, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!888 = !DIFile(filename: "apps/538.imagick_r/src/magick/distort.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "61738a5e0552018447b32d5aafa59fd2")
!889 = !DISubroutineType(types: !890)
!890 = !{!422, !664, !891, !667}
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!892 = distinct !DISubprogram(name: "FlipImage", scope: !661, file: !661, line: 1232, type: !734, scopeLine: 1233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !907, !908, !909, !910}
!894 = !DILocalVariable(name: "image", arg: 1, scope: !892, file: !661, line: 1232, type: !664)
!895 = !DILocalVariable(name: "exception", arg: 2, scope: !892, file: !661, line: 1232, type: !667)
!896 = !DILocalVariable(name: "flip_view", scope: !892, file: !661, line: 1237, type: !740)
!897 = !DILocalVariable(name: "image_view", scope: !892, file: !661, line: 1238, type: !740)
!898 = !DILocalVariable(name: "flip_image", scope: !892, file: !661, line: 1241, type: !422)
!899 = !DILocalVariable(name: "status", scope: !892, file: !661, line: 1244, type: !439)
!900 = !DILocalVariable(name: "progress", scope: !892, file: !661, line: 1247, type: !559)
!901 = !DILocalVariable(name: "page", scope: !892, file: !661, line: 1250, type: !495)
!902 = !DILocalVariable(name: "y", scope: !892, file: !661, line: 1253, type: !487)
!903 = !DILocalVariable(name: "indexes", scope: !904, file: !661, line: 1279, type: !754)
!904 = distinct !DILexicalBlock(scope: !905, file: !661, line: 1277, column: 3)
!905 = distinct !DILexicalBlock(scope: !906, file: !661, line: 1276, column: 3)
!906 = distinct !DILexicalBlock(scope: !892, file: !661, line: 1276, column: 3)
!907 = !DILocalVariable(name: "p", scope: !904, file: !661, line: 1282, type: !756)
!908 = !DILocalVariable(name: "flip_indexes", scope: !904, file: !661, line: 1285, type: !758)
!909 = !DILocalVariable(name: "q", scope: !904, file: !661, line: 1288, type: !761)
!910 = !DILocalVariable(name: "proceed", scope: !911, file: !661, line: 1314, type: !439)
!911 = distinct !DILexicalBlock(scope: !912, file: !661, line: 1312, column: 7)
!912 = distinct !DILexicalBlock(scope: !904, file: !661, line: 1311, column: 9)
!913 = !DILocation(line: 0, scope: !892)
!914 = !DILocation(line: 1257, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !892, file: !661, line: 1257, column: 7)
!916 = !DILocation(line: 1257, column: 20, scope: !915)
!917 = !DILocation(line: 1257, column: 7, scope: !892)
!918 = !DILocation(line: 1258, column: 68, scope: !915)
!919 = !DILocation(line: 1258, column: 12, scope: !915)
!920 = !DILocation(line: 1258, column: 5, scope: !915)
!921 = !DILocation(line: 1261, column: 38, scope: !892)
!922 = !DILocation(line: 1261, column: 53, scope: !892)
!923 = !DILocation(line: 1261, column: 14, scope: !892)
!924 = !DILocation(line: 1262, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !892, file: !661, line: 1262, column: 7)
!926 = !DILocation(line: 1262, column: 7, scope: !892)
!927 = !DILocation(line: 1269, column: 15, scope: !892)
!928 = !DILocation(line: 1270, column: 14, scope: !892)
!929 = !DILocation(line: 1271, column: 13, scope: !892)
!930 = !DILocation(line: 1276, column: 39, scope: !905)
!931 = !DILocation(line: 1276, column: 15, scope: !905)
!932 = !DILocation(line: 1276, column: 3, scope: !906)
!933 = !DILocation(line: 1290, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !904, file: !661, line: 1290, column: 9)
!935 = !DILocation(line: 1290, column: 9, scope: !904)
!936 = !DILocation(line: 1292, column: 55, scope: !904)
!937 = !DILocation(line: 1292, column: 7, scope: !904)
!938 = !DILocation(line: 0, scope: !904)
!939 = !DILocation(line: 1293, column: 72, scope: !904)
!940 = !DILocation(line: 1293, column: 78, scope: !904)
!941 = !DILocation(line: 1294, column: 22, scope: !904)
!942 = !DILocation(line: 1293, column: 7, scope: !904)
!943 = !DILocation(line: 1295, column: 12, scope: !944)
!944 = distinct !DILexicalBlock(scope: !904, file: !661, line: 1295, column: 9)
!945 = !DILocation(line: 1295, column: 43, scope: !944)
!946 = !DILocation(line: 1300, column: 49, scope: !904)
!947 = !DILocation(line: 1300, column: 56, scope: !904)
!948 = !DILocation(line: 1300, column: 12, scope: !904)
!949 = !DILocation(line: 1301, column: 13, scope: !904)
!950 = !DILocation(line: 1302, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !904, file: !661, line: 1302, column: 9)
!952 = !DILocation(line: 1302, column: 9, scope: !904)
!953 = !DILocation(line: 1304, column: 22, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !661, line: 1303, column: 7)
!955 = !DILocation(line: 1305, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !954, file: !661, line: 1305, column: 13)
!957 = !DILocation(line: 1305, column: 13, scope: !954)
!958 = !DILocation(line: 1306, column: 72, scope: !956)
!959 = !DILocation(line: 1306, column: 79, scope: !956)
!960 = !DILocation(line: 1306, column: 18, scope: !956)
!961 = !DILocation(line: 1306, column: 11, scope: !956)
!962 = !DILocation(line: 1309, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !904, file: !661, line: 1309, column: 9)
!964 = !DILocation(line: 1309, column: 59, scope: !963)
!965 = !DILocation(line: 1309, column: 9, scope: !904)
!966 = !DILocation(line: 1311, column: 16, scope: !912)
!967 = !DILocation(line: 1311, column: 33, scope: !912)
!968 = !DILocation(line: 1311, column: 9, scope: !904)
!969 = !DILocation(line: 1319, column: 61, scope: !911)
!970 = !DILocation(line: 1319, column: 71, scope: !911)
!971 = !DILocation(line: 0, scope: !839, inlinedAt: !972)
!972 = distinct !DILocation(line: 1319, column: 17, scope: !911)
!973 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !972)
!974 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !972)
!975 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !972)
!976 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !972)
!977 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !972)
!978 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !972)
!979 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !972)
!980 = !DILocation(line: 0, scope: !911)
!981 = !DILocation(line: 1320, column: 21, scope: !982)
!982 = distinct !DILexicalBlock(scope: !911, file: !661, line: 1320, column: 13)
!983 = !DILocation(line: 1320, column: 13, scope: !911)
!984 = !DILocation(line: 1322, column: 7, scope: !911)
!985 = !DILocation(line: 1276, column: 46, scope: !905)
!986 = distinct !{!986, !932, !987, !826, !827}
!987 = !DILocation(line: 1323, column: 3, scope: !906)
!988 = !DILocation(line: 1267, column: 9, scope: !892)
!989 = !DILocation(line: 1324, column: 13, scope: !892)
!990 = !DILocation(line: 1325, column: 14, scope: !892)
!991 = !DILocation(line: 1326, column: 27, scope: !892)
!992 = !DILocation(line: 1326, column: 15, scope: !892)
!993 = !DILocation(line: 1326, column: 19, scope: !892)
!994 = !DILocation(line: 1327, column: 19, scope: !995)
!995 = distinct !DILexicalBlock(scope: !892, file: !661, line: 1327, column: 7)
!996 = !DILocation(line: 1327, column: 7, scope: !892)
!997 = !DILocation(line: 1328, column: 47, scope: !995)
!998 = !DILocation(line: 1328, column: 51, scope: !995)
!999 = !DILocation(line: 1328, column: 5, scope: !995)
!1000 = !DILocation(line: 1329, column: 15, scope: !892)
!1001 = !DILocation(line: 1329, column: 20, scope: !892)
!1002 = !DILocation(line: 1330, column: 14, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !892, file: !661, line: 1330, column: 7)
!1004 = !DILocation(line: 1330, column: 7, scope: !892)
!1005 = !DILocation(line: 1331, column: 16, scope: !1003)
!1006 = !DILocation(line: 1331, column: 5, scope: !1003)
!1007 = !DILocation(line: 1333, column: 1, scope: !892)
!1008 = distinct !DISubprogram(name: "TransposeImage", scope: !661, file: !661, line: 2189, type: !734, scopeLine: 2190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1023, !1024, !1025, !1026}
!1010 = !DILocalVariable(name: "image", arg: 1, scope: !1008, file: !661, line: 2189, type: !664)
!1011 = !DILocalVariable(name: "exception", arg: 2, scope: !1008, file: !661, line: 2189, type: !667)
!1012 = !DILocalVariable(name: "image_view", scope: !1008, file: !661, line: 2194, type: !740)
!1013 = !DILocalVariable(name: "transpose_view", scope: !1008, file: !661, line: 2195, type: !740)
!1014 = !DILocalVariable(name: "transpose_image", scope: !1008, file: !661, line: 2198, type: !422)
!1015 = !DILocalVariable(name: "status", scope: !1008, file: !661, line: 2201, type: !439)
!1016 = !DILocalVariable(name: "progress", scope: !1008, file: !661, line: 2204, type: !559)
!1017 = !DILocalVariable(name: "page", scope: !1008, file: !661, line: 2207, type: !495)
!1018 = !DILocalVariable(name: "y", scope: !1008, file: !661, line: 2210, type: !487)
!1019 = !DILocalVariable(name: "p", scope: !1020, file: !661, line: 2236, type: !756)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !661, line: 2234, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !661, line: 2233, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1008, file: !661, line: 2233, column: 3)
!1023 = !DILocalVariable(name: "transpose_indexes", scope: !1020, file: !661, line: 2239, type: !758)
!1024 = !DILocalVariable(name: "indexes", scope: !1020, file: !661, line: 2240, type: !758)
!1025 = !DILocalVariable(name: "q", scope: !1020, file: !661, line: 2243, type: !761)
!1026 = !DILocalVariable(name: "proceed", scope: !1027, file: !661, line: 2270, type: !439)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !661, line: 2268, column: 7)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !661, line: 2267, column: 9)
!1029 = !DILocation(line: 0, scope: !1008)
!1030 = !DILocation(line: 2214, column: 14, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1008, file: !661, line: 2214, column: 7)
!1032 = !DILocation(line: 2214, column: 20, scope: !1031)
!1033 = !DILocation(line: 2214, column: 7, scope: !1008)
!1034 = !DILocation(line: 2215, column: 68, scope: !1031)
!1035 = !DILocation(line: 2215, column: 12, scope: !1031)
!1036 = !DILocation(line: 2215, column: 5, scope: !1031)
!1037 = !DILocation(line: 2218, column: 43, scope: !1008)
!1038 = !DILocation(line: 2218, column: 55, scope: !1008)
!1039 = !DILocation(line: 2218, column: 19, scope: !1008)
!1040 = !DILocation(line: 2220, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1008, file: !661, line: 2220, column: 7)
!1042 = !DILocation(line: 2220, column: 7, scope: !1008)
!1043 = !DILocation(line: 2227, column: 14, scope: !1008)
!1044 = !DILocation(line: 2228, column: 18, scope: !1008)
!1045 = !DILocation(line: 2233, column: 34, scope: !1021)
!1046 = !DILocation(line: 2233, column: 15, scope: !1021)
!1047 = !DILocation(line: 2233, column: 3, scope: !1022)
!1048 = !DILocation(line: 2245, column: 16, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1020, file: !661, line: 2245, column: 9)
!1050 = !DILocation(line: 2245, column: 9, scope: !1020)
!1051 = !DILocation(line: 2247, column: 69, scope: !1020)
!1052 = !DILocation(line: 2248, column: 14, scope: !1020)
!1053 = !DILocation(line: 2247, column: 7, scope: !1020)
!1054 = !DILocation(line: 0, scope: !1020)
!1055 = !DILocation(line: 2249, column: 70, scope: !1020)
!1056 = !DILocation(line: 2249, column: 76, scope: !1020)
!1057 = !DILocation(line: 2250, column: 28, scope: !1020)
!1058 = !DILocation(line: 2249, column: 7, scope: !1020)
!1059 = !DILocation(line: 2251, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1020, file: !661, line: 2251, column: 9)
!1061 = !DILocation(line: 2251, column: 43, scope: !1060)
!1062 = !DILocation(line: 2256, column: 49, scope: !1020)
!1063 = !DILocation(line: 2256, column: 56, scope: !1020)
!1064 = !DILocation(line: 2256, column: 12, scope: !1020)
!1065 = !DILocation(line: 2257, column: 13, scope: !1020)
!1066 = !DILocation(line: 2258, column: 17, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1020, file: !661, line: 2258, column: 9)
!1068 = !DILocation(line: 2258, column: 9, scope: !1020)
!1069 = !DILocation(line: 2260, column: 27, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !661, line: 2259, column: 7)
!1071 = !DILocation(line: 2261, column: 31, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !661, line: 2261, column: 13)
!1073 = !DILocation(line: 2261, column: 13, scope: !1070)
!1074 = !DILocation(line: 2263, column: 20, scope: !1072)
!1075 = !DILocation(line: 2263, column: 27, scope: !1072)
!1076 = !DILocation(line: 2262, column: 18, scope: !1072)
!1077 = !DILocation(line: 2262, column: 11, scope: !1072)
!1078 = !DILocation(line: 2265, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1020, file: !661, line: 2265, column: 9)
!1080 = !DILocation(line: 2265, column: 64, scope: !1079)
!1081 = !DILocation(line: 2265, column: 9, scope: !1020)
!1082 = !DILocation(line: 2267, column: 16, scope: !1028)
!1083 = !DILocation(line: 2267, column: 33, scope: !1028)
!1084 = !DILocation(line: 2267, column: 9, scope: !1020)
!1085 = !DILocation(line: 2275, column: 66, scope: !1027)
!1086 = !DILocation(line: 2276, column: 18, scope: !1027)
!1087 = !DILocation(line: 0, scope: !839, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 2275, column: 17, scope: !1027)
!1089 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !1088)
!1090 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !1088)
!1091 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !1088)
!1092 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !1088)
!1093 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !1088)
!1094 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !1088)
!1095 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !1088)
!1096 = !DILocation(line: 0, scope: !1027)
!1097 = !DILocation(line: 2277, column: 21, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1027, file: !661, line: 2277, column: 13)
!1099 = !DILocation(line: 2277, column: 13, scope: !1027)
!1100 = !DILocation(line: 2279, column: 7, scope: !1027)
!1101 = !DILocation(line: 2233, column: 41, scope: !1021)
!1102 = distinct !{!1102, !1047, !1103, !826, !827}
!1103 = !DILocation(line: 2280, column: 3, scope: !1022)
!1104 = !DILocation(line: 2225, column: 9, scope: !1008)
!1105 = !DILocation(line: 2281, column: 18, scope: !1008)
!1106 = !DILocation(line: 2282, column: 14, scope: !1008)
!1107 = !DILocation(line: 2283, column: 32, scope: !1008)
!1108 = !DILocation(line: 2283, column: 20, scope: !1008)
!1109 = !DILocation(line: 2283, column: 24, scope: !1008)
!1110 = !DILocation(line: 2284, column: 25, scope: !1008)
!1111 = !DILocation(line: 2287, column: 25, scope: !1008)
!1112 = !DILocation(line: 2288, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1008, file: !661, line: 2288, column: 7)
!1114 = !DILocation(line: 2288, column: 7, scope: !1008)
!1115 = !DILocation(line: 2289, column: 21, scope: !1113)
!1116 = !DILocation(line: 2289, column: 5, scope: !1113)
!1117 = !DILocation(line: 2291, column: 1, scope: !1008)
!1118 = distinct !DISubprogram(name: "TransverseImage", scope: !661, file: !661, line: 2318, type: !734, scopeLine: 2319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1133, !1134, !1135, !1136, !1137, !1138}
!1120 = !DILocalVariable(name: "image", arg: 1, scope: !1118, file: !661, line: 2318, type: !664)
!1121 = !DILocalVariable(name: "exception", arg: 2, scope: !1118, file: !661, line: 2318, type: !667)
!1122 = !DILocalVariable(name: "image_view", scope: !1118, file: !661, line: 2323, type: !740)
!1123 = !DILocalVariable(name: "transverse_view", scope: !1118, file: !661, line: 2324, type: !740)
!1124 = !DILocalVariable(name: "transverse_image", scope: !1118, file: !661, line: 2327, type: !422)
!1125 = !DILocalVariable(name: "status", scope: !1118, file: !661, line: 2330, type: !439)
!1126 = !DILocalVariable(name: "progress", scope: !1118, file: !661, line: 2333, type: !559)
!1127 = !DILocalVariable(name: "page", scope: !1118, file: !661, line: 2336, type: !495)
!1128 = !DILocalVariable(name: "y", scope: !1118, file: !661, line: 2339, type: !487)
!1129 = !DILocalVariable(name: "sync", scope: !1130, file: !661, line: 2365, type: !439)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !661, line: 2363, column: 3)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !661, line: 2362, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2362, column: 3)
!1133 = !DILocalVariable(name: "p", scope: !1130, file: !661, line: 2368, type: !756)
!1134 = !DILocalVariable(name: "transverse_indexes", scope: !1130, file: !661, line: 2371, type: !758)
!1135 = !DILocalVariable(name: "indexes", scope: !1130, file: !661, line: 2372, type: !758)
!1136 = !DILocalVariable(name: "x", scope: !1130, file: !661, line: 2375, type: !487)
!1137 = !DILocalVariable(name: "q", scope: !1130, file: !661, line: 2378, type: !761)
!1138 = !DILocalVariable(name: "proceed", scope: !1139, file: !661, line: 2408, type: !439)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !661, line: 2406, column: 7)
!1140 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2405, column: 9)
!1141 = !DILocation(line: 0, scope: !1118)
!1142 = !DILocation(line: 2343, column: 14, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2343, column: 7)
!1144 = !DILocation(line: 2343, column: 20, scope: !1143)
!1145 = !DILocation(line: 2343, column: 7, scope: !1118)
!1146 = !DILocation(line: 2344, column: 68, scope: !1143)
!1147 = !DILocation(line: 2344, column: 12, scope: !1143)
!1148 = !DILocation(line: 2344, column: 5, scope: !1143)
!1149 = !DILocation(line: 2347, column: 44, scope: !1118)
!1150 = !DILocation(line: 2347, column: 56, scope: !1118)
!1151 = !DILocation(line: 2347, column: 20, scope: !1118)
!1152 = !DILocation(line: 2349, column: 24, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2349, column: 7)
!1154 = !DILocation(line: 2349, column: 7, scope: !1118)
!1155 = !DILocation(line: 2356, column: 14, scope: !1118)
!1156 = !DILocation(line: 2357, column: 19, scope: !1118)
!1157 = !DILocation(line: 2362, column: 34, scope: !1131)
!1158 = !DILocation(line: 2362, column: 15, scope: !1131)
!1159 = !DILocation(line: 2362, column: 3, scope: !1132)
!1160 = !DILocation(line: 2380, column: 16, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2380, column: 9)
!1162 = !DILocation(line: 2380, column: 9, scope: !1130)
!1163 = !DILocation(line: 2382, column: 55, scope: !1130)
!1164 = !DILocation(line: 2382, column: 7, scope: !1130)
!1165 = !DILocation(line: 0, scope: !1130)
!1166 = !DILocation(line: 2383, column: 71, scope: !1130)
!1167 = !DILocation(line: 2383, column: 77, scope: !1130)
!1168 = !DILocation(line: 2384, column: 32, scope: !1130)
!1169 = !DILocation(line: 2383, column: 7, scope: !1130)
!1170 = !DILocation(line: 2385, column: 12, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2385, column: 9)
!1172 = !DILocation(line: 2385, column: 43, scope: !1171)
!1173 = !DILocation(line: 2390, column: 15, scope: !1130)
!1174 = !DILocation(line: 2391, column: 17, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !661, line: 2391, column: 5)
!1176 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2391, column: 5)
!1177 = !DILocation(line: 2391, column: 5, scope: !1176)
!1178 = !DILocation(line: 2390, column: 6, scope: !1130)
!1179 = !DILocation(line: 2392, column: 8, scope: !1175)
!1180 = !DILocation(line: 2392, column: 15, scope: !1175)
!1181 = !DILocation(line: 2392, column: 13, scope: !1175)
!1182 = !DILocation(line: 2391, column: 46, scope: !1175)
!1183 = !DILocation(line: 2391, column: 36, scope: !1175)
!1184 = distinct !{!1184, !1177, !1185, !826, !827}
!1185 = !DILocation(line: 2392, column: 17, scope: !1176)
!1186 = !DILocation(line: 2393, column: 13, scope: !1130)
!1187 = !DILocation(line: 2394, column: 17, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2394, column: 9)
!1189 = !DILocation(line: 2394, column: 9, scope: !1130)
!1190 = !DILocation(line: 2396, column: 28, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !661, line: 2395, column: 7)
!1192 = !DILocation(line: 2397, column: 32, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !661, line: 2397, column: 13)
!1194 = !DILocation(line: 2397, column: 13, scope: !1191)
!1195 = !DILocation(line: 2398, column: 23, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !661, line: 2398, column: 11)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !661, line: 2398, column: 11)
!1198 = !DILocation(line: 2398, column: 11, scope: !1197)
!1199 = !DILocation(line: 2399, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !661, line: 2399, column: 13)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !661, line: 2399, column: 13)
!1202 = !DILocation(line: 2398, column: 52, scope: !1196)
!1203 = distinct !{!1203, !1198, !1204, !826, !827}
!1204 = !DILocation(line: 2399, column: 13, scope: !1197)
!1205 = !DILocation(line: 2402, column: 10, scope: !1130)
!1206 = !DILocation(line: 2403, column: 14, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1130, file: !661, line: 2403, column: 9)
!1208 = !DILocation(line: 2403, column: 9, scope: !1130)
!1209 = !DILocation(line: 2405, column: 16, scope: !1140)
!1210 = !DILocation(line: 2405, column: 33, scope: !1140)
!1211 = !DILocation(line: 2405, column: 9, scope: !1130)
!1212 = !DILocation(line: 2413, column: 67, scope: !1139)
!1213 = !DILocation(line: 2414, column: 18, scope: !1139)
!1214 = !DILocation(line: 0, scope: !839, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 2413, column: 17, scope: !1139)
!1216 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !1215)
!1217 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !1215)
!1218 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !1215)
!1219 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !1215)
!1220 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !1215)
!1221 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !1215)
!1222 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !1215)
!1223 = !DILocation(line: 0, scope: !1139)
!1224 = !DILocation(line: 2415, column: 21, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1139, file: !661, line: 2415, column: 13)
!1226 = !DILocation(line: 2415, column: 13, scope: !1139)
!1227 = !DILocation(line: 2417, column: 7, scope: !1139)
!1228 = !DILocation(line: 2362, column: 41, scope: !1131)
!1229 = distinct !{!1229, !1159, !1230, !826, !827}
!1230 = !DILocation(line: 2418, column: 3, scope: !1132)
!1231 = !DILocation(line: 2354, column: 9, scope: !1118)
!1232 = !DILocation(line: 2419, column: 19, scope: !1118)
!1233 = !DILocation(line: 2420, column: 14, scope: !1118)
!1234 = !DILocation(line: 2421, column: 33, scope: !1118)
!1235 = !DILocation(line: 2421, column: 21, scope: !1118)
!1236 = !DILocation(line: 2421, column: 25, scope: !1118)
!1237 = !DILocation(line: 2422, column: 26, scope: !1118)
!1238 = !DILocation(line: 2425, column: 18, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2425, column: 7)
!1240 = !DILocation(line: 2425, column: 7, scope: !1118)
!1241 = !DILocation(line: 2426, column: 52, scope: !1239)
!1242 = !DILocation(line: 2426, column: 59, scope: !1239)
!1243 = !DILocation(line: 2426, column: 5, scope: !1239)
!1244 = !DILocation(line: 2427, column: 19, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2427, column: 7)
!1246 = !DILocation(line: 2427, column: 7, scope: !1118)
!1247 = !DILocation(line: 2428, column: 53, scope: !1245)
!1248 = !DILocation(line: 2428, column: 57, scope: !1245)
!1249 = !DILocation(line: 2428, column: 5, scope: !1245)
!1250 = !DILocation(line: 2429, column: 26, scope: !1118)
!1251 = !DILocation(line: 2430, column: 14, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1118, file: !661, line: 2430, column: 7)
!1253 = !DILocation(line: 2430, column: 7, scope: !1118)
!1254 = !DILocation(line: 2431, column: 22, scope: !1252)
!1255 = !DILocation(line: 2431, column: 5, scope: !1252)
!1256 = !DILocation(line: 2433, column: 1, scope: !1118)
!1257 = distinct !DISubprogram(name: "ChopImage", scope: !661, file: !661, line: 187, type: !1258, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1262)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!422, !664, !1260, !667}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1277, !1278, !1279, !1280, !1281, !1284, !1288, !1289, !1290, !1291, !1292}
!1263 = !DILocalVariable(name: "image", arg: 1, scope: !1257, file: !661, line: 187, type: !664)
!1264 = !DILocalVariable(name: "chop_info", arg: 2, scope: !1257, file: !661, line: 187, type: !1260)
!1265 = !DILocalVariable(name: "exception", arg: 3, scope: !1257, file: !661, line: 188, type: !667)
!1266 = !DILocalVariable(name: "chop_view", scope: !1257, file: !661, line: 193, type: !740)
!1267 = !DILocalVariable(name: "image_view", scope: !1257, file: !661, line: 194, type: !740)
!1268 = !DILocalVariable(name: "chop_image", scope: !1257, file: !661, line: 197, type: !422)
!1269 = !DILocalVariable(name: "status", scope: !1257, file: !661, line: 200, type: !439)
!1270 = !DILocalVariable(name: "progress", scope: !1257, file: !661, line: 203, type: !559)
!1271 = !DILocalVariable(name: "extent", scope: !1257, file: !661, line: 206, type: !495)
!1272 = !DILocalVariable(name: "y", scope: !1257, file: !661, line: 209, type: !487)
!1273 = !DILocalVariable(name: "p", scope: !1274, file: !661, line: 259, type: !756)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !661, line: 257, column: 3)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !661, line: 256, column: 3)
!1276 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 256, column: 3)
!1277 = !DILocalVariable(name: "chop_indexes", scope: !1274, file: !661, line: 262, type: !758)
!1278 = !DILocalVariable(name: "indexes", scope: !1274, file: !661, line: 263, type: !758)
!1279 = !DILocalVariable(name: "x", scope: !1274, file: !661, line: 266, type: !487)
!1280 = !DILocalVariable(name: "q", scope: !1274, file: !661, line: 269, type: !761)
!1281 = !DILocalVariable(name: "proceed", scope: !1282, file: !661, line: 302, type: !439)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !661, line: 300, column: 7)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !661, line: 299, column: 9)
!1284 = !DILocalVariable(name: "p", scope: !1285, file: !661, line: 322, type: !756)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !661, line: 320, column: 3)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !661, line: 319, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 319, column: 3)
!1288 = !DILocalVariable(name: "chop_indexes", scope: !1285, file: !661, line: 325, type: !758)
!1289 = !DILocalVariable(name: "indexes", scope: !1285, file: !661, line: 326, type: !758)
!1290 = !DILocalVariable(name: "x", scope: !1285, file: !661, line: 329, type: !487)
!1291 = !DILocalVariable(name: "q", scope: !1285, file: !661, line: 332, type: !761)
!1292 = !DILocalVariable(name: "proceed", scope: !1293, file: !661, line: 366, type: !439)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !661, line: 364, column: 7)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !661, line: 363, column: 9)
!1295 = !DILocation(line: 0, scope: !1257)
!1296 = !DILocation(line: 216, column: 14, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 216, column: 7)
!1298 = !DILocation(line: 216, column: 20, scope: !1297)
!1299 = !DILocation(line: 216, column: 7, scope: !1257)
!1300 = !DILocation(line: 217, column: 68, scope: !1297)
!1301 = !DILocation(line: 217, column: 12, scope: !1297)
!1302 = !DILocation(line: 217, column: 5, scope: !1297)
!1303 = !DILocation(line: 221, column: 20, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 221, column: 7)
!1305 = !{!717, !710, i64 16}
!1306 = !DILocation(line: 221, column: 43, scope: !1304)
!1307 = !{!717, !710, i64 0}
!1308 = !DILocation(line: 221, column: 21, scope: !1304)
!1309 = !DILocation(line: 221, column: 50, scope: !1304)
!1310 = !DILocation(line: 221, column: 55, scope: !1304)
!1311 = !DILocation(line: 222, column: 20, scope: !1304)
!1312 = !{!717, !710, i64 24}
!1313 = !DILocation(line: 222, column: 43, scope: !1304)
!1314 = !{!717, !710, i64 8}
!1315 = !DILocation(line: 222, column: 21, scope: !1304)
!1316 = !DILocation(line: 222, column: 51, scope: !1304)
!1317 = !DILocation(line: 222, column: 56, scope: !1304)
!1318 = !DILocation(line: 223, column: 40, scope: !1304)
!1319 = !DILocation(line: 223, column: 21, scope: !1304)
!1320 = !DILocation(line: 223, column: 49, scope: !1304)
!1321 = !DILocation(line: 224, column: 40, scope: !1304)
!1322 = !DILocation(line: 224, column: 21, scope: !1304)
!1323 = !DILocation(line: 221, column: 7, scope: !1257)
!1324 = !DILocation(line: 225, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1304, file: !661, line: 225, column: 5)
!1326 = !DILocation(line: 227, column: 41, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 227, column: 7)
!1328 = !DILocation(line: 227, column: 7, scope: !1257)
!1329 = !DILocation(line: 229, column: 42, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 229, column: 7)
!1331 = !DILocation(line: 229, column: 7, scope: !1257)
!1332 = !DILocation(line: 231, column: 7, scope: !1257)
!1333 = !DILocation(line: 236, column: 7, scope: !1257)
!1334 = !DILocation(line: 241, column: 45, scope: !1257)
!1335 = !DILocation(line: 241, column: 70, scope: !1257)
!1336 = !DILocation(line: 241, column: 14, scope: !1257)
!1337 = !DILocation(line: 243, column: 18, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 243, column: 7)
!1339 = !DILocation(line: 243, column: 7, scope: !1257)
!1340 = !DILocation(line: 250, column: 14, scope: !1257)
!1341 = !DILocation(line: 251, column: 13, scope: !1257)
!1342 = !DILocation(line: 256, column: 15, scope: !1275)
!1343 = !DILocation(line: 256, column: 3, scope: !1276)
!1344 = !DILocation(line: 248, column: 9, scope: !1257)
!1345 = !DILocation(line: 249, column: 11, scope: !1257)
!1346 = !DILocation(line: 319, column: 35, scope: !1286)
!1347 = !DILocation(line: 319, column: 39, scope: !1286)
!1348 = !DILocation(line: 319, column: 15, scope: !1286)
!1349 = !DILocation(line: 319, column: 3, scope: !1287)
!1350 = !DILocation(line: 271, column: 16, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1274, file: !661, line: 271, column: 9)
!1352 = !DILocation(line: 271, column: 9, scope: !1274)
!1353 = !DILocation(line: 273, column: 55, scope: !1274)
!1354 = !DILocation(line: 273, column: 7, scope: !1274)
!1355 = !DILocation(line: 0, scope: !1274)
!1356 = !DILocation(line: 274, column: 63, scope: !1274)
!1357 = !DILocation(line: 274, column: 7, scope: !1274)
!1358 = !DILocation(line: 276, column: 12, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1274, file: !661, line: 276, column: 9)
!1360 = !DILocation(line: 276, column: 43, scope: !1359)
!1361 = !DILocation(line: 281, column: 13, scope: !1274)
!1362 = !DILocation(line: 282, column: 18, scope: !1274)
!1363 = !DILocation(line: 283, column: 36, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !661, line: 283, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1274, file: !661, line: 283, column: 5)
!1366 = !DILocation(line: 283, column: 17, scope: !1364)
!1367 = !DILocation(line: 283, column: 5, scope: !1365)
!1368 = !DILocation(line: 285, column: 14, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !661, line: 285, column: 11)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !661, line: 284, column: 5)
!1371 = !DILocation(line: 285, column: 26, scope: !1369)
!1372 = !DILocation(line: 287, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !661, line: 286, column: 9)
!1374 = !DILocation(line: 293, column: 12, scope: !1373)
!1375 = !DILocation(line: 294, column: 9, scope: !1373)
!1376 = !DILocation(line: 295, column: 8, scope: !1370)
!1377 = !DILocation(line: 283, column: 46, scope: !1364)
!1378 = distinct !{!1378, !1367, !1379, !826, !827}
!1379 = !DILocation(line: 296, column: 5, scope: !1365)
!1380 = !DILocation(line: 288, column: 15, scope: !1373)
!1381 = !DILocation(line: 291, column: 33, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !661, line: 290, column: 19)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !661, line: 289, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1373, file: !661, line: 288, column: 15)
!1385 = !DILocation(line: 291, column: 30, scope: !1382)
!1386 = !DILocation(line: 291, column: 32, scope: !1382)
!1387 = !DILocation(line: 291, column: 17, scope: !1382)
!1388 = !DILocation(line: 297, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1274, file: !661, line: 297, column: 9)
!1390 = !DILocation(line: 297, column: 59, scope: !1389)
!1391 = !DILocation(line: 297, column: 9, scope: !1274)
!1392 = !DILocation(line: 299, column: 16, scope: !1283)
!1393 = !DILocation(line: 299, column: 33, scope: !1283)
!1394 = !DILocation(line: 299, column: 9, scope: !1274)
!1395 = !DILocation(line: 307, column: 61, scope: !1282)
!1396 = !DILocation(line: 307, column: 71, scope: !1282)
!1397 = !DILocation(line: 0, scope: !839, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 307, column: 17, scope: !1282)
!1399 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !1398)
!1400 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !1398)
!1401 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !1398)
!1402 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !1398)
!1403 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !1398)
!1404 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !1398)
!1405 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !1398)
!1406 = !DILocation(line: 0, scope: !1282)
!1407 = !DILocation(line: 308, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1282, file: !661, line: 308, column: 13)
!1409 = !DILocation(line: 308, column: 13, scope: !1282)
!1410 = !DILocation(line: 310, column: 7, scope: !1282)
!1411 = !DILocation(line: 256, column: 38, scope: !1275)
!1412 = distinct !{!1412, !1343, !1413, !826, !827}
!1413 = !DILocation(line: 311, column: 3, scope: !1276)
!1414 = !DILocation(line: 334, column: 16, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1285, file: !661, line: 334, column: 9)
!1416 = !DILocation(line: 334, column: 9, scope: !1285)
!1417 = !DILocation(line: 336, column: 68, scope: !1285)
!1418 = !DILocation(line: 337, column: 14, scope: !1285)
!1419 = !DILocation(line: 336, column: 7, scope: !1285)
!1420 = !DILocation(line: 0, scope: !1285)
!1421 = !DILocation(line: 338, column: 57, scope: !1285)
!1422 = !DILocation(line: 338, column: 72, scope: !1285)
!1423 = !DILocation(line: 338, column: 7, scope: !1285)
!1424 = !DILocation(line: 340, column: 12, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1285, file: !661, line: 340, column: 9)
!1426 = !DILocation(line: 340, column: 37, scope: !1425)
!1427 = !DILocation(line: 345, column: 13, scope: !1285)
!1428 = !DILocation(line: 346, column: 18, scope: !1285)
!1429 = !DILocation(line: 347, column: 36, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !661, line: 347, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1285, file: !661, line: 347, column: 5)
!1432 = !DILocation(line: 347, column: 17, scope: !1430)
!1433 = !DILocation(line: 347, column: 5, scope: !1431)
!1434 = !DILocation(line: 349, column: 14, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !661, line: 349, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1430, file: !661, line: 348, column: 5)
!1437 = !DILocation(line: 349, column: 26, scope: !1435)
!1438 = !DILocation(line: 351, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !661, line: 350, column: 9)
!1440 = !DILocation(line: 357, column: 12, scope: !1439)
!1441 = !DILocation(line: 358, column: 9, scope: !1439)
!1442 = !DILocation(line: 359, column: 8, scope: !1436)
!1443 = !DILocation(line: 347, column: 46, scope: !1430)
!1444 = distinct !{!1444, !1433, !1445, !826, !827}
!1445 = !DILocation(line: 360, column: 5, scope: !1431)
!1446 = !DILocation(line: 352, column: 15, scope: !1439)
!1447 = !DILocation(line: 355, column: 33, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !661, line: 354, column: 19)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !661, line: 353, column: 13)
!1450 = distinct !DILexicalBlock(scope: !1439, file: !661, line: 352, column: 15)
!1451 = !DILocation(line: 355, column: 30, scope: !1448)
!1452 = !DILocation(line: 355, column: 32, scope: !1448)
!1453 = !DILocation(line: 355, column: 17, scope: !1448)
!1454 = !DILocation(line: 361, column: 9, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1285, file: !661, line: 361, column: 9)
!1456 = !DILocation(line: 361, column: 59, scope: !1455)
!1457 = !DILocation(line: 361, column: 9, scope: !1285)
!1458 = !DILocation(line: 363, column: 16, scope: !1294)
!1459 = !DILocation(line: 363, column: 33, scope: !1294)
!1460 = !DILocation(line: 363, column: 9, scope: !1285)
!1461 = !DILocation(line: 371, column: 61, scope: !1293)
!1462 = !DILocation(line: 371, column: 71, scope: !1293)
!1463 = !DILocation(line: 0, scope: !839, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 371, column: 17, scope: !1293)
!1465 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !1464)
!1466 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !1464)
!1467 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !1464)
!1468 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !1464)
!1469 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !1464)
!1470 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !1464)
!1471 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !1464)
!1472 = !DILocation(line: 0, scope: !1293)
!1473 = !DILocation(line: 372, column: 21, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1293, file: !661, line: 372, column: 13)
!1475 = !DILocation(line: 372, column: 13, scope: !1293)
!1476 = !DILocation(line: 374, column: 7, scope: !1293)
!1477 = !DILocation(line: 319, column: 68, scope: !1286)
!1478 = distinct !{!1478, !1349, !1479, !826, !827}
!1479 = !DILocation(line: 375, column: 3, scope: !1287)
!1480 = !DILocation(line: 376, column: 13, scope: !1257)
!1481 = !DILocation(line: 377, column: 14, scope: !1257)
!1482 = !DILocation(line: 378, column: 27, scope: !1257)
!1483 = !DILocation(line: 378, column: 15, scope: !1257)
!1484 = !DILocation(line: 378, column: 19, scope: !1257)
!1485 = !DILocation(line: 379, column: 14, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1257, file: !661, line: 379, column: 7)
!1487 = !DILocation(line: 379, column: 7, scope: !1257)
!1488 = !DILocation(line: 380, column: 16, scope: !1486)
!1489 = !DILocation(line: 380, column: 5, scope: !1486)
!1490 = !DILocation(line: 382, column: 1, scope: !1257)
!1491 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!439, !1494, !556, !556, !730, !556, null}
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1496 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!439, !667, !556, !556, !730, !1499, !556, !556, null}
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!1500 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !742, file: !742, line: 55, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!740, !664, !667}
!1503 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !742, file: !742, line: 53, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1504 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !742, file: !742, line: 69, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!644, !1507, !1509, !1509, !730, !730, !667}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!1510 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !742, file: !742, line: 101, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!446, !740, !1509, !1509, !730, !730, !667}
!1513 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !742, file: !742, line: 77, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!646, !740}
!1516 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !742, file: !742, line: 89, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!439, !740, !667}
!1519 = !DISubprogram(name: "DestroyCacheView", scope: !742, file: !742, line: 57, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!740, !740}
!1522 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!422, !422}
!1525 = distinct !DISubprogram(name: "ConsolidateCMYKImages", scope: !661, file: !661, line: 409, type: !734, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1542, !1543, !1544, !1548, !1549, !1550, !1554, !1555, !1556, !1560, !1561, !1562}
!1527 = !DILocalVariable(name: "images", arg: 1, scope: !1525, file: !661, line: 409, type: !664)
!1528 = !DILocalVariable(name: "exception", arg: 2, scope: !1525, file: !661, line: 410, type: !667)
!1529 = !DILocalVariable(name: "cmyk_view", scope: !1525, file: !661, line: 413, type: !740)
!1530 = !DILocalVariable(name: "image_view", scope: !1525, file: !661, line: 414, type: !740)
!1531 = !DILocalVariable(name: "cmyk_image", scope: !1525, file: !661, line: 417, type: !422)
!1532 = !DILocalVariable(name: "cmyk_images", scope: !1525, file: !661, line: 418, type: !422)
!1533 = !DILocalVariable(name: "i", scope: !1525, file: !661, line: 421, type: !487)
!1534 = !DILocalVariable(name: "y", scope: !1525, file: !661, line: 424, type: !487)
!1535 = !DILocalVariable(name: "p", scope: !1536, file: !661, line: 450, type: !756)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !661, line: 448, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !661, line: 447, column: 5)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 447, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !661, line: 437, column: 3)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !661, line: 436, column: 3)
!1541 = distinct !DILexicalBlock(scope: !1525, file: !661, line: 436, column: 3)
!1542 = !DILocalVariable(name: "x", scope: !1536, file: !661, line: 453, type: !487)
!1543 = !DILocalVariable(name: "q", scope: !1536, file: !661, line: 456, type: !761)
!1544 = !DILocalVariable(name: "p", scope: !1545, file: !661, line: 482, type: !756)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !661, line: 480, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !661, line: 479, column: 5)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 479, column: 5)
!1548 = !DILocalVariable(name: "x", scope: !1545, file: !661, line: 485, type: !487)
!1549 = !DILocalVariable(name: "q", scope: !1545, file: !661, line: 488, type: !761)
!1550 = !DILocalVariable(name: "p", scope: !1551, file: !661, line: 514, type: !756)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !661, line: 512, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !661, line: 511, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 511, column: 5)
!1554 = !DILocalVariable(name: "x", scope: !1551, file: !661, line: 517, type: !487)
!1555 = !DILocalVariable(name: "q", scope: !1551, file: !661, line: 520, type: !761)
!1556 = !DILocalVariable(name: "p", scope: !1557, file: !661, line: 546, type: !756)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !661, line: 544, column: 5)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !661, line: 543, column: 5)
!1559 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 543, column: 5)
!1560 = !DILocalVariable(name: "indexes", scope: !1557, file: !661, line: 549, type: !758)
!1561 = !DILocalVariable(name: "x", scope: !1557, file: !661, line: 552, type: !487)
!1562 = !DILocalVariable(name: "q", scope: !1557, file: !661, line: 555, type: !761)
!1563 = !DILocation(line: 0, scope: !1525)
!1564 = !DILocation(line: 416, column: 3, scope: !1525)
!1565 = !DILocation(line: 431, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1525, file: !661, line: 431, column: 7)
!1567 = !DILocation(line: 431, column: 21, scope: !1566)
!1568 = !DILocation(line: 431, column: 7, scope: !1525)
!1569 = !DILocation(line: 432, column: 69, scope: !1566)
!1570 = !DILocation(line: 432, column: 12, scope: !1566)
!1571 = !DILocation(line: 432, column: 5, scope: !1566)
!1572 = !DILocation(line: 435, column: 15, scope: !1525)
!1573 = !DILocation(line: 435, column: 14, scope: !1525)
!1574 = !{!711, !711, i64 0}
!1575 = !DILocation(line: 436, column: 27, scope: !1540)
!1576 = !DILocation(line: 436, column: 15, scope: !1540)
!1577 = !DILocation(line: 436, column: 3, scope: !1541)
!1578 = !DILocation(line: 436, column: 56, scope: !1540)
!1579 = distinct !{!1579, !1577, !1580, !826, !827}
!1580 = !DILocation(line: 578, column: 3, scope: !1541)
!1581 = !DILocation(line: 438, column: 42, scope: !1539)
!1582 = !DILocation(line: 438, column: 58, scope: !1539)
!1583 = !DILocation(line: 438, column: 16, scope: !1539)
!1584 = !DILocation(line: 440, column: 20, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 440, column: 9)
!1586 = !DILocation(line: 440, column: 9, scope: !1539)
!1587 = !DILocation(line: 442, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 442, column: 9)
!1589 = !DILocation(line: 442, column: 54, scope: !1588)
!1590 = !DILocation(line: 442, column: 9, scope: !1539)
!1591 = !DILocation(line: 444, column: 12, scope: !1539)
!1592 = !DILocation(line: 445, column: 16, scope: !1539)
!1593 = !DILocation(line: 446, column: 15, scope: !1539)
!1594 = !DILocation(line: 447, column: 37, scope: !1537)
!1595 = !DILocation(line: 447, column: 17, scope: !1537)
!1596 = !DILocation(line: 447, column: 5, scope: !1538)
!1597 = !DILocation(line: 447, column: 44, scope: !1537)
!1598 = distinct !{!1598, !1596, !1599, !826, !827}
!1599 = !DILocation(line: 471, column: 5, scope: !1538)
!1600 = !DILocation(line: 458, column: 58, scope: !1536)
!1601 = !DILocation(line: 458, column: 9, scope: !1536)
!1602 = !DILocation(line: 0, scope: !1536)
!1603 = !DILocation(line: 459, column: 65, scope: !1536)
!1604 = !DILocation(line: 459, column: 9, scope: !1536)
!1605 = !DILocation(line: 461, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1536, file: !661, line: 461, column: 11)
!1607 = !DILocation(line: 461, column: 45, scope: !1606)
!1608 = !DILocation(line: 463, column: 39, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !661, line: 463, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1536, file: !661, line: 463, column: 7)
!1611 = !DILocation(line: 463, column: 19, scope: !1609)
!1612 = !DILocation(line: 463, column: 7, scope: !1610)
!1613 = !DILocation(line: 465, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !661, line: 464, column: 7)
!1615 = !DILocalVariable(name: "value", arg: 1, scope: !1616, file: !147, line: 87, type: !1619)
!1616 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1617, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1620)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!451, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!1620 = !{!1615}
!1621 = !DILocation(line: 0, scope: !1616, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 465, column: 9, scope: !1614)
!1623 = !DILocation(line: 92, column: 13, scope: !1624, inlinedAt: !1622)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !147, line: 92, column: 7)
!1625 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1622)
!1626 = !DILocation(line: 94, column: 13, scope: !1627, inlinedAt: !1622)
!1627 = distinct !DILexicalBlock(scope: !1616, file: !147, line: 94, column: 7)
!1628 = !DILocation(line: 94, column: 7, scope: !1616, inlinedAt: !1622)
!1629 = !DILocation(line: 96, column: 26, scope: !1616, inlinedAt: !1622)
!1630 = !DILocation(line: 96, column: 10, scope: !1616, inlinedAt: !1622)
!1631 = !DILocation(line: 96, column: 3, scope: !1616, inlinedAt: !1622)
!1632 = !{!712, !713, i64 4}
!1633 = !DILocation(line: 466, column: 10, scope: !1614)
!1634 = !DILocation(line: 467, column: 10, scope: !1614)
!1635 = !DILocation(line: 463, column: 49, scope: !1609)
!1636 = distinct !{!1636, !1612, !1637, !826, !827}
!1637 = !DILocation(line: 468, column: 7, scope: !1610)
!1638 = !DILocation(line: 469, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1536, file: !661, line: 469, column: 11)
!1640 = !DILocation(line: 469, column: 61, scope: !1639)
!1641 = !DILocation(line: 0, scope: !1537)
!1642 = !DILocation(line: 472, column: 15, scope: !1539)
!1643 = !DILocation(line: 473, column: 16, scope: !1539)
!1644 = !DILocation(line: 474, column: 12, scope: !1539)
!1645 = !DILocation(line: 475, column: 16, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 475, column: 9)
!1647 = !DILocation(line: 475, column: 9, scope: !1539)
!1648 = !DILocation(line: 477, column: 16, scope: !1539)
!1649 = !DILocation(line: 478, column: 15, scope: !1539)
!1650 = !DILocation(line: 479, column: 37, scope: !1546)
!1651 = !DILocation(line: 479, column: 17, scope: !1546)
!1652 = !DILocation(line: 479, column: 5, scope: !1547)
!1653 = !DILocation(line: 479, column: 44, scope: !1546)
!1654 = distinct !{!1654, !1652, !1655, !826, !827}
!1655 = !DILocation(line: 503, column: 5, scope: !1547)
!1656 = !DILocation(line: 490, column: 58, scope: !1545)
!1657 = !DILocation(line: 490, column: 9, scope: !1545)
!1658 = !DILocation(line: 0, scope: !1545)
!1659 = !DILocation(line: 491, column: 63, scope: !1545)
!1660 = !DILocation(line: 491, column: 9, scope: !1545)
!1661 = !DILocation(line: 493, column: 14, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1545, file: !661, line: 493, column: 11)
!1663 = !DILocation(line: 493, column: 45, scope: !1662)
!1664 = !DILocation(line: 495, column: 39, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !661, line: 495, column: 7)
!1666 = distinct !DILexicalBlock(scope: !1545, file: !661, line: 495, column: 7)
!1667 = !DILocation(line: 495, column: 19, scope: !1665)
!1668 = !DILocation(line: 495, column: 7, scope: !1666)
!1669 = !DILocation(line: 497, column: 46, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !661, line: 496, column: 7)
!1671 = !DILocation(line: 497, column: 45, scope: !1670)
!1672 = !DILocation(line: 0, scope: !1616, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 497, column: 18, scope: !1670)
!1674 = !DILocation(line: 92, column: 13, scope: !1624, inlinedAt: !1673)
!1675 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1673)
!1676 = !DILocation(line: 94, column: 13, scope: !1627, inlinedAt: !1673)
!1677 = !DILocation(line: 94, column: 7, scope: !1616, inlinedAt: !1673)
!1678 = !DILocation(line: 96, column: 26, scope: !1616, inlinedAt: !1673)
!1679 = !DILocation(line: 96, column: 10, scope: !1616, inlinedAt: !1673)
!1680 = !DILocation(line: 96, column: 3, scope: !1616, inlinedAt: !1673)
!1681 = !DILocation(line: 497, column: 12, scope: !1670)
!1682 = !DILocation(line: 497, column: 17, scope: !1670)
!1683 = !{!712, !713, i64 2}
!1684 = !DILocation(line: 498, column: 10, scope: !1670)
!1685 = !DILocation(line: 499, column: 10, scope: !1670)
!1686 = !DILocation(line: 495, column: 49, scope: !1665)
!1687 = distinct !{!1687, !1668, !1688, !826, !827}
!1688 = !DILocation(line: 500, column: 7, scope: !1666)
!1689 = !DILocation(line: 501, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1545, file: !661, line: 501, column: 11)
!1691 = !DILocation(line: 501, column: 61, scope: !1690)
!1692 = !DILocation(line: 0, scope: !1546)
!1693 = !DILocation(line: 504, column: 15, scope: !1539)
!1694 = !DILocation(line: 505, column: 16, scope: !1539)
!1695 = !DILocation(line: 506, column: 12, scope: !1539)
!1696 = !DILocation(line: 507, column: 16, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 507, column: 9)
!1698 = !DILocation(line: 507, column: 9, scope: !1539)
!1699 = !DILocation(line: 509, column: 16, scope: !1539)
!1700 = !DILocation(line: 510, column: 15, scope: !1539)
!1701 = !DILocation(line: 511, column: 37, scope: !1552)
!1702 = !DILocation(line: 511, column: 17, scope: !1552)
!1703 = !DILocation(line: 511, column: 5, scope: !1553)
!1704 = !DILocation(line: 511, column: 44, scope: !1552)
!1705 = distinct !{!1705, !1703, !1706, !826, !827}
!1706 = !DILocation(line: 535, column: 5, scope: !1553)
!1707 = !DILocation(line: 522, column: 58, scope: !1551)
!1708 = !DILocation(line: 522, column: 9, scope: !1551)
!1709 = !DILocation(line: 0, scope: !1551)
!1710 = !DILocation(line: 523, column: 63, scope: !1551)
!1711 = !DILocation(line: 523, column: 9, scope: !1551)
!1712 = !DILocation(line: 525, column: 14, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1551, file: !661, line: 525, column: 11)
!1714 = !DILocation(line: 525, column: 45, scope: !1713)
!1715 = !DILocation(line: 527, column: 39, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !661, line: 527, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1551, file: !661, line: 527, column: 7)
!1718 = !DILocation(line: 527, column: 19, scope: !1716)
!1719 = !DILocation(line: 527, column: 7, scope: !1717)
!1720 = !DILocation(line: 529, column: 45, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !661, line: 528, column: 7)
!1722 = !DILocation(line: 529, column: 44, scope: !1721)
!1723 = !DILocation(line: 0, scope: !1616, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 529, column: 17, scope: !1721)
!1725 = !DILocation(line: 92, column: 13, scope: !1624, inlinedAt: !1724)
!1726 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1724)
!1727 = !DILocation(line: 94, column: 13, scope: !1627, inlinedAt: !1724)
!1728 = !DILocation(line: 94, column: 7, scope: !1616, inlinedAt: !1724)
!1729 = !DILocation(line: 96, column: 26, scope: !1616, inlinedAt: !1724)
!1730 = !DILocation(line: 96, column: 10, scope: !1616, inlinedAt: !1724)
!1731 = !DILocation(line: 96, column: 3, scope: !1616, inlinedAt: !1724)
!1732 = !DILocation(line: 529, column: 16, scope: !1721)
!1733 = !{!712, !713, i64 0}
!1734 = !DILocation(line: 530, column: 10, scope: !1721)
!1735 = !DILocation(line: 531, column: 10, scope: !1721)
!1736 = !DILocation(line: 527, column: 49, scope: !1716)
!1737 = distinct !{!1737, !1719, !1738, !826, !827}
!1738 = !DILocation(line: 532, column: 7, scope: !1717)
!1739 = !DILocation(line: 533, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1551, file: !661, line: 533, column: 11)
!1741 = !DILocation(line: 533, column: 61, scope: !1740)
!1742 = !DILocation(line: 0, scope: !1552)
!1743 = !DILocation(line: 536, column: 15, scope: !1539)
!1744 = !DILocation(line: 537, column: 16, scope: !1539)
!1745 = !DILocation(line: 538, column: 12, scope: !1539)
!1746 = !DILocation(line: 539, column: 16, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 539, column: 9)
!1748 = !DILocation(line: 539, column: 9, scope: !1539)
!1749 = !DILocation(line: 541, column: 16, scope: !1539)
!1750 = !DILocation(line: 542, column: 15, scope: !1539)
!1751 = !DILocation(line: 543, column: 37, scope: !1558)
!1752 = !DILocation(line: 543, column: 17, scope: !1558)
!1753 = !DILocation(line: 543, column: 5, scope: !1559)
!1754 = !DILocation(line: 543, column: 44, scope: !1558)
!1755 = distinct !{!1755, !1753, !1756, !826, !827}
!1756 = !DILocation(line: 571, column: 5, scope: !1559)
!1757 = !DILocation(line: 557, column: 58, scope: !1557)
!1758 = !DILocation(line: 557, column: 9, scope: !1557)
!1759 = !DILocation(line: 0, scope: !1557)
!1760 = !DILocation(line: 558, column: 63, scope: !1557)
!1761 = !DILocation(line: 558, column: 9, scope: !1557)
!1762 = !DILocation(line: 560, column: 14, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1557, file: !661, line: 560, column: 11)
!1764 = !DILocation(line: 560, column: 45, scope: !1763)
!1765 = !DILocation(line: 562, column: 15, scope: !1557)
!1766 = !DILocation(line: 563, column: 39, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !661, line: 563, column: 7)
!1768 = distinct !DILexicalBlock(scope: !1557, file: !661, line: 563, column: 7)
!1769 = !DILocation(line: 563, column: 19, scope: !1767)
!1770 = !DILocation(line: 563, column: 7, scope: !1768)
!1771 = !DILocation(line: 565, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !661, line: 565, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !661, line: 565, column: 9)
!1774 = distinct !DILexicalBlock(scope: !1767, file: !661, line: 564, column: 7)
!1775 = !DILocation(line: 0, scope: !1616, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 565, column: 9, scope: !1772)
!1777 = !DILocation(line: 92, column: 13, scope: !1624, inlinedAt: !1776)
!1778 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1776)
!1779 = !DILocation(line: 94, column: 13, scope: !1627, inlinedAt: !1776)
!1780 = !DILocation(line: 94, column: 7, scope: !1616, inlinedAt: !1776)
!1781 = !DILocation(line: 96, column: 26, scope: !1616, inlinedAt: !1776)
!1782 = !DILocation(line: 96, column: 10, scope: !1616, inlinedAt: !1776)
!1783 = !DILocation(line: 96, column: 3, scope: !1616, inlinedAt: !1776)
!1784 = !DILocation(line: 567, column: 10, scope: !1774)
!1785 = !DILocation(line: 563, column: 49, scope: !1767)
!1786 = distinct !{!1786, !1770, !1787, !826, !827}
!1787 = !DILocation(line: 568, column: 7, scope: !1768)
!1788 = !DILocation(line: 569, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1557, file: !661, line: 569, column: 11)
!1790 = !DILocation(line: 569, column: 61, scope: !1789)
!1791 = !DILocation(line: 0, scope: !1558)
!1792 = !DILocation(line: 572, column: 15, scope: !1539)
!1793 = !DILocation(line: 573, column: 16, scope: !1539)
!1794 = !DILocation(line: 574, column: 5, scope: !1539)
!1795 = !DILocation(line: 575, column: 12, scope: !1539)
!1796 = !DILocation(line: 576, column: 16, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1539, file: !661, line: 576, column: 9)
!1798 = !DILocation(line: 576, column: 9, scope: !1539)
!1799 = !DILocation(line: 579, column: 10, scope: !1525)
!1800 = !DILocation(line: 580, column: 1, scope: !1525)
!1801 = !DILocation(line: 579, column: 3, scope: !1525)
!1802 = !DISubprogram(name: "NewImageList", scope: !1803, file: !1803, line: 36, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1803 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!422}
!1806 = !DISubprogram(name: "GetImageListLength", scope: !1803, file: !1803, line: 45, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!433, !664}
!1809 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!439, !422, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!1813 = !DISubprogram(name: "SetImageColorspace", scope: !11, file: !11, line: 65, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!439, !422, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!1817 = !DISubprogram(name: "GetPixelIntensity", scope: !326, file: !326, line: 181, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!650, !664, !756}
!1820 = !DISubprogram(name: "GetNextImageInList", scope: !1803, file: !1803, line: 33, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!422, !664}
!1823 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !742, file: !742, line: 99, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1824 = !DISubprogram(name: "AppendImageToList", scope: !1803, file: !1803, line: 51, type: !1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !652, !664}
!1827 = distinct !DISubprogram(name: "CropImage", scope: !661, file: !661, line: 612, type: !1258, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1828)
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1844, !1845, !1846, !1847}
!1829 = !DILocalVariable(name: "image", arg: 1, scope: !1827, file: !661, line: 612, type: !664)
!1830 = !DILocalVariable(name: "geometry", arg: 2, scope: !1827, file: !661, line: 612, type: !1260)
!1831 = !DILocalVariable(name: "exception", arg: 3, scope: !1827, file: !661, line: 613, type: !667)
!1832 = !DILocalVariable(name: "crop_view", scope: !1827, file: !661, line: 618, type: !740)
!1833 = !DILocalVariable(name: "image_view", scope: !1827, file: !661, line: 619, type: !740)
!1834 = !DILocalVariable(name: "crop_image", scope: !1827, file: !661, line: 622, type: !422)
!1835 = !DILocalVariable(name: "status", scope: !1827, file: !661, line: 625, type: !439)
!1836 = !DILocalVariable(name: "progress", scope: !1827, file: !661, line: 628, type: !559)
!1837 = !DILocalVariable(name: "bounding_box", scope: !1827, file: !661, line: 631, type: !495)
!1838 = !DILocalVariable(name: "page", scope: !1827, file: !661, line: 632, type: !495)
!1839 = !DILocalVariable(name: "y", scope: !1827, file: !661, line: 635, type: !487)
!1840 = !DILocalVariable(name: "indexes", scope: !1841, file: !661, line: 750, type: !754)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !661, line: 748, column: 3)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !661, line: 747, column: 3)
!1843 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 747, column: 3)
!1844 = !DILocalVariable(name: "p", scope: !1841, file: !661, line: 753, type: !756)
!1845 = !DILocalVariable(name: "crop_indexes", scope: !1841, file: !661, line: 756, type: !758)
!1846 = !DILocalVariable(name: "q", scope: !1841, file: !661, line: 759, type: !761)
!1847 = !DILocalVariable(name: "proceed", scope: !1848, file: !661, line: 784, type: !439)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !661, line: 782, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1841, file: !661, line: 781, column: 9)
!1850 = !DILocation(line: 0, scope: !1827)
!1851 = !DILocation(line: 642, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 642, column: 7)
!1853 = !DILocation(line: 642, column: 20, scope: !1852)
!1854 = !DILocation(line: 642, column: 7, scope: !1827)
!1855 = !DILocation(line: 643, column: 68, scope: !1852)
!1856 = !DILocation(line: 643, column: 12, scope: !1852)
!1857 = !DILocation(line: 643, column: 5, scope: !1852)
!1858 = !DILocation(line: 647, column: 23, scope: !1827)
!1859 = !DILocation(line: 648, column: 27, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 648, column: 7)
!1861 = !DILocation(line: 648, column: 33, scope: !1860)
!1862 = !DILocation(line: 650, column: 33, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !661, line: 649, column: 5)
!1864 = !DILocation(line: 651, column: 34, scope: !1863)
!1865 = !DILocation(line: 652, column: 5, scope: !1863)
!1866 = !DILocation(line: 653, column: 9, scope: !1827)
!1867 = !DILocation(line: 654, column: 18, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 654, column: 7)
!1869 = !DILocation(line: 654, column: 7, scope: !1827)
!1870 = !DILocation(line: 656, column: 19, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 656, column: 7)
!1872 = !DILocation(line: 656, column: 7, scope: !1827)
!1873 = !DILocation(line: 658, column: 23, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 658, column: 7)
!1875 = !DILocation(line: 658, column: 32, scope: !1874)
!1876 = !DILocation(line: 658, column: 57, scope: !1874)
!1877 = !DILocation(line: 659, column: 23, scope: !1874)
!1878 = !DILocation(line: 659, column: 32, scope: !1874)
!1879 = !DILocation(line: 659, column: 58, scope: !1874)
!1880 = !DILocation(line: 660, column: 15, scope: !1874)
!1881 = !DILocation(line: 660, column: 51, scope: !1874)
!1882 = !DILocation(line: 660, column: 32, scope: !1874)
!1883 = !DILocation(line: 660, column: 60, scope: !1874)
!1884 = !DILocation(line: 661, column: 15, scope: !1874)
!1885 = !DILocation(line: 661, column: 51, scope: !1874)
!1886 = !DILocation(line: 661, column: 32, scope: !1874)
!1887 = !DILocation(line: 658, column: 7, scope: !1827)
!1888 = !DILocation(line: 667, column: 53, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1874, file: !661, line: 662, column: 5)
!1890 = !DILocation(line: 666, column: 14, scope: !1889)
!1891 = !DILocation(line: 668, column: 18, scope: !1889)
!1892 = !DILocation(line: 669, column: 22, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !661, line: 669, column: 11)
!1894 = !DILocation(line: 669, column: 11, scope: !1889)
!1895 = !DILocation(line: 671, column: 36, scope: !1889)
!1896 = !DILocation(line: 671, column: 43, scope: !1889)
!1897 = !{!707, !713, i64 86}
!1898 = !DILocation(line: 672, column: 14, scope: !1889)
!1899 = !DILocation(line: 673, column: 19, scope: !1889)
!1900 = !DILocation(line: 673, column: 24, scope: !1889)
!1901 = !DILocation(line: 674, column: 24, scope: !1889)
!1902 = !DILocation(line: 676, column: 23, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1889, file: !661, line: 676, column: 11)
!1904 = !DILocation(line: 675, column: 25, scope: !1889)
!1905 = !{!707, !708, i64 420}
!1906 = !DILocation(line: 676, column: 31, scope: !1903)
!1907 = !DILocation(line: 676, column: 11, scope: !1889)
!1908 = !DILocation(line: 677, column: 28, scope: !1903)
!1909 = !DILocation(line: 677, column: 9, scope: !1903)
!1910 = !DILocation(line: 680, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 680, column: 7)
!1912 = !DILocation(line: 680, column: 20, scope: !1911)
!1913 = !DILocation(line: 682, column: 17, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1911, file: !661, line: 681, column: 5)
!1915 = !DILocation(line: 684, column: 5, scope: !1914)
!1916 = !DILocation(line: 687, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1911, file: !661, line: 686, column: 5)
!1918 = !DILocation(line: 689, column: 11, scope: !1917)
!1919 = !DILocation(line: 0, scope: !1911)
!1920 = !DILocation(line: 692, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 692, column: 7)
!1922 = !DILocation(line: 692, column: 20, scope: !1921)
!1923 = !DILocation(line: 694, column: 18, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !661, line: 693, column: 5)
!1925 = !DILocation(line: 696, column: 5, scope: !1924)
!1926 = !DILocation(line: 699, column: 18, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !661, line: 698, column: 5)
!1928 = !DILocation(line: 701, column: 11, scope: !1927)
!1929 = !DILocation(line: 0, scope: !1921)
!1930 = !DILocation(line: 704, column: 14, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 704, column: 7)
!1932 = !DILocation(line: 704, column: 37, scope: !1931)
!1933 = !DILocation(line: 704, column: 7, scope: !1827)
!1934 = !DILocation(line: 706, column: 24, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 706, column: 7)
!1936 = !DILocation(line: 706, column: 30, scope: !1935)
!1937 = !DILocation(line: 708, column: 14, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 708, column: 7)
!1939 = !DILocation(line: 708, column: 38, scope: !1938)
!1940 = !DILocation(line: 708, column: 7, scope: !1827)
!1941 = !DILocation(line: 710, column: 25, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 710, column: 7)
!1943 = !DILocation(line: 710, column: 31, scope: !1942)
!1944 = !DILocation(line: 712, column: 17, scope: !1827)
!1945 = !DILocation(line: 713, column: 17, scope: !1827)
!1946 = !DILocation(line: 714, column: 19, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 714, column: 7)
!1948 = !DILocation(line: 714, column: 25, scope: !1947)
!1949 = !DILocation(line: 717, column: 53, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !661, line: 715, column: 5)
!1951 = !DILocation(line: 716, column: 14, scope: !1950)
!1952 = !DILocation(line: 718, column: 7, scope: !1950)
!1953 = !DILocation(line: 723, column: 14, scope: !1827)
!1954 = !DILocation(line: 724, column: 18, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 724, column: 7)
!1956 = !DILocation(line: 724, column: 7, scope: !1827)
!1957 = !DILocation(line: 726, column: 38, scope: !1827)
!1958 = !{!707, !710, i64 280}
!1959 = !DILocation(line: 726, column: 15, scope: !1827)
!1960 = !DILocation(line: 726, column: 25, scope: !1827)
!1961 = !DILocation(line: 727, column: 39, scope: !1827)
!1962 = !{!707, !710, i64 288}
!1963 = !DILocation(line: 727, column: 20, scope: !1827)
!1964 = !DILocation(line: 727, column: 26, scope: !1827)
!1965 = !DILocation(line: 728, column: 33, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 728, column: 7)
!1967 = !DILocation(line: 728, column: 78, scope: !1966)
!1968 = !DILocation(line: 728, column: 54, scope: !1966)
!1969 = !DILocation(line: 728, column: 85, scope: !1966)
!1970 = !DILocation(line: 729, column: 33, scope: !1966)
!1971 = !DILocation(line: 729, column: 79, scope: !1966)
!1972 = !DILocation(line: 729, column: 55, scope: !1966)
!1973 = !DILocation(line: 728, column: 7, scope: !1827)
!1974 = !DILocation(line: 731, column: 29, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1966, file: !661, line: 730, column: 5)
!1976 = !DILocation(line: 732, column: 30, scope: !1975)
!1977 = !DILocation(line: 733, column: 5, scope: !1975)
!1978 = !DILocation(line: 734, column: 20, scope: !1827)
!1979 = !DILocation(line: 734, column: 21, scope: !1827)
!1980 = !{!707, !710, i64 296}
!1981 = !DILocation(line: 735, column: 20, scope: !1827)
!1982 = !DILocation(line: 735, column: 21, scope: !1827)
!1983 = !{!707, !710, i64 304}
!1984 = !DILocation(line: 741, column: 14, scope: !1827)
!1985 = !DILocation(line: 742, column: 13, scope: !1827)
!1986 = !DILocation(line: 747, column: 39, scope: !1842)
!1987 = !DILocation(line: 747, column: 15, scope: !1842)
!1988 = !DILocation(line: 747, column: 3, scope: !1843)
!1989 = !DILocation(line: 761, column: 16, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1841, file: !661, line: 761, column: 9)
!1991 = !DILocation(line: 761, column: 9, scope: !1841)
!1992 = !DILocation(line: 763, column: 57, scope: !1841)
!1993 = !DILocation(line: 763, column: 72, scope: !1841)
!1994 = !DILocation(line: 763, column: 7, scope: !1841)
!1995 = !DILocation(line: 0, scope: !1841)
!1996 = !DILocation(line: 765, column: 63, scope: !1841)
!1997 = !DILocation(line: 765, column: 7, scope: !1841)
!1998 = !DILocation(line: 767, column: 12, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1841, file: !661, line: 767, column: 9)
!2000 = !DILocation(line: 767, column: 43, scope: !1999)
!2001 = !DILocation(line: 772, column: 13, scope: !1841)
!2002 = !DILocation(line: 773, column: 18, scope: !1841)
!2003 = !DILocation(line: 774, column: 54, scope: !1841)
!2004 = !DILocation(line: 774, column: 61, scope: !1841)
!2005 = !DILocation(line: 774, column: 12, scope: !1841)
!2006 = !DILocation(line: 775, column: 18, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1841, file: !661, line: 775, column: 9)
!2008 = !DILocation(line: 775, column: 43, scope: !2007)
!2009 = !DILocation(line: 777, column: 73, scope: !2007)
!2010 = !DILocation(line: 777, column: 80, scope: !2007)
!2011 = !DILocation(line: 777, column: 14, scope: !2007)
!2012 = !DILocation(line: 777, column: 7, scope: !2007)
!2013 = !DILocation(line: 779, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1841, file: !661, line: 779, column: 9)
!2015 = !DILocation(line: 779, column: 59, scope: !2014)
!2016 = !DILocation(line: 779, column: 9, scope: !1841)
!2017 = !DILocation(line: 781, column: 16, scope: !1849)
!2018 = !DILocation(line: 781, column: 33, scope: !1849)
!2019 = !DILocation(line: 781, column: 9, scope: !1841)
!2020 = !DILocation(line: 789, column: 61, scope: !1848)
!2021 = !DILocation(line: 789, column: 71, scope: !1848)
!2022 = !DILocation(line: 0, scope: !839, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 789, column: 17, scope: !1848)
!2024 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2023)
!2025 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2023)
!2026 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2023)
!2027 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2023)
!2028 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2023)
!2029 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2023)
!2030 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2023)
!2031 = !DILocation(line: 0, scope: !1848)
!2032 = !DILocation(line: 790, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1848, file: !661, line: 790, column: 13)
!2034 = !DILocation(line: 790, column: 13, scope: !1848)
!2035 = !DILocation(line: 792, column: 7, scope: !1848)
!2036 = !DILocation(line: 747, column: 46, scope: !1842)
!2037 = distinct !{!2037, !1988, !2038, !826, !827}
!2038 = !DILocation(line: 793, column: 3, scope: !1843)
!2039 = !DILocation(line: 739, column: 9, scope: !1827)
!2040 = !DILocation(line: 794, column: 13, scope: !1827)
!2041 = !DILocation(line: 795, column: 14, scope: !1827)
!2042 = !DILocation(line: 796, column: 27, scope: !1827)
!2043 = !DILocation(line: 796, column: 15, scope: !1827)
!2044 = !DILocation(line: 796, column: 19, scope: !1827)
!2045 = !DILocation(line: 797, column: 14, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1827, file: !661, line: 797, column: 7)
!2047 = !DILocation(line: 797, column: 7, scope: !1827)
!2048 = !DILocation(line: 798, column: 16, scope: !2046)
!2049 = !DILocation(line: 798, column: 5, scope: !2046)
!2050 = !DILocation(line: 800, column: 1, scope: !1827)
!2051 = !DISubprogram(name: "SetImageBackgroundColor", scope: !73, file: !73, line: 534, type: !2052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!439, !422}
!2054 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !742, file: !742, line: 66, type: !2055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!648, !1507}
!2057 = !DISubprogram(name: "CopyMagickMemory", scope: !2058, file: !2058, line: 44, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2058 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!478, !478, !2061, !730}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2063 = distinct !DISubprogram(name: "CropImageToTiles", scope: !661, file: !661, line: 840, type: !2064, scopeLine: 842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!422, !664, !556, !667}
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2074, !2075, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2093, !2094}
!2067 = !DILocalVariable(name: "image", arg: 1, scope: !2063, file: !661, line: 840, type: !664)
!2068 = !DILocalVariable(name: "crop_geometry", arg: 2, scope: !2063, file: !661, line: 841, type: !556)
!2069 = !DILocalVariable(name: "exception", arg: 3, scope: !2063, file: !661, line: 841, type: !667)
!2070 = !DILocalVariable(name: "next", scope: !2063, file: !661, line: 844, type: !422)
!2071 = !DILocalVariable(name: "crop_image", scope: !2063, file: !661, line: 845, type: !422)
!2072 = !DILocalVariable(name: "flags", scope: !2063, file: !661, line: 848, type: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!2074 = !DILocalVariable(name: "geometry", scope: !2063, file: !661, line: 851, type: !495)
!2075 = !DILocalVariable(name: "delta", scope: !2076, file: !661, line: 863, type: !2078)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !661, line: 861, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2063, file: !661, line: 860, column: 7)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !2079, line: 142, baseType: !2080)
!2079 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !2079, line: 137, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2080, file: !2079, line: 140, baseType: !460, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !2080, file: !2079, line: 141, baseType: !460, size: 64, offset: 64)
!2084 = !DILocalVariable(name: "offset", scope: !2076, file: !661, line: 864, type: !2078)
!2085 = !DILocalVariable(name: "crop", scope: !2076, file: !661, line: 867, type: !495)
!2086 = !DILocalVariable(name: "height", scope: !2076, file: !661, line: 870, type: !433)
!2087 = !DILocalVariable(name: "width", scope: !2076, file: !661, line: 871, type: !433)
!2088 = !DILocalVariable(name: "page", scope: !2089, file: !661, line: 968, type: !495)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !661, line: 966, column: 5)
!2090 = distinct !DILexicalBlock(scope: !2063, file: !661, line: 965, column: 7)
!2091 = !DILocalVariable(name: "height", scope: !2089, file: !661, line: 971, type: !433)
!2092 = !DILocalVariable(name: "width", scope: !2089, file: !661, line: 972, type: !433)
!2093 = !DILocalVariable(name: "x", scope: !2089, file: !661, line: 975, type: !487)
!2094 = !DILocalVariable(name: "y", scope: !2089, file: !661, line: 976, type: !487)
!2095 = !DILocation(line: 0, scope: !2063)
!2096 = !DILocation(line: 843, column: 3, scope: !2063)
!2097 = !DILocation(line: 850, column: 3, scope: !2063)
!2098 = !DILocation(line: 851, column: 5, scope: !2063)
!2099 = !DILocation(line: 855, column: 14, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2063, file: !661, line: 855, column: 7)
!2101 = !DILocation(line: 855, column: 20, scope: !2100)
!2102 = !DILocation(line: 855, column: 7, scope: !2063)
!2103 = !DILocation(line: 856, column: 68, scope: !2100)
!2104 = !DILocation(line: 856, column: 12, scope: !2100)
!2105 = !DILocation(line: 856, column: 5, scope: !2100)
!2106 = !DILocation(line: 857, column: 14, scope: !2063)
!2107 = !DILocation(line: 857, column: 13, scope: !2063)
!2108 = !DILocation(line: 858, column: 8, scope: !2063)
!2109 = !DILocation(line: 859, column: 9, scope: !2063)
!2110 = !DILocation(line: 860, column: 14, scope: !2077)
!2111 = !DILocation(line: 860, column: 27, scope: !2077)
!2112 = !DILocation(line: 860, column: 7, scope: !2063)
!2113 = !DILocation(line: 866, column: 7, scope: !2076)
!2114 = !DILocation(line: 867, column: 9, scope: !2076)
!2115 = !DILocation(line: 876, column: 20, scope: !2076)
!2116 = !DILocation(line: 0, scope: !2076)
!2117 = !DILocation(line: 877, column: 21, scope: !2076)
!2118 = !DILocation(line: 878, column: 20, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 878, column: 11)
!2120 = !DILocation(line: 878, column: 26, scope: !2119)
!2121 = !DILocation(line: 878, column: 11, scope: !2076)
!2122 = !DILocation(line: 879, column: 23, scope: !2119)
!2123 = !DILocation(line: 879, column: 9, scope: !2119)
!2124 = !DILocation(line: 880, column: 20, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 880, column: 11)
!2126 = !DILocation(line: 880, column: 27, scope: !2125)
!2127 = !DILocation(line: 880, column: 11, scope: !2076)
!2128 = !DILocation(line: 881, column: 24, scope: !2125)
!2129 = !DILocation(line: 881, column: 9, scope: !2125)
!2130 = !DILocation(line: 882, column: 18, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 882, column: 11)
!2132 = !DILocation(line: 882, column: 33, scope: !2131)
!2133 = !DILocation(line: 0, scope: !2131)
!2134 = !DILocation(line: 882, column: 11, scope: !2076)
!2135 = !DILocation(line: 884, column: 16, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !661, line: 883, column: 9)
!2137 = !DILocation(line: 885, column: 29, scope: !2136)
!2138 = !DILocation(line: 885, column: 44, scope: !2136)
!2139 = !DILocation(line: 885, column: 17, scope: !2136)
!2140 = !DILocation(line: 886, column: 9, scope: !2136)
!2141 = !DILocation(line: 889, column: 16, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2131, file: !661, line: 888, column: 9)
!2143 = !DILocation(line: 890, column: 29, scope: !2142)
!2144 = !DILocation(line: 890, column: 44, scope: !2142)
!2145 = !DILocation(line: 890, column: 17, scope: !2142)
!2146 = !DILocation(line: 892, column: 15, scope: !2076)
!2147 = !DILocation(line: 892, column: 30, scope: !2076)
!2148 = !DILocation(line: 892, column: 29, scope: !2076)
!2149 = !DILocation(line: 893, column: 15, scope: !2076)
!2150 = !DILocation(line: 893, column: 31, scope: !2076)
!2151 = !DILocation(line: 893, column: 30, scope: !2076)
!2152 = !DILocation(line: 894, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 894, column: 11)
!2154 = !DILocation(line: 894, column: 11, scope: !2076)
!2155 = !DILocation(line: 895, column: 9, scope: !2153)
!2156 = !DILocation(line: 896, column: 19, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 896, column: 11)
!2158 = !DILocation(line: 896, column: 11, scope: !2076)
!2159 = !DILocation(line: 897, column: 9, scope: !2157)
!2160 = !DILocation(line: 898, column: 12, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2076, file: !661, line: 898, column: 7)
!2162 = !DILocation(line: 0, scope: !2161)
!2163 = !DILocation(line: 898, column: 33, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !661, line: 898, column: 7)
!2165 = !DILocation(line: 898, column: 7, scope: !2161)
!2166 = !DILocation(line: 0, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !661, line: 900, column: 13)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !661, line: 899, column: 7)
!2169 = !DILocation(line: 900, column: 13, scope: !2168)
!2170 = !DILocation(line: 903, column: 16, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !661, line: 901, column: 11)
!2172 = !DILocation(line: 903, column: 15, scope: !2171)
!2173 = !DILocation(line: 902, column: 68, scope: !2171)
!2174 = !DILocation(line: 902, column: 42, scope: !2171)
!2175 = !DILocalVariable(name: "x", arg: 1, scope: !2176, file: !661, line: 830, type: !460)
!2176 = distinct !DISubprogram(name: "MagickRound", scope: !661, file: !661, line: 830, type: !2177, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!460, !460}
!2179 = !{!2175}
!2180 = !DILocation(line: 0, scope: !2176, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 902, column: 30, scope: !2171)
!2182 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2181)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !661, line: 835, column: 7)
!2184 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2181)
!2185 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2181)
!2186 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2181)
!2187 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2181)
!2188 = !DILocation(line: 902, column: 20, scope: !2171)
!2189 = !DILocation(line: 904, column: 21, scope: !2171)
!2190 = !DILocation(line: 906, column: 16, scope: !2171)
!2191 = !DILocation(line: 906, column: 15, scope: !2171)
!2192 = !DILocation(line: 905, column: 72, scope: !2171)
!2193 = !DILocation(line: 905, column: 46, scope: !2171)
!2194 = !DILocation(line: 0, scope: !2176, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 905, column: 34, scope: !2171)
!2196 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2195)
!2197 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2195)
!2198 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2195)
!2199 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2195)
!2200 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2195)
!2201 = !DILocation(line: 916, column: 20, scope: !2168)
!2202 = !DILocation(line: 917, column: 29, scope: !2168)
!2203 = !DILocation(line: 917, column: 15, scope: !2168)
!2204 = !DILocation(line: 918, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2168, file: !661, line: 918, column: 9)
!2206 = !DILocation(line: 911, column: 16, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2167, file: !661, line: 909, column: 11)
!2208 = !DILocation(line: 911, column: 15, scope: !2207)
!2209 = !DILocation(line: 910, column: 68, scope: !2207)
!2210 = !DILocation(line: 910, column: 42, scope: !2207)
!2211 = !DILocation(line: 0, scope: !2176, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 910, column: 30, scope: !2207)
!2213 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2212)
!2214 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2212)
!2215 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2212)
!2216 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2212)
!2217 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2212)
!2218 = !DILocation(line: 910, column: 20, scope: !2207)
!2219 = !DILocation(line: 912, column: 21, scope: !2207)
!2220 = !DILocation(line: 914, column: 16, scope: !2207)
!2221 = !DILocation(line: 914, column: 15, scope: !2207)
!2222 = !DILocation(line: 913, column: 72, scope: !2207)
!2223 = !DILocation(line: 913, column: 46, scope: !2207)
!2224 = !DILocation(line: 0, scope: !2176, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 913, column: 34, scope: !2207)
!2226 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2225)
!2227 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2225)
!2228 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2225)
!2229 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2225)
!2230 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2225)
!2231 = !DILocation(line: 923, column: 27, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !661, line: 921, column: 13)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !661, line: 920, column: 15)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !661, line: 919, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2205, file: !661, line: 918, column: 9)
!2236 = !DILocation(line: 923, column: 18, scope: !2232)
!2237 = !DILocation(line: 923, column: 17, scope: !2232)
!2238 = !DILocation(line: 922, column: 70, scope: !2232)
!2239 = !DILocation(line: 922, column: 44, scope: !2232)
!2240 = !DILocation(line: 0, scope: !2176, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 922, column: 32, scope: !2232)
!2242 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2241)
!2243 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2241)
!2244 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2241)
!2245 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2241)
!2246 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2241)
!2247 = !DILocation(line: 922, column: 22, scope: !2232)
!2248 = !DILocation(line: 924, column: 23, scope: !2232)
!2249 = !DILocation(line: 926, column: 18, scope: !2232)
!2250 = !DILocation(line: 926, column: 17, scope: !2232)
!2251 = !DILocation(line: 925, column: 73, scope: !2232)
!2252 = !DILocation(line: 925, column: 47, scope: !2232)
!2253 = !DILocation(line: 0, scope: !2176, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 925, column: 35, scope: !2232)
!2255 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2254)
!2256 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2254)
!2257 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2254)
!2258 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2254)
!2259 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2254)
!2260 = !DILocation(line: 0, scope: !2233)
!2261 = !DILocation(line: 936, column: 21, scope: !2234)
!2262 = !DILocation(line: 937, column: 31, scope: !2234)
!2263 = !DILocation(line: 937, column: 17, scope: !2234)
!2264 = !DILocation(line: 938, column: 16, scope: !2234)
!2265 = !DILocation(line: 939, column: 20, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2234, file: !661, line: 939, column: 15)
!2267 = !DILocation(line: 939, column: 15, scope: !2234)
!2268 = !DILocation(line: 941, column: 11, scope: !2234)
!2269 = !DILocation(line: 918, column: 35, scope: !2235)
!2270 = distinct !{!2270, !2204, !2271, !826, !827}
!2271 = !DILocation(line: 942, column: 9, scope: !2205)
!2272 = !DILocation(line: 931, column: 27, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2233, file: !661, line: 929, column: 13)
!2274 = !DILocation(line: 931, column: 18, scope: !2273)
!2275 = !DILocation(line: 931, column: 17, scope: !2273)
!2276 = !DILocation(line: 930, column: 70, scope: !2273)
!2277 = !DILocation(line: 930, column: 44, scope: !2273)
!2278 = !DILocation(line: 0, scope: !2176, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 930, column: 32, scope: !2273)
!2280 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2279)
!2281 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2279)
!2282 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2279)
!2283 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2279)
!2284 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2279)
!2285 = !DILocation(line: 930, column: 22, scope: !2273)
!2286 = !DILocation(line: 932, column: 23, scope: !2273)
!2287 = !DILocation(line: 934, column: 18, scope: !2273)
!2288 = !DILocation(line: 934, column: 17, scope: !2273)
!2289 = !DILocation(line: 933, column: 73, scope: !2273)
!2290 = !DILocation(line: 933, column: 47, scope: !2273)
!2291 = !DILocation(line: 0, scope: !2176, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 933, column: 35, scope: !2273)
!2293 = !DILocation(line: 835, column: 10, scope: !2183, inlinedAt: !2292)
!2294 = !DILocation(line: 835, column: 9, scope: !2183, inlinedAt: !2292)
!2295 = !DILocation(line: 835, column: 23, scope: !2183, inlinedAt: !2292)
!2296 = !DILocation(line: 835, column: 30, scope: !2183, inlinedAt: !2292)
!2297 = !DILocation(line: 835, column: 20, scope: !2183, inlinedAt: !2292)
!2298 = !DILocation(line: 943, column: 18, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2168, file: !661, line: 943, column: 13)
!2300 = !DILocation(line: 943, column: 13, scope: !2168)
!2301 = distinct !{!2301, !2165, !2302, !826, !827}
!2302 = !DILocation(line: 945, column: 7, scope: !2161)
!2303 = !DILocation(line: 946, column: 7, scope: !2076)
!2304 = !DILocation(line: 947, column: 14, scope: !2076)
!2305 = !DILocation(line: 948, column: 5, scope: !2077)
!2306 = !DILocation(line: 949, column: 18, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2063, file: !661, line: 949, column: 7)
!2308 = !DILocation(line: 949, column: 24, scope: !2307)
!2309 = !DILocation(line: 949, column: 30, scope: !2307)
!2310 = !DILocation(line: 955, column: 18, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !661, line: 951, column: 5)
!2312 = !DILocation(line: 956, column: 23, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2311, file: !661, line: 956, column: 11)
!2314 = !DILocation(line: 956, column: 42, scope: !2313)
!2315 = !DILocation(line: 958, column: 43, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !661, line: 957, column: 9)
!2317 = !DILocation(line: 958, column: 23, scope: !2316)
!2318 = !DILocation(line: 958, column: 33, scope: !2316)
!2319 = !DILocation(line: 959, column: 44, scope: !2316)
!2320 = !DILocation(line: 959, column: 28, scope: !2316)
!2321 = !DILocation(line: 959, column: 34, scope: !2316)
!2322 = !DILocation(line: 960, column: 40, scope: !2316)
!2323 = !DILocation(line: 960, column: 28, scope: !2316)
!2324 = !DILocation(line: 960, column: 29, scope: !2316)
!2325 = !DILocation(line: 961, column: 40, scope: !2316)
!2326 = !DILocation(line: 961, column: 28, scope: !2316)
!2327 = !DILocation(line: 961, column: 29, scope: !2316)
!2328 = !DILocation(line: 962, column: 9, scope: !2316)
!2329 = !DILocation(line: 965, column: 15, scope: !2090)
!2330 = !DILocation(line: 965, column: 23, scope: !2090)
!2331 = !DILocation(line: 965, column: 41, scope: !2090)
!2332 = !DILocation(line: 965, column: 52, scope: !2090)
!2333 = !DILocation(line: 965, column: 57, scope: !2090)
!2334 = !DILocation(line: 965, column: 7, scope: !2063)
!2335 = !DILocation(line: 981, column: 19, scope: !2089)
!2336 = !DILocation(line: 0, scope: !2089)
!2337 = !DILocation(line: 982, column: 22, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2089, file: !661, line: 982, column: 11)
!2339 = !DILocation(line: 982, column: 11, scope: !2089)
!2340 = !DILocation(line: 984, column: 23, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2089, file: !661, line: 984, column: 11)
!2342 = !DILocation(line: 984, column: 11, scope: !2089)
!2343 = !DILocation(line: 985, column: 28, scope: !2341)
!2344 = !DILocation(line: 985, column: 9, scope: !2341)
!2345 = !DILocation(line: 987, column: 11, scope: !2089)
!2346 = !DILocation(line: 990, column: 11, scope: !2089)
!2347 = !DILocation(line: 992, column: 12, scope: !2089)
!2348 = !DILocation(line: 993, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !661, line: 993, column: 7)
!2350 = distinct !DILexicalBlock(scope: !2089, file: !661, line: 993, column: 7)
!2351 = !DILocation(line: 993, column: 7, scope: !2350)
!2352 = !DILocation(line: 995, column: 9, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !661, line: 995, column: 9)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !661, line: 994, column: 7)
!2355 = !DILocation(line: 997, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !661, line: 996, column: 9)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !661, line: 995, column: 9)
!2358 = !DILocation(line: 998, column: 26, scope: !2356)
!2359 = !DILocation(line: 999, column: 21, scope: !2356)
!2360 = !DILocation(line: 1000, column: 21, scope: !2356)
!2361 = !DILocation(line: 1001, column: 16, scope: !2356)
!2362 = !DILocation(line: 1002, column: 20, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !661, line: 1002, column: 15)
!2364 = !DILocation(line: 1002, column: 15, scope: !2356)
!2365 = !DILocation(line: 1004, column: 11, scope: !2356)
!2366 = !DILocation(line: 995, column: 46, scope: !2357)
!2367 = !DILocation(line: 995, column: 21, scope: !2357)
!2368 = distinct !{!2368, !2352, !2369, !826, !827}
!2369 = !DILocation(line: 1005, column: 9, scope: !2353)
!2370 = !DILocation(line: 993, column: 45, scope: !2349)
!2371 = distinct !{!2371, !2351, !2372, !826, !827}
!2372 = !DILocation(line: 1008, column: 7, scope: !2350)
!2373 = !DILocation(line: 1009, column: 14, scope: !2089)
!2374 = !DILocation(line: 1011, column: 10, scope: !2063)
!2375 = !DILocation(line: 1011, column: 3, scope: !2063)
!2376 = !DILocation(line: 1012, column: 1, scope: !2063)
!2377 = !DISubprogram(name: "ParseGravityGeometry", scope: !153, file: !153, line: 144, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2073, !664, !556, !2380, !667}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!2381 = !DISubprogram(name: "ClearMagickException", scope: !253, file: !253, line: 165, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !667}
!2384 = distinct !DISubprogram(name: "ExcerptImage", scope: !661, file: !661, line: 1042, type: !1258, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2399, !2400, !2401, !2402}
!2386 = !DILocalVariable(name: "image", arg: 1, scope: !2384, file: !661, line: 1042, type: !664)
!2387 = !DILocalVariable(name: "geometry", arg: 2, scope: !2384, file: !661, line: 1043, type: !1260)
!2388 = !DILocalVariable(name: "exception", arg: 3, scope: !2384, file: !661, line: 1043, type: !667)
!2389 = !DILocalVariable(name: "excerpt_view", scope: !2384, file: !661, line: 1048, type: !740)
!2390 = !DILocalVariable(name: "image_view", scope: !2384, file: !661, line: 1049, type: !740)
!2391 = !DILocalVariable(name: "excerpt_image", scope: !2384, file: !661, line: 1052, type: !422)
!2392 = !DILocalVariable(name: "status", scope: !2384, file: !661, line: 1055, type: !439)
!2393 = !DILocalVariable(name: "progress", scope: !2384, file: !661, line: 1058, type: !559)
!2394 = !DILocalVariable(name: "y", scope: !2384, file: !661, line: 1061, type: !487)
!2395 = !DILocalVariable(name: "p", scope: !2396, file: !661, line: 1091, type: !756)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !661, line: 1089, column: 3)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !661, line: 1088, column: 3)
!2398 = distinct !DILexicalBlock(scope: !2384, file: !661, line: 1088, column: 3)
!2399 = !DILocalVariable(name: "excerpt_indexes", scope: !2396, file: !661, line: 1094, type: !758)
!2400 = !DILocalVariable(name: "indexes", scope: !2396, file: !661, line: 1095, type: !758)
!2401 = !DILocalVariable(name: "q", scope: !2396, file: !661, line: 1098, type: !761)
!2402 = !DILocalVariable(name: "proceed", scope: !2403, file: !661, line: 1125, type: !439)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !661, line: 1123, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2396, file: !661, line: 1122, column: 9)
!2405 = !DILocation(line: 0, scope: !2384)
!2406 = !DILocation(line: 1068, column: 14, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2384, file: !661, line: 1068, column: 7)
!2408 = !DILocation(line: 1068, column: 20, scope: !2407)
!2409 = !DILocation(line: 1068, column: 7, scope: !2384)
!2410 = !DILocation(line: 1069, column: 68, scope: !2407)
!2411 = !DILocation(line: 1069, column: 12, scope: !2407)
!2412 = !DILocation(line: 1069, column: 5, scope: !2407)
!2413 = !DILocation(line: 1073, column: 44, scope: !2384)
!2414 = !DILocation(line: 1073, column: 60, scope: !2384)
!2415 = !DILocation(line: 1073, column: 17, scope: !2384)
!2416 = !DILocation(line: 1075, column: 21, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2384, file: !661, line: 1075, column: 7)
!2418 = !DILocation(line: 1075, column: 7, scope: !2384)
!2419 = !DILocation(line: 1082, column: 14, scope: !2384)
!2420 = !DILocation(line: 1083, column: 16, scope: !2384)
!2421 = !DILocation(line: 1088, column: 42, scope: !2397)
!2422 = !DILocation(line: 1088, column: 15, scope: !2397)
!2423 = !DILocation(line: 1088, column: 3, scope: !2398)
!2424 = !DILocation(line: 1100, column: 16, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2396, file: !661, line: 1100, column: 9)
!2426 = !DILocation(line: 1100, column: 9, scope: !2396)
!2427 = !DILocation(line: 1102, column: 54, scope: !2396)
!2428 = !DILocation(line: 1102, column: 66, scope: !2396)
!2429 = !DILocation(line: 1102, column: 67, scope: !2396)
!2430 = !DILocation(line: 1103, column: 17, scope: !2396)
!2431 = !DILocation(line: 1102, column: 7, scope: !2396)
!2432 = !DILocation(line: 0, scope: !2396)
!2433 = !DILocation(line: 1104, column: 67, scope: !2396)
!2434 = !DILocation(line: 1104, column: 7, scope: !2396)
!2435 = !DILocation(line: 1106, column: 12, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2396, file: !661, line: 1106, column: 9)
!2437 = !DILocation(line: 1106, column: 43, scope: !2436)
!2438 = !DILocation(line: 1111, column: 57, scope: !2396)
!2439 = !DILocation(line: 1111, column: 64, scope: !2396)
!2440 = !DILocation(line: 1111, column: 12, scope: !2396)
!2441 = !DILocation(line: 1112, column: 13, scope: !2396)
!2442 = !DILocation(line: 1113, column: 17, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2396, file: !661, line: 1113, column: 9)
!2444 = !DILocation(line: 1113, column: 9, scope: !2396)
!2445 = !DILocation(line: 1115, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !661, line: 1114, column: 7)
!2447 = !DILocation(line: 1116, column: 29, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !661, line: 1116, column: 13)
!2449 = !DILocation(line: 1116, column: 13, scope: !2446)
!2450 = !DILocation(line: 1118, column: 28, scope: !2448)
!2451 = !DILocation(line: 1118, column: 35, scope: !2448)
!2452 = !DILocation(line: 1117, column: 18, scope: !2448)
!2453 = !DILocation(line: 1117, column: 11, scope: !2448)
!2454 = !DILocation(line: 1120, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2396, file: !661, line: 1120, column: 9)
!2456 = !DILocation(line: 1120, column: 62, scope: !2455)
!2457 = !DILocation(line: 1120, column: 9, scope: !2396)
!2458 = !DILocation(line: 1122, column: 16, scope: !2404)
!2459 = !DILocation(line: 1122, column: 33, scope: !2404)
!2460 = !DILocation(line: 1122, column: 9, scope: !2396)
!2461 = !DILocation(line: 1130, column: 64, scope: !2403)
!2462 = !DILocation(line: 1130, column: 74, scope: !2403)
!2463 = !DILocation(line: 0, scope: !839, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1130, column: 17, scope: !2403)
!2465 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2464)
!2466 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2464)
!2467 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2464)
!2468 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2464)
!2469 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2464)
!2470 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2464)
!2471 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2464)
!2472 = !DILocation(line: 0, scope: !2403)
!2473 = !DILocation(line: 1131, column: 21, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2403, file: !661, line: 1131, column: 13)
!2475 = !DILocation(line: 1131, column: 13, scope: !2403)
!2476 = !DILocation(line: 1133, column: 7, scope: !2403)
!2477 = !DILocation(line: 1088, column: 49, scope: !2397)
!2478 = distinct !{!2478, !2423, !2479, !826, !827}
!2479 = !DILocation(line: 1134, column: 3, scope: !2398)
!2480 = !DILocation(line: 1080, column: 9, scope: !2384)
!2481 = !DILocation(line: 1135, column: 16, scope: !2384)
!2482 = !DILocation(line: 1136, column: 14, scope: !2384)
!2483 = !DILocation(line: 1137, column: 30, scope: !2384)
!2484 = !DILocation(line: 1137, column: 18, scope: !2384)
!2485 = !DILocation(line: 1137, column: 22, scope: !2384)
!2486 = !DILocation(line: 1138, column: 14, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2384, file: !661, line: 1138, column: 7)
!2488 = !DILocation(line: 1138, column: 7, scope: !2384)
!2489 = !DILocation(line: 1139, column: 19, scope: !2487)
!2490 = !DILocation(line: 1139, column: 5, scope: !2487)
!2491 = !DILocation(line: 1141, column: 1, scope: !2384)
!2492 = distinct !DISubprogram(name: "ExtentImage", scope: !661, file: !661, line: 1173, type: !1258, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DILocalVariable(name: "image", arg: 1, scope: !2492, file: !661, line: 1173, type: !664)
!2495 = !DILocalVariable(name: "geometry", arg: 2, scope: !2492, file: !661, line: 1174, type: !1260)
!2496 = !DILocalVariable(name: "exception", arg: 3, scope: !2492, file: !661, line: 1174, type: !667)
!2497 = !DILocalVariable(name: "extent_image", scope: !2492, file: !661, line: 1177, type: !422)
!2498 = !DILocation(line: 0, scope: !2492)
!2499 = !DILocation(line: 1184, column: 14, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2492, file: !661, line: 1184, column: 7)
!2501 = !DILocation(line: 1184, column: 20, scope: !2500)
!2502 = !DILocation(line: 1184, column: 7, scope: !2492)
!2503 = !DILocation(line: 1185, column: 68, scope: !2500)
!2504 = !DILocation(line: 1185, column: 12, scope: !2500)
!2505 = !DILocation(line: 1185, column: 5, scope: !2500)
!2506 = !DILocation(line: 1189, column: 43, scope: !2492)
!2507 = !DILocation(line: 1189, column: 59, scope: !2492)
!2508 = !DILocation(line: 1189, column: 16, scope: !2492)
!2509 = !DILocation(line: 1191, column: 20, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2492, file: !661, line: 1191, column: 7)
!2511 = !DILocation(line: 1191, column: 7, scope: !2492)
!2512 = !DILocation(line: 1193, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2492, file: !661, line: 1193, column: 7)
!2514 = !DILocation(line: 1193, column: 54, scope: !2513)
!2515 = !DILocation(line: 1193, column: 7, scope: !2492)
!2516 = !DILocation(line: 1195, column: 49, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !661, line: 1194, column: 5)
!2518 = !DILocation(line: 1195, column: 7, scope: !2517)
!2519 = !DILocation(line: 1196, column: 20, scope: !2517)
!2520 = !DILocation(line: 1197, column: 7, scope: !2517)
!2521 = !DILocation(line: 1199, column: 38, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2492, file: !661, line: 1199, column: 7)
!2523 = !DILocation(line: 1199, column: 46, scope: !2522)
!2524 = !DILocation(line: 1199, column: 7, scope: !2492)
!2525 = !DILocation(line: 1200, column: 19, scope: !2522)
!2526 = !DILocation(line: 1200, column: 24, scope: !2522)
!2527 = !{!707, !708, i64 32}
!2528 = !DILocation(line: 1200, column: 5, scope: !2522)
!2529 = !DILocation(line: 1201, column: 10, scope: !2492)
!2530 = !DILocation(line: 1202, column: 45, scope: !2492)
!2531 = !{!707, !708, i64 416}
!2532 = !DILocation(line: 1202, column: 70, scope: !2492)
!2533 = !DILocation(line: 1202, column: 59, scope: !2492)
!2534 = !DILocation(line: 1203, column: 16, scope: !2492)
!2535 = !DILocation(line: 1203, column: 5, scope: !2492)
!2536 = !DILocation(line: 1202, column: 10, scope: !2492)
!2537 = !DILocation(line: 1204, column: 3, scope: !2492)
!2538 = !DILocation(line: 1205, column: 1, scope: !2492)
!2539 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !2540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !667, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!2544 = !DISubprogram(name: "CompositeImage", scope: !168, file: !168, line: 110, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!439, !422, !2547, !664, !1509, !1509}
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!2548 = distinct !DISubprogram(name: "RollImage", scope: !661, file: !661, line: 1569, type: !2549, scopeLine: 1571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!422, !664, !1509, !1509, !667}
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DILocalVariable(name: "image", arg: 1, scope: !2548, file: !661, line: 1569, type: !664)
!2553 = !DILocalVariable(name: "x_offset", arg: 2, scope: !2548, file: !661, line: 1569, type: !1509)
!2554 = !DILocalVariable(name: "y_offset", arg: 3, scope: !2548, file: !661, line: 1570, type: !1509)
!2555 = !DILocalVariable(name: "exception", arg: 4, scope: !2548, file: !661, line: 1570, type: !667)
!2556 = !DILocalVariable(name: "roll_image", scope: !2548, file: !661, line: 1575, type: !422)
!2557 = !DILocalVariable(name: "status", scope: !2548, file: !661, line: 1578, type: !2073)
!2558 = !DILocalVariable(name: "offset", scope: !2548, file: !661, line: 1581, type: !495)
!2559 = !DILocation(line: 1581, column: 5, scope: !2548)
!2560 = !DILocation(line: 0, scope: !2548)
!2561 = !DILocation(line: 1588, column: 14, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2548, file: !661, line: 1588, column: 7)
!2563 = !DILocation(line: 1588, column: 20, scope: !2562)
!2564 = !DILocation(line: 1588, column: 7, scope: !2548)
!2565 = !DILocation(line: 1589, column: 68, scope: !2562)
!2566 = !DILocation(line: 1589, column: 12, scope: !2562)
!2567 = !DILocation(line: 1589, column: 5, scope: !2562)
!2568 = !DILocation(line: 1592, column: 38, scope: !2548)
!2569 = !DILocation(line: 1592, column: 53, scope: !2548)
!2570 = !DILocation(line: 1592, column: 14, scope: !2548)
!2571 = !DILocation(line: 1593, column: 18, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2548, file: !661, line: 1593, column: 7)
!2573 = !DILocation(line: 1593, column: 7, scope: !2548)
!2574 = !DILocation(line: 1597, column: 19, scope: !2548)
!2575 = !DILocation(line: 1597, column: 3, scope: !2548)
!2576 = !DILocation(line: 1598, column: 13, scope: !2548)
!2577 = distinct !{!2577, !2575, !2578, !826, !827}
!2578 = !DILocation(line: 1598, column: 32, scope: !2548)
!2579 = !DILocation(line: 1599, column: 3, scope: !2548)
!2580 = !DILocation(line: 1599, column: 19, scope: !2548)
!2581 = !DILocation(line: 1600, column: 13, scope: !2548)
!2582 = distinct !{!2582, !2579, !2583, !826, !827}
!2583 = !DILocation(line: 1600, column: 32, scope: !2548)
!2584 = !DILocation(line: 1601, column: 19, scope: !2548)
!2585 = !DILocation(line: 1601, column: 3, scope: !2548)
!2586 = !DILocation(line: 1602, column: 13, scope: !2548)
!2587 = distinct !{!2587, !2585, !2588, !826, !827}
!2588 = !DILocation(line: 1602, column: 32, scope: !2548)
!2589 = !DILocation(line: 1603, column: 3, scope: !2548)
!2590 = !DILocation(line: 1603, column: 19, scope: !2548)
!2591 = !DILocation(line: 1604, column: 13, scope: !2548)
!2592 = distinct !{!2592, !2589, !2593, !826, !827}
!2593 = !DILocation(line: 1604, column: 32, scope: !2548)
!2594 = !DILocation(line: 1609, column: 47, scope: !2548)
!2595 = !DILocation(line: 1609, column: 78, scope: !2548)
!2596 = !DILocation(line: 1608, column: 10, scope: !2548)
!2597 = !DILocation(line: 0, scope: !839, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1611, column: 10, scope: !2548)
!2599 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2598)
!2600 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2598)
!2601 = !DILocation(line: 33, column: 14, scope: !2602, inlinedAt: !2598)
!2602 = distinct !DILexicalBlock(scope: !839, file: !840, line: 33, column: 7)
!2603 = !DILocation(line: 33, column: 31, scope: !2602, inlinedAt: !2598)
!2604 = !DILocation(line: 33, column: 7, scope: !839, inlinedAt: !2598)
!2605 = !DILocation(line: 35, column: 70, scope: !839, inlinedAt: !2598)
!2606 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2598)
!2607 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2598)
!2608 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2598)
!2609 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2598)
!2610 = !DILocation(line: 36, column: 3, scope: !839, inlinedAt: !2598)
!2611 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2598)
!2612 = !DILocation(line: 1612, column: 51, scope: !2548)
!2613 = !DILocation(line: 1612, column: 58, scope: !2548)
!2614 = !DILocation(line: 1613, column: 42, scope: !2548)
!2615 = !DILocation(line: 1613, column: 46, scope: !2548)
!2616 = !DILocation(line: 1612, column: 11, scope: !2548)
!2617 = !DILocation(line: 1612, column: 9, scope: !2548)
!2618 = !DILocation(line: 0, scope: !839, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 1615, column: 10, scope: !2548)
!2620 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2619)
!2621 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2619)
!2622 = !DILocation(line: 33, column: 14, scope: !2602, inlinedAt: !2619)
!2623 = !DILocation(line: 33, column: 31, scope: !2602, inlinedAt: !2619)
!2624 = !DILocation(line: 33, column: 7, scope: !839, inlinedAt: !2619)
!2625 = !DILocation(line: 35, column: 70, scope: !839, inlinedAt: !2619)
!2626 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2619)
!2627 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2619)
!2628 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2619)
!2629 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2619)
!2630 = !DILocation(line: 36, column: 3, scope: !839, inlinedAt: !2619)
!2631 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2619)
!2632 = !DILocation(line: 1616, column: 69, scope: !2548)
!2633 = !DILocation(line: 1616, column: 73, scope: !2548)
!2634 = !DILocation(line: 1617, column: 31, scope: !2548)
!2635 = !DILocation(line: 1617, column: 38, scope: !2548)
!2636 = !DILocation(line: 1616, column: 11, scope: !2548)
!2637 = !DILocation(line: 1616, column: 9, scope: !2548)
!2638 = !DILocation(line: 0, scope: !839, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1618, column: 10, scope: !2548)
!2640 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2639)
!2641 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2639)
!2642 = !DILocation(line: 33, column: 14, scope: !2602, inlinedAt: !2639)
!2643 = !DILocation(line: 33, column: 31, scope: !2602, inlinedAt: !2639)
!2644 = !DILocation(line: 33, column: 7, scope: !839, inlinedAt: !2639)
!2645 = !DILocation(line: 35, column: 70, scope: !839, inlinedAt: !2639)
!2646 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2639)
!2647 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2639)
!2648 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2639)
!2649 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2639)
!2650 = !DILocation(line: 36, column: 3, scope: !839, inlinedAt: !2639)
!2651 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2639)
!2652 = !DILocation(line: 1619, column: 51, scope: !2548)
!2653 = !DILocation(line: 1619, column: 58, scope: !2548)
!2654 = !DILocation(line: 1619, column: 75, scope: !2548)
!2655 = !DILocation(line: 1619, column: 79, scope: !2548)
!2656 = !DILocation(line: 1619, column: 11, scope: !2548)
!2657 = !DILocation(line: 1619, column: 9, scope: !2548)
!2658 = !DILocation(line: 0, scope: !839, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1621, column: 10, scope: !2548)
!2660 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !2659)
!2661 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !2659)
!2662 = !DILocation(line: 33, column: 14, scope: !2602, inlinedAt: !2659)
!2663 = !DILocation(line: 33, column: 31, scope: !2602, inlinedAt: !2659)
!2664 = !DILocation(line: 33, column: 7, scope: !839, inlinedAt: !2659)
!2665 = !DILocation(line: 35, column: 70, scope: !839, inlinedAt: !2659)
!2666 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !2659)
!2667 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !2659)
!2668 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !2659)
!2669 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !2659)
!2670 = !DILocation(line: 36, column: 3, scope: !839, inlinedAt: !2659)
!2671 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !2659)
!2672 = !DILocation(line: 1622, column: 27, scope: !2548)
!2673 = !DILocation(line: 1622, column: 15, scope: !2548)
!2674 = !DILocation(line: 1622, column: 19, scope: !2548)
!2675 = !DILocation(line: 1623, column: 14, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2548, file: !661, line: 1623, column: 7)
!2677 = !DILocation(line: 1623, column: 7, scope: !2548)
!2678 = !DILocation(line: 1624, column: 16, scope: !2676)
!2679 = !DILocation(line: 1624, column: 5, scope: !2676)
!2680 = !DILocation(line: 1626, column: 1, scope: !2548)
!2681 = distinct !DISubprogram(name: "CopyImageRegion", scope: !661, file: !661, line: 1498, type: !2682, scopeLine: 1502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!439, !422, !664, !730, !730, !1509, !1509, !1509, !1509, !667}
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2702, !2703, !2704, !2705}
!2685 = !DILocalVariable(name: "destination", arg: 1, scope: !2681, file: !661, line: 1498, type: !422)
!2686 = !DILocalVariable(name: "source", arg: 2, scope: !2681, file: !661, line: 1499, type: !664)
!2687 = !DILocalVariable(name: "columns", arg: 3, scope: !2681, file: !661, line: 1499, type: !730)
!2688 = !DILocalVariable(name: "rows", arg: 4, scope: !2681, file: !661, line: 1499, type: !730)
!2689 = !DILocalVariable(name: "sx", arg: 5, scope: !2681, file: !661, line: 1500, type: !1509)
!2690 = !DILocalVariable(name: "sy", arg: 6, scope: !2681, file: !661, line: 1500, type: !1509)
!2691 = !DILocalVariable(name: "dx", arg: 7, scope: !2681, file: !661, line: 1500, type: !1509)
!2692 = !DILocalVariable(name: "dy", arg: 8, scope: !2681, file: !661, line: 1500, type: !1509)
!2693 = !DILocalVariable(name: "exception", arg: 9, scope: !2681, file: !661, line: 1501, type: !667)
!2694 = !DILocalVariable(name: "source_view", scope: !2681, file: !661, line: 1504, type: !740)
!2695 = !DILocalVariable(name: "destination_view", scope: !2681, file: !661, line: 1505, type: !740)
!2696 = !DILocalVariable(name: "status", scope: !2681, file: !661, line: 1508, type: !439)
!2697 = !DILocalVariable(name: "y", scope: !2681, file: !661, line: 1511, type: !487)
!2698 = !DILocalVariable(name: "sync", scope: !2699, file: !661, line: 1525, type: !439)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !661, line: 1523, column: 3)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !661, line: 1522, column: 3)
!2701 = distinct !DILexicalBlock(scope: !2681, file: !661, line: 1522, column: 3)
!2702 = !DILocalVariable(name: "indexes", scope: !2699, file: !661, line: 1528, type: !754)
!2703 = !DILocalVariable(name: "p", scope: !2699, file: !661, line: 1531, type: !756)
!2704 = !DILocalVariable(name: "destination_indexes", scope: !2699, file: !661, line: 1534, type: !758)
!2705 = !DILocalVariable(name: "q", scope: !2699, file: !661, line: 1537, type: !761)
!2706 = !DILocation(line: 0, scope: !2681)
!2707 = !DILocation(line: 1513, column: 15, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2681, file: !661, line: 1513, column: 7)
!2709 = !DILocation(line: 1513, column: 7, scope: !2681)
!2710 = !DILocation(line: 1516, column: 15, scope: !2681)
!2711 = !DILocation(line: 1517, column: 20, scope: !2681)
!2712 = !DILocation(line: 1522, column: 15, scope: !2700)
!2713 = !DILocation(line: 1522, column: 3, scope: !2701)
!2714 = !DILocation(line: 1542, column: 16, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2699, file: !661, line: 1542, column: 9)
!2716 = !DILocation(line: 1542, column: 9, scope: !2699)
!2717 = !DILocation(line: 1544, column: 50, scope: !2699)
!2718 = !DILocation(line: 1544, column: 7, scope: !2699)
!2719 = !DILocation(line: 0, scope: !2699)
!2720 = !DILocation(line: 1545, column: 57, scope: !2699)
!2721 = !DILocation(line: 1545, column: 7, scope: !2699)
!2722 = !DILocation(line: 1546, column: 12, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2699, file: !661, line: 1546, column: 9)
!2724 = !DILocation(line: 1546, column: 43, scope: !2723)
!2725 = !DILocation(line: 1551, column: 13, scope: !2699)
!2726 = !DILocation(line: 1552, column: 12, scope: !2699)
!2727 = !DILocation(line: 1553, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2699, file: !661, line: 1553, column: 9)
!2729 = !DILocation(line: 1553, column: 9, scope: !2699)
!2730 = !DILocation(line: 1555, column: 29, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !661, line: 1554, column: 7)
!2732 = !DILocation(line: 1556, column: 33, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2731, file: !661, line: 1556, column: 13)
!2734 = !DILocation(line: 1556, column: 13, scope: !2731)
!2735 = !DILocation(line: 1557, column: 18, scope: !2733)
!2736 = !DILocation(line: 1557, column: 11, scope: !2733)
!2737 = !DILocation(line: 1560, column: 10, scope: !2699)
!2738 = !DILocation(line: 1561, column: 14, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2699, file: !661, line: 1561, column: 9)
!2740 = !DILocation(line: 1561, column: 9, scope: !2699)
!2741 = !DILocation(line: 1563, column: 3, scope: !2700)
!2742 = !DILocation(line: 1522, column: 34, scope: !2700)
!2743 = distinct !{!2743, !2713, !2744, !826, !827}
!2744 = !DILocation(line: 1563, column: 3, scope: !2701)
!2745 = !DILocation(line: 1515, column: 9, scope: !2681)
!2746 = !DILocation(line: 1564, column: 20, scope: !2681)
!2747 = !DILocation(line: 1565, column: 15, scope: !2681)
!2748 = !DILocation(line: 1566, column: 3, scope: !2681)
!2749 = !DILocation(line: 1567, column: 1, scope: !2681)
!2750 = distinct !DISubprogram(name: "ShaveImage", scope: !661, file: !661, line: 1662, type: !1258, scopeLine: 1664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2751)
!2751 = !{!2752, !2753, !2754, !2755, !2756}
!2752 = !DILocalVariable(name: "image", arg: 1, scope: !2750, file: !661, line: 1662, type: !664)
!2753 = !DILocalVariable(name: "shave_info", arg: 2, scope: !2750, file: !661, line: 1663, type: !1260)
!2754 = !DILocalVariable(name: "exception", arg: 3, scope: !2750, file: !661, line: 1663, type: !667)
!2755 = !DILocalVariable(name: "shave_image", scope: !2750, file: !661, line: 1666, type: !422)
!2756 = !DILocalVariable(name: "geometry", scope: !2750, file: !661, line: 1669, type: !495)
!2757 = !DILocation(line: 0, scope: !2750)
!2758 = !DILocation(line: 1668, column: 3, scope: !2750)
!2759 = !DILocation(line: 1669, column: 5, scope: !2750)
!2760 = !DILocation(line: 1673, column: 14, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2750, file: !661, line: 1673, column: 7)
!2762 = !DILocation(line: 1673, column: 20, scope: !2761)
!2763 = !DILocation(line: 1673, column: 7, scope: !2750)
!2764 = !DILocation(line: 1674, column: 68, scope: !2761)
!2765 = !DILocation(line: 1674, column: 12, scope: !2761)
!2766 = !DILocation(line: 1674, column: 5, scope: !2761)
!2767 = !DILocation(line: 1675, column: 23, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2750, file: !661, line: 1675, column: 7)
!2769 = !DILocation(line: 1675, column: 10, scope: !2768)
!2770 = !DILocation(line: 1675, column: 40, scope: !2768)
!2771 = !DILocation(line: 1675, column: 30, scope: !2768)
!2772 = !DILocation(line: 1675, column: 49, scope: !2768)
!2773 = !DILocation(line: 1676, column: 23, scope: !2768)
!2774 = !DILocation(line: 1676, column: 10, scope: !2768)
!2775 = !DILocation(line: 1676, column: 41, scope: !2768)
!2776 = !DILocation(line: 1676, column: 31, scope: !2768)
!2777 = !DILocation(line: 1675, column: 7, scope: !2750)
!2778 = !DILocation(line: 1677, column: 5, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2768, file: !661, line: 1677, column: 5)
!2780 = !DILocation(line: 1678, column: 3, scope: !2750)
!2781 = !DILocation(line: 1679, column: 33, scope: !2750)
!2782 = !DILocation(line: 1679, column: 20, scope: !2750)
!2783 = !DILocation(line: 1679, column: 17, scope: !2750)
!2784 = !DILocation(line: 1680, column: 34, scope: !2750)
!2785 = !DILocation(line: 1680, column: 21, scope: !2750)
!2786 = !DILocation(line: 1680, column: 12, scope: !2750)
!2787 = !DILocation(line: 1680, column: 18, scope: !2750)
!2788 = !DILocation(line: 1681, column: 54, scope: !2750)
!2789 = !DILocation(line: 1681, column: 41, scope: !2750)
!2790 = !DILocation(line: 1681, column: 12, scope: !2750)
!2791 = !DILocation(line: 1681, column: 13, scope: !2750)
!2792 = !DILocation(line: 1682, column: 55, scope: !2750)
!2793 = !DILocation(line: 1682, column: 42, scope: !2750)
!2794 = !DILocation(line: 1682, column: 12, scope: !2750)
!2795 = !DILocation(line: 1682, column: 13, scope: !2750)
!2796 = !DILocation(line: 1683, column: 15, scope: !2750)
!2797 = !DILocation(line: 1684, column: 19, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2750, file: !661, line: 1684, column: 7)
!2799 = !DILocation(line: 1684, column: 7, scope: !2750)
!2800 = !DILocation(line: 1686, column: 42, scope: !2750)
!2801 = !DILocation(line: 1686, column: 29, scope: !2750)
!2802 = !DILocation(line: 1686, column: 16, scope: !2750)
!2803 = !DILocation(line: 1686, column: 26, scope: !2750)
!2804 = !DILocation(line: 1687, column: 43, scope: !2750)
!2805 = !DILocation(line: 1687, column: 30, scope: !2750)
!2806 = !DILocation(line: 1687, column: 21, scope: !2750)
!2807 = !DILocation(line: 1687, column: 27, scope: !2750)
!2808 = !DILocation(line: 1688, column: 46, scope: !2750)
!2809 = !DILocation(line: 1688, column: 21, scope: !2750)
!2810 = !DILocation(line: 1688, column: 22, scope: !2750)
!2811 = !DILocation(line: 1689, column: 46, scope: !2750)
!2812 = !DILocation(line: 1689, column: 21, scope: !2750)
!2813 = !DILocation(line: 1689, column: 22, scope: !2750)
!2814 = !DILocation(line: 1690, column: 3, scope: !2750)
!2815 = !DILocation(line: 1691, column: 1, scope: !2750)
!2816 = !DISubprogram(name: "SetGeometry", scope: !153, file: !153, line: 154, type: !2817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !664, !2380}
!2819 = distinct !DISubprogram(name: "SpliceImage", scope: !661, file: !661, line: 1722, type: !1258, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2835, !2836, !2837, !2838, !2839, !2842, !2846, !2847, !2848, !2849, !2850}
!2821 = !DILocalVariable(name: "image", arg: 1, scope: !2819, file: !661, line: 1722, type: !664)
!2822 = !DILocalVariable(name: "geometry", arg: 2, scope: !2819, file: !661, line: 1723, type: !1260)
!2823 = !DILocalVariable(name: "exception", arg: 3, scope: !2819, file: !661, line: 1723, type: !667)
!2824 = !DILocalVariable(name: "image_view", scope: !2819, file: !661, line: 1728, type: !740)
!2825 = !DILocalVariable(name: "splice_view", scope: !2819, file: !661, line: 1729, type: !740)
!2826 = !DILocalVariable(name: "splice_image", scope: !2819, file: !661, line: 1732, type: !422)
!2827 = !DILocalVariable(name: "status", scope: !2819, file: !661, line: 1735, type: !439)
!2828 = !DILocalVariable(name: "progress", scope: !2819, file: !661, line: 1738, type: !559)
!2829 = !DILocalVariable(name: "splice_geometry", scope: !2819, file: !661, line: 1741, type: !495)
!2830 = !DILocalVariable(name: "y", scope: !2819, file: !661, line: 1744, type: !487)
!2831 = !DILocalVariable(name: "p", scope: !2832, file: !661, line: 1837, type: !756)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !661, line: 1835, column: 3)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !661, line: 1834, column: 3)
!2834 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1834, column: 3)
!2835 = !DILocalVariable(name: "indexes", scope: !2832, file: !661, line: 1840, type: !758)
!2836 = !DILocalVariable(name: "splice_indexes", scope: !2832, file: !661, line: 1841, type: !758)
!2837 = !DILocalVariable(name: "x", scope: !2832, file: !661, line: 1844, type: !487)
!2838 = !DILocalVariable(name: "q", scope: !2832, file: !661, line: 1847, type: !761)
!2839 = !DILocalVariable(name: "proceed", scope: !2840, file: !661, line: 1896, type: !439)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !661, line: 1894, column: 7)
!2841 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1893, column: 9)
!2842 = !DILocalVariable(name: "p", scope: !2843, file: !661, line: 1915, type: !756)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !661, line: 1913, column: 3)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !661, line: 1911, column: 3)
!2845 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1911, column: 3)
!2846 = !DILocalVariable(name: "indexes", scope: !2843, file: !661, line: 1918, type: !758)
!2847 = !DILocalVariable(name: "splice_indexes", scope: !2843, file: !661, line: 1919, type: !758)
!2848 = !DILocalVariable(name: "x", scope: !2843, file: !661, line: 1922, type: !487)
!2849 = !DILocalVariable(name: "q", scope: !2843, file: !661, line: 1925, type: !761)
!2850 = !DILocalVariable(name: "proceed", scope: !2851, file: !661, line: 1977, type: !439)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !661, line: 1975, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1974, column: 9)
!2853 = !DILocation(line: 0, scope: !2819)
!2854 = !DILocation(line: 1751, column: 14, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1751, column: 7)
!2856 = !DILocation(line: 1751, column: 20, scope: !2855)
!2857 = !DILocation(line: 1751, column: 7, scope: !2819)
!2858 = !DILocation(line: 1752, column: 68, scope: !2855)
!2859 = !DILocation(line: 1752, column: 12, scope: !2855)
!2860 = !DILocation(line: 1752, column: 5, scope: !2855)
!2861 = !DILocation(line: 1756, column: 20, scope: !2819)
!2862 = !DILocation(line: 1757, column: 40, scope: !2819)
!2863 = !DILocation(line: 1757, column: 47, scope: !2819)
!2864 = !DILocation(line: 1758, column: 12, scope: !2819)
!2865 = !DILocation(line: 1758, column: 16, scope: !2819)
!2866 = !DILocation(line: 1757, column: 16, scope: !2819)
!2867 = !DILocation(line: 1759, column: 20, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1759, column: 7)
!2869 = !DILocation(line: 1759, column: 7, scope: !2819)
!2870 = !DILocation(line: 1761, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1761, column: 7)
!2872 = !DILocation(line: 1761, column: 54, scope: !2871)
!2873 = !DILocation(line: 1761, column: 7, scope: !2819)
!2874 = !DILocation(line: 1763, column: 49, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !661, line: 1762, column: 5)
!2876 = !DILocation(line: 1763, column: 7, scope: !2875)
!2877 = !DILocation(line: 1764, column: 20, scope: !2875)
!2878 = !DILocation(line: 1765, column: 7, scope: !2875)
!2879 = !DILocation(line: 1767, column: 10, scope: !2819)
!2880 = !DILocation(line: 1771, column: 18, scope: !2819)
!2881 = !{!707, !708, i64 412}
!2882 = !DILocation(line: 1771, column: 3, scope: !2819)
!2883 = !DILocation(line: 1779, column: 57, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1778, column: 5)
!2885 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1772, column: 3)
!2886 = !DILocation(line: 1779, column: 24, scope: !2884)
!2887 = !DILocation(line: 1780, column: 7, scope: !2884)
!2888 = !DILocation(line: 1784, column: 24, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1783, column: 5)
!2890 = !DILocation(line: 1785, column: 7, scope: !2889)
!2891 = !DILocation(line: 1789, column: 57, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1788, column: 5)
!2893 = !DILocation(line: 1789, column: 24, scope: !2892)
!2894 = !DILocation(line: 1790, column: 7, scope: !2892)
!2895 = !DILocation(line: 1795, column: 57, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1794, column: 5)
!2897 = !DILocation(line: 1795, column: 24, scope: !2896)
!2898 = !DILocation(line: 1796, column: 58, scope: !2896)
!2899 = !DILocation(line: 1796, column: 24, scope: !2896)
!2900 = !DILocation(line: 1797, column: 7, scope: !2896)
!2901 = !DILocation(line: 1801, column: 24, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1800, column: 5)
!2903 = !DILocation(line: 1802, column: 58, scope: !2902)
!2904 = !DILocation(line: 1802, column: 24, scope: !2902)
!2905 = !DILocation(line: 1803, column: 7, scope: !2902)
!2906 = !DILocation(line: 1807, column: 24, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1806, column: 5)
!2908 = !DILocation(line: 1808, column: 7, scope: !2907)
!2909 = !DILocation(line: 1812, column: 57, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1811, column: 5)
!2911 = !DILocation(line: 1812, column: 24, scope: !2910)
!2912 = !DILocation(line: 1813, column: 24, scope: !2910)
!2913 = !DILocation(line: 1814, column: 7, scope: !2910)
!2914 = !DILocation(line: 1818, column: 24, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2885, file: !661, line: 1817, column: 5)
!2916 = !DILocation(line: 1819, column: 24, scope: !2915)
!2917 = !DILocation(line: 1820, column: 7, scope: !2915)
!2918 = !DILocation(line: 1828, column: 14, scope: !2819)
!2919 = !DILocation(line: 1829, column: 15, scope: !2819)
!2920 = !DILocation(line: 1834, column: 15, scope: !2833)
!2921 = !DILocation(line: 1834, column: 3, scope: !2834)
!2922 = !DILocation(line: 1849, column: 16, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1849, column: 9)
!2924 = !DILocation(line: 1849, column: 9, scope: !2832)
!2925 = !DILocation(line: 1851, column: 55, scope: !2832)
!2926 = !DILocation(line: 1851, column: 7, scope: !2832)
!2927 = !DILocation(line: 0, scope: !2832)
!2928 = !DILocation(line: 1852, column: 67, scope: !2832)
!2929 = !DILocation(line: 1852, column: 7, scope: !2832)
!2930 = !DILocation(line: 1854, column: 12, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1854, column: 9)
!2932 = !DILocation(line: 1854, column: 43, scope: !2931)
!2933 = !DILocation(line: 1859, column: 13, scope: !2832)
!2934 = !DILocation(line: 1860, column: 20, scope: !2832)
!2935 = !DILocation(line: 1861, column: 5, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1861, column: 5)
!2937 = !{!707, !708, i64 4}
!2938 = !DILocation(line: 1869, column: 11, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !661, line: 1862, column: 5)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !661, line: 1861, column: 5)
!2941 = !DILocation(line: 1863, column: 7, scope: !2939)
!2942 = !DILocation(line: 1864, column: 7, scope: !2939)
!2943 = !DILocation(line: 1865, column: 7, scope: !2939)
!2944 = !DILocation(line: 1866, column: 7, scope: !2939)
!2945 = !{!712, !713, i64 6}
!2946 = !DILocation(line: 1867, column: 11, scope: !2939)
!2947 = !DILocation(line: 1868, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2939, file: !661, line: 1867, column: 11)
!2949 = !DILocation(line: 1870, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !661, line: 1870, column: 9)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !661, line: 1870, column: 9)
!2952 = distinct !DILexicalBlock(scope: !2939, file: !661, line: 1869, column: 11)
!2953 = !DILocation(line: 1870, column: 9, scope: !2951)
!2954 = !DILocation(line: 1871, column: 14, scope: !2939)
!2955 = !DILocation(line: 1872, column: 8, scope: !2939)
!2956 = !DILocation(line: 1873, column: 8, scope: !2939)
!2957 = !DILocation(line: 1861, column: 39, scope: !2940)
!2958 = !DILocation(line: 1861, column: 17, scope: !2940)
!2959 = distinct !{!2959, !2935, !2960, !826, !827}
!2960 = !DILocation(line: 1874, column: 5, scope: !2936)
!2961 = !DILocation(line: 1875, column: 15, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !661, line: 1875, column: 5)
!2963 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1875, column: 5)
!2964 = !DILocation(line: 0, scope: !2936)
!2965 = !DILocation(line: 1875, column: 5, scope: !2963)
!2966 = !DILocation(line: 1877, column: 15, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !661, line: 1877, column: 5)
!2968 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1877, column: 5)
!2969 = !DILocation(line: 1877, column: 5, scope: !2968)
!2970 = !DILocation(line: 1879, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !661, line: 1878, column: 5)
!2972 = !DILocation(line: 1880, column: 7, scope: !2971)
!2973 = !DILocation(line: 1881, column: 7, scope: !2971)
!2974 = !DILocation(line: 1882, column: 7, scope: !2971)
!2975 = !DILocation(line: 1883, column: 11, scope: !2971)
!2976 = !DILocation(line: 1884, column: 9, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !661, line: 1883, column: 11)
!2978 = !DILocation(line: 1885, column: 11, scope: !2971)
!2979 = !DILocation(line: 1886, column: 9, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !661, line: 1886, column: 9)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !661, line: 1886, column: 9)
!2982 = distinct !DILexicalBlock(scope: !2971, file: !661, line: 1885, column: 11)
!2983 = !DILocation(line: 1886, column: 9, scope: !2981)
!2984 = !DILocation(line: 1887, column: 14, scope: !2971)
!2985 = !DILocation(line: 1888, column: 8, scope: !2971)
!2986 = !DILocation(line: 1889, column: 8, scope: !2971)
!2987 = !DILocation(line: 1877, column: 51, scope: !2967)
!2988 = distinct !{!2988, !2969, !2989, !826, !827}
!2989 = !DILocation(line: 1890, column: 5, scope: !2968)
!2990 = !DILocation(line: 1891, column: 9, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2832, file: !661, line: 1891, column: 9)
!2992 = !DILocation(line: 1891, column: 61, scope: !2991)
!2993 = !DILocation(line: 1891, column: 9, scope: !2832)
!2994 = !DILocation(line: 1893, column: 16, scope: !2841)
!2995 = !DILocation(line: 1893, column: 33, scope: !2841)
!2996 = !DILocation(line: 1893, column: 9, scope: !2832)
!2997 = !DILocation(line: 1901, column: 63, scope: !2840)
!2998 = !DILocation(line: 1902, column: 25, scope: !2840)
!2999 = !DILocation(line: 0, scope: !839, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 1901, column: 17, scope: !2840)
!3001 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !3000)
!3002 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !3000)
!3003 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !3000)
!3004 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !3000)
!3005 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !3000)
!3006 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !3000)
!3007 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !3000)
!3008 = !DILocation(line: 0, scope: !2840)
!3009 = !DILocation(line: 1903, column: 21, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2840, file: !661, line: 1903, column: 13)
!3011 = !DILocation(line: 1903, column: 13, scope: !2840)
!3012 = !DILocation(line: 1905, column: 7, scope: !2840)
!3013 = !DILocation(line: 1834, column: 47, scope: !2833)
!3014 = distinct !{!3014, !2921, !3015, !826, !827}
!3015 = !DILocation(line: 1906, column: 3, scope: !2834)
!3016 = !DILocation(line: 1827, column: 11, scope: !2819)
!3017 = !DILocation(line: 1826, column: 9, scope: !2819)
!3018 = !DILocation(line: 1911, column: 38, scope: !2845)
!3019 = !DILocation(line: 1912, column: 36, scope: !2844)
!3020 = !DILocation(line: 1912, column: 10, scope: !2844)
!3021 = !DILocation(line: 1911, column: 3, scope: !2845)
!3022 = !DILocation(line: 1927, column: 16, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1927, column: 9)
!3024 = !DILocation(line: 1927, column: 9, scope: !2843)
!3025 = !DILocation(line: 1929, column: 47, scope: !2843)
!3026 = !DILocation(line: 1930, column: 14, scope: !2843)
!3027 = !DILocation(line: 1929, column: 7, scope: !2843)
!3028 = !DILocation(line: 0, scope: !2843)
!3029 = !DILocation(line: 1931, column: 12, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1931, column: 9)
!3031 = !DILocation(line: 1931, column: 17, scope: !3030)
!3032 = !DILocation(line: 1931, column: 50, scope: !3030)
!3033 = !DILocation(line: 1931, column: 23, scope: !3030)
!3034 = !DILocation(line: 1931, column: 9, scope: !2843)
!3035 = !DILocation(line: 1933, column: 67, scope: !2843)
!3036 = !DILocation(line: 1933, column: 7, scope: !2843)
!3037 = !DILocation(line: 1935, column: 12, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1935, column: 9)
!3039 = !DILocation(line: 1935, column: 43, scope: !3038)
!3040 = !DILocation(line: 1940, column: 13, scope: !2843)
!3041 = !DILocation(line: 1941, column: 20, scope: !2843)
!3042 = !DILocation(line: 1942, column: 5, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1942, column: 5)
!3044 = !DILocation(line: 1950, column: 11, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !661, line: 1943, column: 5)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !661, line: 1942, column: 5)
!3047 = !DILocation(line: 1944, column: 7, scope: !3045)
!3048 = !DILocation(line: 1945, column: 7, scope: !3045)
!3049 = !DILocation(line: 1946, column: 7, scope: !3045)
!3050 = !DILocation(line: 1947, column: 7, scope: !3045)
!3051 = !DILocation(line: 1948, column: 11, scope: !3045)
!3052 = !DILocation(line: 1949, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3045, file: !661, line: 1948, column: 11)
!3054 = !DILocation(line: 1951, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !661, line: 1951, column: 9)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !661, line: 1951, column: 9)
!3057 = distinct !DILexicalBlock(scope: !3045, file: !661, line: 1950, column: 11)
!3058 = !DILocation(line: 1951, column: 9, scope: !3056)
!3059 = !DILocation(line: 1952, column: 14, scope: !3045)
!3060 = !DILocation(line: 1953, column: 8, scope: !3045)
!3061 = !DILocation(line: 1954, column: 8, scope: !3045)
!3062 = !DILocation(line: 1942, column: 39, scope: !3046)
!3063 = !DILocation(line: 1942, column: 17, scope: !3046)
!3064 = distinct !{!3064, !3042, !3065, !826, !827}
!3065 = !DILocation(line: 1955, column: 5, scope: !3043)
!3066 = !DILocation(line: 1956, column: 15, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !661, line: 1956, column: 5)
!3068 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1956, column: 5)
!3069 = !DILocation(line: 0, scope: !3043)
!3070 = !DILocation(line: 1956, column: 5, scope: !3068)
!3071 = !DILocation(line: 1958, column: 15, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !661, line: 1958, column: 5)
!3073 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1958, column: 5)
!3074 = !DILocation(line: 1958, column: 5, scope: !3073)
!3075 = !DILocation(line: 1960, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !661, line: 1959, column: 5)
!3077 = !DILocation(line: 1961, column: 7, scope: !3076)
!3078 = !DILocation(line: 1962, column: 7, scope: !3076)
!3079 = !DILocation(line: 1963, column: 7, scope: !3076)
!3080 = !DILocation(line: 1964, column: 11, scope: !3076)
!3081 = !DILocation(line: 1965, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3076, file: !661, line: 1964, column: 11)
!3083 = !DILocation(line: 1966, column: 11, scope: !3076)
!3084 = !DILocation(line: 1967, column: 9, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !661, line: 1967, column: 9)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !661, line: 1967, column: 9)
!3087 = distinct !DILexicalBlock(scope: !3076, file: !661, line: 1966, column: 11)
!3088 = !DILocation(line: 1967, column: 9, scope: !3086)
!3089 = !DILocation(line: 1968, column: 14, scope: !3076)
!3090 = !DILocation(line: 1969, column: 8, scope: !3076)
!3091 = !DILocation(line: 1970, column: 8, scope: !3076)
!3092 = !DILocation(line: 1958, column: 51, scope: !3072)
!3093 = distinct !{!3093, !3074, !3094, !826, !827}
!3094 = !DILocation(line: 1971, column: 5, scope: !3073)
!3095 = !DILocation(line: 1972, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2843, file: !661, line: 1972, column: 9)
!3097 = !DILocation(line: 1972, column: 61, scope: !3096)
!3098 = !DILocation(line: 1972, column: 9, scope: !2843)
!3099 = !DILocation(line: 1974, column: 16, scope: !2852)
!3100 = !DILocation(line: 1974, column: 33, scope: !2852)
!3101 = !DILocation(line: 1974, column: 9, scope: !2843)
!3102 = !DILocation(line: 1982, column: 63, scope: !2851)
!3103 = !DILocation(line: 1983, column: 25, scope: !2851)
!3104 = !DILocation(line: 0, scope: !839, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1982, column: 17, scope: !2851)
!3106 = !DILocation(line: 30, column: 3, scope: !839, inlinedAt: !3105)
!3107 = !DILocation(line: 31, column: 5, scope: !839, inlinedAt: !3105)
!3108 = !DILocation(line: 35, column: 10, scope: !839, inlinedAt: !3105)
!3109 = !DILocation(line: 36, column: 17, scope: !839, inlinedAt: !3105)
!3110 = !DILocation(line: 36, column: 63, scope: !839, inlinedAt: !3105)
!3111 = !DILocation(line: 36, column: 10, scope: !839, inlinedAt: !3105)
!3112 = !DILocation(line: 37, column: 1, scope: !839, inlinedAt: !3105)
!3113 = !DILocation(line: 0, scope: !2851)
!3114 = !DILocation(line: 1984, column: 21, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2851, file: !661, line: 1984, column: 13)
!3116 = !DILocation(line: 1984, column: 13, scope: !2851)
!3117 = !DILocation(line: 1986, column: 7, scope: !2851)
!3118 = !DILocation(line: 1912, column: 43, scope: !2844)
!3119 = distinct !{!3119, !3021, !3120, !826, !827}
!3120 = !DILocation(line: 1987, column: 3, scope: !2845)
!3121 = !DILocation(line: 1988, column: 15, scope: !2819)
!3122 = !DILocation(line: 1989, column: 14, scope: !2819)
!3123 = !DILocation(line: 1990, column: 14, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !2819, file: !661, line: 1990, column: 7)
!3125 = !DILocation(line: 1990, column: 7, scope: !2819)
!3126 = !DILocation(line: 1991, column: 18, scope: !3124)
!3127 = !DILocation(line: 1991, column: 5, scope: !3124)
!3128 = !DILocation(line: 1993, column: 1, scope: !2819)
!3129 = distinct !DISubprogram(name: "TransformImage", scope: !661, file: !661, line: 2042, type: !3130, scopeLine: 2044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!439, !652, !556, !556}
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140}
!3133 = !DILocalVariable(name: "image", arg: 1, scope: !3129, file: !661, line: 2042, type: !652)
!3134 = !DILocalVariable(name: "crop_geometry", arg: 2, scope: !3129, file: !661, line: 2043, type: !556)
!3135 = !DILocalVariable(name: "image_geometry", arg: 3, scope: !3129, file: !661, line: 2043, type: !556)
!3136 = !DILocalVariable(name: "resize_image", scope: !3129, file: !661, line: 2046, type: !422)
!3137 = !DILocalVariable(name: "transform_image", scope: !3129, file: !661, line: 2047, type: !422)
!3138 = !DILocalVariable(name: "flags", scope: !3129, file: !661, line: 2050, type: !2073)
!3139 = !DILocalVariable(name: "geometry", scope: !3129, file: !661, line: 2053, type: !495)
!3140 = !DILocalVariable(name: "crop_image", scope: !3141, file: !661, line: 2063, type: !422)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !661, line: 2061, column: 5)
!3142 = distinct !DILexicalBlock(scope: !3129, file: !661, line: 2060, column: 7)
!3143 = !DILocation(line: 0, scope: !3129)
!3144 = !DILocation(line: 2052, column: 3, scope: !3129)
!3145 = !DILocation(line: 2053, column: 5, scope: !3129)
!3146 = !DILocation(line: 2057, column: 8, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3129, file: !661, line: 2057, column: 7)
!3148 = !DILocation(line: 2057, column: 17, scope: !3147)
!3149 = !DILocation(line: 2057, column: 23, scope: !3147)
!3150 = !DILocation(line: 2057, column: 7, scope: !3129)
!3151 = !DILocation(line: 2058, column: 71, scope: !3147)
!3152 = !DILocation(line: 2058, column: 12, scope: !3147)
!3153 = !DILocation(line: 2059, column: 20, scope: !3129)
!3154 = !DILocation(line: 2058, column: 5, scope: !3147)
!3155 = !DILocation(line: 2060, column: 21, scope: !3142)
!3156 = !DILocation(line: 2060, column: 7, scope: !3129)
!3157 = !DILocation(line: 2068, column: 67, scope: !3141)
!3158 = !DILocation(line: 2068, column: 18, scope: !3141)
!3159 = !DILocation(line: 0, scope: !3141)
!3160 = !DILocation(line: 2069, column: 22, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3141, file: !661, line: 2069, column: 11)
!3162 = !DILocation(line: 2069, column: 11, scope: !3141)
!3163 = !DILocation(line: 2070, column: 36, scope: !3161)
!3164 = !DILocation(line: 2070, column: 69, scope: !3161)
!3165 = !DILocation(line: 2070, column: 25, scope: !3161)
!3166 = !DILocation(line: 2070, column: 9, scope: !3161)
!3167 = !DILocation(line: 2073, column: 27, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3161, file: !661, line: 2072, column: 9)
!3169 = !DILocation(line: 2074, column: 27, scope: !3168)
!3170 = !DILocation(line: 0, scope: !3161)
!3171 = !DILocation(line: 2076, column: 13, scope: !3141)
!3172 = !DILocation(line: 2077, column: 5, scope: !3141)
!3173 = !DILocation(line: 2078, column: 22, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3129, file: !661, line: 2078, column: 7)
!3175 = !DILocation(line: 2078, column: 7, scope: !3129)
!3176 = !DILocation(line: 2085, column: 16, scope: !3129)
!3177 = !DILocation(line: 2084, column: 9, scope: !3129)
!3178 = !DILocation(line: 2087, column: 25, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3129, file: !661, line: 2087, column: 7)
!3180 = !DILocation(line: 2087, column: 45, scope: !3179)
!3181 = !DILocation(line: 2087, column: 33, scope: !3179)
!3182 = !DILocation(line: 2087, column: 52, scope: !3179)
!3183 = !DILocation(line: 2090, column: 68, scope: !3129)
!3184 = !DILocation(line: 2088, column: 25, scope: !3179)
!3185 = !DILocation(line: 2088, column: 42, scope: !3179)
!3186 = !DILocation(line: 2088, column: 30, scope: !3179)
!3187 = !DILocation(line: 2087, column: 7, scope: !3129)
!3188 = !DILocation(line: 2091, column: 22, scope: !3129)
!3189 = !{!707, !708, i64 400}
!3190 = !DILocation(line: 2091, column: 46, scope: !3129)
!3191 = !{!707, !714, i64 384}
!3192 = !DILocation(line: 2091, column: 53, scope: !3129)
!3193 = !DILocation(line: 2091, column: 62, scope: !3129)
!3194 = !DILocation(line: 2090, column: 16, scope: !3129)
!3195 = !DILocation(line: 2092, column: 20, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3129, file: !661, line: 2092, column: 7)
!3197 = !DILocation(line: 2092, column: 7, scope: !3129)
!3198 = !DILocation(line: 2094, column: 19, scope: !3129)
!3199 = !DILocation(line: 2096, column: 9, scope: !3129)
!3200 = !DILocation(line: 2097, column: 3, scope: !3129)
!3201 = !DILocation(line: 2098, column: 1, scope: !3129)
!3202 = !DISubprogram(name: "GetFirstImageInList", scope: !1803, file: !1803, line: 30, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3203 = !DISubprogram(name: "ParseRegionGeometry", scope: !153, file: !153, line: 148, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3204 = !DISubprogram(name: "ResizeImage", scope: !3205, file: !3205, line: 38, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3205 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!422, !664, !730, !730, !3208, !891, !667}
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!3209 = distinct !DISubprogram(name: "TransformImages", scope: !661, file: !661, line: 2129, type: !3130, scopeLine: 2131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3211 = !DILocalVariable(name: "images", arg: 1, scope: !3209, file: !661, line: 2129, type: !652)
!3212 = !DILocalVariable(name: "crop_geometry", arg: 2, scope: !3209, file: !661, line: 2130, type: !556)
!3213 = !DILocalVariable(name: "image_geometry", arg: 3, scope: !3209, file: !661, line: 2130, type: !556)
!3214 = !DILocalVariable(name: "image", scope: !3209, file: !661, line: 2133, type: !422)
!3215 = !DILocalVariable(name: "image_list", scope: !3209, file: !661, line: 2134, type: !652)
!3216 = !DILocalVariable(name: "transform_images", scope: !3209, file: !661, line: 2135, type: !422)
!3217 = !DILocalVariable(name: "status", scope: !3209, file: !661, line: 2138, type: !2073)
!3218 = !DILocalVariable(name: "i", scope: !3209, file: !661, line: 2141, type: !487)
!3219 = !DILocation(line: 0, scope: !3209)
!3220 = !DILocation(line: 2132, column: 3, scope: !3209)
!3221 = !DILocation(line: 2145, column: 8, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3209, file: !661, line: 2145, column: 7)
!3223 = !DILocation(line: 2145, column: 18, scope: !3222)
!3224 = !DILocation(line: 2145, column: 24, scope: !3222)
!3225 = !DILocation(line: 2145, column: 7, scope: !3209)
!3226 = !DILocation(line: 2147, column: 18, scope: !3222)
!3227 = !DILocation(line: 2146, column: 12, scope: !3222)
!3228 = !DILocation(line: 2148, column: 31, scope: !3209)
!3229 = !DILocation(line: 2146, column: 5, scope: !3222)
!3230 = !DILocation(line: 2148, column: 51, scope: !3209)
!3231 = !DILocation(line: 2148, column: 14, scope: !3209)
!3232 = !DILocation(line: 2149, column: 18, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3209, file: !661, line: 2149, column: 7)
!3234 = !DILocation(line: 2149, column: 7, scope: !3209)
!3235 = !DILocation(line: 2152, column: 20, scope: !3209)
!3236 = !DILocation(line: 2152, column: 19, scope: !3209)
!3237 = !DILocation(line: 2153, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !661, line: 2153, column: 3)
!3239 = distinct !DILexicalBlock(scope: !3209, file: !661, line: 2153, column: 3)
!3240 = !DILocation(line: 2153, column: 27, scope: !3238)
!3241 = !DILocation(line: 2153, column: 3, scope: !3239)
!3242 = !DILocation(line: 2155, column: 10, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3238, file: !661, line: 2154, column: 3)
!3244 = !DILocation(line: 2156, column: 13, scope: !3243)
!3245 = !DILocation(line: 2156, column: 11, scope: !3243)
!3246 = !DILocation(line: 2157, column: 41, scope: !3243)
!3247 = !DILocation(line: 2157, column: 5, scope: !3243)
!3248 = !DILocation(line: 2153, column: 47, scope: !3238)
!3249 = distinct !{!3249, !3241, !3250, !826, !827}
!3250 = !DILocation(line: 2158, column: 3, scope: !3239)
!3251 = !DILocation(line: 2159, column: 11, scope: !3209)
!3252 = !DILocation(line: 2159, column: 10, scope: !3209)
!3253 = !DILocation(line: 2160, column: 25, scope: !3209)
!3254 = !DILocation(line: 2161, column: 3, scope: !3209)
!3255 = !DILocation(line: 2162, column: 1, scope: !3209)
!3256 = !DISubprogram(name: "ImageListToArray", scope: !1803, file: !1803, line: 35, type: !3257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!652, !664, !667}
!3259 = !DISubprogram(name: "RelinquishMagickMemory", scope: !2058, file: !2058, line: 51, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!478, !478}
!3262 = distinct !DISubprogram(name: "TrimImage", scope: !661, file: !661, line: 2461, type: !734, scopeLine: 2462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3263)
!3263 = !{!3264, !3265, !3266, !3267}
!3264 = !DILocalVariable(name: "image", arg: 1, scope: !3262, file: !661, line: 2461, type: !664)
!3265 = !DILocalVariable(name: "exception", arg: 2, scope: !3262, file: !661, line: 2461, type: !667)
!3266 = !DILocalVariable(name: "geometry", scope: !3262, file: !661, line: 2464, type: !495)
!3267 = !DILocalVariable(name: "crop_image", scope: !3268, file: !661, line: 2474, type: !422)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !661, line: 2472, column: 5)
!3269 = distinct !DILexicalBlock(scope: !3262, file: !661, line: 2471, column: 7)
!3270 = !DILocation(line: 0, scope: !3262)
!3271 = !DILocation(line: 2463, column: 3, scope: !3262)
!3272 = !DILocation(line: 2464, column: 5, scope: !3262)
!3273 = !DILocation(line: 2468, column: 14, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3262, file: !661, line: 2468, column: 7)
!3275 = !DILocation(line: 2468, column: 20, scope: !3274)
!3276 = !DILocation(line: 2468, column: 7, scope: !3262)
!3277 = !DILocation(line: 2469, column: 68, scope: !3274)
!3278 = !DILocation(line: 2469, column: 12, scope: !3274)
!3279 = !DILocation(line: 2469, column: 5, scope: !3274)
!3280 = !DILocation(line: 2470, column: 12, scope: !3262)
!3281 = !DILocation(line: 2471, column: 17, scope: !3269)
!3282 = !DILocation(line: 2471, column: 23, scope: !3269)
!3283 = !DILocation(line: 2471, column: 29, scope: !3269)
!3284 = !DILocation(line: 2476, column: 18, scope: !3268)
!3285 = !DILocation(line: 0, scope: !3268)
!3286 = !DILocation(line: 2477, column: 22, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3268, file: !661, line: 2477, column: 11)
!3288 = !DILocation(line: 2477, column: 11, scope: !3268)
!3289 = !DILocation(line: 2479, column: 36, scope: !3268)
!3290 = !DILocation(line: 2479, column: 43, scope: !3268)
!3291 = !DILocation(line: 2480, column: 14, scope: !3268)
!3292 = !DILocation(line: 2481, column: 19, scope: !3268)
!3293 = !DILocation(line: 2481, column: 31, scope: !3268)
!3294 = !DILocation(line: 2482, column: 24, scope: !3268)
!3295 = !DILocation(line: 2483, column: 25, scope: !3268)
!3296 = !DILocation(line: 2484, column: 7, scope: !3268)
!3297 = !DILocation(line: 2486, column: 27, scope: !3262)
!3298 = !DILocation(line: 2486, column: 12, scope: !3262)
!3299 = !DILocation(line: 2486, column: 13, scope: !3262)
!3300 = !DILocation(line: 2487, column: 27, scope: !3262)
!3301 = !DILocation(line: 2487, column: 12, scope: !3262)
!3302 = !DILocation(line: 2487, column: 13, scope: !3262)
!3303 = !DILocation(line: 2488, column: 10, scope: !3262)
!3304 = !DILocation(line: 2488, column: 3, scope: !3262)
!3305 = !DILocation(line: 2489, column: 1, scope: !3262)
!3306 = !DISubprogram(name: "GetImageBoundingBox", scope: !3307, file: !3307, line: 40, type: !3308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3307 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!495, !664, !667}
!3310 = !DISubprogram(name: "FormatLocaleString", scope: !3311, file: !3311, line: 71, type: !3312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3311 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!487, !3314, !730, !3315, null}
!3314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !482)
!3315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !556)
