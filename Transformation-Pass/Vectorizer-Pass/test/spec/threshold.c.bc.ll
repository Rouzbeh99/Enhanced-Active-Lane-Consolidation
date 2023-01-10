; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/threshold.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
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
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._ThresholdMap = type { ptr, ptr, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/threshold.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Threshold/Image\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Clamp/Image\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Loading threshold map file \22%s\22 ...\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"XmlMissingElement\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"<description>, map \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"<levels>, map \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"UnableToAcquireThresholdMap\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"XmlMissingAttribute\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"<levels width>, map \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"XmlInvalidAttribute\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"<levels height>, map \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"<levels divisor>, map \22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"XmlMissingContent\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"XmlInvalidContent\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"<level> too few values, map \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"<level> %.20g out of range, map \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"<level> too many values, map \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"thresholds.xml\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"%-16s %-12s %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Map\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Alias\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"<map>\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [50 x i8] c"\0A   Threshold Maps for Ordered Dither Operations\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"o8x8\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"%s : '%s'\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"ordered-dither\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Perceptible/Image\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.47 = private unnamed_addr constant [412 x i8] c"<?xml version=\221.0\22?><thresholds>  <threshold map=\22threshold\22 alias=\221x1\22>    <description>Threshold 1x1 (non-dither)</description>    <levels width=\221\22 height=\221\22 divisor=\222\22>        1    </levels>  </threshold>  <threshold map=\22checks\22 alias=\222x1\22>    <description>Checkerboard 2x1 (dither)</description>    <levels width=\222\22 height=\222\22 divisor=\223\22>       1 2       2 1    </levels>  </threshold></thresholds>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveThresholdImage(ptr noundef %image, i64 noundef %width, i64 noundef %height, i64 noundef %offset, ptr noundef %exception) local_unnamed_addr #0 !dbg !797 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !806, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %width, metadata !807, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %height, metadata !808, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %offset, metadata !809, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata ptr %exception, metadata !810, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #13, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !820, metadata !DIExpression()), !dbg !863
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !864
  %0 = load i32, ptr %debug, align 8, !dbg !864, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !885
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !887
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !888
  br label %if.end, !dbg !889

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #13, !dbg !890
  call void @llvm.dbg.value(metadata ptr %call1, metadata !817, metadata !DIExpression()), !dbg !861
  %cmp2 = icmp eq ptr %call1, null, !dbg !891
  br i1 %cmp2, label %cleanup403, label %if.end4, !dbg !893

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call1, i32 noundef 1) #13, !dbg !894
  %cmp6 = icmp eq i32 %call5, 0, !dbg !896
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !897

if.then7:                                         ; preds = %if.end4
  %exception8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !898
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception8) #13, !dbg !900
  %call9 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #13, !dbg !901
  call void @llvm.dbg.value(metadata ptr %call9, metadata !817, metadata !DIExpression()), !dbg !861
  br label %cleanup403, !dbg !902

if.end10:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !818, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !861
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %zero) #13, !dbg !903
  %mul = mul i64 %height, %width, !dbg !904
  %conv = uitofp i64 %mul to float, !dbg !905
  call void @llvm.dbg.value(metadata float %conv, metadata !834, metadata !DIExpression()), !dbg !861
  %call11 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !906
  call void @llvm.dbg.value(metadata ptr %call11, metadata !811, metadata !DIExpression()), !dbg !861
  %call12 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #13, !dbg !907
  call void @llvm.dbg.value(metadata ptr %call12, metadata !816, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !835, metadata !DIExpression()), !dbg !861
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !818, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !835, metadata !DIExpression()), !dbg !861
  %1 = load i64, ptr %rows, align 8, !dbg !908, !tbaa !909
  %cmp13822 = icmp sgt i64 %1, 0, !dbg !910
  br i1 %cmp13822, label %for.body.lr.ph, label %for.end395, !dbg !911

for.body.lr.ph:                                   ; preds = %if.end10
  %div.neg = sdiv i64 %width, -2
  %div19.neg = sdiv i64 %height, -2
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns22 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7
  %channel_bias.sroa.4.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 32
  %channel_bias.sroa.9.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 36
  %channel_bias.sroa.14.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 40
  %channel_bias.sroa.19.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 44
  %channel_bias.sroa.24.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 48
  %cmp33624 = icmp sgt i64 %height, 0
  %cmp37591 = icmp sgt i64 %width, 0
  %sub40 = add i64 %width, -1
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %conv277 = sitofp i64 %offset to float
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !911

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0826 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0825 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %y.0823 = phi i64 [ 0, %for.body.lr.ph ], [ %inc394, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0826, metadata !818, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %progress.0825, metadata !819, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %y.0823, metadata !835, metadata !DIExpression()), !dbg !861
  %cmp15 = icmp eq i32 %status.0826, 0, !dbg !912
  br i1 %cmp15, label %cleanup, label %if.end18, !dbg !914

if.end18:                                         ; preds = %for.body
  %sub20 = add i64 %y.0823, %div19.neg, !dbg !915
  %2 = load i64, ptr %columns, align 8, !dbg !916, !tbaa !917
  %add = add i64 %2, %width, !dbg !918
  %call21 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call11, i64 noundef %div.neg, i64 noundef %sub20, i64 noundef %add, i64 noundef %height, ptr noundef %exception) #14, !dbg !919
  call void @llvm.dbg.value(metadata ptr %call21, metadata !844, metadata !DIExpression()), !dbg !920
  %3 = load i64, ptr %columns22, align 8, !dbg !921, !tbaa !917
  %call23 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call12, i64 noundef 0, i64 noundef %y.0823, i64 noundef %3, i64 noundef 1, ptr noundef %exception) #14, !dbg !922
  call void @llvm.dbg.value(metadata ptr %call23, metadata !849, metadata !DIExpression()), !dbg !920
  %cmp24 = icmp eq ptr %call21, null, !dbg !923
  %cmp26 = icmp eq ptr %call23, null
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26, !dbg !925
  br i1 %or.cond, label %cleanup, label %if.end29, !dbg !925

if.end29:                                         ; preds = %if.end18
  %call30 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call11) #13, !dbg !926
  call void @llvm.dbg.value(metadata ptr %call30, metadata !842, metadata !DIExpression()), !dbg !920
  %call31 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call12) #13, !dbg !927
  call void @llvm.dbg.value(metadata ptr %call31, metadata !847, metadata !DIExpression()), !dbg !920
  %channel_bias.sroa.4.0.copyload = load float, ptr %channel_bias.sroa.4.0.zero.sroa_idx, align 8, !dbg !928, !tbaa.struct !929
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %channel_bias.sroa.9.0.copyload = load float, ptr %channel_bias.sroa.9.0.zero.sroa_idx, align 4, !dbg !928, !tbaa.struct !932
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %channel_bias.sroa.14.0.copyload = load float, ptr %channel_bias.sroa.14.0.zero.sroa_idx, align 8, !dbg !928, !tbaa.struct !933
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %channel_bias.sroa.19.0.copyload = load float, ptr %channel_bias.sroa.19.0.zero.sroa_idx, align 4, !dbg !928
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  %channel_bias.sroa.24.0.copyload = load float, ptr %channel_bias.sroa.24.0.zero.sroa_idx, align 8, !dbg !928
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata i32 undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0.copyload, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0.copyload, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0.copyload, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0.copyload, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata i32 undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !920
  call void @llvm.dbg.value(metadata ptr %call21, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  br i1 %cmp33624, label %for.cond36.preheader.lr.ph, label %if.end29.for.cond135.preheader_crit_edge, !dbg !934

if.end29.for.cond135.preheader_crit_edge:         ; preds = %if.end29
  %.pre = load i64, ptr %columns, align 8, !tbaa !917
  br label %for.cond135.preheader, !dbg !934

for.cond36.preheader.lr.ph:                       ; preds = %if.end29
  %cmp67 = icmp eq ptr %call30, null
  %sub.ptr.rhs.cast = ptrtoint ptr %call21 to i64
  %4 = load i64, ptr %columns, align 8, !tbaa !917
  %add130 = add i64 %4, %width
  br i1 %cmp37591, label %for.cond36.preheader.lr.ph.split.us, label %for.cond135.preheader, !dbg !936

for.cond36.preheader.lr.ph.split.us:              ; preds = %for.cond36.preheader.lr.ph
  %5 = load i32, ptr %colorspace, align 4, !tbaa !940
  %cmp104.us = icmp eq i32 %5, 12
  br i1 %cmp104.us, label %for.cond36.preheader.lr.ph.split.us.split.us, label %for.cond36.preheader.us, !dbg !941

for.cond36.preheader.lr.ph.split.us.split.us:     ; preds = %for.cond36.preheader.lr.ph.split.us
  br i1 %cmp67, label %for.cond36.preheader.us.us.us.us, label %for.cond36.preheader.us.us, !dbg !944

for.cond36.preheader.us.us.us.us:                 ; preds = %for.cond36.preheader.lr.ph.split.us.split.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us
  %v.0638.us.us.us.us = phi i64 [ %inc133.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ 0, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %r.0635.us.us.us.us = phi ptr [ %add.ptr131.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %call21, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.3.0634.us.us.us.us = phi float [ %add84.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.10.0633.us.us.us.us = phi float [ %add90.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.17.0632.us.us.us.us = phi float [ %add96.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.24.0631.us.us.us.us = phi float [ %add102.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.4.0629.us.us.us.us = phi float [ %channel_bias.sroa.4.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.9.0628.us.us.us.us = phi float [ %channel_bias.sroa.9.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.14.0627.us.us.us.us = phi float [ %channel_bias.sroa.14.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.19.0626.us.us.us.us = phi float [ %channel_bias.sroa.19.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.24.0625.us.us.us.us = phi float [ %channel_bias.sroa.24.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  call void @llvm.dbg.value(metadata i64 %v.0638.us.us.us.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %r.0635.us.us.us.us, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.0634.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.0633.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.0632.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.0631.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0629.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0628.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0627.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0626.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0625.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %sub40
  %red.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %sub40, i32 2
  %green.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %sub40, i32 1
  %opacity.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %sub40, i32 3
  br label %for.body39.us.us.us.us.us.us.us, !dbg !936

for.body39.us.us.us.us.us.us.us:                  ; preds = %if.end78.us.us.us.us.us.us.us, %for.cond36.preheader.us.us.us.us
  %u.0602.us.us.us.us.us.us.us = phi i64 [ 0, %for.cond36.preheader.us.us.us.us ], [ %inc.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_sum.sroa.3.1601.us.us.us.us.us.us.us = phi float [ %channel_sum.sroa.3.0634.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %add84.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_sum.sroa.10.1600.us.us.us.us.us.us.us = phi float [ %channel_sum.sroa.10.0633.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %add90.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_sum.sroa.17.1599.us.us.us.us.us.us.us = phi float [ %channel_sum.sroa.17.0632.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %add96.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_sum.sroa.24.1598.us.us.us.us.us.us.us = phi float [ %channel_sum.sroa.24.0631.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %add102.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_bias.sroa.4.1596.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.4.0629.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %channel_bias.sroa.4.2.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_bias.sroa.9.1595.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.9.0628.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %channel_bias.sroa.9.2.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_bias.sroa.14.1594.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.14.0627.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %channel_bias.sroa.14.2.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_bias.sroa.19.1593.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.19.0626.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %channel_bias.sroa.19.2.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  %channel_bias.sroa.24.1592.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.24.0625.us.us.us.us, %for.cond36.preheader.us.us.us.us ], [ %channel_bias.sroa.24.2.us.us.us.us.us.us.us, %if.end78.us.us.us.us.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %u.0602.us.us.us.us.us.us.us, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.1601.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.1600.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.1599.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.1598.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.1596.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.1595.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.1594.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.1593.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.1592.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %cmp41.us.us.us.us.us.us.us = icmp eq i64 %u.0602.us.us.us.us.us.us.us, %sub40, !dbg !948
  br i1 %cmp41.us.us.us.us.us.us.us, label %if.then43.us.us.us.us.us.us.us, label %if.end78.us.us.us.us.us.us.us, !dbg !949

if.then43.us.us.us.us.us.us.us:                   ; preds = %for.body39.us.us.us.us.us.us.us
  %6 = load i16, ptr %red.us.us.us.us.us.us.us, align 2, !dbg !950, !tbaa !951
  %conv45.us.us.us.us.us.us.us = uitofp i16 %6 to float, !dbg !952
  %add47.us.us.us.us.us.us.us = fadd float %channel_bias.sroa.4.1596.us.us.us.us.us.us.us, %conv45.us.us.us.us.us.us.us, !dbg !953
  call void @llvm.dbg.value(metadata float %add47.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %7 = load i16, ptr %green.us.us.us.us.us.us.us, align 2, !dbg !954, !tbaa !955
  %conv50.us.us.us.us.us.us.us = uitofp i16 %7 to float, !dbg !956
  %add52.us.us.us.us.us.us.us = fadd float %channel_bias.sroa.9.1595.us.us.us.us.us.us.us, %conv50.us.us.us.us.us.us.us, !dbg !957
  call void @llvm.dbg.value(metadata float %add52.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %8 = load i16, ptr %arrayidx.us.us.us.us.us.us.us, align 2, !dbg !958, !tbaa !959
  %conv55.us.us.us.us.us.us.us = uitofp i16 %8 to float, !dbg !960
  %add57.us.us.us.us.us.us.us = fadd float %channel_bias.sroa.14.1594.us.us.us.us.us.us.us, %conv55.us.us.us.us.us.us.us, !dbg !961
  call void @llvm.dbg.value(metadata float %add57.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %9 = load i16, ptr %opacity.us.us.us.us.us.us.us, align 2, !dbg !962, !tbaa !963
  %conv60.us.us.us.us.us.us.us = uitofp i16 %9 to float, !dbg !964
  %add62.us.us.us.us.us.us.us = fadd float %channel_bias.sroa.19.1593.us.us.us.us.us.us.us, %conv60.us.us.us.us.us.us.us, !dbg !965
  call void @llvm.dbg.value(metadata float %add62.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  br label %if.end78.us.us.us.us.us.us.us, !dbg !966

if.end78.us.us.us.us.us.us.us:                    ; preds = %if.then43.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us
  %channel_bias.sroa.24.2.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.24.1592.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us ], [ 0.000000e+00, %if.then43.us.us.us.us.us.us.us ], !dbg !920
  %channel_bias.sroa.19.2.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.19.1593.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us ], [ %add62.us.us.us.us.us.us.us, %if.then43.us.us.us.us.us.us.us ], !dbg !920
  %channel_bias.sroa.14.2.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.14.1594.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us ], [ %add57.us.us.us.us.us.us.us, %if.then43.us.us.us.us.us.us.us ], !dbg !920
  %channel_bias.sroa.9.2.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.9.1595.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us ], [ %add52.us.us.us.us.us.us.us, %if.then43.us.us.us.us.us.us.us ], !dbg !920
  %channel_bias.sroa.4.2.us.us.us.us.us.us.us = phi float [ %channel_bias.sroa.4.1596.us.us.us.us.us.us.us, %for.body39.us.us.us.us.us.us.us ], [ %add47.us.us.us.us.us.us.us, %if.then43.us.us.us.us.us.us.us ], !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx79.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %u.0602.us.us.us.us.us.us.us, !dbg !967
  %red80.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %u.0602.us.us.us.us.us.us.us, i32 2, !dbg !968
  %10 = load i16, ptr %red80.us.us.us.us.us.us.us, align 2, !dbg !968, !tbaa !951
  %conv82.us.us.us.us.us.us.us = uitofp i16 %10 to float, !dbg !967
  %add84.us.us.us.us.us.us.us = fadd float %channel_sum.sroa.3.1601.us.us.us.us.us.us.us, %conv82.us.us.us.us.us.us.us, !dbg !969
  call void @llvm.dbg.value(metadata float %add84.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green86.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %u.0602.us.us.us.us.us.us.us, i32 1, !dbg !970
  %11 = load i16, ptr %green86.us.us.us.us.us.us.us, align 2, !dbg !970, !tbaa !955
  %conv88.us.us.us.us.us.us.us = uitofp i16 %11 to float, !dbg !971
  %add90.us.us.us.us.us.us.us = fadd float %channel_sum.sroa.10.1600.us.us.us.us.us.us.us, %conv88.us.us.us.us.us.us.us, !dbg !972
  call void @llvm.dbg.value(metadata float %add90.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %12 = load i16, ptr %arrayidx79.us.us.us.us.us.us.us, align 2, !dbg !973, !tbaa !959
  %conv94.us.us.us.us.us.us.us = uitofp i16 %12 to float, !dbg !974
  %add96.us.us.us.us.us.us.us = fadd float %channel_sum.sroa.17.1599.us.us.us.us.us.us.us, %conv94.us.us.us.us.us.us.us, !dbg !975
  call void @llvm.dbg.value(metadata float %add96.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity98.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %u.0602.us.us.us.us.us.us.us, i32 3, !dbg !976
  %13 = load i16, ptr %opacity98.us.us.us.us.us.us.us, align 2, !dbg !976, !tbaa !963
  %conv100.us.us.us.us.us.us.us = uitofp i16 %13 to float, !dbg !977
  %add102.us.us.us.us.us.us.us = fadd float %channel_sum.sroa.24.1598.us.us.us.us.us.us.us, %conv100.us.us.us.us.us.us.us, !dbg !978
  call void @llvm.dbg.value(metadata float %add102.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %inc.us.us.us.us.us.us.us = add nuw nsw i64 %u.0602.us.us.us.us.us.us.us, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %inc.us.us.us.us.us.us.us, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %add84.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add90.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add96.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add102.us.us.us.us.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.2.us.us.us.us.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond834.not = icmp eq i64 %inc.us.us.us.us.us.us.us, %width, !dbg !980
  br i1 %exitcond834.not, label %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us, label %for.body39.us.us.us.us.us.us.us, !dbg !936, !llvm.loop !981

for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us: ; preds = %if.end78.us.us.us.us.us.us.us
  %add.ptr131.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us.us.us, i64 %add130, !dbg !985
  call void @llvm.dbg.value(metadata ptr %add.ptr131.us.us.us.us, metadata !846, metadata !DIExpression()), !dbg !920
  %inc133.us.us.us.us = add nuw nsw i64 %v.0638.us.us.us.us, 1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %inc133.us.us.us.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond835.not = icmp eq i64 %inc133.us.us.us.us, %height, !dbg !987
  br i1 %exitcond835.not, label %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us, label %for.cond36.preheader.us.us.us.us, !dbg !934, !llvm.loop !988

for.cond36.preheader.us.us:                       ; preds = %for.cond36.preheader.lr.ph.split.us.split.us, %for.cond36.for.end_crit_edge.split.us.us.us.split
  %v.0638.us.us = phi i64 [ %inc133.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ 0, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %r.0635.us.us = phi ptr [ %add.ptr131.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %call21, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.3.0634.us.us = phi float [ %add84.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.10.0633.us.us = phi float [ %add90.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.17.0632.us.us = phi float [ %add96.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_sum.sroa.24.0631.us.us = phi float [ %add102.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.4.0629.us.us = phi float [ %channel_bias.sroa.4.2.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.9.0628.us.us = phi float [ %channel_bias.sroa.9.2.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.14.0627.us.us = phi float [ %channel_bias.sroa.14.2.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.19.0626.us.us = phi float [ %channel_bias.sroa.19.2.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  %channel_bias.sroa.24.0625.us.us = phi float [ %channel_bias.sroa.24.2.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.preheader.lr.ph.split.us.split.us ]
  call void @llvm.dbg.value(metadata i64 %v.0638.us.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %r.0635.us.us, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.0634.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.0633.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.0632.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.0631.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0629.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0628.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0627.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0626.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0625.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %sub.ptr.lhs.cast.us.us = ptrtoint ptr %r.0635.us.us to i64
  %sub.ptr.sub.us.us = sub i64 %sub.ptr.lhs.cast.us.us, %sub.ptr.rhs.cast
  %sub.ptr.div.us.us = ashr exact i64 %sub.ptr.sub.us.us, 3
  %add.ptr.us.us = getelementptr inbounds i16, ptr %call30, i64 %sub.ptr.div.us.us
  %opacity.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %sub40, i32 3
  %arrayidx.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %sub40
  %green.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %sub40, i32 1
  %red.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %sub40, i32 2
  %add.ptr66.us.us.us = getelementptr inbounds i16, ptr %add.ptr.us.us, i64 %sub40
  br label %for.body39.us.us.us, !dbg !936

for.body39.us.us.us:                              ; preds = %cond.end124.us.us.us, %for.cond36.preheader.us.us
  %u.0602.us.us.us = phi i64 [ 0, %for.cond36.preheader.us.us ], [ %inc.us.us.us, %cond.end124.us.us.us ]
  %channel_sum.sroa.3.1601.us.us.us = phi float [ %channel_sum.sroa.3.0634.us.us, %for.cond36.preheader.us.us ], [ %add84.us.us.us, %cond.end124.us.us.us ]
  %channel_sum.sroa.10.1600.us.us.us = phi float [ %channel_sum.sroa.10.0633.us.us, %for.cond36.preheader.us.us ], [ %add90.us.us.us, %cond.end124.us.us.us ]
  %channel_sum.sroa.17.1599.us.us.us = phi float [ %channel_sum.sroa.17.0632.us.us, %for.cond36.preheader.us.us ], [ %add96.us.us.us, %cond.end124.us.us.us ]
  %channel_sum.sroa.24.1598.us.us.us = phi float [ %channel_sum.sroa.24.0631.us.us, %for.cond36.preheader.us.us ], [ %add102.us.us.us, %cond.end124.us.us.us ]
  %channel_bias.sroa.4.1596.us.us.us = phi float [ %channel_bias.sroa.4.0629.us.us, %for.cond36.preheader.us.us ], [ %channel_bias.sroa.4.2.us.us.us, %cond.end124.us.us.us ]
  %channel_bias.sroa.9.1595.us.us.us = phi float [ %channel_bias.sroa.9.0628.us.us, %for.cond36.preheader.us.us ], [ %channel_bias.sroa.9.2.us.us.us, %cond.end124.us.us.us ]
  %channel_bias.sroa.14.1594.us.us.us = phi float [ %channel_bias.sroa.14.0627.us.us, %for.cond36.preheader.us.us ], [ %channel_bias.sroa.14.2.us.us.us, %cond.end124.us.us.us ]
  %channel_bias.sroa.19.1593.us.us.us = phi float [ %channel_bias.sroa.19.0626.us.us, %for.cond36.preheader.us.us ], [ %channel_bias.sroa.19.2.us.us.us, %cond.end124.us.us.us ]
  %channel_bias.sroa.24.1592.us.us.us = phi float [ %channel_bias.sroa.24.0625.us.us, %for.cond36.preheader.us.us ], [ %channel_bias.sroa.24.2.us.us.us, %cond.end124.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %u.0602.us.us.us, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.1601.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.1600.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.1599.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.1598.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.1596.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.1595.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.1594.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.1593.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.1592.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %cmp41.us.us.us = icmp eq i64 %u.0602.us.us.us, %sub40, !dbg !948
  br i1 %cmp41.us.us.us, label %if.then65.us.us.us, label %cond.end124.us.us.us, !dbg !949

if.then65.us.us.us:                               ; preds = %for.body39.us.us.us
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  %14 = load i16, ptr %opacity.us.us.us, align 2, !dbg !962, !tbaa !963
  %conv60.us.us.us = uitofp i16 %14 to float, !dbg !964
  %add62.us.us.us = fadd float %channel_bias.sroa.19.1593.us.us.us, %conv60.us.us.us, !dbg !965
  call void @llvm.dbg.value(metadata float %add62.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  %15 = load i16, ptr %arrayidx.us.us.us, align 2, !dbg !958, !tbaa !959
  %conv55.us.us.us = uitofp i16 %15 to float, !dbg !960
  %add57.us.us.us = fadd float %channel_bias.sroa.14.1594.us.us.us, %conv55.us.us.us, !dbg !961
  call void @llvm.dbg.value(metadata float %add57.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %16 = load i16, ptr %green.us.us.us, align 2, !dbg !954, !tbaa !955
  %conv50.us.us.us = uitofp i16 %16 to float, !dbg !956
  %add52.us.us.us = fadd float %channel_bias.sroa.9.1595.us.us.us, %conv50.us.us.us, !dbg !957
  call void @llvm.dbg.value(metadata float %add52.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %17 = load i16, ptr %red.us.us.us, align 2, !dbg !950, !tbaa !951
  %conv45.us.us.us = uitofp i16 %17 to float, !dbg !952
  %add47.us.us.us = fadd float %channel_bias.sroa.4.1596.us.us.us, %conv45.us.us.us, !dbg !953
  call void @llvm.dbg.value(metadata float %add47.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %18 = load i16, ptr %add.ptr66.us.us.us, align 2, !dbg !944, !tbaa !990
  %conv76.us.us.us = uitofp i16 %18 to float, !dbg !991
  call void @llvm.dbg.value(metadata float %conv76.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  br label %cond.end124.us.us.us, !dbg !992

cond.end124.us.us.us:                             ; preds = %if.then65.us.us.us, %for.body39.us.us.us
  %channel_bias.sroa.24.2.us.us.us = phi float [ %conv76.us.us.us, %if.then65.us.us.us ], [ %channel_bias.sroa.24.1592.us.us.us, %for.body39.us.us.us ], !dbg !920
  %channel_bias.sroa.19.2.us.us.us = phi float [ %add62.us.us.us, %if.then65.us.us.us ], [ %channel_bias.sroa.19.1593.us.us.us, %for.body39.us.us.us ], !dbg !920
  %channel_bias.sroa.14.2.us.us.us = phi float [ %add57.us.us.us, %if.then65.us.us.us ], [ %channel_bias.sroa.14.1594.us.us.us, %for.body39.us.us.us ], !dbg !920
  %channel_bias.sroa.9.2.us.us.us = phi float [ %add52.us.us.us, %if.then65.us.us.us ], [ %channel_bias.sroa.9.1595.us.us.us, %for.body39.us.us.us ], !dbg !920
  %channel_bias.sroa.4.2.us.us.us = phi float [ %add47.us.us.us, %if.then65.us.us.us ], [ %channel_bias.sroa.4.1596.us.us.us, %for.body39.us.us.us ], !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx79.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %u.0602.us.us.us, !dbg !967
  %red80.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %u.0602.us.us.us, i32 2, !dbg !968
  %19 = load i16, ptr %red80.us.us.us, align 2, !dbg !968, !tbaa !951
  %conv82.us.us.us = uitofp i16 %19 to float, !dbg !967
  %add84.us.us.us = fadd float %channel_sum.sroa.3.1601.us.us.us, %conv82.us.us.us, !dbg !969
  call void @llvm.dbg.value(metadata float %add84.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green86.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %u.0602.us.us.us, i32 1, !dbg !970
  %20 = load i16, ptr %green86.us.us.us, align 2, !dbg !970, !tbaa !955
  %conv88.us.us.us = uitofp i16 %20 to float, !dbg !971
  %add90.us.us.us = fadd float %channel_sum.sroa.10.1600.us.us.us, %conv88.us.us.us, !dbg !972
  call void @llvm.dbg.value(metadata float %add90.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %21 = load i16, ptr %arrayidx79.us.us.us, align 2, !dbg !973, !tbaa !959
  %conv94.us.us.us = uitofp i16 %21 to float, !dbg !974
  %add96.us.us.us = fadd float %channel_sum.sroa.17.1599.us.us.us, %conv94.us.us.us, !dbg !975
  call void @llvm.dbg.value(metadata float %add96.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity98.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %u.0602.us.us.us, i32 3, !dbg !976
  %22 = load i16, ptr %opacity98.us.us.us, align 2, !dbg !976, !tbaa !963
  %conv100.us.us.us = uitofp i16 %22 to float, !dbg !977
  %add102.us.us.us = fadd float %channel_sum.sroa.24.1598.us.us.us, %conv100.us.us.us, !dbg !978
  call void @llvm.dbg.value(metadata float %add102.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %inc.us.us.us = add nuw nsw i64 %u.0602.us.us.us, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %inc.us.us.us, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %add84.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add90.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add96.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add102.us.us.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.2.us.us.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond832.not = icmp eq i64 %inc.us.us.us, %width, !dbg !980
  br i1 %exitcond832.not, label %for.cond36.for.end_crit_edge.split.us.us.us.split, label %for.body39.us.us.us, !dbg !936, !llvm.loop !981

for.cond36.for.end_crit_edge.split.us.us.us.split: ; preds = %cond.end124.us.us.us
  %add.ptr131.us.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us.us, i64 %add130, !dbg !985
  call void @llvm.dbg.value(metadata ptr %add.ptr131.us.us, metadata !846, metadata !DIExpression()), !dbg !920
  %inc133.us.us = add nuw nsw i64 %v.0638.us.us, 1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %inc133.us.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond833.not = icmp eq i64 %inc133.us.us, %height, !dbg !987
  br i1 %exitcond833.not, label %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844, label %for.cond36.preheader.us.us, !dbg !934, !llvm.loop !988

for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844: ; preds = %for.cond36.for.end_crit_edge.split.us.us.us.split
  %add.ptr112.us.us.us.le.le = getelementptr inbounds i16, ptr %add.ptr.us.us, i64 %u.0602.us.us.us, !dbg !993
  %23 = load i16, ptr %add.ptr112.us.us.us.le.le, align 2, !dbg !993, !tbaa !990
  %conv123.us.us.us.le.le = zext i16 %23 to i32, !dbg !993
  br label %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us, !dbg !995

for.cond32.for.cond135.preheader_crit_edge.split.us.split.us: ; preds = %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844
  %.us-phi742 = phi i32 [ %conv123.us.us.us.le.le, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ 0, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi743 = phi float [ %channel_bias.sroa.24.2.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %channel_bias.sroa.24.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi744 = phi float [ %channel_bias.sroa.19.2.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %channel_bias.sroa.19.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi745 = phi float [ %channel_bias.sroa.14.2.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %channel_bias.sroa.14.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi746 = phi float [ %channel_bias.sroa.9.2.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %channel_bias.sroa.9.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi747 = phi float [ %channel_bias.sroa.4.2.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %channel_bias.sroa.4.2.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi748 = phi float [ %add102.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %add102.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi749 = phi float [ %add96.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %add96.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi750 = phi float [ %add90.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %add90.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %.us-phi751 = phi float [ %add84.us.us.us, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us.loopexit844 ], [ %add84.us.us.us.us.us.us.us, %for.cond36.for.end_crit_edge.split.us.us.us.split.us.us.split.us.us ]
  %conv126.us.le.us.us.le = sitofp i32 %.us-phi742 to float, !dbg !995
  br label %for.cond135.preheader, !dbg !934

for.cond36.preheader.us:                          ; preds = %for.cond36.preheader.lr.ph.split.us, %for.cond36.for.end_crit_edge.split.us702
  %v.0638.us = phi i64 [ %inc133.us, %for.cond36.for.end_crit_edge.split.us702 ], [ 0, %for.cond36.preheader.lr.ph.split.us ]
  %r.0635.us = phi ptr [ %add.ptr131.us, %for.cond36.for.end_crit_edge.split.us702 ], [ %call21, %for.cond36.preheader.lr.ph.split.us ]
  %channel_sum.sroa.3.0634.us = phi float [ %add84.us691, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_sum.sroa.10.0633.us = phi float [ %add90.us694, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_sum.sroa.17.0632.us = phi float [ %add96.us696, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_sum.sroa.24.0631.us = phi float [ %add102.us699, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_bias.sroa.4.0629.us = phi float [ %channel_bias.sroa.4.2.us687, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_bias.sroa.9.0628.us = phi float [ %channel_bias.sroa.9.2.us686, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_bias.sroa.14.0627.us = phi float [ %channel_bias.sroa.14.2.us685, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  %channel_bias.sroa.19.0626.us = phi float [ %channel_bias.sroa.19.2.us684, %for.cond36.for.end_crit_edge.split.us702 ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %v.0638.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %r.0635.us, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.0634.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.0633.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.0632.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.0631.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0629.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0628.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0627.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0626.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx.us662 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %sub40
  %red.us663 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %sub40, i32 2
  %green.us666 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %sub40, i32 1
  %opacity.us671 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %sub40, i32 3
  br label %for.body39.us649, !dbg !936

for.body39.us649:                                 ; preds = %for.cond36.preheader.us, %if.end78.us682
  %u.0602.us650 = phi i64 [ 0, %for.cond36.preheader.us ], [ %inc.us700, %if.end78.us682 ]
  %channel_sum.sroa.3.1601.us651 = phi float [ %channel_sum.sroa.3.0634.us, %for.cond36.preheader.us ], [ %add84.us691, %if.end78.us682 ]
  %channel_sum.sroa.10.1600.us652 = phi float [ %channel_sum.sroa.10.0633.us, %for.cond36.preheader.us ], [ %add90.us694, %if.end78.us682 ]
  %channel_sum.sroa.17.1599.us653 = phi float [ %channel_sum.sroa.17.0632.us, %for.cond36.preheader.us ], [ %add96.us696, %if.end78.us682 ]
  %channel_sum.sroa.24.1598.us654 = phi float [ %channel_sum.sroa.24.0631.us, %for.cond36.preheader.us ], [ %add102.us699, %if.end78.us682 ]
  %channel_bias.sroa.4.1596.us655 = phi float [ %channel_bias.sroa.4.0629.us, %for.cond36.preheader.us ], [ %channel_bias.sroa.4.2.us687, %if.end78.us682 ]
  %channel_bias.sroa.9.1595.us656 = phi float [ %channel_bias.sroa.9.0628.us, %for.cond36.preheader.us ], [ %channel_bias.sroa.9.2.us686, %if.end78.us682 ]
  %channel_bias.sroa.14.1594.us657 = phi float [ %channel_bias.sroa.14.0627.us, %for.cond36.preheader.us ], [ %channel_bias.sroa.14.2.us685, %if.end78.us682 ]
  %channel_bias.sroa.19.1593.us658 = phi float [ %channel_bias.sroa.19.0626.us, %for.cond36.preheader.us ], [ %channel_bias.sroa.19.2.us684, %if.end78.us682 ]
  call void @llvm.dbg.value(metadata i64 %u.0602.us650, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.1601.us651, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.1600.us652, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.1599.us653, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.1598.us654, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.1596.us655, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.1595.us656, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.1594.us657, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.1593.us658, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %cmp41.us660 = icmp eq i64 %u.0602.us650, %sub40, !dbg !948
  br i1 %cmp41.us660, label %if.then43.us661, label %if.end78.us682, !dbg !949

if.then43.us661:                                  ; preds = %for.body39.us649
  %24 = load i16, ptr %red.us663, align 2, !dbg !950, !tbaa !951
  %conv45.us664 = uitofp i16 %24 to float, !dbg !952
  %add47.us665 = fadd float %channel_bias.sroa.4.1596.us655, %conv45.us664, !dbg !953
  call void @llvm.dbg.value(metadata float %add47.us665, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %25 = load i16, ptr %green.us666, align 2, !dbg !954, !tbaa !955
  %conv50.us667 = uitofp i16 %25 to float, !dbg !956
  %add52.us668 = fadd float %channel_bias.sroa.9.1595.us656, %conv50.us667, !dbg !957
  call void @llvm.dbg.value(metadata float %add52.us668, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %26 = load i16, ptr %arrayidx.us662, align 2, !dbg !958, !tbaa !959
  %conv55.us669 = uitofp i16 %26 to float, !dbg !960
  %add57.us670 = fadd float %channel_bias.sroa.14.1594.us657, %conv55.us669, !dbg !961
  call void @llvm.dbg.value(metadata float %add57.us670, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %27 = load i16, ptr %opacity.us671, align 2, !dbg !962, !tbaa !963
  %conv60.us672 = uitofp i16 %27 to float, !dbg !964
  %add62.us673 = fadd float %channel_bias.sroa.19.1593.us658, %conv60.us672, !dbg !965
  call void @llvm.dbg.value(metadata float %add62.us673, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  br label %if.end78.us682, !dbg !966

if.end78.us682:                                   ; preds = %if.then43.us661, %for.body39.us649
  %channel_bias.sroa.19.2.us684 = phi float [ %add62.us673, %if.then43.us661 ], [ %channel_bias.sroa.19.1593.us658, %for.body39.us649 ], !dbg !920
  %channel_bias.sroa.14.2.us685 = phi float [ %add57.us670, %if.then43.us661 ], [ %channel_bias.sroa.14.1594.us657, %for.body39.us649 ], !dbg !920
  %channel_bias.sroa.9.2.us686 = phi float [ %add52.us668, %if.then43.us661 ], [ %channel_bias.sroa.9.1595.us656, %for.body39.us649 ], !dbg !920
  %channel_bias.sroa.4.2.us687 = phi float [ %add47.us665, %if.then43.us661 ], [ %channel_bias.sroa.4.1596.us655, %for.body39.us649 ], !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us687, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us686, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us685, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us684, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx79.us688 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %u.0602.us650, !dbg !967
  %red80.us689 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %u.0602.us650, i32 2, !dbg !968
  %28 = load i16, ptr %red80.us689, align 2, !dbg !968, !tbaa !951
  %conv82.us690 = uitofp i16 %28 to float, !dbg !967
  %add84.us691 = fadd float %channel_sum.sroa.3.1601.us651, %conv82.us690, !dbg !969
  call void @llvm.dbg.value(metadata float %add84.us691, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green86.us692 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %u.0602.us650, i32 1, !dbg !970
  %29 = load i16, ptr %green86.us692, align 2, !dbg !970, !tbaa !955
  %conv88.us693 = uitofp i16 %29 to float, !dbg !971
  %add90.us694 = fadd float %channel_sum.sroa.10.1600.us652, %conv88.us693, !dbg !972
  call void @llvm.dbg.value(metadata float %add90.us694, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %30 = load i16, ptr %arrayidx79.us688, align 2, !dbg !973, !tbaa !959
  %conv94.us695 = uitofp i16 %30 to float, !dbg !974
  %add96.us696 = fadd float %channel_sum.sroa.17.1599.us653, %conv94.us695, !dbg !975
  call void @llvm.dbg.value(metadata float %add96.us696, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity98.us697 = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %u.0602.us650, i32 3, !dbg !976
  %31 = load i16, ptr %opacity98.us697, align 2, !dbg !976, !tbaa !963
  %conv100.us698 = uitofp i16 %31 to float, !dbg !977
  %add102.us699 = fadd float %channel_sum.sroa.24.1598.us654, %conv100.us698, !dbg !978
  call void @llvm.dbg.value(metadata float %add102.us699, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %inc.us700 = add nuw nsw i64 %u.0602.us650, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %inc.us700, metadata !852, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %add84.us691, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add90.us694, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add96.us696, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add102.us699, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.2.us687, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.2.us686, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.2.us685, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.2.us684, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond.not = icmp eq i64 %inc.us700, %width, !dbg !980
  br i1 %exitcond.not, label %for.cond36.for.end_crit_edge.split.us702, label %for.body39.us649, !dbg !936, !llvm.loop !981

for.cond36.for.end_crit_edge.split.us702:         ; preds = %if.end78.us682
  %add.ptr131.us = getelementptr inbounds %struct._PixelPacket, ptr %r.0635.us, i64 %add130, !dbg !985
  call void @llvm.dbg.value(metadata ptr %add.ptr131.us, metadata !846, metadata !DIExpression()), !dbg !920
  %inc133.us = add nuw nsw i64 %v.0638.us, 1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %inc133.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond831.not = icmp eq i64 %inc133.us, %height, !dbg !987
  br i1 %exitcond831.not, label %for.cond135.preheader, label %for.cond36.preheader.us, !dbg !934, !llvm.loop !988

for.cond135.preheader:                            ; preds = %for.cond36.for.end_crit_edge.split.us702, %for.cond36.preheader.lr.ph, %if.end29.for.cond135.preheader_crit_edge, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us
  %32 = phi i64 [ %.pre, %if.end29.for.cond135.preheader_crit_edge ], [ %4, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %4, %for.cond36.preheader.lr.ph ], [ %4, %for.cond36.for.end_crit_edge.split.us702 ]
  %channel_bias.sroa.24.0.lcssa = phi float [ %channel_bias.sroa.24.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi743, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !928
  %channel_bias.sroa.19.0.lcssa = phi float [ %channel_bias.sroa.19.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi744, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.19.2.us684, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !928
  %channel_bias.sroa.14.0.lcssa = phi float [ %channel_bias.sroa.14.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi745, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.14.2.us685, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !928
  %channel_bias.sroa.9.0.lcssa = phi float [ %channel_bias.sroa.9.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi746, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.9.2.us686, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !928
  %channel_bias.sroa.4.0.lcssa = phi float [ %channel_bias.sroa.4.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi747, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.4.2.us687, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !928
  %channel_sum.sroa.31.0.lcssa = phi float [ %channel_bias.sroa.24.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %conv126.us.le.us.us.le, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.preheader.lr.ph ], [ %channel_bias.sroa.24.0.copyload, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !996
  %channel_sum.sroa.24.0.lcssa = phi float [ %channel_bias.sroa.19.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi748, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.19.0.copyload, %for.cond36.preheader.lr.ph ], [ %add102.us699, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !996
  %channel_sum.sroa.17.0.lcssa = phi float [ %channel_bias.sroa.14.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi749, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.14.0.copyload, %for.cond36.preheader.lr.ph ], [ %add96.us696, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !996
  %channel_sum.sroa.10.0.lcssa = phi float [ %channel_bias.sroa.9.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi750, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.9.0.copyload, %for.cond36.preheader.lr.ph ], [ %add90.us694, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !996
  %channel_sum.sroa.3.0.lcssa = phi float [ %channel_bias.sroa.4.0.copyload, %if.end29.for.cond135.preheader_crit_edge ], [ %.us-phi751, %for.cond32.for.cond135.preheader_crit_edge.split.us.split.us ], [ %channel_bias.sroa.4.0.copyload, %for.cond36.preheader.lr.ph ], [ %add84.us691, %for.cond36.for.end_crit_edge.split.us702 ], !dbg !996
  call void @llvm.dbg.value(metadata i64 0, metadata !851, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %call23, metadata !849, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %call21, metadata !844, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.0.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.0.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.0.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.0.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.31.0.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.0.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %cmp137804 = icmp sgt i64 %32, 0, !dbg !997
  br i1 %cmp137804, label %for.body139.lr.ph, label %for.end366, !dbg !998

for.body139.lr.ph:                                ; preds = %for.cond135.preheader
  %cmp194 = icmp eq ptr %call30, null
  %add270 = add i64 %32, %width
  %33 = load i32, ptr %colorspace, align 4, !tbaa !940
  %cmp296 = icmp eq i32 %33, 12
  %cmp296.not = xor i1 %cmp296, true
  %cmp342.not = icmp eq ptr %call31, null
  %or.cond590 = select i1 %cmp296.not, i1 true, i1 %cmp342.not
  br label %for.body139, !dbg !998

for.body139:                                      ; preds = %if.end362.for.body139_crit_edge, %for.body139.lr.ph
  %channel_bias.sroa.19.0.copyload518 = phi float [ %channel_bias.sroa.19.0.copyload, %for.body139.lr.ph ], [ %channel_bias.sroa.19.0.copyload518.pre, %if.end362.for.body139_crit_edge ], !dbg !999
  %channel_bias.sroa.14.0.copyload514 = phi float [ %channel_bias.sroa.14.0.copyload, %for.body139.lr.ph ], [ %channel_bias.sroa.14.0.copyload514.pre, %if.end362.for.body139_crit_edge ], !dbg !999
  %channel_bias.sroa.9.0.copyload510 = phi float [ %channel_bias.sroa.9.0.copyload, %for.body139.lr.ph ], [ %channel_bias.sroa.9.0.copyload510.pre, %if.end362.for.body139_crit_edge ], !dbg !999
  %channel_bias.sroa.4.0.copyload506 = phi float [ %channel_bias.sroa.4.0.copyload, %for.body139.lr.ph ], [ %channel_bias.sroa.4.0.copyload506.pre, %if.end362.for.body139_crit_edge ], !dbg !999
  %mean.sroa.11.0.copyload = phi float [ %channel_bias.sroa.24.0.copyload, %for.body139.lr.ph ], [ %mean.sroa.11.0.copyload.pre, %if.end362.for.body139_crit_edge ], !dbg !1000
  %x.0819 = phi i64 [ 0, %for.body139.lr.ph ], [ %inc365, %if.end362.for.body139_crit_edge ]
  %q.0818 = phi ptr [ %call23, %for.body139.lr.ph ], [ %incdec.ptr363, %if.end362.for.body139_crit_edge ]
  %p.0815 = phi ptr [ %call21, %for.body139.lr.ph ], [ %incdec.ptr, %if.end362.for.body139_crit_edge ]
  %channel_sum.sroa.3.2814 = phi float [ %channel_sum.sroa.3.0.lcssa, %for.body139.lr.ph ], [ %channel_sum.sroa.3.3.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_sum.sroa.10.2813 = phi float [ %channel_sum.sroa.10.0.lcssa, %for.body139.lr.ph ], [ %channel_sum.sroa.10.3.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_sum.sroa.17.2812 = phi float [ %channel_sum.sroa.17.0.lcssa, %for.body139.lr.ph ], [ %channel_sum.sroa.17.3.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_sum.sroa.24.2811 = phi float [ %channel_sum.sroa.24.0.lcssa, %for.body139.lr.ph ], [ %channel_sum.sroa.24.3.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_sum.sroa.31.3810 = phi float [ %channel_sum.sroa.31.0.lcssa, %for.body139.lr.ph ], [ %channel_sum.sroa.31.4.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_bias.sroa.4.3809 = phi float [ %channel_bias.sroa.4.0.lcssa, %for.body139.lr.ph ], [ %channel_bias.sroa.4.4.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_bias.sroa.9.3808 = phi float [ %channel_bias.sroa.9.0.lcssa, %for.body139.lr.ph ], [ %channel_bias.sroa.9.4.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_bias.sroa.14.3807 = phi float [ %channel_bias.sroa.14.0.lcssa, %for.body139.lr.ph ], [ %channel_bias.sroa.14.4.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_bias.sroa.19.3806 = phi float [ %channel_bias.sroa.19.0.lcssa, %for.body139.lr.ph ], [ %channel_bias.sroa.19.4.lcssa, %if.end362.for.body139_crit_edge ]
  %channel_bias.sroa.24.3805 = phi float [ %channel_bias.sroa.24.0.lcssa, %for.body139.lr.ph ], [ %channel_bias.sroa.24.4.lcssa, %if.end362.for.body139_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %x.0819, metadata !851, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %q.0818, metadata !849, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %p.0815, metadata !844, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.2814, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.2813, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.2812, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.2811, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.31.3810, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.3809, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.3808, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.3807, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.3806, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.3805, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata float undef, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata float undef, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata float undef, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata float %mean.sroa.11.0.copyload, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata i32 undef, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1001
  call void @llvm.dbg.value(metadata ptr %p.0815, metadata !846, metadata !DIExpression()), !dbg !920
  %sub142 = fsub float %channel_sum.sroa.3.2814, %channel_bias.sroa.4.3809, !dbg !1002
  call void @llvm.dbg.value(metadata float %sub142, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %sub145 = fsub float %channel_sum.sroa.10.2813, %channel_bias.sroa.9.3808, !dbg !1003
  call void @llvm.dbg.value(metadata float %sub145, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %sub148 = fsub float %channel_sum.sroa.17.2812, %channel_bias.sroa.14.3807, !dbg !1004
  call void @llvm.dbg.value(metadata float %sub148, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %sub151 = fsub float %channel_sum.sroa.24.2811, %channel_bias.sroa.19.3806, !dbg !1005
  call void @llvm.dbg.value(metadata float %sub151, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  %sub154 = fsub float %channel_sum.sroa.31.3810, %channel_bias.sroa.24.3805, !dbg !1006
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.0.copyload518, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %mean.sroa.11.0.copyload, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata i32 undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %sub142, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %sub145, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %sub148, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %sub151, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %sub154, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.0.copyload506, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.0.copyload510, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.0.copyload514, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  br i1 %cmp33624, label %for.body158.lr.ph, label %for.end274, !dbg !1007

for.body158.lr.ph:                                ; preds = %for.body139
  %add.ptr187 = getelementptr inbounds i16, ptr %call30, i64 %x.0819
  %sub.ptr.rhs.cast189 = ptrtoint ptr %p.0815 to i64
  br i1 %cmp296, label %for.body158.us, label %for.body158, !dbg !1009

for.body158.us:                                   ; preds = %for.body158.lr.ph, %cond.end206.us
  %v.1784.us = phi i64 [ %inc273.us, %cond.end206.us ], [ 0, %for.body158.lr.ph ]
  %r.1783.us = phi ptr [ %add.ptr271.us, %cond.end206.us ], [ %p.0815, %for.body158.lr.ph ]
  %channel_sum.sroa.3.3782.us = phi float [ %add217.us, %cond.end206.us ], [ %sub142, %for.body158.lr.ph ]
  %channel_sum.sroa.10.3781.us = phi float [ %add224.us, %cond.end206.us ], [ %sub145, %for.body158.lr.ph ]
  %channel_sum.sroa.17.3780.us = phi float [ %add231.us, %cond.end206.us ], [ %sub148, %for.body158.lr.ph ]
  %channel_sum.sroa.24.3779.us = phi float [ %add238.us, %cond.end206.us ], [ %sub151, %for.body158.lr.ph ]
  %channel_bias.sroa.4.4777.us = phi float [ %add164.us, %cond.end206.us ], [ %channel_bias.sroa.4.0.copyload506, %for.body158.lr.ph ]
  %channel_bias.sroa.9.4776.us = phi float [ %add170.us, %cond.end206.us ], [ %channel_bias.sroa.9.0.copyload510, %for.body158.lr.ph ]
  %channel_bias.sroa.14.4775.us = phi float [ %add176.us, %cond.end206.us ], [ %channel_bias.sroa.14.0.copyload514, %for.body158.lr.ph ]
  %channel_bias.sroa.19.4774.us = phi float [ %add182.us, %cond.end206.us ], [ %channel_bias.sroa.19.0.copyload518, %for.body158.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %v.1784.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %r.1783.us, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.3782.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.3781.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.3780.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.3779.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.4777.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.4776.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.4775.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.4774.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %red160.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 0, i32 2, !dbg !1012
  %34 = load i16, ptr %red160.us, align 2, !dbg !1012, !tbaa !951
  %conv162.us = uitofp i16 %34 to float, !dbg !1013
  %add164.us = fadd float %channel_bias.sroa.4.4777.us, %conv162.us, !dbg !1014
  call void @llvm.dbg.value(metadata float %add164.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green166.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 0, i32 1, !dbg !1015
  %35 = load i16, ptr %green166.us, align 2, !dbg !1015, !tbaa !955
  %conv168.us = uitofp i16 %35 to float, !dbg !1016
  %add170.us = fadd float %channel_bias.sroa.9.4776.us, %conv168.us, !dbg !1017
  call void @llvm.dbg.value(metadata float %add170.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %36 = load i16, ptr %r.1783.us, align 2, !dbg !1018, !tbaa !959
  %conv174.us = uitofp i16 %36 to float, !dbg !1019
  %add176.us = fadd float %channel_bias.sroa.14.4775.us, %conv174.us, !dbg !1020
  call void @llvm.dbg.value(metadata float %add176.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity178.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 0, i32 3, !dbg !1021
  %37 = load i16, ptr %opacity178.us, align 2, !dbg !1021, !tbaa !963
  %conv180.us = uitofp i16 %37 to float, !dbg !1022
  %add182.us = fadd float %channel_bias.sroa.19.4774.us, %conv180.us, !dbg !1023
  call void @llvm.dbg.value(metadata float %add182.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  br i1 %cmp194, label %cond.end206.us, label %cond.false197.us, !dbg !1024

cond.false197.us:                                 ; preds = %for.body158.us
  %sub.ptr.lhs.cast188.us = ptrtoint ptr %r.1783.us to i64, !dbg !1024
  %sub.ptr.sub190.us = sub i64 %sub.ptr.lhs.cast188.us, %sub.ptr.rhs.cast189, !dbg !1024
  %sub.ptr.div191.us = ashr exact i64 %sub.ptr.sub190.us, 3, !dbg !1024
  %add.ptr192.us = getelementptr inbounds i16, ptr %add.ptr187, i64 %sub.ptr.div191.us, !dbg !1024
  %38 = load i16, ptr %add.ptr192.us, align 2, !dbg !1024, !tbaa !990
  %conv205.us = zext i16 %38 to i32, !dbg !1024
  br label %cond.end206.us, !dbg !1024

cond.end206.us:                                   ; preds = %cond.false197.us, %for.body158.us
  %cond207.us = phi i32 [ %conv205.us, %cond.false197.us ], [ 0, %for.body158.us ], !dbg !1024
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx212.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 %sub40, !dbg !1026
  %red213.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 %sub40, i32 2, !dbg !1027
  %39 = load i16, ptr %red213.us, align 2, !dbg !1027, !tbaa !951
  %conv215.us = uitofp i16 %39 to float, !dbg !1026
  %add217.us = fadd float %channel_sum.sroa.3.3782.us, %conv215.us, !dbg !1028
  call void @llvm.dbg.value(metadata float %add217.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green220.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 %sub40, i32 1, !dbg !1029
  %40 = load i16, ptr %green220.us, align 2, !dbg !1029, !tbaa !955
  %conv222.us = uitofp i16 %40 to float, !dbg !1030
  %add224.us = fadd float %channel_sum.sroa.10.3781.us, %conv222.us, !dbg !1031
  call void @llvm.dbg.value(metadata float %add224.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %41 = load i16, ptr %arrayidx212.us, align 2, !dbg !1032, !tbaa !959
  %conv229.us = uitofp i16 %41 to float, !dbg !1033
  %add231.us = fadd float %channel_sum.sroa.17.3780.us, %conv229.us, !dbg !1034
  call void @llvm.dbg.value(metadata float %add231.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity234.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 %sub40, i32 3, !dbg !1035
  %42 = load i16, ptr %opacity234.us, align 2, !dbg !1035, !tbaa !963
  %conv236.us = uitofp i16 %42 to float, !dbg !1036
  %add238.us = fadd float %channel_sum.sroa.24.3779.us, %conv236.us, !dbg !1037
  call void @llvm.dbg.value(metadata float %add238.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %add.ptr271.us = getelementptr inbounds %struct._PixelPacket, ptr %r.1783.us, i64 %add270, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %add.ptr271.us, metadata !846, metadata !DIExpression()), !dbg !920
  %inc273.us = add nuw nsw i64 %v.1784.us, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %inc273.us, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %add217.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add224.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add231.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add238.us, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add164.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add170.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add176.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add182.us, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond837.not = icmp eq i64 %inc273.us, %height, !dbg !1040
  br i1 %exitcond837.not, label %for.cond155.for.end274_crit_edge.split.us, label %for.body158.us, !dbg !1007, !llvm.loop !1041

for.cond155.for.end274_crit_edge.split.us:        ; preds = %cond.end206.us
  %sub.ptr.lhs.cast244.us.le = ptrtoint ptr %r.1783.us to i64, !dbg !1043
  %sub.ptr.sub246.us.le = sub i64 %sub.ptr.lhs.cast244.us.le, %sub.ptr.rhs.cast189, !dbg !1043
  %sub.ptr.div247.us.le = ashr exact i64 %sub.ptr.sub246.us.le, 3, !dbg !1043
  %add.ptr248.us.le = getelementptr inbounds i16, ptr %add.ptr187, i64 %width, !dbg !1043
  %add.ptr249.us.le = getelementptr inbounds i16, ptr %add.ptr248.us.le, i64 -1, !dbg !1043
  %add.ptr250.us.le = getelementptr inbounds i16, ptr %add.ptr249.us.le, i64 %sub.ptr.div247.us.le, !dbg !1043
  %43 = load i16, ptr %add.ptr250.us.le, align 2, !dbg !1043, !tbaa !990
  %conv266.us.le = uitofp i16 %43 to float, !dbg !1045
  %conv208.us.le = sitofp i32 %cond207.us to float, !dbg !1046
  br label %for.end274, !dbg !1007

for.body158:                                      ; preds = %for.body158.lr.ph, %for.body158
  %v.1784 = phi i64 [ %inc273, %for.body158 ], [ 0, %for.body158.lr.ph ]
  %r.1783 = phi ptr [ %add.ptr271, %for.body158 ], [ %p.0815, %for.body158.lr.ph ]
  %channel_sum.sroa.3.3782 = phi float [ %add217, %for.body158 ], [ %sub142, %for.body158.lr.ph ]
  %channel_sum.sroa.10.3781 = phi float [ %add224, %for.body158 ], [ %sub145, %for.body158.lr.ph ]
  %channel_sum.sroa.17.3780 = phi float [ %add231, %for.body158 ], [ %sub148, %for.body158.lr.ph ]
  %channel_sum.sroa.24.3779 = phi float [ %add238, %for.body158 ], [ %sub151, %for.body158.lr.ph ]
  %channel_bias.sroa.4.4777 = phi float [ %add164, %for.body158 ], [ %channel_bias.sroa.4.0.copyload506, %for.body158.lr.ph ]
  %channel_bias.sroa.9.4776 = phi float [ %add170, %for.body158 ], [ %channel_bias.sroa.9.0.copyload510, %for.body158.lr.ph ]
  %channel_bias.sroa.14.4775 = phi float [ %add176, %for.body158 ], [ %channel_bias.sroa.14.0.copyload514, %for.body158.lr.ph ]
  %channel_bias.sroa.19.4774 = phi float [ %add182, %for.body158 ], [ %channel_bias.sroa.19.0.copyload518, %for.body158.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %v.1784, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %r.1783, metadata !846, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.3782, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.3781, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.3780, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.3779, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.4777, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.4776, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.4775, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.4774, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %red160 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 0, i32 2, !dbg !1012
  %44 = load i16, ptr %red160, align 2, !dbg !1012, !tbaa !951
  %conv162 = uitofp i16 %44 to float, !dbg !1013
  %add164 = fadd float %channel_bias.sroa.4.4777, %conv162, !dbg !1014
  call void @llvm.dbg.value(metadata float %add164, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green166 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 0, i32 1, !dbg !1015
  %45 = load i16, ptr %green166, align 2, !dbg !1015, !tbaa !955
  %conv168 = uitofp i16 %45 to float, !dbg !1016
  %add170 = fadd float %channel_bias.sroa.9.4776, %conv168, !dbg !1017
  call void @llvm.dbg.value(metadata float %add170, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %46 = load i16, ptr %r.1783, align 2, !dbg !1018, !tbaa !959
  %conv174 = uitofp i16 %46 to float, !dbg !1019
  %add176 = fadd float %channel_bias.sroa.14.4775, %conv174, !dbg !1020
  call void @llvm.dbg.value(metadata float %add176, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity178 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 0, i32 3, !dbg !1021
  %47 = load i16, ptr %opacity178, align 2, !dbg !1021, !tbaa !963
  %conv180 = uitofp i16 %47 to float, !dbg !1022
  %add182 = fadd float %channel_bias.sroa.19.4774, %conv180, !dbg !1023
  call void @llvm.dbg.value(metadata float %add182, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %arrayidx212 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 %sub40, !dbg !1026
  %red213 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 %sub40, i32 2, !dbg !1027
  %48 = load i16, ptr %red213, align 2, !dbg !1027, !tbaa !951
  %conv215 = uitofp i16 %48 to float, !dbg !1026
  %add217 = fadd float %channel_sum.sroa.3.3782, %conv215, !dbg !1028
  call void @llvm.dbg.value(metadata float %add217, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  %green220 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 %sub40, i32 1, !dbg !1029
  %49 = load i16, ptr %green220, align 2, !dbg !1029, !tbaa !955
  %conv222 = uitofp i16 %49 to float, !dbg !1030
  %add224 = fadd float %channel_sum.sroa.10.3781, %conv222, !dbg !1031
  call void @llvm.dbg.value(metadata float %add224, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  %50 = load i16, ptr %arrayidx212, align 2, !dbg !1032, !tbaa !959
  %conv229 = uitofp i16 %50 to float, !dbg !1033
  %add231 = fadd float %channel_sum.sroa.17.3780, %conv229, !dbg !1034
  call void @llvm.dbg.value(metadata float %add231, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  %opacity234 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 %sub40, i32 3, !dbg !1035
  %51 = load i16, ptr %opacity234, align 2, !dbg !1035, !tbaa !963
  %conv236 = uitofp i16 %51 to float, !dbg !1036
  %add238 = fadd float %channel_sum.sroa.24.3779, %conv236, !dbg !1037
  call void @llvm.dbg.value(metadata float %add238, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %add.ptr271 = getelementptr inbounds %struct._PixelPacket, ptr %r.1783, i64 %add270, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %add.ptr271, metadata !846, metadata !DIExpression()), !dbg !920
  %inc273 = add nuw nsw i64 %v.1784, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %inc273, metadata !853, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %add217, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add224, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add231, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add238, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add164, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add170, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add176, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %add182, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float undef, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond836.not = icmp eq i64 %inc273, %height, !dbg !1040
  br i1 %exitcond836.not, label %for.end274, label %for.body158, !dbg !1007, !llvm.loop !1041

for.end274:                                       ; preds = %for.body158, %for.cond155.for.end274_crit_edge.split.us, %for.body139
  %channel_bias.sroa.24.4.lcssa = phi float [ %mean.sroa.11.0.copyload, %for.body139 ], [ %conv208.us.le, %for.cond155.for.end274_crit_edge.split.us ], [ %mean.sroa.11.0.copyload, %for.body158 ], !dbg !1001
  %channel_bias.sroa.19.4.lcssa = phi float [ %channel_bias.sroa.19.0.copyload518, %for.body139 ], [ %add182.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add182, %for.body158 ], !dbg !1001
  %channel_bias.sroa.14.4.lcssa = phi float [ %channel_bias.sroa.14.0.copyload514, %for.body139 ], [ %add176.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add176, %for.body158 ], !dbg !1001
  %channel_bias.sroa.9.4.lcssa = phi float [ %channel_bias.sroa.9.0.copyload510, %for.body139 ], [ %add170.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add170, %for.body158 ], !dbg !1001
  %channel_bias.sroa.4.4.lcssa = phi float [ %channel_bias.sroa.4.0.copyload506, %for.body139 ], [ %add164.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add164, %for.body158 ], !dbg !1001
  %channel_sum.sroa.31.4.lcssa = phi float [ %sub154, %for.body139 ], [ %conv266.us.le, %for.cond155.for.end274_crit_edge.split.us ], [ %sub154, %for.body158 ], !dbg !1001
  %channel_sum.sroa.24.3.lcssa = phi float [ %sub151, %for.body139 ], [ %add238.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add238, %for.body158 ], !dbg !1001
  %channel_sum.sroa.17.3.lcssa = phi float [ %sub148, %for.body139 ], [ %add231.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add231, %for.body158 ], !dbg !1001
  %channel_sum.sroa.10.3.lcssa = phi float [ %sub145, %for.body139 ], [ %add224.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add224, %for.body158 ], !dbg !1001
  %channel_sum.sroa.3.3.lcssa = phi float [ %sub142, %for.body139 ], [ %add217.us, %for.cond155.for.end274_crit_edge.split.us ], [ %add217, %for.body158 ], !dbg !1001
  %div276 = fdiv float %channel_sum.sroa.3.3.lcssa, %conv, !dbg !1047
  %add278 = fadd float %div276, %conv277, !dbg !1048
  call void @llvm.dbg.value(metadata float %add278, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1001
  %div281 = fdiv float %channel_sum.sroa.10.3.lcssa, %conv, !dbg !1049
  %add283 = fadd float %div281, %conv277, !dbg !1050
  call void @llvm.dbg.value(metadata float %add283, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1001
  %div286 = fdiv float %channel_sum.sroa.17.3.lcssa, %conv, !dbg !1051
  %add288 = fadd float %div286, %conv277, !dbg !1052
  call void @llvm.dbg.value(metadata float %add288, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1001
  %div291 = fdiv float %channel_sum.sroa.24.3.lcssa, %conv, !dbg !1053
  %add293 = fadd float %div291, %conv277, !dbg !1054
  call void @llvm.dbg.value(metadata float %add293, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1001
  br i1 %cmp296, label %if.then298, label %if.end304, !dbg !1055

if.then298:                                       ; preds = %for.end274
  %div300 = fdiv float %channel_sum.sroa.31.4.lcssa, %conv, !dbg !1056
  %add302 = fadd float %div300, %conv277, !dbg !1058
  call void @llvm.dbg.value(metadata float %add302, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1001
  br label %if.end304, !dbg !1059

if.end304:                                        ; preds = %if.then298, %for.end274
  %mean.sroa.11.0 = phi float [ %add302, %if.then298 ], [ %mean.sroa.11.0.copyload, %for.end274 ], !dbg !1001
  call void @llvm.dbg.value(metadata float %mean.sroa.11.0, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1001
  %red305 = getelementptr inbounds %struct._PixelPacket, ptr %q.0818, i64 0, i32 2, !dbg !1060
  %52 = load i16, ptr %red305, align 2, !dbg !1060, !tbaa !951
  %conv306 = uitofp i16 %52 to float, !dbg !1060
  %cmp308 = fcmp ult float %add278, %conv306, !dbg !1060
  %conv311 = sext i1 %cmp308 to i16, !dbg !1060
  store i16 %conv311, ptr %red305, align 2, !dbg !1060, !tbaa !951
  %green313 = getelementptr inbounds %struct._PixelPacket, ptr %q.0818, i64 0, i32 1, !dbg !1061
  %53 = load i16, ptr %green313, align 2, !dbg !1061, !tbaa !955
  %conv314 = uitofp i16 %53 to float, !dbg !1061
  %cmp316 = fcmp ult float %add283, %conv314, !dbg !1061
  %conv319 = sext i1 %cmp316 to i16, !dbg !1061
  store i16 %conv319, ptr %green313, align 2, !dbg !1061, !tbaa !955
  %54 = load i16, ptr %q.0818, align 2, !dbg !1062, !tbaa !959
  %conv322 = uitofp i16 %54 to float, !dbg !1062
  %cmp324 = fcmp ult float %add288, %conv322, !dbg !1062
  %conv327 = sext i1 %cmp324 to i16, !dbg !1062
  store i16 %conv327, ptr %q.0818, align 2, !dbg !1062, !tbaa !959
  %opacity329 = getelementptr inbounds %struct._PixelPacket, ptr %q.0818, i64 0, i32 3, !dbg !1063
  %55 = load i16, ptr %opacity329, align 2, !dbg !1063, !tbaa !963
  %conv330 = uitofp i16 %55 to float, !dbg !1063
  %cmp332 = fcmp ult float %add293, %conv330, !dbg !1063
  %conv335 = sext i1 %cmp332 to i16, !dbg !1063
  store i16 %conv335, ptr %opacity329, align 2, !dbg !1063, !tbaa !963
  br i1 %or.cond590, label %if.end362, label %cond.end352, !dbg !1064

cond.end352:                                      ; preds = %if.end304
  %add.ptr341 = getelementptr inbounds i16, ptr %call31, i64 %x.0819, !dbg !1065
  %56 = load i16, ptr %add.ptr341, align 2, !dbg !1065, !tbaa !990
  %conv354 = uitofp i16 %56 to float, !dbg !1065
  %cmp356 = fcmp ult float %mean.sroa.11.0, %conv354, !dbg !1065
  %conv359 = sext i1 %cmp356 to i16, !dbg !1065
  store i16 %conv359, ptr %add.ptr341, align 2, !dbg !1065, !tbaa !990
  br label %if.end362, !dbg !1065

if.end362:                                        ; preds = %cond.end352, %if.end304
  call void @llvm.dbg.value(metadata ptr %p.0815, metadata !844, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !920
  call void @llvm.dbg.value(metadata ptr %q.0818, metadata !849, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !920
  %inc365 = add nuw nsw i64 %x.0819, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %inc365, metadata !851, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.3.3.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.10.3.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.17.3.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.24.3.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_sum.sroa.31.4.lcssa, metadata !841, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.4.4.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.9.4.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.14.4.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.19.4.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !920
  call void @llvm.dbg.value(metadata float %channel_bias.sroa.24.4.lcssa, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !920
  %exitcond838.not = icmp eq i64 %inc365, %32, !dbg !997
  br i1 %exitcond838.not, label %for.end366, label %if.end362.for.body139_crit_edge, !dbg !998, !llvm.loop !1070

if.end362.for.body139_crit_edge:                  ; preds = %if.end362
  %incdec.ptr363 = getelementptr inbounds %struct._PixelPacket, ptr %q.0818, i64 1, !dbg !1072
  call void @llvm.dbg.value(metadata ptr %incdec.ptr363, metadata !849, metadata !DIExpression()), !dbg !920
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0815, i64 1, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !844, metadata !DIExpression()), !dbg !920
  %mean.sroa.11.0.copyload.pre = load float, ptr %channel_bias.sroa.24.0.zero.sroa_idx, align 8, !dbg !1000, !tbaa.struct !1074
  %channel_bias.sroa.4.0.copyload506.pre = load float, ptr %channel_bias.sroa.4.0.zero.sroa_idx, align 8, !dbg !999, !tbaa.struct !929
  %channel_bias.sroa.9.0.copyload510.pre = load float, ptr %channel_bias.sroa.9.0.zero.sroa_idx, align 4, !dbg !999, !tbaa.struct !932
  %channel_bias.sroa.14.0.copyload514.pre = load float, ptr %channel_bias.sroa.14.0.zero.sroa_idx, align 8, !dbg !999, !tbaa.struct !933
  %channel_bias.sroa.19.0.copyload518.pre = load float, ptr %channel_bias.sroa.19.0.zero.sroa_idx, align 4, !dbg !999, !tbaa.struct !1075
  br label %for.body139, !dbg !998

for.end366:                                       ; preds = %if.end362, %for.cond135.preheader
  %call367 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call12, ptr noundef %exception) #14, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %call367, metadata !836, metadata !DIExpression()), !dbg !920
  %cmp368 = icmp ne i32 %call367, 0, !dbg !1077
  %spec.select = zext i1 %cmp368 to i32, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !818, metadata !DIExpression()), !dbg !861
  %57 = load ptr, ptr %progress_monitor, align 8, !dbg !1080, !tbaa !1081
  %cmp372.not = icmp eq ptr %57, null, !dbg !1082
  br i1 %cmp372.not, label %cleanup, label %SetImageProgress.exit, !dbg !1083

SetImageProgress.exit:                            ; preds = %for.end366
  %inc375 = add nsw i64 %progress.0825, 1, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %inc375, metadata !819, metadata !DIExpression()), !dbg !861
  %58 = load i64, ptr %rows, align 8, !dbg !1085, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1096
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %progress.0825, metadata !1093, metadata !DIExpression()) #13, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %58, metadata !1094, metadata !DIExpression()) #13, !dbg !1096
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1099
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1100
  %59 = load ptr, ptr %progress_monitor, align 8, !dbg !1101, !tbaa !1081
  %60 = load ptr, ptr %client_data.i, align 8, !dbg !1102, !tbaa !1103
  %call4.i = call i32 %59(ptr noundef nonnull %message.i, i64 noundef %progress.0825, i64 noundef %58, ptr noundef %60) #13, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !858, metadata !DIExpression()), !dbg !1106
  %cmp378 = icmp eq i32 %call4.i, 0, !dbg !1107
  %spec.select589 = select i1 %cmp378, i32 0, i32 %spec.select, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %spec.select589, metadata !818, metadata !DIExpression()), !dbg !861
  br label %cleanup, !dbg !1110

cleanup:                                          ; preds = %for.end366, %SetImageProgress.exit, %if.end18, %for.body
  %progress.2 = phi i64 [ %progress.0825, %for.body ], [ %progress.0825, %if.end18 ], [ %inc375, %SetImageProgress.exit ], [ %progress.0825, %for.end366 ], !dbg !861
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end18 ], [ %spec.select589, %SetImageProgress.exit ], [ %spec.select, %for.end366 ], !dbg !861
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !818, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !819, metadata !DIExpression()), !dbg !861
  %inc394 = add nuw nsw i64 %y.0823, 1, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %inc394, metadata !835, metadata !DIExpression()), !dbg !861
  %61 = load i64, ptr %rows, align 8, !dbg !908, !tbaa !909
  %cmp13 = icmp slt i64 %inc394, %61, !dbg !910
  br i1 %cmp13, label %for.body, label %for.end395, !dbg !911, !llvm.loop !1112

for.end395:                                       ; preds = %cleanup, %if.end10
  %status.0.lcssa = phi i32 [ 1, %if.end10 ], [ %status.4, %cleanup ], !dbg !1114
  %call396 = call ptr @DestroyCacheView(ptr noundef %call12) #13, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %call396, metadata !816, metadata !DIExpression()), !dbg !861
  %call397 = call ptr @DestroyCacheView(ptr noundef %call11) #13, !dbg !1116
  call void @llvm.dbg.value(metadata ptr %call397, metadata !811, metadata !DIExpression()), !dbg !861
  %cmp398 = icmp eq i32 %status.0.lcssa, 0, !dbg !1117
  br i1 %cmp398, label %if.then400, label %cleanup403, !dbg !1119

if.then400:                                       ; preds = %for.end395
  %call401 = call ptr @DestroyImage(ptr noundef nonnull %call1) #13, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %call401, metadata !817, metadata !DIExpression()), !dbg !861
  br label %cleanup403, !dbg !1121

cleanup403:                                       ; preds = %for.end395, %if.then400, %if.end, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ null, %if.end ], [ %call401, %if.then400 ], [ %call1, %for.end395 ], !dbg !861
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #13, !dbg !1122
  ret ptr %retval.0, !dbg !1122
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1123 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1129 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1133 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1137 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1142 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1145 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1149 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1152 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1153 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1158 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1161 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !1164 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: hot
declare !dbg !1167 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1170 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BilevelImage(ptr noundef %image, double noundef %threshold) local_unnamed_addr #0 !dbg !1173 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata double %threshold, metadata !1179, metadata !DIExpression()), !dbg !1181
  %call = tail call i32 @BilevelImageChannel(ptr noundef %image, i32 noundef 134217719, double noundef %threshold), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %call, metadata !1180, metadata !DIExpression()), !dbg !1181
  ret i32 %call, !dbg !1183
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BilevelImageChannel(ptr noundef %image, i32 noundef %channel, double noundef %threshold) local_unnamed_addr #0 !dbg !1184 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1190, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1191, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata double %threshold, metadata !1192, metadata !DIExpression()), !dbg !1207
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1208
  %0 = load i32, ptr %debug, align 8, !dbg !1208, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !1210
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1211

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1212
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1213
  br label %if.end, !dbg !1214

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #13, !dbg !1215
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1217
  br i1 %cmp2, label %cleanup154, label %if.end4, !dbg !1218

if.end4:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1219
  %1 = load i32, ptr %colorspace, align 4, !dbg !1219, !tbaa !940
  call void @llvm.dbg.value(metadata i32 %1, metadata !1221, metadata !DIExpression()), !dbg !1228
  switch i32 %1, label %if.end9 [
    i32 19, label %if.then7
    i32 17, label %if.then7
    i32 2, label %if.then7
  ], !dbg !1230

if.then7:                                         ; preds = %if.end4, %if.end4, %if.end4
  %call8 = tail call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #13, !dbg !1232
  br label %if.end9, !dbg !1233

if.end9:                                          ; preds = %if.end4, %if.then7
  call void @llvm.dbg.value(metadata i32 1, metadata !1195, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 0, metadata !1196, metadata !DIExpression()), !dbg !1207
  %exception10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %exception10, metadata !1194, metadata !DIExpression()), !dbg !1207
  %call11 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception10) #13, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1193, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1207
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 0, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 1, metadata !1195, metadata !DIExpression()), !dbg !1207
  %2 = load i64, ptr %rows, align 8, !dbg !1236, !tbaa !909
  %cmp12237 = icmp sgt i64 %2, 0, !dbg !1237
  br i1 %cmp12237, label %for.body.lr.ph, label %for.end152, !dbg !1238

for.body.lr.ph:                                   ; preds = %if.end9
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and = and i32 %channel, 256
  %cmp21.not = icmp eq i32 %and, 0
  %and38 = and i32 %channel, 1
  %cmp39.not = icmp eq i32 %and38, 0
  %and51 = and i32 %channel, 2
  %cmp52.not = icmp eq i32 %and51, 0
  %and64 = and i32 %channel, 4
  %cmp65.not = icmp eq i32 %and64, 0
  %and102 = and i32 %channel, 32
  %cmp103.not = icmp eq i32 %and102, 0
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br i1 %cmp21.not, label %for.body.lr.ph.split.us, label %for.body, !dbg !1239

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %and77 = and i32 %channel, 8
  %cmp78.not = icmp eq i32 %and77, 0
  br i1 %cmp78.not, label %for.body.lr.ph.split.us.split.us, label %for.body.us, !dbg !1240

for.body.lr.ph.split.us.split.us:                 ; preds = %for.body.lr.ph.split.us
  br i1 %cmp103.not, label %for.body.us.us.us, label %for.body.us.us, !dbg !1245

for.body.us.us.us:                                ; preds = %for.body.lr.ph.split.us.split.us, %cleanup.us.us.us
  %y.0240.us.us.us = phi i64 [ %inc151.us.us.us, %cleanup.us.us.us ], [ 0, %for.body.lr.ph.split.us.split.us ]
  %progress.0239.us.us.us = phi i64 [ %progress.2.us.us.us, %cleanup.us.us.us ], [ 0, %for.body.lr.ph.split.us.split.us ]
  %status.0238.us.us.us = phi i32 [ %status.4.us.us.us, %cleanup.us.us.us ], [ 1, %for.body.lr.ph.split.us.split.us ]
  call void @llvm.dbg.value(metadata i64 %y.0240.us.us.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.0239.us.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.0238.us.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %cmp13.us.us.us = icmp eq i32 %status.0238.us.us.us, 0, !dbg !1247
  br i1 %cmp13.us.us.us, label %cleanup.us.us.us, label %if.end15.us.us.us, !dbg !1249

if.end15.us.us.us:                                ; preds = %for.body.us.us.us
  %3 = load i64, ptr %columns, align 8, !dbg !1250, !tbaa !917
  %call16.us.us.us = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0240.us.us.us, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %exception10) #14, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call16.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %cmp17.us.us.us = icmp eq ptr %call16.us.us.us, null, !dbg !1253
  br i1 %cmp17.us.us.us, label %cleanup.us.us.us, label %if.end19.us.us.us, !dbg !1255

if.end19.us.us.us:                                ; preds = %if.end15.us.us.us
  %call20.us.us.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call11) #13, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call20.us.us.us, metadata !1198, metadata !DIExpression()), !dbg !1252
  %4 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call16.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1202, metadata !DIExpression()), !dbg !1252
  %cmp35231.us.us.us = icmp sgt i64 %4, 0, !dbg !1257
  br i1 %cmp35231.us.us.us, label %for.body37.lr.ph.us.us.us, label %if.end131.loopexit.us.us.us, !dbg !1258

SetImageProgress.exit.us.us.us:                   ; preds = %if.end131.loopexit.us.us.us
  %inc140.us.us.us = add nsw i64 %progress.0239.us.us.us, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %inc140.us.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  %5 = load i64, ptr %rows, align 8, !dbg !1260, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %progress.0239.us.us.us, metadata !1093, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %5, metadata !1094, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1264
  %call.i.us.us.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1265
  %6 = load ptr, ptr %progress_monitor, align 8, !dbg !1266, !tbaa !1081
  %7 = load ptr, ptr %client_data.i, align 8, !dbg !1267, !tbaa !1103
  %call4.i.us.us.us = call i32 %6(ptr noundef nonnull %message.i, i64 noundef %progress.0239.us.us.us, i64 noundef %5, ptr noundef %7) #13, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %call4.i.us.us.us, metadata !1204, metadata !DIExpression()), !dbg !1270
  %cmp143.us.us.us = icmp eq i32 %call4.i.us.us.us, 0, !dbg !1271
  %spec.select222.us.us.us = select i1 %cmp143.us.us.us, i32 0, i32 %spec.select.us.us.us, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %spec.select222.us.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  br label %cleanup.us.us.us, !dbg !1274

cleanup.us.us.us:                                 ; preds = %if.end131.loopexit.us.us.us, %SetImageProgress.exit.us.us.us, %if.end15.us.us.us, %for.body.us.us.us
  %status.4.us.us.us = phi i32 [ 0, %for.body.us.us.us ], [ 0, %if.end15.us.us.us ], [ %spec.select222.us.us.us, %SetImageProgress.exit.us.us.us ], [ %spec.select.us.us.us, %if.end131.loopexit.us.us.us ], !dbg !1207
  %progress.2.us.us.us = phi i64 [ %progress.0239.us.us.us, %for.body.us.us.us ], [ %progress.0239.us.us.us, %if.end15.us.us.us ], [ %inc140.us.us.us, %SetImageProgress.exit.us.us.us ], [ %progress.0239.us.us.us, %if.end131.loopexit.us.us.us ], !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.2.us.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.4.us.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %inc151.us.us.us = add nuw nsw i64 %y.0240.us.us.us, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %inc151.us.us.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  %8 = load i64, ptr %rows, align 8, !dbg !1236, !tbaa !909
  %cmp12.us.us.us = icmp slt i64 %inc151.us.us.us, %8, !dbg !1237
  br i1 %cmp12.us.us.us, label %for.body.us.us.us, label %for.end152, !dbg !1238, !llvm.loop !1276

if.end131.loopexit.us.us.us:                      ; preds = %if.end76.us.us.us.us.us269, %for.body37.us.us.us.us.us242.us277, %for.body37.us.us.us.us.us242.us.us, %for.body37.us.us.us.us.us.us, %for.body37.us.us.us.us.us.us.us290, %for.body37.us.us.us.us.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us, %if.end19.us.us.us
  %call132.us.us.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call11, ptr noundef nonnull %exception10) #14, !dbg !1278
  %cmp133.us.us.us = icmp ne i32 %call132.us.us.us, 0, !dbg !1280
  %spec.select.us.us.us = zext i1 %cmp133.us.us.us to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %spec.select.us.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %9 = load ptr, ptr %progress_monitor, align 8, !dbg !1282, !tbaa !1081
  %cmp137.not.us.us.us = icmp eq ptr %9, null, !dbg !1283
  br i1 %cmp137.not.us.us.us, label %cleanup.us.us.us, label %SetImageProgress.exit.us.us.us, !dbg !1284

for.body37.lr.ph.us.us.us:                        ; preds = %if.end19.us.us.us
  br i1 %cmp39.not, label %for.body37.lr.ph.us.split.us.us.split.us.split.us.us, label %for.body37.lr.ph.us.split.us.us.split.us.split.us274, !dbg !1285

for.body37.us.us.us.us.us254:                     ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us274, %if.end76.us.us.us.us.us269
  %q.1234.us.us.us.us.us255 = phi ptr [ %incdec.ptr127.us.us.us.us.us270, %if.end76.us.us.us.us.us269 ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.us274 ]
  %x.1232.us.us.us.us.us256 = phi i64 [ %inc129.us.us.us.us.us271, %if.end76.us.us.us.us.us269 ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.us274 ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us255, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us256, metadata !1202, metadata !DIExpression()), !dbg !1252
  %red42.us.us.us.us.us257 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us255, i64 0, i32 2, !dbg !1286
  %10 = load i16, ptr %red42.us.us.us.us.us257, align 2, !dbg !1286, !tbaa !951
  %conv44.us.us.us.us.us258 = uitofp i16 %10 to double, !dbg !1286
  %cmp45.us.us.us.us.us259 = fcmp ugt double %conv44.us.us.us.us.us258, %threshold, !dbg !1286
  %conv48.us.us.us.us.us260 = sext i1 %cmp45.us.us.us.us.us259 to i16, !dbg !1286
  store i16 %conv48.us.us.us.us.us260, ptr %red42.us.us.us.us.us257, align 2, !dbg !1286, !tbaa !951
  %green55.us.us.us.us.us261 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us255, i64 0, i32 1, !dbg !1288
  %11 = load i16, ptr %green55.us.us.us.us.us261, align 2, !dbg !1288, !tbaa !955
  %conv57.us.us.us.us.us262 = uitofp i16 %11 to double, !dbg !1288
  %cmp58.us.us.us.us.us263 = fcmp ugt double %conv57.us.us.us.us.us262, %threshold, !dbg !1288
  %conv61.us.us.us.us.us264 = sext i1 %cmp58.us.us.us.us.us263 to i16, !dbg !1288
  store i16 %conv61.us.us.us.us.us264, ptr %green55.us.us.us.us.us261, align 2, !dbg !1288, !tbaa !955
  br i1 %cmp65.not, label %if.end76.us.us.us.us.us269, label %if.then67.us.us.us.us.us265, !dbg !1290

if.then67.us.us.us.us.us265:                      ; preds = %for.body37.us.us.us.us.us254
  %12 = load i16, ptr %q.1234.us.us.us.us.us255, align 2, !dbg !1291, !tbaa !959
  %conv70.us.us.us.us.us266 = uitofp i16 %12 to double, !dbg !1291
  %cmp71.us.us.us.us.us267 = fcmp ugt double %conv70.us.us.us.us.us266, %threshold, !dbg !1291
  %conv74.us.us.us.us.us268 = sext i1 %cmp71.us.us.us.us.us267 to i16, !dbg !1291
  store i16 %conv74.us.us.us.us.us268, ptr %q.1234.us.us.us.us.us255, align 2, !dbg !1291, !tbaa !959
  br label %if.end76.us.us.us.us.us269, !dbg !1291

if.end76.us.us.us.us.us269:                       ; preds = %if.then67.us.us.us.us.us265, %for.body37.us.us.us.us.us254
  %incdec.ptr127.us.us.us.us.us270 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us255, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us270, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us271 = add nuw nsw i64 %x.1232.us.us.us.us.us256, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us271, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond307.not = icmp eq i64 %inc129.us.us.us.us.us271, %4, !dbg !1257
  br i1 %exitcond307.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us254, !dbg !1258, !llvm.loop !1295

for.body37.lr.ph.us.split.us.us.split.us.split.us274: ; preds = %for.body37.lr.ph.us.us.us
  br i1 %cmp52.not, label %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us, label %for.body37.us.us.us.us.us254, !dbg !1297

for.body37.lr.ph.us.split.us.us.split.us.split.us.us: ; preds = %for.body37.lr.ph.us.us.us
  br i1 %cmp52.not, label %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us, label %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split, !dbg !1297

for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us: ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us.us
  br i1 %cmp65.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us.us.us, !dbg !1290

for.body37.us.us.us.us.us.us.us:                  ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us, %for.body37.us.us.us.us.us.us.us
  %q.1234.us.us.us.us.us.us.us = phi ptr [ %incdec.ptr127.us.us.us.us.us.us.us, %for.body37.us.us.us.us.us.us.us ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us ]
  %x.1232.us.us.us.us.us.us.us = phi i64 [ %inc129.us.us.us.us.us.us.us, %for.body37.us.us.us.us.us.us.us ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %13 = load i16, ptr %q.1234.us.us.us.us.us.us.us, align 2, !dbg !1291, !tbaa !959
  %conv70.us.us.us.us.us.us.us = uitofp i16 %13 to double, !dbg !1291
  %cmp71.us.us.us.us.us.us.us = fcmp ugt double %conv70.us.us.us.us.us.us.us, %threshold, !dbg !1291
  %conv74.us.us.us.us.us.us.us = sext i1 %cmp71.us.us.us.us.us.us.us to i16, !dbg !1291
  store i16 %conv74.us.us.us.us.us.us.us, ptr %q.1234.us.us.us.us.us.us.us, align 2, !dbg !1291, !tbaa !959
  %incdec.ptr127.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us.us.us, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us.us.us = add nuw nsw i64 %x.1232.us.us.us.us.us.us.us, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond312.not = icmp eq i64 %inc129.us.us.us.us.us.us.us, %4, !dbg !1257
  br i1 %exitcond312.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us.us.us, !dbg !1258, !llvm.loop !1295

for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split: ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us.us
  br i1 %cmp65.not, label %for.body37.us.us.us.us.us.us.us290, label %for.body37.us.us.us.us.us.us, !dbg !1290

for.body37.us.us.us.us.us.us.us290:               ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split, %for.body37.us.us.us.us.us.us.us290
  %q.1234.us.us.us.us.us.us.us291 = phi ptr [ %incdec.ptr127.us.us.us.us.us.us.us294, %for.body37.us.us.us.us.us.us.us290 ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split ]
  %x.1232.us.us.us.us.us.us.us292 = phi i64 [ %inc129.us.us.us.us.us.us.us295, %for.body37.us.us.us.us.us.us.us290 ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us.us.us291, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us.us.us292, metadata !1202, metadata !DIExpression()), !dbg !1252
  %green55.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us.us.us291, i64 0, i32 1, !dbg !1288
  %14 = load i16, ptr %green55.us.us.us.us.us.us.us, align 2, !dbg !1288, !tbaa !955
  %conv57.us.us.us.us.us.us.us = uitofp i16 %14 to double, !dbg !1288
  %cmp58.us.us.us.us.us.us.us = fcmp ugt double %conv57.us.us.us.us.us.us.us, %threshold, !dbg !1288
  %conv61.us.us.us.us.us.us.us = sext i1 %cmp58.us.us.us.us.us.us.us to i16, !dbg !1288
  store i16 %conv61.us.us.us.us.us.us.us, ptr %green55.us.us.us.us.us.us.us, align 2, !dbg !1288, !tbaa !955
  %incdec.ptr127.us.us.us.us.us.us.us294 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us.us.us291, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us.us.us294, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us.us.us295 = add nuw nsw i64 %x.1232.us.us.us.us.us.us.us292, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us.us.us295, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond311.not = icmp eq i64 %inc129.us.us.us.us.us.us.us295, %4, !dbg !1257
  br i1 %exitcond311.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us.us.us290, !dbg !1258, !llvm.loop !1295

for.body37.us.us.us.us.us.us:                     ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split, %for.body37.us.us.us.us.us.us
  %q.1234.us.us.us.us.us.us = phi ptr [ %incdec.ptr127.us.us.us.us.us.us, %for.body37.us.us.us.us.us.us ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split ]
  %x.1232.us.us.us.us.us.us = phi i64 [ %inc129.us.us.us.us.us.us, %for.body37.us.us.us.us.us.us ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.us.us.split ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %green55.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us.us, i64 0, i32 1, !dbg !1288
  %15 = load i16, ptr %green55.us.us.us.us.us.us, align 2, !dbg !1288, !tbaa !955
  %conv57.us.us.us.us.us.us = uitofp i16 %15 to double, !dbg !1288
  %cmp58.us.us.us.us.us.us = fcmp ugt double %conv57.us.us.us.us.us.us, %threshold, !dbg !1288
  %conv61.us.us.us.us.us.us = sext i1 %cmp58.us.us.us.us.us.us to i16, !dbg !1288
  store i16 %conv61.us.us.us.us.us.us, ptr %green55.us.us.us.us.us.us, align 2, !dbg !1288, !tbaa !955
  %16 = load i16, ptr %q.1234.us.us.us.us.us.us, align 2, !dbg !1291, !tbaa !959
  %conv70.us.us.us.us.us.us = uitofp i16 %16 to double, !dbg !1291
  %cmp71.us.us.us.us.us.us = fcmp ugt double %conv70.us.us.us.us.us.us, %threshold, !dbg !1291
  %conv74.us.us.us.us.us.us = sext i1 %cmp71.us.us.us.us.us.us to i16, !dbg !1291
  store i16 %conv74.us.us.us.us.us.us, ptr %q.1234.us.us.us.us.us.us, align 2, !dbg !1291, !tbaa !959
  %incdec.ptr127.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us.us, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us.us = add nuw nsw i64 %x.1232.us.us.us.us.us.us, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond310.not = icmp eq i64 %inc129.us.us.us.us.us.us, %4, !dbg !1257
  br i1 %exitcond310.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us.us, !dbg !1258, !llvm.loop !1295

for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us: ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.us274
  br i1 %cmp65.not, label %for.body37.us.us.us.us.us242.us.us, label %for.body37.us.us.us.us.us242.us277, !dbg !1290

for.body37.us.us.us.us.us242.us277:               ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us, %for.body37.us.us.us.us.us242.us277
  %q.1234.us.us.us.us.us243.us278 = phi ptr [ %incdec.ptr127.us.us.us.us.us251.us284, %for.body37.us.us.us.us.us242.us277 ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us ]
  %x.1232.us.us.us.us.us244.us279 = phi i64 [ %inc129.us.us.us.us.us252.us285, %for.body37.us.us.us.us.us242.us277 ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us243.us278, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us244.us279, metadata !1202, metadata !DIExpression()), !dbg !1252
  %red42.us.us.us.us.us.us280 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us243.us278, i64 0, i32 2, !dbg !1286
  %17 = load i16, ptr %red42.us.us.us.us.us.us280, align 2, !dbg !1286, !tbaa !951
  %conv44.us.us.us.us.us.us281 = uitofp i16 %17 to double, !dbg !1286
  %cmp45.us.us.us.us.us.us282 = fcmp ugt double %conv44.us.us.us.us.us.us281, %threshold, !dbg !1286
  %conv48.us.us.us.us.us.us283 = sext i1 %cmp45.us.us.us.us.us.us282 to i16, !dbg !1286
  store i16 %conv48.us.us.us.us.us.us283, ptr %red42.us.us.us.us.us.us280, align 2, !dbg !1286, !tbaa !951
  %18 = load i16, ptr %q.1234.us.us.us.us.us243.us278, align 2, !dbg !1291, !tbaa !959
  %conv70.us.us.us.us.us247.us = uitofp i16 %18 to double, !dbg !1291
  %cmp71.us.us.us.us.us248.us = fcmp ugt double %conv70.us.us.us.us.us247.us, %threshold, !dbg !1291
  %conv74.us.us.us.us.us249.us = sext i1 %cmp71.us.us.us.us.us248.us to i16, !dbg !1291
  store i16 %conv74.us.us.us.us.us249.us, ptr %q.1234.us.us.us.us.us243.us278, align 2, !dbg !1291, !tbaa !959
  %incdec.ptr127.us.us.us.us.us251.us284 = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us243.us278, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us251.us284, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us252.us285 = add nuw nsw i64 %x.1232.us.us.us.us.us244.us279, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us252.us285, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond308.not = icmp eq i64 %inc129.us.us.us.us.us252.us285, %4, !dbg !1257
  br i1 %exitcond308.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us242.us277, !dbg !1258, !llvm.loop !1295

for.body37.us.us.us.us.us242.us.us:               ; preds = %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us, %for.body37.us.us.us.us.us242.us.us
  %q.1234.us.us.us.us.us243.us.us = phi ptr [ %incdec.ptr127.us.us.us.us.us251.us.us, %for.body37.us.us.us.us.us242.us.us ], [ %call16.us.us.us, %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us ]
  %x.1232.us.us.us.us.us244.us.us = phi i64 [ %inc129.us.us.us.us.us252.us.us, %for.body37.us.us.us.us.us242.us.us ], [ 0, %for.body37.lr.ph.us.split.us.us.split.us.split.split.us.us ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us.us.us243.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us.us.us244.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %red42.us.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us243.us.us, i64 0, i32 2, !dbg !1286
  %19 = load i16, ptr %red42.us.us.us.us.us.us.us, align 2, !dbg !1286, !tbaa !951
  %conv44.us.us.us.us.us.us.us = uitofp i16 %19 to double, !dbg !1286
  %cmp45.us.us.us.us.us.us.us = fcmp ugt double %conv44.us.us.us.us.us.us.us, %threshold, !dbg !1286
  %conv48.us.us.us.us.us.us.us = sext i1 %cmp45.us.us.us.us.us.us.us to i16, !dbg !1286
  store i16 %conv48.us.us.us.us.us.us.us, ptr %red42.us.us.us.us.us.us.us, align 2, !dbg !1286, !tbaa !951
  %incdec.ptr127.us.us.us.us.us251.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us.us.us243.us.us, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us.us.us251.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us.us.us252.us.us = add nuw nsw i64 %x.1232.us.us.us.us.us244.us.us, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us.us.us252.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond309.not = icmp eq i64 %inc129.us.us.us.us.us252.us.us, %4, !dbg !1257
  br i1 %exitcond309.not, label %if.end131.loopexit.us.us.us, label %for.body37.us.us.us.us.us242.us.us, !dbg !1258, !llvm.loop !1295

for.body.us.us:                                   ; preds = %for.body.lr.ph.split.us.split.us, %cleanup.us.us
  %y.0240.us.us = phi i64 [ %inc151.us.us, %cleanup.us.us ], [ 0, %for.body.lr.ph.split.us.split.us ]
  %progress.0239.us.us = phi i64 [ %progress.2.us.us, %cleanup.us.us ], [ 0, %for.body.lr.ph.split.us.split.us ]
  %status.0238.us.us = phi i32 [ %status.4.us.us, %cleanup.us.us ], [ 1, %for.body.lr.ph.split.us.split.us ]
  call void @llvm.dbg.value(metadata i64 %y.0240.us.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.0239.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.0238.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %cmp13.us.us = icmp eq i32 %status.0238.us.us, 0, !dbg !1247
  br i1 %cmp13.us.us, label %cleanup.us.us, label %if.end15.us.us, !dbg !1249

if.end15.us.us:                                   ; preds = %for.body.us.us
  %20 = load i64, ptr %columns, align 8, !dbg !1250, !tbaa !917
  %call16.us.us = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0240.us.us, i64 noundef %20, i64 noundef 1, ptr noundef nonnull %exception10) #14, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call16.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %cmp17.us.us = icmp eq ptr %call16.us.us, null, !dbg !1253
  br i1 %cmp17.us.us, label %cleanup.us.us, label %if.end19.us.us, !dbg !1255

if.end19.us.us:                                   ; preds = %if.end15.us.us
  %call20.us.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call11) #13, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call20.us.us, metadata !1198, metadata !DIExpression()), !dbg !1252
  %21 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call16.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1202, metadata !DIExpression()), !dbg !1252
  %cmp35231.us.us = icmp sgt i64 %21, 0, !dbg !1257
  br i1 %cmp35231.us.us, label %for.body37.lr.ph.us.us, label %if.end131.loopexit.us.us, !dbg !1258

SetImageProgress.exit.us.us:                      ; preds = %if.end131.loopexit.us.us
  %inc140.us.us = add nsw i64 %progress.0239.us.us, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %inc140.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  %22 = load i64, ptr %rows, align 8, !dbg !1260, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %progress.0239.us.us, metadata !1093, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %22, metadata !1094, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1264
  %call.i.us.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1265
  %23 = load ptr, ptr %progress_monitor, align 8, !dbg !1266, !tbaa !1081
  %24 = load ptr, ptr %client_data.i, align 8, !dbg !1267, !tbaa !1103
  %call4.i.us.us = call i32 %23(ptr noundef nonnull %message.i, i64 noundef %progress.0239.us.us, i64 noundef %22, ptr noundef %24) #13, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %call4.i.us.us, metadata !1204, metadata !DIExpression()), !dbg !1270
  %cmp143.us.us = icmp eq i32 %call4.i.us.us, 0, !dbg !1271
  %spec.select222.us.us = select i1 %cmp143.us.us, i32 0, i32 %spec.select.us.us, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %spec.select222.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  br label %cleanup.us.us, !dbg !1274

cleanup.us.us:                                    ; preds = %if.end131.loopexit.us.us, %SetImageProgress.exit.us.us, %if.end15.us.us, %for.body.us.us
  %status.4.us.us = phi i32 [ 0, %for.body.us.us ], [ 0, %if.end15.us.us ], [ %spec.select222.us.us, %SetImageProgress.exit.us.us ], [ %spec.select.us.us, %if.end131.loopexit.us.us ], !dbg !1207
  %progress.2.us.us = phi i64 [ %progress.0239.us.us, %for.body.us.us ], [ %progress.0239.us.us, %if.end15.us.us ], [ %inc140.us.us, %SetImageProgress.exit.us.us ], [ %progress.0239.us.us, %if.end131.loopexit.us.us ], !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.2.us.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.4.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %inc151.us.us = add nuw nsw i64 %y.0240.us.us, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %inc151.us.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  %25 = load i64, ptr %rows, align 8, !dbg !1236, !tbaa !909
  %cmp12.us.us = icmp slt i64 %inc151.us.us, %25, !dbg !1237
  br i1 %cmp12.us.us, label %for.body.us.us, label %for.end152, !dbg !1238, !llvm.loop !1276

if.end131.loopexit.us.us:                         ; preds = %if.end126.us.us.us, %if.end19.us.us
  %call132.us.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call11, ptr noundef nonnull %exception10) #14, !dbg !1278
  %cmp133.us.us = icmp ne i32 %call132.us.us, 0, !dbg !1280
  %spec.select.us.us = zext i1 %cmp133.us.us to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %spec.select.us.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %26 = load ptr, ptr %progress_monitor, align 8, !dbg !1282, !tbaa !1081
  %cmp137.not.us.us = icmp eq ptr %26, null, !dbg !1283
  br i1 %cmp137.not.us.us, label %cleanup.us.us, label %SetImageProgress.exit.us.us, !dbg !1284

for.body37.lr.ph.us.us:                           ; preds = %if.end19.us.us
  %cmp109.not.us.us = icmp eq ptr %call20.us.us, null
  %27 = load i32, ptr %colorspace, align 4, !tbaa !940
  %cmp106.us.us.us = icmp ne i32 %27, 12
  %or.cond.us.us.us = select i1 %cmp106.us.us.us, i1 true, i1 %cmp109.not.us.us
  br label %for.body37.us.us.us, !dbg !1258

for.body37.us.us.us:                              ; preds = %if.end126.us.us.us, %for.body37.lr.ph.us.us
  %q.1234.us.us.us = phi ptr [ %call16.us.us, %for.body37.lr.ph.us.us ], [ %incdec.ptr127.us.us.us, %if.end126.us.us.us ]
  %x.1232.us.us.us = phi i64 [ 0, %for.body37.lr.ph.us.us ], [ %inc129.us.us.us, %if.end126.us.us.us ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  br i1 %cmp39.not, label %if.end50.us.us.us, label %if.then41.us.us.us, !dbg !1285

if.then41.us.us.us:                               ; preds = %for.body37.us.us.us
  %red42.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us, i64 0, i32 2, !dbg !1286
  %28 = load i16, ptr %red42.us.us.us, align 2, !dbg !1286, !tbaa !951
  %conv44.us.us.us = uitofp i16 %28 to double, !dbg !1286
  %cmp45.us.us.us = fcmp ugt double %conv44.us.us.us, %threshold, !dbg !1286
  %conv48.us.us.us = sext i1 %cmp45.us.us.us to i16, !dbg !1286
  store i16 %conv48.us.us.us, ptr %red42.us.us.us, align 2, !dbg !1286, !tbaa !951
  br label %if.end50.us.us.us, !dbg !1286

if.end50.us.us.us:                                ; preds = %if.then41.us.us.us, %for.body37.us.us.us
  br i1 %cmp52.not, label %if.end63.us.us.us, label %if.then54.us.us.us, !dbg !1297

if.then54.us.us.us:                               ; preds = %if.end50.us.us.us
  %green55.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us, i64 0, i32 1, !dbg !1288
  %29 = load i16, ptr %green55.us.us.us, align 2, !dbg !1288, !tbaa !955
  %conv57.us.us.us = uitofp i16 %29 to double, !dbg !1288
  %cmp58.us.us.us = fcmp ugt double %conv57.us.us.us, %threshold, !dbg !1288
  %conv61.us.us.us = sext i1 %cmp58.us.us.us to i16, !dbg !1288
  store i16 %conv61.us.us.us, ptr %green55.us.us.us, align 2, !dbg !1288, !tbaa !955
  br label %if.end63.us.us.us, !dbg !1288

if.end63.us.us.us:                                ; preds = %if.then54.us.us.us, %if.end50.us.us.us
  br i1 %cmp65.not, label %if.end76.us.us.us, label %if.then67.us.us.us, !dbg !1290

if.then67.us.us.us:                               ; preds = %if.end63.us.us.us
  %30 = load i16, ptr %q.1234.us.us.us, align 2, !dbg !1291, !tbaa !959
  %conv70.us.us.us = uitofp i16 %30 to double, !dbg !1291
  %cmp71.us.us.us = fcmp ugt double %conv70.us.us.us, %threshold, !dbg !1291
  %conv74.us.us.us = sext i1 %cmp71.us.us.us to i16, !dbg !1291
  store i16 %conv74.us.us.us, ptr %q.1234.us.us.us, align 2, !dbg !1291, !tbaa !959
  br label %if.end76.us.us.us, !dbg !1291

if.end76.us.us.us:                                ; preds = %if.then67.us.us.us, %if.end63.us.us.us
  br i1 %or.cond.us.us.us, label %if.end126.us.us.us, label %cond.end.us.us.us, !dbg !1298

cond.end.us.us.us:                                ; preds = %if.end76.us.us.us
  %add.ptr.us.us.us = getelementptr inbounds i16, ptr %call20.us.us, i64 %x.1232.us.us.us, !dbg !1299
  %31 = load i16, ptr %add.ptr.us.us.us, align 2, !dbg !1299, !tbaa !990
  %conv119.us.us.us = uitofp i16 %31 to double, !dbg !1299
  %cmp120.us.us.us = fcmp ugt double %conv119.us.us.us, %threshold, !dbg !1299
  %conv123.us.us.us = sext i1 %cmp120.us.us.us to i16, !dbg !1299
  store i16 %conv123.us.us.us, ptr %add.ptr.us.us.us, align 2, !dbg !1299, !tbaa !990
  br label %if.end126.us.us.us, !dbg !1299

if.end126.us.us.us:                               ; preds = %cond.end.us.us.us, %if.end76.us.us.us
  %incdec.ptr127.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us.us.us, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us.us.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us.us.us = add nuw nsw i64 %x.1232.us.us.us, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us.us.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond306.not = icmp eq i64 %inc129.us.us.us, %21, !dbg !1257
  br i1 %exitcond306.not, label %if.end131.loopexit.us.us, label %for.body37.us.us.us, !dbg !1258, !llvm.loop !1295

for.body.us:                                      ; preds = %for.body.lr.ph.split.us, %cleanup.us
  %y.0240.us = phi i64 [ %inc151.us, %cleanup.us ], [ 0, %for.body.lr.ph.split.us ]
  %progress.0239.us = phi i64 [ %progress.2.us, %cleanup.us ], [ 0, %for.body.lr.ph.split.us ]
  %status.0238.us = phi i32 [ %status.4.us, %cleanup.us ], [ 1, %for.body.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %y.0240.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.0239.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.0238.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %cmp13.us = icmp eq i32 %status.0238.us, 0, !dbg !1247
  br i1 %cmp13.us, label %cleanup.us, label %if.end15.us, !dbg !1249

if.end15.us:                                      ; preds = %for.body.us
  %32 = load i64, ptr %columns, align 8, !dbg !1250, !tbaa !917
  %call16.us = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0240.us, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %exception10) #14, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call16.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %cmp17.us = icmp eq ptr %call16.us, null, !dbg !1253
  br i1 %cmp17.us, label %cleanup.us, label %if.end19.us, !dbg !1255

if.end19.us:                                      ; preds = %if.end15.us
  %call20.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call11) #13, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call20.us, metadata !1198, metadata !DIExpression()), !dbg !1252
  %33 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call16.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1202, metadata !DIExpression()), !dbg !1252
  %cmp35231.us = icmp sgt i64 %33, 0, !dbg !1257
  br i1 %cmp35231.us, label %for.body37.lr.ph.us, label %if.end131.loopexit.us, !dbg !1258

SetImageProgress.exit.us:                         ; preds = %if.end131.loopexit.us
  %inc140.us = add nsw i64 %progress.0239.us, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %inc140.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  %34 = load i64, ptr %rows, align 8, !dbg !1260, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %progress.0239.us, metadata !1093, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %34, metadata !1094, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1264
  %call.i.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1265
  %35 = load ptr, ptr %progress_monitor, align 8, !dbg !1266, !tbaa !1081
  %36 = load ptr, ptr %client_data.i, align 8, !dbg !1267, !tbaa !1103
  %call4.i.us = call i32 %35(ptr noundef nonnull %message.i, i64 noundef %progress.0239.us, i64 noundef %34, ptr noundef %36) #13, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %call4.i.us, metadata !1204, metadata !DIExpression()), !dbg !1270
  %cmp143.us = icmp eq i32 %call4.i.us, 0, !dbg !1271
  %spec.select222.us = select i1 %cmp143.us, i32 0, i32 %spec.select.us, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %spec.select222.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  br label %cleanup.us, !dbg !1274

for.body37.us:                                    ; preds = %for.body37.lr.ph.us, %if.end126.us
  %q.1234.us = phi ptr [ %call16.us, %for.body37.lr.ph.us ], [ %incdec.ptr127.us, %if.end126.us ]
  %x.1232.us = phi i64 [ 0, %for.body37.lr.ph.us ], [ %inc129.us, %if.end126.us ]
  call void @llvm.dbg.value(metadata ptr %q.1234.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.1232.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  br i1 %cmp39.not, label %if.end50.us, label %if.then41.us, !dbg !1285

if.then41.us:                                     ; preds = %for.body37.us
  %red42.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us, i64 0, i32 2, !dbg !1286
  %37 = load i16, ptr %red42.us, align 2, !dbg !1286, !tbaa !951
  %conv44.us = uitofp i16 %37 to double, !dbg !1286
  %cmp45.us = fcmp ugt double %conv44.us, %threshold, !dbg !1286
  %conv48.us = sext i1 %cmp45.us to i16, !dbg !1286
  store i16 %conv48.us, ptr %red42.us, align 2, !dbg !1286, !tbaa !951
  br label %if.end50.us, !dbg !1286

if.end50.us:                                      ; preds = %if.then41.us, %for.body37.us
  br i1 %cmp52.not, label %if.end63.us, label %if.then54.us, !dbg !1297

if.then54.us:                                     ; preds = %if.end50.us
  %green55.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us, i64 0, i32 1, !dbg !1288
  %38 = load i16, ptr %green55.us, align 2, !dbg !1288, !tbaa !955
  %conv57.us = uitofp i16 %38 to double, !dbg !1288
  %cmp58.us = fcmp ugt double %conv57.us, %threshold, !dbg !1288
  %conv61.us = sext i1 %cmp58.us to i16, !dbg !1288
  store i16 %conv61.us, ptr %green55.us, align 2, !dbg !1288, !tbaa !955
  br label %if.end63.us, !dbg !1288

if.end63.us:                                      ; preds = %if.then54.us, %if.end50.us
  br i1 %cmp65.not, label %if.end76.us, label %if.then67.us, !dbg !1290

if.then67.us:                                     ; preds = %if.end63.us
  %39 = load i16, ptr %q.1234.us, align 2, !dbg !1291, !tbaa !959
  %conv70.us = uitofp i16 %39 to double, !dbg !1291
  %cmp71.us = fcmp ugt double %conv70.us, %threshold, !dbg !1291
  %conv74.us = sext i1 %cmp71.us to i16, !dbg !1291
  store i16 %conv74.us, ptr %q.1234.us, align 2, !dbg !1291, !tbaa !959
  br label %if.end76.us, !dbg !1291

if.end76.us:                                      ; preds = %if.then67.us, %if.end63.us
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us, i64 0, i32 3, !dbg !1302
  %40 = load i16, ptr %opacity.us, align 2, !dbg !1302, !tbaa !963
  %conv85.us = uitofp i16 %40 to double, !dbg !1302
  %cmp86.us = fcmp ugt double %conv85.us, %threshold, !dbg !1302
  %conv89.us = sext i1 %cmp86.us to i16, !dbg !1302
  store i16 %conv89.us, ptr %opacity.us, align 2, !dbg !1302, !tbaa !963
  br i1 %cmp103.not, label %if.end126.us, label %land.lhs.true.us, !dbg !1245

land.lhs.true.us:                                 ; preds = %if.end76.us
  %41 = load i32, ptr %colorspace, align 4, !dbg !1306, !tbaa !940
  %cmp106.us = icmp ne i32 %41, 12, !dbg !1307
  %or.cond.us = select i1 %cmp106.us, i1 true, i1 %cmp109.not.us, !dbg !1298
  br i1 %or.cond.us, label %if.end126.us, label %cond.end.us, !dbg !1298

cond.end.us:                                      ; preds = %land.lhs.true.us
  %add.ptr.us = getelementptr inbounds i16, ptr %call20.us, i64 %x.1232.us, !dbg !1299
  %42 = load i16, ptr %add.ptr.us, align 2, !dbg !1299, !tbaa !990
  %conv119.us = uitofp i16 %42 to double, !dbg !1299
  %cmp120.us = fcmp ugt double %conv119.us, %threshold, !dbg !1299
  %conv123.us = sext i1 %cmp120.us to i16, !dbg !1299
  store i16 %conv123.us, ptr %add.ptr.us, align 2, !dbg !1299, !tbaa !990
  br label %if.end126.us, !dbg !1299

if.end126.us:                                     ; preds = %cond.end.us, %land.lhs.true.us, %if.end76.us
  %incdec.ptr127.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1234.us, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127.us, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc129.us = add nuw nsw i64 %x.1232.us, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %inc129.us, metadata !1202, metadata !DIExpression()), !dbg !1252
  %exitcond.not = icmp eq i64 %inc129.us, %33, !dbg !1257
  br i1 %exitcond.not, label %if.end131.loopexit.us, label %for.body37.us, !dbg !1258, !llvm.loop !1295

cleanup.us:                                       ; preds = %SetImageProgress.exit.us, %if.end131.loopexit.us, %if.end15.us, %for.body.us
  %status.4.us = phi i32 [ 0, %for.body.us ], [ 0, %if.end15.us ], [ %spec.select222.us, %SetImageProgress.exit.us ], [ %spec.select.us, %if.end131.loopexit.us ], !dbg !1207
  %progress.2.us = phi i64 [ %progress.0239.us, %for.body.us ], [ %progress.0239.us, %if.end15.us ], [ %inc140.us, %SetImageProgress.exit.us ], [ %progress.0239.us, %if.end131.loopexit.us ], !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.2.us, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.4.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %inc151.us = add nuw nsw i64 %y.0240.us, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %inc151.us, metadata !1197, metadata !DIExpression()), !dbg !1207
  %43 = load i64, ptr %rows, align 8, !dbg !1236, !tbaa !909
  %cmp12.us = icmp slt i64 %inc151.us, %43, !dbg !1237
  br i1 %cmp12.us, label %for.body.us, label %for.end152, !dbg !1238, !llvm.loop !1276

if.end131.loopexit.us:                            ; preds = %if.end126.us, %if.end19.us
  %call132.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call11, ptr noundef nonnull %exception10) #14, !dbg !1278
  %cmp133.us = icmp ne i32 %call132.us, 0, !dbg !1280
  %spec.select.us = zext i1 %cmp133.us to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !1195, metadata !DIExpression()), !dbg !1207
  %44 = load ptr, ptr %progress_monitor, align 8, !dbg !1282, !tbaa !1081
  %cmp137.not.us = icmp eq ptr %44, null, !dbg !1283
  br i1 %cmp137.not.us, label %cleanup.us, label %SetImageProgress.exit.us, !dbg !1284

for.body37.lr.ph.us:                              ; preds = %if.end19.us
  %cmp109.not.us = icmp eq ptr %call20.us, null
  br label %for.body37.us, !dbg !1258

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0240 = phi i64 [ %inc151, %cleanup ], [ 0, %for.body.lr.ph ]
  %progress.0239 = phi i64 [ %progress.2, %cleanup ], [ 0, %for.body.lr.ph ]
  %status.0238 = phi i32 [ %status.4, %cleanup ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0240, metadata !1197, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.0239, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.0238, metadata !1195, metadata !DIExpression()), !dbg !1207
  %cmp13 = icmp eq i32 %status.0238, 0, !dbg !1247
  br i1 %cmp13, label %cleanup, label %if.end15, !dbg !1249

if.end15:                                         ; preds = %for.body
  %45 = load i64, ptr %columns, align 8, !dbg !1250, !tbaa !917
  %call16 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0240, i64 noundef %45, i64 noundef 1, ptr noundef nonnull %exception10) #14, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1203, metadata !DIExpression()), !dbg !1252
  %cmp17 = icmp eq ptr %call16, null, !dbg !1253
  br i1 %cmp17, label %cleanup, label %if.end19, !dbg !1255

if.end19:                                         ; preds = %if.end15
  %call20 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call11) #13, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1198, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1202, metadata !DIExpression()), !dbg !1252
  %46 = load i64, ptr %columns, align 8, !dbg !1308, !tbaa !917
  %cmp25228 = icmp sgt i64 %46, 0, !dbg !1312
  br i1 %cmp25228, label %for.body26, label %if.end131.loopexit227, !dbg !1313

for.body26:                                       ; preds = %if.end19, %for.body26
  %q.0230 = phi ptr [ %incdec.ptr, %for.body26 ], [ %call16, %if.end19 ]
  %x.0229 = phi i64 [ %inc, %for.body26 ], [ 0, %if.end19 ]
  call void @llvm.dbg.value(metadata ptr %q.0230, metadata !1203, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %x.0229, metadata !1202, metadata !DIExpression()), !dbg !1252
  %call27 = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %q.0230) #14, !dbg !1314
  %conv = fpext float %call27 to double, !dbg !1314
  %cmp28 = fcmp ugt double %conv, %threshold, !dbg !1314
  %conv30 = sext i1 %cmp28 to i16, !dbg !1314
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0230, i64 0, i32 2, !dbg !1314
  store i16 %conv30, ptr %red, align 2, !dbg !1314, !tbaa !951
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0230, i64 0, i32 1, !dbg !1316
  store i16 %conv30, ptr %green, align 2, !dbg !1316, !tbaa !955
  store i16 %conv30, ptr %q.0230, align 2, !dbg !1317, !tbaa !959
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0230, i64 1, !dbg !1318
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1203, metadata !DIExpression()), !dbg !1252
  %inc = add nuw nsw i64 %x.0229, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1202, metadata !DIExpression()), !dbg !1252
  %47 = load i64, ptr %columns, align 8, !dbg !1308, !tbaa !917
  %cmp25 = icmp slt i64 %inc, %47, !dbg !1312
  br i1 %cmp25, label %for.body26, label %if.end131.loopexit227, !dbg !1313, !llvm.loop !1320

if.end131.loopexit227:                            ; preds = %for.body26, %if.end19
  %call132 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call11, ptr noundef nonnull %exception10) #14, !dbg !1278
  %cmp133 = icmp ne i32 %call132, 0, !dbg !1280
  %spec.select = zext i1 %cmp133 to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1195, metadata !DIExpression()), !dbg !1207
  %48 = load ptr, ptr %progress_monitor, align 8, !dbg !1282, !tbaa !1081
  %cmp137.not = icmp eq ptr %48, null, !dbg !1283
  br i1 %cmp137.not, label %cleanup, label %SetImageProgress.exit, !dbg !1284

SetImageProgress.exit:                            ; preds = %if.end131.loopexit227
  %inc140 = add nsw i64 %progress.0239, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %inc140, metadata !1196, metadata !DIExpression()), !dbg !1207
  %49 = load i64, ptr %rows, align 8, !dbg !1260, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %progress.0239, metadata !1093, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %49, metadata !1094, metadata !DIExpression()) #13, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1264
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1265
  %50 = load ptr, ptr %progress_monitor, align 8, !dbg !1266, !tbaa !1081
  %51 = load ptr, ptr %client_data.i, align 8, !dbg !1267, !tbaa !1103
  %call4.i = call i32 %50(ptr noundef nonnull %message.i, i64 noundef %progress.0239, i64 noundef %49, ptr noundef %51) #13, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1204, metadata !DIExpression()), !dbg !1270
  %cmp143 = icmp eq i32 %call4.i, 0, !dbg !1271
  %spec.select222 = select i1 %cmp143, i32 0, i32 %spec.select, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %spec.select222, metadata !1195, metadata !DIExpression()), !dbg !1207
  br label %cleanup, !dbg !1274

cleanup:                                          ; preds = %if.end131.loopexit227, %SetImageProgress.exit, %if.end15, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end15 ], [ %spec.select222, %SetImageProgress.exit ], [ %spec.select, %if.end131.loopexit227 ], !dbg !1207
  %progress.2 = phi i64 [ %progress.0239, %for.body ], [ %progress.0239, %if.end15 ], [ %inc140, %SetImageProgress.exit ], [ %progress.0239, %if.end131.loopexit227 ], !dbg !1207
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1196, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1195, metadata !DIExpression()), !dbg !1207
  %inc151 = add nuw nsw i64 %y.0240, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !1197, metadata !DIExpression()), !dbg !1207
  %52 = load i64, ptr %rows, align 8, !dbg !1236, !tbaa !909
  %cmp12 = icmp slt i64 %inc151, %52, !dbg !1237
  br i1 %cmp12, label %for.body, label %for.end152, !dbg !1238, !llvm.loop !1276

for.end152:                                       ; preds = %cleanup, %cleanup.us, %cleanup.us.us, %cleanup.us.us.us, %if.end9
  %status.0.lcssa = phi i32 [ 1, %if.end9 ], [ %status.4.us.us.us, %cleanup.us.us.us ], [ %status.4.us.us, %cleanup.us.us ], [ %status.4.us, %cleanup.us ], [ %status.4, %cleanup ], !dbg !1322
  %call153 = call ptr @DestroyCacheView(ptr noundef %call11) #13, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %call153, metadata !1193, metadata !DIExpression()), !dbg !1207
  br label %cleanup154, !dbg !1324

cleanup154:                                       ; preds = %if.end, %for.end152
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end152 ], [ 0, %if.end ], !dbg !1207
  ret i32 %retval.0, !dbg !1325
}

declare !dbg !1326 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1329 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BlackThresholdImage(ptr noundef %image, ptr noundef %threshold) local_unnamed_addr #0 !dbg !1332 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1336, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr %threshold, metadata !1337, metadata !DIExpression()), !dbg !1339
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1340
  %call = tail call i32 @BlackThresholdImageChannel(ptr noundef %image, i32 noundef 134217719, ptr noundef %threshold, ptr noundef nonnull %exception), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %call, metadata !1338, metadata !DIExpression()), !dbg !1339
  ret i32 %call, !dbg !1342
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BlackThresholdImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %thresholds, ptr noundef %exception) local_unnamed_addr #0 !dbg !1343 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %threshold = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1347, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1348, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %thresholds, metadata !1349, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1350, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1352, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %threshold) #13, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %threshold, metadata !1363, metadata !DIExpression()), !dbg !1380
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1381
  %0 = load i32, ptr %debug, align 8, !dbg !1381, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !1383
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1384

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1385
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 608, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1386
  br label %if.end, !dbg !1387

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %thresholds, null, !dbg !1388
  br i1 %cmp1, label %cleanup175, label %if.end3, !dbg !1390

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #13, !dbg !1391
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1393
  br i1 %cmp5, label %cleanup175, label %if.end7, !dbg !1394

if.end7:                                          ; preds = %if.end3
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %threshold) #13, !dbg !1395
  %call8 = call i32 @ParseGeometry(ptr noundef nonnull %thresholds, ptr noundef nonnull %geometry_info) #13, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1364, metadata !DIExpression()), !dbg !1376
  %1 = load double, ptr %geometry_info, align 8, !dbg !1397, !tbaa !1398
  %conv = fptrunc double %1 to float, !dbg !1400
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 5, !dbg !1401
  store float %conv, ptr %red, align 8, !dbg !1402, !tbaa !1403
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1405
  %2 = load double, ptr %sigma, align 8, !dbg !1405, !tbaa !1406
  %conv9 = fptrunc double %2 to float, !dbg !1407
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 6, !dbg !1408
  %and = and i32 %call8, 8, !dbg !1409
  %cmp10 = icmp eq i32 %and, 0, !dbg !1411
  %spec.store.select = select i1 %cmp10, float %conv, float %conv9, !dbg !1412
  store float %spec.store.select, ptr %green, align 4, !dbg !1376
  %xi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !1413
  %3 = load double, ptr %xi, align 8, !dbg !1413, !tbaa !1414
  %conv16 = fptrunc double %3 to float, !dbg !1415
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 7, !dbg !1416
  %and17 = and i32 %call8, 1, !dbg !1417
  %cmp18 = icmp eq i32 %and17, 0, !dbg !1419
  %spec.store.select243 = select i1 %cmp18, float %conv, float %conv16, !dbg !1420
  store float %spec.store.select243, ptr %blue, align 8, !dbg !1376
  %psi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3, !dbg !1421
  %4 = load double, ptr %psi, align 8, !dbg !1421, !tbaa !1422
  %conv24 = fptrunc double %4 to float, !dbg !1423
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 8, !dbg !1424
  %and25 = and i32 %call8, 2, !dbg !1425
  %cmp26 = icmp eq i32 %and25, 0, !dbg !1427
  %spec.store.select242 = select i1 %cmp26, float %conv, float %conv24, !dbg !1428
  store float %spec.store.select242, ptr %opacity, align 4, !dbg !1376
  %chi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 4, !dbg !1429
  %5 = load double, ptr %chi, align 8, !dbg !1429, !tbaa !1430
  %conv32 = fptrunc double %5 to float, !dbg !1431
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 9, !dbg !1432
  %and33 = and i32 %call8, 16, !dbg !1433
  %cmp34 = icmp eq i32 %and33, 0, !dbg !1435
  %spec.store.select244 = select i1 %cmp34, float %conv, float %conv32, !dbg !1436
  store float %spec.store.select244, ptr %index, align 8, !dbg !1376
  %and40 = and i32 %call8, 4096, !dbg !1437
  %cmp41.not = icmp eq i32 %and40, 0, !dbg !1439
  br i1 %cmp41.not, label %if.end53, label %if.then43, !dbg !1440

if.then43:                                        ; preds = %if.end7
  %mul = fmul float %conv, 0x40847ACCC0000000, !dbg !1441
  store float %mul, ptr %red, align 8, !dbg !1441, !tbaa !1403
  %mul46 = fmul float %spec.store.select, 0x40847ACCC0000000, !dbg !1443
  store float %mul46, ptr %green, align 4, !dbg !1443, !tbaa !1444
  %mul48 = fmul float %spec.store.select243, 0x40847ACCC0000000, !dbg !1445
  store float %mul48, ptr %blue, align 8, !dbg !1445, !tbaa !1446
  %mul50 = fmul float %spec.store.select242, 0x40847ACCC0000000, !dbg !1447
  store float %mul50, ptr %opacity, align 4, !dbg !1447, !tbaa !1448
  %mul52 = fmul float %spec.store.select244, 0x40847ACCC0000000, !dbg !1449
  store float %mul52, ptr %index, align 8, !dbg !1449, !tbaa !1450
  br label %if.end53, !dbg !1451

if.end53:                                         ; preds = %if.then43, %if.end7
  %6 = phi float [ %mul48, %if.then43 ], [ %spec.store.select243, %if.end7 ]
  %7 = phi float [ %mul46, %if.then43 ], [ %spec.store.select, %if.end7 ]
  %8 = phi float [ %mul, %if.then43 ], [ %conv, %if.end7 ]
  call void @llvm.dbg.value(metadata ptr %threshold, metadata !1452, metadata !DIExpression()) #13, !dbg !1460
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 1, !dbg !1463
  %9 = load i32, ptr %colorspace.i, align 4, !dbg !1463, !tbaa !1465
  %.off.i = add i32 %9, -1, !dbg !1466
  %switch.i = icmp ult i32 %.off.i, 2, !dbg !1466
  br i1 %switch.i, label %if.end.i, label %land.lhs.true, !dbg !1466

if.end.i:                                         ; preds = %if.end53
  %sub.i = fsub float %8, %7, !dbg !1467
  %10 = call float @llvm.fabs.f32(float %sub.i) #13, !dbg !1469
  %11 = fpext float %10 to double, !dbg !1469
  %cmp3.i = fcmp olt double %11, 1.000000e-15, !dbg !1470
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true, !dbg !1471

land.lhs.true5.i:                                 ; preds = %if.end.i
  %sub7.i = fsub float %7, %6, !dbg !1472
  %12 = call float @llvm.fabs.f32(float %sub7.i) #13, !dbg !1473
  %13 = fpext float %12 to double, !dbg !1473
  %cmp9.i = fcmp olt double %13, 1.000000e-15, !dbg !1474
  br i1 %cmp9.i, label %if.end62, label %land.lhs.true, !dbg !1475

land.lhs.true:                                    ; preds = %if.end.i, %land.lhs.true5.i, %if.end53
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1476
  %14 = load i32, ptr %colorspace, align 4, !dbg !1476, !tbaa !940
  call void @llvm.dbg.value(metadata i32 %14, metadata !1221, metadata !DIExpression()), !dbg !1477
  switch i32 %14, label %if.end62 [
    i32 19, label %if.then60
    i32 17, label %if.then60
    i32 2, label %if.then60
  ], !dbg !1479

if.then60:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %call61 = call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #13, !dbg !1480
  br label %if.end62, !dbg !1481

if.end62:                                         ; preds = %land.lhs.true, %land.lhs.true5.i, %if.then60
  call void @llvm.dbg.value(metadata i32 1, metadata !1361, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1376
  %call63 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !1482
  call void @llvm.dbg.value(metadata ptr %call63, metadata !1351, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()), !dbg !1376
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 1, metadata !1361, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1376
  %15 = load i64, ptr %rows, align 8, !dbg !1483, !tbaa !909
  %cmp64250 = icmp sgt i64 %15, 0, !dbg !1484
  br i1 %cmp64250, label %for.body.lr.ph, label %for.end173, !dbg !1485

for.body.lr.ph:                                   ; preds = %if.end62
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and81 = and i32 %channel, 1
  %cmp82.not = icmp eq i32 %and81, 0
  %and93 = and i32 %channel, 2
  %cmp94.not = icmp eq i32 %and93, 0
  %and105 = and i32 %channel, 4
  %cmp106.not = icmp eq i32 %and105, 0
  %and117 = and i32 %channel, 8
  %cmp118.not = icmp eq i32 %and117, 0
  %and129 = and i32 %channel, 32
  %cmp130.not = icmp eq i32 %and129, 0
  %colorspace133 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1485

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0253 = phi i64 [ 0, %for.body.lr.ph ], [ %inc172, %cleanup ]
  %status.0252 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0251 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0253, metadata !1366, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 %status.0252, metadata !1361, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %progress.0251, metadata !1362, metadata !DIExpression()), !dbg !1376
  %cmp66 = icmp eq i32 %status.0252, 0, !dbg !1486
  br i1 %cmp66, label %cleanup, label %if.end69, !dbg !1488

if.end69:                                         ; preds = %for.body
  %16 = load i64, ptr %columns, align 8, !dbg !1489, !tbaa !917
  %call70 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call63, i64 noundef 0, i64 noundef %y.0253, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #14, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %call70, metadata !1372, metadata !DIExpression()), !dbg !1491
  %cmp71 = icmp eq ptr %call70, null, !dbg !1492
  br i1 %cmp71, label %cleanup, label %if.end74, !dbg !1494

if.end74:                                         ; preds = %if.end69
  %call75 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call63) #13, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %call75, metadata !1367, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1491
  %17 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call70, metadata !1372, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1491
  %cmp78245 = icmp sgt i64 %17, 0, !dbg !1496
  br i1 %cmp78245, label %for.body80.lr.ph, label %for.end, !dbg !1499

for.body80.lr.ph:                                 ; preds = %if.end74
  %18 = load float, ptr %red, align 8
  %19 = load float, ptr %green, align 4
  %20 = load float, ptr %blue, align 8
  %21 = load float, ptr %opacity, align 4
  %cmp137 = icmp eq ptr %call75, null
  %22 = load float, ptr %index, align 8
  br i1 %cmp130.not, label %for.body80.us, label %for.body80.lr.ph.split, !dbg !1500

for.body80.us:                                    ; preds = %for.body80.lr.ph, %if.end128.us
  %q.0248.us = phi ptr [ %incdec.ptr.us, %if.end128.us ], [ %call70, %for.body80.lr.ph ]
  %x.0246.us = phi i64 [ %inc.us, %if.end128.us ], [ 0, %for.body80.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0248.us, metadata !1372, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i64 %x.0246.us, metadata !1371, metadata !DIExpression()), !dbg !1491
  br i1 %cmp82.not, label %if.end92.us, label %land.lhs.true84.us, !dbg !1503

land.lhs.true84.us:                               ; preds = %for.body80.us
  %red85.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 2, !dbg !1505
  %23 = load i16, ptr %red85.us, align 2, !dbg !1505, !tbaa !951
  %conv86.us = uitofp i16 %23 to float, !dbg !1506
  %cmp88.us = fcmp ogt float %18, %conv86.us, !dbg !1507
  br i1 %cmp88.us, label %if.then90.us, label %if.end92.us, !dbg !1508

if.then90.us:                                     ; preds = %land.lhs.true84.us
  store i16 0, ptr %red85.us, align 2, !dbg !1509, !tbaa !951
  br label %if.end92.us, !dbg !1509

if.end92.us:                                      ; preds = %if.then90.us, %land.lhs.true84.us, %for.body80.us
  br i1 %cmp94.not, label %if.end104.us, label %land.lhs.true96.us, !dbg !1510

land.lhs.true96.us:                               ; preds = %if.end92.us
  %green97.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 1, !dbg !1512
  %24 = load i16, ptr %green97.us, align 2, !dbg !1512, !tbaa !955
  %conv98.us = uitofp i16 %24 to float, !dbg !1513
  %cmp100.us = fcmp ogt float %19, %conv98.us, !dbg !1514
  br i1 %cmp100.us, label %if.then102.us, label %if.end104.us, !dbg !1515

if.then102.us:                                    ; preds = %land.lhs.true96.us
  store i16 0, ptr %green97.us, align 2, !dbg !1516, !tbaa !955
  br label %if.end104.us, !dbg !1516

if.end104.us:                                     ; preds = %if.then102.us, %land.lhs.true96.us, %if.end92.us
  br i1 %cmp106.not, label %if.end116.us, label %land.lhs.true108.us, !dbg !1517

land.lhs.true108.us:                              ; preds = %if.end104.us
  %25 = load i16, ptr %q.0248.us, align 2, !dbg !1519, !tbaa !959
  %conv110.us = uitofp i16 %25 to float, !dbg !1520
  %cmp112.us = fcmp ogt float %20, %conv110.us, !dbg !1521
  br i1 %cmp112.us, label %if.then114.us, label %if.end116.us, !dbg !1522

if.then114.us:                                    ; preds = %land.lhs.true108.us
  store i16 0, ptr %q.0248.us, align 2, !dbg !1523, !tbaa !959
  br label %if.end116.us, !dbg !1523

if.end116.us:                                     ; preds = %if.then114.us, %land.lhs.true108.us, %if.end104.us
  br i1 %cmp118.not, label %if.end128.us, label %land.lhs.true120.us, !dbg !1524

land.lhs.true120.us:                              ; preds = %if.end116.us
  %opacity121.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 3, !dbg !1526
  %26 = load i16, ptr %opacity121.us, align 2, !dbg !1526, !tbaa !963
  %conv122.us = uitofp i16 %26 to float, !dbg !1527
  %cmp124.us = fcmp ogt float %21, %conv122.us, !dbg !1528
  br i1 %cmp124.us, label %if.then126.us, label %if.end128.us, !dbg !1529

if.then126.us:                                    ; preds = %land.lhs.true120.us
  store i16 0, ptr %opacity121.us, align 2, !dbg !1530, !tbaa !963
  br label %if.end128.us, !dbg !1530

if.end128.us:                                     ; preds = %if.then126.us, %land.lhs.true120.us, %if.end116.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 1, !dbg !1531
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !1372, metadata !DIExpression()), !dbg !1491
  %inc.us = add nuw nsw i64 %x.0246.us, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1371, metadata !DIExpression()), !dbg !1491
  %exitcond255.not = icmp eq i64 %inc.us, %17, !dbg !1496
  br i1 %exitcond255.not, label %for.end, label %for.body80.us, !dbg !1499, !llvm.loop !1533

for.body80.lr.ph.split:                           ; preds = %for.body80.lr.ph
  %27 = load i32, ptr %colorspace133, align 4, !tbaa !940
  %cmp134 = icmp eq i32 %27, 12
  br label %for.body80, !dbg !1499

for.body80:                                       ; preds = %for.body80.lr.ph.split, %if.end152
  %q.0248 = phi ptr [ %call70, %for.body80.lr.ph.split ], [ %incdec.ptr, %if.end152 ]
  %x.0246 = phi i64 [ 0, %for.body80.lr.ph.split ], [ %inc, %if.end152 ]
  call void @llvm.dbg.value(metadata ptr %q.0248, metadata !1372, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i64 %x.0246, metadata !1371, metadata !DIExpression()), !dbg !1491
  br i1 %cmp82.not, label %if.end92, label %land.lhs.true84, !dbg !1503

land.lhs.true84:                                  ; preds = %for.body80
  %red85 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 2, !dbg !1505
  %28 = load i16, ptr %red85, align 2, !dbg !1505, !tbaa !951
  %conv86 = uitofp i16 %28 to float, !dbg !1506
  %cmp88 = fcmp ogt float %18, %conv86, !dbg !1507
  br i1 %cmp88, label %if.then90, label %if.end92, !dbg !1508

if.then90:                                        ; preds = %land.lhs.true84
  store i16 0, ptr %red85, align 2, !dbg !1509, !tbaa !951
  br label %if.end92, !dbg !1509

if.end92:                                         ; preds = %if.then90, %land.lhs.true84, %for.body80
  br i1 %cmp94.not, label %if.end104, label %land.lhs.true96, !dbg !1510

land.lhs.true96:                                  ; preds = %if.end92
  %green97 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 1, !dbg !1512
  %29 = load i16, ptr %green97, align 2, !dbg !1512, !tbaa !955
  %conv98 = uitofp i16 %29 to float, !dbg !1513
  %cmp100 = fcmp ogt float %19, %conv98, !dbg !1514
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !1515

if.then102:                                       ; preds = %land.lhs.true96
  store i16 0, ptr %green97, align 2, !dbg !1516, !tbaa !955
  br label %if.end104, !dbg !1516

if.end104:                                        ; preds = %if.then102, %land.lhs.true96, %if.end92
  br i1 %cmp106.not, label %if.end116, label %land.lhs.true108, !dbg !1517

land.lhs.true108:                                 ; preds = %if.end104
  %30 = load i16, ptr %q.0248, align 2, !dbg !1519, !tbaa !959
  %conv110 = uitofp i16 %30 to float, !dbg !1520
  %cmp112 = fcmp ogt float %20, %conv110, !dbg !1521
  br i1 %cmp112, label %if.then114, label %if.end116, !dbg !1522

if.then114:                                       ; preds = %land.lhs.true108
  store i16 0, ptr %q.0248, align 2, !dbg !1523, !tbaa !959
  br label %if.end116, !dbg !1523

if.end116:                                        ; preds = %if.then114, %land.lhs.true108, %if.end104
  br i1 %cmp118.not, label %if.end128, label %land.lhs.true120, !dbg !1524

land.lhs.true120:                                 ; preds = %if.end116
  %opacity121 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 3, !dbg !1526
  %31 = load i16, ptr %opacity121, align 2, !dbg !1526, !tbaa !963
  %conv122 = uitofp i16 %31 to float, !dbg !1527
  %cmp124 = fcmp ogt float %21, %conv122, !dbg !1528
  br i1 %cmp124, label %if.then126, label %if.end128, !dbg !1529

if.then126:                                       ; preds = %land.lhs.true120
  store i16 0, ptr %opacity121, align 2, !dbg !1530, !tbaa !963
  br label %if.end128, !dbg !1530

if.end128:                                        ; preds = %if.then126, %land.lhs.true120, %if.end116
  br i1 %cmp134, label %land.lhs.true136, label %if.end152, !dbg !1535

land.lhs.true136:                                 ; preds = %if.end128
  %add.ptr = getelementptr inbounds i16, ptr %call75, i64 %x.0246, !dbg !1536
  br i1 %cmp137, label %if.end152, label %cond.end, !dbg !1536

cond.end:                                         ; preds = %land.lhs.true136
  %32 = load i16, ptr %add.ptr, align 2, !dbg !1536, !tbaa !990
  %conv141 = uitofp i16 %32 to float, !dbg !1537
  %cmp143 = fcmp ule float %22, %conv141, !dbg !1538
  br i1 %cmp143, label %if.end152, label %if.then149, !dbg !1539

if.then149:                                       ; preds = %cond.end
  store i16 0, ptr %add.ptr, align 2, !dbg !1540, !tbaa !990
  br label %if.end152, !dbg !1540

if.end152:                                        ; preds = %land.lhs.true136, %if.then149, %cond.end, %if.end128
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 1, !dbg !1531
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1372, metadata !DIExpression()), !dbg !1491
  %inc = add nuw nsw i64 %x.0246, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1371, metadata !DIExpression()), !dbg !1491
  %exitcond.not = icmp eq i64 %inc, %17, !dbg !1496
  br i1 %exitcond.not, label %for.end, label %for.body80, !dbg !1499, !llvm.loop !1533

for.end:                                          ; preds = %if.end152, %if.end128.us, %if.end74
  %call153 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call63, ptr noundef %exception) #14, !dbg !1543
  %cmp154 = icmp ne i32 %call153, 0, !dbg !1545
  %spec.select = zext i1 %cmp154 to i32, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1361, metadata !DIExpression()), !dbg !1376
  %33 = load ptr, ptr %progress_monitor, align 8, !dbg !1547, !tbaa !1081
  %cmp158.not = icmp eq ptr %33, null, !dbg !1548
  br i1 %cmp158.not, label %cleanup, label %SetImageProgress.exit, !dbg !1549

SetImageProgress.exit:                            ; preds = %for.end
  %inc161 = add nsw i64 %progress.0251, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %inc161, metadata !1362, metadata !DIExpression()), !dbg !1376
  %34 = load i64, ptr %rows, align 8, !dbg !1551, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1552
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %progress.0251, metadata !1093, metadata !DIExpression()) #13, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %34, metadata !1094, metadata !DIExpression()) #13, !dbg !1552
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1554
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1555
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !1556
  %35 = load ptr, ptr %progress_monitor, align 8, !dbg !1557, !tbaa !1081
  %36 = load ptr, ptr %client_data.i, align 8, !dbg !1558, !tbaa !1103
  %call4.i = call i32 %35(ptr noundef nonnull %message.i, i64 noundef %progress.0251, i64 noundef %34, ptr noundef %36) #13, !dbg !1559
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1373, metadata !DIExpression()), !dbg !1561
  %cmp164 = icmp eq i32 %call4.i, 0, !dbg !1562
  %spec.select229 = select i1 %cmp164, i32 0, i32 %spec.select, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %spec.select229, metadata !1361, metadata !DIExpression()), !dbg !1376
  br label %cleanup, !dbg !1565

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end69, %for.body
  %progress.2 = phi i64 [ %progress.0251, %for.body ], [ %progress.0251, %if.end69 ], [ %inc161, %SetImageProgress.exit ], [ %progress.0251, %for.end ], !dbg !1376
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end69 ], [ %spec.select229, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !1376
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1361, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1362, metadata !DIExpression()), !dbg !1376
  %inc172 = add nuw nsw i64 %y.0253, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %inc172, metadata !1366, metadata !DIExpression()), !dbg !1376
  %37 = load i64, ptr %rows, align 8, !dbg !1483, !tbaa !909
  %cmp64 = icmp slt i64 %inc172, %37, !dbg !1484
  br i1 %cmp64, label %for.body, label %for.end173, !dbg !1485, !llvm.loop !1567

for.end173:                                       ; preds = %cleanup, %if.end62
  %status.0.lcssa = phi i32 [ 1, %if.end62 ], [ %status.4, %cleanup ], !dbg !1569
  %call174 = call ptr @DestroyCacheView(ptr noundef %call63) #13, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %call174, metadata !1351, metadata !DIExpression()), !dbg !1376
  br label %cleanup175, !dbg !1571

cleanup175:                                       ; preds = %if.end3, %if.end, %for.end173
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end173 ], [ 1, %if.end ], [ 0, %if.end3 ], !dbg !1376
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %threshold) #13, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !1572
  ret i32 %retval.0, !dbg !1572
}

declare !dbg !1573 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ClampImage(ptr noundef %image) local_unnamed_addr #0 !dbg !1577 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1581, metadata !DIExpression()), !dbg !1583
  %call = tail call i32 @ClampImageChannel(ptr noundef %image, i32 noundef 134217719), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %call, metadata !1582, metadata !DIExpression()), !dbg !1583
  ret i32 %call, !dbg !1585
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ClampImageChannel(ptr noundef %image, i32 noundef %channel) local_unnamed_addr #0 !dbg !1586 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1590, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1591, metadata !DIExpression()), !dbg !1610
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1611
  %0 = load i32, ptr %debug, align 8, !dbg !1611, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !1613
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1614

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1615
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 783, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1616
  br label %if.end, !dbg !1617

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !1618, !tbaa !1619
  %cmp1 = icmp eq i32 %1, 2, !dbg !1620
  br i1 %cmp1, label %for.cond.preheader, label %if.end16, !dbg !1621

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !1600, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 undef, metadata !1597, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 undef, metadata !1600, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1622
  call void @llvm.dbg.value(metadata i32 undef, metadata !1597, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1622
  %call15 = tail call i32 @SyncImage(ptr noundef nonnull %image) #13, !dbg !1623
  br label %cleanup119

if.end16:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1594, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1610
  %exception17 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1624
  call void @llvm.dbg.value(metadata ptr %exception17, metadata !1593, metadata !DIExpression()), !dbg !1610
  %call18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception17) #13, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1592, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1610
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 1, metadata !1594, metadata !DIExpression()), !dbg !1610
  %2 = load i64, ptr %rows, align 8, !dbg !1626, !tbaa !909
  %cmp20185 = icmp sgt i64 %2, 0, !dbg !1627
  br i1 %cmp20185, label %for.body22.lr.ph, label %for.end117, !dbg !1628

for.body22.lr.ph:                                 ; preds = %if.end16
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body22, !dbg !1628

for.body22:                                       ; preds = %for.body22.lr.ph, %cleanup
  %y.0188 = phi i64 [ 0, %for.body22.lr.ph ], [ %inc116, %cleanup ]
  %progress.0187 = phi i64 [ 0, %for.body22.lr.ph ], [ %progress.2, %cleanup ]
  %status.0186 = phi i32 [ 1, %for.body22.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0188, metadata !1596, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %progress.0187, metadata !1595, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %status.0186, metadata !1594, metadata !DIExpression()), !dbg !1610
  %cmp24 = icmp eq i32 %status.0186, 0, !dbg !1629
  br i1 %cmp24, label %cleanup, label %if.end27, !dbg !1631

if.end27:                                         ; preds = %for.body22
  %3 = load i64, ptr %columns, align 8, !dbg !1632, !tbaa !917
  %call28 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call18, i64 noundef 0, i64 noundef %y.0188, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %exception17) #14, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1606, metadata !DIExpression()), !dbg !1634
  %cmp29 = icmp eq ptr %call28, null, !dbg !1635
  br i1 %cmp29, label %cleanup, label %if.end32, !dbg !1637

if.end32:                                         ; preds = %if.end27
  %call33 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call18) #13, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1601, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 undef, metadata !1606, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 undef, metadata !1605, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 undef, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1634
  call void @llvm.dbg.value(metadata i32 undef, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1634
  %call97 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call18, ptr noundef nonnull %exception17) #14, !dbg !1639
  %cmp98 = icmp ne i32 %call97, 0, !dbg !1641
  %spec.select = zext i1 %cmp98 to i32, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1594, metadata !DIExpression()), !dbg !1610
  %4 = load ptr, ptr %progress_monitor, align 8, !dbg !1643, !tbaa !1081
  %cmp102.not = icmp eq ptr %4, null, !dbg !1644
  br i1 %cmp102.not, label %cleanup, label %SetImageProgress.exit, !dbg !1645

SetImageProgress.exit:                            ; preds = %if.end32
  %inc105 = add nsw i64 %progress.0187, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !1595, metadata !DIExpression()), !dbg !1610
  %5 = load i64, ptr %rows, align 8, !dbg !1647, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !1648
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !1092, metadata !DIExpression()) #13, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %progress.0187, metadata !1093, metadata !DIExpression()) #13, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %5, metadata !1094, metadata !DIExpression()) #13, !dbg !1648
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !1651
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename.i) #13, !dbg !1652
  %6 = load ptr, ptr %progress_monitor, align 8, !dbg !1653, !tbaa !1081
  %7 = load ptr, ptr %client_data.i, align 8, !dbg !1654, !tbaa !1103
  %call4.i = call i32 %6(ptr noundef nonnull %message.i, i64 noundef %progress.0187, i64 noundef %5, ptr noundef %7) #13, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1607, metadata !DIExpression()), !dbg !1657
  %cmp108 = icmp eq i32 %call4.i, 0, !dbg !1658
  %spec.select176 = select i1 %cmp108, i32 0, i32 %spec.select, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %spec.select176, metadata !1594, metadata !DIExpression()), !dbg !1610
  br label %cleanup, !dbg !1661

cleanup:                                          ; preds = %if.end32, %SetImageProgress.exit, %if.end27, %for.body22
  %status.4 = phi i32 [ 0, %for.body22 ], [ 0, %if.end27 ], [ %spec.select176, %SetImageProgress.exit ], [ %spec.select, %if.end32 ], !dbg !1610
  %progress.2 = phi i64 [ %progress.0187, %for.body22 ], [ %progress.0187, %if.end27 ], [ %inc105, %SetImageProgress.exit ], [ %progress.0187, %if.end32 ], !dbg !1610
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1595, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1594, metadata !DIExpression()), !dbg !1610
  %inc116 = add nuw nsw i64 %y.0188, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !1596, metadata !DIExpression()), !dbg !1610
  %8 = load i64, ptr %rows, align 8, !dbg !1626, !tbaa !909
  %cmp20 = icmp slt i64 %inc116, %8, !dbg !1627
  br i1 %cmp20, label %for.body22, label %for.end117, !dbg !1628, !llvm.loop !1663

for.end117:                                       ; preds = %cleanup, %if.end16
  %status.0.lcssa = phi i32 [ 1, %if.end16 ], [ %status.4, %cleanup ], !dbg !1665
  %call118 = call ptr @DestroyCacheView(ptr noundef %call18) #13, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %call118, metadata !1592, metadata !DIExpression()), !dbg !1610
  br label %cleanup119, !dbg !1667

cleanup119:                                       ; preds = %for.end117, %for.cond.preheader
  %retval.0 = phi i32 [ %call15, %for.cond.preheader ], [ %status.0.lcssa, %for.end117 ], !dbg !1610
  ret i32 %retval.0, !dbg !1668
}

declare !dbg !1669 i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyThresholdMap(ptr noundef %map) local_unnamed_addr #0 !dbg !1670 {
entry:
  call void @llvm.dbg.value(metadata ptr %map, metadata !1674, metadata !DIExpression()), !dbg !1675
  %0 = load ptr, ptr %map, align 8, !dbg !1676, !tbaa !1678
  %cmp.not = icmp eq ptr %0, null, !dbg !1680
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1681

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroyString(ptr noundef nonnull %0) #13, !dbg !1682
  store ptr %call, ptr %map, align 8, !dbg !1683, !tbaa !1678
  br label %if.end, !dbg !1684

if.end:                                           ; preds = %if.then, %entry
  %description = getelementptr inbounds %struct._ThresholdMap, ptr %map, i64 0, i32 1, !dbg !1685
  %1 = load ptr, ptr %description, align 8, !dbg !1685, !tbaa !1687
  %cmp3.not = icmp eq ptr %1, null, !dbg !1688
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1689

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #13, !dbg !1690
  store ptr %call6, ptr %description, align 8, !dbg !1691, !tbaa !1687
  br label %if.end8, !dbg !1692

if.end8:                                          ; preds = %if.then4, %if.end
  %levels = getelementptr inbounds %struct._ThresholdMap, ptr %map, i64 0, i32 5, !dbg !1693
  %2 = load ptr, ptr %levels, align 8, !dbg !1693, !tbaa !1695
  %cmp9.not = icmp eq ptr %2, null, !dbg !1696
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1697

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %2) #13, !dbg !1698
  store ptr %call12, ptr %levels, align 8, !dbg !1699, !tbaa !1695
  br label %if.end14, !dbg !1700

if.end14:                                         ; preds = %if.then10, %if.end8
  %call15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %map) #13, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1674, metadata !DIExpression()), !dbg !1675
  ret ptr %call15, !dbg !1702
}

declare !dbg !1703 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1706 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetThresholdMapFile(ptr noundef %xml, ptr noundef %filename, ptr noundef %map_id, ptr noundef %exception) local_unnamed_addr #0 !dbg !1710 {
entry:
  %exception37 = alloca %struct._ExceptionInfo, align 8
  %exception119 = alloca %struct._ExceptionInfo, align 8
  %p = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1714, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1715, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %map_id, metadata !1716, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1717, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1737
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 953, ptr noundef nonnull @.str.5, ptr noundef %filename) #13, !dbg !1738
  %call1 = tail call ptr @NewXMLTree(ptr noundef %xml, ptr noundef %exception) #13, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1725, metadata !DIExpression()), !dbg !1737
  %cmp = icmp eq ptr %call1, null, !dbg !1740
  br i1 %cmp, label %cleanup167, label %if.end, !dbg !1742

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %call1, ptr noundef nonnull @.str.6) #13, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1724, metadata !DIExpression()), !dbg !1737
  %cond299311 = icmp eq ptr %call2, null, !dbg !1745
  br i1 %cond299311, label %if.then19, label %for.body, !dbg !1745

for.body:                                         ; preds = %if.end, %for.inc
  %threshold.0312 = phi ptr [ %call17, %for.inc ], [ %call2, %if.end ]
  call void @llvm.dbg.value(metadata ptr %threshold.0312, metadata !1724, metadata !DIExpression()), !dbg !1737
  %call4 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %threshold.0312, ptr noundef nonnull @.str.7) #13, !dbg !1746
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp5.not = icmp eq ptr %call4, null, !dbg !1749
  br i1 %cmp5.not, label %if.end9, label %land.lhs.true, !dbg !1751

land.lhs.true:                                    ; preds = %for.body
  %call6 = tail call i32 @LocaleCompare(ptr noundef %map_id, ptr noundef nonnull %call4) #13, !dbg !1752
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1753
  br i1 %cmp7, label %if.end21, label %if.end9, !dbg !1754

if.end9:                                          ; preds = %land.lhs.true, %for.body
  %call10 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %threshold.0312, ptr noundef nonnull @.str.8) #13, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp11.not = icmp eq ptr %call10, null, !dbg !1756
  br i1 %cmp11.not, label %for.inc, label %land.lhs.true12, !dbg !1758

land.lhs.true12:                                  ; preds = %if.end9
  %call13 = tail call i32 @LocaleCompare(ptr noundef %map_id, ptr noundef nonnull %call10) #13, !dbg !1759
  %cmp14 = icmp eq i32 %call13, 0, !dbg !1760
  br i1 %cmp14, label %if.end21, label %for.inc, !dbg !1761

for.inc:                                          ; preds = %if.end9, %land.lhs.true12
  %call17 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %threshold.0312) #13, !dbg !1762
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1724, metadata !DIExpression()), !dbg !1737
  %cond299 = icmp eq ptr %call17, null, !dbg !1745
  br i1 %cond299, label %if.then19, label %for.body, !dbg !1745, !llvm.loop !1763

if.then19:                                        ; preds = %for.inc, %if.end
  %call20 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1725, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1768

if.end21:                                         ; preds = %land.lhs.true, %land.lhs.true12
  %call22 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %threshold.0312, ptr noundef nonnull @.str.9) #13, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1722, metadata !DIExpression()), !dbg !1737
  %cmp23 = icmp eq ptr %call22, null, !dbg !1770
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !1772

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 977, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %map_id) #13, !dbg !1773
  %call26 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1725, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1776

if.end27:                                         ; preds = %if.end21
  %call28 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %threshold.0312, ptr noundef nonnull @.str.12) #13, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1723, metadata !DIExpression()), !dbg !1737
  %cmp29 = icmp eq ptr %call28, null, !dbg !1778
  br i1 %cmp29, label %if.then30, label %if.end33, !dbg !1780

if.then30:                                        ; preds = %if.end27
  %call31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef %map_id) #13, !dbg !1781
  %call32 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1725, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1784

if.end33:                                         ; preds = %if.end27
  %call34 = tail call ptr @AcquireMagickMemory(i64 noundef 48) #15, !dbg !1785
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1721, metadata !DIExpression()), !dbg !1737
  %cmp35 = icmp eq ptr %call34, null, !dbg !1786
  br i1 %cmp35, label %if.then36, label %if.end43, !dbg !1787

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception37) #13, !dbg !1788
  call void @llvm.dbg.declare(metadata ptr %exception37, metadata !1729, metadata !DIExpression()), !dbg !1788
  call void @GetExceptionInfo(ptr noundef nonnull %exception37) #13, !dbg !1788
  %call38 = tail call ptr @__errno_location() #16, !dbg !1788
  %0 = load i32, ptr %call38, align 4, !dbg !1788, !tbaa !1789
  %call39 = call ptr @GetExceptionMessage(i32 noundef %0) #13, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1726, metadata !DIExpression()), !dbg !1790
  %call40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %call39) #13, !dbg !1788
  %call41 = call ptr @DestroyString(ptr noundef %call39) #13, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1726, metadata !DIExpression()), !dbg !1790
  call void @CatchException(ptr noundef nonnull %exception37) #13, !dbg !1788
  %call42 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception37) #13, !dbg !1788
  call void @MagickCoreTerminus() #13, !dbg !1788
  call void @_exit(i32 noundef 1) #17, !dbg !1788
  unreachable, !dbg !1788

if.end43:                                         ; preds = %if.end33
  %description45 = getelementptr inbounds %struct._ThresholdMap, ptr %call34, i64 0, i32 1, !dbg !1791
  %levels46 = getelementptr inbounds %struct._ThresholdMap, ptr %call34, i64 0, i32 5, !dbg !1792
  store ptr null, ptr %levels46, align 8, !dbg !1793, !tbaa !1695
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call34, i8 0, i64 16, i1 false), !dbg !1794
  %call47 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %threshold.0312, ptr noundef nonnull @.str.7) #13, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp48.not = icmp eq ptr %call47, null, !dbg !1796
  br i1 %cmp48.not, label %if.end52, label %if.then49, !dbg !1798

if.then49:                                        ; preds = %if.end43
  %call50 = tail call ptr @ConstantString(ptr noundef nonnull %call47) #13, !dbg !1799
  store ptr %call50, ptr %call34, align 8, !dbg !1800, !tbaa !1678
  br label %if.end52, !dbg !1801

if.end52:                                         ; preds = %if.then49, %if.end43
  %call53 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %call22) #13, !dbg !1802
  call void @llvm.dbg.value(metadata ptr %call53, metadata !1719, metadata !DIExpression()), !dbg !1737
  %cmp54.not = icmp eq ptr %call53, null, !dbg !1803
  br i1 %cmp54.not, label %if.end58, label %if.then55, !dbg !1805

if.then55:                                        ; preds = %if.end52
  %call56 = tail call ptr @ConstantString(ptr noundef nonnull %call53) #13, !dbg !1806
  store ptr %call56, ptr %description45, align 8, !dbg !1807, !tbaa !1687
  br label %if.end58, !dbg !1808

if.end58:                                         ; preds = %if.then55, %if.end52
  %call59 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %call28, ptr noundef nonnull @.str.16) #13, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp60 = icmp eq ptr %call59, null, !dbg !1810
  br i1 %cmp60, label %if.then61, label %if.end65, !dbg !1812

if.then61:                                        ; preds = %if.end58
  %call62 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %map_id) #13, !dbg !1813
  %call63 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %call63, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1674, metadata !DIExpression()) #13, !dbg !1816
  %1 = load ptr, ptr %call34, align 8, !dbg !1818, !tbaa !1678
  %cmp.not.i = icmp eq ptr %1, null, !dbg !1819
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1820

if.then.i:                                        ; preds = %if.then61
  %call.i = tail call ptr @DestroyString(ptr noundef nonnull %1) #13, !dbg !1821
  store ptr %call.i, ptr %call34, align 8, !dbg !1822, !tbaa !1678
  br label %if.end.i, !dbg !1823

if.end.i:                                         ; preds = %if.then.i, %if.then61
  %2 = load ptr, ptr %description45, align 8, !dbg !1824, !tbaa !1687
  %cmp3.not.i = icmp eq ptr %2, null, !dbg !1825
  br i1 %cmp3.not.i, label %if.end8.i, label %if.then4.i, !dbg !1826

if.then4.i:                                       ; preds = %if.end.i
  %call6.i = tail call ptr @DestroyString(ptr noundef nonnull %2) #13, !dbg !1827
  store ptr %call6.i, ptr %description45, align 8, !dbg !1828, !tbaa !1687
  br label %if.end8.i, !dbg !1829

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i
  %3 = load ptr, ptr %levels46, align 8, !dbg !1830, !tbaa !1695
  %cmp9.not.i = icmp eq ptr %3, null, !dbg !1831
  br i1 %cmp9.not.i, label %DestroyThresholdMap.exit, label %if.then10.i, !dbg !1832

if.then10.i:                                      ; preds = %if.end8.i
  %call12.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #13, !dbg !1833
  store ptr %call12.i, ptr %levels46, align 8, !dbg !1834, !tbaa !1695
  br label %DestroyThresholdMap.exit, !dbg !1835

DestroyThresholdMap.exit:                         ; preds = %if.end8.i, %if.then10.i
  %call15.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call34) #13, !dbg !1836
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !1674, metadata !DIExpression()) #13, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1837

if.end65:                                         ; preds = %if.end58
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1838, metadata !DIExpression()) #13, !dbg !1845
  %call.i300 = tail call i64 @strtoul(ptr nocapture noundef nonnull %call59, ptr noundef null, i32 noundef 10) #13, !dbg !1847
  %width = getelementptr inbounds %struct._ThresholdMap, ptr %call34, i64 0, i32 2, !dbg !1848
  store i64 %call.i300, ptr %width, align 8, !dbg !1849, !tbaa !1850
  %cmp68 = icmp eq i64 %call.i300, 0, !dbg !1851
  br i1 %cmp68, label %if.then69, label %if.end73, !dbg !1853

if.then69:                                        ; preds = %if.end65
  %call70 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1020, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %map_id) #13, !dbg !1854
  %call71 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1856
  call void @llvm.dbg.value(metadata ptr %call71, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call72 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1857
  call void @llvm.dbg.value(metadata ptr %call72, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1858

if.end73:                                         ; preds = %if.end65
  %call74 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %call28, ptr noundef nonnull @.str.20) #13, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp75 = icmp eq ptr %call74, null, !dbg !1860
  br i1 %cmp75, label %if.then76, label %if.end80, !dbg !1862

if.then76:                                        ; preds = %if.end73
  %call77 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, ptr noundef %map_id) #13, !dbg !1863
  %call78 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %call78, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call79 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %call79, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1867

if.end80:                                         ; preds = %if.end73
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1838, metadata !DIExpression()) #13, !dbg !1868
  %call.i301 = tail call i64 @strtoul(ptr nocapture noundef nonnull %call74, ptr noundef null, i32 noundef 10) #13, !dbg !1870
  %height = getelementptr inbounds %struct._ThresholdMap, ptr %call34, i64 0, i32 3, !dbg !1871
  store i64 %call.i301, ptr %height, align 8, !dbg !1872, !tbaa !1873
  %cmp83 = icmp eq i64 %call.i301, 0, !dbg !1874
  br i1 %cmp83, label %if.then84, label %if.end88, !dbg !1876

if.then84:                                        ; preds = %if.end80
  %call85 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1038, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, ptr noundef %map_id) #13, !dbg !1877
  %call86 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1879
  call void @llvm.dbg.value(metadata ptr %call86, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call87 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1880
  call void @llvm.dbg.value(metadata ptr %call87, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1881

if.end88:                                         ; preds = %if.end80
  %call89 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %call28, ptr noundef nonnull @.str.22) #13, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %call89, metadata !1718, metadata !DIExpression()), !dbg !1737
  %cmp90 = icmp eq ptr %call89, null, !dbg !1883
  br i1 %cmp90, label %if.then91, label %if.end95, !dbg !1885

if.then91:                                        ; preds = %if.end88
  %call92 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23, ptr noundef %map_id) #13, !dbg !1886
  %call93 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %call93, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call94 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %call94, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1890

if.end95:                                         ; preds = %if.end88
  call void @llvm.dbg.value(metadata ptr %call89, metadata !1891, metadata !DIExpression()) #13, !dbg !1896
  %call.i302 = tail call i64 @strtol(ptr nocapture noundef nonnull %call89, ptr noundef null, i32 noundef 10) #13, !dbg !1898
  %divisor = getelementptr inbounds %struct._ThresholdMap, ptr %call34, i64 0, i32 4, !dbg !1899
  store i64 %call.i302, ptr %divisor, align 8, !dbg !1900, !tbaa !1901
  %cmp98 = icmp slt i64 %call.i302, 2, !dbg !1902
  br i1 %cmp98, label %if.then99, label %if.end103, !dbg !1904

if.then99:                                        ; preds = %if.end95
  %call100 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1056, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, ptr noundef %map_id) #13, !dbg !1905
  %call101 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %call101, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call102 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1908
  call void @llvm.dbg.value(metadata ptr %call102, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1909

if.end103:                                        ; preds = %if.end95
  %call104 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %call28) #13, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %call104, metadata !1719, metadata !DIExpression()), !dbg !1737
  %cmp105 = icmp eq ptr %call104, null, !dbg !1911
  br i1 %cmp105, label %if.then106, label %if.end110, !dbg !1913

if.then106:                                       ; preds = %if.end103
  %call107 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1068, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, ptr noundef %map_id) #13, !dbg !1914
  %call108 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1725, metadata !DIExpression()), !dbg !1737
  %call109 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %call109, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1918

if.end110:                                        ; preds = %if.end103
  %4 = load i64, ptr %width, align 8, !dbg !1919, !tbaa !1850
  %5 = load i64, ptr %height, align 8, !dbg !1920, !tbaa !1873
  %mul = shl i64 %5, 3, !dbg !1921
  %call113 = tail call ptr @AcquireQuantumMemory(i64 noundef %4, i64 noundef %mul) #18, !dbg !1922
  store ptr %call113, ptr %levels46, align 8, !dbg !1923, !tbaa !1695
  %cmp116 = icmp eq ptr %call113, null, !dbg !1924
  br i1 %cmp116, label %if.then117, label %if.end125, !dbg !1925

if.then117:                                       ; preds = %if.end110
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception119) #13, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %exception119, metadata !1733, metadata !DIExpression()), !dbg !1926
  call void @GetExceptionInfo(ptr noundef nonnull %exception119) #13, !dbg !1926
  %call120 = tail call ptr @__errno_location() #16, !dbg !1926
  %6 = load i32, ptr %call120, align 4, !dbg !1926, !tbaa !1789
  %call121 = call ptr @GetExceptionMessage(i32 noundef %6) #13, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %call121, metadata !1730, metadata !DIExpression()), !dbg !1927
  %call122 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception119, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1077, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %call121) #13, !dbg !1926
  %call123 = call ptr @DestroyString(ptr noundef %call121) #13, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %call123, metadata !1730, metadata !DIExpression()), !dbg !1927
  call void @CatchException(ptr noundef nonnull %exception119) #13, !dbg !1926
  %call124 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception119) #13, !dbg !1926
  call void @MagickCoreTerminus() #13, !dbg !1926
  call void @_exit(i32 noundef 1) #17, !dbg !1926
  unreachable, !dbg !1926

if.end125:                                        ; preds = %if.end110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #13, !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1736, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call104, metadata !1719, metadata !DIExpression()), !dbg !1737
  %7 = load i64, ptr %width, align 8, !dbg !1930, !tbaa !1850
  %8 = load i64, ptr %height, align 8, !dbg !1933, !tbaa !1873
  %mul129314 = mul i64 %8, %7, !dbg !1934
  %cmp130315 = icmp sgt i64 %mul129314, 0, !dbg !1935
  br i1 %cmp130315, label %for.body131, label %for.end155, !dbg !1936

for.cond126:                                      ; preds = %lor.lhs.false
  %inc = add nuw nsw i64 %i.0317, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %i.0317, metadata !1736, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %12, metadata !1719, metadata !DIExpression()), !dbg !1737
  %9 = load i64, ptr %width, align 8, !dbg !1930, !tbaa !1850
  %10 = load i64, ptr %height, align 8, !dbg !1933, !tbaa !1873
  %mul129 = mul i64 %10, %9, !dbg !1934
  %cmp130 = icmp slt i64 %inc, %mul129, !dbg !1935
  br i1 %cmp130, label %for.body131, label %for.end155, !dbg !1936, !llvm.loop !1938

for.body131:                                      ; preds = %if.end125, %for.cond126
  %i.0317 = phi i64 [ %inc, %for.cond126 ], [ 0, %if.end125 ]
  %content.0316 = phi ptr [ %12, %for.cond126 ], [ %call104, %if.end125 ]
  call void @llvm.dbg.value(metadata i64 %i.0317, metadata !1736, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %content.0316, metadata !1719, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %p, metadata !1734, metadata !DIExpression(DW_OP_deref)), !dbg !1929
  %call132 = call i64 @strtol(ptr noundef %content.0316, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !1940
  %11 = load ptr, ptr %levels46, align 8, !dbg !1942, !tbaa !1695
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %i.0317, !dbg !1943
  store i64 %call132, ptr %arrayidx, align 8, !dbg !1944, !tbaa !1945
  %12 = load ptr, ptr %p, align 8, !dbg !1946, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %12, metadata !1734, metadata !DIExpression()), !dbg !1929
  %cmp134 = icmp eq ptr %12, %content.0316, !dbg !1949
  br i1 %cmp134, label %if.then135, label %if.end139, !dbg !1950

if.then135:                                       ; preds = %for.body131
  %call136 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1093, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %map_id) #13, !dbg !1951
  call void @llvm.dbg.value(metadata ptr %call137, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %call138, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup.thread, !dbg !1953

if.end139:                                        ; preds = %for.body131
  %cmp142 = icmp slt i64 %call132, 0, !dbg !1954
  br i1 %cmp142, label %if.then147, label %lor.lhs.false, !dbg !1956

lor.lhs.false:                                    ; preds = %if.end139
  %13 = load i64, ptr %divisor, align 8, !dbg !1957, !tbaa !1901
  %cmp146 = icmp sgt i64 %call132, %13, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %12, metadata !1719, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %i.0317, metadata !1736, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1929
  br i1 %cmp146, label %if.then147, label %for.cond126, !dbg !1959

if.then147:                                       ; preds = %lor.lhs.false, %if.end139
  %conv = sitofp i64 %call132 to double, !dbg !1960
  %call150 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1101, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, double noundef %conv, ptr noundef %map_id) #13, !dbg !1962
  call void @llvm.dbg.value(metadata ptr undef, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr undef, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup.thread, !dbg !1963

for.end155:                                       ; preds = %for.cond126, %if.end125
  %content.0.lcssa = phi ptr [ %call104, %if.end125 ], [ %12, %for.cond126 ], !dbg !1737
  call void @llvm.dbg.value(metadata ptr %p, metadata !1734, metadata !DIExpression(DW_OP_deref)), !dbg !1929
  %call156 = call i64 @strtol(ptr noundef %content.0.lcssa, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !1964
  call void @llvm.dbg.value(metadata double undef, metadata !1720, metadata !DIExpression()), !dbg !1737
  %14 = load ptr, ptr %p, align 8, !dbg !1965, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %14, metadata !1734, metadata !DIExpression()), !dbg !1929
  %cmp158.not = icmp eq ptr %14, %content.0.lcssa, !dbg !1967
  br i1 %cmp158.not, label %cleanup.cont, label %if.then160, !dbg !1968

if.then160:                                       ; preds = %for.end155
  %call161 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1114, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef %map_id) #13, !dbg !1969
  call void @llvm.dbg.value(metadata ptr undef, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr undef, metadata !1721, metadata !DIExpression()), !dbg !1737
  br label %cleanup.thread, !dbg !1971

cleanup.thread:                                   ; preds = %if.then135, %if.then147, %if.then160
  %call137 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1929
  %call138 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %call34), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1721, metadata !DIExpression()), !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #13, !dbg !1972
  br label %cleanup167

cleanup.cont:                                     ; preds = %for.end155
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1725, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1721, metadata !DIExpression()), !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #13, !dbg !1972
  %call166 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %call166, metadata !1725, metadata !DIExpression()), !dbg !1737
  br label %cleanup167, !dbg !1974

cleanup167:                                       ; preds = %cleanup.thread, %entry, %cleanup.cont, %if.then106, %if.then99, %if.then91, %if.then84, %if.then76, %if.then69, %DestroyThresholdMap.exit, %if.then30, %if.then24, %if.then19
  %retval.1 = phi ptr [ null, %if.then19 ], [ null, %if.then24 ], [ null, %if.then30 ], [ %call15.i, %DestroyThresholdMap.exit ], [ %call72, %if.then69 ], [ %call79, %if.then76 ], [ %call87, %if.then84 ], [ %call94, %if.then91 ], [ %call102, %if.then99 ], [ %call109, %if.then106 ], [ %call34, %cleanup.cont ], [ null, %entry ], [ %call138, %cleanup.thread ], !dbg !1737
  ret ptr %retval.1, !dbg !1975
}

declare !dbg !1976 ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1979 ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1982 ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1985 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1988 ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #3

declare !dbg !1991 ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #3

declare !dbg !1992 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1996 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

declare !dbg !1999 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2002 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare !dbg !2006 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !2007 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2010 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

declare !dbg !2014 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare !dbg !2017 ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !2020 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @GetThresholdMap(ptr noundef %map_id, ptr noundef %exception) local_unnamed_addr #0 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata ptr %map_id, metadata !2027, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2028, metadata !DIExpression()), !dbg !2036
  %call = tail call ptr @GetThresholdMapFile(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.29, ptr noundef %map_id, ptr noundef %exception), !dbg !2037
  call void @llvm.dbg.value(metadata ptr %call, metadata !2035, metadata !DIExpression()), !dbg !2036
  %cmp.not = icmp eq ptr %call, null, !dbg !2038
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !2040

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %exception) #13, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2030, metadata !DIExpression()), !dbg !2036
  %call2 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call1) #13, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr null, metadata !2035, metadata !DIExpression()), !dbg !2036
  %cmp3.not24 = icmp eq ptr %call2, null, !dbg !2043
  br i1 %cmp3.not24, label %while.end, label %while.body, !dbg !2044

while.body:                                       ; preds = %if.end, %if.end9
  %option.025 = phi ptr [ %call10, %if.end9 ], [ %call2, %if.end ]
  call void @llvm.dbg.value(metadata ptr %option.025, metadata !2029, metadata !DIExpression()), !dbg !2036
  %call4 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.025) #13, !dbg !2045
  %call5 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.025) #13, !dbg !2047
  %call6 = tail call ptr @GetThresholdMapFile(ptr noundef %call4, ptr noundef %call5, ptr noundef %map_id, ptr noundef %exception), !dbg !2048
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2035, metadata !DIExpression()), !dbg !2036
  %cmp7.not = icmp eq ptr %call6, null, !dbg !2049
  br i1 %cmp7.not, label %if.end9, label %while.end, !dbg !2051

if.end9:                                          ; preds = %while.body
  %call10 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call1) #13, !dbg !2052
  call void @llvm.dbg.value(metadata ptr null, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2029, metadata !DIExpression()), !dbg !2036
  %cmp3.not = icmp eq ptr %call10, null, !dbg !2043
  br i1 %cmp3.not, label %while.end, label %while.body, !dbg !2044, !llvm.loop !2053

while.end:                                        ; preds = %if.end9, %while.body, %if.end
  %map.1 = phi ptr [ null, %if.end ], [ %call6, %while.body ], [ null, %if.end9 ], !dbg !2036
  call void @llvm.dbg.value(metadata ptr %map.1, metadata !2035, metadata !DIExpression()), !dbg !2036
  %call11 = tail call ptr @DestroyConfigureOptions(ptr noundef %call1) #13, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2030, metadata !DIExpression()), !dbg !2036
  br label %cleanup, !dbg !2056

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi ptr [ %map.1, %while.end ], [ %call, %entry ], !dbg !2036
  ret ptr %retval.0, !dbg !2057
}

declare !dbg !2058 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2062 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !2065 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !2068 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #3

declare !dbg !2071 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ListThresholdMapFile(ptr noundef %file, ptr noundef %xml, ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !2078, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2079, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2080, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2081, metadata !DIExpression()), !dbg !2088
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1219, ptr noundef nonnull @.str.5, ptr noundef %filename) #13, !dbg !2089
  %call1 = tail call ptr @NewXMLTree(ptr noundef %xml, ptr noundef %exception) #13, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2082, metadata !DIExpression()), !dbg !2088
  %cmp = icmp eq ptr %call1, null, !dbg !2091
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2093

if.end:                                           ; preds = %entry
  %call2 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #13, !dbg !2094
  %call3 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.35) #13, !dbg !2095
  %call4 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %call1, ptr noundef nonnull @.str.6) #13, !dbg !2096
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2083, metadata !DIExpression()), !dbg !2088
  %cmp5.not55 = icmp eq ptr %call4, null, !dbg !2098
  br i1 %cmp5.not55, label %cleanup.sink.split, label %for.body, !dbg !2100

for.body:                                         ; preds = %if.end, %if.end24
  %threshold.056 = phi ptr [ %call26, %if.end24 ], [ %call4, %if.end ]
  call void @llvm.dbg.value(metadata ptr %threshold.056, metadata !2083, metadata !DIExpression()), !dbg !2088
  %call6 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %threshold.056, ptr noundef nonnull @.str.7) #13, !dbg !2101
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2085, metadata !DIExpression()), !dbg !2088
  %cmp7 = icmp eq ptr %call6, null, !dbg !2103
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !2105

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1235, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.36) #13, !dbg !2106
  call void @llvm.dbg.value(metadata ptr undef, metadata !2082, metadata !DIExpression()), !dbg !2088
  br label %cleanup.sink.split, !dbg !2108

if.end11:                                         ; preds = %for.body
  %call12 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %threshold.056, ptr noundef nonnull @.str.8) #13, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2086, metadata !DIExpression()), !dbg !2088
  %call13 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %threshold.056, ptr noundef nonnull @.str.9) #13, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2084, metadata !DIExpression()), !dbg !2088
  %cmp14 = icmp eq ptr %call13, null, !dbg !2111
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !2113

if.then15:                                        ; preds = %if.end11
  %call16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1244, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %call6) #13, !dbg !2114
  call void @llvm.dbg.value(metadata ptr undef, metadata !2082, metadata !DIExpression()), !dbg !2088
  br label %cleanup.sink.split, !dbg !2116

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %call13) #13, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2087, metadata !DIExpression()), !dbg !2088
  %cmp20 = icmp eq ptr %call19, null, !dbg !2118
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !2120

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.11, ptr noundef nonnull %call6) #13, !dbg !2121
  call void @llvm.dbg.value(metadata ptr undef, metadata !2082, metadata !DIExpression()), !dbg !2088
  br label %cleanup.sink.split, !dbg !2123

if.end24:                                         ; preds = %if.end18
  %tobool.not = icmp eq ptr %call12, null, !dbg !2124
  %spec.select = select i1 %tobool.not, ptr @.str.1, ptr %call12, !dbg !2124
  %call25 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.31, ptr noundef nonnull %call6, ptr noundef %spec.select, ptr noundef nonnull %call19) #13, !dbg !2125
  %call26 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %threshold.056) #13, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %call26, metadata !2083, metadata !DIExpression()), !dbg !2088
  %cmp5.not = icmp eq ptr %call26, null, !dbg !2098
  br i1 %cmp5.not, label %cleanup.sink.split, label %for.body, !dbg !2100, !llvm.loop !2127

cleanup.sink.split:                               ; preds = %if.end24, %if.end, %if.then8, %if.then15, %if.then21
  %retval.0.ph = phi i32 [ 0, %if.then21 ], [ 0, %if.then15 ], [ 0, %if.then8 ], [ 1, %if.end ], [ 1, %if.end24 ]
  %call27 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %call1) #13, !dbg !2088
  br label %cleanup, !dbg !2129

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !2088
  ret i32 %retval.0, !dbg !2129
}

declare !dbg !2130 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ListThresholdMaps(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !2138, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %cmp = icmp eq ptr %file, null, !dbg !2144
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2138, metadata !DIExpression()), !dbg !2143
  %call = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %exception) #13, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %call, metadata !2141, metadata !DIExpression()), !dbg !2143
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.37) #13, !dbg !2148
  %call2 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call) #13, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %cmp3.not22 = icmp eq ptr %call2, null, !dbg !2150
  br i1 %cmp3.not22, label %while.end, label %while.body, !dbg !2151

while.body:                                       ; preds = %entry, %while.body
  %option.023 = phi ptr [ %call9, %while.body ], [ %call2, %entry ]
  call void @llvm.dbg.value(metadata ptr %option.023, metadata !2140, metadata !DIExpression()), !dbg !2143
  %call4 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.023) #13, !dbg !2152
  %call5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.38, ptr noundef %call4) #13, !dbg !2154
  %call6 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.023) #13, !dbg !2155
  %call7 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.023) #13, !dbg !2156
  %call8 = tail call i32 @ListThresholdMapFile(ptr noundef %spec.select, ptr noundef %call6, ptr noundef %call7, ptr noundef %exception), !dbg !2157
  call void @llvm.dbg.value(metadata i32 0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %call9 = tail call ptr @GetNextValueInLinkedList(ptr noundef %call) #13, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2140, metadata !DIExpression()), !dbg !2143
  %cmp3.not = icmp eq ptr %call9, null, !dbg !2150
  br i1 %cmp3.not, label %while.end, label %while.body, !dbg !2151, !llvm.loop !2159

while.end:                                        ; preds = %while.body, %entry
  %call10 = tail call ptr @DestroyConfigureOptions(ptr noundef %call) #13, !dbg !2161
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2141, metadata !DIExpression()), !dbg !2143
  ret i32 0, !dbg !2162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OrderedDitherImage(ptr noundef %image) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2165, metadata !DIExpression()), !dbg !2167
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2168
  call void @llvm.dbg.value(metadata ptr %image, metadata !2169, metadata !DIExpression()) #13, !dbg !2177
  call void @llvm.dbg.value(metadata i32 134217719, metadata !2174, metadata !DIExpression()) #13, !dbg !2177
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2175, metadata !DIExpression()) #13, !dbg !2177
  %call.i = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %image, i32 noundef 134217719, ptr noundef nonnull @.str.39, ptr noundef nonnull %exception) #13, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2176, metadata !DIExpression()) #13, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2166, metadata !DIExpression()), !dbg !2167
  ret i32 %call.i, !dbg !2180
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OrderedDitherImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %exception) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2169, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2175, metadata !DIExpression()), !dbg !2181
  %call = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef nonnull @.str.39, ptr noundef %exception), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %call, metadata !2176, metadata !DIExpression()), !dbg !2181
  ret i32 %call, !dbg !2183
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OrderedPosterizeImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %threshold_map, ptr noundef %exception) local_unnamed_addr #0 !dbg !2184 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %token = alloca [4096 x i8], align 16
  %p54 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2186, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2187, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr %threshold_map, metadata !2188, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2189, metadata !DIExpression()), !dbg !2226
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2227
  %0 = load i32, ptr %debug, align 8, !dbg !2227, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !2229
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2230

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2231
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1463, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !2232
  br label %if.end, !dbg !2233

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %threshold_map, null, !dbg !2234
  br i1 %cmp1, label %cleanup464, label %if.end3, !dbg !2236

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %token) #13, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %token, metadata !2204, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata ptr %threshold_map, metadata !2206, metadata !DIExpression()), !dbg !2239
  %call4 = tail call ptr @__ctype_b_loc() #16, !dbg !2226
  %1 = load ptr, ptr %call4, align 8, !tbaa !1948
  br label %while.cond, !dbg !2240

while.cond:                                       ; preds = %while.cond, %if.end3
  %p.0 = phi ptr [ %threshold_map, %if.end3 ], [ %incdec.ptr, %while.cond ], !dbg !2239
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2206, metadata !DIExpression()), !dbg !2239
  %2 = load i8, ptr %p.0, align 1, !dbg !2241, !tbaa !2242
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %3, !dbg !2241
  %4 = load i16, ptr %arrayidx, align 2, !dbg !2241, !tbaa !990
  %5 = and i16 %4, 8192, !dbg !2241
  %cmp6.not = icmp eq i16 %5, 0, !dbg !2243
  %cmp9 = icmp ne i8 %2, 44
  %or.cond = select i1 %cmp6.not, i1 %cmp9, i1 false, !dbg !2244
  %cmp12.not = icmp eq i8 %2, 0
  %or.cond666 = select i1 %or.cond, i1 true, i1 %cmp12.not, !dbg !2244
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !2245
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2206, metadata !DIExpression()), !dbg !2239
  br i1 %or.cond666, label %while.cond14.preheader, label %while.cond, !dbg !2244, !llvm.loop !2246

while.cond14.preheader:                           ; preds = %while.cond
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2206, metadata !DIExpression()), !dbg !2239
  %.fr667669 = freeze i16 %4
  %6 = and i16 %.fr667669, 8192, !dbg !2247
  %cmp21.not670 = icmp eq i16 %6, 0, !dbg !2248
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0 to i64
  br i1 %cmp21.not670, label %switch.early.test, label %while.end41, !dbg !2249

switch.early.test:                                ; preds = %while.cond14.preheader, %if.end35
  %7 = phi i8 [ %9, %if.end35 ], [ %2, %while.cond14.preheader ]
  %p.1671 = phi ptr [ %incdec.ptr40, %if.end35 ], [ %p.0, %while.cond14.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.1671, metadata !2206, metadata !DIExpression()), !dbg !2239
  switch i8 %7, label %while.body31 [
    i8 44, label %while.end41.loopexit
    i8 0, label %while.end41.loopexit
  ], !dbg !2249

while.body31:                                     ; preds = %switch.early.test
  %sub.ptr.lhs.cast = ptrtoint ptr %p.1671 to i64, !dbg !2250
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2250
  %cmp32 = icmp sgt i64 %sub.ptr.sub, 4094, !dbg !2253
  br i1 %cmp32, label %while.end41.loopexit, label %if.end35, !dbg !2254

if.end35:                                         ; preds = %while.body31
  %arrayidx39 = getelementptr inbounds [4096 x i8], ptr %token, i64 0, i64 %sub.ptr.sub, !dbg !2255
  store i8 %7, ptr %arrayidx39, align 1, !dbg !2256, !tbaa !2242
  %incdec.ptr40 = getelementptr inbounds i8, ptr %p.1671, i64 1, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %incdec.ptr40, metadata !2206, metadata !DIExpression()), !dbg !2239
  %8 = load ptr, ptr %call4, align 8, !dbg !2247, !tbaa !1948
  %9 = load i8, ptr %incdec.ptr40, align 1, !dbg !2247, !tbaa !2242
  %10 = zext i8 %9 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %8, i64 %10, !dbg !2247
  %11 = load i16, ptr %arrayidx18, align 2, !dbg !2247, !tbaa !990
  %.fr667 = freeze i16 %11
  %12 = and i16 %.fr667, 8192, !dbg !2247
  %cmp21.not = icmp eq i16 %12, 0, !dbg !2248
  br i1 %cmp21.not, label %switch.early.test, label %while.end41.loopexit, !dbg !2249, !llvm.loop !2258

while.end41.loopexit:                             ; preds = %switch.early.test, %switch.early.test, %if.end35, %while.body31
  %p.1.lcssa.ph = phi ptr [ %p.1671, %while.body31 ], [ %incdec.ptr40, %if.end35 ], [ %p.1671, %switch.early.test ], [ %p.1671, %switch.early.test ]
  %.pre685 = ptrtoint ptr %p.1.lcssa.ph to i64, !dbg !2261
  br label %while.end41, !dbg !2261

while.end41:                                      ; preds = %while.cond14.preheader, %while.end41.loopexit
  %sub.ptr.lhs.cast42.pre-phi = phi i64 [ %.pre685, %while.end41.loopexit ], [ %sub.ptr.rhs.cast, %while.cond14.preheader ], !dbg !2261
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42.pre-phi, %sub.ptr.rhs.cast, !dbg !2261
  %arrayidx45 = getelementptr inbounds [4096 x i8], ptr %token, i64 0, i64 %sub.ptr.sub44, !dbg !2262
  store i8 0, ptr %arrayidx45, align 1, !dbg !2263, !tbaa !2242
  %call47 = call ptr @GetThresholdMap(ptr noundef nonnull %token, ptr noundef %exception), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %call47, metadata !2203, metadata !DIExpression()), !dbg !2226
  %cmp48 = icmp eq ptr %call47, null, !dbg !2265
  br i1 %cmp48, label %if.then50, label %cleanup.cont.critedge, !dbg !2267

if.then50:                                        ; preds = %while.end41
  %call51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, i32 noundef 410, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull %p.0) #13, !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %token) #13, !dbg !2270
  br label %cleanup464

cleanup.cont.critedge:                            ; preds = %while.end41
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %token) #13, !dbg !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p54) #13, !dbg !2271
  %call55 = call ptr @strchr(ptr noundef nonnull %p.0, i32 noundef 44) #19, !dbg !2272
  call void @llvm.dbg.value(metadata ptr %call55, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %call55, ptr %p54, align 8, !dbg !2274, !tbaa !1948
  %cmp56.not = icmp eq ptr %call55, null, !dbg !2275
  br i1 %cmp56.not, label %if.end70, label %land.lhs.true58, !dbg !2277

land.lhs.true58:                                  ; preds = %cleanup.cont.critedge
  %13 = load ptr, ptr %call4, align 8, !dbg !2278, !tbaa !1948
  %incdec.ptr60 = getelementptr inbounds i8, ptr %call55, i64 1, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %incdec.ptr60, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr60, ptr %p54, align 8, !dbg !2278, !tbaa !1948
  %14 = load i8, ptr %incdec.ptr60, align 1, !dbg !2278, !tbaa !2242
  %15 = zext i8 %14 to i64
  %arrayidx63 = getelementptr inbounds i16, ptr %13, i64 %15, !dbg !2278
  %16 = load i16, ptr %arrayidx63, align 2, !dbg !2278, !tbaa !990
  %17 = and i16 %16, 2048, !dbg !2278
  %tobool.not = icmp eq i16 %17, 0, !dbg !2278
  br i1 %tobool.not, label %if.end70, label %if.then66, !dbg !2279

if.then66:                                        ; preds = %land.lhs.true58
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call67 = call i64 @strtoul(ptr noundef nonnull %incdec.ptr60, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2280
  %conv68 = trunc i64 %call67 to i32, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %conv68, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  br label %if.end70, !dbg !2282

if.end70:                                         ; preds = %cleanup.cont.critedge, %land.lhs.true58, %if.then66
  %levels.sroa.34.0 = phi i32 [ %conv68, %if.then66 ], [ 2, %land.lhs.true58 ], [ 2, %cleanup.cont.critedge ], !dbg !2283
  call void @llvm.dbg.value(metadata i32 %levels.sroa.34.0, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  %and71 = and i32 %channel, 1, !dbg !2284
  %cmp72.not = icmp eq i32 %and71, 0, !dbg !2285
  %spec.select = select i1 %cmp72.not, i32 0, i32 %levels.sroa.34.0, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2226
  %and75 = and i32 %channel, 2, !dbg !2287
  %cmp76.not = icmp eq i32 %and75, 0, !dbg !2288
  %spec.select624 = select i1 %cmp76.not, i32 0, i32 %levels.sroa.34.0, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %spec.select624, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2226
  %and83 = and i32 %channel, 4, !dbg !2290
  %cmp84.not = icmp eq i32 %and83, 0, !dbg !2291
  %spec.select617 = select i1 %cmp84.not, i32 0, i32 %levels.sroa.34.0, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %spec.select617, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2226
  %and91 = and i32 %channel, 8, !dbg !2293
  %cmp92.not = icmp eq i32 %and91, 0, !dbg !2294
  %spec.select626 = select i1 %cmp92.not, i32 0, i32 %levels.sroa.34.0, !dbg !2295
  call void @llvm.dbg.value(metadata i32 %spec.select626, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2226
  %and99 = and i32 %channel, 32, !dbg !2296
  %cmp100.not = icmp eq i32 %and99, 0, !dbg !2297
  br i1 %cmp100.not, label %cond.end108, label %land.lhs.true102, !dbg !2298

land.lhs.true102:                                 ; preds = %if.end70
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2299
  %18 = load i32, ptr %colorspace, align 4, !dbg !2299, !tbaa !940
  %cmp103 = icmp eq i32 %18, 12, !dbg !2300
  %spec.select618 = select i1 %cmp103, i32 %levels.sroa.34.0, i32 0, !dbg !2301
  br label %cond.end108, !dbg !2301

cond.end108:                                      ; preds = %land.lhs.true102, %if.end70
  %cond109 = phi i32 [ 0, %if.end70 ], [ %spec.select618, %land.lhs.true102 ], !dbg !2301
  call void @llvm.dbg.value(metadata i32 %cond109, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  %19 = load ptr, ptr %p54, align 8, !dbg !2302, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %19, metadata !2207, metadata !DIExpression()), !dbg !2273
  %cmp111.not = icmp eq ptr %19, null, !dbg !2304
  br i1 %cmp111.not, label %if.end203, label %land.lhs.true113, !dbg !2305

land.lhs.true113:                                 ; preds = %cond.end108
  %20 = load i8, ptr %19, align 1, !dbg !2306, !tbaa !2242
  %cmp115 = icmp eq i8 %20, 44, !dbg !2307
  br i1 %cmp115, label %if.then117, label %if.end203, !dbg !2308

if.then117:                                       ; preds = %land.lhs.true113
  %call118 = call ptr @strchr(ptr noundef nonnull %p.0, i32 noundef 44) #19, !dbg !2309
  %incdec.ptr119 = getelementptr inbounds i8, ptr %call118, i64 1, !dbg !2311
  call void @llvm.dbg.value(metadata ptr %incdec.ptr119, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr119, ptr %p54, align 8, !dbg !2311, !tbaa !1948
  br i1 %cmp72.not, label %if.end134, label %if.then123, !dbg !2312

if.then123:                                       ; preds = %if.then117
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call124 = call i64 @strtoul(ptr noundef nonnull %incdec.ptr119, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2313
  %conv125 = trunc i64 %call124 to i32, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %conv125, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2226
  %21 = load ptr, ptr %p54, align 8, !dbg !2316, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %21, metadata !2207, metadata !DIExpression()), !dbg !2273
  %22 = load i8, ptr %21, align 1, !dbg !2317, !tbaa !2242
  %cmp128 = icmp eq i8 %22, 44, !dbg !2318
  br i1 %cmp128, label %land.rhs130, label %if.end134, !dbg !2319

land.rhs130:                                      ; preds = %if.then123
  %incdec.ptr131 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %incdec.ptr131, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr131, ptr %p54, align 8, !dbg !2320, !tbaa !1948
  br label %if.end134

if.end134:                                        ; preds = %if.then123, %land.rhs130, %if.then117
  %23 = phi ptr [ %incdec.ptr119, %if.then117 ], [ %incdec.ptr131, %land.rhs130 ], [ %21, %if.then123 ]
  %levels.sroa.0.0 = phi i32 [ 0, %if.then117 ], [ %conv125, %land.rhs130 ], [ %conv125, %if.then123 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %levels.sroa.0.0, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2226
  br i1 %cmp76.not, label %if.end150, label %if.then138, !dbg !2321

if.then138:                                       ; preds = %if.end134
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call139 = call i64 @strtoul(ptr noundef nonnull %23, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2322
  %conv140 = trunc i64 %call139 to i32, !dbg !2324
  call void @llvm.dbg.value(metadata i32 %conv140, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2226
  %24 = load ptr, ptr %p54, align 8, !dbg !2325, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %24, metadata !2207, metadata !DIExpression()), !dbg !2273
  %25 = load i8, ptr %24, align 1, !dbg !2326, !tbaa !2242
  %cmp143 = icmp eq i8 %25, 44, !dbg !2327
  br i1 %cmp143, label %land.rhs145, label %if.end150, !dbg !2328

land.rhs145:                                      ; preds = %if.then138
  %incdec.ptr146 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %incdec.ptr146, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr146, ptr %p54, align 8, !dbg !2329, !tbaa !1948
  br label %if.end150

if.end150:                                        ; preds = %if.then138, %land.rhs145, %if.end134
  %26 = phi ptr [ %23, %if.end134 ], [ %incdec.ptr146, %land.rhs145 ], [ %24, %if.then138 ]
  %levels.sroa.10.0 = phi i32 [ 0, %if.end134 ], [ %conv140, %land.rhs145 ], [ %conv140, %if.then138 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %levels.sroa.10.0, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2226
  br i1 %cmp84.not, label %if.end166, label %if.then154, !dbg !2330

if.then154:                                       ; preds = %if.end150
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call155 = call i64 @strtoul(ptr noundef nonnull %26, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2331
  %conv156 = trunc i64 %call155 to i32, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %conv156, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2226
  %27 = load ptr, ptr %p54, align 8, !dbg !2334, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %27, metadata !2207, metadata !DIExpression()), !dbg !2273
  %28 = load i8, ptr %27, align 1, !dbg !2335, !tbaa !2242
  %cmp159 = icmp eq i8 %28, 44, !dbg !2336
  br i1 %cmp159, label %land.rhs161, label %if.end166, !dbg !2337

land.rhs161:                                      ; preds = %if.then154
  %incdec.ptr162 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr162, ptr %p54, align 8, !dbg !2338, !tbaa !1948
  br label %if.end166

if.end166:                                        ; preds = %if.then154, %land.rhs161, %if.end150
  %29 = phi ptr [ %26, %if.end150 ], [ %incdec.ptr162, %land.rhs161 ], [ %27, %if.then154 ]
  %levels.sroa.18.0 = phi i32 [ 0, %if.end150 ], [ %conv156, %land.rhs161 ], [ %conv156, %if.then154 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %levels.sroa.18.0, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2226
  br i1 %cmp100.not, label %if.end186, label %land.lhs.true170, !dbg !2339

land.lhs.true170:                                 ; preds = %if.end166
  %colorspace171 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2341
  %30 = load i32, ptr %colorspace171, align 4, !dbg !2341, !tbaa !940
  %cmp172 = icmp eq i32 %30, 12, !dbg !2342
  br i1 %cmp172, label %if.then174, label %if.end186, !dbg !2343

if.then174:                                       ; preds = %land.lhs.true170
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call175 = call i64 @strtoul(ptr noundef nonnull %29, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2344
  %conv176 = trunc i64 %call175 to i32, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %conv176, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  %31 = load ptr, ptr %p54, align 8, !dbg !2346, !tbaa !1948
  call void @llvm.dbg.value(metadata ptr %31, metadata !2207, metadata !DIExpression()), !dbg !2273
  %32 = load i8, ptr %31, align 1, !dbg !2347, !tbaa !2242
  %cmp179 = icmp eq i8 %32, 44, !dbg !2348
  br i1 %cmp179, label %land.rhs181, label %if.end186, !dbg !2349

land.rhs181:                                      ; preds = %if.then174
  %incdec.ptr182 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %incdec.ptr182, metadata !2207, metadata !DIExpression()), !dbg !2273
  store ptr %incdec.ptr182, ptr %p54, align 8, !dbg !2350, !tbaa !1948
  br label %if.end186

if.end186:                                        ; preds = %if.then174, %land.rhs181, %land.lhs.true170, %if.end166
  %33 = phi ptr [ %29, %land.lhs.true170 ], [ %29, %if.end166 ], [ %incdec.ptr182, %land.rhs181 ], [ %31, %if.then174 ]
  %levels.sroa.34.1 = phi i32 [ %cond109, %land.lhs.true170 ], [ %cond109, %if.end166 ], [ %conv176, %land.rhs181 ], [ %conv176, %if.then174 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %levels.sroa.34.1, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  br i1 %cmp92.not, label %if.end203, label %if.then190, !dbg !2351

if.then190:                                       ; preds = %if.end186
  call void @llvm.dbg.value(metadata ptr %p54, metadata !2207, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call191 = call i64 @strtoul(ptr noundef nonnull %33, ptr noundef nonnull %p54, i32 noundef 10) #13, !dbg !2352
  %conv192 = trunc i64 %call191 to i32, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %conv192, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2226
  call void @llvm.dbg.value(metadata ptr undef, metadata !2207, metadata !DIExpression()), !dbg !2273
  br label %if.end203, !dbg !2355

if.end203:                                        ; preds = %if.then190, %if.end186, %land.lhs.true113, %cond.end108
  %levels.sroa.26.0 = phi i32 [ 0, %if.end186 ], [ %spec.select626, %land.lhs.true113 ], [ %spec.select626, %cond.end108 ], [ %conv192, %if.then190 ], !dbg !2273
  %levels.sroa.18.1 = phi i32 [ %levels.sroa.18.0, %if.end186 ], [ %spec.select617, %land.lhs.true113 ], [ %spec.select617, %cond.end108 ], [ %levels.sroa.18.0, %if.then190 ], !dbg !2273
  %levels.sroa.10.1 = phi i32 [ %levels.sroa.10.0, %if.end186 ], [ %spec.select624, %land.lhs.true113 ], [ %spec.select624, %cond.end108 ], [ %levels.sroa.10.0, %if.then190 ], !dbg !2273
  %levels.sroa.0.1 = phi i32 [ %levels.sroa.0.0, %if.end186 ], [ %spec.select, %land.lhs.true113 ], [ %spec.select, %cond.end108 ], [ %levels.sroa.0.0, %if.then190 ], !dbg !2273
  %levels.sroa.34.2 = phi i32 [ %levels.sroa.34.1, %if.end186 ], [ %cond109, %land.lhs.true113 ], [ %cond109, %cond.end108 ], [ %levels.sroa.34.1, %if.then190 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %levels.sroa.34.2, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %levels.sroa.0.1, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %levels.sroa.10.1, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %levels.sroa.18.1, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %levels.sroa.26.0, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p54) #13, !dbg !2356
  %divisor = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 4, !dbg !2357
  %34 = load i64, ptr %divisor, align 8, !dbg !2357, !tbaa !1901
  %sub = add nsw i64 %34, -1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2209, metadata !DIExpression()), !dbg !2359
  %tobool205.not = icmp eq i32 %levels.sroa.0.1, 0, !dbg !2360
  %sub208 = add i32 %levels.sroa.0.1, -1
  %spec.select619 = select i1 %tobool205.not, i32 0, i32 %sub208, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %spec.select619, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2226
  %tobool214.not = icmp eq i32 %levels.sroa.10.1, 0, !dbg !2361
  %sub217 = add i32 %levels.sroa.10.1, -1
  %spec.select625 = select i1 %tobool214.not, i32 0, i32 %sub217, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %spec.select625, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2226
  %tobool223.not = icmp eq i32 %levels.sroa.18.1, 0, !dbg !2362
  %sub226 = add i32 %levels.sroa.18.1, -1
  %spec.select620 = select i1 %tobool223.not, i32 0, i32 %sub226, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %spec.select620, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2226
  %tobool232.not = icmp eq i32 %levels.sroa.26.0, 0, !dbg !2363
  %sub235 = add i32 %levels.sroa.26.0, -1
  %spec.select687 = select i1 %tobool232.not, i32 0, i32 %sub235, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %spec.select687, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2226
  %tobool241.not = icmp eq i32 %levels.sroa.34.2, 0, !dbg !2364
  %sub244 = add i32 %levels.sroa.34.2, -1
  %spec.select621 = select i1 %tobool241.not, i32 0, i32 %sub244, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %spec.select621, metadata !2191, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2226
  %call249 = call i32 @SetImageStorageClass(ptr noundef %image, i32 noundef 1) #13, !dbg !2365
  %cmp250 = icmp eq i32 %call249, 0, !dbg !2367
  br i1 %cmp250, label %cleanup460.thread, label %if.end254, !dbg !2368

cleanup460.thread:                                ; preds = %if.end203
  %exception253 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2369
  call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception253) #13, !dbg !2371
  br label %cleanup464

if.end254:                                        ; preds = %if.end203
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 0, metadata !2201, metadata !DIExpression()), !dbg !2226
  %call255 = call ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef %exception) #13, !dbg !2372
  call void @llvm.dbg.value(metadata ptr %call255, metadata !2190, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 0, metadata !2202, metadata !DIExpression()), !dbg !2226
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %35 = load i64, ptr %rows, align 8, !dbg !2373, !tbaa !909
  %cmp256681 = icmp sgt i64 %35, 0, !dbg !2374
  br i1 %cmp256681, label %for.body.lr.ph, label %cleanup.cont462, !dbg !2375

for.body.lr.ph:                                   ; preds = %if.end254
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %levels273 = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 5
  %width = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 2
  %height = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 3
  %tobool278.not = icmp eq i32 %spec.select619, 0
  %conv285 = zext i32 %spec.select619 to i64
  %mul286 = mul nsw i64 %sub, %conv285
  %add287 = add nsw i64 %mul286, 1
  %conv288 = sitofp i64 %add287 to double
  %conv300 = uitofp i32 %spec.select619 to float
  %tobool306.not = icmp eq i32 %spec.select625, 0
  %conv313 = zext i32 %spec.select625 to i64
  %mul314 = mul nsw i64 %sub, %conv313
  %add315 = add nsw i64 %mul314, 1
  %conv316 = sitofp i64 %add315 to double
  %conv329 = uitofp i32 %spec.select625 to float
  %tobool335.not = icmp eq i32 %spec.select620, 0
  %conv342 = zext i32 %spec.select620 to i64
  %mul343 = mul nsw i64 %sub, %conv342
  %add344 = add nsw i64 %mul343, 1
  %conv345 = sitofp i64 %add344 to double
  %conv358 = uitofp i32 %spec.select620 to float
  %tobool364.not = icmp eq i32 %spec.select687, 0
  %conv371 = zext i32 %spec.select687 to i64
  %mul372 = mul nsw i64 %sub, %conv371
  %add373 = add nsw i64 %mul372, 1
  %conv374 = sitofp i64 %add373 to double
  %conv388 = uitofp i32 %spec.select687 to double
  %tobool395.not = icmp eq i32 %spec.select621, 0
  %conv408 = zext i32 %spec.select621 to i64
  %mul409 = mul nsw i64 %sub, %conv408
  %add410 = add nsw i64 %mul409, 1
  %conv411 = sitofp i64 %add410 to double
  %conv428 = uitofp i32 %spec.select621 to float
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2375

for.body:                                         ; preds = %for.body.lr.ph, %cleanup451
  %y.0684 = phi i64 [ 0, %for.body.lr.ph ], [ %inc457, %cleanup451 ]
  %progress.0683 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup451 ]
  %status.0682 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup451 ]
  call void @llvm.dbg.value(metadata i64 %y.0684, metadata !2202, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %progress.0683, metadata !2201, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %status.0682, metadata !2200, metadata !DIExpression()), !dbg !2226
  %cmp258 = icmp eq i32 %status.0682, 0, !dbg !2376
  br i1 %cmp258, label %cleanup451, label %if.end261, !dbg !2378

if.end261:                                        ; preds = %for.body
  %36 = load i64, ptr %columns, align 8, !dbg !2379, !tbaa !917
  %call262 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call255, i64 noundef 0, i64 noundef %y.0684, i64 noundef %36, i64 noundef 1, ptr noundef %exception) #14, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %call262, metadata !2216, metadata !DIExpression()), !dbg !2381
  %cmp263 = icmp eq ptr %call262, null, !dbg !2382
  br i1 %cmp263, label %cleanup451, label %if.end266, !dbg !2384

if.end266:                                        ; preds = %if.end261
  %call267 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call255) #13, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %call267, metadata !2211, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2381
  %37 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call262, metadata !2216, metadata !DIExpression()), !dbg !2381
  %cmp270676 = icmp sgt i64 %37, 0, !dbg !2386
  br i1 %cmp270676, label %for.body272.lr.ph, label %for.end, !dbg !2387

for.body272.lr.ph:                                ; preds = %if.end266
  %38 = load ptr, ptr %levels273, align 8, !tbaa !1695
  %39 = load i64, ptr %width, align 8, !tbaa !1850
  %40 = load i64, ptr %height, align 8, !tbaa !1873
  %rem275 = urem i64 %y.0684, %40
  %mul = mul i64 %rem275, %39
  %cmp397 = icmp eq ptr %call267, null
  br label %for.body272, !dbg !2387

for.body272:                                      ; preds = %for.body272.lr.ph, %if.end433
  %q.0679 = phi ptr [ %call262, %for.body272.lr.ph ], [ %incdec.ptr434, %if.end433 ]
  %x.0677 = phi i64 [ 0, %for.body272.lr.ph ], [ %inc, %if.end433 ]
  call void @llvm.dbg.value(metadata ptr %q.0679, metadata !2216, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %x.0677, metadata !2215, metadata !DIExpression()), !dbg !2381
  %rem = urem i64 %x.0677, %39, !dbg !2388
  %add = add i64 %mul, %rem, !dbg !2389
  %arrayidx276 = getelementptr inbounds i64, ptr %38, i64 %add, !dbg !2390
  %41 = load i64, ptr %arrayidx276, align 8, !dbg !2390, !tbaa !1945
  call void @llvm.dbg.value(metadata i64 %41, metadata !2217, metadata !DIExpression()), !dbg !2391
  br i1 %tobool278.not, label %if.end304, label %if.then279, !dbg !2392

if.then279:                                       ; preds = %for.body272
  %red280 = getelementptr inbounds %struct._PixelPacket, ptr %q.0679, i64 0, i32 2, !dbg !2393
  %42 = load i16, ptr %red280, align 2, !dbg !2393, !tbaa !951
  %conv282 = uitofp i16 %42 to double, !dbg !2393
  %mul283 = fmul double %conv282, 0x3EF0001000100010, !dbg !2396
  %mul289 = fmul double %mul283, %conv288, !dbg !2397
  %conv290 = fptosi double %mul289 to i64, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %conv290, metadata !2221, metadata !DIExpression()), !dbg !2391
  %div = sdiv i64 %conv290, %sub, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %div, metadata !2222, metadata !DIExpression()), !dbg !2391
  %mul291 = mul nsw i64 %div, %sub, !dbg !2400
  %sub292.recomposed = srem i64 %conv290, %sub
  call void @llvm.dbg.value(metadata i64 %sub292.recomposed, metadata !2221, metadata !DIExpression()), !dbg !2391
  %cmp293 = icmp sge i64 %sub292.recomposed, %41, !dbg !2401
  %43 = zext i1 %cmp293 to i64
  %add296 = add nsw i64 %div, %43, !dbg !2401
  %conv297 = sitofp i64 %add296 to float, !dbg !2401
  %mul298 = fmul float %conv297, 6.553500e+04, !dbg !2401
  %div301 = fdiv float %mul298, %conv300, !dbg !2401
  call void @llvm.dbg.value(metadata float %div301, metadata !2402, metadata !DIExpression()), !dbg !2408
  %cmp.i = fcmp ugt float %div301, 0.000000e+00, !dbg !2410
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2412

if.end.i:                                         ; preds = %if.then279
  %cmp1.i = fcmp ult float %div301, 6.553500e+04, !dbg !2413
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2415

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %div301, 5.000000e-01, !dbg !2416
  %conv.i = fptoui float %add.i to i16, !dbg !2417
  br label %ClampToQuantum.exit, !dbg !2418

ClampToQuantum.exit:                              ; preds = %if.then279, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.then279 ], [ -1, %if.end.i ], !dbg !2408
  store i16 %retval.0.i, ptr %red280, align 2, !dbg !2401, !tbaa !951
  br label %if.end304, !dbg !2419

if.end304:                                        ; preds = %ClampToQuantum.exit, %for.body272
  br i1 %tobool306.not, label %if.end333, label %if.then307, !dbg !2420

if.then307:                                       ; preds = %if.end304
  %green308 = getelementptr inbounds %struct._PixelPacket, ptr %q.0679, i64 0, i32 1, !dbg !2421
  %44 = load i16, ptr %green308, align 2, !dbg !2421, !tbaa !955
  %conv310 = uitofp i16 %44 to double, !dbg !2421
  %mul311 = fmul double %conv310, 0x3EF0001000100010, !dbg !2424
  %mul317 = fmul double %mul311, %conv316, !dbg !2425
  %conv318 = fptosi double %mul317 to i64, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %conv318, metadata !2221, metadata !DIExpression()), !dbg !2391
  %div319 = sdiv i64 %conv318, %sub, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %div319, metadata !2222, metadata !DIExpression()), !dbg !2391
  %mul320 = mul nsw i64 %div319, %sub, !dbg !2428
  %sub321.recomposed = srem i64 %conv318, %sub
  call void @llvm.dbg.value(metadata i64 %sub321.recomposed, metadata !2221, metadata !DIExpression()), !dbg !2391
  %cmp322 = icmp sge i64 %sub321.recomposed, %41, !dbg !2429
  %45 = zext i1 %cmp322 to i64
  %add325 = add nsw i64 %div319, %45, !dbg !2429
  %conv326 = sitofp i64 %add325 to float, !dbg !2429
  %mul327 = fmul float %conv326, 6.553500e+04, !dbg !2429
  %div330 = fdiv float %mul327, %conv329, !dbg !2429
  call void @llvm.dbg.value(metadata float %div330, metadata !2402, metadata !DIExpression()), !dbg !2430
  %cmp.i628 = fcmp ugt float %div330, 0.000000e+00, !dbg !2432
  br i1 %cmp.i628, label %if.end.i630, label %ClampToQuantum.exit635, !dbg !2433

if.end.i630:                                      ; preds = %if.then307
  %cmp1.i629 = fcmp ult float %div330, 6.553500e+04, !dbg !2434
  br i1 %cmp1.i629, label %if.end3.i633, label %ClampToQuantum.exit635, !dbg !2435

if.end3.i633:                                     ; preds = %if.end.i630
  %add.i631 = fadd float %div330, 5.000000e-01, !dbg !2436
  %conv.i632 = fptoui float %add.i631 to i16, !dbg !2437
  br label %ClampToQuantum.exit635, !dbg !2438

ClampToQuantum.exit635:                           ; preds = %if.then307, %if.end.i630, %if.end3.i633
  %retval.0.i634 = phi i16 [ %conv.i632, %if.end3.i633 ], [ 0, %if.then307 ], [ -1, %if.end.i630 ], !dbg !2430
  store i16 %retval.0.i634, ptr %green308, align 2, !dbg !2429, !tbaa !955
  br label %if.end333, !dbg !2439

if.end333:                                        ; preds = %ClampToQuantum.exit635, %if.end304
  br i1 %tobool335.not, label %if.end362, label %if.then336, !dbg !2440

if.then336:                                       ; preds = %if.end333
  %46 = load i16, ptr %q.0679, align 2, !dbg !2441, !tbaa !959
  %conv339 = uitofp i16 %46 to double, !dbg !2441
  %mul340 = fmul double %conv339, 0x3EF0001000100010, !dbg !2444
  %mul346 = fmul double %mul340, %conv345, !dbg !2445
  %conv347 = fptosi double %mul346 to i64, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %conv347, metadata !2221, metadata !DIExpression()), !dbg !2391
  %div348 = sdiv i64 %conv347, %sub, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %div348, metadata !2222, metadata !DIExpression()), !dbg !2391
  %mul349 = mul nsw i64 %div348, %sub, !dbg !2448
  %sub350.recomposed = srem i64 %conv347, %sub
  call void @llvm.dbg.value(metadata i64 %sub350.recomposed, metadata !2221, metadata !DIExpression()), !dbg !2391
  %cmp351 = icmp sge i64 %sub350.recomposed, %41, !dbg !2449
  %47 = zext i1 %cmp351 to i64
  %add354 = add nsw i64 %div348, %47, !dbg !2449
  %conv355 = sitofp i64 %add354 to float, !dbg !2449
  %mul356 = fmul float %conv355, 6.553500e+04, !dbg !2449
  %div359 = fdiv float %mul356, %conv358, !dbg !2449
  call void @llvm.dbg.value(metadata float %div359, metadata !2402, metadata !DIExpression()), !dbg !2450
  %cmp.i636 = fcmp ugt float %div359, 0.000000e+00, !dbg !2452
  br i1 %cmp.i636, label %if.end.i638, label %ClampToQuantum.exit643, !dbg !2453

if.end.i638:                                      ; preds = %if.then336
  %cmp1.i637 = fcmp ult float %div359, 6.553500e+04, !dbg !2454
  br i1 %cmp1.i637, label %if.end3.i641, label %ClampToQuantum.exit643, !dbg !2455

if.end3.i641:                                     ; preds = %if.end.i638
  %add.i639 = fadd float %div359, 5.000000e-01, !dbg !2456
  %conv.i640 = fptoui float %add.i639 to i16, !dbg !2457
  br label %ClampToQuantum.exit643, !dbg !2458

ClampToQuantum.exit643:                           ; preds = %if.then336, %if.end.i638, %if.end3.i641
  %retval.0.i642 = phi i16 [ %conv.i640, %if.end3.i641 ], [ 0, %if.then336 ], [ -1, %if.end.i638 ], !dbg !2450
  store i16 %retval.0.i642, ptr %q.0679, align 2, !dbg !2449, !tbaa !959
  br label %if.end362, !dbg !2459

if.end362:                                        ; preds = %ClampToQuantum.exit643, %if.end333
  br i1 %tobool364.not, label %if.end393, label %if.then365, !dbg !2460

if.then365:                                       ; preds = %if.end362
  %opacity366 = getelementptr inbounds %struct._PixelPacket, ptr %q.0679, i64 0, i32 3, !dbg !2461
  %48 = load i16, ptr %opacity366, align 2, !dbg !2461, !tbaa !963
  %conv368 = uitofp i16 %48 to double, !dbg !2461
  %49 = call double @llvm.fmuladd.f64(double %conv368, double 0xBEF0001000100010, double 1.000000e+00), !dbg !2464
  %mul375 = fmul double %49, %conv374, !dbg !2465
  %conv376 = fptosi double %mul375 to i64, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %conv376, metadata !2221, metadata !DIExpression()), !dbg !2391
  %div377 = sdiv i64 %conv376, %sub, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %div377, metadata !2222, metadata !DIExpression()), !dbg !2391
  %mul378 = mul nsw i64 %div377, %sub, !dbg !2468
  %sub379.recomposed = srem i64 %conv376, %sub
  call void @llvm.dbg.value(metadata i64 %sub379.recomposed, metadata !2221, metadata !DIExpression()), !dbg !2391
  %conv380 = sitofp i64 %div377 to double, !dbg !2469
  %sub381 = fsub double 1.000000e+00, %conv380, !dbg !2469
  %cmp382 = icmp sge i64 %sub379.recomposed, %41, !dbg !2469
  %conv384 = uitofp i1 %cmp382 to double, !dbg !2469
  %sub385 = fsub double %sub381, %conv384, !dbg !2469
  %mul386 = fmul double %sub385, 6.553500e+04, !dbg !2469
  %div389 = fdiv double %mul386, %conv388, !dbg !2469
  %conv390 = fptrunc double %div389 to float, !dbg !2469
  call void @llvm.dbg.value(metadata float %conv390, metadata !2402, metadata !DIExpression()), !dbg !2470
  %cmp.i644 = fcmp ugt float %conv390, 0.000000e+00, !dbg !2472
  br i1 %cmp.i644, label %if.end.i646, label %ClampToQuantum.exit651, !dbg !2473

if.end.i646:                                      ; preds = %if.then365
  %cmp1.i645 = fcmp ult float %conv390, 6.553500e+04, !dbg !2474
  br i1 %cmp1.i645, label %if.end3.i649, label %ClampToQuantum.exit651, !dbg !2475

if.end3.i649:                                     ; preds = %if.end.i646
  %add.i647 = fadd float %conv390, 5.000000e-01, !dbg !2476
  %conv.i648 = fptoui float %add.i647 to i16, !dbg !2477
  br label %ClampToQuantum.exit651, !dbg !2478

ClampToQuantum.exit651:                           ; preds = %if.then365, %if.end.i646, %if.end3.i649
  %retval.0.i650 = phi i16 [ %conv.i648, %if.end3.i649 ], [ 0, %if.then365 ], [ -1, %if.end.i646 ], !dbg !2470
  store i16 %retval.0.i650, ptr %opacity366, align 2, !dbg !2469, !tbaa !963
  br label %if.end393, !dbg !2479

if.end393:                                        ; preds = %ClampToQuantum.exit651, %if.end362
  br i1 %tobool395.not, label %if.end433, label %if.then396, !dbg !2480

if.then396:                                       ; preds = %if.end393
  %add.ptr = getelementptr inbounds i16, ptr %call267, i64 %x.0677, !dbg !2481
  br i1 %cmp397, label %if.end433, label %if.then420, !dbg !2481

if.then420:                                       ; preds = %if.then396
  %50 = load i16, ptr %add.ptr, align 2, !dbg !2481, !tbaa !990
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %sub), metadata !2222, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value)), !dbg !2391
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 %sub, i64 %sub), metadata !2221, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_div, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_minus, DW_OP_stack_value)), !dbg !2391
  %conv405 = uitofp i16 %50 to double, !dbg !2481
  %mul406 = fmul double %conv405, 0x3EF0001000100010, !dbg !2484
  %mul412 = fmul double %mul406, %conv411, !dbg !2485
  %conv413 = fptosi double %mul412 to i64, !dbg !2486
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv413, i64 %sub), metadata !2222, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value)), !dbg !2391
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv413, i64 %conv413, i64 %sub, i64 %sub), metadata !2221, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_div, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_minus, DW_OP_stack_value)), !dbg !2391
  %div414 = sdiv i64 %conv413, %sub, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %div414, metadata !2222, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %div414, i64 %sub), metadata !2221, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_minus, DW_OP_stack_value)), !dbg !2391
  %mul415 = mul nsw i64 %div414, %sub, !dbg !2488
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %mul415), metadata !2221, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2391
  %sub416.recomposed = srem i64 %conv413, %sub
  call void @llvm.dbg.value(metadata i64 %sub416.recomposed, metadata !2221, metadata !DIExpression()), !dbg !2391
  %cmp421 = icmp sge i64 %sub416.recomposed, %41, !dbg !2489
  %51 = zext i1 %cmp421 to i64
  %add424 = add nsw i64 %div414, %51, !dbg !2489
  %conv425 = sitofp i64 %add424 to float, !dbg !2489
  %mul426 = fmul float %conv425, 6.553500e+04, !dbg !2489
  %div429 = fdiv float %mul426, %conv428, !dbg !2489
  call void @llvm.dbg.value(metadata float %div429, metadata !2402, metadata !DIExpression()), !dbg !2492
  %cmp.i652 = fcmp ugt float %div429, 0.000000e+00, !dbg !2494
  br i1 %cmp.i652, label %if.end.i654, label %ClampToQuantum.exit659, !dbg !2495

if.end.i654:                                      ; preds = %if.then420
  %cmp1.i653 = fcmp ult float %div429, 6.553500e+04, !dbg !2496
  br i1 %cmp1.i653, label %if.end3.i657, label %ClampToQuantum.exit659, !dbg !2497

if.end3.i657:                                     ; preds = %if.end.i654
  %add.i655 = fadd float %div429, 5.000000e-01, !dbg !2498
  %conv.i656 = fptoui float %add.i655 to i16, !dbg !2499
  br label %ClampToQuantum.exit659, !dbg !2500

ClampToQuantum.exit659:                           ; preds = %if.then420, %if.end.i654, %if.end3.i657
  %retval.0.i658 = phi i16 [ %conv.i656, %if.end3.i657 ], [ 0, %if.then420 ], [ -1, %if.end.i654 ], !dbg !2492
  store i16 %retval.0.i658, ptr %add.ptr, align 2, !dbg !2489, !tbaa !990
  br label %if.end433, !dbg !2489

if.end433:                                        ; preds = %if.then396, %ClampToQuantum.exit659, %if.end393
  %incdec.ptr434 = getelementptr inbounds %struct._PixelPacket, ptr %q.0679, i64 1, !dbg !2501
  call void @llvm.dbg.value(metadata ptr %incdec.ptr434, metadata !2216, metadata !DIExpression()), !dbg !2381
  %inc = add nuw nsw i64 %x.0677, 1, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2215, metadata !DIExpression()), !dbg !2381
  %exitcond.not = icmp eq i64 %inc, %37, !dbg !2386
  br i1 %exitcond.not, label %for.end, label %for.body272, !dbg !2387, !llvm.loop !2503

for.end:                                          ; preds = %if.end433, %if.end266
  %call435 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call255, ptr noundef %exception) #14, !dbg !2505
  %cmp436 = icmp ne i32 %call435, 0, !dbg !2507
  %spec.select622 = zext i1 %cmp436 to i32, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %spec.select622, metadata !2200, metadata !DIExpression()), !dbg !2226
  %52 = load ptr, ptr %progress_monitor, align 8, !dbg !2509, !tbaa !1081
  %cmp440.not = icmp eq ptr %52, null, !dbg !2510
  br i1 %cmp440.not, label %cleanup451, label %SetImageProgress.exit, !dbg !2511

SetImageProgress.exit:                            ; preds = %for.end
  %inc443 = add nsw i64 %progress.0683, 1, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %inc443, metadata !2201, metadata !DIExpression()), !dbg !2226
  %53 = load i64, ptr %rows, align 8, !dbg !2513, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !2514
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1092, metadata !DIExpression()) #13, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %progress.0683, metadata !1093, metadata !DIExpression()) #13, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %53, metadata !1094, metadata !DIExpression()) #13, !dbg !2514
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2516
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !2517
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, ptr noundef nonnull %filename.i) #13, !dbg !2518
  %54 = load ptr, ptr %progress_monitor, align 8, !dbg !2519, !tbaa !1081
  %55 = load ptr, ptr %client_data.i, align 8, !dbg !2520, !tbaa !1103
  %call4.i = call i32 %54(ptr noundef nonnull %message.i, i64 noundef %progress.0683, i64 noundef %53, ptr noundef %55) #13, !dbg !2521
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2223, metadata !DIExpression()), !dbg !2523
  %cmp446 = icmp eq i32 %call4.i, 0, !dbg !2524
  %spec.select623 = select i1 %cmp446, i32 0, i32 %spec.select622, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %spec.select623, metadata !2200, metadata !DIExpression()), !dbg !2226
  br label %cleanup451, !dbg !2527

cleanup451:                                       ; preds = %for.end, %SetImageProgress.exit, %if.end261, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end261 ], [ %spec.select623, %SetImageProgress.exit ], [ %spec.select622, %for.end ], !dbg !2359
  %progress.2 = phi i64 [ %progress.0683, %for.body ], [ %progress.0683, %if.end261 ], [ %inc443, %SetImageProgress.exit ], [ %progress.0683, %for.end ], !dbg !2359
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2201, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2200, metadata !DIExpression()), !dbg !2226
  %inc457 = add nuw nsw i64 %y.0684, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %inc457, metadata !2202, metadata !DIExpression()), !dbg !2226
  %56 = load i64, ptr %rows, align 8, !dbg !2373, !tbaa !909
  %cmp256 = icmp slt i64 %inc457, %56, !dbg !2374
  br i1 %cmp256, label %for.body, label %cleanup.cont462, !dbg !2375, !llvm.loop !2529

cleanup.cont462:                                  ; preds = %cleanup451, %if.end254
  %call459 = call ptr @DestroyCacheView(ptr noundef %call255) #13, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %call459, metadata !2190, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1674, metadata !DIExpression()) #13, !dbg !2532
  %57 = load ptr, ptr %call47, align 8, !dbg !2534, !tbaa !1678
  %cmp.not.i = icmp eq ptr %57, null, !dbg !2535
  br i1 %cmp.not.i, label %if.end.i664, label %if.then.i, !dbg !2536

if.then.i:                                        ; preds = %cleanup.cont462
  %call.i663 = call ptr @DestroyString(ptr noundef nonnull %57) #13, !dbg !2537
  store ptr %call.i663, ptr %call47, align 8, !dbg !2538, !tbaa !1678
  br label %if.end.i664, !dbg !2539

if.end.i664:                                      ; preds = %if.then.i, %cleanup.cont462
  %description.i = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 1, !dbg !2540
  %58 = load ptr, ptr %description.i, align 8, !dbg !2540, !tbaa !1687
  %cmp3.not.i = icmp eq ptr %58, null, !dbg !2541
  br i1 %cmp3.not.i, label %if.end8.i, label %if.then4.i, !dbg !2542

if.then4.i:                                       ; preds = %if.end.i664
  %call6.i = call ptr @DestroyString(ptr noundef nonnull %58) #13, !dbg !2543
  store ptr %call6.i, ptr %description.i, align 8, !dbg !2544, !tbaa !1687
  br label %if.end8.i, !dbg !2545

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i664
  %levels.i = getelementptr inbounds %struct._ThresholdMap, ptr %call47, i64 0, i32 5, !dbg !2546
  %59 = load ptr, ptr %levels.i, align 8, !dbg !2546, !tbaa !1695
  %cmp9.not.i = icmp eq ptr %59, null, !dbg !2547
  br i1 %cmp9.not.i, label %DestroyThresholdMap.exit, label %if.then10.i, !dbg !2548

if.then10.i:                                      ; preds = %if.end8.i
  %call12.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %59) #13, !dbg !2549
  store ptr %call12.i, ptr %levels.i, align 8, !dbg !2550, !tbaa !1695
  br label %DestroyThresholdMap.exit, !dbg !2551

DestroyThresholdMap.exit:                         ; preds = %if.end8.i, %if.then10.i
  %call15.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call47) #13, !dbg !2552
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !1674, metadata !DIExpression()) #13, !dbg !2532
  call void @llvm.dbg.value(metadata ptr undef, metadata !2203, metadata !DIExpression()), !dbg !2226
  br label %cleanup464, !dbg !2553

cleanup464:                                       ; preds = %cleanup460.thread, %if.then50, %if.end, %DestroyThresholdMap.exit
  %retval.2 = phi i32 [ 1, %DestroyThresholdMap.exit ], [ 0, %if.then50 ], [ 1, %if.end ], [ 0, %cleanup460.thread ], !dbg !2226
  ret i32 %retval.2, !dbg !2554
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OrderedPosterizeImage(ptr noundef %image, ptr noundef %threshold_map, ptr noundef %exception) local_unnamed_addr #0 !dbg !2555 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %threshold_map, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2561, metadata !DIExpression()), !dbg !2563
  %call = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %image, i32 noundef 134217719, ptr noundef %threshold_map, ptr noundef %exception), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %call, metadata !2562, metadata !DIExpression()), !dbg !2563
  ret i32 %call, !dbg !2565
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @PerceptibleImage(ptr noundef %image, double noundef %epsilon) local_unnamed_addr #0 !dbg !2566 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2569, metadata !DIExpression()), !dbg !2571
  %call = tail call i32 @PerceptibleImageChannel(ptr noundef %image, i32 noundef 134217719, double noundef %epsilon), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %call, metadata !2570, metadata !DIExpression()), !dbg !2571
  ret i32 %call, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PerceptibleImageChannel(ptr noundef %image, i32 noundef %channel, double noundef %epsilon) local_unnamed_addr #0 !dbg !2574 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2576, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2577, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2578, metadata !DIExpression()), !dbg !2597
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2598
  %0 = load i32, ptr %debug, align 8, !dbg !2598, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !2600
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2601

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2602
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1753, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !2603
  br label %if.end, !dbg !2604

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !2605, !tbaa !1619
  %cmp1 = icmp eq i32 %1, 2, !dbg !2606
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !2607

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !2587, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 0, metadata !2584, metadata !DIExpression()), !dbg !2608
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %2 = load i64, ptr %colors, align 8, !tbaa !2609
  call void @llvm.dbg.value(metadata ptr undef, metadata !2587, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 0, metadata !2584, metadata !DIExpression()), !dbg !2608
  %cmp3280 = icmp sgt i64 %2, 0, !dbg !2610
  br i1 %cmp3280, label %for.body.lr.ph, label %for.end, !dbg !2613

for.body.lr.ph:                                   ; preds = %if.then2
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !2614
  %3 = load ptr, ptr %colormap, align 8, !dbg !2614, !tbaa !2615
  call void @llvm.dbg.value(metadata ptr %3, metadata !2587, metadata !DIExpression()), !dbg !2608
  %conv7.i = fptoui double %epsilon to i16
  br label %for.body, !dbg !2613

for.body:                                         ; preds = %for.body.lr.ph, %PerceptibleThreshold.exit182
  %q.0282 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %PerceptibleThreshold.exit182 ]
  %i.0281 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %PerceptibleThreshold.exit182 ]
  call void @llvm.dbg.value(metadata ptr %q.0282, metadata !2587, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %i.0281, metadata !2584, metadata !DIExpression()), !dbg !2608
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0282, i64 0, i32 2, !dbg !2616
  %4 = load i16, ptr %red, align 2, !dbg !2616, !tbaa !951
  call void @llvm.dbg.value(metadata i16 %4, metadata !2618, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2626
  %conv3.i = uitofp i16 %4 to double, !dbg !2628
  %cmp4.i = fcmp ult double %conv3.i, %epsilon, !dbg !2630
  br i1 %cmp4.i, label %if.end.i, label %PerceptibleThreshold.exit, !dbg !2631

if.end.i:                                         ; preds = %for.body
  br label %PerceptibleThreshold.exit, !dbg !2632

PerceptibleThreshold.exit:                        ; preds = %for.body, %if.end.i
  %retval.0.i = phi i16 [ %conv7.i, %if.end.i ], [ %4, %for.body ], !dbg !2626
  store i16 %retval.0.i, ptr %red, align 2, !dbg !2616, !tbaa !951
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0282, i64 0, i32 1, !dbg !2633
  %5 = load i16, ptr %green, align 2, !dbg !2633, !tbaa !955
  call void @llvm.dbg.value(metadata i16 %5, metadata !2618, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2634
  %conv3.i165 = uitofp i16 %5 to double, !dbg !2636
  %cmp4.i166 = fcmp ult double %conv3.i165, %epsilon, !dbg !2637
  br i1 %cmp4.i166, label %if.end.i168, label %PerceptibleThreshold.exit170, !dbg !2638

if.end.i168:                                      ; preds = %PerceptibleThreshold.exit
  br label %PerceptibleThreshold.exit170, !dbg !2639

PerceptibleThreshold.exit170:                     ; preds = %PerceptibleThreshold.exit, %if.end.i168
  %retval.0.i169 = phi i16 [ %conv7.i, %if.end.i168 ], [ %5, %PerceptibleThreshold.exit ], !dbg !2634
  store i16 %retval.0.i169, ptr %green, align 2, !dbg !2633, !tbaa !955
  %6 = load i16, ptr %q.0282, align 2, !dbg !2640, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %6, metadata !2618, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2641
  %conv3.i171 = uitofp i16 %6 to double, !dbg !2643
  %cmp4.i172 = fcmp ult double %conv3.i171, %epsilon, !dbg !2644
  br i1 %cmp4.i172, label %if.end.i174, label %PerceptibleThreshold.exit176, !dbg !2645

if.end.i174:                                      ; preds = %PerceptibleThreshold.exit170
  br label %PerceptibleThreshold.exit176, !dbg !2646

PerceptibleThreshold.exit176:                     ; preds = %PerceptibleThreshold.exit170, %if.end.i174
  %retval.0.i175 = phi i16 [ %conv7.i, %if.end.i174 ], [ %6, %PerceptibleThreshold.exit170 ], !dbg !2641
  store i16 %retval.0.i175, ptr %q.0282, align 2, !dbg !2640, !tbaa !959
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.0282, i64 0, i32 3, !dbg !2647
  %7 = load i16, ptr %opacity, align 2, !dbg !2647, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %7, metadata !2618, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2648
  %conv3.i177 = uitofp i16 %7 to double, !dbg !2650
  %cmp4.i178 = fcmp ult double %conv3.i177, %epsilon, !dbg !2651
  br i1 %cmp4.i178, label %if.end.i180, label %PerceptibleThreshold.exit182, !dbg !2652

if.end.i180:                                      ; preds = %PerceptibleThreshold.exit176
  br label %PerceptibleThreshold.exit182, !dbg !2653

PerceptibleThreshold.exit182:                     ; preds = %PerceptibleThreshold.exit176, %if.end.i180
  %retval.0.i181 = phi i16 [ %conv7.i, %if.end.i180 ], [ %7, %PerceptibleThreshold.exit176 ], !dbg !2648
  store i16 %retval.0.i181, ptr %opacity, align 2, !dbg !2647, !tbaa !963
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0282, i64 1, !dbg !2654
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2587, metadata !DIExpression()), !dbg !2608
  %inc = add nuw nsw i64 %i.0281, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2584, metadata !DIExpression()), !dbg !2608
  %exitcond294.not = icmp eq i64 %inc, %2, !dbg !2610
  br i1 %exitcond294.not, label %for.end, label %for.body, !dbg !2613, !llvm.loop !2656

for.end:                                          ; preds = %PerceptibleThreshold.exit182, %if.then2
  %call12 = tail call i32 @SyncImage(ptr noundef nonnull %image) #13, !dbg !2658
  br label %cleanup99

if.end13:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2581, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 0, metadata !2582, metadata !DIExpression()), !dbg !2597
  %exception14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %exception14, metadata !2580, metadata !DIExpression()), !dbg !2597
  %call15 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception14) #13, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2579, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 0, metadata !2583, metadata !DIExpression()), !dbg !2597
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %8 = load i64, ptr %rows, align 8, !dbg !2661, !tbaa !909
  %cmp17220 = icmp sgt i64 %8, 0, !dbg !2662
  br i1 %cmp17220, label %for.body18.lr.ph, label %for.end97, !dbg !2663

for.body18.lr.ph:                                 ; preds = %if.end13
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and = and i32 %channel, 1
  %cmp32.not = icmp eq i32 %and, 0
  %conv7.i185 = fptoui double %epsilon to i16
  %and38 = and i32 %channel, 2
  %cmp39.not = icmp eq i32 %and38, 0
  %and45 = and i32 %channel, 4
  %cmp46.not = icmp eq i32 %and45, 0
  %and52 = and i32 %channel, 8
  %cmp53.not = icmp eq i32 %and52, 0
  %and59 = and i32 %channel, 32
  %cmp60.not = icmp eq i32 %and59, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br i1 %cmp60.not, label %for.body18.lr.ph.split.us, label %for.body18, !dbg !2664

for.body18.lr.ph.split.us:                        ; preds = %for.body18.lr.ph
  br i1 %cmp32.not, label %for.body18.us.us, label %for.body18.us, !dbg !2669

for.body18.us.us:                                 ; preds = %for.body18.lr.ph.split.us, %cleanup.us.us
  %y.0223.us.us = phi i64 [ %inc96.us.us, %cleanup.us.us ], [ 0, %for.body18.lr.ph.split.us ]
  %progress.0222.us.us = phi i64 [ %progress.2.us.us, %cleanup.us.us ], [ 0, %for.body18.lr.ph.split.us ]
  %status.0221.us.us = phi i32 [ %status.4.us.us, %cleanup.us.us ], [ 1, %for.body18.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %y.0223.us.us, metadata !2583, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.0222.us.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.0221.us.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %cmp20.us.us = icmp eq i32 %status.0221.us.us, 0, !dbg !2670
  br i1 %cmp20.us.us, label %cleanup.us.us, label %if.end22.us.us, !dbg !2672

if.end22.us.us:                                   ; preds = %for.body18.us.us
  %9 = load i64, ptr %columns, align 8, !dbg !2673, !tbaa !917
  %call23.us.us = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call15, i64 noundef 0, i64 noundef %y.0223.us.us, i64 noundef %9, i64 noundef 1, ptr noundef nonnull %exception14) #14, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %call23.us.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp24.us.us = icmp eq ptr %call23.us.us, null, !dbg !2676
  br i1 %cmp24.us.us, label %cleanup.us.us, label %if.end26.us.us, !dbg !2678

if.end26.us.us:                                   ; preds = %if.end22.us.us
  %call27.us.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call15) #13, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %call27.us.us, metadata !2588, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2675
  %10 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call23.us.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp30215.us.us = icmp sgt i64 %10, 0, !dbg !2680
  br i1 %cmp30215.us.us, label %for.body31.lr.ph.us.us, label %for.end76.us.us, !dbg !2681

for.end76.us.us:                                  ; preds = %if.end58.us.us.us.us, %PerceptibleThreshold.exit206.us.us.us.us.us262, %PerceptibleThreshold.exit200.us.us.us.us.us.us, %PerceptibleThreshold.exit206.us.us.us.us.us.us, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us, %if.end26.us.us
  %call77.us.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call15, ptr noundef nonnull %exception14) #14, !dbg !2682
  %cmp78.us.us = icmp ne i32 %call77.us.us, 0, !dbg !2684
  %spec.select.us.us = zext i1 %cmp78.us.us to i32, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %spec.select.us.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %11 = load ptr, ptr %progress_monitor, align 8, !dbg !2686, !tbaa !1081
  %cmp82.not.us.us = icmp eq ptr %11, null, !dbg !2687
  br i1 %cmp82.not.us.us, label %cleanup.us.us, label %SetImageProgress.exit.us.us, !dbg !2688

SetImageProgress.exit.us.us:                      ; preds = %for.end76.us.us
  %inc85.us.us = add nsw i64 %progress.0222.us.us, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %inc85.us.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  %12 = load i64, ptr %rows, align 8, !dbg !2690, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1092, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %progress.0222.us.us, metadata !1093, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %12, metadata !1094, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !2694
  %call.i.us.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %filename.i) #13, !dbg !2695
  %13 = load ptr, ptr %progress_monitor, align 8, !dbg !2696, !tbaa !1081
  %14 = load ptr, ptr %client_data.i, align 8, !dbg !2697, !tbaa !1103
  %call4.i.us.us = call i32 %13(ptr noundef nonnull %message.i, i64 noundef %progress.0222.us.us, i64 noundef %12, ptr noundef %14) #13, !dbg !2698
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %call4.i.us.us, metadata !2594, metadata !DIExpression()), !dbg !2700
  %cmp88.us.us = icmp eq i32 %call4.i.us.us, 0, !dbg !2701
  %spec.select164.us.us = select i1 %cmp88.us.us, i32 0, i32 %spec.select.us.us, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %spec.select164.us.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  br label %cleanup.us.us, !dbg !2704

cleanup.us.us:                                    ; preds = %SetImageProgress.exit.us.us, %for.end76.us.us, %if.end22.us.us, %for.body18.us.us
  %status.4.us.us = phi i32 [ 0, %for.body18.us.us ], [ 0, %if.end22.us.us ], [ %spec.select164.us.us, %SetImageProgress.exit.us.us ], [ %spec.select.us.us, %for.end76.us.us ], !dbg !2597
  %progress.2.us.us = phi i64 [ %progress.0222.us.us, %for.body18.us.us ], [ %progress.0222.us.us, %if.end22.us.us ], [ %inc85.us.us, %SetImageProgress.exit.us.us ], [ %progress.0222.us.us, %for.end76.us.us ], !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.2.us.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.4.us.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %inc96.us.us = add nuw nsw i64 %y.0223.us.us, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %inc96.us.us, metadata !2583, metadata !DIExpression()), !dbg !2597
  %15 = load i64, ptr %rows, align 8, !dbg !2661, !tbaa !909
  %cmp17.us.us = icmp slt i64 %inc96.us.us, %15, !dbg !2662
  br i1 %cmp17.us.us, label %for.body18.us.us, label %for.end97, !dbg !2663, !llvm.loop !2706

for.body31.lr.ph.us.us:                           ; preds = %if.end26.us.us
  br i1 %cmp39.not, label %for.body31.lr.ph.split.us.us.split.us.split.us.us, label %for.body31.us.us.us.us231, !dbg !2708

for.body31.us.us.us.us231:                        ; preds = %for.body31.lr.ph.us.us, %if.end58.us.us.us.us
  %q19.0218.us.us.us.us232 = phi ptr [ %incdec.ptr73.us.us.us.us245, %if.end58.us.us.us.us ], [ %call23.us.us, %for.body31.lr.ph.us.us ]
  %x.0216.us.us.us.us233 = phi i64 [ %inc75.us.us.us.us246, %if.end58.us.us.us.us ], [ 0, %for.body31.lr.ph.us.us ]
  call void @llvm.dbg.value(metadata ptr %q19.0218.us.us.us.us232, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216.us.us.us.us233, metadata !2592, metadata !DIExpression()), !dbg !2675
  %green41.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us232, i64 0, i32 1, !dbg !2709
  %16 = load i16, ptr %green41.us.us.us.us, align 2, !dbg !2709, !tbaa !955
  call void @llvm.dbg.value(metadata i16 %16, metadata !2618, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2711
  %conv3.i189.us.us.us.us = uitofp i16 %16 to double, !dbg !2713
  %cmp4.i190.us.us.us.us = fcmp ult double %conv3.i189.us.us.us.us, %epsilon, !dbg !2714
  br i1 %cmp4.i190.us.us.us.us, label %if.end.i192.us.us.us.us, label %PerceptibleThreshold.exit194.us.us.us.us, !dbg !2715

if.end.i192.us.us.us.us:                          ; preds = %for.body31.us.us.us.us231
  br label %PerceptibleThreshold.exit194.us.us.us.us, !dbg !2716

PerceptibleThreshold.exit194.us.us.us.us:         ; preds = %if.end.i192.us.us.us.us, %for.body31.us.us.us.us231
  %retval.0.i193.us.us.us.us = phi i16 [ %conv7.i185, %if.end.i192.us.us.us.us ], [ %16, %for.body31.us.us.us.us231 ], !dbg !2711
  store i16 %retval.0.i193.us.us.us.us, ptr %green41.us.us.us.us, align 2, !dbg !2709, !tbaa !955
  br i1 %cmp46.not, label %if.end51.us.us.us.us, label %if.then47.us.us.us.us, !dbg !2717

if.then47.us.us.us.us:                            ; preds = %PerceptibleThreshold.exit194.us.us.us.us
  %17 = load i16, ptr %q19.0218.us.us.us.us232, align 2, !dbg !2718, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %17, metadata !2618, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2720
  %conv3.i195.us.us.us.us234 = uitofp i16 %17 to double, !dbg !2722
  %cmp4.i196.us.us.us.us235 = fcmp ult double %conv3.i195.us.us.us.us234, %epsilon, !dbg !2723
  br i1 %cmp4.i196.us.us.us.us235, label %if.end.i198.us.us.us.us236, label %PerceptibleThreshold.exit200.us.us.us.us237, !dbg !2724

if.end.i198.us.us.us.us236:                       ; preds = %if.then47.us.us.us.us
  br label %PerceptibleThreshold.exit200.us.us.us.us237, !dbg !2725

PerceptibleThreshold.exit200.us.us.us.us237:      ; preds = %if.end.i198.us.us.us.us236, %if.then47.us.us.us.us
  %retval.0.i199.us.us.us.us238 = phi i16 [ %conv7.i185, %if.end.i198.us.us.us.us236 ], [ %17, %if.then47.us.us.us.us ], !dbg !2720
  store i16 %retval.0.i199.us.us.us.us238, ptr %q19.0218.us.us.us.us232, align 2, !dbg !2718, !tbaa !959
  br label %if.end51.us.us.us.us, !dbg !2718

if.end51.us.us.us.us:                             ; preds = %PerceptibleThreshold.exit200.us.us.us.us237, %PerceptibleThreshold.exit194.us.us.us.us
  br i1 %cmp53.not, label %if.end58.us.us.us.us, label %if.then54.us.us.us.us, !dbg !2726

if.then54.us.us.us.us:                            ; preds = %if.end51.us.us.us.us
  %opacity55.us.us.us.us239 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us232, i64 0, i32 3, !dbg !2727
  %18 = load i16, ptr %opacity55.us.us.us.us239, align 2, !dbg !2727, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %18, metadata !2618, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2729
  %conv3.i201.us.us.us.us240 = uitofp i16 %18 to double, !dbg !2731
  %cmp4.i202.us.us.us.us241 = fcmp ult double %conv3.i201.us.us.us.us240, %epsilon, !dbg !2732
  br i1 %cmp4.i202.us.us.us.us241, label %if.end.i204.us.us.us.us242, label %PerceptibleThreshold.exit206.us.us.us.us243, !dbg !2733

if.end.i204.us.us.us.us242:                       ; preds = %if.then54.us.us.us.us
  br label %PerceptibleThreshold.exit206.us.us.us.us243, !dbg !2734

PerceptibleThreshold.exit206.us.us.us.us243:      ; preds = %if.end.i204.us.us.us.us242, %if.then54.us.us.us.us
  %retval.0.i205.us.us.us.us244 = phi i16 [ %conv7.i185, %if.end.i204.us.us.us.us242 ], [ %18, %if.then54.us.us.us.us ], !dbg !2729
  store i16 %retval.0.i205.us.us.us.us244, ptr %opacity55.us.us.us.us239, align 2, !dbg !2727, !tbaa !963
  br label %if.end58.us.us.us.us, !dbg !2727

if.end58.us.us.us.us:                             ; preds = %PerceptibleThreshold.exit206.us.us.us.us243, %if.end51.us.us.us.us
  %incdec.ptr73.us.us.us.us245 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us232, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73.us.us.us.us245, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75.us.us.us.us246 = add nuw nsw i64 %x.0216.us.us.us.us233, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75.us.us.us.us246, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond290.not = icmp eq i64 %inc75.us.us.us.us246, %10, !dbg !2680
  br i1 %exitcond290.not, label %for.end76.us.us, label %for.body31.us.us.us.us231, !dbg !2681, !llvm.loop !2737

for.body31.lr.ph.split.us.us.split.us.split.us.us: ; preds = %for.body31.lr.ph.us.us
  br i1 %cmp46.not, label %for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us, label %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268, !dbg !2717

for.body31.us.us.us.us.us250:                     ; preds = %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268, %PerceptibleThreshold.exit206.us.us.us.us.us262
  %q19.0218.us.us.us.us.us251 = phi ptr [ %incdec.ptr73.us.us.us.us.us264, %PerceptibleThreshold.exit206.us.us.us.us.us262 ], [ %call23.us.us, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268 ]
  %x.0216.us.us.us.us.us252 = phi i64 [ %inc75.us.us.us.us.us265, %PerceptibleThreshold.exit206.us.us.us.us.us262 ], [ 0, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268 ]
  call void @llvm.dbg.value(metadata ptr %q19.0218.us.us.us.us.us251, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216.us.us.us.us.us252, metadata !2592, metadata !DIExpression()), !dbg !2675
  %19 = load i16, ptr %q19.0218.us.us.us.us.us251, align 2, !dbg !2718, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %19, metadata !2618, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2720
  %conv3.i195.us.us.us.us.us253 = uitofp i16 %19 to double, !dbg !2722
  %cmp4.i196.us.us.us.us.us254 = fcmp ult double %conv3.i195.us.us.us.us.us253, %epsilon, !dbg !2723
  br i1 %cmp4.i196.us.us.us.us.us254, label %if.end.i198.us.us.us.us.us255, label %PerceptibleThreshold.exit200.us.us.us.us.us256, !dbg !2724

if.end.i198.us.us.us.us.us255:                    ; preds = %for.body31.us.us.us.us.us250
  br label %PerceptibleThreshold.exit200.us.us.us.us.us256, !dbg !2725

PerceptibleThreshold.exit200.us.us.us.us.us256:   ; preds = %if.end.i198.us.us.us.us.us255, %for.body31.us.us.us.us.us250
  %retval.0.i199.us.us.us.us.us257 = phi i16 [ %conv7.i185, %if.end.i198.us.us.us.us.us255 ], [ %19, %for.body31.us.us.us.us.us250 ], !dbg !2720
  store i16 %retval.0.i199.us.us.us.us.us257, ptr %q19.0218.us.us.us.us.us251, align 2, !dbg !2718, !tbaa !959
  %opacity55.us.us.us.us.us258 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us.us251, i64 0, i32 3, !dbg !2727
  %20 = load i16, ptr %opacity55.us.us.us.us.us258, align 2, !dbg !2727, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %20, metadata !2618, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2729
  %conv3.i201.us.us.us.us.us259 = uitofp i16 %20 to double, !dbg !2731
  %cmp4.i202.us.us.us.us.us260 = fcmp ult double %conv3.i201.us.us.us.us.us259, %epsilon, !dbg !2732
  br i1 %cmp4.i202.us.us.us.us.us260, label %if.end.i204.us.us.us.us.us261, label %PerceptibleThreshold.exit206.us.us.us.us.us262, !dbg !2733

if.end.i204.us.us.us.us.us261:                    ; preds = %PerceptibleThreshold.exit200.us.us.us.us.us256
  br label %PerceptibleThreshold.exit206.us.us.us.us.us262, !dbg !2734

PerceptibleThreshold.exit206.us.us.us.us.us262:   ; preds = %if.end.i204.us.us.us.us.us261, %PerceptibleThreshold.exit200.us.us.us.us.us256
  %retval.0.i205.us.us.us.us.us263 = phi i16 [ %conv7.i185, %if.end.i204.us.us.us.us.us261 ], [ %20, %PerceptibleThreshold.exit200.us.us.us.us.us256 ], !dbg !2729
  store i16 %retval.0.i205.us.us.us.us.us263, ptr %opacity55.us.us.us.us.us258, align 2, !dbg !2727, !tbaa !963
  %incdec.ptr73.us.us.us.us.us264 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us.us251, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73.us.us.us.us.us264, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75.us.us.us.us.us265 = add nuw nsw i64 %x.0216.us.us.us.us.us252, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75.us.us.us.us.us265, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond291.not = icmp eq i64 %inc75.us.us.us.us.us265, %10, !dbg !2680
  br i1 %exitcond291.not, label %for.end76.us.us, label %for.body31.us.us.us.us.us250, !dbg !2681, !llvm.loop !2737

for.body31.lr.ph.split.us.us.split.us.split.us.split.us268: ; preds = %for.body31.lr.ph.split.us.us.split.us.split.us.us
  br i1 %cmp53.not, label %for.body31.us.us.us.us.us224.us, label %for.body31.us.us.us.us.us250, !dbg !2726

for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us: ; preds = %for.body31.lr.ph.split.us.us.split.us.split.us.us
  br i1 %cmp53.not, label %for.end76.us.us, label %for.body31.us.us.us.us.us.us269, !dbg !2726

for.body31.us.us.us.us.us.us269:                  ; preds = %for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us, %PerceptibleThreshold.exit206.us.us.us.us.us.us
  %q19.0218.us.us.us.us.us.us270 = phi ptr [ %incdec.ptr73.us.us.us.us.us.us272, %PerceptibleThreshold.exit206.us.us.us.us.us.us ], [ %call23.us.us, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us ]
  %x.0216.us.us.us.us.us.us271 = phi i64 [ %inc75.us.us.us.us.us.us273, %PerceptibleThreshold.exit206.us.us.us.us.us.us ], [ 0, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us.us ]
  call void @llvm.dbg.value(metadata ptr %q19.0218.us.us.us.us.us.us270, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216.us.us.us.us.us.us271, metadata !2592, metadata !DIExpression()), !dbg !2675
  %opacity55.us.us.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us.us.us270, i64 0, i32 3, !dbg !2727
  %21 = load i16, ptr %opacity55.us.us.us.us.us.us, align 2, !dbg !2727, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %21, metadata !2618, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2729
  %conv3.i201.us.us.us.us.us.us = uitofp i16 %21 to double, !dbg !2731
  %cmp4.i202.us.us.us.us.us.us = fcmp ult double %conv3.i201.us.us.us.us.us.us, %epsilon, !dbg !2732
  br i1 %cmp4.i202.us.us.us.us.us.us, label %if.end.i204.us.us.us.us.us.us, label %PerceptibleThreshold.exit206.us.us.us.us.us.us, !dbg !2733

if.end.i204.us.us.us.us.us.us:                    ; preds = %for.body31.us.us.us.us.us.us269
  br label %PerceptibleThreshold.exit206.us.us.us.us.us.us, !dbg !2734

PerceptibleThreshold.exit206.us.us.us.us.us.us:   ; preds = %if.end.i204.us.us.us.us.us.us, %for.body31.us.us.us.us.us.us269
  %retval.0.i205.us.us.us.us.us.us = phi i16 [ %conv7.i185, %if.end.i204.us.us.us.us.us.us ], [ %21, %for.body31.us.us.us.us.us.us269 ], !dbg !2729
  store i16 %retval.0.i205.us.us.us.us.us.us, ptr %opacity55.us.us.us.us.us.us, align 2, !dbg !2727, !tbaa !963
  %incdec.ptr73.us.us.us.us.us.us272 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us.us.us270, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73.us.us.us.us.us.us272, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75.us.us.us.us.us.us273 = add nuw nsw i64 %x.0216.us.us.us.us.us.us271, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75.us.us.us.us.us.us273, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond293.not = icmp eq i64 %inc75.us.us.us.us.us.us273, %10, !dbg !2680
  br i1 %exitcond293.not, label %for.end76.us.us, label %for.body31.us.us.us.us.us.us269, !dbg !2681, !llvm.loop !2737

for.body31.us.us.us.us.us224.us:                  ; preds = %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268, %PerceptibleThreshold.exit200.us.us.us.us.us.us
  %q19.0218.us.us.us.us.us225.us = phi ptr [ %incdec.ptr73.us.us.us.us.us228.us, %PerceptibleThreshold.exit200.us.us.us.us.us.us ], [ %call23.us.us, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268 ]
  %x.0216.us.us.us.us.us226.us = phi i64 [ %inc75.us.us.us.us.us229.us, %PerceptibleThreshold.exit200.us.us.us.us.us.us ], [ 0, %for.body31.lr.ph.split.us.us.split.us.split.us.split.us268 ]
  call void @llvm.dbg.value(metadata ptr %q19.0218.us.us.us.us.us225.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216.us.us.us.us.us226.us, metadata !2592, metadata !DIExpression()), !dbg !2675
  %22 = load i16, ptr %q19.0218.us.us.us.us.us225.us, align 2, !dbg !2718, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %22, metadata !2618, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2720
  %conv3.i195.us.us.us.us.us.us = uitofp i16 %22 to double, !dbg !2722
  %cmp4.i196.us.us.us.us.us.us = fcmp ult double %conv3.i195.us.us.us.us.us.us, %epsilon, !dbg !2723
  br i1 %cmp4.i196.us.us.us.us.us.us, label %if.end.i198.us.us.us.us.us.us, label %PerceptibleThreshold.exit200.us.us.us.us.us.us, !dbg !2724

if.end.i198.us.us.us.us.us.us:                    ; preds = %for.body31.us.us.us.us.us224.us
  br label %PerceptibleThreshold.exit200.us.us.us.us.us.us, !dbg !2725

PerceptibleThreshold.exit200.us.us.us.us.us.us:   ; preds = %if.end.i198.us.us.us.us.us.us, %for.body31.us.us.us.us.us224.us
  %retval.0.i199.us.us.us.us.us.us = phi i16 [ %conv7.i185, %if.end.i198.us.us.us.us.us.us ], [ %22, %for.body31.us.us.us.us.us224.us ], !dbg !2720
  store i16 %retval.0.i199.us.us.us.us.us.us, ptr %q19.0218.us.us.us.us.us225.us, align 2, !dbg !2718, !tbaa !959
  %incdec.ptr73.us.us.us.us.us228.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us.us.us.us225.us, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73.us.us.us.us.us228.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75.us.us.us.us.us229.us = add nuw nsw i64 %x.0216.us.us.us.us.us226.us, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75.us.us.us.us.us229.us, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond292.not = icmp eq i64 %inc75.us.us.us.us.us229.us, %10, !dbg !2680
  br i1 %exitcond292.not, label %for.end76.us.us, label %for.body31.us.us.us.us.us224.us, !dbg !2681, !llvm.loop !2737

for.body18.us:                                    ; preds = %for.body18.lr.ph.split.us, %cleanup.us
  %y.0223.us = phi i64 [ %inc96.us, %cleanup.us ], [ 0, %for.body18.lr.ph.split.us ]
  %progress.0222.us = phi i64 [ %progress.2.us, %cleanup.us ], [ 0, %for.body18.lr.ph.split.us ]
  %status.0221.us = phi i32 [ %status.4.us, %cleanup.us ], [ 1, %for.body18.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %y.0223.us, metadata !2583, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.0222.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.0221.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %cmp20.us = icmp eq i32 %status.0221.us, 0, !dbg !2670
  br i1 %cmp20.us, label %cleanup.us, label %if.end22.us, !dbg !2672

if.end22.us:                                      ; preds = %for.body18.us
  %23 = load i64, ptr %columns, align 8, !dbg !2673, !tbaa !917
  %call23.us = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call15, i64 noundef 0, i64 noundef %y.0223.us, i64 noundef %23, i64 noundef 1, ptr noundef nonnull %exception14) #14, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %call23.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp24.us = icmp eq ptr %call23.us, null, !dbg !2676
  br i1 %cmp24.us, label %cleanup.us, label %if.end26.us, !dbg !2678

if.end26.us:                                      ; preds = %if.end22.us
  %call27.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call15) #13, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %call27.us, metadata !2588, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2675
  %24 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call23.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp30215.us = icmp sgt i64 %24, 0, !dbg !2680
  br i1 %cmp30215.us, label %for.body31.us.us, label %for.end76.us, !dbg !2681

for.end76.us:                                     ; preds = %if.end58.us.us, %if.end26.us
  %call77.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call15, ptr noundef nonnull %exception14) #14, !dbg !2682
  %cmp78.us = icmp ne i32 %call77.us, 0, !dbg !2684
  %spec.select.us = zext i1 %cmp78.us to i32, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %25 = load ptr, ptr %progress_monitor, align 8, !dbg !2686, !tbaa !1081
  %cmp82.not.us = icmp eq ptr %25, null, !dbg !2687
  br i1 %cmp82.not.us, label %cleanup.us, label %SetImageProgress.exit.us, !dbg !2688

SetImageProgress.exit.us:                         ; preds = %for.end76.us
  %inc85.us = add nsw i64 %progress.0222.us, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %inc85.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  %26 = load i64, ptr %rows, align 8, !dbg !2690, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1092, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %progress.0222.us, metadata !1093, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %26, metadata !1094, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !2694
  %call.i.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %filename.i) #13, !dbg !2695
  %27 = load ptr, ptr %progress_monitor, align 8, !dbg !2696, !tbaa !1081
  %28 = load ptr, ptr %client_data.i, align 8, !dbg !2697, !tbaa !1103
  %call4.i.us = call i32 %27(ptr noundef nonnull %message.i, i64 noundef %progress.0222.us, i64 noundef %26, ptr noundef %28) #13, !dbg !2698
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %call4.i.us, metadata !2594, metadata !DIExpression()), !dbg !2700
  %cmp88.us = icmp eq i32 %call4.i.us, 0, !dbg !2701
  %spec.select164.us = select i1 %cmp88.us, i32 0, i32 %spec.select.us, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %spec.select164.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  br label %cleanup.us, !dbg !2704

cleanup.us:                                       ; preds = %SetImageProgress.exit.us, %for.end76.us, %if.end22.us, %for.body18.us
  %status.4.us = phi i32 [ 0, %for.body18.us ], [ 0, %if.end22.us ], [ %spec.select164.us, %SetImageProgress.exit.us ], [ %spec.select.us, %for.end76.us ], !dbg !2597
  %progress.2.us = phi i64 [ %progress.0222.us, %for.body18.us ], [ %progress.0222.us, %if.end22.us ], [ %inc85.us, %SetImageProgress.exit.us ], [ %progress.0222.us, %for.end76.us ], !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.2.us, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.4.us, metadata !2581, metadata !DIExpression()), !dbg !2597
  %inc96.us = add nuw nsw i64 %y.0223.us, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %inc96.us, metadata !2583, metadata !DIExpression()), !dbg !2597
  %29 = load i64, ptr %rows, align 8, !dbg !2661, !tbaa !909
  %cmp17.us = icmp slt i64 %inc96.us, %29, !dbg !2662
  br i1 %cmp17.us, label %for.body18.us, label %for.end97, !dbg !2663, !llvm.loop !2706

for.body31.us.us:                                 ; preds = %if.end26.us, %if.end58.us.us
  %q19.0218.us.us = phi ptr [ %incdec.ptr73.us.us, %if.end58.us.us ], [ %call23.us, %if.end26.us ]
  %x.0216.us.us = phi i64 [ %inc75.us.us, %if.end58.us.us ], [ 0, %if.end26.us ]
  call void @llvm.dbg.value(metadata ptr %q19.0218.us.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216.us.us, metadata !2592, metadata !DIExpression()), !dbg !2675
  %red34.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us, i64 0, i32 2, !dbg !2739
  %30 = load i16, ptr %red34.us.us, align 2, !dbg !2739, !tbaa !951
  call void @llvm.dbg.value(metadata i16 %30, metadata !2618, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2741
  %conv3.i183.us.us = uitofp i16 %30 to double, !dbg !2743
  %cmp4.i184.us.us = fcmp ult double %conv3.i183.us.us, %epsilon, !dbg !2744
  br i1 %cmp4.i184.us.us, label %if.end.i186.us.us, label %PerceptibleThreshold.exit188.us.us, !dbg !2745

if.end.i186.us.us:                                ; preds = %for.body31.us.us
  br label %PerceptibleThreshold.exit188.us.us, !dbg !2746

PerceptibleThreshold.exit188.us.us:               ; preds = %if.end.i186.us.us, %for.body31.us.us
  %retval.0.i187.us.us = phi i16 [ %conv7.i185, %if.end.i186.us.us ], [ %30, %for.body31.us.us ], !dbg !2741
  store i16 %retval.0.i187.us.us, ptr %red34.us.us, align 2, !dbg !2739, !tbaa !951
  br i1 %cmp39.not, label %if.end44.us.us, label %if.then40.us.us, !dbg !2708

if.then40.us.us:                                  ; preds = %PerceptibleThreshold.exit188.us.us
  %green41.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us, i64 0, i32 1, !dbg !2709
  %31 = load i16, ptr %green41.us.us, align 2, !dbg !2709, !tbaa !955
  call void @llvm.dbg.value(metadata i16 %31, metadata !2618, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2711
  %conv3.i189.us.us = uitofp i16 %31 to double, !dbg !2713
  %cmp4.i190.us.us = fcmp ult double %conv3.i189.us.us, %epsilon, !dbg !2714
  br i1 %cmp4.i190.us.us, label %if.end.i192.us.us, label %PerceptibleThreshold.exit194.us.us, !dbg !2715

if.end.i192.us.us:                                ; preds = %if.then40.us.us
  br label %PerceptibleThreshold.exit194.us.us, !dbg !2716

PerceptibleThreshold.exit194.us.us:               ; preds = %if.end.i192.us.us, %if.then40.us.us
  %retval.0.i193.us.us = phi i16 [ %conv7.i185, %if.end.i192.us.us ], [ %31, %if.then40.us.us ], !dbg !2711
  store i16 %retval.0.i193.us.us, ptr %green41.us.us, align 2, !dbg !2709, !tbaa !955
  br label %if.end44.us.us, !dbg !2709

if.end44.us.us:                                   ; preds = %PerceptibleThreshold.exit194.us.us, %PerceptibleThreshold.exit188.us.us
  br i1 %cmp46.not, label %if.end51.us.us, label %if.then47.us.us, !dbg !2717

if.then47.us.us:                                  ; preds = %if.end44.us.us
  %32 = load i16, ptr %q19.0218.us.us, align 2, !dbg !2718, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %32, metadata !2618, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2720
  %conv3.i195.us.us = uitofp i16 %32 to double, !dbg !2722
  %cmp4.i196.us.us = fcmp ult double %conv3.i195.us.us, %epsilon, !dbg !2723
  br i1 %cmp4.i196.us.us, label %if.end.i198.us.us, label %PerceptibleThreshold.exit200.us.us, !dbg !2724

if.end.i198.us.us:                                ; preds = %if.then47.us.us
  br label %PerceptibleThreshold.exit200.us.us, !dbg !2725

PerceptibleThreshold.exit200.us.us:               ; preds = %if.end.i198.us.us, %if.then47.us.us
  %retval.0.i199.us.us = phi i16 [ %conv7.i185, %if.end.i198.us.us ], [ %32, %if.then47.us.us ], !dbg !2720
  store i16 %retval.0.i199.us.us, ptr %q19.0218.us.us, align 2, !dbg !2718, !tbaa !959
  br label %if.end51.us.us, !dbg !2718

if.end51.us.us:                                   ; preds = %PerceptibleThreshold.exit200.us.us, %if.end44.us.us
  br i1 %cmp53.not, label %if.end58.us.us, label %if.then54.us.us, !dbg !2726

if.then54.us.us:                                  ; preds = %if.end51.us.us
  %opacity55.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us, i64 0, i32 3, !dbg !2727
  %33 = load i16, ptr %opacity55.us.us, align 2, !dbg !2727, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %33, metadata !2618, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2729
  %conv3.i201.us.us = uitofp i16 %33 to double, !dbg !2731
  %cmp4.i202.us.us = fcmp ult double %conv3.i201.us.us, %epsilon, !dbg !2732
  br i1 %cmp4.i202.us.us, label %if.end.i204.us.us, label %PerceptibleThreshold.exit206.us.us, !dbg !2733

if.end.i204.us.us:                                ; preds = %if.then54.us.us
  br label %PerceptibleThreshold.exit206.us.us, !dbg !2734

PerceptibleThreshold.exit206.us.us:               ; preds = %if.end.i204.us.us, %if.then54.us.us
  %retval.0.i205.us.us = phi i16 [ %conv7.i185, %if.end.i204.us.us ], [ %33, %if.then54.us.us ], !dbg !2729
  store i16 %retval.0.i205.us.us, ptr %opacity55.us.us, align 2, !dbg !2727, !tbaa !963
  br label %if.end58.us.us, !dbg !2727

if.end58.us.us:                                   ; preds = %PerceptibleThreshold.exit206.us.us, %if.end51.us.us
  %incdec.ptr73.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218.us.us, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73.us.us, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75.us.us = add nuw nsw i64 %x.0216.us.us, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75.us.us, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond289.not = icmp eq i64 %inc75.us.us, %24, !dbg !2680
  br i1 %exitcond289.not, label %for.end76.us, label %for.body31.us.us, !dbg !2681, !llvm.loop !2737

for.body18:                                       ; preds = %for.body18.lr.ph, %cleanup
  %y.0223 = phi i64 [ %inc96, %cleanup ], [ 0, %for.body18.lr.ph ]
  %progress.0222 = phi i64 [ %progress.2, %cleanup ], [ 0, %for.body18.lr.ph ]
  %status.0221 = phi i32 [ %status.4, %cleanup ], [ 1, %for.body18.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0223, metadata !2583, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.0222, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.0221, metadata !2581, metadata !DIExpression()), !dbg !2597
  %cmp20 = icmp eq i32 %status.0221, 0, !dbg !2670
  br i1 %cmp20, label %cleanup, label %if.end22, !dbg !2672

if.end22:                                         ; preds = %for.body18
  %34 = load i64, ptr %columns, align 8, !dbg !2673, !tbaa !917
  %call23 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call15, i64 noundef 0, i64 noundef %y.0223, i64 noundef %34, i64 noundef 1, ptr noundef nonnull %exception14) #14, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %call23, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp24 = icmp eq ptr %call23, null, !dbg !2676
  br i1 %cmp24, label %cleanup, label %if.end26, !dbg !2678

if.end26:                                         ; preds = %if.end22
  %call27 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call15) #13, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2588, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2675
  %35 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call23, metadata !2593, metadata !DIExpression()), !dbg !2675
  %cmp30215 = icmp sgt i64 %35, 0, !dbg !2680
  br i1 %cmp30215, label %for.body31.lr.ph, label %for.end76, !dbg !2681

for.body31.lr.ph:                                 ; preds = %if.end26
  %cmp63.not = icmp eq ptr %call27, null
  %36 = load i32, ptr %colorspace, align 4, !tbaa !940
  %cmp61 = icmp eq i32 %36, 12
  br label %for.body31, !dbg !2681

for.body31:                                       ; preds = %for.body31.lr.ph, %if.end72
  %q19.0218 = phi ptr [ %call23, %for.body31.lr.ph ], [ %incdec.ptr73, %if.end72 ]
  %x.0216 = phi i64 [ 0, %for.body31.lr.ph ], [ %inc75, %if.end72 ]
  call void @llvm.dbg.value(metadata ptr %q19.0218, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %x.0216, metadata !2592, metadata !DIExpression()), !dbg !2675
  br i1 %cmp32.not, label %if.end37, label %if.then33, !dbg !2669

if.then33:                                        ; preds = %for.body31
  %red34 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218, i64 0, i32 2, !dbg !2739
  %37 = load i16, ptr %red34, align 2, !dbg !2739, !tbaa !951
  call void @llvm.dbg.value(metadata i16 %37, metadata !2618, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2741
  %conv3.i183 = uitofp i16 %37 to double, !dbg !2743
  %cmp4.i184 = fcmp ult double %conv3.i183, %epsilon, !dbg !2744
  br i1 %cmp4.i184, label %if.end.i186, label %PerceptibleThreshold.exit188, !dbg !2745

if.end.i186:                                      ; preds = %if.then33
  br label %PerceptibleThreshold.exit188, !dbg !2746

PerceptibleThreshold.exit188:                     ; preds = %if.then33, %if.end.i186
  %retval.0.i187 = phi i16 [ %conv7.i185, %if.end.i186 ], [ %37, %if.then33 ], !dbg !2741
  store i16 %retval.0.i187, ptr %red34, align 2, !dbg !2739, !tbaa !951
  br label %if.end37, !dbg !2739

if.end37:                                         ; preds = %PerceptibleThreshold.exit188, %for.body31
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !2708

if.then40:                                        ; preds = %if.end37
  %green41 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218, i64 0, i32 1, !dbg !2709
  %38 = load i16, ptr %green41, align 2, !dbg !2709, !tbaa !955
  call void @llvm.dbg.value(metadata i16 %38, metadata !2618, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2711
  %conv3.i189 = uitofp i16 %38 to double, !dbg !2713
  %cmp4.i190 = fcmp ult double %conv3.i189, %epsilon, !dbg !2714
  br i1 %cmp4.i190, label %if.end.i192, label %PerceptibleThreshold.exit194, !dbg !2715

if.end.i192:                                      ; preds = %if.then40
  br label %PerceptibleThreshold.exit194, !dbg !2716

PerceptibleThreshold.exit194:                     ; preds = %if.then40, %if.end.i192
  %retval.0.i193 = phi i16 [ %conv7.i185, %if.end.i192 ], [ %38, %if.then40 ], !dbg !2711
  store i16 %retval.0.i193, ptr %green41, align 2, !dbg !2709, !tbaa !955
  br label %if.end44, !dbg !2709

if.end44:                                         ; preds = %PerceptibleThreshold.exit194, %if.end37
  br i1 %cmp46.not, label %if.end51, label %if.then47, !dbg !2717

if.then47:                                        ; preds = %if.end44
  %39 = load i16, ptr %q19.0218, align 2, !dbg !2718, !tbaa !959
  call void @llvm.dbg.value(metadata i16 %39, metadata !2618, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2720
  %conv3.i195 = uitofp i16 %39 to double, !dbg !2722
  %cmp4.i196 = fcmp ult double %conv3.i195, %epsilon, !dbg !2723
  br i1 %cmp4.i196, label %if.end.i198, label %PerceptibleThreshold.exit200, !dbg !2724

if.end.i198:                                      ; preds = %if.then47
  br label %PerceptibleThreshold.exit200, !dbg !2725

PerceptibleThreshold.exit200:                     ; preds = %if.then47, %if.end.i198
  %retval.0.i199 = phi i16 [ %conv7.i185, %if.end.i198 ], [ %39, %if.then47 ], !dbg !2720
  store i16 %retval.0.i199, ptr %q19.0218, align 2, !dbg !2718, !tbaa !959
  br label %if.end51, !dbg !2718

if.end51:                                         ; preds = %PerceptibleThreshold.exit200, %if.end44
  br i1 %cmp53.not, label %if.end58, label %if.then54, !dbg !2726

if.then54:                                        ; preds = %if.end51
  %opacity55 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218, i64 0, i32 3, !dbg !2727
  %40 = load i16, ptr %opacity55, align 2, !dbg !2727, !tbaa !963
  call void @llvm.dbg.value(metadata i16 %40, metadata !2618, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2729
  %conv3.i201 = uitofp i16 %40 to double, !dbg !2731
  %cmp4.i202 = fcmp ult double %conv3.i201, %epsilon, !dbg !2732
  br i1 %cmp4.i202, label %if.end.i204, label %PerceptibleThreshold.exit206, !dbg !2733

if.end.i204:                                      ; preds = %if.then54
  br label %PerceptibleThreshold.exit206, !dbg !2734

PerceptibleThreshold.exit206:                     ; preds = %if.then54, %if.end.i204
  %retval.0.i205 = phi i16 [ %conv7.i185, %if.end.i204 ], [ %40, %if.then54 ], !dbg !2729
  store i16 %retval.0.i205, ptr %opacity55, align 2, !dbg !2727, !tbaa !963
  br label %if.end58, !dbg !2727

if.end58:                                         ; preds = %PerceptibleThreshold.exit206, %if.end51
  br i1 %cmp61, label %if.then62, label %if.end72, !dbg !2747

if.then62:                                        ; preds = %if.end58
  %add.ptr = getelementptr inbounds i16, ptr %call27, i64 %x.0216, !dbg !2748
  br i1 %cmp63.not, label %if.end72, label %cond.end, !dbg !2751

cond.end:                                         ; preds = %if.then62
  %41 = load i16, ptr %add.ptr, align 2, !dbg !2748, !tbaa !990
  call void @llvm.dbg.value(metadata i16 %41, metadata !2618, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata double %epsilon, metadata !2624, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2625, metadata !DIExpression()), !dbg !2752
  %conv3.i207 = uitofp i16 %41 to double, !dbg !2754
  %cmp4.i208 = fcmp ult double %conv3.i207, %epsilon, !dbg !2755
  br i1 %cmp4.i208, label %if.end.i210, label %PerceptibleThreshold.exit212, !dbg !2756

if.end.i210:                                      ; preds = %cond.end
  br label %PerceptibleThreshold.exit212, !dbg !2757

PerceptibleThreshold.exit212:                     ; preds = %cond.end, %if.end.i210
  %retval.0.i211 = phi i16 [ %conv7.i185, %if.end.i210 ], [ %41, %cond.end ], !dbg !2752
  store i16 %retval.0.i211, ptr %add.ptr, align 2, !dbg !2748, !tbaa !990
  br label %if.end72, !dbg !2748

if.end72:                                         ; preds = %if.then62, %PerceptibleThreshold.exit212, %if.end58
  %incdec.ptr73 = getelementptr inbounds %struct._PixelPacket, ptr %q19.0218, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73, metadata !2593, metadata !DIExpression()), !dbg !2675
  %inc75 = add nuw nsw i64 %x.0216, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc75, metadata !2592, metadata !DIExpression()), !dbg !2675
  %exitcond.not = icmp eq i64 %inc75, %35, !dbg !2680
  br i1 %exitcond.not, label %for.end76, label %for.body31, !dbg !2681, !llvm.loop !2737

for.end76:                                        ; preds = %if.end72, %if.end26
  %call77 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call15, ptr noundef nonnull %exception14) #14, !dbg !2682
  %cmp78 = icmp ne i32 %call77, 0, !dbg !2684
  %spec.select = zext i1 %cmp78 to i32, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2581, metadata !DIExpression()), !dbg !2597
  %42 = load ptr, ptr %progress_monitor, align 8, !dbg !2686, !tbaa !1081
  %cmp82.not = icmp eq ptr %42, null, !dbg !2687
  br i1 %cmp82.not, label %cleanup, label %SetImageProgress.exit, !dbg !2688

SetImageProgress.exit:                            ; preds = %for.end76
  %inc85 = add nsw i64 %progress.0222, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %inc85, metadata !2582, metadata !DIExpression()), !dbg !2597
  %43 = load i64, ptr %rows, align 8, !dbg !2690, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1092, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %progress.0222, metadata !1093, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %43, metadata !1094, metadata !DIExpression()) #13, !dbg !2691
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !2694
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %filename.i) #13, !dbg !2695
  %44 = load ptr, ptr %progress_monitor, align 8, !dbg !2696, !tbaa !1081
  %45 = load ptr, ptr %client_data.i, align 8, !dbg !2697, !tbaa !1103
  %call4.i = call i32 %44(ptr noundef nonnull %message.i, i64 noundef %progress.0222, i64 noundef %43, ptr noundef %45) #13, !dbg !2698
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2594, metadata !DIExpression()), !dbg !2700
  %cmp88 = icmp eq i32 %call4.i, 0, !dbg !2701
  %spec.select164 = select i1 %cmp88, i32 0, i32 %spec.select, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %spec.select164, metadata !2581, metadata !DIExpression()), !dbg !2597
  br label %cleanup, !dbg !2704

cleanup:                                          ; preds = %for.end76, %SetImageProgress.exit, %if.end22, %for.body18
  %status.4 = phi i32 [ 0, %for.body18 ], [ 0, %if.end22 ], [ %spec.select164, %SetImageProgress.exit ], [ %spec.select, %for.end76 ], !dbg !2597
  %progress.2 = phi i64 [ %progress.0222, %for.body18 ], [ %progress.0222, %if.end22 ], [ %inc85, %SetImageProgress.exit ], [ %progress.0222, %for.end76 ], !dbg !2597
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2581, metadata !DIExpression()), !dbg !2597
  %inc96 = add nuw nsw i64 %y.0223, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %inc96, metadata !2583, metadata !DIExpression()), !dbg !2597
  %46 = load i64, ptr %rows, align 8, !dbg !2661, !tbaa !909
  %cmp17 = icmp slt i64 %inc96, %46, !dbg !2662
  br i1 %cmp17, label %for.body18, label %for.end97, !dbg !2663, !llvm.loop !2706

for.end97:                                        ; preds = %cleanup, %cleanup.us, %cleanup.us.us, %if.end13
  %status.0.lcssa = phi i32 [ 1, %if.end13 ], [ %status.4.us.us, %cleanup.us.us ], [ %status.4.us, %cleanup.us ], [ %status.4, %cleanup ], !dbg !2758
  %call98 = call ptr @DestroyCacheView(ptr noundef %call15) #13, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %call98, metadata !2579, metadata !DIExpression()), !dbg !2597
  br label %cleanup99, !dbg !2760

cleanup99:                                        ; preds = %for.end97, %for.end
  %retval.0 = phi i32 [ %call12, %for.end ], [ %status.0.lcssa, %for.end97 ], !dbg !2597
  ret i32 %retval.0, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RandomThresholdImage(ptr noundef %image, ptr noundef %thresholds, ptr noundef %exception) local_unnamed_addr #0 !dbg !2762 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2764, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %thresholds, metadata !2765, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2766, metadata !DIExpression()), !dbg !2768
  %call = tail call i32 @RandomThresholdImageChannel(ptr noundef %image, i32 noundef 134217719, ptr noundef %thresholds, ptr noundef %exception), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %call, metadata !2767, metadata !DIExpression()), !dbg !2768
  ret i32 %call, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RandomThresholdImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %thresholds, ptr noundef %exception) local_unnamed_addr #0 !dbg !2771 {
entry:
  %message.i602 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %threshold = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2773, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2774, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %thresholds, metadata !2775, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2776, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !2778, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %threshold) #13, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %threshold, metadata !2782, metadata !DIExpression()), !dbg !2820
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2821
  %0 = load i32, ptr %debug, align 8, !dbg !2821, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !2823
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2824

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2825
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1928, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !2826
  br label %if.end, !dbg !2827

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %thresholds, null, !dbg !2828
  br i1 %cmp1, label %cleanup428, label %if.end3, !dbg !2830

if.end3:                                          ; preds = %if.end
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %threshold) #13, !dbg !2831
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2783, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata float 6.553500e+04, metadata !2784, metadata !DIExpression()), !dbg !2816
  %call4 = call i32 @ParseGeometry(ptr noundef nonnull %thresholds, ptr noundef nonnull %geometry_info) #13, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %call4, metadata !2779, metadata !DIExpression()), !dbg !2816
  %1 = load double, ptr %geometry_info, align 8, !dbg !2833, !tbaa !1398
  %conv = fptrunc double %1 to float, !dbg !2834
  call void @llvm.dbg.value(metadata float %conv, metadata !2783, metadata !DIExpression()), !dbg !2816
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !2835
  %2 = load double, ptr %sigma, align 8, !dbg !2835, !tbaa !1406
  %conv5 = fptrunc double %2 to float, !dbg !2836
  call void @llvm.dbg.value(metadata float %conv5, metadata !2784, metadata !DIExpression()), !dbg !2816
  %and = and i32 %call4, 8, !dbg !2837
  %cmp6 = icmp eq i32 %and, 0, !dbg !2839
  %spec.select = select i1 %cmp6, float %conv, float %conv5, !dbg !2840
  call void @llvm.dbg.value(metadata float %spec.select, metadata !2784, metadata !DIExpression()), !dbg !2816
  %call10 = call ptr @strchr(ptr noundef nonnull %thresholds, i32 noundef 37) #19, !dbg !2841
  %cmp11.not = icmp eq ptr %call10, null, !dbg !2843
  br i1 %cmp11.not, label %if.else, label %if.then13, !dbg !2844

if.then13:                                        ; preds = %if.end3
  %mul = fmul float %spec.select, 0x40847ACCC0000000, !dbg !2845
  call void @llvm.dbg.value(metadata float %mul, metadata !2784, metadata !DIExpression()), !dbg !2816
  %mul14 = fmul float %conv, 0x40847ACCC0000000, !dbg !2847
  call void @llvm.dbg.value(metadata float %mul14, metadata !2783, metadata !DIExpression()), !dbg !2816
  br label %if.end24, !dbg !2848

if.else:                                          ; preds = %if.end3
  %cmp15 = fcmp oeq float %spec.select, %conv, !dbg !2849
  %cmp17 = fcmp oeq float %spec.select, 1.000000e+00
  %or.cond = or i1 %cmp15, %cmp17, !dbg !2851
  %cmp19 = fcmp ole float %conv, 8.000000e+00
  %or.cond438 = and i1 %cmp19, %or.cond, !dbg !2851
  br i1 %or.cond438, label %if.then21, label %if.end24, !dbg !2851

if.then21:                                        ; preds = %if.else
  %call22 = call i32 @OrderedPosterizeImageChannel(ptr noundef nonnull %image, i32 noundef %channel, ptr noundef nonnull %thresholds, ptr noundef %exception), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2780, metadata !DIExpression()), !dbg !2816
  br label %cleanup428, !dbg !2854

if.end24:                                         ; preds = %if.else, %if.then13
  %max_threshold.1 = phi float [ %mul, %if.then13 ], [ %spec.select, %if.else ], !dbg !2816
  %min_threshold.0 = phi float [ %mul14, %if.then13 ], [ %conv, %if.else ], !dbg !2816
  call void @llvm.dbg.value(metadata float %min_threshold.0, metadata !2783, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata float %max_threshold.1, metadata !2784, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2816
  %cmp25 = icmp eq i32 %channel, 47, !dbg !2855
  br i1 %cmp25, label %if.then27, label %if.end127, !dbg !2856

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 @AcquireImageColormap(ptr noundef nonnull %image, i64 noundef 2) #13, !dbg !2857
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2859
  br i1 %cmp29, label %if.then34, label %if.end40, !dbg !2860

if.then34:                                        ; preds = %if.then27
  %exception35 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2861
  %filename36 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2861
  %call38 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1965, i32 noundef 400, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.15, ptr noundef nonnull %filename36) #13, !dbg !2861
  br label %cleanup428, !dbg !2861

if.end40:                                         ; preds = %if.then27
  %call41 = call fastcc ptr @AcquireRandomInfoThreadSet(), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %call41, metadata !2785, metadata !DIExpression()), !dbg !2816
  %call42 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2787, metadata !DIExpression()), !dbg !2816
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2787, metadata !DIExpression()), !dbg !2816
  %3 = load i64, ptr %rows, align 8, !dbg !2866, !tbaa !909
  %cmp43644 = icmp sgt i64 %3, 0, !dbg !2867
  br i1 %cmp43644, label %for.body.lr.ph, label %for.end124, !dbg !2868

for.body.lr.ph:                                   ; preds = %if.end40
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %index75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 9
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2868

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0647 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0646 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %y.0645 = phi i64 [ 0, %for.body.lr.ph ], [ %inc123, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0647, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %progress.0646, metadata !2781, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %y.0645, metadata !2787, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 0, metadata !2788, metadata !DIExpression()), !dbg !2869
  %cmp46 = icmp eq i32 %status.0647, 0, !dbg !2870
  br i1 %cmp46, label %cleanup, label %if.end49, !dbg !2872

if.end49:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !2873, !tbaa !917
  %call50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call42, i64 noundef 0, i64 noundef %y.0645, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #14, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %call50, metadata !2797, metadata !DIExpression()), !dbg !2869
  %cmp51 = icmp eq ptr %call50, null, !dbg !2875
  br i1 %cmp51, label %cleanup, label %if.end54, !dbg !2877

if.end54:                                         ; preds = %if.end49
  %call55 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call42) #13, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %call55, metadata !2795, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 0, metadata !2796, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %call50, metadata !2797, metadata !DIExpression()), !dbg !2869
  %5 = load i64, ptr %columns, align 8, !dbg !2879, !tbaa !917
  %cmp58640 = icmp sgt i64 %5, 0, !dbg !2880
  br i1 %cmp58640, label %for.body60.lr.ph, label %for.end, !dbg !2881

for.body60.lr.ph:                                 ; preds = %if.end54
  %cmp82.not = icmp eq ptr %call55, null
  br i1 %cmp82.not, label %for.body60.us, label %for.body60, !dbg !2882

for.body60.us:                                    ; preds = %for.body60.lr.ph, %if.end77.us
  %q.0643.us = phi ptr [ %incdec.ptr.us, %if.end77.us ], [ %call50, %for.body60.lr.ph ]
  %x.0641.us = phi i64 [ %inc.us, %if.end77.us ], [ 0, %for.body60.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0643.us, metadata !2797, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %x.0641.us, metadata !2796, metadata !DIExpression()), !dbg !2869
  %call61.us = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %q.0643.us) #14, !dbg !2884
  call void @llvm.dbg.value(metadata float %call61.us, metadata !2802, metadata !DIExpression()), !dbg !2885
  %cmp62.us = fcmp olt float %call61.us, %min_threshold.0, !dbg !2886
  br i1 %cmp62.us, label %if.end77.us, label %if.else66.us, !dbg !2888

if.else66.us:                                     ; preds = %for.body60.us
  %cmp67.us = fcmp ogt float %call61.us, %max_threshold.1, !dbg !2889
  br i1 %cmp67.us, label %if.end77.us, label %if.else71.us, !dbg !2891

if.else71.us:                                     ; preds = %if.else66.us
  %6 = load ptr, ptr %call41, align 8, !dbg !2892, !tbaa !1948
  %call72.us = call double @GetPseudoRandomValue(ptr noundef %6) #13, !dbg !2893
  %mul73.us = fmul double %call72.us, 6.553500e+04, !dbg !2894
  %conv74.us = fptrunc double %mul73.us to float, !dbg !2895
  br label %if.end77.us

if.end77.us:                                      ; preds = %for.body60.us, %if.else66.us, %if.else71.us
  %min_threshold.0.sink = phi float [ %conv74.us, %if.else71.us ], [ %max_threshold.1, %if.else66.us ], [ %min_threshold.0, %for.body60.us ]
  store float %min_threshold.0.sink, ptr %index75, align 8, !dbg !2896, !tbaa !1450
  %cmp79.us = fcmp ugt float %call61.us, %min_threshold.0.sink, !dbg !2897
  call void @llvm.dbg.value(metadata i1 %cmp79.us, metadata !2798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2885
  %7 = load ptr, ptr %colormap, align 8, !dbg !2898, !tbaa !2615
  %conv87.us = zext i1 %cmp79.us to i64, !dbg !2898
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv87.us, i32 2, !dbg !2898
  %8 = load i16, ptr %red.us, align 2, !dbg !2898, !tbaa !951
  %red89.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0643.us, i64 0, i32 2, !dbg !2898
  store i16 %8, ptr %red89.us, align 2, !dbg !2898, !tbaa !951
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv87.us, i32 1, !dbg !2898
  %9 = load i16, ptr %green.us, align 2, !dbg !2898, !tbaa !955
  %green93.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0643.us, i64 0, i32 1, !dbg !2898
  store i16 %9, ptr %green93.us, align 2, !dbg !2898, !tbaa !955
  %add.ptr96.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv87.us, !dbg !2898
  %10 = load i16, ptr %add.ptr96.us, align 2, !dbg !2898, !tbaa !959
  store i16 %10, ptr %q.0643.us, align 2, !dbg !2898, !tbaa !959
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv87.us, i32 3, !dbg !2898
  %11 = load i16, ptr %opacity.us, align 2, !dbg !2898, !tbaa !963
  %opacity101.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0643.us, i64 0, i32 3, !dbg !2898
  store i16 %11, ptr %opacity101.us, align 2, !dbg !2898, !tbaa !963
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0643.us, i64 1, !dbg !2900
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2797, metadata !DIExpression()), !dbg !2869
  %inc.us = add nuw nsw i64 %x.0641.us, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2796, metadata !DIExpression()), !dbg !2869
  %12 = load i64, ptr %columns, align 8, !dbg !2879, !tbaa !917
  %cmp58.us = icmp slt i64 %inc.us, %12, !dbg !2880
  br i1 %cmp58.us, label %for.body60.us, label %for.end, !dbg !2881, !llvm.loop !2902

for.body60:                                       ; preds = %for.body60.lr.ph, %if.end77
  %q.0643 = phi ptr [ %incdec.ptr, %if.end77 ], [ %call50, %for.body60.lr.ph ]
  %x.0641 = phi i64 [ %inc, %if.end77 ], [ 0, %for.body60.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0643, metadata !2797, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %x.0641, metadata !2796, metadata !DIExpression()), !dbg !2869
  %call61 = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %q.0643) #14, !dbg !2884
  call void @llvm.dbg.value(metadata float %call61, metadata !2802, metadata !DIExpression()), !dbg !2885
  %cmp62 = fcmp olt float %call61, %min_threshold.0, !dbg !2886
  br i1 %cmp62, label %if.end77, label %if.else66, !dbg !2888

if.else66:                                        ; preds = %for.body60
  %cmp67 = fcmp ogt float %call61, %max_threshold.1, !dbg !2889
  br i1 %cmp67, label %if.end77, label %if.else71, !dbg !2891

if.else71:                                        ; preds = %if.else66
  %13 = load ptr, ptr %call41, align 8, !dbg !2892, !tbaa !1948
  %call72 = call double @GetPseudoRandomValue(ptr noundef %13) #13, !dbg !2893
  %mul73 = fmul double %call72, 6.553500e+04, !dbg !2894
  %conv74 = fptrunc double %mul73 to float, !dbg !2895
  br label %if.end77

if.end77:                                         ; preds = %if.else66, %for.body60, %if.else71
  %max_threshold.1.sink = phi float [ %conv74, %if.else71 ], [ %min_threshold.0, %for.body60 ], [ %max_threshold.1, %if.else66 ]
  store float %max_threshold.1.sink, ptr %index75, align 8, !dbg !2896, !tbaa !1450
  %cmp79 = fcmp ugt float %call61, %max_threshold.1.sink, !dbg !2897
  call void @llvm.dbg.value(metadata i1 %cmp79, metadata !2798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2885
  %conv81 = zext i1 %cmp79 to i16, !dbg !2904
  call void @llvm.dbg.value(metadata i16 %conv81, metadata !2798, metadata !DIExpression()), !dbg !2885
  %add.ptr = getelementptr inbounds i16, ptr %call55, i64 %x.0641, !dbg !2905
  store i16 %conv81, ptr %add.ptr, align 2, !dbg !2905, !tbaa !990
  %14 = load ptr, ptr %colormap, align 8, !dbg !2898, !tbaa !2615
  %conv87 = zext i1 %cmp79 to i64, !dbg !2898
  %red = getelementptr inbounds %struct._PixelPacket, ptr %14, i64 %conv87, i32 2, !dbg !2898
  %15 = load i16, ptr %red, align 2, !dbg !2898, !tbaa !951
  %red89 = getelementptr inbounds %struct._PixelPacket, ptr %q.0643, i64 0, i32 2, !dbg !2898
  store i16 %15, ptr %red89, align 2, !dbg !2898, !tbaa !951
  %green = getelementptr inbounds %struct._PixelPacket, ptr %14, i64 %conv87, i32 1, !dbg !2898
  %16 = load i16, ptr %green, align 2, !dbg !2898, !tbaa !955
  %green93 = getelementptr inbounds %struct._PixelPacket, ptr %q.0643, i64 0, i32 1, !dbg !2898
  store i16 %16, ptr %green93, align 2, !dbg !2898, !tbaa !955
  %add.ptr96 = getelementptr inbounds %struct._PixelPacket, ptr %14, i64 %conv87, !dbg !2898
  %17 = load i16, ptr %add.ptr96, align 2, !dbg !2898, !tbaa !959
  store i16 %17, ptr %q.0643, align 2, !dbg !2898, !tbaa !959
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %14, i64 %conv87, i32 3, !dbg !2898
  %18 = load i16, ptr %opacity, align 2, !dbg !2898, !tbaa !963
  %opacity101 = getelementptr inbounds %struct._PixelPacket, ptr %q.0643, i64 0, i32 3, !dbg !2898
  store i16 %18, ptr %opacity101, align 2, !dbg !2898, !tbaa !963
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0643, i64 1, !dbg !2900
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2797, metadata !DIExpression()), !dbg !2869
  %inc = add nuw nsw i64 %x.0641, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2796, metadata !DIExpression()), !dbg !2869
  %19 = load i64, ptr %columns, align 8, !dbg !2879, !tbaa !917
  %cmp58 = icmp slt i64 %inc, %19, !dbg !2880
  br i1 %cmp58, label %for.body60, label %for.end, !dbg !2881, !llvm.loop !2902

for.end:                                          ; preds = %if.end77, %if.end77.us, %if.end54
  %call102 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call42, ptr noundef %exception) #14, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %call102, metadata !2794, metadata !DIExpression()), !dbg !2869
  %cmp103 = icmp ne i32 %call102, 0, !dbg !2908
  %spec.select596 = zext i1 %cmp103 to i32, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %spec.select596, metadata !2780, metadata !DIExpression()), !dbg !2816
  %20 = load ptr, ptr %progress_monitor, align 8, !dbg !2911, !tbaa !1081
  %cmp107.not = icmp eq ptr %20, null, !dbg !2912
  br i1 %cmp107.not, label %cleanup, label %SetImageProgress.exit, !dbg !2913

SetImageProgress.exit:                            ; preds = %for.end
  %inc110 = add nsw i64 %progress.0646, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %inc110, metadata !2781, metadata !DIExpression()), !dbg !2816
  %21 = load i64, ptr %rows, align 8, !dbg !2915, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !2916
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %progress.0646, metadata !1093, metadata !DIExpression()) #13, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %21, metadata !1094, metadata !DIExpression()) #13, !dbg !2916
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2918
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !2919
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !2920
  %22 = load ptr, ptr %progress_monitor, align 8, !dbg !2921, !tbaa !1081
  %23 = load ptr, ptr %client_data.i, align 8, !dbg !2922, !tbaa !1103
  %call4.i = call i32 %22(ptr noundef nonnull %message.i, i64 noundef %progress.0646, i64 noundef %21, ptr noundef %23) #13, !dbg !2923
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2803, metadata !DIExpression()), !dbg !2925
  %cmp113 = icmp eq i32 %call4.i, 0, !dbg !2926
  %spec.select597 = select i1 %cmp113, i32 0, i32 %spec.select596, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %spec.select597, metadata !2780, metadata !DIExpression()), !dbg !2816
  br label %cleanup, !dbg !2929

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end49, %for.body
  %progress.2 = phi i64 [ %progress.0646, %for.body ], [ %progress.0646, %if.end49 ], [ %inc110, %SetImageProgress.exit ], [ %progress.0646, %for.end ], !dbg !2816
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end49 ], [ %spec.select597, %SetImageProgress.exit ], [ %spec.select596, %for.end ], !dbg !2816
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2781, metadata !DIExpression()), !dbg !2816
  %inc123 = add nuw nsw i64 %y.0645, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !2787, metadata !DIExpression()), !dbg !2816
  %24 = load i64, ptr %rows, align 8, !dbg !2866, !tbaa !909
  %cmp43 = icmp slt i64 %inc123, %24, !dbg !2867
  br i1 %cmp43, label %for.body, label %for.end124, !dbg !2868, !llvm.loop !2931

for.end124:                                       ; preds = %cleanup, %if.end40
  %status.0.lcssa = phi i32 [ 1, %if.end40 ], [ %status.4, %cleanup ], !dbg !2933
  %call125 = call ptr @DestroyCacheView(ptr noundef %call42) #13, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call125, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %call41, metadata !2935, metadata !DIExpression()) #13, !dbg !2942
  call void @llvm.dbg.value(metadata i64 0, metadata !2941, metadata !DIExpression()) #13, !dbg !2942
  %call13.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !2944
  %cmp14.i = icmp sgt i64 %call13.i, 0, !dbg !2947
  br i1 %cmp14.i, label %for.body.i, label %DestroyRandomInfoThreadSet.exit, !dbg !2948

for.body.i:                                       ; preds = %for.end124, %for.inc.i
  %i.015.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.end124 ]
  call void @llvm.dbg.value(metadata i64 %i.015.i, metadata !2941, metadata !DIExpression()) #13, !dbg !2942
  %arrayidx.i = getelementptr inbounds ptr, ptr %call41, i64 %i.015.i, !dbg !2949
  %25 = load ptr, ptr %arrayidx.i, align 8, !dbg !2949, !tbaa !1948
  %cmp1.not.i = icmp eq ptr %25, null, !dbg !2951
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !2952

if.then.i:                                        ; preds = %for.body.i
  %call3.i = call ptr @DestroyRandomInfo(ptr noundef nonnull %25) #13, !dbg !2953
  store ptr %call3.i, ptr %arrayidx.i, align 8, !dbg !2954, !tbaa !1948
  br label %for.inc.i, !dbg !2955

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc.i = add nuw nsw i64 %i.015.i, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !2941, metadata !DIExpression()) #13, !dbg !2942
  %call.i600 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !2944
  %cmp.i601 = icmp slt i64 %inc.i, %call.i600, !dbg !2947
  br i1 %cmp.i601, label %for.body.i, label %DestroyRandomInfoThreadSet.exit, !dbg !2948, !llvm.loop !2957

DestroyRandomInfoThreadSet.exit:                  ; preds = %for.inc.i, %for.end124
  %call5.i = call ptr @RelinquishAlignedMemory(ptr noundef %call41) #13, !dbg !2959
  call void @llvm.dbg.value(metadata ptr undef, metadata !2785, metadata !DIExpression()), !dbg !2816
  br label %cleanup428, !dbg !2960

if.end127:                                        ; preds = %if.end24
  %call128 = call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #13, !dbg !2961
  %cmp129 = icmp eq i32 %call128, 0, !dbg !2963
  br i1 %cmp129, label %if.then131, label %if.end133, !dbg !2964

if.then131:                                       ; preds = %if.end127
  %exception132 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2965
  call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception132) #13, !dbg !2967
  br label %cleanup428, !dbg !2968

if.end133:                                        ; preds = %if.end127
  %call134 = call fastcc ptr @AcquireRandomInfoThreadSet(), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %call134, metadata !2785, metadata !DIExpression()), !dbg !2816
  %call135 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %call135, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2787, metadata !DIExpression()), !dbg !2816
  %rows137 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2816
  %26 = load i64, ptr %rows137, align 8, !dbg !2971, !tbaa !909
  %cmp138636 = icmp sgt i64 %26, 0, !dbg !2972
  br i1 %cmp138636, label %for.body140.lr.ph, label %for.end425, !dbg !2973

for.body140.lr.ph:                                ; preds = %if.end133
  %columns150 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and162 = and i32 %channel, 1
  %cmp163.not = icmp eq i32 %and162, 0
  %red185 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 5
  %and189 = and i32 %channel, 2
  %cmp190.not = icmp eq i32 %and189, 0
  %green212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 6
  %and216 = and i32 %channel, 4
  %cmp217.not = icmp eq i32 %and216, 0
  %blue239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 7
  %and243 = and i32 %channel, 8
  %cmp244.not = icmp eq i32 %and243, 0
  %opacity266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 8
  %and270 = and i32 %channel, 32
  %cmp271.not = icmp eq i32 %and270, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp284 = fcmp ogt float %min_threshold.0, 0.000000e+00
  %index309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 9
  %progress_monitor404 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i605 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i607 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body140, !dbg !2973

for.body140:                                      ; preds = %for.body140.lr.ph, %cleanup417
  %status.5639 = phi i32 [ 1, %for.body140.lr.ph ], [ %status.9, %cleanup417 ]
  %progress.3638 = phi i64 [ 0, %for.body140.lr.ph ], [ %progress.5, %cleanup417 ]
  %y.1637 = phi i64 [ 0, %for.body140.lr.ph ], [ %inc424, %cleanup417 ]
  call void @llvm.dbg.value(metadata i32 %status.5639, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %progress.3638, metadata !2781, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %y.1637, metadata !2787, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2974
  %cmp146 = icmp eq i32 %status.5639, 0, !dbg !2975
  br i1 %cmp146, label %cleanup417, label %if.end149, !dbg !2977

if.end149:                                        ; preds = %for.body140
  %27 = load i64, ptr %columns150, align 8, !dbg !2978, !tbaa !917
  %call151 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call135, i64 noundef 0, i64 noundef %y.1637, i64 noundef %27, i64 noundef 1, ptr noundef %exception) #14, !dbg !2979
  call void @llvm.dbg.value(metadata ptr %call151, metadata !2811, metadata !DIExpression()), !dbg !2974
  %cmp152 = icmp eq ptr %call151, null, !dbg !2980
  br i1 %cmp152, label %cleanup417, label %if.end155, !dbg !2982

if.end155:                                        ; preds = %if.end149
  %call156 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call135) #13, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %call156, metadata !2810, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 0, metadata !2812, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %call151, metadata !2811, metadata !DIExpression()), !dbg !2974
  %28 = load i64, ptr %columns150, align 8, !dbg !2984, !tbaa !917
  %cmp159630 = icmp sgt i64 %28, 0, !dbg !2987
  br i1 %cmp159630, label %for.body161.lr.ph, label %for.end398, !dbg !2988

for.body161.lr.ph:                                ; preds = %if.end155
  %cmp278 = icmp eq ptr %call156, null
  br label %for.body161, !dbg !2988

for.body161:                                      ; preds = %for.body161.lr.ph, %if.end394
  %x145.0633 = phi i64 [ 0, %for.body161.lr.ph ], [ %inc397, %if.end394 ]
  %q144.0631 = phi ptr [ %call151, %for.body161.lr.ph ], [ %incdec.ptr395, %if.end394 ]
  call void @llvm.dbg.value(metadata i64 %x145.0633, metadata !2812, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %q144.0631, metadata !2811, metadata !DIExpression()), !dbg !2974
  br i1 %cmp163.not, label %if.end188, label %if.then165, !dbg !2989

if.then165:                                       ; preds = %for.body161
  %red166 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 2, !dbg !2991
  %29 = load i16, ptr %red166, align 2, !dbg !2991, !tbaa !951
  %conv167 = uitofp i16 %29 to float, !dbg !2995
  %cmp168 = fcmp ogt float %min_threshold.0, %conv167, !dbg !2996
  br i1 %cmp168, label %if.end188.sink.split, label %if.else172, !dbg !2997

if.else172:                                       ; preds = %if.then165
  %cmp175 = fcmp olt float %max_threshold.1, %conv167, !dbg !2998
  br i1 %cmp175, label %if.end188.sink.split, label %if.else179, !dbg !3000

if.else179:                                       ; preds = %if.else172
  %30 = load ptr, ptr %call134, align 8, !dbg !3001, !tbaa !1948
  %call182 = call double @GetPseudoRandomValue(ptr noundef %30) #13, !dbg !3002
  %mul183 = fmul double %call182, 6.553500e+04, !dbg !3003
  %conv184 = fptrunc double %mul183 to float, !dbg !3004
  br label %if.end188.sink.split

if.end188.sink.split:                             ; preds = %if.else172, %if.then165, %if.else179
  %min_threshold.0.sink651 = phi float [ %conv184, %if.else179 ], [ %min_threshold.0, %if.then165 ], [ %max_threshold.1, %if.else172 ]
  store float %min_threshold.0.sink651, ptr %red185, align 8, !dbg !3005, !tbaa !1403
  br label %if.end188, !dbg !3006

if.end188:                                        ; preds = %if.end188.sink.split, %for.body161
  br i1 %cmp190.not, label %if.end215, label %if.then192, !dbg !3006

if.then192:                                       ; preds = %if.end188
  %green193 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 1, !dbg !3007
  %31 = load i16, ptr %green193, align 2, !dbg !3007, !tbaa !955
  %conv194 = uitofp i16 %31 to float, !dbg !3011
  %cmp195 = fcmp ogt float %min_threshold.0, %conv194, !dbg !3012
  br i1 %cmp195, label %if.end215.sink.split, label %if.else199, !dbg !3013

if.else199:                                       ; preds = %if.then192
  %cmp202 = fcmp olt float %max_threshold.1, %conv194, !dbg !3014
  br i1 %cmp202, label %if.end215.sink.split, label %if.else206, !dbg !3016

if.else206:                                       ; preds = %if.else199
  %32 = load ptr, ptr %call134, align 8, !dbg !3017, !tbaa !1948
  %call209 = call double @GetPseudoRandomValue(ptr noundef %32) #13, !dbg !3018
  %mul210 = fmul double %call209, 6.553500e+04, !dbg !3019
  %conv211 = fptrunc double %mul210 to float, !dbg !3020
  br label %if.end215.sink.split

if.end215.sink.split:                             ; preds = %if.else199, %if.then192, %if.else206
  %min_threshold.0.sink652 = phi float [ %conv211, %if.else206 ], [ %min_threshold.0, %if.then192 ], [ %max_threshold.1, %if.else199 ]
  store float %min_threshold.0.sink652, ptr %green212, align 4, !dbg !3021, !tbaa !1444
  br label %if.end215, !dbg !3022

if.end215:                                        ; preds = %if.end215.sink.split, %if.end188
  br i1 %cmp217.not, label %if.end242, label %if.then219, !dbg !3022

if.then219:                                       ; preds = %if.end215
  %33 = load i16, ptr %q144.0631, align 2, !dbg !3023, !tbaa !959
  %conv221 = uitofp i16 %33 to float, !dbg !3027
  %cmp222 = fcmp ogt float %min_threshold.0, %conv221, !dbg !3028
  br i1 %cmp222, label %if.end242.sink.split, label %if.else226, !dbg !3029

if.else226:                                       ; preds = %if.then219
  %cmp229 = fcmp olt float %max_threshold.1, %conv221, !dbg !3030
  br i1 %cmp229, label %if.end242.sink.split, label %if.else233, !dbg !3032

if.else233:                                       ; preds = %if.else226
  %34 = load ptr, ptr %call134, align 8, !dbg !3033, !tbaa !1948
  %call236 = call double @GetPseudoRandomValue(ptr noundef %34) #13, !dbg !3034
  %mul237 = fmul double %call236, 6.553500e+04, !dbg !3035
  %conv238 = fptrunc double %mul237 to float, !dbg !3036
  br label %if.end242.sink.split

if.end242.sink.split:                             ; preds = %if.else226, %if.then219, %if.else233
  %min_threshold.0.sink653 = phi float [ %conv238, %if.else233 ], [ %min_threshold.0, %if.then219 ], [ %max_threshold.1, %if.else226 ]
  store float %min_threshold.0.sink653, ptr %blue239, align 8, !dbg !3037, !tbaa !1446
  br label %if.end242, !dbg !3038

if.end242:                                        ; preds = %if.end242.sink.split, %if.end215
  br i1 %cmp244.not, label %if.end269, label %if.then246, !dbg !3038

if.then246:                                       ; preds = %if.end242
  %opacity247 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 3, !dbg !3039
  %35 = load i16, ptr %opacity247, align 2, !dbg !3039, !tbaa !963
  %conv248 = uitofp i16 %35 to float, !dbg !3043
  %cmp249 = fcmp ogt float %min_threshold.0, %conv248, !dbg !3044
  br i1 %cmp249, label %if.end269.sink.split, label %if.else253, !dbg !3045

if.else253:                                       ; preds = %if.then246
  %cmp256 = fcmp olt float %max_threshold.1, %conv248, !dbg !3046
  br i1 %cmp256, label %if.end269.sink.split, label %if.else260, !dbg !3048

if.else260:                                       ; preds = %if.else253
  %36 = load ptr, ptr %call134, align 8, !dbg !3049, !tbaa !1948
  %call263 = call double @GetPseudoRandomValue(ptr noundef %36) #13, !dbg !3050
  %mul264 = fmul double %call263, 6.553500e+04, !dbg !3051
  %conv265 = fptrunc double %mul264 to float, !dbg !3052
  br label %if.end269.sink.split

if.end269.sink.split:                             ; preds = %if.else253, %if.then246, %if.else260
  %min_threshold.0.sink654 = phi float [ %conv265, %if.else260 ], [ %min_threshold.0, %if.then246 ], [ %max_threshold.1, %if.else253 ]
  store float %min_threshold.0.sink654, ptr %opacity266, align 4, !dbg !3053, !tbaa !1448
  br label %if.end269, !dbg !3054

if.end269:                                        ; preds = %if.end269.sink.split, %if.end242
  br i1 %cmp271.not, label %if.end312, label %land.lhs.true273, !dbg !3054

land.lhs.true273:                                 ; preds = %if.end269
  %37 = load i32, ptr %colorspace, align 4, !dbg !3056, !tbaa !940
  %cmp274 = icmp eq i32 %37, 12, !dbg !3057
  br i1 %cmp274, label %if.then276, label %if.end312, !dbg !3058

if.then276:                                       ; preds = %land.lhs.true273
  br i1 %cmp278, label %cond.end, label %cond.end.thread, !dbg !3059

cond.end:                                         ; preds = %if.then276
  br i1 %cmp284, label %if.end312.sink.split, label %cond.end296, !dbg !3062

cond.end.thread:                                  ; preds = %if.then276
  %add.ptr277 = getelementptr inbounds i16, ptr %call156, i64 %x145.0633, !dbg !3059
  %38 = load i16, ptr %add.ptr277, align 2, !dbg !3059, !tbaa !990
  %conv283627 = uitofp i16 %38 to float, !dbg !3063
  %cmp284628 = fcmp ogt float %min_threshold.0, %conv283627, !dbg !3064
  br i1 %cmp284628, label %if.end312.sink.split, label %cond.false293, !dbg !3062

cond.false293:                                    ; preds = %cond.end.thread
  %conv295 = zext i16 %38 to i32, !dbg !3065
  br label %cond.end296, !dbg !3065

cond.end296:                                      ; preds = %cond.end, %cond.false293
  %cond297 = phi i32 [ %conv295, %cond.false293 ], [ 0, %cond.end ], !dbg !3065
  %conv298 = sitofp i32 %cond297 to float, !dbg !3067
  %cmp299 = fcmp olt float %max_threshold.1, %conv298, !dbg !3068
  br i1 %cmp299, label %if.end312.sink.split, label %if.else303, !dbg !3069

if.else303:                                       ; preds = %cond.end296
  %39 = load ptr, ptr %call134, align 8, !dbg !3070, !tbaa !1948
  %call306 = call double @GetPseudoRandomValue(ptr noundef %39) #13, !dbg !3071
  %mul307 = fmul double %call306, 6.553500e+04, !dbg !3072
  %conv308 = fptrunc double %mul307 to float, !dbg !3073
  br label %if.end312.sink.split

if.end312.sink.split:                             ; preds = %cond.end296, %cond.end, %cond.end.thread, %if.else303
  %min_threshold.0.sink655 = phi float [ %conv308, %if.else303 ], [ %min_threshold.0, %cond.end.thread ], [ %min_threshold.0, %cond.end ], [ %max_threshold.1, %cond.end296 ]
  store float %min_threshold.0.sink655, ptr %index309, align 8, !dbg !3074, !tbaa !1450
  br label %if.end312, !dbg !3075

if.end312:                                        ; preds = %if.end312.sink.split, %land.lhs.true273, %if.end269
  br i1 %cmp163.not, label %if.end325, label %if.then316, !dbg !3075

if.then316:                                       ; preds = %if.end312
  %red317 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 2, !dbg !3076
  %40 = load i16, ptr %red317, align 2, !dbg !3076, !tbaa !951
  %conv318 = uitofp i16 %40 to float, !dbg !3076
  %41 = load float, ptr %red185, align 8, !dbg !3076, !tbaa !1403
  %cmp320 = fcmp ult float %41, %conv318, !dbg !3076
  %conv323 = sext i1 %cmp320 to i16, !dbg !3076
  store i16 %conv323, ptr %red317, align 2, !dbg !3076, !tbaa !951
  br label %if.end325, !dbg !3076

if.end325:                                        ; preds = %if.then316, %if.end312
  br i1 %cmp190.not, label %if.end338, label %if.then329, !dbg !3078

if.then329:                                       ; preds = %if.end325
  %green330 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 1, !dbg !3079
  %42 = load i16, ptr %green330, align 2, !dbg !3079, !tbaa !955
  %conv331 = uitofp i16 %42 to float, !dbg !3079
  %43 = load float, ptr %green212, align 4, !dbg !3079, !tbaa !1444
  %cmp333 = fcmp ult float %43, %conv331, !dbg !3079
  %conv336 = sext i1 %cmp333 to i16, !dbg !3079
  store i16 %conv336, ptr %green330, align 2, !dbg !3079, !tbaa !955
  br label %if.end338, !dbg !3079

if.end338:                                        ; preds = %if.then329, %if.end325
  br i1 %cmp217.not, label %if.end351, label %if.then342, !dbg !3081

if.then342:                                       ; preds = %if.end338
  %44 = load i16, ptr %q144.0631, align 2, !dbg !3082, !tbaa !959
  %conv344 = uitofp i16 %44 to float, !dbg !3082
  %45 = load float, ptr %blue239, align 8, !dbg !3082, !tbaa !1446
  %cmp346 = fcmp ult float %45, %conv344, !dbg !3082
  %conv349 = sext i1 %cmp346 to i16, !dbg !3082
  store i16 %conv349, ptr %q144.0631, align 2, !dbg !3082, !tbaa !959
  br label %if.end351, !dbg !3082

if.end351:                                        ; preds = %if.then342, %if.end338
  br i1 %cmp244.not, label %if.end364, label %if.then355, !dbg !3084

if.then355:                                       ; preds = %if.end351
  %opacity356 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 0, i32 3, !dbg !3085
  %46 = load i16, ptr %opacity356, align 2, !dbg !3085, !tbaa !963
  %conv357 = uitofp i16 %46 to float, !dbg !3085
  %47 = load float, ptr %opacity266, align 4, !dbg !3085, !tbaa !1448
  %cmp359 = fcmp ult float %47, %conv357, !dbg !3085
  %conv362 = sext i1 %cmp359 to i16, !dbg !3085
  store i16 %conv362, ptr %opacity356, align 2, !dbg !3085, !tbaa !963
  br label %if.end364, !dbg !3085

if.end364:                                        ; preds = %if.then355, %if.end351
  br i1 %cmp271.not, label %if.end394, label %land.lhs.true368, !dbg !3087

land.lhs.true368:                                 ; preds = %if.end364
  %48 = load i32, ptr %colorspace, align 4, !dbg !3089, !tbaa !940
  %cmp370 = icmp ne i32 %48, 12, !dbg !3090
  %or.cond629 = select i1 %cmp370, i1 true, i1 %cmp278, !dbg !3091
  br i1 %or.cond629, label %if.end394, label %cond.end384, !dbg !3091

cond.end384:                                      ; preds = %land.lhs.true368
  %add.ptr373 = getelementptr inbounds i16, ptr %call156, i64 %x145.0633, !dbg !3092
  %49 = load i16, ptr %add.ptr373, align 2, !dbg !3092, !tbaa !990
  %conv386 = uitofp i16 %49 to float, !dbg !3092
  %50 = load float, ptr %index309, align 8, !dbg !3092, !tbaa !1450
  %cmp388 = fcmp ult float %50, %conv386, !dbg !3092
  %conv391 = sext i1 %cmp388 to i16, !dbg !3092
  store i16 %conv391, ptr %add.ptr373, align 2, !dbg !3092, !tbaa !990
  br label %if.end394, !dbg !3092

if.end394:                                        ; preds = %cond.end384, %land.lhs.true368, %if.end364
  %incdec.ptr395 = getelementptr inbounds %struct._PixelPacket, ptr %q144.0631, i64 1, !dbg !3095
  call void @llvm.dbg.value(metadata ptr %incdec.ptr395, metadata !2811, metadata !DIExpression()), !dbg !2974
  %inc397 = add nuw nsw i64 %x145.0633, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %inc397, metadata !2812, metadata !DIExpression()), !dbg !2974
  %51 = load i64, ptr %columns150, align 8, !dbg !2984, !tbaa !917
  %cmp159 = icmp slt i64 %inc397, %51, !dbg !2987
  br i1 %cmp159, label %for.body161, label %for.end398, !dbg !2988, !llvm.loop !3097

for.end398:                                       ; preds = %if.end394, %if.end155
  %call399 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call135, ptr noundef %exception) #14, !dbg !3099
  %cmp400 = icmp ne i32 %call399, 0, !dbg !3101
  %spec.select598 = zext i1 %cmp400 to i32, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %spec.select598, metadata !2780, metadata !DIExpression()), !dbg !2816
  %52 = load ptr, ptr %progress_monitor404, align 8, !dbg !3103, !tbaa !1081
  %cmp405.not = icmp eq ptr %52, null, !dbg !3104
  br i1 %cmp405.not, label %cleanup417, label %SetImageProgress.exit611, !dbg !3105

SetImageProgress.exit611:                         ; preds = %for.end398
  %inc409 = add nsw i64 %progress.3638, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %inc409, metadata !2781, metadata !DIExpression()), !dbg !2816
  %53 = load i64, ptr %rows137, align 8, !dbg !3107, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !3108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %progress.3638, metadata !1093, metadata !DIExpression()) #13, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %53, metadata !1094, metadata !DIExpression()) #13, !dbg !3108
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i602) #13, !dbg !3110
  call void @llvm.dbg.declare(metadata ptr %message.i602, metadata !1095, metadata !DIExpression()) #13, !dbg !3111
  %call.i606 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i602, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i605) #13, !dbg !3112
  %54 = load ptr, ptr %progress_monitor404, align 8, !dbg !3113, !tbaa !1081
  %55 = load ptr, ptr %client_data.i607, align 8, !dbg !3114, !tbaa !1103
  %call4.i608 = call i32 %54(ptr noundef nonnull %message.i602, i64 noundef %progress.3638, i64 noundef %53, ptr noundef %55) #13, !dbg !3115
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i602) #13, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %call4.i608, metadata !2813, metadata !DIExpression()), !dbg !3117
  %cmp412 = icmp eq i32 %call4.i608, 0, !dbg !3118
  %spec.select599 = select i1 %cmp412, i32 0, i32 %spec.select598, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %spec.select599, metadata !2780, metadata !DIExpression()), !dbg !2816
  br label %cleanup417, !dbg !3121

cleanup417:                                       ; preds = %for.end398, %SetImageProgress.exit611, %if.end149, %for.body140
  %progress.5 = phi i64 [ %progress.3638, %for.body140 ], [ %progress.3638, %if.end149 ], [ %inc409, %SetImageProgress.exit611 ], [ %progress.3638, %for.end398 ], !dbg !2816
  %status.9 = phi i32 [ 0, %for.body140 ], [ 0, %if.end149 ], [ %spec.select599, %SetImageProgress.exit611 ], [ %spec.select598, %for.end398 ], !dbg !2816
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !2780, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %progress.5, metadata !2781, metadata !DIExpression()), !dbg !2816
  %inc424 = add nuw nsw i64 %y.1637, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %inc424, metadata !2787, metadata !DIExpression()), !dbg !2816
  %56 = load i64, ptr %rows137, align 8, !dbg !2971, !tbaa !909
  %cmp138 = icmp slt i64 %inc424, %56, !dbg !2972
  br i1 %cmp138, label %for.body140, label %for.end425, !dbg !2973, !llvm.loop !3123

for.end425:                                       ; preds = %cleanup417, %if.end133
  %status.5.lcssa = phi i32 [ 1, %if.end133 ], [ %status.9, %cleanup417 ], !dbg !2933
  %call426 = call ptr @DestroyCacheView(ptr noundef %call135) #13, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %call426, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %call134, metadata !2935, metadata !DIExpression()) #13, !dbg !3126
  call void @llvm.dbg.value(metadata i64 0, metadata !2941, metadata !DIExpression()) #13, !dbg !3126
  %call13.i612 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !3128
  %cmp14.i613 = icmp sgt i64 %call13.i612, 0, !dbg !3129
  br i1 %cmp14.i613, label %for.body.i617, label %DestroyRandomInfoThreadSet.exit625, !dbg !3130

for.body.i617:                                    ; preds = %for.end425, %for.inc.i623
  %i.015.i614 = phi i64 [ %inc.i620, %for.inc.i623 ], [ 0, %for.end425 ]
  call void @llvm.dbg.value(metadata i64 %i.015.i614, metadata !2941, metadata !DIExpression()) #13, !dbg !3126
  %arrayidx.i615 = getelementptr inbounds ptr, ptr %call134, i64 %i.015.i614, !dbg !3131
  %57 = load ptr, ptr %arrayidx.i615, align 8, !dbg !3131, !tbaa !1948
  %cmp1.not.i616 = icmp eq ptr %57, null, !dbg !3132
  br i1 %cmp1.not.i616, label %for.inc.i623, label %if.then.i619, !dbg !3133

if.then.i619:                                     ; preds = %for.body.i617
  %call3.i618 = call ptr @DestroyRandomInfo(ptr noundef nonnull %57) #13, !dbg !3134
  store ptr %call3.i618, ptr %arrayidx.i615, align 8, !dbg !3135, !tbaa !1948
  br label %for.inc.i623, !dbg !3136

for.inc.i623:                                     ; preds = %if.then.i619, %for.body.i617
  %inc.i620 = add nuw nsw i64 %i.015.i614, 1, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %inc.i620, metadata !2941, metadata !DIExpression()) #13, !dbg !3126
  %call.i621 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !3128
  %cmp.i622 = icmp slt i64 %inc.i620, %call.i621, !dbg !3129
  br i1 %cmp.i622, label %for.body.i617, label %DestroyRandomInfoThreadSet.exit625, !dbg !3130, !llvm.loop !3138

DestroyRandomInfoThreadSet.exit625:               ; preds = %for.inc.i623, %for.end425
  %call5.i624 = call ptr @RelinquishAlignedMemory(ptr noundef %call134) #13, !dbg !3140
  call void @llvm.dbg.value(metadata ptr undef, metadata !2785, metadata !DIExpression()), !dbg !2816
  br label %cleanup428, !dbg !3141

cleanup428:                                       ; preds = %if.then34, %if.end, %DestroyRandomInfoThreadSet.exit625, %if.then131, %DestroyRandomInfoThreadSet.exit, %if.then21
  %retval.0 = phi i32 [ %status.0.lcssa, %DestroyRandomInfoThreadSet.exit ], [ 0, %if.then131 ], [ %status.5.lcssa, %DestroyRandomInfoThreadSet.exit625 ], [ %call22, %if.then21 ], [ 1, %if.end ], [ 0, %if.then34 ], !dbg !2816
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %threshold) #13, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !3142
  ret i32 %retval.0, !dbg !3142
}

declare !dbg !3143 i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #11 !dbg !3147 {
entry:
  %call = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %call, metadata !3153, metadata !DIExpression()), !dbg !3155
  %call1 = tail call ptr @AcquireAlignedMemory(i64 noundef %call, i64 noundef 8) #18, !dbg !3156
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3152, metadata !DIExpression()), !dbg !3155
  %cmp = icmp eq ptr %call1, null, !dbg !3157
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3159

if.end:                                           ; preds = %entry
  %mul = shl i64 %call, 3, !dbg !3160
  %call2 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef %mul) #13, !dbg !3161
  call void @llvm.dbg.value(metadata i64 0, metadata !3151, metadata !DIExpression()), !dbg !3155
  %cmp322 = icmp sgt i64 %call, 0, !dbg !3162
  br i1 %cmp322, label %for.body, label %cleanup, !dbg !3165

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %i.023, 1, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !3151, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3155
  %exitcond.not = icmp eq i64 %inc, %call, !dbg !3162
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !3165, !llvm.loop !3167

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i64 [ %inc, %for.cond ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !3151, metadata !DIExpression()), !dbg !3155
  %call4 = tail call ptr @AcquireRandomInfo() #13, !dbg !3169
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %i.023, !dbg !3171
  store ptr %call4, ptr %arrayidx, align 8, !dbg !3172, !tbaa !1948
  %cmp6 = icmp eq ptr %call4, null, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !3151, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3155
  br i1 %cmp6, label %if.then7, label %for.cond, !dbg !3175

if.then7:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2935, metadata !DIExpression()) #13, !dbg !3176
  call void @llvm.dbg.value(metadata i64 0, metadata !2941, metadata !DIExpression()) #13, !dbg !3176
  %call13.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !3178
  %cmp14.i = icmp sgt i64 %call13.i, 0, !dbg !3179
  br i1 %cmp14.i, label %for.body.i, label %DestroyRandomInfoThreadSet.exit, !dbg !3180

for.body.i:                                       ; preds = %if.then7, %for.inc.i
  %i.015.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %if.then7 ]
  call void @llvm.dbg.value(metadata i64 %i.015.i, metadata !2941, metadata !DIExpression()) #13, !dbg !3176
  %arrayidx.i = getelementptr inbounds ptr, ptr %call1, i64 %i.015.i, !dbg !3181
  %0 = load ptr, ptr %arrayidx.i, align 8, !dbg !3181, !tbaa !1948
  %cmp1.not.i = icmp eq ptr %0, null, !dbg !3182
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !3183

if.then.i:                                        ; preds = %for.body.i
  %call3.i = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %0) #13, !dbg !3184
  store ptr %call3.i, ptr %arrayidx.i, align 8, !dbg !3185, !tbaa !1948
  br label %for.inc.i, !dbg !3186

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc.i = add nuw nsw i64 %i.015.i, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !2941, metadata !DIExpression()) #13, !dbg !3176
  %call.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !3178
  %cmp.i = icmp slt i64 %inc.i, %call.i, !dbg !3179
  br i1 %cmp.i, label %for.body.i, label %DestroyRandomInfoThreadSet.exit, !dbg !3180, !llvm.loop !3188

DestroyRandomInfoThreadSet.exit:                  ; preds = %for.inc.i, %if.then7
  %call5.i = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %call1) #13, !dbg !3190
  br label %cleanup, !dbg !3191

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %DestroyRandomInfoThreadSet.exit
  %retval.0 = phi ptr [ %call5.i, %DestroyRandomInfoThreadSet.exit ], [ null, %entry ], [ %call1, %if.end ], [ %call1, %for.cond ], !dbg !3155
  ret ptr %retval.0, !dbg !3192
}

declare !dbg !3193 double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WhiteThresholdImage(ptr noundef %image, ptr noundef %threshold) local_unnamed_addr #0 !dbg !3196 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %threshold, metadata !3199, metadata !DIExpression()), !dbg !3201
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3202
  %call = tail call i32 @WhiteThresholdImageChannel(ptr noundef %image, i32 noundef 134217719, ptr noundef %threshold, ptr noundef nonnull %exception), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %call, metadata !3200, metadata !DIExpression()), !dbg !3201
  ret i32 %call, !dbg !3204
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WhiteThresholdImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %thresholds, ptr noundef %exception) local_unnamed_addr #0 !dbg !3205 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %threshold = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3207, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3208, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %thresholds, metadata !3209, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3210, metadata !DIExpression()), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !3228
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !3212, metadata !DIExpression()), !dbg !3229
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %threshold) #13, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %threshold, metadata !3215, metadata !DIExpression()), !dbg !3231
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3232
  %0 = load i32, ptr %debug, align 8, !dbg !3232, !tbaa !866
  %cmp.not = icmp eq i32 %0, 0, !dbg !3234
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3235

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3236
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2251, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !3237
  br label %if.end, !dbg !3238

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %thresholds, null, !dbg !3239
  br i1 %cmp1, label %cleanup175, label %if.end3, !dbg !3241

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #13, !dbg !3242
  %cmp5 = icmp eq i32 %call4, 0, !dbg !3244
  br i1 %cmp5, label %cleanup175, label %if.end7, !dbg !3245

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @ParseGeometry(ptr noundef nonnull %thresholds, ptr noundef nonnull %geometry_info) #13, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %call8, metadata !3216, metadata !DIExpression()), !dbg !3227
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %threshold) #13, !dbg !3247
  %1 = load double, ptr %geometry_info, align 8, !dbg !3248, !tbaa !1398
  %conv = fptrunc double %1 to float, !dbg !3249
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 5, !dbg !3250
  store float %conv, ptr %red, align 8, !dbg !3251, !tbaa !1403
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !3252
  %2 = load double, ptr %sigma, align 8, !dbg !3252, !tbaa !1406
  %conv9 = fptrunc double %2 to float, !dbg !3253
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 6, !dbg !3254
  %and = and i32 %call8, 8, !dbg !3255
  %cmp10 = icmp eq i32 %and, 0, !dbg !3257
  %spec.store.select = select i1 %cmp10, float %conv, float %conv9, !dbg !3258
  store float %spec.store.select, ptr %green, align 4, !dbg !3227
  %xi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !3259
  %3 = load double, ptr %xi, align 8, !dbg !3259, !tbaa !1414
  %conv16 = fptrunc double %3 to float, !dbg !3260
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 7, !dbg !3261
  %and17 = and i32 %call8, 1, !dbg !3262
  %cmp18 = icmp eq i32 %and17, 0, !dbg !3264
  %spec.store.select243 = select i1 %cmp18, float %conv, float %conv16, !dbg !3265
  store float %spec.store.select243, ptr %blue, align 8, !dbg !3227
  %psi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3, !dbg !3266
  %4 = load double, ptr %psi, align 8, !dbg !3266, !tbaa !1422
  %conv24 = fptrunc double %4 to float, !dbg !3267
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 8, !dbg !3268
  %and25 = and i32 %call8, 2, !dbg !3269
  %cmp26 = icmp eq i32 %and25, 0, !dbg !3271
  %spec.store.select242 = select i1 %cmp26, float %conv, float %conv24, !dbg !3272
  store float %spec.store.select242, ptr %opacity, align 4, !dbg !3227
  %chi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 4, !dbg !3273
  %5 = load double, ptr %chi, align 8, !dbg !3273, !tbaa !1430
  %conv32 = fptrunc double %5 to float, !dbg !3274
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 9, !dbg !3275
  %and33 = and i32 %call8, 16, !dbg !3276
  %cmp34 = icmp eq i32 %and33, 0, !dbg !3278
  %spec.store.select244 = select i1 %cmp34, float %conv, float %conv32, !dbg !3279
  store float %spec.store.select244, ptr %index, align 8, !dbg !3227
  %and40 = and i32 %call8, 4096, !dbg !3280
  %cmp41.not = icmp eq i32 %and40, 0, !dbg !3282
  br i1 %cmp41.not, label %if.end53, label %if.then43, !dbg !3283

if.then43:                                        ; preds = %if.end7
  %mul = fmul float %conv, 0x40847ACCC0000000, !dbg !3284
  store float %mul, ptr %red, align 8, !dbg !3284, !tbaa !1403
  %mul46 = fmul float %spec.store.select, 0x40847ACCC0000000, !dbg !3286
  store float %mul46, ptr %green, align 4, !dbg !3286, !tbaa !1444
  %mul48 = fmul float %spec.store.select243, 0x40847ACCC0000000, !dbg !3287
  store float %mul48, ptr %blue, align 8, !dbg !3287, !tbaa !1446
  %mul50 = fmul float %spec.store.select242, 0x40847ACCC0000000, !dbg !3288
  store float %mul50, ptr %opacity, align 4, !dbg !3288, !tbaa !1448
  %mul52 = fmul float %spec.store.select244, 0x40847ACCC0000000, !dbg !3289
  store float %mul52, ptr %index, align 8, !dbg !3289, !tbaa !1450
  br label %if.end53, !dbg !3290

if.end53:                                         ; preds = %if.then43, %if.end7
  %6 = phi float [ %mul48, %if.then43 ], [ %spec.store.select243, %if.end7 ]
  %7 = phi float [ %mul46, %if.then43 ], [ %spec.store.select, %if.end7 ]
  %8 = phi float [ %mul, %if.then43 ], [ %conv, %if.end7 ]
  call void @llvm.dbg.value(metadata ptr %threshold, metadata !1452, metadata !DIExpression()) #13, !dbg !3291
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %threshold, i64 0, i32 1, !dbg !3294
  %9 = load i32, ptr %colorspace.i, align 4, !dbg !3294, !tbaa !1465
  %.off.i = add i32 %9, -1, !dbg !3295
  %switch.i = icmp ult i32 %.off.i, 2, !dbg !3295
  br i1 %switch.i, label %if.end.i, label %land.lhs.true, !dbg !3295

if.end.i:                                         ; preds = %if.end53
  %sub.i = fsub float %8, %7, !dbg !3296
  %10 = call float @llvm.fabs.f32(float %sub.i) #13, !dbg !3297
  %11 = fpext float %10 to double, !dbg !3297
  %cmp3.i = fcmp olt double %11, 1.000000e-15, !dbg !3298
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true, !dbg !3299

land.lhs.true5.i:                                 ; preds = %if.end.i
  %sub7.i = fsub float %7, %6, !dbg !3300
  %12 = call float @llvm.fabs.f32(float %sub7.i) #13, !dbg !3301
  %13 = fpext float %12 to double, !dbg !3301
  %cmp9.i = fcmp olt double %13, 1.000000e-15, !dbg !3302
  br i1 %cmp9.i, label %if.end62, label %land.lhs.true, !dbg !3303

land.lhs.true:                                    ; preds = %if.end.i, %land.lhs.true5.i, %if.end53
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3304
  %14 = load i32, ptr %colorspace, align 4, !dbg !3304, !tbaa !940
  call void @llvm.dbg.value(metadata i32 %14, metadata !1221, metadata !DIExpression()), !dbg !3305
  switch i32 %14, label %if.end62 [
    i32 19, label %if.then60
    i32 17, label %if.then60
    i32 2, label %if.then60
  ], !dbg !3307

if.then60:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %call61 = call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #13, !dbg !3308
  br label %if.end62, !dbg !3309

if.end62:                                         ; preds = %land.lhs.true, %land.lhs.true5.i, %if.then60
  call void @llvm.dbg.value(metadata i32 1, metadata !3213, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 0, metadata !3214, metadata !DIExpression()), !dbg !3227
  %call63 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !3310
  call void @llvm.dbg.value(metadata ptr %call63, metadata !3211, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3227
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 1, metadata !3213, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 0, metadata !3214, metadata !DIExpression()), !dbg !3227
  %15 = load i64, ptr %rows, align 8, !dbg !3311, !tbaa !909
  %cmp64250 = icmp sgt i64 %15, 0, !dbg !3312
  br i1 %cmp64250, label %for.body.lr.ph, label %for.end173, !dbg !3313

for.body.lr.ph:                                   ; preds = %if.end62
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and81 = and i32 %channel, 1
  %cmp82.not = icmp eq i32 %and81, 0
  %and93 = and i32 %channel, 2
  %cmp94.not = icmp eq i32 %and93, 0
  %and105 = and i32 %channel, 4
  %cmp106.not = icmp eq i32 %and105, 0
  %and117 = and i32 %channel, 8
  %cmp118.not = icmp eq i32 %and117, 0
  %and129 = and i32 %channel, 32
  %cmp130.not = icmp eq i32 %and129, 0
  %colorspace133 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3313

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0253 = phi i64 [ 0, %for.body.lr.ph ], [ %inc172, %cleanup ]
  %status.0252 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0251 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0253, metadata !3217, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %status.0252, metadata !3213, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %progress.0251, metadata !3214, metadata !DIExpression()), !dbg !3227
  %cmp66 = icmp eq i32 %status.0252, 0, !dbg !3314
  br i1 %cmp66, label %cleanup, label %if.end69, !dbg !3316

if.end69:                                         ; preds = %for.body
  %16 = load i64, ptr %columns, align 8, !dbg !3317, !tbaa !917
  %call70 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call63, i64 noundef 0, i64 noundef %y.0253, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #14, !dbg !3318
  call void @llvm.dbg.value(metadata ptr %call70, metadata !3223, metadata !DIExpression()), !dbg !3319
  %cmp71 = icmp eq ptr %call70, null, !dbg !3320
  br i1 %cmp71, label %cleanup, label %if.end74, !dbg !3322

if.end74:                                         ; preds = %if.end69
  %call75 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call63) #13, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %call75, metadata !3218, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 0, metadata !3222, metadata !DIExpression()), !dbg !3319
  %17 = load i64, ptr %columns, align 8, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %call70, metadata !3223, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 0, metadata !3222, metadata !DIExpression()), !dbg !3319
  %cmp78245 = icmp sgt i64 %17, 0, !dbg !3324
  br i1 %cmp78245, label %for.body80.lr.ph, label %for.end, !dbg !3327

for.body80.lr.ph:                                 ; preds = %if.end74
  %18 = load float, ptr %red, align 8
  %19 = load float, ptr %green, align 4
  %20 = load float, ptr %blue, align 8
  %21 = load float, ptr %opacity, align 4
  %cmp137 = icmp eq ptr %call75, null
  %22 = load float, ptr %index, align 8
  br i1 %cmp130.not, label %for.body80.us, label %for.body80.lr.ph.split, !dbg !3328

for.body80.us:                                    ; preds = %for.body80.lr.ph, %if.end128.us
  %q.0248.us = phi ptr [ %incdec.ptr.us, %if.end128.us ], [ %call70, %for.body80.lr.ph ]
  %x.0246.us = phi i64 [ %inc.us, %if.end128.us ], [ 0, %for.body80.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0248.us, metadata !3223, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %x.0246.us, metadata !3222, metadata !DIExpression()), !dbg !3319
  br i1 %cmp82.not, label %if.end92.us, label %land.lhs.true84.us, !dbg !3331

land.lhs.true84.us:                               ; preds = %for.body80.us
  %red85.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 2, !dbg !3333
  %23 = load i16, ptr %red85.us, align 2, !dbg !3333, !tbaa !951
  %conv86.us = uitofp i16 %23 to float, !dbg !3334
  %cmp88.us = fcmp olt float %18, %conv86.us, !dbg !3335
  br i1 %cmp88.us, label %if.then90.us, label %if.end92.us, !dbg !3336

if.then90.us:                                     ; preds = %land.lhs.true84.us
  store i16 -1, ptr %red85.us, align 2, !dbg !3337, !tbaa !951
  br label %if.end92.us, !dbg !3337

if.end92.us:                                      ; preds = %if.then90.us, %land.lhs.true84.us, %for.body80.us
  br i1 %cmp94.not, label %if.end104.us, label %land.lhs.true96.us, !dbg !3338

land.lhs.true96.us:                               ; preds = %if.end92.us
  %green97.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 1, !dbg !3340
  %24 = load i16, ptr %green97.us, align 2, !dbg !3340, !tbaa !955
  %conv98.us = uitofp i16 %24 to float, !dbg !3341
  %cmp100.us = fcmp olt float %19, %conv98.us, !dbg !3342
  br i1 %cmp100.us, label %if.then102.us, label %if.end104.us, !dbg !3343

if.then102.us:                                    ; preds = %land.lhs.true96.us
  store i16 -1, ptr %green97.us, align 2, !dbg !3344, !tbaa !955
  br label %if.end104.us, !dbg !3344

if.end104.us:                                     ; preds = %if.then102.us, %land.lhs.true96.us, %if.end92.us
  br i1 %cmp106.not, label %if.end116.us, label %land.lhs.true108.us, !dbg !3345

land.lhs.true108.us:                              ; preds = %if.end104.us
  %25 = load i16, ptr %q.0248.us, align 2, !dbg !3347, !tbaa !959
  %conv110.us = uitofp i16 %25 to float, !dbg !3348
  %cmp112.us = fcmp olt float %20, %conv110.us, !dbg !3349
  br i1 %cmp112.us, label %if.then114.us, label %if.end116.us, !dbg !3350

if.then114.us:                                    ; preds = %land.lhs.true108.us
  store i16 -1, ptr %q.0248.us, align 2, !dbg !3351, !tbaa !959
  br label %if.end116.us, !dbg !3351

if.end116.us:                                     ; preds = %if.then114.us, %land.lhs.true108.us, %if.end104.us
  br i1 %cmp118.not, label %if.end128.us, label %land.lhs.true120.us, !dbg !3352

land.lhs.true120.us:                              ; preds = %if.end116.us
  %opacity121.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 0, i32 3, !dbg !3354
  %26 = load i16, ptr %opacity121.us, align 2, !dbg !3354, !tbaa !963
  %conv122.us = uitofp i16 %26 to float, !dbg !3355
  %cmp124.us = fcmp olt float %21, %conv122.us, !dbg !3356
  br i1 %cmp124.us, label %if.then126.us, label %if.end128.us, !dbg !3357

if.then126.us:                                    ; preds = %land.lhs.true120.us
  store i16 -1, ptr %opacity121.us, align 2, !dbg !3358, !tbaa !963
  br label %if.end128.us, !dbg !3358

if.end128.us:                                     ; preds = %if.then126.us, %land.lhs.true120.us, %if.end116.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0248.us, i64 1, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !3223, metadata !DIExpression()), !dbg !3319
  %inc.us = add nuw nsw i64 %x.0246.us, 1, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !3222, metadata !DIExpression()), !dbg !3319
  %exitcond255.not = icmp eq i64 %inc.us, %17, !dbg !3324
  br i1 %exitcond255.not, label %for.end, label %for.body80.us, !dbg !3327, !llvm.loop !3361

for.body80.lr.ph.split:                           ; preds = %for.body80.lr.ph
  %27 = load i32, ptr %colorspace133, align 4, !tbaa !940
  %cmp134 = icmp eq i32 %27, 12
  br label %for.body80, !dbg !3327

for.body80:                                       ; preds = %for.body80.lr.ph.split, %if.end152
  %q.0248 = phi ptr [ %call70, %for.body80.lr.ph.split ], [ %incdec.ptr, %if.end152 ]
  %x.0246 = phi i64 [ 0, %for.body80.lr.ph.split ], [ %inc, %if.end152 ]
  call void @llvm.dbg.value(metadata ptr %q.0248, metadata !3223, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %x.0246, metadata !3222, metadata !DIExpression()), !dbg !3319
  br i1 %cmp82.not, label %if.end92, label %land.lhs.true84, !dbg !3331

land.lhs.true84:                                  ; preds = %for.body80
  %red85 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 2, !dbg !3333
  %28 = load i16, ptr %red85, align 2, !dbg !3333, !tbaa !951
  %conv86 = uitofp i16 %28 to float, !dbg !3334
  %cmp88 = fcmp olt float %18, %conv86, !dbg !3335
  br i1 %cmp88, label %if.then90, label %if.end92, !dbg !3336

if.then90:                                        ; preds = %land.lhs.true84
  store i16 -1, ptr %red85, align 2, !dbg !3337, !tbaa !951
  br label %if.end92, !dbg !3337

if.end92:                                         ; preds = %if.then90, %land.lhs.true84, %for.body80
  br i1 %cmp94.not, label %if.end104, label %land.lhs.true96, !dbg !3338

land.lhs.true96:                                  ; preds = %if.end92
  %green97 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 1, !dbg !3340
  %29 = load i16, ptr %green97, align 2, !dbg !3340, !tbaa !955
  %conv98 = uitofp i16 %29 to float, !dbg !3341
  %cmp100 = fcmp olt float %19, %conv98, !dbg !3342
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !3343

if.then102:                                       ; preds = %land.lhs.true96
  store i16 -1, ptr %green97, align 2, !dbg !3344, !tbaa !955
  br label %if.end104, !dbg !3344

if.end104:                                        ; preds = %if.then102, %land.lhs.true96, %if.end92
  br i1 %cmp106.not, label %if.end116, label %land.lhs.true108, !dbg !3345

land.lhs.true108:                                 ; preds = %if.end104
  %30 = load i16, ptr %q.0248, align 2, !dbg !3347, !tbaa !959
  %conv110 = uitofp i16 %30 to float, !dbg !3348
  %cmp112 = fcmp olt float %20, %conv110, !dbg !3349
  br i1 %cmp112, label %if.then114, label %if.end116, !dbg !3350

if.then114:                                       ; preds = %land.lhs.true108
  store i16 -1, ptr %q.0248, align 2, !dbg !3351, !tbaa !959
  br label %if.end116, !dbg !3351

if.end116:                                        ; preds = %if.then114, %land.lhs.true108, %if.end104
  br i1 %cmp118.not, label %if.end128, label %land.lhs.true120, !dbg !3352

land.lhs.true120:                                 ; preds = %if.end116
  %opacity121 = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 0, i32 3, !dbg !3354
  %31 = load i16, ptr %opacity121, align 2, !dbg !3354, !tbaa !963
  %conv122 = uitofp i16 %31 to float, !dbg !3355
  %cmp124 = fcmp olt float %21, %conv122, !dbg !3356
  br i1 %cmp124, label %if.then126, label %if.end128, !dbg !3357

if.then126:                                       ; preds = %land.lhs.true120
  store i16 -1, ptr %opacity121, align 2, !dbg !3358, !tbaa !963
  br label %if.end128, !dbg !3358

if.end128:                                        ; preds = %if.then126, %land.lhs.true120, %if.end116
  br i1 %cmp134, label %land.lhs.true136, label %if.end152, !dbg !3363

land.lhs.true136:                                 ; preds = %if.end128
  %add.ptr = getelementptr inbounds i16, ptr %call75, i64 %x.0246, !dbg !3364
  br i1 %cmp137, label %if.end152, label %cond.end, !dbg !3364

cond.end:                                         ; preds = %land.lhs.true136
  %32 = load i16, ptr %add.ptr, align 2, !dbg !3364, !tbaa !990
  %conv141 = uitofp i16 %32 to float, !dbg !3365
  %cmp143 = fcmp uge float %22, %conv141, !dbg !3366
  br i1 %cmp143, label %if.end152, label %if.then149, !dbg !3367

if.then149:                                       ; preds = %cond.end
  store i16 -1, ptr %add.ptr, align 2, !dbg !3368, !tbaa !990
  br label %if.end152, !dbg !3368

if.end152:                                        ; preds = %land.lhs.true136, %if.then149, %cond.end, %if.end128
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 1, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3223, metadata !DIExpression()), !dbg !3319
  %inc = add nuw nsw i64 %x.0246, 1, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3222, metadata !DIExpression()), !dbg !3319
  %exitcond.not = icmp eq i64 %inc, %17, !dbg !3324
  br i1 %exitcond.not, label %for.end, label %for.body80, !dbg !3327, !llvm.loop !3361

for.end:                                          ; preds = %if.end152, %if.end128.us, %if.end74
  %call153 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call63, ptr noundef %exception) #14, !dbg !3371
  %cmp154 = icmp ne i32 %call153, 0, !dbg !3373
  %spec.select = zext i1 %cmp154 to i32, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3213, metadata !DIExpression()), !dbg !3227
  %33 = load ptr, ptr %progress_monitor, align 8, !dbg !3375, !tbaa !1081
  %cmp158.not = icmp eq ptr %33, null, !dbg !3376
  br i1 %cmp158.not, label %cleanup, label %SetImageProgress.exit, !dbg !3377

SetImageProgress.exit:                            ; preds = %for.end
  %inc161 = add nsw i64 %progress.0251, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %inc161, metadata !3214, metadata !DIExpression()), !dbg !3227
  %34 = load i64, ptr %rows, align 8, !dbg !3379, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %image, metadata !1086, metadata !DIExpression()) #13, !dbg !3380
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()) #13, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %progress.0251, metadata !1093, metadata !DIExpression()) #13, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %34, metadata !1094, metadata !DIExpression()) #13, !dbg !3380
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1095, metadata !DIExpression()) #13, !dbg !3383
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #13, !dbg !3384
  %35 = load ptr, ptr %progress_monitor, align 8, !dbg !3385, !tbaa !1081
  %36 = load ptr, ptr %client_data.i, align 8, !dbg !3386, !tbaa !1103
  %call4.i = call i32 %35(ptr noundef nonnull %message.i, i64 noundef %progress.0251, i64 noundef %34, ptr noundef %36) #13, !dbg !3387
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3224, metadata !DIExpression()), !dbg !3389
  %cmp164 = icmp eq i32 %call4.i, 0, !dbg !3390
  %spec.select229 = select i1 %cmp164, i32 0, i32 %spec.select, !dbg !3392
  call void @llvm.dbg.value(metadata i32 %spec.select229, metadata !3213, metadata !DIExpression()), !dbg !3227
  br label %cleanup, !dbg !3393

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end69, %for.body
  %progress.2 = phi i64 [ %progress.0251, %for.body ], [ %progress.0251, %if.end69 ], [ %inc161, %SetImageProgress.exit ], [ %progress.0251, %for.end ], !dbg !3227
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end69 ], [ %spec.select229, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !3227
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !3213, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !3214, metadata !DIExpression()), !dbg !3227
  %inc172 = add nuw nsw i64 %y.0253, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %inc172, metadata !3217, metadata !DIExpression()), !dbg !3227
  %37 = load i64, ptr %rows, align 8, !dbg !3311, !tbaa !909
  %cmp64 = icmp slt i64 %inc172, %37, !dbg !3312
  br i1 %cmp64, label %for.body, label %for.end173, !dbg !3313, !llvm.loop !3395

for.end173:                                       ; preds = %cleanup, %if.end62
  %status.0.lcssa = phi i32 [ 1, %if.end62 ], [ %status.4, %cleanup ], !dbg !3397
  %call174 = call ptr @DestroyCacheView(ptr noundef %call63) #13, !dbg !3398
  call void @llvm.dbg.value(metadata ptr %call174, metadata !3211, metadata !DIExpression()), !dbg !3227
  br label %cleanup175, !dbg !3399

cleanup175:                                       ; preds = %if.end3, %if.end, %for.end173
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end173 ], [ 1, %if.end ], [ 0, %if.end3 ], !dbg !3227
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %threshold) #13, !dbg !3400
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #13, !dbg !3400
  ret i32 %retval.0, !dbg !3400
}

declare !dbg !3401 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3405 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !3410 ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !3411 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3414 ptr @AcquireRandomInfo() local_unnamed_addr #3

declare !dbg !3417 ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3420 ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { hot nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!790, !791, !792, !793, !794, !795}
!llvm.ident = !{!796}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !470, globals: !787, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/threshold.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "bb492fb6ca966470a904dc4f9ba10be4")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393, !415, !443, !458}
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
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!395 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!396 = !DIEnumerator(name: "RedChannel", value: 1)
!397 = !DIEnumerator(name: "GrayChannel", value: 1)
!398 = !DIEnumerator(name: "CyanChannel", value: 1)
!399 = !DIEnumerator(name: "GreenChannel", value: 2)
!400 = !DIEnumerator(name: "MagentaChannel", value: 2)
!401 = !DIEnumerator(name: "BlueChannel", value: 4)
!402 = !DIEnumerator(name: "YellowChannel", value: 4)
!403 = !DIEnumerator(name: "AlphaChannel", value: 8)
!404 = !DIEnumerator(name: "OpacityChannel", value: 8)
!405 = !DIEnumerator(name: "MatteChannel", value: 8)
!406 = !DIEnumerator(name: "BlackChannel", value: 32)
!407 = !DIEnumerator(name: "IndexChannel", value: 32)
!408 = !DIEnumerator(name: "CompositeChannels", value: 47)
!409 = !DIEnumerator(name: "AllChannels", value: 134217727)
!410 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!411 = !DIEnumerator(name: "RGBChannels", value: 128)
!412 = !DIEnumerator(name: "GrayChannels", value: 128)
!413 = !DIEnumerator(name: "SyncChannels", value: 256)
!414 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 25, baseType: !5, size: 32, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!417 = !DIEnumerator(name: "NoValue", value: 0)
!418 = !DIEnumerator(name: "XValue", value: 1)
!419 = !DIEnumerator(name: "XiValue", value: 1)
!420 = !DIEnumerator(name: "YValue", value: 2)
!421 = !DIEnumerator(name: "PsiValue", value: 2)
!422 = !DIEnumerator(name: "WidthValue", value: 4)
!423 = !DIEnumerator(name: "RhoValue", value: 4)
!424 = !DIEnumerator(name: "HeightValue", value: 8)
!425 = !DIEnumerator(name: "SigmaValue", value: 8)
!426 = !DIEnumerator(name: "ChiValue", value: 16)
!427 = !DIEnumerator(name: "XiNegative", value: 32)
!428 = !DIEnumerator(name: "XNegative", value: 32)
!429 = !DIEnumerator(name: "PsiNegative", value: 64)
!430 = !DIEnumerator(name: "YNegative", value: 64)
!431 = !DIEnumerator(name: "ChiNegative", value: 128)
!432 = !DIEnumerator(name: "PercentValue", value: 4096)
!433 = !DIEnumerator(name: "AspectValue", value: 8192)
!434 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!435 = !DIEnumerator(name: "LessValue", value: 16384)
!436 = !DIEnumerator(name: "GreaterValue", value: 32768)
!437 = !DIEnumerator(name: "MinimumValue", value: 65536)
!438 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!439 = !DIEnumerator(name: "AreaValue", value: 131072)
!440 = !DIEnumerator(name: "DecimalValue", value: 262144)
!441 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!442 = !DIEnumerator(name: "AllValues", value: 2147483647)
!443 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !444, line: 46, baseType: !5, size: 32, elements: !445)
!444 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!446 = !DIEnumerator(name: "_ISupper", value: 256)
!447 = !DIEnumerator(name: "_ISlower", value: 512)
!448 = !DIEnumerator(name: "_ISalpha", value: 1024)
!449 = !DIEnumerator(name: "_ISdigit", value: 2048)
!450 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!451 = !DIEnumerator(name: "_ISspace", value: 8192)
!452 = !DIEnumerator(name: "_ISprint", value: 16384)
!453 = !DIEnumerator(name: "_ISgraph", value: 32768)
!454 = !DIEnumerator(name: "_ISblank", value: 1)
!455 = !DIEnumerator(name: "_IScntrl", value: 2)
!456 = !DIEnumerator(name: "_ISpunct", value: 4)
!457 = !DIEnumerator(name: "_ISalnum", value: 8)
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !459, line: 25, baseType: !5, size: 32, elements: !460)
!459 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469}
!461 = !DIEnumerator(name: "UndefinedResource", value: 0)
!462 = !DIEnumerator(name: "AreaResource", value: 1)
!463 = !DIEnumerator(name: "DiskResource", value: 2)
!464 = !DIEnumerator(name: "FileResource", value: 3)
!465 = !DIEnumerator(name: "MapResource", value: 4)
!466 = !DIEnumerator(name: "MemoryResource", value: 5)
!467 = !DIEnumerator(name: "ThreadResource", value: 6)
!468 = !DIEnumerator(name: "TimeResource", value: 7)
!469 = !DIEnumerator(name: "ThrottleResource", value: 8)
!470 = !{!471, !472, !527, !693, !536, !695, !495, !697, !500, !700, !699, !600, !605, !531, !701, !702, !714, !639, !483, !509, !718, !728, !662, !501, !5, !781, !782, !783}
!471 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !475)
!475 = !{!476, !478, !480, !482, !485, !487, !489, !490, !491, !492, !493, !494, !505, !506, !507, !508, !510, !524, !526, !528, !530, !533, !534, !535, !541, !542, !543, !551, !552, !553, !554, !555, !556, !558, !560, !562, !564, !566, !568, !570, !571, !572, !573, !574, !575, !576, !584, !599, !613, !614, !615, !616, !620, !624, !628, !629, !630, !631, !632, !650, !651, !653, !654, !664, !665, !667, !668, !669, !670, !671, !672, !674, !675, !676, !677, !678, !679, !680, !682, !683, !684, !685, !686, !690, !692}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !474, file: !73, line: 153, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !474, file: !73, line: 156, baseType: !479, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !474, file: !73, line: 159, baseType: !481, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !474, file: !73, line: 162, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !484, line: 46, baseType: !471)
!484 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !474, file: !73, line: 165, baseType: !486, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !474, file: !73, line: 168, baseType: !488, size: 32, offset: 224)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !474, file: !73, line: 169, baseType: !488, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !474, file: !73, line: 172, baseType: !483, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !474, file: !73, line: 173, baseType: !483, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !474, file: !73, line: 174, baseType: !483, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !474, file: !73, line: 175, baseType: !483, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !474, file: !73, line: 178, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !498)
!498 = !{!499, !502, !503, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !497, file: !326, line: 143, baseType: !500, size: 16)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !501)
!501 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !497, file: !326, line: 144, baseType: !500, size: 16, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !497, file: !326, line: 145, baseType: !500, size: 16, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !497, file: !326, line: 146, baseType: !500, size: 16, offset: 48)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !474, file: !73, line: 179, baseType: !496, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !474, file: !73, line: 180, baseType: !496, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !474, file: !73, line: 181, baseType: !496, size: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !474, file: !73, line: 184, baseType: !509, size: 64, offset: 832)
!509 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !474, file: !73, line: 187, baseType: !511, size: 768, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !513)
!513 = !{!514, !521, !522, !523}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !512, file: !73, line: 124, baseType: !515, size: 192)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !517)
!517 = !{!518, !519, !520}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !516, file: !73, line: 98, baseType: !509, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !516, file: !73, line: 99, baseType: !509, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !516, file: !73, line: 100, baseType: !509, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !512, file: !73, line: 125, baseType: !515, size: 192, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !512, file: !73, line: 126, baseType: !515, size: 192, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !512, file: !73, line: 127, baseType: !515, size: 192, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !474, file: !73, line: 190, baseType: !525, size: 32, offset: 1664)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !474, file: !73, line: 193, baseType: !527, size: 64, offset: 1728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !474, file: !73, line: 196, baseType: !529, size: 32, offset: 1792)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !474, file: !73, line: 199, baseType: !531, size: 64, offset: 1856)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !474, file: !73, line: 200, baseType: !531, size: 64, offset: 1920)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !474, file: !73, line: 201, baseType: !531, size: 64, offset: 1984)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !474, file: !73, line: 204, baseType: !536, size: 64, offset: 2048)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !537, line: 77, baseType: !538)
!537 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !539, line: 193, baseType: !540)
!539 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!540 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !474, file: !73, line: 207, baseType: !509, size: 64, offset: 2112)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !474, file: !73, line: 208, baseType: !509, size: 64, offset: 2176)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !474, file: !73, line: 211, baseType: !544, size: 256, offset: 2240)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !546)
!546 = !{!547, !548, !549, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !545, file: !153, line: 124, baseType: !483, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !545, file: !153, line: 125, baseType: !483, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !545, file: !153, line: 128, baseType: !536, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !545, file: !153, line: 129, baseType: !536, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !474, file: !73, line: 212, baseType: !544, size: 256, offset: 2496)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !474, file: !73, line: 213, baseType: !544, size: 256, offset: 2752)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !474, file: !73, line: 216, baseType: !509, size: 64, offset: 3008)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !474, file: !73, line: 217, baseType: !509, size: 64, offset: 3072)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !474, file: !73, line: 218, baseType: !509, size: 64, offset: 3136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !474, file: !73, line: 221, baseType: !557, size: 32, offset: 3200)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !474, file: !73, line: 224, baseType: !559, size: 32, offset: 3232)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !474, file: !73, line: 227, baseType: !561, size: 32, offset: 3264)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !474, file: !73, line: 230, baseType: !563, size: 32, offset: 3296)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !474, file: !73, line: 233, baseType: !565, size: 32, offset: 3328)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !474, file: !73, line: 236, baseType: !567, size: 32, offset: 3360)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !474, file: !73, line: 239, baseType: !569, size: 64, offset: 3392)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !474, file: !73, line: 242, baseType: !483, size: 64, offset: 3456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !474, file: !73, line: 243, baseType: !483, size: 64, offset: 3520)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !474, file: !73, line: 246, baseType: !536, size: 64, offset: 3584)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !474, file: !73, line: 249, baseType: !483, size: 64, offset: 3648)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !474, file: !73, line: 250, baseType: !483, size: 64, offset: 3712)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !474, file: !73, line: 253, baseType: !536, size: 64, offset: 3776)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !474, file: !73, line: 256, baseType: !577, size: 192, offset: 3840)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !578, line: 68, baseType: !579)
!578 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !578, line: 62, size: 192, elements: !580)
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !579, file: !578, line: 65, baseType: !509, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !579, file: !578, line: 66, baseType: !509, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !579, file: !578, line: 67, baseType: !509, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !474, file: !73, line: 259, baseType: !585, size: 512, offset: 4032)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !587)
!587 = !{!588, !595, !596, !598}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !586, file: !247, line: 43, baseType: !589, size: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !590, file: !247, line: 35, baseType: !509, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !590, file: !247, line: 36, baseType: !509, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !590, file: !247, line: 37, baseType: !509, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !586, file: !247, line: 44, baseType: !589, size: 192, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !586, file: !247, line: 47, baseType: !597, size: 32, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !586, file: !247, line: 50, baseType: !483, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !474, file: !73, line: 262, baseType: !600, size: 64, offset: 4544)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !601, line: 26, baseType: !602)
!601 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!488, !605, !607, !610, !527}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !609)
!609 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !612)
!612 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !474, file: !73, line: 265, baseType: !527, size: 64, offset: 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !474, file: !73, line: 266, baseType: !527, size: 64, offset: 4672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !474, file: !73, line: 267, baseType: !527, size: 64, offset: 4736)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !474, file: !73, line: 270, baseType: !617, size: 64, offset: 4800)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !474, file: !73, line: 273, baseType: !621, size: 64, offset: 4864)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !474, file: !73, line: 276, baseType: !625, size: 32768, offset: 4928)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 32768, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 4096)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !474, file: !73, line: 277, baseType: !625, size: 32768, offset: 37696)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !474, file: !73, line: 278, baseType: !625, size: 32768, offset: 70464)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !474, file: !73, line: 281, baseType: !483, size: 64, offset: 103232)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !474, file: !73, line: 282, baseType: !483, size: 64, offset: 103296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !474, file: !73, line: 285, baseType: !633, size: 448, offset: 103360)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !635)
!635 = !{!636, !638, !640, !641, !642, !643, !644, !649}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !634, file: !253, line: 105, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !634, file: !253, line: 108, baseType: !639, size: 32, offset: 32)
!639 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !634, file: !253, line: 111, baseType: !531, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !634, file: !253, line: 112, baseType: !531, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !634, file: !253, line: 115, baseType: !527, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !634, file: !253, line: 118, baseType: !488, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !634, file: !253, line: 121, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !647, line: 26, baseType: !648)
!647 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !647, line: 25, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !634, file: !253, line: 124, baseType: !483, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !474, file: !73, line: 288, baseType: !488, size: 32, offset: 103808)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !73, line: 291, baseType: !652, size: 64, offset: 103872)
!652 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !474, file: !73, line: 294, baseType: !645, size: 64, offset: 103936)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !474, file: !73, line: 297, baseType: !655, size: 256, offset: 104000)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !657)
!657 = !{!658, !659, !660, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !89, line: 30, baseType: !531, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !656, file: !89, line: 33, baseType: !483, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !656, file: !89, line: 36, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !656, file: !89, line: 39, baseType: !483, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !474, file: !73, line: 298, baseType: !655, size: 256, offset: 104256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !474, file: !73, line: 299, baseType: !666, size: 64, offset: 104512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !474, file: !73, line: 302, baseType: !483, size: 64, offset: 104576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !474, file: !73, line: 305, baseType: !483, size: 64, offset: 104640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !474, file: !73, line: 308, baseType: !569, size: 64, offset: 104704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !474, file: !73, line: 309, baseType: !569, size: 64, offset: 104768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !73, line: 310, baseType: !569, size: 64, offset: 104832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !474, file: !73, line: 313, baseType: !673, size: 32, offset: 104896)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !474, file: !73, line: 316, baseType: !488, size: 32, offset: 104928)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !474, file: !73, line: 319, baseType: !496, size: 64, offset: 104960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !474, file: !73, line: 322, baseType: !569, size: 64, offset: 105024)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !474, file: !73, line: 325, baseType: !544, size: 256, offset: 105088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !474, file: !73, line: 328, baseType: !527, size: 64, offset: 105344)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !474, file: !73, line: 329, baseType: !527, size: 64, offset: 105408)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !73, line: 332, baseType: !681, size: 32, offset: 105472)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !474, file: !73, line: 335, baseType: !488, size: 32, offset: 105504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !474, file: !73, line: 338, baseType: !611, size: 64, offset: 105536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !474, file: !73, line: 341, baseType: !488, size: 32, offset: 105600)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !474, file: !73, line: 344, baseType: !483, size: 64, offset: 105664)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !474, file: !73, line: 347, baseType: !687, size: 64, offset: 105728)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !688, line: 7, baseType: !689)
!688 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !539, line: 160, baseType: !540)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !474, file: !73, line: 350, baseType: !691, size: 32, offset: 105792)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !474, file: !73, line: 353, baseType: !483, size: 64, offset: 105856)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !694)
!694 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !500)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThresholdMap", file: !704, line: 26, baseType: !705)
!704 = !DIFile(filename: "apps/538.imagick_r/src/magick/threshold.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "025e5deece754d1f8c0275d8e77e5252")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ThresholdMap", file: !706, line: 96, size: 384, elements: !707)
!706 = !DIFile(filename: "apps/538.imagick_r/src/magick/threshold.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bb492fb6ca966470a904dc4f9ba10be4")
!707 = !{!708, !709, !710, !711, !712, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "map_id", scope: !705, file: !706, line: 99, baseType: !531, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !705, file: !706, line: 100, baseType: !531, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !705, file: !706, line: 103, baseType: !483, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !705, file: !706, line: 104, baseType: !483, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !705, file: !706, line: 107, baseType: !536, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "levels", scope: !705, file: !706, line: 108, baseType: !701, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMLTreeInfo", file: !716, line: 29, baseType: !717)
!716 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e544995a74b1ca30ba5edadca4a5927")
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XMLTreeInfo", file: !716, line: 28, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !721, line: 40, baseType: !722)
!721 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !721, line: 29, size: 32960, elements: !723)
!723 = !{!724, !725, !726, !727}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !722, file: !721, line: 32, baseType: !625, size: 32768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !722, file: !721, line: 35, baseType: !661, size: 64, offset: 32768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !722, file: !721, line: 38, baseType: !483, size: 64, offset: 32832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !722, file: !721, line: 39, baseType: !483, size: 64, offset: 32896)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !730, line: 7, baseType: !731)
!730 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !732, line: 49, size: 1728, elements: !733)
!732 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !749, !751, !752, !753, !755, !756, !758, !762, !765, !767, !770, !773, !774, !775, !776, !777}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !731, file: !732, line: 51, baseType: !639, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !731, file: !732, line: 54, baseType: !531, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !731, file: !732, line: 55, baseType: !531, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !731, file: !732, line: 56, baseType: !531, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !731, file: !732, line: 57, baseType: !531, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !731, file: !732, line: 58, baseType: !531, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !731, file: !732, line: 59, baseType: !531, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !731, file: !732, line: 60, baseType: !531, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !731, file: !732, line: 61, baseType: !531, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !731, file: !732, line: 64, baseType: !531, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !731, file: !732, line: 65, baseType: !531, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !731, file: !732, line: 66, baseType: !531, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !731, file: !732, line: 68, baseType: !747, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !732, line: 36, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !731, file: !732, line: 70, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !731, file: !732, line: 72, baseType: !639, size: 32, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !731, file: !732, line: 73, baseType: !639, size: 32, offset: 928)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !731, file: !732, line: 74, baseType: !754, size: 64, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !539, line: 152, baseType: !540)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !731, file: !732, line: 77, baseType: !501, size: 16, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !731, file: !732, line: 78, baseType: !757, size: 8, offset: 1040)
!757 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !731, file: !732, line: 79, baseType: !759, size: 8, offset: 1048)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 1)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !731, file: !732, line: 81, baseType: !763, size: 64, offset: 1088)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !732, line: 43, baseType: null)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !731, file: !732, line: 89, baseType: !766, size: 64, offset: 1152)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !539, line: 153, baseType: !540)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !731, file: !732, line: 91, baseType: !768, size: 64, offset: 1216)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !732, line: 37, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !731, file: !732, line: 92, baseType: !771, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !732, line: 38, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !731, file: !732, line: 93, baseType: !750, size: 64, offset: 1344)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !731, file: !732, line: 94, baseType: !527, size: 64, offset: 1408)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !731, file: !732, line: 95, baseType: !483, size: 64, offset: 1472)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !731, file: !732, line: 96, baseType: !639, size: 32, offset: 1536)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !731, file: !732, line: 98, baseType: !778, size: 160, offset: 1568)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 160, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 20)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !785, line: 31, baseType: !786)
!785 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !785, line: 30, flags: DIFlagFwdDecl)
!787 = !{!788}
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "MinimalThresholdMap", scope: !0, file: !706, line: 115, type: !605, isLocal: true, isDefinition: true)
!790 = !{i32 7, !"Dwarf Version", i32 5}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 4}
!793 = !{i32 7, !"PIC Level", i32 2}
!794 = !{i32 7, !"PIE Level", i32 2}
!795 = !{i32 7, !"uwtable", i32 2}
!796 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!797 = distinct !DISubprogram(name: "AdaptiveThresholdImage", scope: !706, file: !706, line: 168, type: !798, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !805)
!798 = !DISubroutineType(types: !799)
!799 = !{!472, !800, !802, !802, !803, !804}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!805 = !{!806, !807, !808, !809, !810, !811, !816, !817, !818, !819, !820, !834, !835, !836, !840, !841, !842, !844, !846, !847, !849, !851, !852, !853, !854, !858}
!806 = !DILocalVariable(name: "image", arg: 1, scope: !797, file: !706, line: 168, type: !800)
!807 = !DILocalVariable(name: "width", arg: 2, scope: !797, file: !706, line: 169, type: !802)
!808 = !DILocalVariable(name: "height", arg: 3, scope: !797, file: !706, line: 169, type: !802)
!809 = !DILocalVariable(name: "offset", arg: 4, scope: !797, file: !706, line: 169, type: !803)
!810 = !DILocalVariable(name: "exception", arg: 5, scope: !797, file: !706, line: 170, type: !804)
!811 = !DILocalVariable(name: "image_view", scope: !797, file: !706, line: 175, type: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !814, line: 50, baseType: !815)
!814 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!816 = !DILocalVariable(name: "threshold_view", scope: !797, file: !706, line: 176, type: !812)
!817 = !DILocalVariable(name: "threshold_image", scope: !797, file: !706, line: 179, type: !472)
!818 = !DILocalVariable(name: "status", scope: !797, file: !706, line: 182, type: !488)
!819 = !DILocalVariable(name: "progress", scope: !797, file: !706, line: 185, type: !608)
!820 = !DILocalVariable(name: "zero", scope: !797, file: !706, line: 188, type: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !822, file: !326, line: 107, baseType: !477, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !822, file: !326, line: 110, baseType: !479, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !822, file: !326, line: 113, baseType: !488, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !822, file: !326, line: 116, baseType: !509, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !822, file: !326, line: 119, baseType: !483, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !822, file: !326, line: 122, baseType: !693, size: 32, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !822, file: !326, line: 123, baseType: !693, size: 32, offset: 288)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !822, file: !326, line: 124, baseType: !693, size: 32, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !822, file: !326, line: 125, baseType: !693, size: 32, offset: 352)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !822, file: !326, line: 126, baseType: !693, size: 32, offset: 384)
!834 = !DILocalVariable(name: "number_pixels", scope: !797, file: !706, line: 191, type: !693)
!835 = !DILocalVariable(name: "y", scope: !797, file: !706, line: 194, type: !536)
!836 = !DILocalVariable(name: "sync", scope: !837, file: !706, line: 227, type: !488)
!837 = distinct !DILexicalBlock(scope: !838, file: !706, line: 225, column: 3)
!838 = distinct !DILexicalBlock(scope: !839, file: !706, line: 224, column: 3)
!839 = distinct !DILexicalBlock(scope: !797, file: !706, line: 224, column: 3)
!840 = !DILocalVariable(name: "channel_bias", scope: !837, file: !706, line: 230, type: !821)
!841 = !DILocalVariable(name: "channel_sum", scope: !837, file: !706, line: 231, type: !821)
!842 = !DILocalVariable(name: "indexes", scope: !837, file: !706, line: 234, type: !843)
!843 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !697)
!844 = !DILocalVariable(name: "p", scope: !837, file: !706, line: 237, type: !845)
!845 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!846 = !DILocalVariable(name: "r", scope: !837, file: !706, line: 238, type: !845)
!847 = !DILocalVariable(name: "threshold_indexes", scope: !837, file: !706, line: 241, type: !848)
!848 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !700)
!849 = !DILocalVariable(name: "q", scope: !837, file: !706, line: 244, type: !850)
!850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !495)
!851 = !DILocalVariable(name: "x", scope: !837, file: !706, line: 247, type: !536)
!852 = !DILocalVariable(name: "u", scope: !837, file: !706, line: 250, type: !536)
!853 = !DILocalVariable(name: "v", scope: !837, file: !706, line: 251, type: !536)
!854 = !DILocalVariable(name: "mean", scope: !855, file: !706, line: 295, type: !821)
!855 = distinct !DILexicalBlock(scope: !856, file: !706, line: 293, column: 5)
!856 = distinct !DILexicalBlock(scope: !857, file: !706, line: 292, column: 5)
!857 = distinct !DILexicalBlock(scope: !837, file: !706, line: 292, column: 5)
!858 = !DILocalVariable(name: "proceed", scope: !859, file: !706, line: 348, type: !488)
!859 = distinct !DILexicalBlock(scope: !860, file: !706, line: 346, column: 7)
!860 = distinct !DILexicalBlock(scope: !837, file: !706, line: 345, column: 9)
!861 = !DILocation(line: 0, scope: !797)
!862 = !DILocation(line: 187, column: 3, scope: !797)
!863 = !DILocation(line: 188, column: 5, scope: !797)
!864 = !DILocation(line: 198, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !797, file: !706, line: 198, column: 7)
!866 = !{!867, !868, i64 12976}
!867 = !{!"_Image", !868, i64 0, !868, i64 4, !868, i64 8, !870, i64 16, !868, i64 24, !868, i64 28, !868, i64 32, !870, i64 40, !870, i64 48, !870, i64 56, !870, i64 64, !871, i64 72, !872, i64 80, !872, i64 88, !872, i64 96, !874, i64 104, !875, i64 112, !868, i64 208, !871, i64 216, !868, i64 224, !871, i64 232, !871, i64 240, !871, i64 248, !870, i64 256, !874, i64 264, !874, i64 272, !877, i64 280, !877, i64 312, !877, i64 344, !874, i64 376, !874, i64 384, !874, i64 392, !868, i64 400, !868, i64 404, !868, i64 408, !868, i64 412, !868, i64 416, !868, i64 420, !871, i64 424, !870, i64 432, !870, i64 440, !870, i64 448, !870, i64 456, !870, i64 464, !870, i64 472, !878, i64 480, !879, i64 504, !871, i64 568, !871, i64 576, !871, i64 584, !871, i64 592, !871, i64 600, !871, i64 608, !868, i64 616, !868, i64 4712, !868, i64 8808, !870, i64 12904, !870, i64 12912, !881, i64 12920, !868, i64 12976, !870, i64 12984, !871, i64 12992, !883, i64 13000, !883, i64 13032, !871, i64 13064, !870, i64 13072, !870, i64 13080, !871, i64 13088, !871, i64 13096, !871, i64 13104, !868, i64 13112, !868, i64 13116, !872, i64 13120, !871, i64 13128, !877, i64 13136, !871, i64 13168, !871, i64 13176, !868, i64 13184, !868, i64 13188, !884, i64 13192, !868, i64 13200, !870, i64 13208, !870, i64 13216, !868, i64 13224, !870, i64 13232}
!868 = !{!"omnipotent char", !869, i64 0}
!869 = !{!"Simple C/C++ TBAA"}
!870 = !{!"long", !868, i64 0}
!871 = !{!"any pointer", !868, i64 0}
!872 = !{!"_PixelPacket", !873, i64 0, !873, i64 2, !873, i64 4, !873, i64 6}
!873 = !{!"short", !868, i64 0}
!874 = !{!"double", !868, i64 0}
!875 = !{!"_ChromaticityInfo", !876, i64 0, !876, i64 24, !876, i64 48, !876, i64 72}
!876 = !{!"_PrimaryInfo", !874, i64 0, !874, i64 8, !874, i64 16}
!877 = !{!"_RectangleInfo", !870, i64 0, !870, i64 8, !870, i64 16, !870, i64 24}
!878 = !{!"_ErrorInfo", !874, i64 0, !874, i64 8, !874, i64 16}
!879 = !{!"_TimerInfo", !880, i64 0, !880, i64 24, !868, i64 48, !870, i64 56}
!880 = !{!"_Timer", !874, i64 0, !874, i64 8, !874, i64 16}
!881 = !{!"_ExceptionInfo", !868, i64 0, !882, i64 4, !871, i64 8, !871, i64 16, !871, i64 24, !868, i64 32, !871, i64 40, !870, i64 48}
!882 = !{!"int", !868, i64 0}
!883 = !{!"_ProfileInfo", !871, i64 0, !870, i64 8, !871, i64 16, !870, i64 24}
!884 = !{!"long long", !868, i64 0}
!885 = !DILocation(line: 198, column: 20, scope: !865)
!886 = !DILocation(line: 198, column: 7, scope: !797)
!887 = !DILocation(line: 199, column: 68, scope: !865)
!888 = !DILocation(line: 199, column: 12, scope: !865)
!889 = !DILocation(line: 199, column: 5, scope: !865)
!890 = !DILocation(line: 202, column: 19, scope: !797)
!891 = !DILocation(line: 203, column: 23, scope: !892)
!892 = distinct !DILexicalBlock(scope: !797, file: !706, line: 203, column: 7)
!893 = !DILocation(line: 203, column: 7, scope: !797)
!894 = !DILocation(line: 205, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !797, file: !706, line: 205, column: 7)
!896 = !DILocation(line: 205, column: 57, scope: !895)
!897 = !DILocation(line: 205, column: 7, scope: !797)
!898 = !DILocation(line: 207, column: 52, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !706, line: 206, column: 5)
!900 = !DILocation(line: 207, column: 7, scope: !899)
!901 = !DILocation(line: 208, column: 23, scope: !899)
!902 = !DILocation(line: 209, column: 7, scope: !899)
!903 = !DILocation(line: 216, column: 3, scope: !797)
!904 = !DILocation(line: 217, column: 40, scope: !797)
!905 = !DILocation(line: 217, column: 17, scope: !797)
!906 = !DILocation(line: 218, column: 14, scope: !797)
!907 = !DILocation(line: 219, column: 18, scope: !797)
!908 = !DILocation(line: 224, column: 34, scope: !838)
!909 = !{!867, !870, i64 48}
!910 = !DILocation(line: 224, column: 15, scope: !838)
!911 = !DILocation(line: 224, column: 3, scope: !839)
!912 = !DILocation(line: 253, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !837, file: !706, line: 253, column: 9)
!914 = !DILocation(line: 253, column: 9, scope: !837)
!915 = !DILocation(line: 255, column: 67, scope: !837)
!916 = !DILocation(line: 256, column: 24, scope: !837)
!917 = !{!867, !870, i64 40}
!918 = !DILocation(line: 256, column: 31, scope: !837)
!919 = !DILocation(line: 255, column: 7, scope: !837)
!920 = !DILocation(line: 0, scope: !837)
!921 = !DILocation(line: 257, column: 71, scope: !837)
!922 = !DILocation(line: 257, column: 7, scope: !837)
!923 = !DILocation(line: 259, column: 12, scope: !924)
!924 = distinct !DILexicalBlock(scope: !837, file: !706, line: 259, column: 9)
!925 = !DILocation(line: 259, column: 43, scope: !924)
!926 = !DILocation(line: 264, column: 13, scope: !837)
!927 = !DILocation(line: 265, column: 23, scope: !837)
!928 = !DILocation(line: 266, column: 18, scope: !837)
!929 = !{i64 0, i64 4, !930, i64 4, i64 4, !930, i64 8, i64 4, !930, i64 12, i64 4, !930, i64 16, i64 4, !930}
!930 = !{!931, !931, i64 0}
!931 = !{!"float", !868, i64 0}
!932 = !{i64 0, i64 4, !930, i64 4, i64 4, !930, i64 8, i64 4, !930, i64 12, i64 4, !930}
!933 = !{i64 0, i64 4, !930, i64 4, i64 4, !930, i64 8, i64 4, !930}
!934 = !DILocation(line: 269, column: 5, scope: !935)
!935 = distinct !DILexicalBlock(scope: !837, file: !706, line: 269, column: 5)
!936 = !DILocation(line: 271, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !706, line: 271, column: 7)
!938 = distinct !DILexicalBlock(scope: !939, file: !706, line: 270, column: 5)
!939 = distinct !DILexicalBlock(scope: !935, file: !706, line: 269, column: 5)
!940 = !{!867, !868, i64 4}
!941 = !DILocation(line: 287, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !706, line: 272, column: 7)
!943 = distinct !DILexicalBlock(scope: !937, file: !706, line: 271, column: 7)
!944 = !DILocation(line: 281, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !706, line: 279, column: 17)
!946 = distinct !DILexicalBlock(scope: !947, file: !706, line: 274, column: 11)
!947 = distinct !DILexicalBlock(scope: !942, file: !706, line: 273, column: 13)
!948 = !DILocation(line: 273, column: 15, scope: !947)
!949 = !DILocation(line: 273, column: 13, scope: !942)
!950 = !DILocation(line: 275, column: 36, scope: !946)
!951 = !{!872, !873, i64 4}
!952 = !DILocation(line: 275, column: 31, scope: !946)
!953 = !DILocation(line: 275, column: 29, scope: !946)
!954 = !DILocation(line: 276, column: 38, scope: !946)
!955 = !{!872, !873, i64 2}
!956 = !DILocation(line: 276, column: 33, scope: !946)
!957 = !DILocation(line: 276, column: 31, scope: !946)
!958 = !DILocation(line: 277, column: 37, scope: !946)
!959 = !{!872, !873, i64 0}
!960 = !DILocation(line: 277, column: 32, scope: !946)
!961 = !DILocation(line: 277, column: 30, scope: !946)
!962 = !DILocation(line: 278, column: 40, scope: !946)
!963 = !{!872, !873, i64 6}
!964 = !DILocation(line: 278, column: 35, scope: !946)
!965 = !DILocation(line: 278, column: 33, scope: !946)
!966 = !DILocation(line: 279, column: 17, scope: !946)
!967 = !DILocation(line: 283, column: 26, scope: !942)
!968 = !DILocation(line: 283, column: 31, scope: !942)
!969 = !DILocation(line: 283, column: 24, scope: !942)
!970 = !DILocation(line: 284, column: 33, scope: !942)
!971 = !DILocation(line: 284, column: 28, scope: !942)
!972 = !DILocation(line: 284, column: 26, scope: !942)
!973 = !DILocation(line: 285, column: 32, scope: !942)
!974 = !DILocation(line: 285, column: 27, scope: !942)
!975 = !DILocation(line: 285, column: 25, scope: !942)
!976 = !DILocation(line: 286, column: 35, scope: !942)
!977 = !DILocation(line: 286, column: 30, scope: !942)
!978 = !DILocation(line: 286, column: 28, scope: !942)
!979 = !DILocation(line: 271, column: 39, scope: !943)
!980 = !DILocation(line: 271, column: 19, scope: !943)
!981 = distinct !{!981, !936, !982, !983, !984}
!982 = !DILocation(line: 289, column: 7, scope: !937)
!983 = !{!"llvm.loop.mustprogress"}
!984 = !{!"llvm.loop.unroll.disable"}
!985 = !DILocation(line: 290, column: 8, scope: !938)
!986 = !DILocation(line: 269, column: 38, scope: !939)
!987 = !DILocation(line: 269, column: 17, scope: !939)
!988 = distinct !{!988, !934, !989, !983, !984}
!989 = !DILocation(line: 291, column: 5, scope: !935)
!990 = !{!873, !873, i64 0}
!991 = !DILocation(line: 280, column: 34, scope: !945)
!992 = !DILocation(line: 280, column: 15, scope: !945)
!993 = !DILocation(line: 288, column: 46, scope: !994)
!994 = distinct !DILexicalBlock(scope: !942, file: !706, line: 287, column: 13)
!995 = !DILocation(line: 288, column: 29, scope: !994)
!996 = !DILocation(line: 267, column: 17, scope: !837)
!997 = !DILocation(line: 292, column: 17, scope: !856)
!998 = !DILocation(line: 292, column: 5, scope: !857)
!999 = !DILocation(line: 304, column: 20, scope: !855)
!1000 = !DILocation(line: 297, column: 12, scope: !855)
!1001 = !DILocation(line: 0, scope: !855)
!1002 = !DILocation(line: 299, column: 22, scope: !855)
!1003 = !DILocation(line: 300, column: 24, scope: !855)
!1004 = !DILocation(line: 301, column: 23, scope: !855)
!1005 = !DILocation(line: 302, column: 26, scope: !855)
!1006 = !DILocation(line: 303, column: 24, scope: !855)
!1007 = !DILocation(line: 305, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !855, file: !706, line: 305, column: 7)
!1009 = !DILocation(line: 311, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !706, line: 306, column: 7)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !706, line: 305, column: 7)
!1012 = !DILocation(line: 307, column: 32, scope: !1010)
!1013 = !DILocation(line: 307, column: 27, scope: !1010)
!1014 = !DILocation(line: 307, column: 25, scope: !1010)
!1015 = !DILocation(line: 308, column: 34, scope: !1010)
!1016 = !DILocation(line: 308, column: 29, scope: !1010)
!1017 = !DILocation(line: 308, column: 27, scope: !1010)
!1018 = !DILocation(line: 309, column: 33, scope: !1010)
!1019 = !DILocation(line: 309, column: 28, scope: !1010)
!1020 = !DILocation(line: 309, column: 26, scope: !1010)
!1021 = !DILocation(line: 310, column: 36, scope: !1010)
!1022 = !DILocation(line: 310, column: 31, scope: !1010)
!1023 = !DILocation(line: 310, column: 29, scope: !1010)
!1024 = !DILocation(line: 312, column: 47, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1010, file: !706, line: 311, column: 13)
!1026 = !DILocation(line: 313, column: 26, scope: !1010)
!1027 = !DILocation(line: 313, column: 37, scope: !1010)
!1028 = !DILocation(line: 313, column: 24, scope: !1010)
!1029 = !DILocation(line: 314, column: 39, scope: !1010)
!1030 = !DILocation(line: 314, column: 28, scope: !1010)
!1031 = !DILocation(line: 314, column: 26, scope: !1010)
!1032 = !DILocation(line: 315, column: 38, scope: !1010)
!1033 = !DILocation(line: 315, column: 27, scope: !1010)
!1034 = !DILocation(line: 315, column: 25, scope: !1010)
!1035 = !DILocation(line: 316, column: 41, scope: !1010)
!1036 = !DILocation(line: 316, column: 30, scope: !1010)
!1037 = !DILocation(line: 316, column: 28, scope: !1010)
!1038 = !DILocation(line: 320, column: 10, scope: !1010)
!1039 = !DILocation(line: 305, column: 40, scope: !1011)
!1040 = !DILocation(line: 305, column: 19, scope: !1011)
!1041 = distinct !{!1041, !1007, !1042, !983, !984}
!1042 = !DILocation(line: 321, column: 7, scope: !1008)
!1043 = !DILocation(line: 318, column: 46, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1010, file: !706, line: 317, column: 13)
!1045 = !DILocation(line: 318, column: 29, scope: !1044)
!1046 = !DILocation(line: 312, column: 30, scope: !1025)
!1047 = !DILocation(line: 322, column: 49, scope: !855)
!1048 = !DILocation(line: 322, column: 63, scope: !855)
!1049 = !DILocation(line: 323, column: 53, scope: !855)
!1050 = !DILocation(line: 323, column: 67, scope: !855)
!1051 = !DILocation(line: 324, column: 51, scope: !855)
!1052 = !DILocation(line: 324, column: 65, scope: !855)
!1053 = !DILocation(line: 325, column: 57, scope: !855)
!1054 = !DILocation(line: 325, column: 71, scope: !855)
!1055 = !DILocation(line: 326, column: 11, scope: !855)
!1056 = !DILocation(line: 327, column: 55, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !855, file: !706, line: 326, column: 11)
!1058 = !DILocation(line: 327, column: 69, scope: !1057)
!1059 = !DILocation(line: 327, column: 9, scope: !1057)
!1060 = !DILocation(line: 328, column: 7, scope: !855)
!1061 = !DILocation(line: 330, column: 7, scope: !855)
!1062 = !DILocation(line: 332, column: 7, scope: !855)
!1063 = !DILocation(line: 334, column: 7, scope: !855)
!1064 = !DILocation(line: 336, column: 11, scope: !855)
!1065 = !DILocation(line: 337, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !706, line: 337, column: 9)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !706, line: 337, column: 9)
!1068 = distinct !DILexicalBlock(scope: !855, file: !706, line: 336, column: 11)
!1069 = !DILocation(line: 292, column: 46, scope: !856)
!1070 = distinct !{!1070, !998, !1071, !983, !984}
!1071 = !DILocation(line: 341, column: 5, scope: !857)
!1072 = !DILocation(line: 340, column: 8, scope: !855)
!1073 = !DILocation(line: 339, column: 8, scope: !855)
!1074 = !{i64 0, i64 4, !930}
!1075 = !{i64 0, i64 4, !930, i64 4, i64 4, !930}
!1076 = !DILocation(line: 342, column: 10, scope: !837)
!1077 = !DILocation(line: 343, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !837, file: !706, line: 343, column: 9)
!1079 = !DILocation(line: 343, column: 9, scope: !837)
!1080 = !DILocation(line: 345, column: 16, scope: !860)
!1081 = !{!867, !871, i64 568}
!1082 = !DILocation(line: 345, column: 33, scope: !860)
!1083 = !DILocation(line: 345, column: 9, scope: !837)
!1084 = !DILocation(line: 353, column: 66, scope: !859)
!1085 = !DILocation(line: 354, column: 18, scope: !859)
!1086 = !DILocalVariable(name: "image", arg: 1, scope: !1087, file: !1088, line: 27, type: !800)
!1087 = distinct !DISubprogram(name: "SetImageProgress", scope: !1088, file: !1088, line: 27, type: !1089, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1091)
!1088 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!488, !800, !605, !607, !610}
!1091 = !{!1086, !1092, !1093, !1094, !1095}
!1092 = !DILocalVariable(name: "tag", arg: 2, scope: !1087, file: !1088, line: 28, type: !605)
!1093 = !DILocalVariable(name: "offset", arg: 3, scope: !1087, file: !1088, line: 28, type: !607)
!1094 = !DILocalVariable(name: "extent", arg: 4, scope: !1087, file: !1088, line: 28, type: !610)
!1095 = !DILocalVariable(name: "message", scope: !1087, file: !1088, line: 31, type: !625)
!1096 = !DILocation(line: 0, scope: !1087, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 353, column: 17, scope: !859)
!1098 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !1097)
!1099 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !1097)
!1100 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !1097)
!1101 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !1097)
!1102 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !1097)
!1103 = !{!867, !871, i64 576}
!1104 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !1097)
!1105 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !1097)
!1106 = !DILocation(line: 0, scope: !859)
!1107 = !DILocation(line: 355, column: 21, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !859, file: !706, line: 355, column: 13)
!1109 = !DILocation(line: 355, column: 13, scope: !859)
!1110 = !DILocation(line: 357, column: 7, scope: !859)
!1111 = !DILocation(line: 224, column: 41, scope: !838)
!1112 = distinct !{!1112, !911, !1113, !983, !984}
!1113 = !DILocation(line: 358, column: 3, scope: !839)
!1114 = !DILocation(line: 214, column: 9, scope: !797)
!1115 = !DILocation(line: 359, column: 18, scope: !797)
!1116 = !DILocation(line: 360, column: 14, scope: !797)
!1117 = !DILocation(line: 361, column: 14, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !797, file: !706, line: 361, column: 7)
!1119 = !DILocation(line: 361, column: 7, scope: !797)
!1120 = !DILocation(line: 362, column: 21, scope: !1118)
!1121 = !DILocation(line: 362, column: 5, scope: !1118)
!1122 = !DILocation(line: 364, column: 1, scope: !797)
!1123 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!488, !1126, !605, !605, !802, !605, null}
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1128 = !{}
!1129 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!472, !800, !802, !802, !1132, !804}
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!1133 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!488, !472, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!1137 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !804, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!1142 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!472, !472}
!1145 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !800, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!1149 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !814, file: !814, line: 55, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!812, !800, !804}
!1152 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !814, file: !814, line: 53, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1153 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !814, file: !814, line: 69, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!695, !1156, !803, !803, !802, !802, !804}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!1158 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !814, file: !814, line: 99, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!495, !812, !803, !803, !802, !802, !804}
!1161 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !814, file: !814, line: 66, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!697, !1156}
!1164 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !814, file: !814, line: 77, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!700, !812}
!1167 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !814, file: !814, line: 89, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!488, !812, !804}
!1170 = !DISubprogram(name: "DestroyCacheView", scope: !814, file: !814, line: 57, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!812, !812}
!1173 = distinct !DISubprogram(name: "BilevelImage", scope: !706, file: !706, line: 409, type: !1174, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1177)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!488, !472, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!1177 = !{!1178, !1179, !1180}
!1178 = !DILocalVariable(name: "image", arg: 1, scope: !1173, file: !706, line: 409, type: !472)
!1179 = !DILocalVariable(name: "threshold", arg: 2, scope: !1173, file: !706, line: 409, type: !1176)
!1180 = !DILocalVariable(name: "status", scope: !1173, file: !706, line: 412, type: !488)
!1181 = !DILocation(line: 0, scope: !1173)
!1182 = !DILocation(line: 414, column: 10, scope: !1173)
!1183 = !DILocation(line: 415, column: 3, scope: !1173)
!1184 = distinct !DISubprogram(name: "BilevelImageChannel", scope: !706, file: !706, line: 418, type: !1185, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1189)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!488, !472, !1187, !1176}
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !393)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1202, !1203, !1204}
!1190 = !DILocalVariable(name: "image", arg: 1, scope: !1184, file: !706, line: 418, type: !472)
!1191 = !DILocalVariable(name: "channel", arg: 2, scope: !1184, file: !706, line: 419, type: !1187)
!1192 = !DILocalVariable(name: "threshold", arg: 3, scope: !1184, file: !706, line: 419, type: !1176)
!1193 = !DILocalVariable(name: "image_view", scope: !1184, file: !706, line: 424, type: !812)
!1194 = !DILocalVariable(name: "exception", scope: !1184, file: !706, line: 427, type: !804)
!1195 = !DILocalVariable(name: "status", scope: !1184, file: !706, line: 430, type: !488)
!1196 = !DILocalVariable(name: "progress", scope: !1184, file: !706, line: 433, type: !608)
!1197 = !DILocalVariable(name: "y", scope: !1184, file: !706, line: 436, type: !536)
!1198 = !DILocalVariable(name: "indexes", scope: !1199, file: !706, line: 460, type: !848)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !706, line: 458, column: 3)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !706, line: 457, column: 3)
!1201 = distinct !DILexicalBlock(scope: !1184, file: !706, line: 457, column: 3)
!1202 = !DILocalVariable(name: "x", scope: !1199, file: !706, line: 463, type: !536)
!1203 = !DILocalVariable(name: "q", scope: !1199, file: !706, line: 466, type: !850)
!1204 = !DILocalVariable(name: "proceed", scope: !1205, file: !706, line: 520, type: !488)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !706, line: 518, column: 7)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !706, line: 517, column: 9)
!1207 = !DILocation(line: 0, scope: !1184)
!1208 = !DILocation(line: 440, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1184, file: !706, line: 440, column: 7)
!1210 = !DILocation(line: 440, column: 20, scope: !1209)
!1211 = !DILocation(line: 440, column: 7, scope: !1184)
!1212 = !DILocation(line: 441, column: 68, scope: !1209)
!1213 = !DILocation(line: 441, column: 12, scope: !1209)
!1214 = !DILocation(line: 441, column: 5, scope: !1209)
!1215 = !DILocation(line: 442, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1184, file: !706, line: 442, column: 7)
!1217 = !DILocation(line: 442, column: 47, scope: !1216)
!1218 = !DILocation(line: 442, column: 7, scope: !1184)
!1219 = !DILocation(line: 444, column: 31, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1184, file: !706, line: 444, column: 7)
!1221 = !DILocalVariable(name: "colorspace", arg: 1, scope: !1222, file: !1223, line: 86, type: !1226)
!1222 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !1223, file: !1223, line: 85, type: !1224, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1227)
!1223 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!488, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!1227 = !{!1221}
!1228 = !DILocation(line: 0, scope: !1222, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 444, column: 7, scope: !1220)
!1230 = !DILocation(line: 88, column: 38, scope: !1231, inlinedAt: !1229)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !1223, line: 88, column: 7)
!1232 = !DILocation(line: 445, column: 12, scope: !1220)
!1233 = !DILocation(line: 445, column: 5, scope: !1220)
!1234 = !DILocation(line: 451, column: 22, scope: !1184)
!1235 = !DILocation(line: 452, column: 14, scope: !1184)
!1236 = !DILocation(line: 457, column: 34, scope: !1200)
!1237 = !DILocation(line: 457, column: 15, scope: !1200)
!1238 = !DILocation(line: 457, column: 3, scope: !1201)
!1239 = !DILocation(line: 477, column: 9, scope: !1199)
!1240 = !DILocation(line: 500, column: 13, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !706, line: 490, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !706, line: 489, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !706, line: 489, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1199, file: !706, line: 477, column: 9)
!1245 = !DILocation(line: 509, column: 45, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !706, line: 509, column: 13)
!1247 = !DILocation(line: 468, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1199, file: !706, line: 468, column: 9)
!1249 = !DILocation(line: 468, column: 9, scope: !1199)
!1250 = !DILocation(line: 470, column: 57, scope: !1199)
!1251 = !DILocation(line: 470, column: 7, scope: !1199)
!1252 = !DILocation(line: 0, scope: !1199)
!1253 = !DILocation(line: 471, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1199, file: !706, line: 471, column: 9)
!1255 = !DILocation(line: 471, column: 9, scope: !1199)
!1256 = !DILocation(line: 476, column: 13, scope: !1199)
!1257 = !DILocation(line: 489, column: 19, scope: !1242)
!1258 = !DILocation(line: 489, column: 7, scope: !1243)
!1259 = !DILocation(line: 525, column: 66, scope: !1205)
!1260 = !DILocation(line: 526, column: 18, scope: !1205)
!1261 = !DILocation(line: 0, scope: !1087, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 525, column: 17, scope: !1205)
!1263 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !1262)
!1264 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !1262)
!1265 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !1262)
!1266 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !1262)
!1267 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !1262)
!1268 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !1262)
!1269 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !1262)
!1270 = !DILocation(line: 0, scope: !1205)
!1271 = !DILocation(line: 527, column: 21, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1205, file: !706, line: 527, column: 13)
!1273 = !DILocation(line: 527, column: 13, scope: !1205)
!1274 = !DILocation(line: 529, column: 7, scope: !1205)
!1275 = !DILocation(line: 457, column: 41, scope: !1200)
!1276 = distinct !{!1276, !1238, !1277, !983, !984}
!1277 = !DILocation(line: 530, column: 3, scope: !1201)
!1278 = !DILocation(line: 515, column: 9, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1199, file: !706, line: 515, column: 9)
!1280 = !DILocation(line: 515, column: 60, scope: !1279)
!1281 = !DILocation(line: 515, column: 9, scope: !1199)
!1282 = !DILocation(line: 517, column: 16, scope: !1206)
!1283 = !DILocation(line: 517, column: 33, scope: !1206)
!1284 = !DILocation(line: 517, column: 9, scope: !1199)
!1285 = !DILocation(line: 491, column: 13, scope: !1241)
!1286 = !DILocation(line: 492, column: 11, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1241, file: !706, line: 491, column: 13)
!1288 = !DILocation(line: 495, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1241, file: !706, line: 494, column: 13)
!1290 = !DILocation(line: 497, column: 13, scope: !1241)
!1291 = !DILocation(line: 498, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1241, file: !706, line: 497, column: 13)
!1293 = !DILocation(line: 513, column: 10, scope: !1241)
!1294 = !DILocation(line: 489, column: 48, scope: !1242)
!1295 = distinct !{!1295, !1258, !1296, !983, !984}
!1296 = !DILocation(line: 514, column: 7, scope: !1243)
!1297 = !DILocation(line: 494, column: 13, scope: !1241)
!1298 = !DILocation(line: 509, column: 13, scope: !1241)
!1299 = !DILocation(line: 511, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !706, line: 511, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1246, file: !706, line: 511, column: 11)
!1302 = !DILocation(line: 0, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !706, line: 502, column: 17)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !706, line: 501, column: 11)
!1305 = distinct !DILexicalBlock(scope: !1241, file: !706, line: 500, column: 13)
!1306 = !DILocation(line: 510, column: 21, scope: !1246)
!1307 = !DILocation(line: 510, column: 32, scope: !1246)
!1308 = !DILocation(line: 479, column: 40, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !706, line: 479, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !706, line: 479, column: 9)
!1311 = distinct !DILexicalBlock(scope: !1244, file: !706, line: 478, column: 7)
!1312 = !DILocation(line: 479, column: 21, scope: !1309)
!1313 = !DILocation(line: 479, column: 9, scope: !1310)
!1314 = !DILocation(line: 481, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !706, line: 480, column: 9)
!1316 = !DILocation(line: 483, column: 11, scope: !1315)
!1317 = !DILocation(line: 484, column: 11, scope: !1315)
!1318 = !DILocation(line: 485, column: 12, scope: !1315)
!1319 = !DILocation(line: 479, column: 50, scope: !1309)
!1320 = distinct !{!1320, !1313, !1321, !983, !984}
!1321 = !DILocation(line: 486, column: 9, scope: !1310)
!1322 = !DILocation(line: 449, column: 9, scope: !1184)
!1323 = !DILocation(line: 531, column: 14, scope: !1184)
!1324 = !DILocation(line: 532, column: 3, scope: !1184)
!1325 = !DILocation(line: 533, column: 1, scope: !1184)
!1326 = !DISubprogram(name: "SetImageColorspace", scope: !11, file: !11, line: 65, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!488, !472, !1226}
!1329 = !DISubprogram(name: "GetPixelIntensity", scope: !326, file: !326, line: 181, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!693, !800, !845}
!1332 = distinct !DISubprogram(name: "BlackThresholdImage", scope: !706, file: !706, line: 568, type: !1333, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!488, !472, !605}
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "image", arg: 1, scope: !1332, file: !706, line: 568, type: !472)
!1337 = !DILocalVariable(name: "threshold", arg: 2, scope: !1332, file: !706, line: 569, type: !605)
!1338 = !DILocalVariable(name: "status", scope: !1332, file: !706, line: 572, type: !488)
!1339 = !DILocation(line: 0, scope: !1332)
!1340 = !DILocation(line: 575, column: 13, scope: !1332)
!1341 = !DILocation(line: 574, column: 10, scope: !1332)
!1342 = !DILocation(line: 576, column: 3, scope: !1332)
!1343 = distinct !DISubprogram(name: "BlackThresholdImageChannel", scope: !706, file: !706, line: 579, type: !1344, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!488, !472, !1187, !605, !804}
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1361, !1362, !1363, !1364, !1366, !1367, !1371, !1372, !1373}
!1347 = !DILocalVariable(name: "image", arg: 1, scope: !1343, file: !706, line: 579, type: !472)
!1348 = !DILocalVariable(name: "channel", arg: 2, scope: !1343, file: !706, line: 580, type: !1187)
!1349 = !DILocalVariable(name: "thresholds", arg: 3, scope: !1343, file: !706, line: 580, type: !605)
!1350 = !DILocalVariable(name: "exception", arg: 4, scope: !1343, file: !706, line: 580, type: !804)
!1351 = !DILocalVariable(name: "image_view", scope: !1343, file: !706, line: 585, type: !812)
!1352 = !DILocalVariable(name: "geometry_info", scope: !1343, file: !706, line: 588, type: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !153, line: 112, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !153, line: 104, size: 320, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !1354, file: !153, line: 107, baseType: !509, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !1354, file: !153, line: 108, baseType: !509, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !1354, file: !153, line: 109, baseType: !509, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1354, file: !153, line: 110, baseType: !509, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !1354, file: !153, line: 111, baseType: !509, size: 64, offset: 256)
!1361 = !DILocalVariable(name: "status", scope: !1343, file: !706, line: 591, type: !488)
!1362 = !DILocalVariable(name: "progress", scope: !1343, file: !706, line: 594, type: !608)
!1363 = !DILocalVariable(name: "threshold", scope: !1343, file: !706, line: 597, type: !821)
!1364 = !DILocalVariable(name: "flags", scope: !1343, file: !706, line: 600, type: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1366 = !DILocalVariable(name: "y", scope: !1343, file: !706, line: 603, type: !536)
!1367 = !DILocalVariable(name: "indexes", scope: !1368, file: !706, line: 652, type: !848)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !706, line: 650, column: 3)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !706, line: 649, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 649, column: 3)
!1371 = !DILocalVariable(name: "x", scope: !1368, file: !706, line: 655, type: !536)
!1372 = !DILocalVariable(name: "q", scope: !1368, file: !706, line: 658, type: !850)
!1373 = !DILocalVariable(name: "proceed", scope: !1374, file: !706, line: 694, type: !488)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !706, line: 692, column: 7)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !706, line: 691, column: 9)
!1376 = !DILocation(line: 0, scope: !1343)
!1377 = !DILocation(line: 587, column: 3, scope: !1343)
!1378 = !DILocation(line: 588, column: 5, scope: !1343)
!1379 = !DILocation(line: 596, column: 3, scope: !1343)
!1380 = !DILocation(line: 597, column: 5, scope: !1343)
!1381 = !DILocation(line: 607, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 607, column: 7)
!1383 = !DILocation(line: 607, column: 20, scope: !1382)
!1384 = !DILocation(line: 607, column: 7, scope: !1343)
!1385 = !DILocation(line: 608, column: 68, scope: !1382)
!1386 = !DILocation(line: 608, column: 12, scope: !1382)
!1387 = !DILocation(line: 608, column: 5, scope: !1382)
!1388 = !DILocation(line: 609, column: 18, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 609, column: 7)
!1390 = !DILocation(line: 609, column: 7, scope: !1343)
!1391 = !DILocation(line: 611, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 611, column: 7)
!1393 = !DILocation(line: 611, column: 47, scope: !1392)
!1394 = !DILocation(line: 611, column: 7, scope: !1343)
!1395 = !DILocation(line: 613, column: 3, scope: !1343)
!1396 = !DILocation(line: 614, column: 9, scope: !1343)
!1397 = !DILocation(line: 615, column: 31, scope: !1343)
!1398 = !{!1399, !874, i64 0}
!1399 = !{!"_GeometryInfo", !874, i64 0, !874, i64 8, !874, i64 16, !874, i64 24, !874, i64 32}
!1400 = !DILocation(line: 615, column: 17, scope: !1343)
!1401 = !DILocation(line: 615, column: 13, scope: !1343)
!1402 = !DILocation(line: 615, column: 16, scope: !1343)
!1403 = !{!1404, !931, i64 32}
!1404 = !{!"_MagickPixelPacket", !868, i64 0, !868, i64 4, !868, i64 8, !874, i64 16, !870, i64 24, !931, i64 32, !931, i64 36, !931, i64 40, !931, i64 44, !931, i64 48}
!1405 = !DILocation(line: 616, column: 33, scope: !1343)
!1406 = !{!1399, !874, i64 8}
!1407 = !DILocation(line: 616, column: 19, scope: !1343)
!1408 = !DILocation(line: 616, column: 13, scope: !1343)
!1409 = !DILocation(line: 617, column: 14, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 617, column: 7)
!1411 = !DILocation(line: 617, column: 28, scope: !1410)
!1412 = !DILocation(line: 617, column: 7, scope: !1343)
!1413 = !DILocation(line: 619, column: 32, scope: !1343)
!1414 = !{!1399, !874, i64 16}
!1415 = !DILocation(line: 619, column: 18, scope: !1343)
!1416 = !DILocation(line: 619, column: 13, scope: !1343)
!1417 = !DILocation(line: 620, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 620, column: 7)
!1419 = !DILocation(line: 620, column: 25, scope: !1418)
!1420 = !DILocation(line: 620, column: 7, scope: !1343)
!1421 = !DILocation(line: 622, column: 35, scope: !1343)
!1422 = !{!1399, !874, i64 24}
!1423 = !DILocation(line: 622, column: 21, scope: !1343)
!1424 = !DILocation(line: 622, column: 13, scope: !1343)
!1425 = !DILocation(line: 623, column: 14, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 623, column: 7)
!1427 = !DILocation(line: 623, column: 26, scope: !1426)
!1428 = !DILocation(line: 623, column: 7, scope: !1343)
!1429 = !DILocation(line: 625, column: 33, scope: !1343)
!1430 = !{!1399, !874, i64 32}
!1431 = !DILocation(line: 625, column: 19, scope: !1343)
!1432 = !DILocation(line: 625, column: 13, scope: !1343)
!1433 = !DILocation(line: 626, column: 14, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 626, column: 7)
!1435 = !DILocation(line: 626, column: 26, scope: !1434)
!1436 = !DILocation(line: 626, column: 7, scope: !1343)
!1437 = !DILocation(line: 628, column: 14, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 628, column: 7)
!1439 = !DILocation(line: 628, column: 30, scope: !1438)
!1440 = !DILocation(line: 628, column: 7, scope: !1343)
!1441 = !DILocation(line: 630, column: 20, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !706, line: 629, column: 5)
!1443 = !DILocation(line: 631, column: 22, scope: !1442)
!1444 = !{!1404, !931, i64 36}
!1445 = !DILocation(line: 632, column: 21, scope: !1442)
!1446 = !{!1404, !931, i64 40}
!1447 = !DILocation(line: 633, column: 24, scope: !1442)
!1448 = !{!1404, !931, i64 44}
!1449 = !DILocation(line: 634, column: 22, scope: !1442)
!1450 = !{!1404, !931, i64 48}
!1451 = !DILocation(line: 635, column: 5, scope: !1442)
!1452 = !DILocalVariable(name: "pixel", arg: 1, scope: !1453, file: !1454, line: 76, type: !1457)
!1453 = distinct !DISubprogram(name: "IsMagickGray", scope: !1454, file: !1454, line: 76, type: !1455, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1459)
!1454 = !DIFile(filename: "apps/538.imagick_r/src/magick/color-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1d5db1c576095b1d3349b678b2a970e8")
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!488, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!1459 = !{!1452}
!1460 = !DILocation(line: 0, scope: !1453, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 636, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1343, file: !706, line: 636, column: 7)
!1463 = !DILocation(line: 78, column: 15, scope: !1464, inlinedAt: !1461)
!1464 = distinct !DILexicalBlock(scope: !1453, file: !1454, line: 78, column: 7)
!1465 = !{!1404, !868, i64 4}
!1466 = !DILocation(line: 78, column: 45, scope: !1464, inlinedAt: !1461)
!1467 = !DILocation(line: 81, column: 23, scope: !1468, inlinedAt: !1461)
!1468 = distinct !DILexicalBlock(scope: !1453, file: !1454, line: 81, column: 7)
!1469 = !DILocation(line: 81, column: 8, scope: !1468, inlinedAt: !1461)
!1470 = !DILocation(line: 81, column: 38, scope: !1468, inlinedAt: !1461)
!1471 = !DILocation(line: 81, column: 55, scope: !1468, inlinedAt: !1461)
!1472 = !DILocation(line: 82, column: 25, scope: !1468, inlinedAt: !1461)
!1473 = !DILocation(line: 82, column: 8, scope: !1468, inlinedAt: !1461)
!1474 = !DILocation(line: 82, column: 39, scope: !1468, inlinedAt: !1461)
!1475 = !DILocation(line: 81, column: 7, scope: !1453, inlinedAt: !1461)
!1476 = !DILocation(line: 637, column: 32, scope: !1462)
!1477 = !DILocation(line: 0, scope: !1222, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 637, column: 8, scope: !1462)
!1479 = !DILocation(line: 88, column: 38, scope: !1231, inlinedAt: !1478)
!1480 = !DILocation(line: 638, column: 12, scope: !1462)
!1481 = !DILocation(line: 638, column: 5, scope: !1462)
!1482 = !DILocation(line: 644, column: 14, scope: !1343)
!1483 = !DILocation(line: 649, column: 34, scope: !1369)
!1484 = !DILocation(line: 649, column: 15, scope: !1369)
!1485 = !DILocation(line: 649, column: 3, scope: !1370)
!1486 = !DILocation(line: 660, column: 16, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1368, file: !706, line: 660, column: 9)
!1488 = !DILocation(line: 660, column: 9, scope: !1368)
!1489 = !DILocation(line: 662, column: 57, scope: !1368)
!1490 = !DILocation(line: 662, column: 7, scope: !1368)
!1491 = !DILocation(line: 0, scope: !1368)
!1492 = !DILocation(line: 663, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1368, file: !706, line: 663, column: 9)
!1494 = !DILocation(line: 663, column: 9, scope: !1368)
!1495 = !DILocation(line: 668, column: 13, scope: !1368)
!1496 = !DILocation(line: 669, column: 17, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !706, line: 669, column: 5)
!1498 = distinct !DILexicalBlock(scope: !1368, file: !706, line: 669, column: 5)
!1499 = !DILocation(line: 669, column: 5, scope: !1498)
!1500 = !DILocation(line: 683, column: 43, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !706, line: 683, column: 11)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !706, line: 670, column: 5)
!1503 = !DILocation(line: 671, column: 41, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1502, file: !706, line: 671, column: 11)
!1505 = !DILocation(line: 672, column: 29, scope: !1504)
!1506 = !DILocation(line: 672, column: 12, scope: !1504)
!1507 = !DILocation(line: 672, column: 44, scope: !1504)
!1508 = !DILocation(line: 671, column: 11, scope: !1502)
!1509 = !DILocation(line: 673, column: 9, scope: !1504)
!1510 = !DILocation(line: 674, column: 43, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1502, file: !706, line: 674, column: 11)
!1512 = !DILocation(line: 675, column: 29, scope: !1511)
!1513 = !DILocation(line: 675, column: 12, scope: !1511)
!1514 = !DILocation(line: 675, column: 46, scope: !1511)
!1515 = !DILocation(line: 674, column: 11, scope: !1502)
!1516 = !DILocation(line: 676, column: 9, scope: !1511)
!1517 = !DILocation(line: 677, column: 42, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1502, file: !706, line: 677, column: 11)
!1519 = !DILocation(line: 678, column: 29, scope: !1518)
!1520 = !DILocation(line: 678, column: 12, scope: !1518)
!1521 = !DILocation(line: 678, column: 45, scope: !1518)
!1522 = !DILocation(line: 677, column: 11, scope: !1502)
!1523 = !DILocation(line: 679, column: 9, scope: !1518)
!1524 = !DILocation(line: 680, column: 45, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1502, file: !706, line: 680, column: 11)
!1526 = !DILocation(line: 681, column: 29, scope: !1525)
!1527 = !DILocation(line: 681, column: 12, scope: !1525)
!1528 = !DILocation(line: 681, column: 48, scope: !1525)
!1529 = !DILocation(line: 680, column: 11, scope: !1502)
!1530 = !DILocation(line: 682, column: 9, scope: !1525)
!1531 = !DILocation(line: 687, column: 8, scope: !1502)
!1532 = !DILocation(line: 669, column: 46, scope: !1497)
!1533 = distinct !{!1533, !1499, !1534, !983, !984}
!1534 = !DILocation(line: 688, column: 5, scope: !1498)
!1535 = !DILocation(line: 684, column: 49, scope: !1501)
!1536 = !DILocation(line: 685, column: 29, scope: !1501)
!1537 = !DILocation(line: 685, column: 12, scope: !1501)
!1538 = !DILocation(line: 685, column: 54, scope: !1501)
!1539 = !DILocation(line: 683, column: 11, scope: !1502)
!1540 = !DILocation(line: 686, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !706, line: 686, column: 9)
!1542 = distinct !DILexicalBlock(scope: !1501, file: !706, line: 686, column: 9)
!1543 = !DILocation(line: 689, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1368, file: !706, line: 689, column: 9)
!1545 = !DILocation(line: 689, column: 60, scope: !1544)
!1546 = !DILocation(line: 689, column: 9, scope: !1368)
!1547 = !DILocation(line: 691, column: 16, scope: !1375)
!1548 = !DILocation(line: 691, column: 33, scope: !1375)
!1549 = !DILocation(line: 691, column: 9, scope: !1368)
!1550 = !DILocation(line: 699, column: 66, scope: !1374)
!1551 = !DILocation(line: 700, column: 18, scope: !1374)
!1552 = !DILocation(line: 0, scope: !1087, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 699, column: 17, scope: !1374)
!1554 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !1553)
!1555 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !1553)
!1556 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !1553)
!1557 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !1553)
!1558 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !1553)
!1559 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !1553)
!1560 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !1553)
!1561 = !DILocation(line: 0, scope: !1374)
!1562 = !DILocation(line: 701, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1374, file: !706, line: 701, column: 13)
!1564 = !DILocation(line: 701, column: 13, scope: !1374)
!1565 = !DILocation(line: 703, column: 7, scope: !1374)
!1566 = !DILocation(line: 649, column: 41, scope: !1369)
!1567 = distinct !{!1567, !1485, !1568, !983, !984}
!1568 = !DILocation(line: 704, column: 3, scope: !1370)
!1569 = !DILocation(line: 642, column: 9, scope: !1343)
!1570 = !DILocation(line: 705, column: 14, scope: !1343)
!1571 = !DILocation(line: 706, column: 3, scope: !1343)
!1572 = !DILocation(line: 707, column: 1, scope: !1343)
!1573 = !DISubprogram(name: "ParseGeometry", scope: !153, file: !153, line: 143, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1365, !605, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1577 = distinct !DISubprogram(name: "ClampImage", scope: !706, file: !706, line: 751, type: !1578, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!488, !472}
!1580 = !{!1581, !1582}
!1581 = !DILocalVariable(name: "image", arg: 1, scope: !1577, file: !706, line: 751, type: !472)
!1582 = !DILocalVariable(name: "status", scope: !1577, file: !706, line: 754, type: !488)
!1583 = !DILocation(line: 0, scope: !1577)
!1584 = !DILocation(line: 756, column: 10, scope: !1577)
!1585 = !DILocation(line: 757, column: 3, scope: !1577)
!1586 = distinct !DISubprogram(name: "ClampImageChannel", scope: !706, file: !706, line: 760, type: !1587, scopeLine: 762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!488, !472, !1187}
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1600, !1601, !1605, !1606, !1607}
!1590 = !DILocalVariable(name: "image", arg: 1, scope: !1586, file: !706, line: 760, type: !472)
!1591 = !DILocalVariable(name: "channel", arg: 2, scope: !1586, file: !706, line: 761, type: !1187)
!1592 = !DILocalVariable(name: "image_view", scope: !1586, file: !706, line: 766, type: !812)
!1593 = !DILocalVariable(name: "exception", scope: !1586, file: !706, line: 769, type: !804)
!1594 = !DILocalVariable(name: "status", scope: !1586, file: !706, line: 772, type: !488)
!1595 = !DILocalVariable(name: "progress", scope: !1586, file: !706, line: 775, type: !608)
!1596 = !DILocalVariable(name: "y", scope: !1586, file: !706, line: 778, type: !536)
!1597 = !DILocalVariable(name: "i", scope: !1598, file: !706, line: 787, type: !536)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !706, line: 785, column: 5)
!1599 = distinct !DILexicalBlock(scope: !1586, file: !706, line: 784, column: 7)
!1600 = !DILocalVariable(name: "q", scope: !1598, file: !706, line: 790, type: !850)
!1601 = !DILocalVariable(name: "indexes", scope: !1602, file: !706, line: 817, type: !848)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !706, line: 815, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !706, line: 814, column: 3)
!1604 = distinct !DILexicalBlock(scope: !1586, file: !706, line: 814, column: 3)
!1605 = !DILocalVariable(name: "x", scope: !1602, file: !706, line: 820, type: !536)
!1606 = !DILocalVariable(name: "q", scope: !1602, file: !706, line: 823, type: !850)
!1607 = !DILocalVariable(name: "proceed", scope: !1608, file: !706, line: 854, type: !488)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !706, line: 852, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !706, line: 851, column: 9)
!1610 = !DILocation(line: 0, scope: !1586)
!1611 = !DILocation(line: 782, column: 14, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1586, file: !706, line: 782, column: 7)
!1613 = !DILocation(line: 782, column: 20, scope: !1612)
!1614 = !DILocation(line: 782, column: 7, scope: !1586)
!1615 = !DILocation(line: 783, column: 68, scope: !1612)
!1616 = !DILocation(line: 783, column: 12, scope: !1612)
!1617 = !DILocation(line: 783, column: 5, scope: !1612)
!1618 = !DILocation(line: 784, column: 14, scope: !1599)
!1619 = !{!867, !868, i64 0}
!1620 = !DILocation(line: 784, column: 28, scope: !1599)
!1621 = !DILocation(line: 784, column: 7, scope: !1586)
!1622 = !DILocation(line: 0, scope: !1598)
!1623 = !DILocation(line: 801, column: 14, scope: !1598)
!1624 = !DILocation(line: 808, column: 22, scope: !1586)
!1625 = !DILocation(line: 809, column: 14, scope: !1586)
!1626 = !DILocation(line: 814, column: 34, scope: !1603)
!1627 = !DILocation(line: 814, column: 15, scope: !1603)
!1628 = !DILocation(line: 814, column: 3, scope: !1604)
!1629 = !DILocation(line: 825, column: 16, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1602, file: !706, line: 825, column: 9)
!1631 = !DILocation(line: 825, column: 9, scope: !1602)
!1632 = !DILocation(line: 827, column: 57, scope: !1602)
!1633 = !DILocation(line: 827, column: 7, scope: !1602)
!1634 = !DILocation(line: 0, scope: !1602)
!1635 = !DILocation(line: 828, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1602, file: !706, line: 828, column: 9)
!1637 = !DILocation(line: 828, column: 9, scope: !1602)
!1638 = !DILocation(line: 833, column: 13, scope: !1602)
!1639 = !DILocation(line: 849, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1602, file: !706, line: 849, column: 9)
!1641 = !DILocation(line: 849, column: 60, scope: !1640)
!1642 = !DILocation(line: 849, column: 9, scope: !1602)
!1643 = !DILocation(line: 851, column: 16, scope: !1609)
!1644 = !DILocation(line: 851, column: 33, scope: !1609)
!1645 = !DILocation(line: 851, column: 9, scope: !1602)
!1646 = !DILocation(line: 859, column: 62, scope: !1608)
!1647 = !DILocation(line: 859, column: 72, scope: !1608)
!1648 = !DILocation(line: 0, scope: !1087, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 859, column: 17, scope: !1608)
!1650 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !1649)
!1651 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !1649)
!1652 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !1649)
!1653 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !1649)
!1654 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !1649)
!1655 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !1649)
!1656 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !1649)
!1657 = !DILocation(line: 0, scope: !1608)
!1658 = !DILocation(line: 860, column: 21, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1608, file: !706, line: 860, column: 13)
!1660 = !DILocation(line: 860, column: 13, scope: !1608)
!1661 = !DILocation(line: 862, column: 7, scope: !1608)
!1662 = !DILocation(line: 814, column: 41, scope: !1603)
!1663 = distinct !{!1663, !1628, !1664, !983, !984}
!1664 = !DILocation(line: 863, column: 3, scope: !1604)
!1665 = !DILocation(line: 806, column: 9, scope: !1586)
!1666 = !DILocation(line: 864, column: 14, scope: !1586)
!1667 = !DILocation(line: 865, column: 3, scope: !1586)
!1668 = !DILocation(line: 866, column: 1, scope: !1586)
!1669 = !DISubprogram(name: "SyncImage", scope: !73, file: !73, line: 544, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1670 = distinct !DISubprogram(name: "DestroyThresholdMap", scope: !706, file: !706, line: 890, type: !1671, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!702, !702}
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "map", arg: 1, scope: !1670, file: !706, line: 890, type: !702)
!1675 = !DILocation(line: 0, scope: !1670)
!1676 = !DILocation(line: 893, column: 12, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !706, line: 893, column: 7)
!1678 = !{!1679, !871, i64 0}
!1679 = !{!"_ThresholdMap", !871, i64 0, !871, i64 8, !870, i64 16, !870, i64 24, !870, i64 32, !871, i64 40}
!1680 = !DILocation(line: 893, column: 19, scope: !1677)
!1681 = !DILocation(line: 893, column: 7, scope: !1670)
!1682 = !DILocation(line: 894, column: 17, scope: !1677)
!1683 = !DILocation(line: 894, column: 16, scope: !1677)
!1684 = !DILocation(line: 894, column: 5, scope: !1677)
!1685 = !DILocation(line: 895, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1670, file: !706, line: 895, column: 7)
!1687 = !{!1679, !871, i64 8}
!1688 = !DILocation(line: 895, column: 24, scope: !1686)
!1689 = !DILocation(line: 895, column: 7, scope: !1670)
!1690 = !DILocation(line: 896, column: 22, scope: !1686)
!1691 = !DILocation(line: 896, column: 21, scope: !1686)
!1692 = !DILocation(line: 896, column: 5, scope: !1686)
!1693 = !DILocation(line: 897, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1670, file: !706, line: 897, column: 7)
!1695 = !{!1679, !871, i64 40}
!1696 = !DILocation(line: 897, column: 19, scope: !1694)
!1697 = !DILocation(line: 897, column: 7, scope: !1670)
!1698 = !DILocation(line: 898, column: 29, scope: !1694)
!1699 = !DILocation(line: 898, column: 16, scope: !1694)
!1700 = !DILocation(line: 898, column: 5, scope: !1694)
!1701 = !DILocation(line: 899, column: 24, scope: !1670)
!1702 = !DILocation(line: 900, column: 3, scope: !1670)
!1703 = !DISubprogram(name: "DestroyString", scope: !721, file: !721, line: 46, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!531, !531}
!1706 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1707, file: !1707, line: 51, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1707 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!527, !527}
!1710 = distinct !DISubprogram(name: "GetThresholdMapFile", scope: !706, file: !706, line: 933, type: !1711, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!702, !605, !605, !605, !804}
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1729, !1730, !1733, !1734, !1736}
!1714 = !DILocalVariable(name: "xml", arg: 1, scope: !1710, file: !706, line: 933, type: !605)
!1715 = !DILocalVariable(name: "filename", arg: 2, scope: !1710, file: !706, line: 934, type: !605)
!1716 = !DILocalVariable(name: "map_id", arg: 3, scope: !1710, file: !706, line: 934, type: !605)
!1717 = !DILocalVariable(name: "exception", arg: 4, scope: !1710, file: !706, line: 934, type: !804)
!1718 = !DILocalVariable(name: "attribute", scope: !1710, file: !706, line: 937, type: !605)
!1719 = !DILocalVariable(name: "content", scope: !1710, file: !706, line: 938, type: !605)
!1720 = !DILocalVariable(name: "value", scope: !1710, file: !706, line: 941, type: !509)
!1721 = !DILocalVariable(name: "map", scope: !1710, file: !706, line: 944, type: !702)
!1722 = !DILocalVariable(name: "description", scope: !1710, file: !706, line: 947, type: !714)
!1723 = !DILocalVariable(name: "levels", scope: !1710, file: !706, line: 948, type: !714)
!1724 = !DILocalVariable(name: "threshold", scope: !1710, file: !706, line: 949, type: !714)
!1725 = !DILocalVariable(name: "thresholds", scope: !1710, file: !706, line: 950, type: !714)
!1726 = !DILocalVariable(name: "message", scope: !1727, file: !706, line: 995, type: !531)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !706, line: 995, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 994, column: 7)
!1729 = !DILocalVariable(name: "exception", scope: !1727, file: !706, line: 995, type: !633)
!1730 = !DILocalVariable(name: "message", scope: !1731, file: !706, line: 1077, type: !531)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !706, line: 1077, column: 5)
!1732 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1076, column: 7)
!1733 = !DILocalVariable(name: "exception", scope: !1731, file: !706, line: 1077, type: !633)
!1734 = !DILocalVariable(name: "p", scope: !1735, file: !706, line: 1080, type: !531)
!1735 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1078, column: 3)
!1736 = !DILocalVariable(name: "i", scope: !1735, file: !706, line: 1083, type: !536)
!1737 = !DILocation(line: 0, scope: !1710)
!1738 = !DILocation(line: 953, column: 10, scope: !1710)
!1739 = !DILocation(line: 955, column: 14, scope: !1710)
!1740 = !DILocation(line: 956, column: 19, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 956, column: 8)
!1742 = !DILocation(line: 956, column: 8, scope: !1710)
!1743 = !DILocation(line: 958, column: 20, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 958, column: 3)
!1745 = !DILocation(line: 958, column: 3, scope: !1744)
!1746 = !DILocation(line: 962, column: 15, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !706, line: 961, column: 3)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !706, line: 958, column: 3)
!1749 = !DILocation(line: 963, column: 20, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !706, line: 963, column: 9)
!1751 = !DILocation(line: 963, column: 38, scope: !1750)
!1752 = !DILocation(line: 963, column: 42, scope: !1750)
!1753 = !DILocation(line: 963, column: 74, scope: !1750)
!1754 = !DILocation(line: 963, column: 9, scope: !1747)
!1755 = !DILocation(line: 965, column: 15, scope: !1747)
!1756 = !DILocation(line: 966, column: 20, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1747, file: !706, line: 966, column: 9)
!1758 = !DILocation(line: 966, column: 38, scope: !1757)
!1759 = !DILocation(line: 966, column: 42, scope: !1757)
!1760 = !DILocation(line: 966, column: 74, scope: !1757)
!1761 = !DILocation(line: 966, column: 9, scope: !1747)
!1762 = !DILocation(line: 960, column: 20, scope: !1748)
!1763 = distinct !{!1763, !1745, !1764, !983, !984}
!1764 = !DILocation(line: 968, column: 3, scope: !1744)
!1765 = !DILocation(line: 971, column: 18, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !706, line: 970, column: 5)
!1767 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 969, column: 7)
!1768 = !DILocation(line: 972, column: 7, scope: !1766)
!1769 = !DILocation(line: 974, column: 15, scope: !1710)
!1770 = !DILocation(line: 975, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 975, column: 7)
!1772 = !DILocation(line: 975, column: 7, scope: !1710)
!1773 = !DILocation(line: 977, column: 14, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !706, line: 976, column: 5)
!1775 = !DILocation(line: 979, column: 18, scope: !1774)
!1776 = !DILocation(line: 980, column: 7, scope: !1774)
!1777 = !DILocation(line: 982, column: 10, scope: !1710)
!1778 = !DILocation(line: 983, column: 14, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 983, column: 7)
!1780 = !DILocation(line: 983, column: 7, scope: !1710)
!1781 = !DILocation(line: 985, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !706, line: 984, column: 5)
!1783 = !DILocation(line: 987, column: 18, scope: !1782)
!1784 = !DILocation(line: 988, column: 7, scope: !1782)
!1785 = !DILocation(line: 993, column: 24, scope: !1710)
!1786 = !DILocation(line: 994, column: 11, scope: !1728)
!1787 = !DILocation(line: 994, column: 7, scope: !1710)
!1788 = !DILocation(line: 995, column: 5, scope: !1727)
!1789 = !{!882, !882, i64 0}
!1790 = !DILocation(line: 0, scope: !1727)
!1791 = !DILocation(line: 997, column: 8, scope: !1710)
!1792 = !DILocation(line: 998, column: 8, scope: !1710)
!1793 = !DILocation(line: 998, column: 14, scope: !1710)
!1794 = !DILocation(line: 997, column: 19, scope: !1710)
!1795 = !DILocation(line: 1002, column: 13, scope: !1710)
!1796 = !DILocation(line: 1003, column: 17, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1003, column: 7)
!1798 = !DILocation(line: 1003, column: 7, scope: !1710)
!1799 = !DILocation(line: 1004, column: 17, scope: !1797)
!1800 = !DILocation(line: 1004, column: 16, scope: !1797)
!1801 = !DILocation(line: 1004, column: 5, scope: !1797)
!1802 = !DILocation(line: 1005, column: 11, scope: !1710)
!1803 = !DILocation(line: 1006, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1006, column: 7)
!1805 = !DILocation(line: 1006, column: 7, scope: !1710)
!1806 = !DILocation(line: 1007, column: 22, scope: !1804)
!1807 = !DILocation(line: 1007, column: 21, scope: !1804)
!1808 = !DILocation(line: 1007, column: 5, scope: !1804)
!1809 = !DILocation(line: 1008, column: 13, scope: !1710)
!1810 = !DILocation(line: 1009, column: 17, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1009, column: 7)
!1812 = !DILocation(line: 1009, column: 7, scope: !1710)
!1813 = !DILocation(line: 1011, column: 14, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !706, line: 1010, column: 5)
!1815 = !DILocation(line: 1013, column: 18, scope: !1814)
!1816 = !DILocation(line: 0, scope: !1670, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 1014, column: 11, scope: !1814)
!1818 = !DILocation(line: 893, column: 12, scope: !1677, inlinedAt: !1817)
!1819 = !DILocation(line: 893, column: 19, scope: !1677, inlinedAt: !1817)
!1820 = !DILocation(line: 893, column: 7, scope: !1670, inlinedAt: !1817)
!1821 = !DILocation(line: 894, column: 17, scope: !1677, inlinedAt: !1817)
!1822 = !DILocation(line: 894, column: 16, scope: !1677, inlinedAt: !1817)
!1823 = !DILocation(line: 894, column: 5, scope: !1677, inlinedAt: !1817)
!1824 = !DILocation(line: 895, column: 12, scope: !1686, inlinedAt: !1817)
!1825 = !DILocation(line: 895, column: 24, scope: !1686, inlinedAt: !1817)
!1826 = !DILocation(line: 895, column: 7, scope: !1670, inlinedAt: !1817)
!1827 = !DILocation(line: 896, column: 22, scope: !1686, inlinedAt: !1817)
!1828 = !DILocation(line: 896, column: 21, scope: !1686, inlinedAt: !1817)
!1829 = !DILocation(line: 896, column: 5, scope: !1686, inlinedAt: !1817)
!1830 = !DILocation(line: 897, column: 12, scope: !1694, inlinedAt: !1817)
!1831 = !DILocation(line: 897, column: 19, scope: !1694, inlinedAt: !1817)
!1832 = !DILocation(line: 897, column: 7, scope: !1670, inlinedAt: !1817)
!1833 = !DILocation(line: 898, column: 29, scope: !1694, inlinedAt: !1817)
!1834 = !DILocation(line: 898, column: 16, scope: !1694, inlinedAt: !1817)
!1835 = !DILocation(line: 898, column: 5, scope: !1694, inlinedAt: !1817)
!1836 = !DILocation(line: 899, column: 24, scope: !1670, inlinedAt: !1817)
!1837 = !DILocation(line: 1015, column: 7, scope: !1814)
!1838 = !DILocalVariable(name: "value", arg: 1, scope: !1839, file: !1840, line: 73, type: !1843)
!1839 = distinct !DISubprogram(name: "StringToUnsignedLong", scope: !1840, file: !1840, line: 73, type: !1841, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1844)
!1840 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!471, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !605)
!1844 = !{!1838}
!1845 = !DILocation(line: 0, scope: !1839, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 1017, column: 14, scope: !1710)
!1847 = !DILocation(line: 75, column: 10, scope: !1839, inlinedAt: !1846)
!1848 = !DILocation(line: 1017, column: 8, scope: !1710)
!1849 = !DILocation(line: 1017, column: 13, scope: !1710)
!1850 = !{!1679, !870, i64 16}
!1851 = !DILocation(line: 1018, column: 18, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1018, column: 7)
!1853 = !DILocation(line: 1018, column: 7, scope: !1710)
!1854 = !DILocation(line: 1020, column: 14, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !706, line: 1019, column: 5)
!1856 = !DILocation(line: 1022, column: 18, scope: !1855)
!1857 = !DILocation(line: 1023, column: 11, scope: !1855)
!1858 = !DILocation(line: 1024, column: 7, scope: !1855)
!1859 = !DILocation(line: 1026, column: 13, scope: !1710)
!1860 = !DILocation(line: 1027, column: 17, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1027, column: 7)
!1862 = !DILocation(line: 1027, column: 7, scope: !1710)
!1863 = !DILocation(line: 1029, column: 14, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !706, line: 1028, column: 5)
!1865 = !DILocation(line: 1031, column: 18, scope: !1864)
!1866 = !DILocation(line: 1032, column: 11, scope: !1864)
!1867 = !DILocation(line: 1033, column: 7, scope: !1864)
!1868 = !DILocation(line: 0, scope: !1839, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 1035, column: 15, scope: !1710)
!1870 = !DILocation(line: 75, column: 10, scope: !1839, inlinedAt: !1869)
!1871 = !DILocation(line: 1035, column: 8, scope: !1710)
!1872 = !DILocation(line: 1035, column: 14, scope: !1710)
!1873 = !{!1679, !870, i64 24}
!1874 = !DILocation(line: 1036, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1036, column: 7)
!1876 = !DILocation(line: 1036, column: 7, scope: !1710)
!1877 = !DILocation(line: 1038, column: 14, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !706, line: 1037, column: 5)
!1879 = !DILocation(line: 1040, column: 18, scope: !1878)
!1880 = !DILocation(line: 1041, column: 11, scope: !1878)
!1881 = !DILocation(line: 1042, column: 7, scope: !1878)
!1882 = !DILocation(line: 1044, column: 13, scope: !1710)
!1883 = !DILocation(line: 1045, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1045, column: 7)
!1885 = !DILocation(line: 1045, column: 7, scope: !1710)
!1886 = !DILocation(line: 1047, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !706, line: 1046, column: 5)
!1888 = !DILocation(line: 1049, column: 18, scope: !1887)
!1889 = !DILocation(line: 1050, column: 11, scope: !1887)
!1890 = !DILocation(line: 1051, column: 7, scope: !1887)
!1891 = !DILocalVariable(name: "value", arg: 1, scope: !1892, file: !1840, line: 68, type: !1843)
!1892 = distinct !DISubprogram(name: "StringToLong", scope: !1840, file: !1840, line: 68, type: !1893, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!540, !1843}
!1895 = !{!1891}
!1896 = !DILocation(line: 0, scope: !1892, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 1053, column: 26, scope: !1710)
!1898 = !DILocation(line: 70, column: 10, scope: !1892, inlinedAt: !1897)
!1899 = !DILocation(line: 1053, column: 8, scope: !1710)
!1900 = !DILocation(line: 1053, column: 15, scope: !1710)
!1901 = !{!1679, !870, i64 32}
!1902 = !DILocation(line: 1054, column: 20, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1054, column: 7)
!1904 = !DILocation(line: 1054, column: 7, scope: !1710)
!1905 = !DILocation(line: 1056, column: 14, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !706, line: 1055, column: 5)
!1907 = !DILocation(line: 1058, column: 18, scope: !1906)
!1908 = !DILocation(line: 1059, column: 11, scope: !1906)
!1909 = !DILocation(line: 1060, column: 7, scope: !1906)
!1910 = !DILocation(line: 1065, column: 11, scope: !1710)
!1911 = !DILocation(line: 1066, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1710, file: !706, line: 1066, column: 7)
!1913 = !DILocation(line: 1066, column: 7, scope: !1710)
!1914 = !DILocation(line: 1068, column: 14, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !706, line: 1067, column: 5)
!1916 = !DILocation(line: 1070, column: 18, scope: !1915)
!1917 = !DILocation(line: 1071, column: 11, scope: !1915)
!1918 = !DILocation(line: 1072, column: 7, scope: !1915)
!1919 = !DILocation(line: 1074, column: 62, scope: !1710)
!1920 = !DILocation(line: 1074, column: 73, scope: !1710)
!1921 = !DILocation(line: 1074, column: 79, scope: !1710)
!1922 = !DILocation(line: 1074, column: 27, scope: !1710)
!1923 = !DILocation(line: 1074, column: 14, scope: !1710)
!1924 = !DILocation(line: 1076, column: 19, scope: !1732)
!1925 = !DILocation(line: 1076, column: 7, scope: !1710)
!1926 = !DILocation(line: 1077, column: 5, scope: !1731)
!1927 = !DILocation(line: 0, scope: !1731)
!1928 = !DILocation(line: 1079, column: 5, scope: !1735)
!1929 = !DILocation(line: 0, scope: !1735)
!1930 = !DILocation(line: 1088, column: 34, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !706, line: 1088, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1735, file: !706, line: 1088, column: 5)
!1933 = !DILocation(line: 1088, column: 45, scope: !1931)
!1934 = !DILocation(line: 1088, column: 39, scope: !1931)
!1935 = !DILocation(line: 1088, column: 16, scope: !1931)
!1936 = !DILocation(line: 1088, column: 5, scope: !1932)
!1937 = !DILocation(line: 1088, column: 55, scope: !1931)
!1938 = distinct !{!1938, !1936, !1939, !983, !984}
!1939 = !DILocation(line: 1109, column: 5, scope: !1932)
!1940 = !DILocation(line: 1090, column: 32, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1931, file: !706, line: 1089, column: 5)
!1942 = !DILocation(line: 1090, column: 12, scope: !1941)
!1943 = !DILocation(line: 1090, column: 7, scope: !1941)
!1944 = !DILocation(line: 1090, column: 21, scope: !1941)
!1945 = !{!870, !870, i64 0}
!1946 = !DILocation(line: 1091, column: 11, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !706, line: 1091, column: 11)
!1948 = !{!871, !871, i64 0}
!1949 = !DILocation(line: 1091, column: 13, scope: !1947)
!1950 = !DILocation(line: 1091, column: 11, scope: !1941)
!1951 = !DILocation(line: 1093, column: 18, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !706, line: 1092, column: 9)
!1953 = !DILocation(line: 1097, column: 11, scope: !1952)
!1954 = !DILocation(line: 1099, column: 27, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1941, file: !706, line: 1099, column: 11)
!1956 = !DILocation(line: 1099, column: 32, scope: !1955)
!1957 = !DILocation(line: 1099, column: 58, scope: !1955)
!1958 = !DILocation(line: 1099, column: 51, scope: !1955)
!1959 = !DILocation(line: 1099, column: 11, scope: !1941)
!1960 = !DILocation(line: 1103, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1955, file: !706, line: 1100, column: 9)
!1962 = !DILocation(line: 1101, column: 18, scope: !1961)
!1963 = !DILocation(line: 1106, column: 11, scope: !1961)
!1964 = !DILocation(line: 1110, column: 20, scope: !1735)
!1965 = !DILocation(line: 1112, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1735, file: !706, line: 1112, column: 9)
!1967 = !DILocation(line: 1112, column: 11, scope: !1966)
!1968 = !DILocation(line: 1112, column: 9, scope: !1735)
!1969 = !DILocation(line: 1114, column: 16, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !706, line: 1113, column: 7)
!1971 = !DILocation(line: 1118, column: 8, scope: !1970)
!1972 = !DILocation(line: 1120, column: 3, scope: !1710)
!1973 = !DILocation(line: 1121, column: 14, scope: !1710)
!1974 = !DILocation(line: 1122, column: 3, scope: !1710)
!1975 = !DILocation(line: 1123, column: 1, scope: !1710)
!1976 = !DISubprogram(name: "NewXMLTree", scope: !716, file: !716, line: 54, type: !1977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!714, !605, !804}
!1979 = !DISubprogram(name: "GetXMLTreeChild", scope: !716, file: !716, line: 49, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!714, !714, !605}
!1982 = !DISubprogram(name: "GetXMLTreeAttribute", scope: !716, file: !716, line: 36, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!605, !714, !605}
!1985 = !DISubprogram(name: "LocaleCompare", scope: !721, file: !721, line: 66, type: !1986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!639, !605, !605}
!1988 = !DISubprogram(name: "GetNextXMLTreeTag", scope: !716, file: !716, line: 48, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!714, !714}
!1991 = !DISubprogram(name: "DestroyXMLTree", scope: !716, file: !716, line: 47, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1992 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!488, !804, !605, !605, !802, !1995, !605, !605, null}
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!1996 = !DISubprogram(name: "AcquireMagickMemory", scope: !1707, file: !1707, line: 40, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!527, !802}
!1999 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !804}
!2002 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!531, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!2006 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2007 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!804, !804}
!2010 = !DISubprogram(name: "MagickCoreTerminus", scope: !2011, file: !2011, line: 147, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2011 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null}
!2014 = !DISubprogram(name: "ConstantString", scope: !721, file: !721, line: 45, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!531, !605}
!2017 = !DISubprogram(name: "GetXMLTreeContent", scope: !716, file: !716, line: 37, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!605, !714}
!2020 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1707, file: !1707, line: 42, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!527, !802, !802}
!2023 = distinct !DISubprogram(name: "GetThresholdMap", scope: !706, file: !706, line: 1151, type: !2024, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!702, !605, !804}
!2026 = !{!2027, !2028, !2029, !2030, !2035}
!2027 = !DILocalVariable(name: "map_id", arg: 1, scope: !2023, file: !706, line: 1151, type: !605)
!2028 = !DILocalVariable(name: "exception", arg: 2, scope: !2023, file: !706, line: 1152, type: !804)
!2029 = !DILocalVariable(name: "option", scope: !2023, file: !706, line: 1155, type: !718)
!2030 = !DILocalVariable(name: "options", scope: !2023, file: !706, line: 1158, type: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !2033, line: 34, baseType: !2034)
!2033 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !2033, line: 33, flags: DIFlagFwdDecl)
!2035 = !DILocalVariable(name: "map", scope: !2023, file: !706, line: 1161, type: !702)
!2036 = !DILocation(line: 0, scope: !2023)
!2037 = !DILocation(line: 1163, column: 7, scope: !2023)
!2038 = !DILocation(line: 1164, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2023, file: !706, line: 1164, column: 7)
!2040 = !DILocation(line: 1164, column: 7, scope: !2023)
!2041 = !DILocation(line: 1166, column: 11, scope: !2023)
!2042 = !DILocation(line: 1167, column: 31, scope: !2023)
!2043 = !DILocation(line: 1168, column: 17, scope: !2023)
!2044 = !DILocation(line: 1168, column: 3, scope: !2023)
!2045 = !DILocation(line: 1170, column: 44, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2023, file: !706, line: 1169, column: 3)
!2047 = !DILocation(line: 1171, column: 7, scope: !2046)
!2048 = !DILocation(line: 1170, column: 9, scope: !2046)
!2049 = !DILocation(line: 1172, column: 13, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !706, line: 1172, column: 9)
!2051 = !DILocation(line: 1172, column: 9, scope: !2046)
!2052 = !DILocation(line: 1174, column: 33, scope: !2046)
!2053 = distinct !{!2053, !2044, !2054, !983, !984}
!2054 = !DILocation(line: 1175, column: 3, scope: !2023)
!2055 = !DILocation(line: 1176, column: 11, scope: !2023)
!2056 = !DILocation(line: 1177, column: 3, scope: !2023)
!2057 = !DILocation(line: 1178, column: 1, scope: !2023)
!2058 = !DISubprogram(name: "GetConfigureOptions", scope: !2059, file: !2059, line: 60, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2059 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2031, !605, !804}
!2062 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !2033, file: !2033, line: 69, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!527, !2031}
!2065 = !DISubprogram(name: "GetStringInfoDatum", scope: !721, file: !721, line: 97, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!661, !718}
!2068 = !DISubprogram(name: "GetStringInfoPath", scope: !721, file: !721, line: 58, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!605, !718}
!2071 = !DISubprogram(name: "DestroyConfigureOptions", scope: !2059, file: !2059, line: 58, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!2031, !2031}
!2074 = distinct !DISubprogram(name: "ListThresholdMapFile", scope: !706, file: !706, line: 1210, type: !2075, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!488, !728, !605, !605, !804}
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2078 = !DILocalVariable(name: "file", arg: 1, scope: !2074, file: !706, line: 1210, type: !728)
!2079 = !DILocalVariable(name: "xml", arg: 2, scope: !2074, file: !706, line: 1210, type: !605)
!2080 = !DILocalVariable(name: "filename", arg: 3, scope: !2074, file: !706, line: 1211, type: !605)
!2081 = !DILocalVariable(name: "exception", arg: 4, scope: !2074, file: !706, line: 1211, type: !804)
!2082 = !DILocalVariable(name: "thresholds", scope: !2074, file: !706, line: 1213, type: !714)
!2083 = !DILocalVariable(name: "threshold", scope: !2074, file: !706, line: 1213, type: !714)
!2084 = !DILocalVariable(name: "description", scope: !2074, file: !706, line: 1213, type: !714)
!2085 = !DILocalVariable(name: "map", scope: !2074, file: !706, line: 1214, type: !605)
!2086 = !DILocalVariable(name: "alias", scope: !2074, file: !706, line: 1214, type: !605)
!2087 = !DILocalVariable(name: "content", scope: !2074, file: !706, line: 1214, type: !605)
!2088 = !DILocation(line: 0, scope: !2074)
!2089 = !DILocation(line: 1219, column: 10, scope: !2074)
!2090 = !DILocation(line: 1221, column: 14, scope: !2074)
!2091 = !DILocation(line: 1222, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2074, file: !706, line: 1222, column: 8)
!2093 = !DILocation(line: 1222, column: 8, scope: !2074)
!2094 = !DILocation(line: 1225, column: 10, scope: !2074)
!2095 = !DILocation(line: 1226, column: 10, scope: !2074)
!2096 = !DILocation(line: 1229, column: 20, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2074, file: !706, line: 1229, column: 3)
!2098 = !DILocation(line: 1230, column: 18, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2097, file: !706, line: 1229, column: 3)
!2100 = !DILocation(line: 1229, column: 3, scope: !2097)
!2101 = !DILocation(line: 1233, column: 11, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !706, line: 1232, column: 3)
!2103 = !DILocation(line: 1234, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !706, line: 1234, column: 9)
!2105 = !DILocation(line: 1234, column: 9, scope: !2102)
!2106 = !DILocation(line: 1235, column: 14, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !706, line: 1234, column: 31)
!2108 = !DILocation(line: 1238, column: 7, scope: !2107)
!2109 = !DILocation(line: 1240, column: 13, scope: !2102)
!2110 = !DILocation(line: 1242, column: 17, scope: !2102)
!2111 = !DILocation(line: 1243, column: 22, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2102, file: !706, line: 1243, column: 10)
!2113 = !DILocation(line: 1243, column: 10, scope: !2102)
!2114 = !DILocation(line: 1244, column: 14, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !706, line: 1243, column: 48)
!2116 = !DILocation(line: 1247, column: 7, scope: !2115)
!2117 = !DILocation(line: 1249, column: 13, scope: !2102)
!2118 = !DILocation(line: 1250, column: 18, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2102, file: !706, line: 1250, column: 10)
!2120 = !DILocation(line: 1250, column: 10, scope: !2102)
!2121 = !DILocation(line: 1251, column: 14, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !706, line: 1250, column: 37)
!2123 = !DILocation(line: 1254, column: 7, scope: !2122)
!2124 = !DILocation(line: 1256, column: 57, scope: !2102)
!2125 = !DILocation(line: 1256, column: 12, scope: !2102)
!2126 = !DILocation(line: 1231, column: 20, scope: !2099)
!2127 = distinct !{!2127, !2100, !2128, !983, !984}
!2128 = !DILocation(line: 1258, column: 3, scope: !2097)
!2129 = !DILocation(line: 1261, column: 1, scope: !2074)
!2130 = !DISubprogram(name: "FormatLocaleFile", scope: !2131, file: !2131, line: 67, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!2131 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!536, !728, !1843, null}
!2134 = distinct !DISubprogram(name: "ListThresholdMaps", scope: !706, file: !706, line: 1288, type: !2135, scopeLine: 1290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!488, !728, !804}
!2137 = !{!2138, !2139, !2140, !2141, !2142}
!2138 = !DILocalVariable(name: "file", arg: 1, scope: !2134, file: !706, line: 1288, type: !728)
!2139 = !DILocalVariable(name: "exception", arg: 2, scope: !2134, file: !706, line: 1289, type: !804)
!2140 = !DILocalVariable(name: "option", scope: !2134, file: !706, line: 1292, type: !718)
!2141 = !DILocalVariable(name: "options", scope: !2134, file: !706, line: 1295, type: !2031)
!2142 = !DILocalVariable(name: "status", scope: !2134, file: !706, line: 1298, type: !1365)
!2143 = !DILocation(line: 0, scope: !2134)
!2144 = !DILocation(line: 1301, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2134, file: !706, line: 1301, column: 8)
!2146 = !DILocation(line: 1301, column: 8, scope: !2134)
!2147 = !DILocation(line: 1303, column: 11, scope: !2134)
!2148 = !DILocation(line: 1304, column: 10, scope: !2134)
!2149 = !DILocation(line: 1306, column: 31, scope: !2134)
!2150 = !DILocation(line: 1307, column: 17, scope: !2134)
!2151 = !DILocation(line: 1307, column: 3, scope: !2134)
!2152 = !DILocation(line: 1309, column: 51, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2134, file: !706, line: 1308, column: 3)
!2154 = !DILocation(line: 1309, column: 12, scope: !2153)
!2155 = !DILocation(line: 1310, column: 54, scope: !2153)
!2156 = !DILocation(line: 1311, column: 7, scope: !2153)
!2157 = !DILocation(line: 1310, column: 13, scope: !2153)
!2158 = !DILocation(line: 1312, column: 33, scope: !2153)
!2159 = distinct !{!2159, !2151, !2160, !983, !984}
!2160 = !DILocation(line: 1313, column: 3, scope: !2134)
!2161 = !DILocation(line: 1314, column: 11, scope: !2134)
!2162 = !DILocation(line: 1315, column: 3, scope: !2134)
!2163 = distinct !DISubprogram(name: "OrderedDitherImage", scope: !706, file: !706, line: 1352, type: !1578, scopeLine: 1353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2164)
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "image", arg: 1, scope: !2163, file: !706, line: 1352, type: !472)
!2166 = !DILocalVariable(name: "status", scope: !2163, file: !706, line: 1355, type: !488)
!2167 = !DILocation(line: 0, scope: !2163)
!2168 = !DILocation(line: 1357, column: 66, scope: !2163)
!2169 = !DILocalVariable(name: "image", arg: 1, scope: !2170, file: !706, line: 1361, type: !472)
!2170 = distinct !DISubprogram(name: "OrderedDitherImageChannel", scope: !706, file: !706, line: 1361, type: !2171, scopeLine: 1363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!488, !472, !1187, !804}
!2173 = !{!2169, !2174, !2175, !2176}
!2174 = !DILocalVariable(name: "channel", arg: 2, scope: !2170, file: !706, line: 1362, type: !1187)
!2175 = !DILocalVariable(name: "exception", arg: 3, scope: !2170, file: !706, line: 1362, type: !804)
!2176 = !DILocalVariable(name: "status", scope: !2170, file: !706, line: 1365, type: !488)
!2177 = !DILocation(line: 0, scope: !2170, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 1357, column: 10, scope: !2163)
!2179 = !DILocation(line: 1370, column: 10, scope: !2170, inlinedAt: !2178)
!2180 = !DILocation(line: 1358, column: 3, scope: !2163)
!2181 = !DILocation(line: 0, scope: !2170)
!2182 = !DILocation(line: 1370, column: 10, scope: !2170)
!2183 = !DILocation(line: 1371, column: 3, scope: !2170)
!2184 = distinct !DISubprogram(name: "OrderedPosterizeImageChannel", scope: !706, file: !706, line: 1437, type: !1344, scopeLine: 1439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2200, !2201, !2202, !2203, !2204, !2206, !2207, !2209, !2211, !2215, !2216, !2217, !2221, !2222, !2223}
!2186 = !DILocalVariable(name: "image", arg: 1, scope: !2184, file: !706, line: 1437, type: !472)
!2187 = !DILocalVariable(name: "channel", arg: 2, scope: !2184, file: !706, line: 1438, type: !1187)
!2188 = !DILocalVariable(name: "threshold_map", arg: 3, scope: !2184, file: !706, line: 1438, type: !605)
!2189 = !DILocalVariable(name: "exception", arg: 4, scope: !2184, file: !706, line: 1438, type: !804)
!2190 = !DILocalVariable(name: "image_view", scope: !2184, file: !706, line: 1443, type: !812)
!2191 = !DILocalVariable(name: "levels", scope: !2184, file: !706, line: 1446, type: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "LongPixelPacket", file: !326, line: 102, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LongPixelPacket", file: !326, line: 94, size: 160, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !2193, file: !326, line: 97, baseType: !5, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !2193, file: !326, line: 98, baseType: !5, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !2193, file: !326, line: 99, baseType: !5, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !2193, file: !326, line: 100, baseType: !5, size: 32, offset: 96)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2193, file: !326, line: 101, baseType: !5, size: 32, offset: 128)
!2200 = !DILocalVariable(name: "status", scope: !2184, file: !706, line: 1449, type: !488)
!2201 = !DILocalVariable(name: "progress", scope: !2184, file: !706, line: 1452, type: !608)
!2202 = !DILocalVariable(name: "y", scope: !2184, file: !706, line: 1455, type: !536)
!2203 = !DILocalVariable(name: "map", scope: !2184, file: !706, line: 1458, type: !702)
!2204 = !DILocalVariable(name: "token", scope: !2205, file: !706, line: 1470, type: !625)
!2205 = distinct !DILexicalBlock(scope: !2184, file: !706, line: 1468, column: 3)
!2206 = !DILocalVariable(name: "p", scope: !2205, file: !706, line: 1473, type: !605)
!2207 = !DILocalVariable(name: "p", scope: !2208, file: !706, line: 1500, type: !531)
!2208 = distinct !DILexicalBlock(scope: !2184, file: !706, line: 1499, column: 3)
!2209 = !DILocalVariable(name: "d", scope: !2210, file: !706, line: 1551, type: !536)
!2210 = distinct !DILexicalBlock(scope: !2184, file: !706, line: 1549, column: 3)
!2211 = !DILocalVariable(name: "indexes", scope: !2212, file: !706, line: 1578, type: !848)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !706, line: 1576, column: 5)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !706, line: 1575, column: 5)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !706, line: 1575, column: 5)
!2215 = !DILocalVariable(name: "x", scope: !2212, file: !706, line: 1581, type: !536)
!2216 = !DILocalVariable(name: "q", scope: !2212, file: !706, line: 1584, type: !850)
!2217 = !DILocalVariable(name: "threshold", scope: !2218, file: !706, line: 1598, type: !536)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !706, line: 1596, column: 7)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !706, line: 1595, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !706, line: 1595, column: 7)
!2221 = !DILocalVariable(name: "t", scope: !2218, file: !706, line: 1599, type: !536)
!2222 = !DILocalVariable(name: "l", scope: !2218, file: !706, line: 1600, type: !536)
!2223 = !DILocalVariable(name: "proceed", scope: !2224, file: !706, line: 1661, type: !488)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !706, line: 1659, column: 9)
!2225 = distinct !DILexicalBlock(scope: !2212, file: !706, line: 1658, column: 11)
!2226 = !DILocation(line: 0, scope: !2184)
!2227 = !DILocation(line: 1462, column: 14, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2184, file: !706, line: 1462, column: 7)
!2229 = !DILocation(line: 1462, column: 20, scope: !2228)
!2230 = !DILocation(line: 1462, column: 7, scope: !2184)
!2231 = !DILocation(line: 1463, column: 68, scope: !2228)
!2232 = !DILocation(line: 1463, column: 12, scope: !2228)
!2233 = !DILocation(line: 1463, column: 5, scope: !2228)
!2234 = !DILocation(line: 1466, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2184, file: !706, line: 1466, column: 7)
!2236 = !DILocation(line: 1466, column: 7, scope: !2184)
!2237 = !DILocation(line: 1469, column: 5, scope: !2205)
!2238 = !DILocation(line: 1470, column: 7, scope: !2205)
!2239 = !DILocation(line: 0, scope: !2205)
!2240 = !DILocation(line: 1476, column: 5, scope: !2205)
!2241 = !DILocation(line: 1476, column: 14, scope: !2205)
!2242 = !{!868, !868, i64 0}
!2243 = !DILocation(line: 1476, column: 50, scope: !2205)
!2244 = !DILocation(line: 1476, column: 56, scope: !2205)
!2245 = !DILocation(line: 1478, column: 8, scope: !2205)
!2246 = distinct !{!2246, !2240, !2245, !983, !984}
!2247 = !DILocation(line: 1480, column: 14, scope: !2205)
!2248 = !DILocation(line: 1480, column: 50, scope: !2205)
!2249 = !DILocation(line: 1480, column: 56, scope: !2205)
!2250 = !DILocation(line: 1482, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !706, line: 1482, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2205, file: !706, line: 1481, column: 35)
!2253 = !DILocation(line: 1482, column: 29, scope: !2251)
!2254 = !DILocation(line: 1482, column: 11, scope: !2252)
!2255 = !DILocation(line: 1484, column: 7, scope: !2252)
!2256 = !DILocation(line: 1484, column: 30, scope: !2252)
!2257 = !DILocation(line: 1485, column: 8, scope: !2252)
!2258 = distinct !{!2258, !2259, !2260, !983, !984}
!2259 = !DILocation(line: 1480, column: 5, scope: !2205)
!2260 = !DILocation(line: 1486, column: 5, scope: !2205)
!2261 = !DILocation(line: 1487, column: 12, scope: !2205)
!2262 = !DILocation(line: 1487, column: 5, scope: !2205)
!2263 = !DILocation(line: 1487, column: 28, scope: !2205)
!2264 = !DILocation(line: 1488, column: 11, scope: !2205)
!2265 = !DILocation(line: 1489, column: 14, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2205, file: !706, line: 1489, column: 10)
!2267 = !DILocation(line: 1489, column: 10, scope: !2205)
!2268 = !DILocation(line: 1490, column: 14, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !706, line: 1489, column: 41)
!2270 = !DILocation(line: 1494, column: 3, scope: !2184)
!2271 = !DILocation(line: 1500, column: 5, scope: !2208)
!2272 = !DILocation(line: 1502, column: 9, scope: !2208)
!2273 = !DILocation(line: 0, scope: !2208)
!2274 = !DILocation(line: 1502, column: 7, scope: !2208)
!2275 = !DILocation(line: 1503, column: 12, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2208, file: !706, line: 1503, column: 10)
!2277 = !DILocation(line: 1503, column: 29, scope: !2276)
!2278 = !DILocation(line: 1503, column: 32, scope: !2276)
!2279 = !DILocation(line: 1503, column: 10, scope: !2208)
!2280 = !DILocation(line: 1504, column: 37, scope: !2276)
!2281 = !DILocation(line: 1504, column: 22, scope: !2276)
!2282 = !DILocation(line: 1504, column: 7, scope: !2276)
!2283 = !DILocation(line: 0, scope: !2276)
!2284 = !DILocation(line: 1508, column: 32, scope: !2208)
!2285 = !DILocation(line: 1508, column: 50, scope: !2208)
!2286 = !DILocation(line: 1508, column: 22, scope: !2208)
!2287 = !DILocation(line: 1509, column: 32, scope: !2208)
!2288 = !DILocation(line: 1509, column: 50, scope: !2208)
!2289 = !DILocation(line: 1509, column: 22, scope: !2208)
!2290 = !DILocation(line: 1510, column: 32, scope: !2208)
!2291 = !DILocation(line: 1510, column: 50, scope: !2208)
!2292 = !DILocation(line: 1510, column: 22, scope: !2208)
!2293 = !DILocation(line: 1511, column: 32, scope: !2208)
!2294 = !DILocation(line: 1511, column: 50, scope: !2208)
!2295 = !DILocation(line: 1511, column: 22, scope: !2208)
!2296 = !DILocation(line: 1512, column: 32, scope: !2208)
!2297 = !DILocation(line: 1512, column: 50, scope: !2208)
!2298 = !DILocation(line: 1513, column: 13, scope: !2208)
!2299 = !DILocation(line: 1513, column: 24, scope: !2208)
!2300 = !DILocation(line: 1513, column: 35, scope: !2208)
!2301 = !DILocation(line: 1512, column: 22, scope: !2208)
!2302 = !DILocation(line: 1516, column: 10, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2208, file: !706, line: 1516, column: 10)
!2304 = !DILocation(line: 1516, column: 12, scope: !2303)
!2305 = !DILocation(line: 1516, column: 29, scope: !2303)
!2306 = !DILocation(line: 1516, column: 32, scope: !2303)
!2307 = !DILocation(line: 1516, column: 35, scope: !2303)
!2308 = !DILocation(line: 1516, column: 10, scope: !2208)
!2309 = !DILocation(line: 1517, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !706, line: 1516, column: 44)
!2311 = !DILocation(line: 1518, column: 8, scope: !2310)
!2312 = !DILocation(line: 1519, column: 11, scope: !2310)
!2313 = !DILocation(line: 1520, column: 37, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !706, line: 1519, column: 11)
!2315 = !DILocation(line: 1520, column: 22, scope: !2314)
!2316 = !DILocation(line: 1520, column: 67, scope: !2314)
!2317 = !DILocation(line: 1520, column: 66, scope: !2314)
!2318 = !DILocation(line: 1520, column: 69, scope: !2314)
!2319 = !DILocation(line: 1520, column: 76, scope: !2314)
!2320 = !DILocation(line: 1520, column: 80, scope: !2314)
!2321 = !DILocation(line: 1521, column: 11, scope: !2310)
!2322 = !DILocation(line: 1522, column: 39, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2310, file: !706, line: 1521, column: 11)
!2324 = !DILocation(line: 1522, column: 24, scope: !2323)
!2325 = !DILocation(line: 1522, column: 67, scope: !2323)
!2326 = !DILocation(line: 1522, column: 66, scope: !2323)
!2327 = !DILocation(line: 1522, column: 69, scope: !2323)
!2328 = !DILocation(line: 1522, column: 76, scope: !2323)
!2329 = !DILocation(line: 1522, column: 80, scope: !2323)
!2330 = !DILocation(line: 1523, column: 11, scope: !2310)
!2331 = !DILocation(line: 1524, column: 38, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2310, file: !706, line: 1523, column: 11)
!2333 = !DILocation(line: 1524, column: 23, scope: !2332)
!2334 = !DILocation(line: 1524, column: 67, scope: !2332)
!2335 = !DILocation(line: 1524, column: 66, scope: !2332)
!2336 = !DILocation(line: 1524, column: 69, scope: !2332)
!2337 = !DILocation(line: 1524, column: 76, scope: !2332)
!2338 = !DILocation(line: 1524, column: 80, scope: !2332)
!2339 = !DILocation(line: 1525, column: 41, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2310, file: !706, line: 1525, column: 11)
!2341 = !DILocation(line: 1525, column: 51, scope: !2340)
!2342 = !DILocation(line: 1525, column: 62, scope: !2340)
!2343 = !DILocation(line: 1525, column: 11, scope: !2310)
!2344 = !DILocation(line: 1526, column: 37, scope: !2340)
!2345 = !DILocation(line: 1526, column: 22, scope: !2340)
!2346 = !DILocation(line: 1526, column: 65, scope: !2340)
!2347 = !DILocation(line: 1526, column: 64, scope: !2340)
!2348 = !DILocation(line: 1526, column: 67, scope: !2340)
!2349 = !DILocation(line: 1526, column: 74, scope: !2340)
!2350 = !DILocation(line: 1526, column: 78, scope: !2340)
!2351 = !DILocation(line: 1527, column: 11, scope: !2310)
!2352 = !DILocation(line: 1528, column: 41, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2310, file: !706, line: 1527, column: 11)
!2354 = !DILocation(line: 1528, column: 26, scope: !2353)
!2355 = !DILocation(line: 1528, column: 78, scope: !2353)
!2356 = !DILocation(line: 1530, column: 3, scope: !2184)
!2357 = !DILocation(line: 1554, column: 14, scope: !2210)
!2358 = !DILocation(line: 1554, column: 21, scope: !2210)
!2359 = !DILocation(line: 0, scope: !2210)
!2360 = !DILocation(line: 1557, column: 22, scope: !2210)
!2361 = !DILocation(line: 1558, column: 22, scope: !2210)
!2362 = !DILocation(line: 1559, column: 22, scope: !2210)
!2363 = !DILocation(line: 1560, column: 22, scope: !2210)
!2364 = !DILocation(line: 1561, column: 22, scope: !2210)
!2365 = !DILocation(line: 1563, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2210, file: !706, line: 1563, column: 9)
!2367 = !DILocation(line: 1563, column: 49, scope: !2366)
!2368 = !DILocation(line: 1563, column: 9, scope: !2210)
!2369 = !DILocation(line: 1565, column: 44, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !706, line: 1564, column: 7)
!2371 = !DILocation(line: 1565, column: 9, scope: !2370)
!2372 = !DILocation(line: 1570, column: 16, scope: !2210)
!2373 = !DILocation(line: 1575, column: 36, scope: !2213)
!2374 = !DILocation(line: 1575, column: 17, scope: !2213)
!2375 = !DILocation(line: 1575, column: 5, scope: !2214)
!2376 = !DILocation(line: 1586, column: 18, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2212, file: !706, line: 1586, column: 11)
!2378 = !DILocation(line: 1586, column: 11, scope: !2212)
!2379 = !DILocation(line: 1588, column: 59, scope: !2212)
!2380 = !DILocation(line: 1588, column: 9, scope: !2212)
!2381 = !DILocation(line: 0, scope: !2212)
!2382 = !DILocation(line: 1589, column: 13, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2212, file: !706, line: 1589, column: 11)
!2384 = !DILocation(line: 1589, column: 11, scope: !2212)
!2385 = !DILocation(line: 1594, column: 15, scope: !2212)
!2386 = !DILocation(line: 1595, column: 19, scope: !2219)
!2387 = !DILocation(line: 1595, column: 7, scope: !2220)
!2388 = !DILocation(line: 1606, column: 35, scope: !2218)
!2389 = !DILocation(line: 1606, column: 48, scope: !2218)
!2390 = !DILocation(line: 1606, column: 21, scope: !2218)
!2391 = !DILocation(line: 0, scope: !2218)
!2392 = !DILocation(line: 1619, column: 13, scope: !2218)
!2393 = !DILocation(line: 1620, column: 39, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !706, line: 1619, column: 25)
!2395 = distinct !DILexicalBlock(scope: !2218, file: !706, line: 1619, column: 13)
!2396 = !DILocation(line: 1620, column: 38, scope: !2394)
!2397 = !DILocation(line: 1620, column: 53, scope: !2394)
!2398 = !DILocation(line: 1620, column: 15, scope: !2394)
!2399 = !DILocation(line: 1621, column: 16, scope: !2394)
!2400 = !DILocation(line: 1621, column: 28, scope: !2394)
!2401 = !DILocation(line: 1622, column: 11, scope: !2394)
!2402 = !DILocalVariable(name: "value", arg: 1, scope: !2403, file: !147, line: 87, type: !2406)
!2403 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !2404, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2407)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!500, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!2407 = !{!2402}
!2408 = !DILocation(line: 0, scope: !2403, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 1622, column: 11, scope: !2394)
!2410 = !DILocation(line: 92, column: 13, scope: !2411, inlinedAt: !2409)
!2411 = distinct !DILexicalBlock(scope: !2403, file: !147, line: 92, column: 7)
!2412 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2409)
!2413 = !DILocation(line: 94, column: 13, scope: !2414, inlinedAt: !2409)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !147, line: 94, column: 7)
!2415 = !DILocation(line: 94, column: 7, scope: !2403, inlinedAt: !2409)
!2416 = !DILocation(line: 96, column: 26, scope: !2403, inlinedAt: !2409)
!2417 = !DILocation(line: 96, column: 10, scope: !2403, inlinedAt: !2409)
!2418 = !DILocation(line: 96, column: 3, scope: !2403, inlinedAt: !2409)
!2419 = !DILocation(line: 1624, column: 9, scope: !2394)
!2420 = !DILocation(line: 1625, column: 13, scope: !2218)
!2421 = !DILocation(line: 1626, column: 39, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !706, line: 1625, column: 27)
!2423 = distinct !DILexicalBlock(scope: !2218, file: !706, line: 1625, column: 13)
!2424 = !DILocation(line: 1626, column: 38, scope: !2422)
!2425 = !DILocation(line: 1626, column: 55, scope: !2422)
!2426 = !DILocation(line: 1626, column: 15, scope: !2422)
!2427 = !DILocation(line: 1628, column: 16, scope: !2422)
!2428 = !DILocation(line: 1628, column: 28, scope: !2422)
!2429 = !DILocation(line: 1629, column: 11, scope: !2422)
!2430 = !DILocation(line: 0, scope: !2403, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 1629, column: 11, scope: !2422)
!2432 = !DILocation(line: 92, column: 13, scope: !2411, inlinedAt: !2431)
!2433 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2431)
!2434 = !DILocation(line: 94, column: 13, scope: !2414, inlinedAt: !2431)
!2435 = !DILocation(line: 94, column: 7, scope: !2403, inlinedAt: !2431)
!2436 = !DILocation(line: 96, column: 26, scope: !2403, inlinedAt: !2431)
!2437 = !DILocation(line: 96, column: 10, scope: !2403, inlinedAt: !2431)
!2438 = !DILocation(line: 96, column: 3, scope: !2403, inlinedAt: !2431)
!2439 = !DILocation(line: 1631, column: 9, scope: !2422)
!2440 = !DILocation(line: 1632, column: 13, scope: !2218)
!2441 = !DILocation(line: 1633, column: 39, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !706, line: 1632, column: 26)
!2443 = distinct !DILexicalBlock(scope: !2218, file: !706, line: 1632, column: 13)
!2444 = !DILocation(line: 1633, column: 38, scope: !2442)
!2445 = !DILocation(line: 1633, column: 54, scope: !2442)
!2446 = !DILocation(line: 1633, column: 15, scope: !2442)
!2447 = !DILocation(line: 1635, column: 16, scope: !2442)
!2448 = !DILocation(line: 1635, column: 28, scope: !2442)
!2449 = !DILocation(line: 1636, column: 11, scope: !2442)
!2450 = !DILocation(line: 0, scope: !2403, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 1636, column: 11, scope: !2442)
!2452 = !DILocation(line: 92, column: 13, scope: !2411, inlinedAt: !2451)
!2453 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2451)
!2454 = !DILocation(line: 94, column: 13, scope: !2414, inlinedAt: !2451)
!2455 = !DILocation(line: 94, column: 7, scope: !2403, inlinedAt: !2451)
!2456 = !DILocation(line: 96, column: 26, scope: !2403, inlinedAt: !2451)
!2457 = !DILocation(line: 96, column: 10, scope: !2403, inlinedAt: !2451)
!2458 = !DILocation(line: 96, column: 3, scope: !2403, inlinedAt: !2451)
!2459 = !DILocation(line: 1638, column: 9, scope: !2442)
!2460 = !DILocation(line: 1639, column: 13, scope: !2218)
!2461 = !DILocation(line: 1640, column: 44, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !706, line: 1639, column: 29)
!2463 = distinct !DILexicalBlock(scope: !2218, file: !706, line: 1639, column: 13)
!2464 = !DILocation(line: 1640, column: 30, scope: !2462)
!2465 = !DILocation(line: 1640, column: 63, scope: !2462)
!2466 = !DILocation(line: 1640, column: 15, scope: !2462)
!2467 = !DILocation(line: 1642, column: 16, scope: !2462)
!2468 = !DILocation(line: 1642, column: 28, scope: !2462)
!2469 = !DILocation(line: 1643, column: 11, scope: !2462)
!2470 = !DILocation(line: 0, scope: !2403, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1643, column: 11, scope: !2462)
!2472 = !DILocation(line: 92, column: 13, scope: !2411, inlinedAt: !2471)
!2473 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2471)
!2474 = !DILocation(line: 94, column: 13, scope: !2414, inlinedAt: !2471)
!2475 = !DILocation(line: 94, column: 7, scope: !2403, inlinedAt: !2471)
!2476 = !DILocation(line: 96, column: 26, scope: !2403, inlinedAt: !2471)
!2477 = !DILocation(line: 96, column: 10, scope: !2403, inlinedAt: !2471)
!2478 = !DILocation(line: 96, column: 3, scope: !2403, inlinedAt: !2471)
!2479 = !DILocation(line: 1646, column: 9, scope: !2462)
!2480 = !DILocation(line: 1647, column: 13, scope: !2218)
!2481 = !DILocation(line: 1648, column: 39, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !706, line: 1647, column: 27)
!2483 = distinct !DILexicalBlock(scope: !2218, file: !706, line: 1647, column: 13)
!2484 = !DILocation(line: 1648, column: 38, scope: !2482)
!2485 = !DILocation(line: 1648, column: 63, scope: !2482)
!2486 = !DILocation(line: 1648, column: 15, scope: !2482)
!2487 = !DILocation(line: 1650, column: 16, scope: !2482)
!2488 = !DILocation(line: 1650, column: 28, scope: !2482)
!2489 = !DILocation(line: 1651, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !706, line: 1651, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !706, line: 1651, column: 11)
!2492 = !DILocation(line: 0, scope: !2403, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 1651, column: 11, scope: !2490)
!2494 = !DILocation(line: 92, column: 13, scope: !2411, inlinedAt: !2493)
!2495 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2493)
!2496 = !DILocation(line: 94, column: 13, scope: !2414, inlinedAt: !2493)
!2497 = !DILocation(line: 94, column: 7, scope: !2403, inlinedAt: !2493)
!2498 = !DILocation(line: 96, column: 26, scope: !2403, inlinedAt: !2493)
!2499 = !DILocation(line: 96, column: 10, scope: !2403, inlinedAt: !2493)
!2500 = !DILocation(line: 96, column: 3, scope: !2403, inlinedAt: !2493)
!2501 = !DILocation(line: 1654, column: 10, scope: !2218)
!2502 = !DILocation(line: 1595, column: 48, scope: !2219)
!2503 = distinct !{!2503, !2387, !2504, !983, !984}
!2504 = !DILocation(line: 1655, column: 7, scope: !2220)
!2505 = !DILocation(line: 1656, column: 11, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2212, file: !706, line: 1656, column: 11)
!2507 = !DILocation(line: 1656, column: 62, scope: !2506)
!2508 = !DILocation(line: 1656, column: 11, scope: !2212)
!2509 = !DILocation(line: 1658, column: 18, scope: !2225)
!2510 = !DILocation(line: 1658, column: 35, scope: !2225)
!2511 = !DILocation(line: 1658, column: 11, scope: !2212)
!2512 = !DILocation(line: 1666, column: 65, scope: !2224)
!2513 = !DILocation(line: 1666, column: 75, scope: !2224)
!2514 = !DILocation(line: 0, scope: !1087, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 1666, column: 19, scope: !2224)
!2516 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !2515)
!2517 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !2515)
!2518 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !2515)
!2519 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !2515)
!2520 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !2515)
!2521 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !2515)
!2522 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !2515)
!2523 = !DILocation(line: 0, scope: !2224)
!2524 = !DILocation(line: 1667, column: 23, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2224, file: !706, line: 1667, column: 15)
!2526 = !DILocation(line: 1667, column: 15, scope: !2224)
!2527 = !DILocation(line: 1669, column: 9, scope: !2224)
!2528 = !DILocation(line: 1575, column: 43, scope: !2213)
!2529 = distinct !{!2529, !2375, !2530, !983, !984}
!2530 = !DILocation(line: 1670, column: 5, scope: !2214)
!2531 = !DILocation(line: 1671, column: 16, scope: !2210)
!2532 = !DILocation(line: 0, scope: !1670, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 1673, column: 7, scope: !2184)
!2534 = !DILocation(line: 893, column: 12, scope: !1677, inlinedAt: !2533)
!2535 = !DILocation(line: 893, column: 19, scope: !1677, inlinedAt: !2533)
!2536 = !DILocation(line: 893, column: 7, scope: !1670, inlinedAt: !2533)
!2537 = !DILocation(line: 894, column: 17, scope: !1677, inlinedAt: !2533)
!2538 = !DILocation(line: 894, column: 16, scope: !1677, inlinedAt: !2533)
!2539 = !DILocation(line: 894, column: 5, scope: !1677, inlinedAt: !2533)
!2540 = !DILocation(line: 895, column: 12, scope: !1686, inlinedAt: !2533)
!2541 = !DILocation(line: 895, column: 24, scope: !1686, inlinedAt: !2533)
!2542 = !DILocation(line: 895, column: 7, scope: !1670, inlinedAt: !2533)
!2543 = !DILocation(line: 896, column: 22, scope: !1686, inlinedAt: !2533)
!2544 = !DILocation(line: 896, column: 21, scope: !1686, inlinedAt: !2533)
!2545 = !DILocation(line: 896, column: 5, scope: !1686, inlinedAt: !2533)
!2546 = !DILocation(line: 897, column: 12, scope: !1694, inlinedAt: !2533)
!2547 = !DILocation(line: 897, column: 19, scope: !1694, inlinedAt: !2533)
!2548 = !DILocation(line: 897, column: 7, scope: !1670, inlinedAt: !2533)
!2549 = !DILocation(line: 898, column: 29, scope: !1694, inlinedAt: !2533)
!2550 = !DILocation(line: 898, column: 16, scope: !1694, inlinedAt: !2533)
!2551 = !DILocation(line: 898, column: 5, scope: !1694, inlinedAt: !2533)
!2552 = !DILocation(line: 899, column: 24, scope: !1670, inlinedAt: !2533)
!2553 = !DILocation(line: 1674, column: 3, scope: !2184)
!2554 = !DILocation(line: 1675, column: 1, scope: !2184)
!2555 = distinct !DISubprogram(name: "OrderedPosterizeImage", scope: !706, file: !706, line: 1426, type: !2556, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!488, !472, !605, !804}
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "image", arg: 1, scope: !2555, file: !706, line: 1426, type: !472)
!2560 = !DILocalVariable(name: "threshold_map", arg: 2, scope: !2555, file: !706, line: 1427, type: !605)
!2561 = !DILocalVariable(name: "exception", arg: 3, scope: !2555, file: !706, line: 1427, type: !804)
!2562 = !DILocalVariable(name: "status", scope: !2555, file: !706, line: 1430, type: !488)
!2563 = !DILocation(line: 0, scope: !2555)
!2564 = !DILocation(line: 1432, column: 10, scope: !2555)
!2565 = !DILocation(line: 1434, column: 3, scope: !2555)
!2566 = distinct !DISubprogram(name: "PerceptibleImage", scope: !706, file: !706, line: 1720, type: !1174, scopeLine: 1722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570}
!2568 = !DILocalVariable(name: "image", arg: 1, scope: !2566, file: !706, line: 1720, type: !472)
!2569 = !DILocalVariable(name: "epsilon", arg: 2, scope: !2566, file: !706, line: 1721, type: !1176)
!2570 = !DILocalVariable(name: "status", scope: !2566, file: !706, line: 1724, type: !488)
!2571 = !DILocation(line: 0, scope: !2566)
!2572 = !DILocation(line: 1726, column: 10, scope: !2566)
!2573 = !DILocation(line: 1727, column: 3, scope: !2566)
!2574 = distinct !DISubprogram(name: "PerceptibleImageChannel", scope: !706, file: !706, line: 1730, type: !1185, scopeLine: 1732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2587, !2588, !2592, !2593, !2594}
!2576 = !DILocalVariable(name: "image", arg: 1, scope: !2574, file: !706, line: 1730, type: !472)
!2577 = !DILocalVariable(name: "channel", arg: 2, scope: !2574, file: !706, line: 1731, type: !1187)
!2578 = !DILocalVariable(name: "epsilon", arg: 3, scope: !2574, file: !706, line: 1731, type: !1176)
!2579 = !DILocalVariable(name: "image_view", scope: !2574, file: !706, line: 1736, type: !812)
!2580 = !DILocalVariable(name: "exception", scope: !2574, file: !706, line: 1739, type: !804)
!2581 = !DILocalVariable(name: "status", scope: !2574, file: !706, line: 1742, type: !488)
!2582 = !DILocalVariable(name: "progress", scope: !2574, file: !706, line: 1745, type: !608)
!2583 = !DILocalVariable(name: "y", scope: !2574, file: !706, line: 1748, type: !536)
!2584 = !DILocalVariable(name: "i", scope: !2585, file: !706, line: 1757, type: !536)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !706, line: 1755, column: 5)
!2586 = distinct !DILexicalBlock(scope: !2574, file: !706, line: 1754, column: 7)
!2587 = !DILocalVariable(name: "q", scope: !2585, file: !706, line: 1760, type: !850)
!2588 = !DILocalVariable(name: "indexes", scope: !2589, file: !706, line: 1787, type: !848)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !706, line: 1785, column: 3)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !706, line: 1784, column: 3)
!2591 = distinct !DILexicalBlock(scope: !2574, file: !706, line: 1784, column: 3)
!2592 = !DILocalVariable(name: "x", scope: !2589, file: !706, line: 1790, type: !536)
!2593 = !DILocalVariable(name: "q", scope: !2589, file: !706, line: 1793, type: !850)
!2594 = !DILocalVariable(name: "proceed", scope: !2595, file: !706, line: 1825, type: !488)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !706, line: 1823, column: 7)
!2596 = distinct !DILexicalBlock(scope: !2589, file: !706, line: 1822, column: 9)
!2597 = !DILocation(line: 0, scope: !2574)
!2598 = !DILocation(line: 1752, column: 14, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2574, file: !706, line: 1752, column: 7)
!2600 = !DILocation(line: 1752, column: 20, scope: !2599)
!2601 = !DILocation(line: 1752, column: 7, scope: !2574)
!2602 = !DILocation(line: 1753, column: 68, scope: !2599)
!2603 = !DILocation(line: 1753, column: 12, scope: !2599)
!2604 = !DILocation(line: 1753, column: 5, scope: !2599)
!2605 = !DILocation(line: 1754, column: 14, scope: !2586)
!2606 = !DILocation(line: 1754, column: 28, scope: !2586)
!2607 = !DILocation(line: 1754, column: 7, scope: !2574)
!2608 = !DILocation(line: 0, scope: !2585)
!2609 = !{!867, !870, i64 64}
!2610 = !DILocation(line: 1763, column: 19, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !706, line: 1763, column: 7)
!2612 = distinct !DILexicalBlock(scope: !2585, file: !706, line: 1763, column: 7)
!2613 = !DILocation(line: 1763, column: 7, scope: !2612)
!2614 = !DILocation(line: 1762, column: 16, scope: !2585)
!2615 = !{!867, !871, i64 72}
!2616 = !DILocation(line: 1765, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2611, file: !706, line: 1764, column: 7)
!2618 = !DILocalVariable(name: "quantum", arg: 1, scope: !2619, file: !706, line: 1708, type: !2622)
!2619 = distinct !DISubprogram(name: "PerceptibleThreshold", scope: !706, file: !706, line: 1708, type: !2620, scopeLine: 1710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2623)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!500, !2622, !1176}
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!2623 = !{!2618, !2624, !2625}
!2624 = !DILocalVariable(name: "epsilon", arg: 2, scope: !2619, file: !706, line: 1709, type: !1176)
!2625 = !DILocalVariable(name: "sign", scope: !2619, file: !706, line: 1712, type: !509)
!2626 = !DILocation(line: 0, scope: !2619, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1765, column: 9, scope: !2617)
!2628 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2627)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !706, line: 1715, column: 7)
!2630 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2627)
!2631 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2627)
!2632 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2627)
!2633 = !DILocation(line: 1766, column: 9, scope: !2617)
!2634 = !DILocation(line: 0, scope: !2619, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1766, column: 9, scope: !2617)
!2636 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2635)
!2637 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2635)
!2638 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2635)
!2639 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2635)
!2640 = !DILocation(line: 1767, column: 9, scope: !2617)
!2641 = !DILocation(line: 0, scope: !2619, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 1767, column: 9, scope: !2617)
!2643 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2642)
!2644 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2642)
!2645 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2642)
!2646 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2642)
!2647 = !DILocation(line: 1768, column: 9, scope: !2617)
!2648 = !DILocation(line: 0, scope: !2619, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1768, column: 9, scope: !2617)
!2650 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2649)
!2651 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2649)
!2652 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2649)
!2653 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2649)
!2654 = !DILocation(line: 1769, column: 10, scope: !2617)
!2655 = !DILocation(line: 1763, column: 47, scope: !2611)
!2656 = distinct !{!2656, !2613, !2657, !983, !984}
!2657 = !DILocation(line: 1770, column: 7, scope: !2612)
!2658 = !DILocation(line: 1771, column: 14, scope: !2585)
!2659 = !DILocation(line: 1778, column: 22, scope: !2574)
!2660 = !DILocation(line: 1779, column: 14, scope: !2574)
!2661 = !DILocation(line: 1784, column: 34, scope: !2590)
!2662 = !DILocation(line: 1784, column: 15, scope: !2590)
!2663 = !DILocation(line: 1784, column: 3, scope: !2591)
!2664 = !DILocation(line: 1814, column: 43, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !706, line: 1814, column: 11)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !706, line: 1805, column: 5)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !706, line: 1804, column: 5)
!2668 = distinct !DILexicalBlock(scope: !2589, file: !706, line: 1804, column: 5)
!2669 = !DILocation(line: 1806, column: 11, scope: !2666)
!2670 = !DILocation(line: 1795, column: 16, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2589, file: !706, line: 1795, column: 9)
!2672 = !DILocation(line: 1795, column: 9, scope: !2589)
!2673 = !DILocation(line: 1797, column: 57, scope: !2589)
!2674 = !DILocation(line: 1797, column: 7, scope: !2589)
!2675 = !DILocation(line: 0, scope: !2589)
!2676 = !DILocation(line: 1798, column: 11, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2589, file: !706, line: 1798, column: 9)
!2678 = !DILocation(line: 1798, column: 9, scope: !2589)
!2679 = !DILocation(line: 1803, column: 13, scope: !2589)
!2680 = !DILocation(line: 1804, column: 17, scope: !2667)
!2681 = !DILocation(line: 1804, column: 5, scope: !2668)
!2682 = !DILocation(line: 1820, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2589, file: !706, line: 1820, column: 9)
!2684 = !DILocation(line: 1820, column: 60, scope: !2683)
!2685 = !DILocation(line: 1820, column: 9, scope: !2589)
!2686 = !DILocation(line: 1822, column: 16, scope: !2596)
!2687 = !DILocation(line: 1822, column: 33, scope: !2596)
!2688 = !DILocation(line: 1822, column: 9, scope: !2589)
!2689 = !DILocation(line: 1830, column: 68, scope: !2595)
!2690 = !DILocation(line: 1830, column: 78, scope: !2595)
!2691 = !DILocation(line: 0, scope: !1087, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1830, column: 17, scope: !2595)
!2693 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !2692)
!2694 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !2692)
!2695 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !2692)
!2696 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !2692)
!2697 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !2692)
!2698 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !2692)
!2699 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !2692)
!2700 = !DILocation(line: 0, scope: !2595)
!2701 = !DILocation(line: 1831, column: 21, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2595, file: !706, line: 1831, column: 13)
!2703 = !DILocation(line: 1831, column: 13, scope: !2595)
!2704 = !DILocation(line: 1833, column: 7, scope: !2595)
!2705 = !DILocation(line: 1784, column: 41, scope: !2590)
!2706 = distinct !{!2706, !2663, !2707, !983, !984}
!2707 = !DILocation(line: 1834, column: 3, scope: !2591)
!2708 = !DILocation(line: 1808, column: 11, scope: !2666)
!2709 = !DILocation(line: 1809, column: 9, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2666, file: !706, line: 1808, column: 11)
!2711 = !DILocation(line: 0, scope: !2619, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1809, column: 9, scope: !2710)
!2713 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2712)
!2714 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2712)
!2715 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2712)
!2716 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2712)
!2717 = !DILocation(line: 1810, column: 11, scope: !2666)
!2718 = !DILocation(line: 1811, column: 9, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2666, file: !706, line: 1810, column: 11)
!2720 = !DILocation(line: 0, scope: !2619, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1811, column: 9, scope: !2719)
!2722 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2721)
!2723 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2721)
!2724 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2721)
!2725 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2721)
!2726 = !DILocation(line: 1812, column: 11, scope: !2666)
!2727 = !DILocation(line: 1813, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2666, file: !706, line: 1812, column: 11)
!2729 = !DILocation(line: 0, scope: !2619, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1813, column: 9, scope: !2728)
!2731 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2730)
!2732 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2730)
!2733 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2730)
!2734 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2730)
!2735 = !DILocation(line: 1818, column: 8, scope: !2666)
!2736 = !DILocation(line: 1804, column: 46, scope: !2667)
!2737 = distinct !{!2737, !2681, !2738, !983, !984}
!2738 = !DILocation(line: 1819, column: 5, scope: !2668)
!2739 = !DILocation(line: 1807, column: 9, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2666, file: !706, line: 1806, column: 11)
!2741 = !DILocation(line: 0, scope: !2619, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1807, column: 9, scope: !2740)
!2743 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2742)
!2744 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2742)
!2745 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2742)
!2746 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2742)
!2747 = !DILocation(line: 1814, column: 11, scope: !2666)
!2748 = !DILocation(line: 1816, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !706, line: 1816, column: 9)
!2750 = distinct !DILexicalBlock(scope: !2665, file: !706, line: 1816, column: 9)
!2751 = !DILocation(line: 1816, column: 9, scope: !2750)
!2752 = !DILocation(line: 0, scope: !2619, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1816, column: 9, scope: !2749)
!2754 = !DILocation(line: 1715, column: 13, scope: !2629, inlinedAt: !2753)
!2755 = !DILocation(line: 1715, column: 22, scope: !2629, inlinedAt: !2753)
!2756 = !DILocation(line: 1715, column: 7, scope: !2619, inlinedAt: !2753)
!2757 = !DILocation(line: 1717, column: 3, scope: !2619, inlinedAt: !2753)
!2758 = !DILocation(line: 1776, column: 9, scope: !2574)
!2759 = !DILocation(line: 1835, column: 14, scope: !2574)
!2760 = !DILocation(line: 1836, column: 3, scope: !2574)
!2761 = !DILocation(line: 1837, column: 1, scope: !2574)
!2762 = distinct !DISubprogram(name: "RandomThresholdImage", scope: !706, file: !706, line: 1876, type: !2556, scopeLine: 1878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2763)
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DILocalVariable(name: "image", arg: 1, scope: !2762, file: !706, line: 1876, type: !472)
!2765 = !DILocalVariable(name: "thresholds", arg: 2, scope: !2762, file: !706, line: 1877, type: !605)
!2766 = !DILocalVariable(name: "exception", arg: 3, scope: !2762, file: !706, line: 1877, type: !804)
!2767 = !DILocalVariable(name: "status", scope: !2762, file: !706, line: 1880, type: !488)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 1882, column: 10, scope: !2762)
!2770 = !DILocation(line: 1884, column: 3, scope: !2762)
!2771 = distinct !DISubprogram(name: "RandomThresholdImageChannel", scope: !706, file: !706, line: 1887, type: !1344, scopeLine: 1889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2787, !2788, !2794, !2795, !2796, !2797, !2798, !2802, !2803, !2806, !2810, !2811, !2812, !2813}
!2773 = !DILocalVariable(name: "image", arg: 1, scope: !2771, file: !706, line: 1887, type: !472)
!2774 = !DILocalVariable(name: "channel", arg: 2, scope: !2771, file: !706, line: 1888, type: !1187)
!2775 = !DILocalVariable(name: "thresholds", arg: 3, scope: !2771, file: !706, line: 1888, type: !605)
!2776 = !DILocalVariable(name: "exception", arg: 4, scope: !2771, file: !706, line: 1888, type: !804)
!2777 = !DILocalVariable(name: "image_view", scope: !2771, file: !706, line: 1893, type: !812)
!2778 = !DILocalVariable(name: "geometry_info", scope: !2771, file: !706, line: 1896, type: !1353)
!2779 = !DILocalVariable(name: "flags", scope: !2771, file: !706, line: 1899, type: !1365)
!2780 = !DILocalVariable(name: "status", scope: !2771, file: !706, line: 1902, type: !488)
!2781 = !DILocalVariable(name: "progress", scope: !2771, file: !706, line: 1905, type: !608)
!2782 = !DILocalVariable(name: "threshold", scope: !2771, file: !706, line: 1908, type: !821)
!2783 = !DILocalVariable(name: "min_threshold", scope: !2771, file: !706, line: 1911, type: !693)
!2784 = !DILocalVariable(name: "max_threshold", scope: !2771, file: !706, line: 1912, type: !693)
!2785 = !DILocalVariable(name: "random_info", scope: !2771, file: !706, line: 1915, type: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !782)
!2787 = !DILocalVariable(name: "y", scope: !2771, file: !706, line: 1918, type: !536)
!2788 = !DILocalVariable(name: "id", scope: !2789, file: !706, line: 1978, type: !2005)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !706, line: 1976, column: 7)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !706, line: 1975, column: 7)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !706, line: 1975, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !706, line: 1962, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 1961, column: 7)
!2794 = !DILocalVariable(name: "sync", scope: !2789, file: !706, line: 1981, type: !488)
!2795 = !DILocalVariable(name: "indexes", scope: !2789, file: !706, line: 1984, type: !848)
!2796 = !DILocalVariable(name: "x", scope: !2789, file: !706, line: 1987, type: !536)
!2797 = !DILocalVariable(name: "q", scope: !2789, file: !706, line: 1990, type: !850)
!2798 = !DILocalVariable(name: "index", scope: !2799, file: !706, line: 2005, type: !699)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !706, line: 2003, column: 9)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !706, line: 2002, column: 9)
!2801 = distinct !DILexicalBlock(scope: !2789, file: !706, line: 2002, column: 9)
!2802 = !DILocalVariable(name: "intensity", scope: !2799, file: !706, line: 2008, type: !693)
!2803 = !DILocalVariable(name: "proceed", scope: !2804, file: !706, line: 2029, type: !488)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !706, line: 2027, column: 11)
!2805 = distinct !DILexicalBlock(scope: !2789, file: !706, line: 2026, column: 13)
!2806 = !DILocalVariable(name: "id", scope: !2807, file: !706, line: 2061, type: !2005)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !706, line: 2059, column: 3)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !706, line: 2058, column: 3)
!2809 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 2058, column: 3)
!2810 = !DILocalVariable(name: "indexes", scope: !2807, file: !706, line: 2064, type: !848)
!2811 = !DILocalVariable(name: "q", scope: !2807, file: !706, line: 2067, type: !850)
!2812 = !DILocalVariable(name: "x", scope: !2807, file: !706, line: 2070, type: !536)
!2813 = !DILocalVariable(name: "proceed", scope: !2814, file: !706, line: 2162, type: !488)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !706, line: 2160, column: 7)
!2815 = distinct !DILexicalBlock(scope: !2807, file: !706, line: 2159, column: 9)
!2816 = !DILocation(line: 0, scope: !2771)
!2817 = !DILocation(line: 1895, column: 3, scope: !2771)
!2818 = !DILocation(line: 1896, column: 5, scope: !2771)
!2819 = !DILocation(line: 1907, column: 3, scope: !2771)
!2820 = !DILocation(line: 1908, column: 5, scope: !2771)
!2821 = !DILocation(line: 1927, column: 14, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 1927, column: 7)
!2823 = !DILocation(line: 1927, column: 20, scope: !2822)
!2824 = !DILocation(line: 1927, column: 7, scope: !2771)
!2825 = !DILocation(line: 1928, column: 68, scope: !2822)
!2826 = !DILocation(line: 1928, column: 12, scope: !2822)
!2827 = !DILocation(line: 1928, column: 5, scope: !2822)
!2828 = !DILocation(line: 1931, column: 18, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 1931, column: 7)
!2830 = !DILocation(line: 1931, column: 7, scope: !2771)
!2831 = !DILocation(line: 1933, column: 3, scope: !2771)
!2832 = !DILocation(line: 1936, column: 9, scope: !2771)
!2833 = !DILocation(line: 1937, column: 31, scope: !2771)
!2834 = !DILocation(line: 1937, column: 17, scope: !2771)
!2835 = !DILocation(line: 1938, column: 31, scope: !2771)
!2836 = !DILocation(line: 1938, column: 17, scope: !2771)
!2837 = !DILocation(line: 1939, column: 14, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 1939, column: 7)
!2839 = !DILocation(line: 1939, column: 28, scope: !2838)
!2840 = !DILocation(line: 1939, column: 7, scope: !2771)
!2841 = !DILocation(line: 1941, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 1941, column: 7)
!2843 = !DILocation(line: 1941, column: 30, scope: !2842)
!2844 = !DILocation(line: 1941, column: 7, scope: !2771)
!2845 = !DILocation(line: 1943, column: 20, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !706, line: 1942, column: 5)
!2847 = !DILocation(line: 1944, column: 20, scope: !2846)
!2848 = !DILocation(line: 1945, column: 5, scope: !2846)
!2849 = !DILocation(line: 1947, column: 25, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2842, file: !706, line: 1947, column: 9)
!2851 = !DILocation(line: 1947, column: 43, scope: !2850)
!2852 = !DILocation(line: 1953, column: 16, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !706, line: 1949, column: 7)
!2854 = !DILocation(line: 1954, column: 9, scope: !2853)
!2855 = !DILocation(line: 1961, column: 15, scope: !2793)
!2856 = !DILocation(line: 1961, column: 7, scope: !2771)
!2857 = !DILocation(line: 1963, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2792, file: !706, line: 1963, column: 11)
!2859 = !DILocation(line: 1963, column: 41, scope: !2858)
!2860 = !DILocation(line: 1963, column: 11, scope: !2792)
!2861 = !DILocation(line: 1964, column: 9, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !706, line: 1964, column: 9)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !706, line: 1964, column: 9)
!2864 = !DILocation(line: 1966, column: 19, scope: !2792)
!2865 = !DILocation(line: 1970, column: 18, scope: !2792)
!2866 = !DILocation(line: 1975, column: 38, scope: !2790)
!2867 = !DILocation(line: 1975, column: 19, scope: !2790)
!2868 = !DILocation(line: 1975, column: 7, scope: !2791)
!2869 = !DILocation(line: 0, scope: !2789)
!2870 = !DILocation(line: 1992, column: 20, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2789, file: !706, line: 1992, column: 13)
!2872 = !DILocation(line: 1992, column: 13, scope: !2789)
!2873 = !DILocation(line: 1994, column: 61, scope: !2789)
!2874 = !DILocation(line: 1994, column: 11, scope: !2789)
!2875 = !DILocation(line: 1996, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2789, file: !706, line: 1996, column: 13)
!2877 = !DILocation(line: 1996, column: 13, scope: !2789)
!2878 = !DILocation(line: 2001, column: 17, scope: !2789)
!2879 = !DILocation(line: 2002, column: 40, scope: !2800)
!2880 = !DILocation(line: 2002, column: 21, scope: !2800)
!2881 = !DILocation(line: 2002, column: 9, scope: !2801)
!2882 = !DILocation(line: 2019, column: 11, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2799, file: !706, line: 2019, column: 11)
!2884 = !DILocation(line: 2010, column: 21, scope: !2799)
!2885 = !DILocation(line: 0, scope: !2799)
!2886 = !DILocation(line: 2011, column: 25, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2799, file: !706, line: 2011, column: 15)
!2888 = !DILocation(line: 2011, column: 15, scope: !2799)
!2889 = !DILocation(line: 2013, column: 30, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !706, line: 2013, column: 20)
!2891 = !DILocation(line: 2013, column: 20, scope: !2887)
!2892 = !DILocation(line: 2017, column: 36, scope: !2890)
!2893 = !DILocation(line: 2017, column: 15, scope: !2890)
!2894 = !DILocation(line: 2016, column: 58, scope: !2890)
!2895 = !DILocation(line: 2016, column: 29, scope: !2890)
!2896 = !DILocation(line: 0, scope: !2887)
!2897 = !DILocation(line: 2018, column: 42, scope: !2799)
!2898 = !DILocation(line: 2020, column: 11, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2799, file: !706, line: 2020, column: 11)
!2900 = !DILocation(line: 2021, column: 12, scope: !2799)
!2901 = !DILocation(line: 2002, column: 50, scope: !2800)
!2902 = distinct !{!2902, !2881, !2903, !983, !984}
!2903 = !DILocation(line: 2022, column: 9, scope: !2801)
!2904 = !DILocation(line: 2018, column: 17, scope: !2799)
!2905 = !DILocation(line: 2019, column: 11, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2883, file: !706, line: 2019, column: 11)
!2907 = !DILocation(line: 2023, column: 14, scope: !2789)
!2908 = !DILocation(line: 2024, column: 18, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2789, file: !706, line: 2024, column: 13)
!2910 = !DILocation(line: 2024, column: 13, scope: !2789)
!2911 = !DILocation(line: 2026, column: 20, scope: !2805)
!2912 = !DILocation(line: 2026, column: 37, scope: !2805)
!2913 = !DILocation(line: 2026, column: 13, scope: !2789)
!2914 = !DILocation(line: 2034, column: 70, scope: !2804)
!2915 = !DILocation(line: 2035, column: 22, scope: !2804)
!2916 = !DILocation(line: 0, scope: !1087, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 2034, column: 21, scope: !2804)
!2918 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !2917)
!2919 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !2917)
!2920 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !2917)
!2921 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !2917)
!2922 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !2917)
!2923 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !2917)
!2924 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !2917)
!2925 = !DILocation(line: 0, scope: !2804)
!2926 = !DILocation(line: 2036, column: 25, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2804, file: !706, line: 2036, column: 17)
!2928 = !DILocation(line: 2036, column: 17, scope: !2804)
!2929 = !DILocation(line: 2038, column: 11, scope: !2804)
!2930 = !DILocation(line: 1975, column: 45, scope: !2790)
!2931 = distinct !{!2931, !2868, !2932, !983, !984}
!2932 = !DILocation(line: 2039, column: 7, scope: !2791)
!2933 = !DILocation(line: 1959, column: 9, scope: !2771)
!2934 = !DILocation(line: 2040, column: 18, scope: !2792)
!2935 = !DILocalVariable(name: "random_info", arg: 1, scope: !2936, file: !2937, line: 28, type: !782)
!2936 = distinct !DISubprogram(name: "DestroyRandomInfoThreadSet", scope: !2937, file: !2937, line: 27, type: !2938, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2940)
!2937 = !DIFile(filename: "apps/538.imagick_r/src/magick/random-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b1216fbc11a34f42c699be533e017a63")
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!782, !782}
!2940 = !{!2935, !2941}
!2941 = !DILocalVariable(name: "i", scope: !2936, file: !2937, line: 31, type: !536)
!2942 = !DILocation(line: 0, scope: !2936, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 2041, column: 19, scope: !2792)
!2944 = !DILocation(line: 34, column: 27, scope: !2945, inlinedAt: !2943)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !2937, line: 34, column: 3)
!2946 = distinct !DILexicalBlock(scope: !2936, file: !2937, line: 34, column: 3)
!2947 = !DILocation(line: 34, column: 15, scope: !2945, inlinedAt: !2943)
!2948 = !DILocation(line: 34, column: 3, scope: !2946, inlinedAt: !2943)
!2949 = !DILocation(line: 35, column: 9, scope: !2950, inlinedAt: !2943)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !2937, line: 35, column: 9)
!2951 = !DILocation(line: 35, column: 24, scope: !2950, inlinedAt: !2943)
!2952 = !DILocation(line: 35, column: 9, scope: !2945, inlinedAt: !2943)
!2953 = !DILocation(line: 36, column: 22, scope: !2950, inlinedAt: !2943)
!2954 = !DILocation(line: 36, column: 21, scope: !2950, inlinedAt: !2943)
!2955 = !DILocation(line: 36, column: 7, scope: !2950, inlinedAt: !2943)
!2956 = !DILocation(line: 34, column: 68, scope: !2945, inlinedAt: !2943)
!2957 = distinct !{!2957, !2948, !2958, !983, !984}
!2958 = !DILocation(line: 36, column: 54, scope: !2946, inlinedAt: !2943)
!2959 = !DILocation(line: 37, column: 26, scope: !2936, inlinedAt: !2943)
!2960 = !DILocation(line: 2042, column: 7, scope: !2792)
!2961 = !DILocation(line: 2044, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2771, file: !706, line: 2044, column: 7)
!2963 = !DILocation(line: 2044, column: 47, scope: !2962)
!2964 = !DILocation(line: 2044, column: 7, scope: !2771)
!2965 = !DILocation(line: 2046, column: 42, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !706, line: 2045, column: 5)
!2967 = !DILocation(line: 2046, column: 7, scope: !2966)
!2968 = !DILocation(line: 2047, column: 7, scope: !2966)
!2969 = !DILocation(line: 2049, column: 15, scope: !2771)
!2970 = !DILocation(line: 2053, column: 14, scope: !2771)
!2971 = !DILocation(line: 2058, column: 34, scope: !2808)
!2972 = !DILocation(line: 2058, column: 15, scope: !2808)
!2973 = !DILocation(line: 2058, column: 3, scope: !2809)
!2974 = !DILocation(line: 0, scope: !2807)
!2975 = !DILocation(line: 2072, column: 16, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2807, file: !706, line: 2072, column: 9)
!2977 = !DILocation(line: 2072, column: 9, scope: !2807)
!2978 = !DILocation(line: 2074, column: 57, scope: !2807)
!2979 = !DILocation(line: 2074, column: 7, scope: !2807)
!2980 = !DILocation(line: 2075, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2807, file: !706, line: 2075, column: 9)
!2982 = !DILocation(line: 2075, column: 9, scope: !2807)
!2983 = !DILocation(line: 2080, column: 13, scope: !2807)
!2984 = !DILocation(line: 2081, column: 36, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !706, line: 2081, column: 5)
!2986 = distinct !DILexicalBlock(scope: !2807, file: !706, line: 2081, column: 5)
!2987 = !DILocation(line: 2081, column: 17, scope: !2985)
!2988 = !DILocation(line: 2081, column: 5, scope: !2986)
!2989 = !DILocation(line: 2083, column: 11, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !706, line: 2082, column: 5)
!2991 = !DILocation(line: 2085, column: 32, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !706, line: 2085, column: 15)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !706, line: 2084, column: 9)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2083, column: 11)
!2995 = !DILocation(line: 2085, column: 15, scope: !2992)
!2996 = !DILocation(line: 2085, column: 47, scope: !2992)
!2997 = !DILocation(line: 2085, column: 15, scope: !2993)
!2998 = !DILocation(line: 2088, column: 49, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2992, file: !706, line: 2088, column: 17)
!3000 = !DILocation(line: 2088, column: 17, scope: !2992)
!3001 = !DILocation(line: 2092, column: 38, scope: !2999)
!3002 = !DILocation(line: 2092, column: 17, scope: !2999)
!3003 = !DILocation(line: 2091, column: 59, scope: !2999)
!3004 = !DILocation(line: 2091, column: 29, scope: !2999)
!3005 = !DILocation(line: 0, scope: !2992)
!3006 = !DILocation(line: 2094, column: 11, scope: !2990)
!3007 = !DILocation(line: 2096, column: 32, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !706, line: 2096, column: 15)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !706, line: 2095, column: 9)
!3010 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2094, column: 11)
!3011 = !DILocation(line: 2096, column: 15, scope: !3008)
!3012 = !DILocation(line: 2096, column: 49, scope: !3008)
!3013 = !DILocation(line: 2096, column: 15, scope: !3009)
!3014 = !DILocation(line: 2099, column: 51, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3008, file: !706, line: 2099, column: 17)
!3016 = !DILocation(line: 2099, column: 17, scope: !3008)
!3017 = !DILocation(line: 2103, column: 38, scope: !3015)
!3018 = !DILocation(line: 2103, column: 17, scope: !3015)
!3019 = !DILocation(line: 2102, column: 61, scope: !3015)
!3020 = !DILocation(line: 2102, column: 31, scope: !3015)
!3021 = !DILocation(line: 0, scope: !3008)
!3022 = !DILocation(line: 2105, column: 11, scope: !2990)
!3023 = !DILocation(line: 2107, column: 32, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !706, line: 2107, column: 15)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !706, line: 2106, column: 9)
!3026 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2105, column: 11)
!3027 = !DILocation(line: 2107, column: 15, scope: !3024)
!3028 = !DILocation(line: 2107, column: 48, scope: !3024)
!3029 = !DILocation(line: 2107, column: 15, scope: !3025)
!3030 = !DILocation(line: 2110, column: 50, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3024, file: !706, line: 2110, column: 17)
!3032 = !DILocation(line: 2110, column: 17, scope: !3024)
!3033 = !DILocation(line: 2114, column: 38, scope: !3031)
!3034 = !DILocation(line: 2114, column: 17, scope: !3031)
!3035 = !DILocation(line: 2113, column: 60, scope: !3031)
!3036 = !DILocation(line: 2113, column: 30, scope: !3031)
!3037 = !DILocation(line: 0, scope: !3024)
!3038 = !DILocation(line: 2116, column: 11, scope: !2990)
!3039 = !DILocation(line: 2118, column: 32, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !706, line: 2118, column: 15)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !706, line: 2117, column: 9)
!3042 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2116, column: 11)
!3043 = !DILocation(line: 2118, column: 15, scope: !3040)
!3044 = !DILocation(line: 2118, column: 51, scope: !3040)
!3045 = !DILocation(line: 2118, column: 15, scope: !3041)
!3046 = !DILocation(line: 2121, column: 53, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3040, file: !706, line: 2121, column: 17)
!3048 = !DILocation(line: 2121, column: 17, scope: !3040)
!3049 = !DILocation(line: 2125, column: 38, scope: !3047)
!3050 = !DILocation(line: 2125, column: 17, scope: !3047)
!3051 = !DILocation(line: 2124, column: 63, scope: !3047)
!3052 = !DILocation(line: 2124, column: 33, scope: !3047)
!3053 = !DILocation(line: 0, scope: !3040)
!3054 = !DILocation(line: 2127, column: 43, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2127, column: 11)
!3056 = !DILocation(line: 2128, column: 19, scope: !3055)
!3057 = !DILocation(line: 2128, column: 30, scope: !3055)
!3058 = !DILocation(line: 2127, column: 11, scope: !2990)
!3059 = !DILocation(line: 2130, column: 32, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !706, line: 2130, column: 15)
!3061 = distinct !DILexicalBlock(scope: !3055, file: !706, line: 2129, column: 9)
!3062 = !DILocation(line: 2130, column: 15, scope: !3061)
!3063 = !DILocation(line: 2130, column: 15, scope: !3060)
!3064 = !DILocation(line: 2130, column: 57, scope: !3060)
!3065 = !DILocation(line: 2133, column: 34, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3060, file: !706, line: 2133, column: 17)
!3067 = !DILocation(line: 2133, column: 17, scope: !3066)
!3068 = !DILocation(line: 2133, column: 59, scope: !3066)
!3069 = !DILocation(line: 2133, column: 17, scope: !3060)
!3070 = !DILocation(line: 2137, column: 38, scope: !3066)
!3071 = !DILocation(line: 2137, column: 17, scope: !3066)
!3072 = !DILocation(line: 2136, column: 61, scope: !3066)
!3073 = !DILocation(line: 2136, column: 31, scope: !3066)
!3074 = !DILocation(line: 0, scope: !3060)
!3075 = !DILocation(line: 2139, column: 11, scope: !2990)
!3076 = !DILocation(line: 2140, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2139, column: 11)
!3078 = !DILocation(line: 2142, column: 11, scope: !2990)
!3079 = !DILocation(line: 2143, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2142, column: 11)
!3081 = !DILocation(line: 2145, column: 11, scope: !2990)
!3082 = !DILocation(line: 2146, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2145, column: 11)
!3084 = !DILocation(line: 2148, column: 11, scope: !2990)
!3085 = !DILocation(line: 2149, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2148, column: 11)
!3087 = !DILocation(line: 2151, column: 43, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !2990, file: !706, line: 2151, column: 11)
!3089 = !DILocation(line: 2152, column: 19, scope: !3088)
!3090 = !DILocation(line: 2152, column: 30, scope: !3088)
!3091 = !DILocation(line: 2151, column: 11, scope: !2990)
!3092 = !DILocation(line: 2153, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !706, line: 2153, column: 9)
!3094 = distinct !DILexicalBlock(scope: !3088, file: !706, line: 2153, column: 9)
!3095 = !DILocation(line: 2155, column: 8, scope: !2990)
!3096 = !DILocation(line: 2081, column: 46, scope: !2985)
!3097 = distinct !{!3097, !2988, !3098, !983, !984}
!3098 = !DILocation(line: 2156, column: 5, scope: !2986)
!3099 = !DILocation(line: 2157, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2807, file: !706, line: 2157, column: 9)
!3101 = !DILocation(line: 2157, column: 60, scope: !3100)
!3102 = !DILocation(line: 2157, column: 9, scope: !2807)
!3103 = !DILocation(line: 2159, column: 16, scope: !2815)
!3104 = !DILocation(line: 2159, column: 33, scope: !2815)
!3105 = !DILocation(line: 2159, column: 9, scope: !2807)
!3106 = !DILocation(line: 2167, column: 66, scope: !2814)
!3107 = !DILocation(line: 2168, column: 18, scope: !2814)
!3108 = !DILocation(line: 0, scope: !1087, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 2167, column: 17, scope: !2814)
!3110 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !3109)
!3111 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !3109)
!3112 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !3109)
!3113 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !3109)
!3114 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !3109)
!3115 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !3109)
!3116 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !3109)
!3117 = !DILocation(line: 0, scope: !2814)
!3118 = !DILocation(line: 2169, column: 21, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2814, file: !706, line: 2169, column: 13)
!3120 = !DILocation(line: 2169, column: 13, scope: !2814)
!3121 = !DILocation(line: 2171, column: 7, scope: !2814)
!3122 = !DILocation(line: 2058, column: 41, scope: !2808)
!3123 = distinct !{!3123, !2973, !3124, !983, !984}
!3124 = !DILocation(line: 2172, column: 3, scope: !2809)
!3125 = !DILocation(line: 2173, column: 14, scope: !2771)
!3126 = !DILocation(line: 0, scope: !2936, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 2174, column: 15, scope: !2771)
!3128 = !DILocation(line: 34, column: 27, scope: !2945, inlinedAt: !3127)
!3129 = !DILocation(line: 34, column: 15, scope: !2945, inlinedAt: !3127)
!3130 = !DILocation(line: 34, column: 3, scope: !2946, inlinedAt: !3127)
!3131 = !DILocation(line: 35, column: 9, scope: !2950, inlinedAt: !3127)
!3132 = !DILocation(line: 35, column: 24, scope: !2950, inlinedAt: !3127)
!3133 = !DILocation(line: 35, column: 9, scope: !2945, inlinedAt: !3127)
!3134 = !DILocation(line: 36, column: 22, scope: !2950, inlinedAt: !3127)
!3135 = !DILocation(line: 36, column: 21, scope: !2950, inlinedAt: !3127)
!3136 = !DILocation(line: 36, column: 7, scope: !2950, inlinedAt: !3127)
!3137 = !DILocation(line: 34, column: 68, scope: !2945, inlinedAt: !3127)
!3138 = distinct !{!3138, !3130, !3139, !983, !984}
!3139 = !DILocation(line: 36, column: 54, scope: !2946, inlinedAt: !3127)
!3140 = !DILocation(line: 37, column: 26, scope: !2936, inlinedAt: !3127)
!3141 = !DILocation(line: 2175, column: 3, scope: !2771)
!3142 = !DILocation(line: 2176, column: 1, scope: !2771)
!3143 = !DISubprogram(name: "AcquireImageColormap", scope: !3144, file: !3144, line: 26, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3144 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bbb8514638ae332109008c420bdb541")
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!488, !472, !802}
!3147 = distinct !DISubprogram(name: "AcquireRandomInfoThreadSet", scope: !2937, file: !2937, line: 40, type: !3148, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!782}
!3150 = !{!3151, !3152, !3153}
!3151 = !DILocalVariable(name: "i", scope: !3147, file: !2937, line: 43, type: !536)
!3152 = !DILocalVariable(name: "random_info", scope: !3147, file: !2937, line: 46, type: !782)
!3153 = !DILocalVariable(name: "number_threads", scope: !3147, file: !2937, line: 49, type: !483)
!3154 = !DILocation(line: 51, column: 27, scope: !3147)
!3155 = !DILocation(line: 0, scope: !3147)
!3156 = !DILocation(line: 52, column: 31, scope: !3147)
!3157 = !DILocation(line: 54, column: 19, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3147, file: !2937, line: 54, column: 7)
!3159 = !DILocation(line: 54, column: 7, scope: !3147)
!3160 = !DILocation(line: 56, column: 56, scope: !3147)
!3161 = !DILocation(line: 56, column: 10, scope: !3147)
!3162 = !DILocation(line: 57, column: 15, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !2937, line: 57, column: 3)
!3164 = distinct !DILexicalBlock(scope: !3147, file: !2937, line: 57, column: 3)
!3165 = !DILocation(line: 57, column: 3, scope: !3164)
!3166 = !DILocation(line: 57, column: 44, scope: !3163)
!3167 = distinct !{!3167, !3165, !3168, !983, !984}
!3168 = !DILocation(line: 62, column: 3, scope: !3164)
!3169 = !DILocation(line: 59, column: 20, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3163, file: !2937, line: 58, column: 3)
!3171 = !DILocation(line: 59, column: 5, scope: !3170)
!3172 = !DILocation(line: 59, column: 19, scope: !3170)
!3173 = !DILocation(line: 60, column: 24, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !2937, line: 60, column: 9)
!3175 = !DILocation(line: 60, column: 9, scope: !3170)
!3176 = !DILocation(line: 0, scope: !2936, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 61, column: 14, scope: !3174)
!3178 = !DILocation(line: 34, column: 27, scope: !2945, inlinedAt: !3177)
!3179 = !DILocation(line: 34, column: 15, scope: !2945, inlinedAt: !3177)
!3180 = !DILocation(line: 34, column: 3, scope: !2946, inlinedAt: !3177)
!3181 = !DILocation(line: 35, column: 9, scope: !2950, inlinedAt: !3177)
!3182 = !DILocation(line: 35, column: 24, scope: !2950, inlinedAt: !3177)
!3183 = !DILocation(line: 35, column: 9, scope: !2945, inlinedAt: !3177)
!3184 = !DILocation(line: 36, column: 22, scope: !2950, inlinedAt: !3177)
!3185 = !DILocation(line: 36, column: 21, scope: !2950, inlinedAt: !3177)
!3186 = !DILocation(line: 36, column: 7, scope: !2950, inlinedAt: !3177)
!3187 = !DILocation(line: 34, column: 68, scope: !2945, inlinedAt: !3177)
!3188 = distinct !{!3188, !3180, !3189, !983, !984}
!3189 = !DILocation(line: 36, column: 54, scope: !2946, inlinedAt: !3177)
!3190 = !DILocation(line: 37, column: 26, scope: !2936, inlinedAt: !3177)
!3191 = !DILocation(line: 61, column: 7, scope: !3174)
!3192 = !DILocation(line: 64, column: 1, scope: !3147)
!3193 = !DISubprogram(name: "GetPseudoRandomValue", scope: !785, file: !785, line: 38, type: !3194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!509, !783}
!3196 = distinct !DISubprogram(name: "WhiteThresholdImage", scope: !706, file: !706, line: 2211, type: !1333, scopeLine: 2213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3197)
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "image", arg: 1, scope: !3196, file: !706, line: 2211, type: !472)
!3199 = !DILocalVariable(name: "threshold", arg: 2, scope: !3196, file: !706, line: 2212, type: !605)
!3200 = !DILocalVariable(name: "status", scope: !3196, file: !706, line: 2215, type: !488)
!3201 = !DILocation(line: 0, scope: !3196)
!3202 = !DILocation(line: 2218, column: 13, scope: !3196)
!3203 = !DILocation(line: 2217, column: 10, scope: !3196)
!3204 = !DILocation(line: 2219, column: 3, scope: !3196)
!3205 = distinct !DISubprogram(name: "WhiteThresholdImageChannel", scope: !706, file: !706, line: 2222, type: !1344, scopeLine: 2224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3222, !3223, !3224}
!3207 = !DILocalVariable(name: "image", arg: 1, scope: !3205, file: !706, line: 2222, type: !472)
!3208 = !DILocalVariable(name: "channel", arg: 2, scope: !3205, file: !706, line: 2223, type: !1187)
!3209 = !DILocalVariable(name: "thresholds", arg: 3, scope: !3205, file: !706, line: 2223, type: !605)
!3210 = !DILocalVariable(name: "exception", arg: 4, scope: !3205, file: !706, line: 2223, type: !804)
!3211 = !DILocalVariable(name: "image_view", scope: !3205, file: !706, line: 2228, type: !812)
!3212 = !DILocalVariable(name: "geometry_info", scope: !3205, file: !706, line: 2231, type: !1353)
!3213 = !DILocalVariable(name: "status", scope: !3205, file: !706, line: 2234, type: !488)
!3214 = !DILocalVariable(name: "progress", scope: !3205, file: !706, line: 2237, type: !608)
!3215 = !DILocalVariable(name: "threshold", scope: !3205, file: !706, line: 2240, type: !821)
!3216 = !DILocalVariable(name: "flags", scope: !3205, file: !706, line: 2243, type: !1365)
!3217 = !DILocalVariable(name: "y", scope: !3205, file: !706, line: 2246, type: !536)
!3218 = !DILocalVariable(name: "indexes", scope: !3219, file: !706, line: 2295, type: !848)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !706, line: 2293, column: 3)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !706, line: 2292, column: 3)
!3221 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2292, column: 3)
!3222 = !DILocalVariable(name: "x", scope: !3219, file: !706, line: 2298, type: !536)
!3223 = !DILocalVariable(name: "q", scope: !3219, file: !706, line: 2301, type: !850)
!3224 = !DILocalVariable(name: "proceed", scope: !3225, file: !706, line: 2337, type: !488)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !706, line: 2335, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3219, file: !706, line: 2334, column: 9)
!3227 = !DILocation(line: 0, scope: !3205)
!3228 = !DILocation(line: 2230, column: 3, scope: !3205)
!3229 = !DILocation(line: 2231, column: 5, scope: !3205)
!3230 = !DILocation(line: 2239, column: 3, scope: !3205)
!3231 = !DILocation(line: 2240, column: 5, scope: !3205)
!3232 = !DILocation(line: 2250, column: 14, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2250, column: 7)
!3234 = !DILocation(line: 2250, column: 20, scope: !3233)
!3235 = !DILocation(line: 2250, column: 7, scope: !3205)
!3236 = !DILocation(line: 2251, column: 68, scope: !3233)
!3237 = !DILocation(line: 2251, column: 12, scope: !3233)
!3238 = !DILocation(line: 2251, column: 5, scope: !3233)
!3239 = !DILocation(line: 2252, column: 18, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2252, column: 7)
!3241 = !DILocation(line: 2252, column: 7, scope: !3205)
!3242 = !DILocation(line: 2254, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2254, column: 7)
!3244 = !DILocation(line: 2254, column: 47, scope: !3243)
!3245 = !DILocation(line: 2254, column: 7, scope: !3205)
!3246 = !DILocation(line: 2256, column: 9, scope: !3205)
!3247 = !DILocation(line: 2257, column: 3, scope: !3205)
!3248 = !DILocation(line: 2258, column: 31, scope: !3205)
!3249 = !DILocation(line: 2258, column: 17, scope: !3205)
!3250 = !DILocation(line: 2258, column: 13, scope: !3205)
!3251 = !DILocation(line: 2258, column: 16, scope: !3205)
!3252 = !DILocation(line: 2259, column: 33, scope: !3205)
!3253 = !DILocation(line: 2259, column: 19, scope: !3205)
!3254 = !DILocation(line: 2259, column: 13, scope: !3205)
!3255 = !DILocation(line: 2260, column: 14, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2260, column: 7)
!3257 = !DILocation(line: 2260, column: 28, scope: !3256)
!3258 = !DILocation(line: 2260, column: 7, scope: !3205)
!3259 = !DILocation(line: 2262, column: 32, scope: !3205)
!3260 = !DILocation(line: 2262, column: 18, scope: !3205)
!3261 = !DILocation(line: 2262, column: 13, scope: !3205)
!3262 = !DILocation(line: 2263, column: 14, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2263, column: 7)
!3264 = !DILocation(line: 2263, column: 25, scope: !3263)
!3265 = !DILocation(line: 2263, column: 7, scope: !3205)
!3266 = !DILocation(line: 2265, column: 35, scope: !3205)
!3267 = !DILocation(line: 2265, column: 21, scope: !3205)
!3268 = !DILocation(line: 2265, column: 13, scope: !3205)
!3269 = !DILocation(line: 2266, column: 14, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2266, column: 7)
!3271 = !DILocation(line: 2266, column: 26, scope: !3270)
!3272 = !DILocation(line: 2266, column: 7, scope: !3205)
!3273 = !DILocation(line: 2268, column: 33, scope: !3205)
!3274 = !DILocation(line: 2268, column: 19, scope: !3205)
!3275 = !DILocation(line: 2268, column: 13, scope: !3205)
!3276 = !DILocation(line: 2269, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2269, column: 7)
!3278 = !DILocation(line: 2269, column: 26, scope: !3277)
!3279 = !DILocation(line: 2269, column: 7, scope: !3205)
!3280 = !DILocation(line: 2271, column: 14, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2271, column: 7)
!3282 = !DILocation(line: 2271, column: 30, scope: !3281)
!3283 = !DILocation(line: 2271, column: 7, scope: !3205)
!3284 = !DILocation(line: 2273, column: 20, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !706, line: 2272, column: 5)
!3286 = !DILocation(line: 2274, column: 22, scope: !3285)
!3287 = !DILocation(line: 2275, column: 21, scope: !3285)
!3288 = !DILocation(line: 2276, column: 24, scope: !3285)
!3289 = !DILocation(line: 2277, column: 22, scope: !3285)
!3290 = !DILocation(line: 2278, column: 5, scope: !3285)
!3291 = !DILocation(line: 0, scope: !1453, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 2279, column: 8, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3205, file: !706, line: 2279, column: 7)
!3294 = !DILocation(line: 78, column: 15, scope: !1464, inlinedAt: !3292)
!3295 = !DILocation(line: 78, column: 45, scope: !1464, inlinedAt: !3292)
!3296 = !DILocation(line: 81, column: 23, scope: !1468, inlinedAt: !3292)
!3297 = !DILocation(line: 81, column: 8, scope: !1468, inlinedAt: !3292)
!3298 = !DILocation(line: 81, column: 38, scope: !1468, inlinedAt: !3292)
!3299 = !DILocation(line: 81, column: 55, scope: !1468, inlinedAt: !3292)
!3300 = !DILocation(line: 82, column: 25, scope: !1468, inlinedAt: !3292)
!3301 = !DILocation(line: 82, column: 8, scope: !1468, inlinedAt: !3292)
!3302 = !DILocation(line: 82, column: 39, scope: !1468, inlinedAt: !3292)
!3303 = !DILocation(line: 81, column: 7, scope: !1453, inlinedAt: !3292)
!3304 = !DILocation(line: 2280, column: 32, scope: !3293)
!3305 = !DILocation(line: 0, scope: !1222, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 2280, column: 8, scope: !3293)
!3307 = !DILocation(line: 88, column: 38, scope: !1231, inlinedAt: !3306)
!3308 = !DILocation(line: 2281, column: 12, scope: !3293)
!3309 = !DILocation(line: 2281, column: 5, scope: !3293)
!3310 = !DILocation(line: 2287, column: 14, scope: !3205)
!3311 = !DILocation(line: 2292, column: 34, scope: !3220)
!3312 = !DILocation(line: 2292, column: 15, scope: !3220)
!3313 = !DILocation(line: 2292, column: 3, scope: !3221)
!3314 = !DILocation(line: 2303, column: 16, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3219, file: !706, line: 2303, column: 9)
!3316 = !DILocation(line: 2303, column: 9, scope: !3219)
!3317 = !DILocation(line: 2305, column: 57, scope: !3219)
!3318 = !DILocation(line: 2305, column: 7, scope: !3219)
!3319 = !DILocation(line: 0, scope: !3219)
!3320 = !DILocation(line: 2306, column: 11, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3219, file: !706, line: 2306, column: 9)
!3322 = !DILocation(line: 2306, column: 9, scope: !3219)
!3323 = !DILocation(line: 2311, column: 13, scope: !3219)
!3324 = !DILocation(line: 2312, column: 17, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !706, line: 2312, column: 5)
!3326 = distinct !DILexicalBlock(scope: !3219, file: !706, line: 2312, column: 5)
!3327 = !DILocation(line: 2312, column: 5, scope: !3326)
!3328 = !DILocation(line: 2326, column: 43, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !706, line: 2326, column: 11)
!3330 = distinct !DILexicalBlock(scope: !3325, file: !706, line: 2313, column: 5)
!3331 = !DILocation(line: 2314, column: 41, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3330, file: !706, line: 2314, column: 11)
!3333 = !DILocation(line: 2315, column: 29, scope: !3332)
!3334 = !DILocation(line: 2315, column: 12, scope: !3332)
!3335 = !DILocation(line: 2315, column: 44, scope: !3332)
!3336 = !DILocation(line: 2314, column: 11, scope: !3330)
!3337 = !DILocation(line: 2316, column: 9, scope: !3332)
!3338 = !DILocation(line: 2317, column: 43, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3330, file: !706, line: 2317, column: 11)
!3340 = !DILocation(line: 2318, column: 29, scope: !3339)
!3341 = !DILocation(line: 2318, column: 12, scope: !3339)
!3342 = !DILocation(line: 2318, column: 46, scope: !3339)
!3343 = !DILocation(line: 2317, column: 11, scope: !3330)
!3344 = !DILocation(line: 2319, column: 9, scope: !3339)
!3345 = !DILocation(line: 2320, column: 42, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3330, file: !706, line: 2320, column: 11)
!3347 = !DILocation(line: 2321, column: 29, scope: !3346)
!3348 = !DILocation(line: 2321, column: 12, scope: !3346)
!3349 = !DILocation(line: 2321, column: 45, scope: !3346)
!3350 = !DILocation(line: 2320, column: 11, scope: !3330)
!3351 = !DILocation(line: 2322, column: 9, scope: !3346)
!3352 = !DILocation(line: 2323, column: 45, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3330, file: !706, line: 2323, column: 11)
!3354 = !DILocation(line: 2324, column: 29, scope: !3353)
!3355 = !DILocation(line: 2324, column: 12, scope: !3353)
!3356 = !DILocation(line: 2324, column: 48, scope: !3353)
!3357 = !DILocation(line: 2323, column: 11, scope: !3330)
!3358 = !DILocation(line: 2325, column: 9, scope: !3353)
!3359 = !DILocation(line: 2330, column: 8, scope: !3330)
!3360 = !DILocation(line: 2312, column: 46, scope: !3325)
!3361 = distinct !{!3361, !3327, !3362, !983, !984}
!3362 = !DILocation(line: 2331, column: 5, scope: !3326)
!3363 = !DILocation(line: 2327, column: 49, scope: !3329)
!3364 = !DILocation(line: 2328, column: 29, scope: !3329)
!3365 = !DILocation(line: 2328, column: 12, scope: !3329)
!3366 = !DILocation(line: 2328, column: 55, scope: !3329)
!3367 = !DILocation(line: 2326, column: 11, scope: !3330)
!3368 = !DILocation(line: 2329, column: 9, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !706, line: 2329, column: 9)
!3370 = distinct !DILexicalBlock(scope: !3329, file: !706, line: 2329, column: 9)
!3371 = !DILocation(line: 2332, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3219, file: !706, line: 2332, column: 9)
!3373 = !DILocation(line: 2332, column: 60, scope: !3372)
!3374 = !DILocation(line: 2332, column: 9, scope: !3219)
!3375 = !DILocation(line: 2334, column: 16, scope: !3226)
!3376 = !DILocation(line: 2334, column: 33, scope: !3226)
!3377 = !DILocation(line: 2334, column: 9, scope: !3219)
!3378 = !DILocation(line: 2342, column: 66, scope: !3225)
!3379 = !DILocation(line: 2343, column: 18, scope: !3225)
!3380 = !DILocation(line: 0, scope: !1087, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 2342, column: 17, scope: !3225)
!3382 = !DILocation(line: 30, column: 3, scope: !1087, inlinedAt: !3381)
!3383 = !DILocation(line: 31, column: 5, scope: !1087, inlinedAt: !3381)
!3384 = !DILocation(line: 35, column: 10, scope: !1087, inlinedAt: !3381)
!3385 = !DILocation(line: 36, column: 17, scope: !1087, inlinedAt: !3381)
!3386 = !DILocation(line: 36, column: 63, scope: !1087, inlinedAt: !3381)
!3387 = !DILocation(line: 36, column: 10, scope: !1087, inlinedAt: !3381)
!3388 = !DILocation(line: 37, column: 1, scope: !1087, inlinedAt: !3381)
!3389 = !DILocation(line: 0, scope: !3225)
!3390 = !DILocation(line: 2344, column: 21, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3225, file: !706, line: 2344, column: 13)
!3392 = !DILocation(line: 2344, column: 13, scope: !3225)
!3393 = !DILocation(line: 2346, column: 7, scope: !3225)
!3394 = !DILocation(line: 2292, column: 41, scope: !3220)
!3395 = distinct !{!3395, !3313, !3396, !983, !984}
!3396 = !DILocation(line: 2347, column: 3, scope: !3221)
!3397 = !DILocation(line: 2285, column: 9, scope: !3205)
!3398 = !DILocation(line: 2348, column: 14, scope: !3205)
!3399 = !DILocation(line: 2349, column: 3, scope: !3205)
!3400 = !DILocation(line: 2350, column: 1, scope: !3205)
!3401 = !DISubprogram(name: "FormatLocaleString", scope: !2131, file: !2131, line: 71, type: !3402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!536, !3404, !802, !1843, null}
!3404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !531)
!3405 = !DISubprogram(name: "GetMagickResourceLimit", scope: !459, file: !459, line: 53, type: !3406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!611, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !459, line: 36, baseType: !458)
!3410 = !DISubprogram(name: "AcquireAlignedMemory", scope: !1707, file: !1707, line: 38, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3411 = !DISubprogram(name: "ResetMagickMemory", scope: !1707, file: !1707, line: 52, type: !3412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!527, !527, !639, !802}
!3414 = !DISubprogram(name: "AcquireRandomInfo", scope: !785, file: !785, line: 44, type: !3415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!783}
!3417 = !DISubprogram(name: "DestroyRandomInfo", scope: !785, file: !785, line: 45, type: !3418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!783, !783}
!3420 = !DISubprogram(name: "RelinquishAlignedMemory", scope: !1707, file: !1707, line: 50, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1128)
