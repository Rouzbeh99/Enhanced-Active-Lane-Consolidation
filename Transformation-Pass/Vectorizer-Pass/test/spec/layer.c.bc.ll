; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/layer.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/layer.c"
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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/layer.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ZeroTimeAnimation\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Merge/Layers\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ImagesAreNotTheSameSize\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CoalesceImages(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !668 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !674, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %exception, metadata !675, metadata !DIExpression()), !dbg !681
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !682
  %0 = load i32, ptr %debug, align 8, !dbg !682, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !703
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !704

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !705
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 250, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !706
  br label %if.end, !dbg !707

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %image) #7, !dbg !708
  call void @llvm.dbg.value(metadata ptr %call1, metadata !679, metadata !DIExpression()), !dbg !681
  %page = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !709
  %bounds.sroa.0.0.copyload = load i64, ptr %page, align 8, !dbg !709, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.0.0.copyload, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  %bounds.sroa.19.0.page.sroa_idx = getelementptr inbounds i8, ptr %page, i64 8, !dbg !709
  %bounds.sroa.19.0.copyload = load i64, ptr %bounds.sroa.19.0.page.sroa_idx, align 8, !dbg !709, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.19.0.copyload, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !681
  %bounds.sroa.43.0.page.sroa_idx = getelementptr inbounds i8, ptr %page, i64 24, !dbg !709
  %bounds.sroa.43.0.copyload = load i64, ptr %bounds.sroa.43.0.page.sroa_idx, align 8, !dbg !709, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.43.0.copyload, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !681
  %cmp2 = icmp eq i64 %bounds.sroa.0.0.copyload, 0, !dbg !714
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !716

if.then3:                                         ; preds = %if.end
  %bounds.sroa.33.0.page.sroa_idx = getelementptr inbounds i8, ptr %page, i64 16, !dbg !709
  %bounds.sroa.33.0.copyload = load i64, ptr %bounds.sroa.33.0.page.sroa_idx, align 8, !dbg !709, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.33.0.copyload, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !681
  %columns = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !718
  %1 = load i64, ptr %columns, align 8, !dbg !718, !tbaa !720
  call void @llvm.dbg.value(metadata i64 %1, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  %2 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.33.0.copyload, i64 0), !dbg !721
  %spec.select = add i64 %1, %2, !dbg !721
  br label %if.end10, !dbg !721

if.end10:                                         ; preds = %if.then3, %if.end
  %bounds.sroa.0.0 = phi i64 [ %bounds.sroa.0.0.copyload, %if.end ], [ %spec.select, %if.then3 ], !dbg !681
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.0.0, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  %cmp11 = icmp eq i64 %bounds.sroa.19.0.copyload, 0, !dbg !722
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !724

if.then12:                                        ; preds = %if.end10
  %rows = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !725
  %3 = load i64, ptr %rows, align 8, !dbg !725, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %3, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  %4 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.43.0.copyload, i64 0), !dbg !728
  %spec.select247 = add i64 %3, %4, !dbg !728
  br label %if.end20, !dbg !728

if.end20:                                         ; preds = %if.then12, %if.end10
  %bounds.sroa.19.0 = phi i64 [ %bounds.sroa.19.0.copyload, %if.end10 ], [ %spec.select247, %if.then12 ], !dbg !681
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.19.0, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 0, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 0, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !681
  %call25 = tail call ptr @CloneImage(ptr noundef nonnull %call1, i64 noundef %bounds.sroa.0.0, i64 noundef %bounds.sroa.19.0, i32 noundef 1, ptr noundef %exception) #7, !dbg !729
  call void @llvm.dbg.value(metadata ptr %call25, metadata !676, metadata !DIExpression()), !dbg !681
  %cmp26 = icmp eq ptr %call25, null, !dbg !730
  br i1 %cmp26, label %cleanup, label %if.end28, !dbg !732

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call25) #7, !dbg !733
  %matte = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 6, !dbg !734
  %5 = load i32, ptr %matte, align 8, !dbg !734, !tbaa !735
  %matte30 = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 6, !dbg !736
  store i32 %5, ptr %matte30, align 8, !dbg !737, !tbaa !735
  %page31 = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 26, !dbg !738
  store i64 %bounds.sroa.0.0, ptr %page31, align 8, !dbg !739, !tbaa.struct !710
  %bounds.sroa.19.0.page31.sroa_idx = getelementptr inbounds i8, ptr %page31, i64 8, !dbg !739
  store i64 %bounds.sroa.19.0, ptr %bounds.sroa.19.0.page31.sroa_idx, align 8, !dbg !739, !tbaa.struct !712
  %bounds.sroa.33.0.page31.sroa_idx = getelementptr inbounds i8, ptr %page31, i64 16, !dbg !739
  %dispose = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 37, !dbg !740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %bounds.sroa.33.0.page31.sroa_idx, i8 0, i64 16, i1 false), !dbg !739
  store i32 1, ptr %dispose, align 4, !dbg !741, !tbaa !742
  %call32 = tail call ptr @CloneImage(ptr noundef nonnull %call25, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !743
  call void @llvm.dbg.value(metadata ptr %call32, metadata !677, metadata !DIExpression()), !dbg !681
  %x34 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 2, !dbg !744
  %6 = load i64, ptr %x34, align 8, !dbg !744, !tbaa !745
  %y36 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 3, !dbg !746
  %7 = load i64, ptr %y36, align 8, !dbg !746, !tbaa !747
  %call37 = tail call i32 @CompositeImage(ptr noundef nonnull %call25, i32 noundef 13, ptr noundef nonnull %call1, i64 noundef %6, i64 noundef %7) #7, !dbg !748
  %call38 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call1) #7, !dbg !749
  call void @llvm.dbg.value(metadata ptr %call38, metadata !679, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %call32, metadata !677, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %call25, metadata !676, metadata !DIExpression()), !dbg !681
  %cmp39.not258 = icmp eq ptr %call38, null, !dbg !750
  br i1 %cmp39.not258, label %for.end, label %for.body, !dbg !753

for.body:                                         ; preds = %if.end28, %IsBoundsCleared.exit
  %next.0264 = phi ptr [ %call124, %IsBoundsCleared.exit ], [ %call38, %if.end28 ]
  %dispose_image.0263 = phi ptr [ %dispose_image.1, %IsBoundsCleared.exit ], [ %call32, %if.end28 ]
  %coalesce_image.0259 = phi ptr [ %call103, %IsBoundsCleared.exit ], [ %call25, %if.end28 ]
  call void @llvm.dbg.value(metadata ptr %next.0264, metadata !679, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %dispose_image.0263, metadata !677, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %coalesce_image.0259, metadata !676, metadata !DIExpression()), !dbg !681
  %call40 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %next.0264) #7, !dbg !754
  call void @llvm.dbg.value(metadata ptr %call40, metadata !678, metadata !DIExpression()), !dbg !681
  %page41 = getelementptr inbounds %struct._Image, ptr %call40, i64 0, i32 26, !dbg !756
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  %bounds.sroa.33.0.page41.sroa_idx = getelementptr inbounds i8, ptr %page41, i64 16, !dbg !756
  %bounds.sroa.33.0.copyload231 = load i64, ptr %bounds.sroa.33.0.page41.sroa_idx, align 8, !dbg !756, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.33.0.copyload231, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !681
  %bounds.sroa.43.0.page41.sroa_idx = getelementptr inbounds i8, ptr %page41, i64 24, !dbg !756
  %bounds.sroa.43.0.copyload239 = load i64, ptr %bounds.sroa.43.0.page41.sroa_idx, align 8, !dbg !756, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.43.0.copyload239, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !681
  %columns42 = getelementptr inbounds %struct._Image, ptr %call40, i64 0, i32 7, !dbg !757
  %8 = load i64, ptr %columns42, align 8, !dbg !757, !tbaa !720
  call void @llvm.dbg.value(metadata i64 %8, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  %rows44 = getelementptr inbounds %struct._Image, ptr %call40, i64 0, i32 8, !dbg !758
  %9 = load i64, ptr %rows44, align 8, !dbg !758, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %9, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  %10 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.33.0.copyload231, i64 0), !dbg !759
  %11 = tail call i64 @llvm.smin.i64(i64 %bounds.sroa.33.0.copyload231, i64 0), !dbg !759
  %spec.select249 = add i64 %8, %11, !dbg !759
  call void @llvm.dbg.value(metadata i64 %spec.select249, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 %10, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !681
  %add56 = add i64 %spec.select249, %10, !dbg !760
  %columns57 = getelementptr inbounds %struct._Image, ptr %coalesce_image.0259, i64 0, i32 7, !dbg !762
  %12 = load i64, ptr %columns57, align 8, !dbg !762, !tbaa !720
  %cmp58 = icmp sgt i64 %add56, %12, !dbg !763
  %sub = sub i64 %12, %10
  %spec.select252 = select i1 %cmp58, i64 %sub, i64 %spec.select249, !dbg !764
  call void @llvm.dbg.value(metadata i64 %spec.select252, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !681
  %13 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.43.0.copyload239, i64 0), !dbg !765
  %14 = tail call i64 @llvm.smin.i64(i64 %bounds.sroa.43.0.copyload239, i64 0), !dbg !765
  %spec.select251 = add i64 %9, %14, !dbg !765
  call void @llvm.dbg.value(metadata i64 %spec.select251, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  call void @llvm.dbg.value(metadata i64 %13, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !681
  %add74 = add i64 %spec.select251, %13, !dbg !766
  %rows75 = getelementptr inbounds %struct._Image, ptr %coalesce_image.0259, i64 0, i32 8, !dbg !768
  %15 = load i64, ptr %rows75, align 8, !dbg !768, !tbaa !727
  %cmp76 = icmp sgt i64 %add74, %15, !dbg !769
  %sub80 = sub i64 %15, %13
  %spec.select253 = select i1 %cmp76, i64 %sub80, i64 %spec.select251, !dbg !770
  call void @llvm.dbg.value(metadata i64 %spec.select253, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !681
  %call83 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %next.0264) #7, !dbg !771
  %dispose84 = getelementptr inbounds %struct._Image, ptr %call83, i64 0, i32 37, !dbg !773
  %16 = load i32, ptr %dispose84, align 4, !dbg !773, !tbaa !742
  %cmp85.not = icmp eq i32 %16, 3, !dbg !774
  br i1 %cmp85.not, label %if.end93, label %if.then86, !dbg !775

if.then86:                                        ; preds = %for.body
  %call87 = tail call ptr @DestroyImage(ptr noundef %dispose_image.0263) #7, !dbg !776
  call void @llvm.dbg.value(metadata ptr %call87, metadata !677, metadata !DIExpression()), !dbg !681
  %call88 = tail call ptr @CloneImage(ptr noundef nonnull %coalesce_image.0259, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !778
  call void @llvm.dbg.value(metadata ptr %call88, metadata !677, metadata !DIExpression()), !dbg !681
  %cmp89 = icmp eq ptr %call88, null, !dbg !779
  br i1 %cmp89, label %if.then90, label %if.end93, !dbg !781

if.then90:                                        ; preds = %if.then86
  %call91 = tail call ptr @DestroyImageList(ptr noundef nonnull %coalesce_image.0259) #7, !dbg !782
  call void @llvm.dbg.value(metadata ptr %call91, metadata !676, metadata !DIExpression()), !dbg !681
  br label %cleanup, !dbg !784

if.end93:                                         ; preds = %if.then86, %for.body
  %dispose_image.1 = phi ptr [ %call88, %if.then86 ], [ %dispose_image.0263, %for.body ], !dbg !681
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !677, metadata !DIExpression()), !dbg !681
  %previous94 = getelementptr inbounds %struct._Image, ptr %next.0264, i64 0, i32 67, !dbg !785
  %17 = load ptr, ptr %previous94, align 8, !dbg !785, !tbaa !787
  %dispose95 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 37, !dbg !788
  %18 = load i32, ptr %dispose95, align 4, !dbg !788, !tbaa !742
  %cmp96 = icmp eq i32 %18, 2, !dbg !789
  br i1 %cmp96, label %if.end.i, label %if.end98, !dbg !790

if.end.i:                                         ; preds = %if.end93
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !791, metadata !DIExpression()) #7, !dbg !805
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !805
  %matte.i = getelementptr inbounds %struct._Image, ptr %dispose_image.1, i64 0, i32 6, !dbg !807
  %19 = load i32, ptr %matte.i, align 8, !dbg !807, !tbaa !735
  %cmp1.i = icmp eq i32 %19, 0, !dbg !809
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i, !dbg !810

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %dispose_image.1, i32 noundef 6) #7, !dbg !811
  br label %if.end3.i, !dbg !812

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %exception4.i = getelementptr inbounds %struct._Image, ptr %dispose_image.1, i64 0, i32 58, !dbg !813
  call void @llvm.dbg.value(metadata ptr %exception4.i, metadata !797, metadata !DIExpression()) #7, !dbg !805
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !805
  %cmp549.i = icmp sgt i64 %spec.select253, 0, !dbg !814
  br i1 %cmp549.i, label %for.body.i.preheader, label %if.end98, !dbg !815

for.body.i.preheader:                             ; preds = %if.end3.i
  %cmp1546.i = icmp sgt i64 %spec.select252, 0
  br i1 %cmp1546.i, label %for.body.i.us, label %for.body.i, !dbg !816

for.body.i.us:                                    ; preds = %for.body.i.preheader, %for.end.i.loopexit.us
  %y.050.i.us = phi i64 [ %inc23.i.us, %for.end.i.loopexit.us ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression()) #7, !dbg !805
  %add.i.us = add nuw nsw i64 %y.050.i.us, %13, !dbg !818
  %call9.i.us = tail call ptr @GetAuthenticPixels(ptr noundef %dispose_image.1, i64 noundef %10, i64 noundef %add.i.us, i64 noundef %spec.select252, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !819
  call void @llvm.dbg.value(metadata ptr %call9.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !820
  %cmp10.i.us = icmp eq ptr %call9.i.us, null, !dbg !821
  br i1 %cmp10.i.us, label %if.end98, label %for.body16.i.us, !dbg !823

for.body16.i.us:                                  ; preds = %for.body.i.us, %for.body16.i.us
  %q.048.i.us = phi ptr [ %incdec.ptr.i.us, %for.body16.i.us ], [ %call9.i.us, %for.body.i.us ]
  %x6.047.i.us = phi i64 [ %inc.i.us, %for.body16.i.us ], [ 0, %for.body.i.us ]
  call void @llvm.dbg.value(metadata ptr %q.048.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !820
  call void @llvm.dbg.value(metadata i64 %x6.047.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !820
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 0, i32 3, !dbg !824
  store i16 -1, ptr %opacity.i.us, align 2, !dbg !827, !tbaa !828
  %incdec.ptr.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 1, !dbg !829
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !820
  %inc.i.us = add nuw nsw i64 %x6.047.i.us, 1, !dbg !830
  call void @llvm.dbg.value(metadata i64 %inc.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !820
  %exitcond.not.i.us = icmp eq i64 %inc.i.us, %spec.select252, !dbg !831
  br i1 %exitcond.not.i.us, label %for.end.i.loopexit.us, label %for.body16.i.us, !dbg !816, !llvm.loop !832

for.end.i.loopexit.us:                            ; preds = %for.body16.i.us
  %call17.i.us = tail call i32 @SyncAuthenticPixels(ptr noundef %dispose_image.1, ptr noundef nonnull %exception4.i) #7, !dbg !836
  %cmp18.i.us = icmp ne i32 %call17.i.us, 0, !dbg !838
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !805
  %inc23.i.us = add nuw nsw i64 %y.050.i.us, 1
  %cmp5.i.us = icmp slt i64 %inc23.i.us, %spec.select253
  %or.cond.us = select i1 %cmp18.i.us, i1 %cmp5.i.us, i1 false, !dbg !839
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !805
  br i1 %or.cond.us, label %for.body.i.us, label %if.end98, !dbg !839, !llvm.loop !840

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond13.preheader.i
  %y.050.i = phi i64 [ %inc23.i, %for.cond13.preheader.i ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression()) #7, !dbg !805
  %add.i = add nuw nsw i64 %y.050.i, %13, !dbg !818
  %call9.i = tail call ptr @GetAuthenticPixels(ptr noundef %dispose_image.1, i64 noundef %10, i64 noundef %add.i, i64 noundef %spec.select252, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !819
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !820
  %cmp10.i = icmp eq ptr %call9.i, null, !dbg !821
  br i1 %cmp10.i, label %if.end98, label %for.cond13.preheader.i, !dbg !823

for.cond13.preheader.i:                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !820
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !820
  %call17.i = tail call i32 @SyncAuthenticPixels(ptr noundef %dispose_image.1, ptr noundef nonnull %exception4.i) #7, !dbg !836
  %cmp18.i = icmp ne i32 %call17.i, 0, !dbg !838
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !805
  %inc23.i = add nuw nsw i64 %y.050.i, 1
  %cmp5.i = icmp slt i64 %inc23.i, %spec.select253
  %or.cond = select i1 %cmp18.i, i1 %cmp5.i, i1 false, !dbg !839
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !805
  br i1 %or.cond, label %for.body.i, label %if.end98, !dbg !839, !llvm.loop !840

if.end98:                                         ; preds = %for.body.i, %for.cond13.preheader.i, %for.end.i.loopexit.us, %for.body.i.us, %if.end3.i, %if.end93
  %call99 = tail call ptr @CloneImage(ptr noundef %dispose_image.1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !842
  %next100 = getelementptr inbounds %struct._Image, ptr %coalesce_image.0259, i64 0, i32 69, !dbg !843
  store ptr %call99, ptr %next100, align 8, !dbg !844, !tbaa !845
  %previous102 = getelementptr inbounds %struct._Image, ptr %call99, i64 0, i32 67, !dbg !846
  store ptr %coalesce_image.0259, ptr %previous102, align 8, !dbg !847, !tbaa !787
  call void @llvm.dbg.value(metadata ptr %coalesce_image.0259, metadata !678, metadata !DIExpression()), !dbg !681
  %call103 = tail call ptr @GetNextImageInList(ptr noundef %coalesce_image.0259) #7, !dbg !848
  call void @llvm.dbg.value(metadata ptr %call103, metadata !676, metadata !DIExpression()), !dbg !681
  %matte104 = getelementptr inbounds %struct._Image, ptr %next.0264, i64 0, i32 6, !dbg !849
  %20 = load i32, ptr %matte104, align 8, !dbg !849, !tbaa !735
  %cmp105.not = icmp eq i32 %20, 0, !dbg !850
  %cond = select i1 %cmp105.not, i32 13, i32 40, !dbg !851
  %x107 = getelementptr inbounds %struct._Image, ptr %next.0264, i64 0, i32 26, i32 2, !dbg !852
  %21 = load i64, ptr %x107, align 8, !dbg !852, !tbaa !745
  %y109 = getelementptr inbounds %struct._Image, ptr %next.0264, i64 0, i32 26, i32 3, !dbg !853
  %22 = load i64, ptr %y109, align 8, !dbg !853, !tbaa !747
  %call110 = tail call i32 @CompositeImage(ptr noundef %call103, i32 noundef %cond, ptr noundef nonnull %next.0264, i64 noundef %21, i64 noundef %22) #7, !dbg !854
  %call111 = tail call i32 @CloneImageProfiles(ptr noundef %call103, ptr noundef nonnull %next.0264) #7, !dbg !855
  %call112 = tail call i32 @CloneImageProperties(ptr noundef %call103, ptr noundef nonnull %next.0264) #7, !dbg !856
  %call113 = tail call i32 @CloneImageArtifacts(ptr noundef %call103, ptr noundef nonnull %next.0264) #7, !dbg !857
  %page114 = getelementptr inbounds %struct._Image, ptr %call103, i64 0, i32 26, !dbg !858
  %page115 = getelementptr inbounds %struct._Image, ptr %coalesce_image.0259, i64 0, i32 26, !dbg !859
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page114, ptr noundef nonnull align 8 dereferenceable(32) %page115, i64 32, i1 false), !dbg !859, !tbaa.struct !710
  call void @llvm.dbg.value(metadata ptr %coalesce_image.0259, metadata !860, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %call103, metadata !865, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr undef, metadata !866, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %exception, metadata !867, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()) #7, !dbg !872
  %cmp272.i = icmp sgt i64 %spec.select253, 0, !dbg !875
  br i1 %cmp272.i, label %for.body.i205.preheader, label %IsBoundsCleared.exit, !dbg !878

for.body.i205.preheader:                          ; preds = %if.end98
  %cmp1667.i = icmp sgt i64 %spec.select252, 0
  br label %for.body.i205, !dbg !878

for.body.i205:                                    ; preds = %for.body.i205.preheader, %for.inc32.i
  %y.073.i = phi i64 [ %inc33.i, %for.inc32.i ], [ 0, %for.body.i205.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.073.i, metadata !871, metadata !DIExpression()) #7, !dbg !872
  %add.i201 = add nuw nsw i64 %y.073.i, %13, !dbg !879
  %call.i202 = tail call ptr @GetVirtualPixels(ptr noundef %coalesce_image.0259, i64 noundef %10, i64 noundef %add.i201, i64 noundef %spec.select252, i64 noundef 1, ptr noundef %exception) #7, !dbg !881
  call void @llvm.dbg.value(metadata ptr %call.i202, metadata !868, metadata !DIExpression()) #7, !dbg !872
  %call9.i203 = tail call ptr @GetVirtualPixels(ptr noundef %call103, i64 noundef %10, i64 noundef %add.i201, i64 noundef %spec.select252, i64 noundef 1, ptr noundef %exception) #7, !dbg !882
  call void @llvm.dbg.value(metadata ptr %call9.i203, metadata !869, metadata !DIExpression()) #7, !dbg !872
  %cmp10.i204 = icmp eq ptr %call.i202, null, !dbg !883
  %cmp11.i = icmp eq ptr %call9.i203, null
  %or.cond.i = select i1 %cmp10.i204, i1 true, i1 %cmp11.i, !dbg !885
  br i1 %or.cond.i, label %IsBoundsCleared.exit, label %for.cond14.preheader.i, !dbg !885

for.cond14.preheader.i:                           ; preds = %for.body.i205
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %call9.i203, metadata !869, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %call.i202, metadata !868, metadata !DIExpression()) #7, !dbg !872
  br i1 %cmp1667.i, label %for.body17.i, label %for.inc32.i, !dbg !886

for.body17.i:                                     ; preds = %for.cond14.preheader.i, %if.end25.i
  %x.070.i = phi i64 [ %inc.i209, %if.end25.i ], [ 0, %for.cond14.preheader.i ]
  %q.069.i = phi ptr [ %incdec.ptr26.i, %if.end25.i ], [ %call9.i203, %for.cond14.preheader.i ]
  %p.068.i = phi ptr [ %incdec.ptr.i208, %if.end25.i ], [ %call.i202, %for.cond14.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %x.070.i, metadata !870, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %q.069.i, metadata !869, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata ptr %p.068.i, metadata !868, metadata !DIExpression()) #7, !dbg !872
  %opacity.i206 = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i, i64 0, i32 3, !dbg !888
  %23 = load i16, ptr %opacity.i206, align 2, !dbg !888, !tbaa !828
  %cmp18.i207 = icmp sgt i16 %23, -1, !dbg !892
  br i1 %cmp18.i207, label %land.lhs.true.i, label %if.end25.i, !dbg !893

land.lhs.true.i:                                  ; preds = %for.body17.i
  %opacity20.i = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i, i64 0, i32 3, !dbg !894
  %24 = load i16, ptr %opacity20.i, align 2, !dbg !894, !tbaa !828
  %cmp22.i = icmp slt i16 %24, 0, !dbg !895
  br i1 %cmp22.i, label %IsBoundsCleared.exit, label %if.end25.i, !dbg !896

if.end25.i:                                       ; preds = %land.lhs.true.i, %for.body17.i
  %incdec.ptr.i208 = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i, i64 1, !dbg !897
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i208, metadata !868, metadata !DIExpression()) #7, !dbg !872
  %incdec.ptr26.i = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i, i64 1, !dbg !898
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i, metadata !869, metadata !DIExpression()) #7, !dbg !872
  %inc.i209 = add nuw nsw i64 %x.070.i, 1, !dbg !899
  call void @llvm.dbg.value(metadata i64 %inc.i209, metadata !870, metadata !DIExpression()) #7, !dbg !872
  %exitcond.not.i210 = icmp eq i64 %inc.i209, %spec.select252, !dbg !900
  br i1 %exitcond.not.i210, label %for.inc32.i, label %for.body17.i, !dbg !886, !llvm.loop !901

for.inc32.i:                                      ; preds = %if.end25.i, %for.cond14.preheader.i
  %inc33.i = add nuw nsw i64 %y.073.i, 1, !dbg !903
  call void @llvm.dbg.value(metadata i64 %inc33.i, metadata !871, metadata !DIExpression()) #7, !dbg !872
  %cmp2.i = icmp slt i64 %inc33.i, %spec.select253, !dbg !875
  br i1 %cmp2.i, label %for.body.i205, label %IsBoundsCleared.exit, !dbg !878, !llvm.loop !904

IsBoundsCleared.exit:                             ; preds = %for.body.i205, %for.inc32.i, %land.lhs.true.i, %if.end98
  %y.066.i = phi i64 [ 0, %if.end98 ], [ %y.073.i, %land.lhs.true.i ], [ %y.073.i, %for.body.i205 ], [ %inc33.i, %for.inc32.i ]
  %cmp36.i.not = icmp slt i64 %y.066.i, %spec.select253, !dbg !906
  %spec.select275 = select i1 %cmp36.i.not, i32 2, i32 1, !dbg !907
  %25 = getelementptr inbounds %struct._Image, ptr %call103, i64 0, i32 37, !dbg !908
  store i32 %spec.select275, ptr %25, align 4, !dbg !909
  %dispose123 = getelementptr inbounds %struct._Image, ptr %coalesce_image.0259, i64 0, i32 37, !dbg !910
  store i32 %spec.select275, ptr %dispose123, align 4, !dbg !911, !tbaa !742
  %call124 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0264) #7, !dbg !912
  call void @llvm.dbg.value(metadata ptr %call124, metadata !679, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !677, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata ptr %call103, metadata !676, metadata !DIExpression()), !dbg !681
  %cmp39.not = icmp eq ptr %call124, null, !dbg !750
  br i1 %cmp39.not, label %for.end, label %for.body, !dbg !753, !llvm.loop !913

for.end:                                          ; preds = %IsBoundsCleared.exit, %if.end28
  %coalesce_image.0.lcssa = phi ptr [ %call25, %if.end28 ], [ %call103, %IsBoundsCleared.exit ], !dbg !681
  %dispose_image.0.lcssa = phi ptr [ %call32, %if.end28 ], [ %dispose_image.1, %IsBoundsCleared.exit ], !dbg !681
  %call125 = tail call ptr @DestroyImage(ptr noundef %dispose_image.0.lcssa) #7, !dbg !915
  call void @llvm.dbg.value(metadata ptr %call125, metadata !677, metadata !DIExpression()), !dbg !681
  %call126 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %coalesce_image.0.lcssa) #7, !dbg !916
  br label %cleanup, !dbg !917

cleanup:                                          ; preds = %if.end20, %for.end, %if.then90
  %retval.0 = phi ptr [ null, %if.then90 ], [ %call126, %for.end ], [ null, %if.end20 ], !dbg !681
  ret ptr %retval.0, !dbg !918
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !919 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !926 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !930 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !934 i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

declare !dbg !937 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !942 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !943 ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !944 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !947 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare !dbg !948 i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !951 i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !953 i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IsBoundsCleared(ptr noundef %image1, ptr noundef %image2, ptr nocapture noundef readonly %bounds, ptr noundef %exception) unnamed_addr #0 !dbg !861 {
entry:
  call void @llvm.dbg.value(metadata ptr %image1, metadata !860, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %image2, metadata !865, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %bounds, metadata !866, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %exception, metadata !867, metadata !DIExpression()), !dbg !955
  %x1 = getelementptr inbounds %struct._RectangleInfo, ptr %bounds, i64 0, i32 2, !dbg !956
  %0 = load i64, ptr %x1, align 8, !dbg !956, !tbaa !958
  %cmp = icmp slt i64 %0, 0, !dbg !959
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !960

for.cond.preheader:                               ; preds = %entry
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %bounds, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()), !dbg !955
  %1 = load i64, ptr %height, align 8, !dbg !961, !tbaa !962
  %cmp272 = icmp sgt i64 %1, 0, !dbg !963
  br i1 %cmp272, label %for.body.lr.ph, label %for.end34, !dbg !964

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %y4 = getelementptr inbounds %struct._RectangleInfo, ptr %bounds, i64 0, i32 3
  %.pre77 = load i64, ptr %bounds, align 8, !dbg !965, !tbaa !966
  br label %for.body, !dbg !964

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i64 [ %.pre77, %for.body.lr.ph ], [ %8, %for.inc32.for.body_crit_edge ], !dbg !965
  %3 = phi i64 [ %0, %for.body.lr.ph ], [ %.pre, %for.inc32.for.body_crit_edge ], !dbg !967
  %y.073 = phi i64 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc32.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %y.073, metadata !871, metadata !DIExpression()), !dbg !955
  %4 = load i64, ptr %y4, align 8, !dbg !968, !tbaa !969
  %add = add nsw i64 %4, %y.073, !dbg !970
  %call = tail call ptr @GetVirtualPixels(ptr noundef %image1, i64 noundef %3, i64 noundef %add, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #7, !dbg !971
  call void @llvm.dbg.value(metadata ptr %call, metadata !868, metadata !DIExpression()), !dbg !955
  %5 = load i64, ptr %x1, align 8, !dbg !972, !tbaa !958
  %6 = load i64, ptr %y4, align 8, !dbg !973, !tbaa !969
  %add7 = add nsw i64 %6, %y.073, !dbg !974
  %7 = load i64, ptr %bounds, align 8, !dbg !975, !tbaa !966
  %call9 = tail call ptr @GetVirtualPixels(ptr noundef %image2, i64 noundef %5, i64 noundef %add7, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #7, !dbg !976
  call void @llvm.dbg.value(metadata ptr %call9, metadata !869, metadata !DIExpression()), !dbg !955
  %cmp10 = icmp eq ptr %call, null, !dbg !977
  %cmp11 = icmp eq ptr %call9, null
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11, !dbg !978
  br i1 %or.cond, label %for.end34, label %for.cond14.preheader, !dbg !978

for.cond14.preheader:                             ; preds = %for.body
  %8 = load i64, ptr %bounds, align 8, !tbaa !966
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %call9, metadata !869, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %call, metadata !868, metadata !DIExpression()), !dbg !955
  %cmp1667 = icmp sgt i64 %8, 0, !dbg !979
  br i1 %cmp1667, label %for.body17, label %for.inc32, !dbg !980

for.body17:                                       ; preds = %for.cond14.preheader, %if.end25
  %x.070 = phi i64 [ %inc, %if.end25 ], [ 0, %for.cond14.preheader ]
  %q.069 = phi ptr [ %incdec.ptr26, %if.end25 ], [ %call9, %for.cond14.preheader ]
  %p.068 = phi ptr [ %incdec.ptr, %if.end25 ], [ %call, %for.cond14.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.070, metadata !870, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %q.069, metadata !869, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr %p.068, metadata !868, metadata !DIExpression()), !dbg !955
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.068, i64 0, i32 3, !dbg !981
  %9 = load i16, ptr %opacity, align 2, !dbg !981, !tbaa !828
  %cmp18 = icmp sgt i16 %9, -1, !dbg !982
  br i1 %cmp18, label %land.lhs.true, label %if.end25, !dbg !983

land.lhs.true:                                    ; preds = %for.body17
  %opacity20 = getelementptr inbounds %struct._PixelPacket, ptr %q.069, i64 0, i32 3, !dbg !984
  %10 = load i16, ptr %opacity20, align 2, !dbg !984, !tbaa !828
  %cmp22 = icmp slt i16 %10, 0, !dbg !985
  br i1 %cmp22, label %for.end34, label %if.end25, !dbg !986

if.end25:                                         ; preds = %land.lhs.true, %for.body17
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.068, i64 1, !dbg !987
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !868, metadata !DIExpression()), !dbg !955
  %incdec.ptr26 = getelementptr inbounds %struct._PixelPacket, ptr %q.069, i64 1, !dbg !988
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26, metadata !869, metadata !DIExpression()), !dbg !955
  %inc = add nuw nsw i64 %x.070, 1, !dbg !989
  call void @llvm.dbg.value(metadata i64 %inc, metadata !870, metadata !DIExpression()), !dbg !955
  %exitcond.not = icmp eq i64 %inc, %8, !dbg !979
  br i1 %exitcond.not, label %for.inc32, label %for.body17, !dbg !980, !llvm.loop !990

for.inc32:                                        ; preds = %if.end25, %for.cond14.preheader
  %inc33 = add nuw nsw i64 %y.073, 1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !871, metadata !DIExpression()), !dbg !955
  %11 = load i64, ptr %height, align 8, !dbg !961, !tbaa !962
  %cmp2 = icmp slt i64 %inc33, %11, !dbg !963
  br i1 %cmp2, label %for.inc32.for.body_crit_edge, label %for.end34, !dbg !964, !llvm.loop !993

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  %.pre = load i64, ptr %x1, align 8, !dbg !967, !tbaa !958
  br label %for.body, !dbg !964

for.end34:                                        ; preds = %for.inc32, %for.body, %land.lhs.true, %for.cond.preheader
  %y.066 = phi i64 [ 0, %for.cond.preheader ], [ %y.073, %land.lhs.true ], [ %inc33, %for.inc32 ], [ %y.073, %for.body ]
  %12 = load i64, ptr %height, align 8, !dbg !995, !tbaa !962
  %cmp36 = icmp slt i64 %y.066, %12, !dbg !996
  %cond = zext i1 %cmp36 to i32, !dbg !997
  br label %cleanup, !dbg !998

cleanup:                                          ; preds = %entry, %for.end34
  %retval.0 = phi i32 [ %cond, %for.end34 ], [ 0, %entry ], !dbg !955
  ret i32 %retval.0, !dbg !999
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DisposeImages(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !1000 {
entry:
  %dispose_images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !1002, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1003, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose_images) #7, !dbg !1016
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1017
  %0 = load i32, ptr %debug, align 8, !dbg !1017, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !1019
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1020

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1021
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 398, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1022
  br label %if.end, !dbg !1023

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %images) #7, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1007, metadata !DIExpression()), !dbg !1015
  %page = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1025
  %1 = load i64, ptr %page, align 8, !dbg !1026, !tbaa !1027
  %height = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 1, !dbg !1028
  %2 = load i64, ptr %height, align 8, !dbg !1028, !tbaa !1029
  %call3 = tail call ptr @CloneImage(ptr noundef %call1, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #7, !dbg !1030
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1004, metadata !DIExpression()), !dbg !1015
  %cmp4 = icmp eq ptr %call3, null, !dbg !1031
  br i1 %cmp4, label %cleanup97, label %for.body.preheader, !dbg !1033

for.body.preheader:                               ; preds = %if.end
  %page7 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 26, !dbg !1034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page7, ptr noundef nonnull align 8 dereferenceable(32) %page, i64 16, i1 false), !dbg !1035, !tbaa.struct !710
  %x = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 26, i32 2, !dbg !1036
  %dispose = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 37, !dbg !1037
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 0, i64 16, i1 false), !dbg !1038
  store i32 1, ptr %dispose, align 4, !dbg !1039, !tbaa !742
  %opacity = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 12, i32 3, !dbg !1040
  store i16 -1, ptr %opacity, align 2, !dbg !1041, !tbaa !1042
  %call11 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call3) #7, !dbg !1043
  %call12 = tail call ptr @NewImageList() #7, !dbg !1044
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1005, metadata !DIExpression()), !dbg !1015
  store ptr %call12, ptr %dispose_images, align 8, !dbg !1045, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1008, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1004, metadata !DIExpression()), !dbg !1015
  br label %for.body, !dbg !1047

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %next.0180 = phi ptr [ %call94, %for.inc ], [ %call1, %for.body.preheader ]
  %dispose_image.0179 = phi ptr [ %dispose_image.1, %for.inc ], [ %call3, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %next.0180, metadata !1008, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr %dispose_image.0179, metadata !1004, metadata !DIExpression()), !dbg !1015
  %call14 = call ptr @CloneImage(ptr noundef %dispose_image.0179, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1009, metadata !DIExpression()), !dbg !1049
  %cmp15 = icmp eq ptr %call14, null, !dbg !1050
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !1052

if.then16:                                        ; preds = %for.body
  %3 = load ptr, ptr %dispose_images, align 8, !dbg !1053, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %3, metadata !1005, metadata !DIExpression()), !dbg !1015
  %call17 = call ptr @DestroyImageList(ptr noundef %3) #7, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1005, metadata !DIExpression()), !dbg !1015
  store ptr %call17, ptr %dispose_images, align 8, !dbg !1056, !tbaa !1046
  %call18 = call ptr @DestroyImage(ptr noundef %dispose_image.0179) #7, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1004, metadata !DIExpression()), !dbg !1015
  br label %cleanup97, !dbg !1058

if.end19:                                         ; preds = %for.body
  %matte = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 6, !dbg !1059
  %4 = load i32, ptr %matte, align 8, !dbg !1059, !tbaa !735
  %cmp20.not = icmp eq i32 %4, 0, !dbg !1060
  %cond = select i1 %cmp20.not, i32 13, i32 40, !dbg !1061
  %x22 = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 26, i32 2, !dbg !1062
  %5 = load i64, ptr %x22, align 8, !dbg !1062, !tbaa !745
  %y24 = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 26, i32 3, !dbg !1063
  %6 = load i64, ptr %y24, align 8, !dbg !1063, !tbaa !747
  %call25 = call i32 @CompositeImage(ptr noundef nonnull %call14, i32 noundef %cond, ptr noundef nonnull %next.0180, i64 noundef %5, i64 noundef %6) #7, !dbg !1064
  %dispose26 = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 37, !dbg !1065
  %7 = load i32, ptr %dispose26, align 4, !dbg !1065, !tbaa !742
  %cmp27 = icmp eq i32 %7, 2, !dbg !1067
  br i1 %cmp27, label %if.then28, label %if.end68, !dbg !1068

if.then28:                                        ; preds = %if.end19
  %page21 = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 26, !dbg !1069
  call void @llvm.dbg.value(metadata i64 undef, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata i64 undef, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  %bounds.sroa.17.0.page21.sroa_idx = getelementptr inbounds i8, ptr %page21, i64 16, !dbg !1070
  %bounds.sroa.17.0.copyload = load i64, ptr %bounds.sroa.17.0.page21.sroa_idx, align 8, !dbg !1070, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.17.0.copyload, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1015
  %bounds.sroa.22.0.page21.sroa_idx = getelementptr inbounds i8, ptr %page21, i64 24, !dbg !1070
  %bounds.sroa.22.0.copyload = load i64, ptr %bounds.sroa.22.0.page21.sroa_idx, align 8, !dbg !1070, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.22.0.copyload, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1015
  %columns = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 7, !dbg !1072
  %8 = load i64, ptr %columns, align 8, !dbg !1072, !tbaa !720
  call void @llvm.dbg.value(metadata i64 %8, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  %rows = getelementptr inbounds %struct._Image, ptr %next.0180, i64 0, i32 8, !dbg !1073
  %9 = load i64, ptr %rows, align 8, !dbg !1073, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %9, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  %10 = call i64 @llvm.smax.i64(i64 %bounds.sroa.17.0.copyload, i64 0), !dbg !1074
  %11 = call i64 @llvm.smin.i64(i64 %bounds.sroa.17.0.copyload, i64 0), !dbg !1074
  %spec.select171 = add i64 %8, %11, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %spec.select171, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %10, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1015
  %add41 = add i64 %spec.select171, %10, !dbg !1075
  %columns42 = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 7, !dbg !1077
  %12 = load i64, ptr %columns42, align 8, !dbg !1077, !tbaa !720
  %cmp43 = icmp sgt i64 %add41, %12, !dbg !1078
  %sub = sub i64 %12, %10
  %spec.select174 = select i1 %cmp43, i64 %sub, i64 %spec.select171, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %spec.select174, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  %13 = call i64 @llvm.smax.i64(i64 %bounds.sroa.22.0.copyload, i64 0), !dbg !1080
  %14 = call i64 @llvm.smin.i64(i64 %bounds.sroa.22.0.copyload, i64 0), !dbg !1080
  %spec.select173 = add i64 %9, %14, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %spec.select173, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %13, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1015
  %add59 = add i64 %spec.select173, %13, !dbg !1081
  %rows60 = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 8, !dbg !1083
  %15 = load i64, ptr %rows60, align 8, !dbg !1083, !tbaa !727
  %cmp61 = icmp sgt i64 %add59, %15, !dbg !1084
  %sub65 = sub i64 %15, %13
  %spec.select175 = select i1 %cmp61, i64 %sub65, i64 %spec.select173, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %spec.select175, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata ptr %call14, metadata !791, metadata !DIExpression()) #7, !dbg !1086
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !1086
  %matte.i = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 6, !dbg !1088
  %16 = load i32, ptr %matte.i, align 8, !dbg !1088, !tbaa !735
  %cmp1.i = icmp eq i32 %16, 0, !dbg !1089
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i, !dbg !1090

if.then2.i:                                       ; preds = %if.then28
  %call.i = call i32 @SetImageAlphaChannel(ptr noundef nonnull %call14, i32 noundef 6) #7, !dbg !1091
  br label %if.end3.i, !dbg !1092

if.end3.i:                                        ; preds = %if.then2.i, %if.then28
  %exception4.i = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 58, !dbg !1093
  call void @llvm.dbg.value(metadata ptr %exception4.i, metadata !797, metadata !DIExpression()) #7, !dbg !1086
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !1086
  %cmp549.i = icmp sgt i64 %spec.select175, 0, !dbg !1094
  br i1 %cmp549.i, label %for.body.i.preheader, label %if.end68thread-pre-split, !dbg !1095

for.body.i.preheader:                             ; preds = %if.end3.i
  %cmp1546.i = icmp sgt i64 %spec.select174, 0
  br i1 %cmp1546.i, label %for.body.i.us, label %for.body.i, !dbg !1096

for.body.i.us:                                    ; preds = %for.body.i.preheader, %for.end.i.loopexit.us
  %y.050.i.us = phi i64 [ %inc23.i.us, %for.end.i.loopexit.us ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression()) #7, !dbg !1086
  %add.i.us = add nuw nsw i64 %y.050.i.us, %13, !dbg !1097
  %call9.i.us = call ptr @GetAuthenticPixels(ptr noundef nonnull %call14, i64 noundef %10, i64 noundef %add.i.us, i64 noundef %spec.select174, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call9.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !1099
  %cmp10.i.us = icmp eq ptr %call9.i.us, null, !dbg !1100
  br i1 %cmp10.i.us, label %if.end68thread-pre-split, label %for.body16.i.us, !dbg !1101

for.body16.i.us:                                  ; preds = %for.body.i.us, %for.body16.i.us
  %q.048.i.us = phi ptr [ %incdec.ptr.i.us, %for.body16.i.us ], [ %call9.i.us, %for.body.i.us ]
  %x6.047.i.us = phi i64 [ %inc.i.us, %for.body16.i.us ], [ 0, %for.body.i.us ]
  call void @llvm.dbg.value(metadata ptr %q.048.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %x6.047.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !1099
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 0, i32 3, !dbg !1102
  store i16 -1, ptr %opacity.i.us, align 2, !dbg !1103, !tbaa !828
  %incdec.ptr.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 1, !dbg !1104
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !1099
  %inc.i.us = add nuw nsw i64 %x6.047.i.us, 1, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %inc.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !1099
  %exitcond.not.i.us = icmp eq i64 %inc.i.us, %spec.select174, !dbg !1106
  br i1 %exitcond.not.i.us, label %for.end.i.loopexit.us, label %for.body16.i.us, !dbg !1096, !llvm.loop !1107

for.end.i.loopexit.us:                            ; preds = %for.body16.i.us
  %call17.i.us = call i32 @SyncAuthenticPixels(ptr noundef nonnull %call14, ptr noundef nonnull %exception4.i) #7, !dbg !1109
  %cmp18.i.us = icmp ne i32 %call17.i.us, 0, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1086
  %inc23.i.us = add nuw nsw i64 %y.050.i.us, 1
  %cmp5.i.us = icmp slt i64 %inc23.i.us, %spec.select175
  %or.cond.us = select i1 %cmp18.i.us, i1 %cmp5.i.us, i1 false, !dbg !1111
  br i1 %or.cond.us, label %for.body.i.us, label %if.end68thread-pre-split, !dbg !1111, !llvm.loop !1112

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond13.preheader.i
  %y.050.i = phi i64 [ %inc23.i, %for.cond13.preheader.i ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression()) #7, !dbg !1086
  %add.i = add nuw nsw i64 %y.050.i, %13, !dbg !1097
  %call9.i = call ptr @GetAuthenticPixels(ptr noundef nonnull %call14, i64 noundef %10, i64 noundef %add.i, i64 noundef %spec.select174, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !1099
  %cmp10.i = icmp eq ptr %call9.i, null, !dbg !1100
  br i1 %cmp10.i, label %if.end68thread-pre-split, label %for.cond13.preheader.i, !dbg !1101

for.cond13.preheader.i:                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !1099
  %call17.i = call i32 @SyncAuthenticPixels(ptr noundef nonnull %call14, ptr noundef nonnull %exception4.i) #7, !dbg !1109
  %cmp18.i = icmp ne i32 %call17.i, 0, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1086
  %inc23.i = add nuw nsw i64 %y.050.i, 1
  %cmp5.i = icmp slt i64 %inc23.i, %spec.select175
  %or.cond = select i1 %cmp18.i, i1 %cmp5.i, i1 false, !dbg !1111
  br i1 %or.cond, label %for.body.i, label %if.end68thread-pre-split, !dbg !1111, !llvm.loop !1112

if.end68thread-pre-split:                         ; preds = %for.cond13.preheader.i, %for.body.i, %for.end.i.loopexit.us, %for.body.i.us, %if.end3.i
  %.pr = load i32, ptr %dispose26, align 4, !dbg !1114, !tbaa !742
  br label %if.end68, !dbg !1114

if.end68:                                         ; preds = %if.end68thread-pre-split, %if.end19
  %17 = phi i32 [ %.pr, %if.end68thread-pre-split ], [ %7, %if.end19 ], !dbg !1114
  %cmp70 = icmp eq i32 %17, 3, !dbg !1116
  br i1 %cmp70, label %if.then71, label %if.else, !dbg !1117

if.then71:                                        ; preds = %if.end68
  %call72 = call ptr @DestroyImage(ptr noundef nonnull %call14) #7, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %call72, metadata !1009, metadata !DIExpression()), !dbg !1049
  br label %if.end74, !dbg !1119

if.else:                                          ; preds = %if.end68
  %call73 = call ptr @DestroyImage(ptr noundef %dispose_image.0179) #7, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1004, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr null, metadata !1009, metadata !DIExpression()), !dbg !1049
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then71
  %dispose_image.1 = phi ptr [ %dispose_image.0179, %if.then71 ], [ %call14, %if.else ], !dbg !1015
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !1004, metadata !DIExpression()), !dbg !1015
  %call76 = call ptr @CloneImage(ptr noundef %dispose_image.1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1013, metadata !DIExpression()), !dbg !1123
  %cmp77 = icmp eq ptr %call76, null, !dbg !1124
  br i1 %cmp77, label %if.then78, label %for.inc, !dbg !1126

if.then78:                                        ; preds = %if.end74
  %18 = load ptr, ptr %dispose_images, align 8, !dbg !1127, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %18, metadata !1005, metadata !DIExpression()), !dbg !1015
  %call79 = call ptr @DestroyImageList(ptr noundef %18) #7, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %call79, metadata !1005, metadata !DIExpression()), !dbg !1015
  store ptr %call79, ptr %dispose_images, align 8, !dbg !1130, !tbaa !1046
  %call80 = call ptr @DestroyImage(ptr noundef %dispose_image.1) #7, !dbg !1131
  call void @llvm.dbg.value(metadata ptr %call80, metadata !1004, metadata !DIExpression()), !dbg !1015
  br label %cleanup97, !dbg !1132

for.inc:                                          ; preds = %if.end74
  %call82 = call i32 @CloneImageProfiles(ptr noundef nonnull %call76, ptr noundef nonnull %next.0180) #7, !dbg !1133
  %call83 = call i32 @CloneImageProperties(ptr noundef nonnull %call76, ptr noundef nonnull %next.0180) #7, !dbg !1134
  %call84 = call i32 @CloneImageArtifacts(ptr noundef nonnull %call76, ptr noundef nonnull %next.0180) #7, !dbg !1135
  %x86 = getelementptr inbounds %struct._Image, ptr %call76, i64 0, i32 26, i32 2, !dbg !1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x86, i8 0, i64 16, i1 false), !dbg !1137
  %19 = load i32, ptr %dispose26, align 4, !dbg !1138, !tbaa !742
  %dispose90 = getelementptr inbounds %struct._Image, ptr %call76, i64 0, i32 37, !dbg !1139
  store i32 %19, ptr %dispose90, align 4, !dbg !1140, !tbaa !742
  call void @llvm.dbg.value(metadata ptr %dispose_images, metadata !1005, metadata !DIExpression(DW_OP_deref)), !dbg !1015
  call void @AppendImageToList(ptr noundef nonnull %dispose_images, ptr noundef nonnull %call76) #7, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !1004, metadata !DIExpression()), !dbg !1015
  %call94 = call ptr @GetNextImageInList(ptr noundef nonnull %next.0180) #7, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %call94, metadata !1008, metadata !DIExpression()), !dbg !1015
  %cmp13.not = icmp eq ptr %call94, null, !dbg !1143
  br i1 %cmp13.not, label %for.end, label %for.body, !dbg !1047, !llvm.loop !1144

for.end:                                          ; preds = %for.inc
  %call95 = call ptr @DestroyImage(ptr noundef %dispose_image.1) #7, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1004, metadata !DIExpression()), !dbg !1015
  %20 = load ptr, ptr %dispose_images, align 8, !dbg !1147, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %20, metadata !1005, metadata !DIExpression()), !dbg !1015
  %call96 = call ptr @GetFirstImageInList(ptr noundef %20) #7, !dbg !1148
  br label %cleanup97, !dbg !1149

cleanup97:                                        ; preds = %if.then78, %if.then16, %if.end, %for.end
  %retval.3 = phi ptr [ %call96, %for.end ], [ null, %if.end ], [ null, %if.then16 ], [ null, %if.then78 ], !dbg !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose_images) #7, !dbg !1150
  ret ptr %retval.3, !dbg !1150
}

declare !dbg !1151 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !1154 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImageLayers(ptr noundef %image, i32 noundef %method, ptr noundef %exception) local_unnamed_addr #0 !dbg !1158 {
entry:
  %layers = alloca ptr, align 8
  %tmp = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1164, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i32 %method, metadata !1165, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1166, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %layers) #7, !dbg !1174
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1175
  %0 = load i32, ptr %debug, align 8, !dbg !1175, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !1177
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1178

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1179
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 788, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1180
  br label %if.end, !dbg !1181

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %image) #7, !dbg !1182
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1171, metadata !DIExpression()), !dbg !1173
  %call2 = tail call i64 @GetImageListLength(ptr noundef %call1) #7, !dbg !1183
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %call2, i64 noundef 32) #8, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1170, metadata !DIExpression()), !dbg !1173
  %cmp4 = icmp eq ptr %call3, null, !dbg !1185
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !1187

if.then5:                                         ; preds = %if.end
  %filename6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1188
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename6) #7, !dbg !1188
  br label %cleanup, !dbg !1188

if.end9:                                          ; preds = %if.end
  %page = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1190
  %1 = load i64, ptr %page, align 8, !dbg !1191, !tbaa !1027
  %height = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 1, !dbg !1192
  %2 = load i64, ptr %height, align 8, !dbg !1192, !tbaa !1029
  %call11 = tail call ptr @CloneImage(ptr noundef %call1, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #7, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1167, metadata !DIExpression()), !dbg !1173
  %cmp12 = icmp eq ptr %call11, null, !dbg !1194
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1196

if.then13:                                        ; preds = %if.end9
  %call14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3) #7, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1170, metadata !DIExpression()), !dbg !1173
  br label %cleanup, !dbg !1199

if.end15:                                         ; preds = %if.end9
  %opacity = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 12, i32 3, !dbg !1200
  store i16 -1, ptr %opacity, align 2, !dbg !1201, !tbaa !1042
  %call16 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call11) #7, !dbg !1202
  %page17 = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 26, !dbg !1203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page17, ptr noundef nonnull align 8 dereferenceable(32) %page, i64 16, i1 false), !dbg !1204, !tbaa.struct !710
  %x = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 26, i32 2, !dbg !1205
  %x22 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 2, !dbg !1206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 0, i64 16, i1 false), !dbg !1207
  %3 = load i64, ptr %x22, align 8, !dbg !1206, !tbaa !745
  %y24 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 3, !dbg !1208
  %4 = load i64, ptr %y24, align 8, !dbg !1208, !tbaa !747
  %call25 = tail call i32 @CompositeImage(ptr noundef nonnull %call11, i32 noundef 13, ptr noundef nonnull %call1, i64 noundef %3, i64 noundef %4) #7, !dbg !1209
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1173
  %call26 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call1) #7, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1171, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1173
  %cmp27.not133 = icmp eq ptr %call26, null, !dbg !1211
  br i1 %cmp27.not133, label %for.end, label %for.body, !dbg !1214

for.body:                                         ; preds = %if.end15, %if.end33
  %i.0135 = phi i64 [ %inc, %if.end33 ], [ 0, %if.end15 ]
  %next.0134 = phi ptr [ %call40, %if.end33 ], [ %call26, %if.end15 ]
  call void @llvm.dbg.value(metadata i64 %i.0135, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr %next.0134, metadata !1171, metadata !DIExpression()), !dbg !1173
  %call28 = tail call ptr @CloneImage(ptr noundef nonnull %call11, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1168, metadata !DIExpression()), !dbg !1173
  %cmp29 = icmp eq ptr %call28, null, !dbg !1217
  br i1 %cmp29, label %if.then30, label %if.end33, !dbg !1219

if.then30:                                        ; preds = %for.body
  %call31 = tail call ptr @DestroyImage(ptr noundef nonnull %call11) #7, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1167, metadata !DIExpression()), !dbg !1173
  %call32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3) #7, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1170, metadata !DIExpression()), !dbg !1173
  br label %cleanup, !dbg !1223

if.end33:                                         ; preds = %for.body
  %x35 = getelementptr inbounds %struct._Image, ptr %next.0134, i64 0, i32 26, i32 2, !dbg !1224
  %5 = load i64, ptr %x35, align 8, !dbg !1224, !tbaa !745
  %y37 = getelementptr inbounds %struct._Image, ptr %next.0134, i64 0, i32 26, i32 3, !dbg !1225
  %6 = load i64, ptr %y37, align 8, !dbg !1225, !tbaa !747
  %call38 = tail call i32 @CompositeImage(ptr noundef nonnull %call11, i32 noundef 13, ptr noundef nonnull %next.0134, i64 noundef %5, i64 noundef %6) #7, !dbg !1226
  %arrayidx = getelementptr inbounds %struct._RectangleInfo, ptr %call3, i64 %i.0135, !dbg !1227
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7, !dbg !1228
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp, ptr noundef nonnull %call28, ptr noundef nonnull %call11, i32 noundef %method, ptr noundef %exception), !dbg !1228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx, ptr noundef nonnull align 8 dereferenceable(32) %tmp, i64 32, i1 false), !dbg !1228, !tbaa.struct !710
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7, !dbg !1228
  %call39 = tail call ptr @DestroyImage(ptr noundef nonnull %call28) #7, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1168, metadata !DIExpression()), !dbg !1173
  %inc = add nuw nsw i64 %i.0135, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1172, metadata !DIExpression()), !dbg !1173
  %call40 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0134) #7, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %call40, metadata !1171, metadata !DIExpression()), !dbg !1173
  %cmp27.not = icmp eq ptr %call40, null, !dbg !1211
  br i1 %cmp27.not, label %for.end, label %for.body, !dbg !1214, !llvm.loop !1232

for.end:                                          ; preds = %if.end33, %if.end15
  %call41 = tail call ptr @DestroyImage(ptr noundef nonnull %call11) #7, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1167, metadata !DIExpression()), !dbg !1173
  %call42 = tail call ptr @GetFirstImageInList(ptr noundef %image) #7, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1171, metadata !DIExpression()), !dbg !1173
  %call43 = tail call ptr @CloneImage(ptr noundef %call42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1236
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1169, metadata !DIExpression()), !dbg !1173
  store ptr %call43, ptr %layers, align 8, !dbg !1237, !tbaa !1046
  %cmp44 = icmp eq ptr %call43, null, !dbg !1238
  br i1 %cmp44, label %if.then45, label %if.end47, !dbg !1240

if.then45:                                        ; preds = %for.end
  %call46 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3) #7, !dbg !1241
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1170, metadata !DIExpression()), !dbg !1173
  br label %cleanup, !dbg !1243

if.end47:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1173
  %call48 = tail call ptr @GetNextImageInList(ptr noundef %call42) #7, !dbg !1244
  call void @llvm.dbg.value(metadata ptr %call48, metadata !1171, metadata !DIExpression()), !dbg !1173
  %cmp50.not136 = icmp eq ptr %call48, null, !dbg !1245
  br i1 %cmp50.not136, label %if.end70, label %for.body51, !dbg !1248

for.body51:                                       ; preds = %if.end47, %if.end61
  %i.1138 = phi i64 [ %inc62, %if.end61 ], [ 0, %if.end47 ]
  %next.1137 = phi ptr [ %call64, %if.end61 ], [ %call48, %if.end47 ]
  call void @llvm.dbg.value(metadata i64 %i.1138, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr %next.1137, metadata !1171, metadata !DIExpression()), !dbg !1173
  %call52 = call ptr @CloneImage(ptr noundef nonnull %next.1137, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %call52, metadata !1167, metadata !DIExpression()), !dbg !1173
  %cmp53 = icmp eq ptr %call52, null, !dbg !1251
  br i1 %cmp53, label %if.then68, label %if.end55, !dbg !1253

if.end55:                                         ; preds = %for.body51
  %arrayidx56 = getelementptr inbounds %struct._RectangleInfo, ptr %call3, i64 %i.1138, !dbg !1254
  %call57 = call ptr @CropImage(ptr noundef nonnull %call52, ptr noundef nonnull %arrayidx56, ptr noundef %exception) #7, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %call57, metadata !1168, metadata !DIExpression()), !dbg !1173
  %call58 = call ptr @DestroyImage(ptr noundef nonnull %call52) #7, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call58, metadata !1167, metadata !DIExpression()), !dbg !1173
  %cmp59 = icmp eq ptr %call57, null, !dbg !1257
  br i1 %cmp59, label %if.then68, label %if.end61, !dbg !1259

if.end61:                                         ; preds = %if.end55
  call void @llvm.dbg.value(metadata ptr %layers, metadata !1169, metadata !DIExpression(DW_OP_deref)), !dbg !1173
  call void @AppendImageToList(ptr noundef nonnull %layers, ptr noundef nonnull %call57) #7, !dbg !1260
  %inc62 = add nuw nsw i64 %i.1138, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !1172, metadata !DIExpression()), !dbg !1173
  %call64 = call ptr @GetNextImageInList(ptr noundef nonnull %next.1137) #7, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1171, metadata !DIExpression()), !dbg !1173
  %cmp50.not = icmp eq ptr %call64, null, !dbg !1245
  br i1 %cmp50.not, label %if.end70, label %for.body51, !dbg !1248, !llvm.loop !1263

if.then68:                                        ; preds = %for.body51, %if.end55
  %call66 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3) #7, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1170, metadata !DIExpression()), !dbg !1173
  %7 = load ptr, ptr %layers, align 8, !dbg !1266, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %7, metadata !1169, metadata !DIExpression()), !dbg !1173
  %call69 = call ptr @DestroyImageList(ptr noundef %7) #7, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %call69, metadata !1169, metadata !DIExpression()), !dbg !1173
  br label %cleanup, !dbg !1270

if.end70:                                         ; preds = %if.end61, %if.end47
  %call66.c = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3) #7, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1170, metadata !DIExpression()), !dbg !1173
  %8 = load ptr, ptr %layers, align 8, !dbg !1271, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %8, metadata !1169, metadata !DIExpression()), !dbg !1173
  %call71 = call ptr @GetFirstImageInList(ptr noundef %8) #7, !dbg !1272
  br label %cleanup, !dbg !1273

cleanup:                                          ; preds = %if.end70, %if.then68, %if.then45, %if.then30, %if.then13, %if.then5
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %if.then13 ], [ null, %if.then30 ], [ null, %if.then45 ], [ null, %if.then68 ], [ %call71, %if.end70 ], !dbg !1173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %layers) #7, !dbg !1274
  ret ptr %retval.0, !dbg !1274
}

; Function Attrs: allocsize(0,1)
declare !dbg !1275 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1279 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare !dbg !1282 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1286 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @CompareImageBounds(ptr noalias nocapture align 8 %agg.result, ptr noundef %image1, ptr noundef %image2, i32 noundef %method, ptr noundef %exception) unnamed_addr #0 !dbg !1289 {
entry:
  %pixel1 = alloca %struct._MagickPixelPacket, align 8
  %pixel2 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image1, metadata !1293, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %image2, metadata !1294, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %method, metadata !1295, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1296, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !1297, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel1) #7, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %pixel1, metadata !1298, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel2) #7, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %pixel2, metadata !1312, metadata !DIExpression()), !dbg !1323
  call void @GetMagickPixelPacket(ptr noundef %image1, ptr noundef nonnull %pixel1) #7, !dbg !1324
  call void @GetMagickPixelPacket(ptr noundef %image2, ptr noundef nonnull %pixel2) #7, !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()), !dbg !1319
  %columns = getelementptr inbounds %struct._Image, ptr %image1, i64 0, i32 7
  call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()), !dbg !1319
  %0 = load i64, ptr %columns, align 8, !dbg !1326, !tbaa !720
  %cmp541 = icmp sgt i64 %0, 0, !dbg !1329
  br i1 %cmp541, label %for.body.lr.ph, label %for.end22, !dbg !1330

for.body.lr.ph:                                   ; preds = %entry
  %rows = getelementptr inbounds %struct._Image, ptr %image1, i64 0, i32 8
  %rows1 = getelementptr inbounds %struct._Image, ptr %image2, i64 0, i32 8
  %1 = getelementptr i8, ptr %image1, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 9
  %2 = getelementptr i8, ptr %image2, i64 4
  %red1.i289 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 5
  %green3.i292 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 6
  %blue5.i294 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 7
  %opacity7.i297 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 8
  %index15.i302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 9
  %cmp.i305 = icmp eq i32 %method, 2
  %matte4.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 2
  %matte.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 2
  %.pre = load i64, ptr %rows, align 8, !dbg !1331, !tbaa !727
  br label %for.body, !dbg !1330

for.body:                                         ; preds = %for.body.lr.ph, %for.inc20
  %3 = phi i64 [ %.pre, %for.body.lr.ph ], [ %31, %for.inc20 ], !dbg !1331
  %x.0542 = phi i64 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i64 %x.0542, metadata !1317, metadata !DIExpression()), !dbg !1319
  %call = call ptr @GetVirtualPixels(ptr noundef nonnull %image1, i64 noundef %x.0542, i64 noundef 0, i64 noundef 1, i64 noundef %3, ptr noundef %exception) #7, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %call, metadata !1315, metadata !DIExpression()), !dbg !1319
  %4 = load i64, ptr %rows1, align 8, !dbg !1334, !tbaa !727
  %call2 = call ptr @GetVirtualPixels(ptr noundef %image2, i64 noundef %x.0542, i64 noundef 0, i64 noundef 1, i64 noundef %4, ptr noundef %exception) #7, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1316, metadata !DIExpression()), !dbg !1319
  %cmp3 = icmp eq ptr %call, null, !dbg !1336
  %cmp4 = icmp eq ptr %call2, null
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4, !dbg !1338
  br i1 %or.cond, label %for.end22.loopexit, label %if.end, !dbg !1338

if.end:                                           ; preds = %for.body
  %call5 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image1) #7, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1313, metadata !DIExpression()), !dbg !1319
  %call6 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image2) #7, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call, metadata !1315, metadata !DIExpression()), !dbg !1319
  %5 = load i64, ptr %rows, align 8, !dbg !1341, !tbaa !727
  %cmp9534 = icmp sgt i64 %5, 0, !dbg !1344
  br i1 %cmp9534, label %for.body10.lr.ph, label %for.end, !dbg !1345

for.body10.lr.ph:                                 ; preds = %if.end
  %cmp9.i = icmp ne ptr %call5, null
  %add.ptr = getelementptr inbounds i16, ptr %call5, i64 %x.0542
  %cmp9.i299 = icmp ne ptr %call6, null
  %add.ptr11 = getelementptr inbounds i16, ptr %call6, i64 %x.0542
  br i1 %cmp.i305, label %for.body10.us, label %for.body10, !dbg !1346

for.body10.us:                                    ; preds = %for.body10.lr.ph, %if.end14.us
  %y.0537.us = phi i64 [ %inc.us, %if.end14.us ], [ 0, %for.body10.lr.ph ]
  %q.0536.us = phi ptr [ %incdec.ptr15.us, %if.end14.us ], [ %call2, %for.body10.lr.ph ]
  %p.0535.us = phi ptr [ %incdec.ptr.us, %if.end14.us ], [ %call, %for.body10.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0537.us, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.0536.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.0535.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val286.us = load i32, ptr %1, align 4, !dbg !1361, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %p.0535.us, metadata !1370, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call5, i64 %x.0542), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1373
  %red.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0535.us, i64 0, i32 2, !dbg !1375
  %6 = load i16, ptr %red.i.us, align 2, !dbg !1375, !tbaa !1376
  %conv.i.us = uitofp i16 %6 to float, !dbg !1377
  store float %conv.i.us, ptr %red1.i, align 8, !dbg !1378, !tbaa !1379
  %green.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0535.us, i64 0, i32 1, !dbg !1382
  %7 = load i16, ptr %green.i.us, align 2, !dbg !1382, !tbaa !1383
  %conv2.i.us = uitofp i16 %7 to float, !dbg !1384
  store float %conv2.i.us, ptr %green3.i, align 4, !dbg !1385, !tbaa !1386
  %8 = load i16, ptr %p.0535.us, align 2, !dbg !1387, !tbaa !1388
  %conv4.i.us = uitofp i16 %8 to float, !dbg !1389
  store float %conv4.i.us, ptr %blue5.i, align 8, !dbg !1390, !tbaa !1391
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0535.us, i64 0, i32 3, !dbg !1392
  %9 = load i16, ptr %opacity.i.us, align 2, !dbg !1392, !tbaa !828
  %conv6.i.us = uitofp i16 %9 to float, !dbg !1393
  store float %conv6.i.us, ptr %opacity7.i, align 4, !dbg !1394, !tbaa !1395
  %cmp.i.us = icmp eq i32 %image1.val286.us, 12, !dbg !1396
  %or.cond.i.us = and i1 %cmp9.i, %cmp.i.us, !dbg !1398
  br i1 %or.cond.i.us, label %cond.end.i.us, label %SetMagickPixelPacket.exit.us, !dbg !1398

cond.end.i.us:                                    ; preds = %for.body10.us
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1371, metadata !DIExpression()), !dbg !1373
  %10 = load i16, ptr %add.ptr, align 2, !dbg !1399, !tbaa !1400
  %conv14.i.us = uitofp i16 %10 to float, !dbg !1401
  store float %conv14.i.us, ptr %index15.i, align 8, !dbg !1402, !tbaa !1403
  br label %SetMagickPixelPacket.exit.us, !dbg !1404

SetMagickPixelPacket.exit.us:                     ; preds = %cond.end.i.us, %for.body10.us
  %image2.val285.us = load i32, ptr %2, align 4, !dbg !1405, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %q.0536.us, metadata !1370, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call6, i64 %x.0542), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1406
  %red.i287.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0536.us, i64 0, i32 2, !dbg !1408
  %11 = load i16, ptr %red.i287.us, align 2, !dbg !1408, !tbaa !1376
  %conv.i288.us = uitofp i16 %11 to float, !dbg !1409
  store float %conv.i288.us, ptr %red1.i289, align 8, !dbg !1410, !tbaa !1379
  %green.i290.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0536.us, i64 0, i32 1, !dbg !1411
  %12 = load i16, ptr %green.i290.us, align 2, !dbg !1411, !tbaa !1383
  %conv2.i291.us = uitofp i16 %12 to float, !dbg !1412
  store float %conv2.i291.us, ptr %green3.i292, align 4, !dbg !1413, !tbaa !1386
  %13 = load i16, ptr %q.0536.us, align 2, !dbg !1414, !tbaa !1388
  %conv4.i293.us = uitofp i16 %13 to float, !dbg !1415
  store float %conv4.i293.us, ptr %blue5.i294, align 8, !dbg !1416, !tbaa !1391
  %opacity.i295.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0536.us, i64 0, i32 3, !dbg !1417
  %14 = load i16, ptr %opacity.i295.us, align 2, !dbg !1417, !tbaa !828
  %conv6.i296.us = uitofp i16 %14 to float, !dbg !1418
  store float %conv6.i296.us, ptr %opacity7.i297, align 4, !dbg !1419, !tbaa !1395
  %cmp.i298.us = icmp eq i32 %image2.val285.us, 12, !dbg !1420
  %or.cond.i300.us = and i1 %cmp9.i299, %cmp.i298.us, !dbg !1421
  br i1 %or.cond.i300.us, label %cond.end.i303.us, label %SetMagickPixelPacket.exit304.us, !dbg !1421

cond.end.i303.us:                                 ; preds = %SetMagickPixelPacket.exit.us
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !1371, metadata !DIExpression()), !dbg !1406
  %15 = load i16, ptr %add.ptr11, align 2, !dbg !1422, !tbaa !1400
  %conv14.i301.us = uitofp i16 %15 to float, !dbg !1423
  store float %conv14.i301.us, ptr %index15.i302, align 8, !dbg !1424, !tbaa !1403
  br label %SetMagickPixelPacket.exit304.us, !dbg !1425

SetMagickPixelPacket.exit304.us:                  ; preds = %cond.end.i303.us, %SetMagickPixelPacket.exit.us
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1426
  %call.i.us = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1427
  %cmp1.i.us = icmp eq i32 %call.i.us, 0, !dbg !1429
  br i1 %cmp1.i.us, label %for.end, label %if.end14.us, !dbg !1430

if.end14.us:                                      ; preds = %SetMagickPixelPacket.exit304.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0535.us, i64 1, !dbg !1431
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr15.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0536.us, i64 1, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %incdec.ptr15.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc.us = add nuw nsw i64 %y.0537.us, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1318, metadata !DIExpression()), !dbg !1319
  %16 = load i64, ptr %rows, align 8, !dbg !1341, !tbaa !727
  %cmp9.us = icmp slt i64 %inc.us, %16, !dbg !1344
  br i1 %cmp9.us, label %for.body10.us, label %for.end, !dbg !1345, !llvm.loop !1434

for.body10:                                       ; preds = %for.body10.lr.ph, %if.end14
  %17 = phi i64 [ %30, %if.end14 ], [ %5, %for.body10.lr.ph ]
  %y.0537 = phi i64 [ %inc, %if.end14 ], [ 0, %for.body10.lr.ph ]
  %q.0536 = phi ptr [ %incdec.ptr15, %if.end14 ], [ %call2, %for.body10.lr.ph ]
  %p.0535 = phi ptr [ %incdec.ptr, %if.end14 ], [ %call, %for.body10.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0537, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.0536, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.0535, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val286 = load i32, ptr %1, align 4, !dbg !1361, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %p.0535, metadata !1370, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call5, i64 %x.0542), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1373
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0535, i64 0, i32 2, !dbg !1375
  %18 = load i16, ptr %red.i, align 2, !dbg !1375, !tbaa !1376
  %conv.i = uitofp i16 %18 to float, !dbg !1377
  store float %conv.i, ptr %red1.i, align 8, !dbg !1378, !tbaa !1379
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0535, i64 0, i32 1, !dbg !1382
  %19 = load i16, ptr %green.i, align 2, !dbg !1382, !tbaa !1383
  %conv2.i = uitofp i16 %19 to float, !dbg !1384
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1385, !tbaa !1386
  %20 = load i16, ptr %p.0535, align 2, !dbg !1387, !tbaa !1388
  %conv4.i = uitofp i16 %20 to float, !dbg !1389
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1390, !tbaa !1391
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0535, i64 0, i32 3, !dbg !1392
  %21 = load i16, ptr %opacity.i, align 2, !dbg !1392, !tbaa !828
  %conv6.i = uitofp i16 %21 to float, !dbg !1393
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1394, !tbaa !1395
  %cmp.i = icmp eq i32 %image1.val286, 12, !dbg !1396
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !1398
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1398

cond.end.i:                                       ; preds = %for.body10
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1371, metadata !DIExpression()), !dbg !1373
  %22 = load i16, ptr %add.ptr, align 2, !dbg !1399, !tbaa !1400
  %conv14.i = uitofp i16 %22 to float, !dbg !1401
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1402, !tbaa !1403
  br label %SetMagickPixelPacket.exit, !dbg !1404

SetMagickPixelPacket.exit:                        ; preds = %for.body10, %cond.end.i
  %image2.val285 = load i32, ptr %2, align 4, !dbg !1405, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %q.0536, metadata !1370, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call6, i64 %x.0542), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1406
  %red.i287 = getelementptr inbounds %struct._PixelPacket, ptr %q.0536, i64 0, i32 2, !dbg !1408
  %23 = load i16, ptr %red.i287, align 2, !dbg !1408, !tbaa !1376
  %conv.i288 = uitofp i16 %23 to float, !dbg !1409
  store float %conv.i288, ptr %red1.i289, align 8, !dbg !1410, !tbaa !1379
  %green.i290 = getelementptr inbounds %struct._PixelPacket, ptr %q.0536, i64 0, i32 1, !dbg !1411
  %24 = load i16, ptr %green.i290, align 2, !dbg !1411, !tbaa !1383
  %conv2.i291 = uitofp i16 %24 to float, !dbg !1412
  store float %conv2.i291, ptr %green3.i292, align 4, !dbg !1413, !tbaa !1386
  %25 = load i16, ptr %q.0536, align 2, !dbg !1414, !tbaa !1388
  %conv4.i293 = uitofp i16 %25 to float, !dbg !1415
  store float %conv4.i293, ptr %blue5.i294, align 8, !dbg !1416, !tbaa !1391
  %opacity.i295 = getelementptr inbounds %struct._PixelPacket, ptr %q.0536, i64 0, i32 3, !dbg !1417
  %26 = load i16, ptr %opacity.i295, align 2, !dbg !1417, !tbaa !828
  %conv6.i296 = uitofp i16 %26 to float, !dbg !1418
  store float %conv6.i296, ptr %opacity7.i297, align 4, !dbg !1419, !tbaa !1395
  %cmp.i298 = icmp eq i32 %image2.val285, 12, !dbg !1420
  %or.cond.i300 = and i1 %cmp9.i299, %cmp.i298, !dbg !1421
  br i1 %or.cond.i300, label %cond.end.i303, label %SetMagickPixelPacket.exit304, !dbg !1421

cond.end.i303:                                    ; preds = %SetMagickPixelPacket.exit
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !1371, metadata !DIExpression()), !dbg !1406
  %27 = load i16, ptr %add.ptr11, align 2, !dbg !1422, !tbaa !1400
  %conv14.i301 = uitofp i16 %27 to float, !dbg !1423
  store float %conv14.i301, ptr %index15.i302, align 8, !dbg !1424, !tbaa !1403
  br label %SetMagickPixelPacket.exit304, !dbg !1425

SetMagickPixelPacket.exit304:                     ; preds = %SetMagickPixelPacket.exit, %cond.end.i303
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1426
  call void @llvm.dbg.value(metadata float undef, metadata !1356, metadata !DIExpression()) #7, !dbg !1426
  %28 = load i32, ptr %matte4.i, align 8, !dbg !1436, !tbaa !1437
  %cmp5.not.i = icmp eq i32 %28, 0, !dbg !1438
  %phi.cast.i = uitofp i16 %26 to double
  %spec.select530 = select i1 %cmp5.not.i, double 0.000000e+00, double %phi.cast.i, !dbg !1439
  call void @llvm.dbg.value(metadata float undef, metadata !1357, metadata !DIExpression()) #7, !dbg !1426
  switch i32 %method, label %if.end14 [
    i32 3, label %if.then14.i
    i32 4, label %if.then24.i
  ], !dbg !1440

if.then14.i:                                      ; preds = %SetMagickPixelPacket.exit304
  %29 = load i32, ptr %matte.i, align 8, !dbg !1441, !tbaa !1437
  %cmp2.not.i = icmp eq i32 %29, 0, !dbg !1442
  %phi.cast44.i = uitofp i16 %21 to double
  %spec.select = select i1 %cmp2.not.i, double 0.000000e+00, double %phi.cast44.i, !dbg !1443
  %cmp16.i = fcmp ugt double %spec.select, 3.276750e+04, !dbg !1444
  br i1 %cmp16.i, label %if.end14, label %ComparePixels.exit, !dbg !1446

if.then24.i:                                      ; preds = %SetMagickPixelPacket.exit304
  %cmp26.i = fcmp ogt double %spec.select530, 3.276750e+04, !dbg !1447
  br i1 %cmp26.i, label %if.end14, label %if.end29.i, !dbg !1451

if.end29.i:                                       ; preds = %if.then24.i
  %call30.i = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1452
  %cmp31.i = icmp eq i32 %call30.i, 0, !dbg !1453
  br i1 %cmp31.i, label %for.end, label %ComparePixels.exit.if.end14_crit_edge, !dbg !1430

ComparePixels.exit:                               ; preds = %if.then14.i
  %cmp19.i = fcmp ogt double %spec.select530, 3.276750e+04, !dbg !1454
  br i1 %cmp19.i, label %for.end, label %ComparePixels.exit.if.end14_crit_edge, !dbg !1430

ComparePixels.exit.if.end14_crit_edge:            ; preds = %if.end29.i, %ComparePixels.exit
  %.pre586 = load i64, ptr %rows, align 8, !dbg !1341, !tbaa !727
  br label %if.end14, !dbg !1430

if.end14:                                         ; preds = %ComparePixels.exit.if.end14_crit_edge, %SetMagickPixelPacket.exit304, %if.then24.i, %if.then14.i
  %30 = phi i64 [ %.pre586, %ComparePixels.exit.if.end14_crit_edge ], [ %17, %SetMagickPixelPacket.exit304 ], [ %17, %if.then24.i ], [ %17, %if.then14.i ], !dbg !1341
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0535, i64 1, !dbg !1431
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr15 = getelementptr inbounds %struct._PixelPacket, ptr %q.0536, i64 1, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %incdec.ptr15, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc = add nuw nsw i64 %y.0537, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1318, metadata !DIExpression()), !dbg !1319
  %cmp9 = icmp slt i64 %inc, %30, !dbg !1344
  br i1 %cmp9, label %for.body10, label %for.end, !dbg !1345, !llvm.loop !1434

for.end:                                          ; preds = %if.end14, %ComparePixels.exit, %if.end29.i, %if.end14.us, %SetMagickPixelPacket.exit304.us, %if.end
  %y.0.lcssa = phi i64 [ 0, %if.end ], [ %y.0537.us, %SetMagickPixelPacket.exit304.us ], [ %inc.us, %if.end14.us ], [ %y.0537, %if.end29.i ], [ %y.0537, %ComparePixels.exit ], [ %inc, %if.end14 ], !dbg !1455
  %31 = load i64, ptr %rows, align 8, !dbg !1456, !tbaa !727
  %cmp17 = icmp slt i64 %y.0.lcssa, %31, !dbg !1458
  br i1 %cmp17, label %for.end22.loopexit, label %for.inc20, !dbg !1459

for.inc20:                                        ; preds = %for.end
  %inc21 = add nuw nsw i64 %x.0542, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !1317, metadata !DIExpression()), !dbg !1319
  %32 = load i64, ptr %columns, align 8, !dbg !1326, !tbaa !720
  %cmp = icmp slt i64 %inc21, %32, !dbg !1329
  br i1 %cmp, label %for.body, label %for.end22.loopexit, !dbg !1330, !llvm.loop !1461

for.end22.loopexit:                               ; preds = %for.end, %for.body, %for.inc20
  %x.0.lcssa.ph = phi i64 [ %inc21, %for.inc20 ], [ %x.0542, %for.body ], [ %x.0542, %for.end ]
  %.pre587 = load i64, ptr %columns, align 8, !dbg !1463, !tbaa !720
  br label %for.end22, !dbg !1326

for.end22:                                        ; preds = %for.end22.loopexit, %entry
  %33 = phi i64 [ %0, %entry ], [ %.pre587, %for.end22.loopexit ], !dbg !1463
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %x.0.lcssa.ph, %for.end22.loopexit ], !dbg !1465
  %cmp24.not = icmp slt i64 %x.0.lcssa, %33, !dbg !1466
  %x29 = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 2, !dbg !1319
  br i1 %cmp24.not, label %if.end28, label %if.then25, !dbg !1467

if.then25:                                        ; preds = %for.end22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x29, i8 -1, i64 16, i1 false), !dbg !1468
  store i64 1, ptr %agg.result, align 8, !dbg !1470, !tbaa !966
  br label %cleanup, !dbg !1471

if.end28:                                         ; preds = %for.end22
  store i64 %x.0.lcssa, ptr %x29, align 8, !dbg !1472, !tbaa !958
  call void @llvm.dbg.value(metadata i64 %33, metadata !1317, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1319
  %rows34 = getelementptr inbounds %struct._Image, ptr %image1, i64 0, i32 8
  %rows36 = getelementptr inbounds %struct._Image, ptr %image2, i64 0, i32 8
  %34 = getelementptr i8, ptr %image1, i64 4
  %red1.i310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 5
  %green3.i313 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 6
  %blue5.i315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 7
  %opacity7.i318 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 8
  %index15.i323 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 9
  %35 = getelementptr i8, ptr %image2, i64 4
  %red1.i329 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 5
  %green3.i332 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 6
  %blue5.i334 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 7
  %opacity7.i337 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 8
  %index15.i342 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 9
  %cmp.i346 = icmp eq i32 %method, 2
  %matte4.i357 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel2, i64 0, i32 2
  %matte.i350 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel1, i64 0, i32 2
  br label %for.cond31, !dbg !1473

for.cond31:                                       ; preds = %for.end59, %if.end28
  %x.1.in = phi i64 [ %33, %if.end28 ], [ %x.1, %for.end59 ]
  %x.1 = add nsw i64 %x.1.in, -1, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %x.1, metadata !1317, metadata !DIExpression()), !dbg !1319
  %cmp32 = icmp sgt i64 %x.1.in, 0, !dbg !1476
  br i1 %cmp32, label %for.body33, label %for.end65thread-pre-split, !dbg !1478

for.body33:                                       ; preds = %for.cond31
  %36 = load i64, ptr %rows34, align 8, !dbg !1479, !tbaa !727
  %call35 = call ptr @GetVirtualPixels(ptr noundef nonnull %image1, i64 noundef %x.1, i64 noundef 0, i64 noundef 1, i64 noundef %36, ptr noundef %exception) #7, !dbg !1481
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1315, metadata !DIExpression()), !dbg !1319
  %37 = load i64, ptr %rows36, align 8, !dbg !1482, !tbaa !727
  %call37 = call ptr @GetVirtualPixels(ptr noundef %image2, i64 noundef %x.1, i64 noundef 0, i64 noundef 1, i64 noundef %37, ptr noundef %exception) #7, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1316, metadata !DIExpression()), !dbg !1319
  %cmp38 = icmp eq ptr %call35, null, !dbg !1484
  %cmp40 = icmp eq ptr %call37, null
  %or.cond156 = select i1 %cmp38, i1 true, i1 %cmp40, !dbg !1486
  br i1 %or.cond156, label %for.end65thread-pre-split, label %if.end42, !dbg !1486

if.end42:                                         ; preds = %for.body33
  %call43 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image1) #7, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1313, metadata !DIExpression()), !dbg !1319
  %call44 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image2) #7, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1315, metadata !DIExpression()), !dbg !1319
  %38 = load i64, ptr %rows34, align 8, !dbg !1489, !tbaa !727
  %cmp47546 = icmp sgt i64 %38, 0, !dbg !1492
  br i1 %cmp47546, label %for.body48.lr.ph, label %for.end59, !dbg !1493

for.body48.lr.ph:                                 ; preds = %if.end42
  %cmp9.i320 = icmp ne ptr %call43, null
  %add.ptr49 = getelementptr inbounds i16, ptr %call43, i64 %x.1
  %cmp9.i339 = icmp ne ptr %call44, null
  %add.ptr50 = getelementptr inbounds i16, ptr %call44, i64 %x.1
  br i1 %cmp.i346, label %for.body48.us, label %for.body48, !dbg !1494

for.body48.us:                                    ; preds = %for.body48.lr.ph, %if.end54.us
  %y.1549.us = phi i64 [ %inc58.us, %if.end54.us ], [ 0, %for.body48.lr.ph ]
  %q.1548.us = phi ptr [ %incdec.ptr56.us, %if.end54.us ], [ %call37, %for.body48.lr.ph ]
  %p.1547.us = phi ptr [ %incdec.ptr55.us, %if.end54.us ], [ %call35, %for.body48.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.1549.us, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.1548.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.1547.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val284.us = load i32, ptr %34, align 4, !dbg !1498, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata ptr %p.1547.us, metadata !1370, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call43, i64 %x.1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1499
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1499
  %red.i308.us = getelementptr inbounds %struct._PixelPacket, ptr %p.1547.us, i64 0, i32 2, !dbg !1501
  %39 = load i16, ptr %red.i308.us, align 2, !dbg !1501, !tbaa !1376
  %conv.i309.us = uitofp i16 %39 to float, !dbg !1502
  store float %conv.i309.us, ptr %red1.i310, align 8, !dbg !1503, !tbaa !1379
  %green.i311.us = getelementptr inbounds %struct._PixelPacket, ptr %p.1547.us, i64 0, i32 1, !dbg !1504
  %40 = load i16, ptr %green.i311.us, align 2, !dbg !1504, !tbaa !1383
  %conv2.i312.us = uitofp i16 %40 to float, !dbg !1505
  store float %conv2.i312.us, ptr %green3.i313, align 4, !dbg !1506, !tbaa !1386
  %41 = load i16, ptr %p.1547.us, align 2, !dbg !1507, !tbaa !1388
  %conv4.i314.us = uitofp i16 %41 to float, !dbg !1508
  store float %conv4.i314.us, ptr %blue5.i315, align 8, !dbg !1509, !tbaa !1391
  %opacity.i316.us = getelementptr inbounds %struct._PixelPacket, ptr %p.1547.us, i64 0, i32 3, !dbg !1510
  %42 = load i16, ptr %opacity.i316.us, align 2, !dbg !1510, !tbaa !828
  %conv6.i317.us = uitofp i16 %42 to float, !dbg !1511
  store float %conv6.i317.us, ptr %opacity7.i318, align 4, !dbg !1512, !tbaa !1395
  %cmp.i319.us = icmp eq i32 %image1.val284.us, 12, !dbg !1513
  %or.cond.i321.us = and i1 %cmp9.i320, %cmp.i319.us, !dbg !1514
  br i1 %or.cond.i321.us, label %cond.end.i324.us, label %SetMagickPixelPacket.exit326.us, !dbg !1514

cond.end.i324.us:                                 ; preds = %for.body48.us
  call void @llvm.dbg.value(metadata ptr %add.ptr49, metadata !1371, metadata !DIExpression()), !dbg !1499
  %43 = load i16, ptr %add.ptr49, align 2, !dbg !1515, !tbaa !1400
  %conv14.i322.us = uitofp i16 %43 to float, !dbg !1516
  store float %conv14.i322.us, ptr %index15.i323, align 8, !dbg !1517, !tbaa !1403
  br label %SetMagickPixelPacket.exit326.us, !dbg !1518

SetMagickPixelPacket.exit326.us:                  ; preds = %cond.end.i324.us, %for.body48.us
  %image2.val283.us = load i32, ptr %35, align 4, !dbg !1519, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %q.1548.us, metadata !1370, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call44, i64 %x.1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1520
  %red.i327.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1548.us, i64 0, i32 2, !dbg !1522
  %44 = load i16, ptr %red.i327.us, align 2, !dbg !1522, !tbaa !1376
  %conv.i328.us = uitofp i16 %44 to float, !dbg !1523
  store float %conv.i328.us, ptr %red1.i329, align 8, !dbg !1524, !tbaa !1379
  %green.i330.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1548.us, i64 0, i32 1, !dbg !1525
  %45 = load i16, ptr %green.i330.us, align 2, !dbg !1525, !tbaa !1383
  %conv2.i331.us = uitofp i16 %45 to float, !dbg !1526
  store float %conv2.i331.us, ptr %green3.i332, align 4, !dbg !1527, !tbaa !1386
  %46 = load i16, ptr %q.1548.us, align 2, !dbg !1528, !tbaa !1388
  %conv4.i333.us = uitofp i16 %46 to float, !dbg !1529
  store float %conv4.i333.us, ptr %blue5.i334, align 8, !dbg !1530, !tbaa !1391
  %opacity.i335.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1548.us, i64 0, i32 3, !dbg !1531
  %47 = load i16, ptr %opacity.i335.us, align 2, !dbg !1531, !tbaa !828
  %conv6.i336.us = uitofp i16 %47 to float, !dbg !1532
  store float %conv6.i336.us, ptr %opacity7.i337, align 4, !dbg !1533, !tbaa !1395
  %cmp.i338.us = icmp eq i32 %image2.val283.us, 12, !dbg !1534
  %or.cond.i340.us = and i1 %cmp9.i339, %cmp.i338.us, !dbg !1535
  br i1 %or.cond.i340.us, label %cond.end.i343.us, label %SetMagickPixelPacket.exit345.us, !dbg !1535

cond.end.i343.us:                                 ; preds = %SetMagickPixelPacket.exit326.us
  call void @llvm.dbg.value(metadata ptr %add.ptr50, metadata !1371, metadata !DIExpression()), !dbg !1520
  %48 = load i16, ptr %add.ptr50, align 2, !dbg !1536, !tbaa !1400
  %conv14.i341.us = uitofp i16 %48 to float, !dbg !1537
  store float %conv14.i341.us, ptr %index15.i342, align 8, !dbg !1538, !tbaa !1403
  br label %SetMagickPixelPacket.exit345.us, !dbg !1539

SetMagickPixelPacket.exit345.us:                  ; preds = %cond.end.i343.us, %SetMagickPixelPacket.exit326.us
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1540
  %call.i347.us = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1541
  %cmp1.i348.us = icmp eq i32 %call.i347.us, 0, !dbg !1542
  br i1 %cmp1.i348.us, label %for.end59, label %if.end54.us, !dbg !1543

if.end54.us:                                      ; preds = %SetMagickPixelPacket.exit345.us
  %incdec.ptr55.us = getelementptr inbounds %struct._PixelPacket, ptr %p.1547.us, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %incdec.ptr55.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr56.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1548.us, i64 1, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc58.us = add nuw nsw i64 %y.1549.us, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %inc58.us, metadata !1318, metadata !DIExpression()), !dbg !1319
  %49 = load i64, ptr %rows34, align 8, !dbg !1489, !tbaa !727
  %cmp47.us = icmp slt i64 %inc58.us, %49, !dbg !1492
  br i1 %cmp47.us, label %for.body48.us, label %for.end59, !dbg !1493, !llvm.loop !1547

for.body48:                                       ; preds = %for.body48.lr.ph, %if.end54
  %50 = phi i64 [ %63, %if.end54 ], [ %38, %for.body48.lr.ph ]
  %y.1549 = phi i64 [ %inc58, %if.end54 ], [ 0, %for.body48.lr.ph ]
  %q.1548 = phi ptr [ %incdec.ptr56, %if.end54 ], [ %call37, %for.body48.lr.ph ]
  %p.1547 = phi ptr [ %incdec.ptr55, %if.end54 ], [ %call35, %for.body48.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.1549, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.1548, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.1547, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val284 = load i32, ptr %34, align 4, !dbg !1498, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata ptr %p.1547, metadata !1370, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call43, i64 %x.1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1499
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1499
  %red.i308 = getelementptr inbounds %struct._PixelPacket, ptr %p.1547, i64 0, i32 2, !dbg !1501
  %51 = load i16, ptr %red.i308, align 2, !dbg !1501, !tbaa !1376
  %conv.i309 = uitofp i16 %51 to float, !dbg !1502
  store float %conv.i309, ptr %red1.i310, align 8, !dbg !1503, !tbaa !1379
  %green.i311 = getelementptr inbounds %struct._PixelPacket, ptr %p.1547, i64 0, i32 1, !dbg !1504
  %52 = load i16, ptr %green.i311, align 2, !dbg !1504, !tbaa !1383
  %conv2.i312 = uitofp i16 %52 to float, !dbg !1505
  store float %conv2.i312, ptr %green3.i313, align 4, !dbg !1506, !tbaa !1386
  %53 = load i16, ptr %p.1547, align 2, !dbg !1507, !tbaa !1388
  %conv4.i314 = uitofp i16 %53 to float, !dbg !1508
  store float %conv4.i314, ptr %blue5.i315, align 8, !dbg !1509, !tbaa !1391
  %opacity.i316 = getelementptr inbounds %struct._PixelPacket, ptr %p.1547, i64 0, i32 3, !dbg !1510
  %54 = load i16, ptr %opacity.i316, align 2, !dbg !1510, !tbaa !828
  %conv6.i317 = uitofp i16 %54 to float, !dbg !1511
  store float %conv6.i317, ptr %opacity7.i318, align 4, !dbg !1512, !tbaa !1395
  %cmp.i319 = icmp eq i32 %image1.val284, 12, !dbg !1513
  %or.cond.i321 = and i1 %cmp9.i320, %cmp.i319, !dbg !1514
  br i1 %or.cond.i321, label %cond.end.i324, label %SetMagickPixelPacket.exit326, !dbg !1514

cond.end.i324:                                    ; preds = %for.body48
  call void @llvm.dbg.value(metadata ptr %add.ptr49, metadata !1371, metadata !DIExpression()), !dbg !1499
  %55 = load i16, ptr %add.ptr49, align 2, !dbg !1515, !tbaa !1400
  %conv14.i322 = uitofp i16 %55 to float, !dbg !1516
  store float %conv14.i322, ptr %index15.i323, align 8, !dbg !1517, !tbaa !1403
  br label %SetMagickPixelPacket.exit326, !dbg !1518

SetMagickPixelPacket.exit326:                     ; preds = %for.body48, %cond.end.i324
  %image2.val283 = load i32, ptr %35, align 4, !dbg !1519, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %q.1548, metadata !1370, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call44, i64 %x.1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1520
  %red.i327 = getelementptr inbounds %struct._PixelPacket, ptr %q.1548, i64 0, i32 2, !dbg !1522
  %56 = load i16, ptr %red.i327, align 2, !dbg !1522, !tbaa !1376
  %conv.i328 = uitofp i16 %56 to float, !dbg !1523
  store float %conv.i328, ptr %red1.i329, align 8, !dbg !1524, !tbaa !1379
  %green.i330 = getelementptr inbounds %struct._PixelPacket, ptr %q.1548, i64 0, i32 1, !dbg !1525
  %57 = load i16, ptr %green.i330, align 2, !dbg !1525, !tbaa !1383
  %conv2.i331 = uitofp i16 %57 to float, !dbg !1526
  store float %conv2.i331, ptr %green3.i332, align 4, !dbg !1527, !tbaa !1386
  %58 = load i16, ptr %q.1548, align 2, !dbg !1528, !tbaa !1388
  %conv4.i333 = uitofp i16 %58 to float, !dbg !1529
  store float %conv4.i333, ptr %blue5.i334, align 8, !dbg !1530, !tbaa !1391
  %opacity.i335 = getelementptr inbounds %struct._PixelPacket, ptr %q.1548, i64 0, i32 3, !dbg !1531
  %59 = load i16, ptr %opacity.i335, align 2, !dbg !1531, !tbaa !828
  %conv6.i336 = uitofp i16 %59 to float, !dbg !1532
  store float %conv6.i336, ptr %opacity7.i337, align 4, !dbg !1533, !tbaa !1395
  %cmp.i338 = icmp eq i32 %image2.val283, 12, !dbg !1534
  %or.cond.i340 = and i1 %cmp9.i339, %cmp.i338, !dbg !1535
  br i1 %or.cond.i340, label %cond.end.i343, label %SetMagickPixelPacket.exit345, !dbg !1535

cond.end.i343:                                    ; preds = %SetMagickPixelPacket.exit326
  call void @llvm.dbg.value(metadata ptr %add.ptr50, metadata !1371, metadata !DIExpression()), !dbg !1520
  %60 = load i16, ptr %add.ptr50, align 2, !dbg !1536, !tbaa !1400
  %conv14.i341 = uitofp i16 %60 to float, !dbg !1537
  store float %conv14.i341, ptr %index15.i342, align 8, !dbg !1538, !tbaa !1403
  br label %SetMagickPixelPacket.exit345, !dbg !1539

SetMagickPixelPacket.exit345:                     ; preds = %SetMagickPixelPacket.exit326, %cond.end.i343
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1540
  call void @llvm.dbg.value(metadata float undef, metadata !1356, metadata !DIExpression()) #7, !dbg !1540
  %61 = load i32, ptr %matte4.i357, align 8, !dbg !1549, !tbaa !1437
  %cmp5.not.i358 = icmp eq i32 %61, 0, !dbg !1550
  %phi.cast.i361 = uitofp i16 %59 to double
  %spec.select531 = select i1 %cmp5.not.i358, double 0.000000e+00, double %phi.cast.i361, !dbg !1551
  call void @llvm.dbg.value(metadata float undef, metadata !1357, metadata !DIExpression()) #7, !dbg !1540
  switch i32 %method, label %if.end54 [
    i32 3, label %if.then14.i366
    i32 4, label %if.then24.i370
  ], !dbg !1552

if.then14.i366:                                   ; preds = %SetMagickPixelPacket.exit345
  %62 = load i32, ptr %matte.i350, align 8, !dbg !1553, !tbaa !1437
  %cmp2.not.i351 = icmp eq i32 %62, 0, !dbg !1554
  %phi.cast44.i354 = uitofp i16 %54 to double
  %spec.select527 = select i1 %cmp2.not.i351, double 0.000000e+00, double %phi.cast44.i354, !dbg !1555
  %cmp16.i365 = fcmp ugt double %spec.select527, 3.276750e+04, !dbg !1556
  br i1 %cmp16.i365, label %if.end54, label %ComparePixels.exit376, !dbg !1557

if.then24.i370:                                   ; preds = %SetMagickPixelPacket.exit345
  %cmp26.i369 = fcmp ogt double %spec.select531, 3.276750e+04, !dbg !1558
  br i1 %cmp26.i369, label %if.end54, label %if.end29.i373, !dbg !1559

if.end29.i373:                                    ; preds = %if.then24.i370
  %call30.i371 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1560
  %cmp31.i372 = icmp eq i32 %call30.i371, 0, !dbg !1561
  br i1 %cmp31.i372, label %for.end59, label %ComparePixels.exit376.if.end54_crit_edge, !dbg !1543

ComparePixels.exit376:                            ; preds = %if.then14.i366
  %cmp19.i367 = fcmp ogt double %spec.select531, 3.276750e+04, !dbg !1562
  br i1 %cmp19.i367, label %for.end59, label %ComparePixels.exit376.if.end54_crit_edge, !dbg !1543

ComparePixels.exit376.if.end54_crit_edge:         ; preds = %if.end29.i373, %ComparePixels.exit376
  %.pre588 = load i64, ptr %rows34, align 8, !dbg !1489, !tbaa !727
  br label %if.end54, !dbg !1543

if.end54:                                         ; preds = %ComparePixels.exit376.if.end54_crit_edge, %SetMagickPixelPacket.exit345, %if.then24.i370, %if.then14.i366
  %63 = phi i64 [ %.pre588, %ComparePixels.exit376.if.end54_crit_edge ], [ %50, %SetMagickPixelPacket.exit345 ], [ %50, %if.then24.i370 ], [ %50, %if.then14.i366 ], !dbg !1489
  %incdec.ptr55 = getelementptr inbounds %struct._PixelPacket, ptr %p.1547, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %incdec.ptr55, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr56 = getelementptr inbounds %struct._PixelPacket, ptr %q.1548, i64 1, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc58 = add nuw nsw i64 %y.1549, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %inc58, metadata !1318, metadata !DIExpression()), !dbg !1319
  %cmp47 = icmp slt i64 %inc58, %63, !dbg !1492
  br i1 %cmp47, label %for.body48, label %for.end59, !dbg !1493, !llvm.loop !1547

for.end59:                                        ; preds = %if.end54, %ComparePixels.exit376, %if.end29.i373, %if.end54.us, %SetMagickPixelPacket.exit345.us, %if.end42
  %y.1.lcssa = phi i64 [ 0, %if.end42 ], [ %y.1549.us, %SetMagickPixelPacket.exit345.us ], [ %inc58.us, %if.end54.us ], [ %y.1549, %if.end29.i373 ], [ %y.1549, %ComparePixels.exit376 ], [ %inc58, %if.end54 ], !dbg !1563
  %64 = load i64, ptr %rows34, align 8, !dbg !1564, !tbaa !727
  %cmp61 = icmp slt i64 %y.1.lcssa, %64, !dbg !1566
  br i1 %cmp61, label %for.end65, label %for.cond31, !dbg !1567, !llvm.loop !1568

for.end65thread-pre-split:                        ; preds = %for.cond31, %for.body33
  %x.1.in.lcssa.ph = phi i64 [ 0, %for.cond31 ], [ %x.1.in, %for.body33 ]
  %.pr = load i64, ptr %rows34, align 8, !dbg !1570, !tbaa !727
  br label %for.end65, !dbg !1573

for.end65:                                        ; preds = %for.end59, %for.end65thread-pre-split
  %65 = phi i64 [ %.pr, %for.end65thread-pre-split ], [ %64, %for.end59 ], !dbg !1570
  %x.1.in.lcssa = phi i64 [ %x.1.in.lcssa.ph, %for.end65thread-pre-split ], [ %x.1.in, %for.end59 ]
  %66 = sub i64 %x.1.in.lcssa, %x.0.lcssa, !dbg !1573
  store i64 %66, ptr %agg.result, align 8, !dbg !1574, !tbaa !966
  call void @llvm.dbg.value(metadata i64 0, metadata !1318, metadata !DIExpression()), !dbg !1319
  %cmp71564 = icmp sgt i64 %65, 0, !dbg !1575
  br i1 %cmp71564, label %for.body72.lr.ph, label %for.end105, !dbg !1576

for.body72.lr.ph:                                 ; preds = %for.end65
  %columns75 = getelementptr inbounds %struct._Image, ptr %image2, i64 0, i32 7
  %.pre589 = load i64, ptr %columns, align 8, !dbg !1577, !tbaa !720
  br label %for.body72, !dbg !1576

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc103
  %67 = phi i64 [ %.pre589, %for.body72.lr.ph ], [ %95, %for.inc103 ], !dbg !1577
  %y.2565 = phi i64 [ 0, %for.body72.lr.ph ], [ %inc104, %for.inc103 ]
  call void @llvm.dbg.value(metadata i64 %y.2565, metadata !1318, metadata !DIExpression()), !dbg !1319
  %call74 = call ptr @GetVirtualPixels(ptr noundef nonnull %image1, i64 noundef 0, i64 noundef %y.2565, i64 noundef %67, i64 noundef 1, ptr noundef %exception) #7, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1315, metadata !DIExpression()), !dbg !1319
  %68 = load i64, ptr %columns75, align 8, !dbg !1580, !tbaa !720
  %call76 = call ptr @GetVirtualPixels(ptr noundef %image2, i64 noundef 0, i64 noundef %y.2565, i64 noundef %68, i64 noundef 1, ptr noundef %exception) #7, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1316, metadata !DIExpression()), !dbg !1319
  %cmp77 = icmp eq ptr %call74, null, !dbg !1582
  %cmp79 = icmp eq ptr %call76, null
  %or.cond157 = select i1 %cmp77, i1 true, i1 %cmp79, !dbg !1584
  br i1 %or.cond157, label %for.end105.loopexit, label %if.end81, !dbg !1584

if.end81:                                         ; preds = %for.body72
  %call82 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image1) #7, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %call82, metadata !1313, metadata !DIExpression()), !dbg !1319
  %call83 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image2) #7, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %call83, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1315, metadata !DIExpression()), !dbg !1319
  %69 = load i64, ptr %columns, align 8, !dbg !1587, !tbaa !720
  %cmp86555 = icmp sgt i64 %69, 0, !dbg !1590
  br i1 %cmp86555, label %for.body87.lr.ph, label %for.end98, !dbg !1591

for.body87.lr.ph:                                 ; preds = %if.end81
  %cmp9.i389 = icmp ne ptr %call82, null
  %cmp9.i408 = icmp ne ptr %call83, null
  br i1 %cmp.i346, label %for.body87.us, label %for.body87, !dbg !1592

for.body87.us:                                    ; preds = %for.body87.lr.ph, %if.end93.us
  %x.2558.us = phi i64 [ %inc97.us, %if.end93.us ], [ 0, %for.body87.lr.ph ]
  %q.2557.us = phi ptr [ %incdec.ptr95.us, %if.end93.us ], [ %call76, %for.body87.lr.ph ]
  %p.2556.us = phi ptr [ %incdec.ptr94.us, %if.end93.us ], [ %call74, %for.body87.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2558.us, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.2557.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.2556.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val282.us = load i32, ptr %34, align 4, !dbg !1596, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %p.2556.us, metadata !1370, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call82, i64 %x.2558.us), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1597
  %red.i377.us = getelementptr inbounds %struct._PixelPacket, ptr %p.2556.us, i64 0, i32 2, !dbg !1599
  %70 = load i16, ptr %red.i377.us, align 2, !dbg !1599, !tbaa !1376
  %conv.i378.us = uitofp i16 %70 to float, !dbg !1600
  store float %conv.i378.us, ptr %red1.i310, align 8, !dbg !1601, !tbaa !1379
  %green.i380.us = getelementptr inbounds %struct._PixelPacket, ptr %p.2556.us, i64 0, i32 1, !dbg !1602
  %71 = load i16, ptr %green.i380.us, align 2, !dbg !1602, !tbaa !1383
  %conv2.i381.us = uitofp i16 %71 to float, !dbg !1603
  store float %conv2.i381.us, ptr %green3.i313, align 4, !dbg !1604, !tbaa !1386
  %72 = load i16, ptr %p.2556.us, align 2, !dbg !1605, !tbaa !1388
  %conv4.i383.us = uitofp i16 %72 to float, !dbg !1606
  store float %conv4.i383.us, ptr %blue5.i315, align 8, !dbg !1607, !tbaa !1391
  %opacity.i385.us = getelementptr inbounds %struct._PixelPacket, ptr %p.2556.us, i64 0, i32 3, !dbg !1608
  %73 = load i16, ptr %opacity.i385.us, align 2, !dbg !1608, !tbaa !828
  %conv6.i386.us = uitofp i16 %73 to float, !dbg !1609
  store float %conv6.i386.us, ptr %opacity7.i318, align 4, !dbg !1610, !tbaa !1395
  %cmp.i388.us = icmp eq i32 %image1.val282.us, 12, !dbg !1611
  %or.cond.i390.us = and i1 %cmp9.i389, %cmp.i388.us, !dbg !1612
  br i1 %or.cond.i390.us, label %cond.end.i393.us, label %SetMagickPixelPacket.exit395.us, !dbg !1612

cond.end.i393.us:                                 ; preds = %for.body87.us
  %add.ptr88.us = getelementptr inbounds i16, ptr %call82, i64 %x.2558.us, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %add.ptr88.us, metadata !1371, metadata !DIExpression()), !dbg !1597
  %74 = load i16, ptr %add.ptr88.us, align 2, !dbg !1614, !tbaa !1400
  %conv14.i391.us = uitofp i16 %74 to float, !dbg !1615
  store float %conv14.i391.us, ptr %index15.i323, align 8, !dbg !1616, !tbaa !1403
  br label %SetMagickPixelPacket.exit395.us, !dbg !1617

SetMagickPixelPacket.exit395.us:                  ; preds = %cond.end.i393.us, %for.body87.us
  %image2.val281.us = load i32, ptr %35, align 4, !dbg !1618, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %q.2557.us, metadata !1370, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call83, i64 %x.2558.us), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1619
  %red.i396.us = getelementptr inbounds %struct._PixelPacket, ptr %q.2557.us, i64 0, i32 2, !dbg !1621
  %75 = load i16, ptr %red.i396.us, align 2, !dbg !1621, !tbaa !1376
  %conv.i397.us = uitofp i16 %75 to float, !dbg !1622
  store float %conv.i397.us, ptr %red1.i329, align 8, !dbg !1623, !tbaa !1379
  %green.i399.us = getelementptr inbounds %struct._PixelPacket, ptr %q.2557.us, i64 0, i32 1, !dbg !1624
  %76 = load i16, ptr %green.i399.us, align 2, !dbg !1624, !tbaa !1383
  %conv2.i400.us = uitofp i16 %76 to float, !dbg !1625
  store float %conv2.i400.us, ptr %green3.i332, align 4, !dbg !1626, !tbaa !1386
  %77 = load i16, ptr %q.2557.us, align 2, !dbg !1627, !tbaa !1388
  %conv4.i402.us = uitofp i16 %77 to float, !dbg !1628
  store float %conv4.i402.us, ptr %blue5.i334, align 8, !dbg !1629, !tbaa !1391
  %opacity.i404.us = getelementptr inbounds %struct._PixelPacket, ptr %q.2557.us, i64 0, i32 3, !dbg !1630
  %78 = load i16, ptr %opacity.i404.us, align 2, !dbg !1630, !tbaa !828
  %conv6.i405.us = uitofp i16 %78 to float, !dbg !1631
  store float %conv6.i405.us, ptr %opacity7.i337, align 4, !dbg !1632, !tbaa !1395
  %cmp.i407.us = icmp eq i32 %image2.val281.us, 12, !dbg !1633
  %or.cond.i409.us = and i1 %cmp9.i408, %cmp.i407.us, !dbg !1634
  br i1 %or.cond.i409.us, label %cond.end.i412.us, label %SetMagickPixelPacket.exit414.us, !dbg !1634

cond.end.i412.us:                                 ; preds = %SetMagickPixelPacket.exit395.us
  %add.ptr89.us = getelementptr inbounds i16, ptr %call83, i64 %x.2558.us, !dbg !1635
  call void @llvm.dbg.value(metadata ptr %add.ptr89.us, metadata !1371, metadata !DIExpression()), !dbg !1619
  %79 = load i16, ptr %add.ptr89.us, align 2, !dbg !1636, !tbaa !1400
  %conv14.i410.us = uitofp i16 %79 to float, !dbg !1637
  store float %conv14.i410.us, ptr %index15.i342, align 8, !dbg !1638, !tbaa !1403
  br label %SetMagickPixelPacket.exit414.us, !dbg !1639

SetMagickPixelPacket.exit414.us:                  ; preds = %cond.end.i412.us, %SetMagickPixelPacket.exit395.us
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1640
  %call.i416.us = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1641
  %cmp1.i417.us = icmp eq i32 %call.i416.us, 0, !dbg !1642
  br i1 %cmp1.i417.us, label %for.end98, label %if.end93.us, !dbg !1643

if.end93.us:                                      ; preds = %SetMagickPixelPacket.exit414.us
  %incdec.ptr94.us = getelementptr inbounds %struct._PixelPacket, ptr %p.2556.us, i64 1, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr94.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr95.us = getelementptr inbounds %struct._PixelPacket, ptr %q.2557.us, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %incdec.ptr95.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc97.us = add nuw nsw i64 %x.2558.us, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %inc97.us, metadata !1317, metadata !DIExpression()), !dbg !1319
  %80 = load i64, ptr %columns, align 8, !dbg !1587, !tbaa !720
  %cmp86.us = icmp slt i64 %inc97.us, %80, !dbg !1590
  br i1 %cmp86.us, label %for.body87.us, label %for.end98, !dbg !1591, !llvm.loop !1647

for.body87:                                       ; preds = %for.body87.lr.ph, %if.end93
  %81 = phi i64 [ %94, %if.end93 ], [ %69, %for.body87.lr.ph ]
  %x.2558 = phi i64 [ %inc97, %if.end93 ], [ 0, %for.body87.lr.ph ]
  %q.2557 = phi ptr [ %incdec.ptr95, %if.end93 ], [ %call76, %for.body87.lr.ph ]
  %p.2556 = phi ptr [ %incdec.ptr94, %if.end93 ], [ %call74, %for.body87.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2558, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.2557, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.2556, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val282 = load i32, ptr %34, align 4, !dbg !1596, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %p.2556, metadata !1370, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call82, i64 %x.2558), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1597
  %red.i377 = getelementptr inbounds %struct._PixelPacket, ptr %p.2556, i64 0, i32 2, !dbg !1599
  %82 = load i16, ptr %red.i377, align 2, !dbg !1599, !tbaa !1376
  %conv.i378 = uitofp i16 %82 to float, !dbg !1600
  store float %conv.i378, ptr %red1.i310, align 8, !dbg !1601, !tbaa !1379
  %green.i380 = getelementptr inbounds %struct._PixelPacket, ptr %p.2556, i64 0, i32 1, !dbg !1602
  %83 = load i16, ptr %green.i380, align 2, !dbg !1602, !tbaa !1383
  %conv2.i381 = uitofp i16 %83 to float, !dbg !1603
  store float %conv2.i381, ptr %green3.i313, align 4, !dbg !1604, !tbaa !1386
  %84 = load i16, ptr %p.2556, align 2, !dbg !1605, !tbaa !1388
  %conv4.i383 = uitofp i16 %84 to float, !dbg !1606
  store float %conv4.i383, ptr %blue5.i315, align 8, !dbg !1607, !tbaa !1391
  %opacity.i385 = getelementptr inbounds %struct._PixelPacket, ptr %p.2556, i64 0, i32 3, !dbg !1608
  %85 = load i16, ptr %opacity.i385, align 2, !dbg !1608, !tbaa !828
  %conv6.i386 = uitofp i16 %85 to float, !dbg !1609
  store float %conv6.i386, ptr %opacity7.i318, align 4, !dbg !1610, !tbaa !1395
  %cmp.i388 = icmp eq i32 %image1.val282, 12, !dbg !1611
  %or.cond.i390 = and i1 %cmp9.i389, %cmp.i388, !dbg !1612
  br i1 %or.cond.i390, label %cond.end.i393, label %SetMagickPixelPacket.exit395, !dbg !1612

cond.end.i393:                                    ; preds = %for.body87
  %add.ptr88 = getelementptr inbounds i16, ptr %call82, i64 %x.2558, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %add.ptr88, metadata !1371, metadata !DIExpression()), !dbg !1597
  %86 = load i16, ptr %add.ptr88, align 2, !dbg !1614, !tbaa !1400
  %conv14.i391 = uitofp i16 %86 to float, !dbg !1615
  store float %conv14.i391, ptr %index15.i323, align 8, !dbg !1616, !tbaa !1403
  br label %SetMagickPixelPacket.exit395, !dbg !1617

SetMagickPixelPacket.exit395:                     ; preds = %for.body87, %cond.end.i393
  %image2.val281 = load i32, ptr %35, align 4, !dbg !1618, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %q.2557, metadata !1370, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call83, i64 %x.2558), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1619
  %red.i396 = getelementptr inbounds %struct._PixelPacket, ptr %q.2557, i64 0, i32 2, !dbg !1621
  %87 = load i16, ptr %red.i396, align 2, !dbg !1621, !tbaa !1376
  %conv.i397 = uitofp i16 %87 to float, !dbg !1622
  store float %conv.i397, ptr %red1.i329, align 8, !dbg !1623, !tbaa !1379
  %green.i399 = getelementptr inbounds %struct._PixelPacket, ptr %q.2557, i64 0, i32 1, !dbg !1624
  %88 = load i16, ptr %green.i399, align 2, !dbg !1624, !tbaa !1383
  %conv2.i400 = uitofp i16 %88 to float, !dbg !1625
  store float %conv2.i400, ptr %green3.i332, align 4, !dbg !1626, !tbaa !1386
  %89 = load i16, ptr %q.2557, align 2, !dbg !1627, !tbaa !1388
  %conv4.i402 = uitofp i16 %89 to float, !dbg !1628
  store float %conv4.i402, ptr %blue5.i334, align 8, !dbg !1629, !tbaa !1391
  %opacity.i404 = getelementptr inbounds %struct._PixelPacket, ptr %q.2557, i64 0, i32 3, !dbg !1630
  %90 = load i16, ptr %opacity.i404, align 2, !dbg !1630, !tbaa !828
  %conv6.i405 = uitofp i16 %90 to float, !dbg !1631
  store float %conv6.i405, ptr %opacity7.i337, align 4, !dbg !1632, !tbaa !1395
  %cmp.i407 = icmp eq i32 %image2.val281, 12, !dbg !1633
  %or.cond.i409 = and i1 %cmp9.i408, %cmp.i407, !dbg !1634
  br i1 %or.cond.i409, label %cond.end.i412, label %SetMagickPixelPacket.exit414, !dbg !1634

cond.end.i412:                                    ; preds = %SetMagickPixelPacket.exit395
  %add.ptr89 = getelementptr inbounds i16, ptr %call83, i64 %x.2558, !dbg !1635
  call void @llvm.dbg.value(metadata ptr %add.ptr89, metadata !1371, metadata !DIExpression()), !dbg !1619
  %91 = load i16, ptr %add.ptr89, align 2, !dbg !1636, !tbaa !1400
  %conv14.i410 = uitofp i16 %91 to float, !dbg !1637
  store float %conv14.i410, ptr %index15.i342, align 8, !dbg !1638, !tbaa !1403
  br label %SetMagickPixelPacket.exit414, !dbg !1639

SetMagickPixelPacket.exit414:                     ; preds = %SetMagickPixelPacket.exit395, %cond.end.i412
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1640
  call void @llvm.dbg.value(metadata float undef, metadata !1356, metadata !DIExpression()) #7, !dbg !1640
  %92 = load i32, ptr %matte4.i357, align 8, !dbg !1649, !tbaa !1437
  %cmp5.not.i427 = icmp eq i32 %92, 0, !dbg !1650
  %phi.cast.i430 = uitofp i16 %90 to double
  %spec.select532 = select i1 %cmp5.not.i427, double 0.000000e+00, double %phi.cast.i430, !dbg !1651
  call void @llvm.dbg.value(metadata float undef, metadata !1357, metadata !DIExpression()) #7, !dbg !1640
  switch i32 %method, label %if.end93 [
    i32 3, label %if.then14.i435
    i32 4, label %if.then24.i439
  ], !dbg !1652

if.then14.i435:                                   ; preds = %SetMagickPixelPacket.exit414
  %93 = load i32, ptr %matte.i350, align 8, !dbg !1653, !tbaa !1437
  %cmp2.not.i420 = icmp eq i32 %93, 0, !dbg !1654
  %phi.cast44.i423 = uitofp i16 %85 to double
  %spec.select528 = select i1 %cmp2.not.i420, double 0.000000e+00, double %phi.cast44.i423, !dbg !1655
  %cmp16.i434 = fcmp ugt double %spec.select528, 3.276750e+04, !dbg !1656
  br i1 %cmp16.i434, label %if.end93, label %ComparePixels.exit445, !dbg !1657

if.then24.i439:                                   ; preds = %SetMagickPixelPacket.exit414
  %cmp26.i438 = fcmp ogt double %spec.select532, 3.276750e+04, !dbg !1658
  br i1 %cmp26.i438, label %if.end93, label %if.end29.i442, !dbg !1659

if.end29.i442:                                    ; preds = %if.then24.i439
  %call30.i440 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1660
  %cmp31.i441 = icmp eq i32 %call30.i440, 0, !dbg !1661
  br i1 %cmp31.i441, label %for.end98, label %ComparePixels.exit445.if.end93_crit_edge, !dbg !1643

ComparePixels.exit445:                            ; preds = %if.then14.i435
  %cmp19.i436 = fcmp ogt double %spec.select532, 3.276750e+04, !dbg !1662
  br i1 %cmp19.i436, label %for.end98, label %ComparePixels.exit445.if.end93_crit_edge, !dbg !1643

ComparePixels.exit445.if.end93_crit_edge:         ; preds = %if.end29.i442, %ComparePixels.exit445
  %.pre590 = load i64, ptr %columns, align 8, !dbg !1587, !tbaa !720
  br label %if.end93, !dbg !1643

if.end93:                                         ; preds = %ComparePixels.exit445.if.end93_crit_edge, %SetMagickPixelPacket.exit414, %if.then24.i439, %if.then14.i435
  %94 = phi i64 [ %.pre590, %ComparePixels.exit445.if.end93_crit_edge ], [ %81, %SetMagickPixelPacket.exit414 ], [ %81, %if.then24.i439 ], [ %81, %if.then14.i435 ], !dbg !1587
  %incdec.ptr94 = getelementptr inbounds %struct._PixelPacket, ptr %p.2556, i64 1, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr94, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr95 = getelementptr inbounds %struct._PixelPacket, ptr %q.2557, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %incdec.ptr95, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc97 = add nuw nsw i64 %x.2558, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %inc97, metadata !1317, metadata !DIExpression()), !dbg !1319
  %cmp86 = icmp slt i64 %inc97, %94, !dbg !1590
  br i1 %cmp86, label %for.body87, label %for.end98, !dbg !1591, !llvm.loop !1647

for.end98:                                        ; preds = %if.end93, %ComparePixels.exit445, %if.end29.i442, %if.end93.us, %SetMagickPixelPacket.exit414.us, %if.end81
  %x.2.lcssa = phi i64 [ 0, %if.end81 ], [ %x.2558.us, %SetMagickPixelPacket.exit414.us ], [ %inc97.us, %if.end93.us ], [ %x.2558, %if.end29.i442 ], [ %x.2558, %ComparePixels.exit445 ], [ %inc97, %if.end93 ], !dbg !1663
  %95 = load i64, ptr %columns, align 8, !dbg !1664, !tbaa !720
  %cmp100 = icmp slt i64 %x.2.lcssa, %95, !dbg !1666
  br i1 %cmp100, label %for.end105.loopexit, label %for.inc103, !dbg !1667

for.inc103:                                       ; preds = %for.end98
  %inc104 = add nuw nsw i64 %y.2565, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %inc104, metadata !1318, metadata !DIExpression()), !dbg !1319
  %96 = load i64, ptr %rows34, align 8, !dbg !1570, !tbaa !727
  %cmp71 = icmp slt i64 %inc104, %96, !dbg !1575
  br i1 %cmp71, label %for.body72, label %for.end105.loopexit, !dbg !1576, !llvm.loop !1669

for.end105.loopexit:                              ; preds = %for.end98, %for.body72, %for.inc103
  %y.2.lcssa.ph = phi i64 [ %inc104, %for.inc103 ], [ %y.2565, %for.body72 ], [ %y.2565, %for.end98 ]
  %.pre591 = load i64, ptr %rows34, align 8, !dbg !1671, !tbaa !727
  br label %for.end105, !dbg !1570

for.end105:                                       ; preds = %for.end105.loopexit, %for.end65
  %97 = phi i64 [ %65, %for.end65 ], [ %.pre591, %for.end105.loopexit ], !dbg !1671
  %y.2.lcssa = phi i64 [ 0, %for.end65 ], [ %y.2.lcssa.ph, %for.end105.loopexit ], !dbg !1673
  %y106 = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 3, !dbg !1674
  store i64 %y.2.lcssa, ptr %y106, align 8, !dbg !1675, !tbaa !969
  call void @llvm.dbg.value(metadata i64 %97, metadata !1318, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1319
  %columns114 = getelementptr inbounds %struct._Image, ptr %image2, i64 0, i32 7
  br label %for.cond109, !dbg !1676

for.cond109:                                      ; preds = %for.end137, %for.end105
  %y.3.in = phi i64 [ %97, %for.end105 ], [ %y.3, %for.end137 ]
  %y.3 = add nsw i64 %y.3.in, -1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %y.3, metadata !1318, metadata !DIExpression()), !dbg !1319
  %cmp110 = icmp sgt i64 %y.3.in, 0, !dbg !1678
  br i1 %cmp110, label %for.body111, label %for.end144, !dbg !1680

for.body111:                                      ; preds = %for.cond109
  %98 = load i64, ptr %columns, align 8, !dbg !1681, !tbaa !720
  %call113 = call ptr @GetVirtualPixels(ptr noundef nonnull %image1, i64 noundef 0, i64 noundef %y.3, i64 noundef %98, i64 noundef 1, ptr noundef %exception) #7, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1315, metadata !DIExpression()), !dbg !1319
  %99 = load i64, ptr %columns114, align 8, !dbg !1684, !tbaa !720
  %call115 = call ptr @GetVirtualPixels(ptr noundef %image2, i64 noundef 0, i64 noundef %y.3, i64 noundef %99, i64 noundef 1, ptr noundef %exception) #7, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %call115, metadata !1316, metadata !DIExpression()), !dbg !1319
  %cmp116 = icmp eq ptr %call113, null, !dbg !1686
  %cmp118 = icmp eq ptr %call115, null
  %or.cond158 = select i1 %cmp116, i1 true, i1 %cmp118, !dbg !1688
  br i1 %or.cond158, label %for.end144, label %if.end120, !dbg !1688

if.end120:                                        ; preds = %for.body111
  %call121 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image1) #7, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %call121, metadata !1313, metadata !DIExpression()), !dbg !1319
  %call122 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image2) #7, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %call122, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call115, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1315, metadata !DIExpression()), !dbg !1319
  %100 = load i64, ptr %columns, align 8, !dbg !1691, !tbaa !720
  %cmp125569 = icmp sgt i64 %100, 0, !dbg !1694
  br i1 %cmp125569, label %for.body126.lr.ph, label %for.end137, !dbg !1695

for.body126.lr.ph:                                ; preds = %if.end120
  %cmp9.i458 = icmp ne ptr %call121, null
  %cmp9.i477 = icmp ne ptr %call122, null
  br i1 %cmp.i346, label %for.body126.us, label %for.body126, !dbg !1696

for.body126.us:                                   ; preds = %for.body126.lr.ph, %if.end132.us
  %x.3572.us = phi i64 [ %inc136.us, %if.end132.us ], [ 0, %for.body126.lr.ph ]
  %q.3571.us = phi ptr [ %incdec.ptr134.us, %if.end132.us ], [ %call115, %for.body126.lr.ph ]
  %p.3570.us = phi ptr [ %incdec.ptr133.us, %if.end132.us ], [ %call113, %for.body126.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.3572.us, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.3571.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.3570.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val.us = load i32, ptr %34, align 4, !dbg !1700, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata ptr %p.3570.us, metadata !1370, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call121, i64 %x.3572.us), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1701
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1701
  %red.i446.us = getelementptr inbounds %struct._PixelPacket, ptr %p.3570.us, i64 0, i32 2, !dbg !1703
  %101 = load i16, ptr %red.i446.us, align 2, !dbg !1703, !tbaa !1376
  %conv.i447.us = uitofp i16 %101 to float, !dbg !1704
  store float %conv.i447.us, ptr %red1.i310, align 8, !dbg !1705, !tbaa !1379
  %green.i449.us = getelementptr inbounds %struct._PixelPacket, ptr %p.3570.us, i64 0, i32 1, !dbg !1706
  %102 = load i16, ptr %green.i449.us, align 2, !dbg !1706, !tbaa !1383
  %conv2.i450.us = uitofp i16 %102 to float, !dbg !1707
  store float %conv2.i450.us, ptr %green3.i313, align 4, !dbg !1708, !tbaa !1386
  %103 = load i16, ptr %p.3570.us, align 2, !dbg !1709, !tbaa !1388
  %conv4.i452.us = uitofp i16 %103 to float, !dbg !1710
  store float %conv4.i452.us, ptr %blue5.i315, align 8, !dbg !1711, !tbaa !1391
  %opacity.i454.us = getelementptr inbounds %struct._PixelPacket, ptr %p.3570.us, i64 0, i32 3, !dbg !1712
  %104 = load i16, ptr %opacity.i454.us, align 2, !dbg !1712, !tbaa !828
  %conv6.i455.us = uitofp i16 %104 to float, !dbg !1713
  store float %conv6.i455.us, ptr %opacity7.i318, align 4, !dbg !1714, !tbaa !1395
  %cmp.i457.us = icmp eq i32 %image1.val.us, 12, !dbg !1715
  %or.cond.i459.us = and i1 %cmp9.i458, %cmp.i457.us, !dbg !1716
  br i1 %or.cond.i459.us, label %cond.end.i462.us, label %SetMagickPixelPacket.exit464.us, !dbg !1716

cond.end.i462.us:                                 ; preds = %for.body126.us
  %add.ptr127.us = getelementptr inbounds i16, ptr %call121, i64 %x.3572.us, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %add.ptr127.us, metadata !1371, metadata !DIExpression()), !dbg !1701
  %105 = load i16, ptr %add.ptr127.us, align 2, !dbg !1718, !tbaa !1400
  %conv14.i460.us = uitofp i16 %105 to float, !dbg !1719
  store float %conv14.i460.us, ptr %index15.i323, align 8, !dbg !1720, !tbaa !1403
  br label %SetMagickPixelPacket.exit464.us, !dbg !1721

SetMagickPixelPacket.exit464.us:                  ; preds = %cond.end.i462.us, %for.body126.us
  %image2.val.us = load i32, ptr %35, align 4, !dbg !1722, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %q.3571.us, metadata !1370, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call122, i64 %x.3572.us), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1723
  %red.i465.us = getelementptr inbounds %struct._PixelPacket, ptr %q.3571.us, i64 0, i32 2, !dbg !1725
  %106 = load i16, ptr %red.i465.us, align 2, !dbg !1725, !tbaa !1376
  %conv.i466.us = uitofp i16 %106 to float, !dbg !1726
  store float %conv.i466.us, ptr %red1.i329, align 8, !dbg !1727, !tbaa !1379
  %green.i468.us = getelementptr inbounds %struct._PixelPacket, ptr %q.3571.us, i64 0, i32 1, !dbg !1728
  %107 = load i16, ptr %green.i468.us, align 2, !dbg !1728, !tbaa !1383
  %conv2.i469.us = uitofp i16 %107 to float, !dbg !1729
  store float %conv2.i469.us, ptr %green3.i332, align 4, !dbg !1730, !tbaa !1386
  %108 = load i16, ptr %q.3571.us, align 2, !dbg !1731, !tbaa !1388
  %conv4.i471.us = uitofp i16 %108 to float, !dbg !1732
  store float %conv4.i471.us, ptr %blue5.i334, align 8, !dbg !1733, !tbaa !1391
  %opacity.i473.us = getelementptr inbounds %struct._PixelPacket, ptr %q.3571.us, i64 0, i32 3, !dbg !1734
  %109 = load i16, ptr %opacity.i473.us, align 2, !dbg !1734, !tbaa !828
  %conv6.i474.us = uitofp i16 %109 to float, !dbg !1735
  store float %conv6.i474.us, ptr %opacity7.i337, align 4, !dbg !1736, !tbaa !1395
  %cmp.i476.us = icmp eq i32 %image2.val.us, 12, !dbg !1737
  %or.cond.i478.us = and i1 %cmp9.i477, %cmp.i476.us, !dbg !1738
  br i1 %or.cond.i478.us, label %cond.end.i481.us, label %SetMagickPixelPacket.exit483.us, !dbg !1738

cond.end.i481.us:                                 ; preds = %SetMagickPixelPacket.exit464.us
  %add.ptr128.us = getelementptr inbounds i16, ptr %call122, i64 %x.3572.us, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %add.ptr128.us, metadata !1371, metadata !DIExpression()), !dbg !1723
  %110 = load i16, ptr %add.ptr128.us, align 2, !dbg !1740, !tbaa !1400
  %conv14.i479.us = uitofp i16 %110 to float, !dbg !1741
  store float %conv14.i479.us, ptr %index15.i342, align 8, !dbg !1742, !tbaa !1403
  br label %SetMagickPixelPacket.exit483.us, !dbg !1743

SetMagickPixelPacket.exit483.us:                  ; preds = %cond.end.i481.us, %SetMagickPixelPacket.exit464.us
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1744
  %call.i485.us = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1745
  %cmp1.i486.us = icmp eq i32 %call.i485.us, 0, !dbg !1746
  br i1 %cmp1.i486.us, label %for.end137, label %if.end132.us, !dbg !1747

if.end132.us:                                     ; preds = %SetMagickPixelPacket.exit483.us
  %incdec.ptr133.us = getelementptr inbounds %struct._PixelPacket, ptr %p.3570.us, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr133.us, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr134.us = getelementptr inbounds %struct._PixelPacket, ptr %q.3571.us, i64 1, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr134.us, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc136.us = add nuw nsw i64 %x.3572.us, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %inc136.us, metadata !1317, metadata !DIExpression()), !dbg !1319
  %111 = load i64, ptr %columns, align 8, !dbg !1691, !tbaa !720
  %cmp125.us = icmp slt i64 %inc136.us, %111, !dbg !1694
  br i1 %cmp125.us, label %for.body126.us, label %for.end137, !dbg !1695, !llvm.loop !1751

for.body126:                                      ; preds = %for.body126.lr.ph, %if.end132
  %112 = phi i64 [ %125, %if.end132 ], [ %100, %for.body126.lr.ph ]
  %x.3572 = phi i64 [ %inc136, %if.end132 ], [ 0, %for.body126.lr.ph ]
  %q.3571 = phi ptr [ %incdec.ptr134, %if.end132 ], [ %call115, %for.body126.lr.ph ]
  %p.3570 = phi ptr [ %incdec.ptr133, %if.end132 ], [ %call113, %for.body126.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.3572, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %q.3571, metadata !1316, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %p.3570, metadata !1315, metadata !DIExpression()), !dbg !1319
  %image1.val = load i32, ptr %34, align 4, !dbg !1700, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata ptr %p.3570, metadata !1370, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call121, i64 %x.3572), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1701
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1372, metadata !DIExpression()), !dbg !1701
  %red.i446 = getelementptr inbounds %struct._PixelPacket, ptr %p.3570, i64 0, i32 2, !dbg !1703
  %113 = load i16, ptr %red.i446, align 2, !dbg !1703, !tbaa !1376
  %conv.i447 = uitofp i16 %113 to float, !dbg !1704
  store float %conv.i447, ptr %red1.i310, align 8, !dbg !1705, !tbaa !1379
  %green.i449 = getelementptr inbounds %struct._PixelPacket, ptr %p.3570, i64 0, i32 1, !dbg !1706
  %114 = load i16, ptr %green.i449, align 2, !dbg !1706, !tbaa !1383
  %conv2.i450 = uitofp i16 %114 to float, !dbg !1707
  store float %conv2.i450, ptr %green3.i313, align 4, !dbg !1708, !tbaa !1386
  %115 = load i16, ptr %p.3570, align 2, !dbg !1709, !tbaa !1388
  %conv4.i452 = uitofp i16 %115 to float, !dbg !1710
  store float %conv4.i452, ptr %blue5.i315, align 8, !dbg !1711, !tbaa !1391
  %opacity.i454 = getelementptr inbounds %struct._PixelPacket, ptr %p.3570, i64 0, i32 3, !dbg !1712
  %116 = load i16, ptr %opacity.i454, align 2, !dbg !1712, !tbaa !828
  %conv6.i455 = uitofp i16 %116 to float, !dbg !1713
  store float %conv6.i455, ptr %opacity7.i318, align 4, !dbg !1714, !tbaa !1395
  %cmp.i457 = icmp eq i32 %image1.val, 12, !dbg !1715
  %or.cond.i459 = and i1 %cmp9.i458, %cmp.i457, !dbg !1716
  br i1 %or.cond.i459, label %cond.end.i462, label %SetMagickPixelPacket.exit464, !dbg !1716

cond.end.i462:                                    ; preds = %for.body126
  %add.ptr127 = getelementptr inbounds i16, ptr %call121, i64 %x.3572, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %add.ptr127, metadata !1371, metadata !DIExpression()), !dbg !1701
  %117 = load i16, ptr %add.ptr127, align 2, !dbg !1718, !tbaa !1400
  %conv14.i460 = uitofp i16 %117 to float, !dbg !1719
  store float %conv14.i460, ptr %index15.i323, align 8, !dbg !1720, !tbaa !1403
  br label %SetMagickPixelPacket.exit464, !dbg !1721

SetMagickPixelPacket.exit464:                     ; preds = %for.body126, %cond.end.i462
  %image2.val = load i32, ptr %35, align 4, !dbg !1722, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %q.3571, metadata !1370, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call122, i64 %x.3572), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1372, metadata !DIExpression()), !dbg !1723
  %red.i465 = getelementptr inbounds %struct._PixelPacket, ptr %q.3571, i64 0, i32 2, !dbg !1725
  %118 = load i16, ptr %red.i465, align 2, !dbg !1725, !tbaa !1376
  %conv.i466 = uitofp i16 %118 to float, !dbg !1726
  store float %conv.i466, ptr %red1.i329, align 8, !dbg !1727, !tbaa !1379
  %green.i468 = getelementptr inbounds %struct._PixelPacket, ptr %q.3571, i64 0, i32 1, !dbg !1728
  %119 = load i16, ptr %green.i468, align 2, !dbg !1728, !tbaa !1383
  %conv2.i469 = uitofp i16 %119 to float, !dbg !1729
  store float %conv2.i469, ptr %green3.i332, align 4, !dbg !1730, !tbaa !1386
  %120 = load i16, ptr %q.3571, align 2, !dbg !1731, !tbaa !1388
  %conv4.i471 = uitofp i16 %120 to float, !dbg !1732
  store float %conv4.i471, ptr %blue5.i334, align 8, !dbg !1733, !tbaa !1391
  %opacity.i473 = getelementptr inbounds %struct._PixelPacket, ptr %q.3571, i64 0, i32 3, !dbg !1734
  %121 = load i16, ptr %opacity.i473, align 2, !dbg !1734, !tbaa !828
  %conv6.i474 = uitofp i16 %121 to float, !dbg !1735
  store float %conv6.i474, ptr %opacity7.i337, align 4, !dbg !1736, !tbaa !1395
  %cmp.i476 = icmp eq i32 %image2.val, 12, !dbg !1737
  %or.cond.i478 = and i1 %cmp9.i477, %cmp.i476, !dbg !1738
  br i1 %or.cond.i478, label %cond.end.i481, label %SetMagickPixelPacket.exit483, !dbg !1738

cond.end.i481:                                    ; preds = %SetMagickPixelPacket.exit464
  %add.ptr128 = getelementptr inbounds i16, ptr %call122, i64 %x.3572, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %add.ptr128, metadata !1371, metadata !DIExpression()), !dbg !1723
  %122 = load i16, ptr %add.ptr128, align 2, !dbg !1740, !tbaa !1400
  %conv14.i479 = uitofp i16 %122 to float, !dbg !1741
  store float %conv14.i479, ptr %index15.i342, align 8, !dbg !1742, !tbaa !1403
  br label %SetMagickPixelPacket.exit483, !dbg !1743

SetMagickPixelPacket.exit483:                     ; preds = %SetMagickPixelPacket.exit464, %cond.end.i481
  call void @llvm.dbg.value(metadata i32 %method, metadata !1353, metadata !DIExpression()) #7, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %pixel1, metadata !1354, metadata !DIExpression()) #7, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %pixel2, metadata !1355, metadata !DIExpression()) #7, !dbg !1744
  call void @llvm.dbg.value(metadata float undef, metadata !1356, metadata !DIExpression()) #7, !dbg !1744
  %123 = load i32, ptr %matte4.i357, align 8, !dbg !1753, !tbaa !1437
  %cmp5.not.i496 = icmp eq i32 %123, 0, !dbg !1754
  %phi.cast.i499 = uitofp i16 %121 to double
  %spec.select533 = select i1 %cmp5.not.i496, double 0.000000e+00, double %phi.cast.i499, !dbg !1755
  call void @llvm.dbg.value(metadata float undef, metadata !1357, metadata !DIExpression()) #7, !dbg !1744
  switch i32 %method, label %if.end132 [
    i32 3, label %if.then14.i504
    i32 4, label %if.then24.i508
  ], !dbg !1756

if.then14.i504:                                   ; preds = %SetMagickPixelPacket.exit483
  %124 = load i32, ptr %matte.i350, align 8, !dbg !1757, !tbaa !1437
  %cmp2.not.i489 = icmp eq i32 %124, 0, !dbg !1758
  %phi.cast44.i492 = uitofp i16 %116 to double
  %spec.select529 = select i1 %cmp2.not.i489, double 0.000000e+00, double %phi.cast44.i492, !dbg !1759
  %cmp16.i503 = fcmp ugt double %spec.select529, 3.276750e+04, !dbg !1760
  br i1 %cmp16.i503, label %if.end132, label %ComparePixels.exit514, !dbg !1761

if.then24.i508:                                   ; preds = %SetMagickPixelPacket.exit483
  %cmp26.i507 = fcmp ogt double %spec.select533, 3.276750e+04, !dbg !1762
  br i1 %cmp26.i507, label %if.end132, label %if.end29.i511, !dbg !1763

if.end29.i511:                                    ; preds = %if.then24.i508
  %call30.i509 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel1, ptr noundef nonnull %pixel2) #7, !dbg !1764
  %cmp31.i510 = icmp eq i32 %call30.i509, 0, !dbg !1765
  br i1 %cmp31.i510, label %for.end137, label %ComparePixels.exit514.if.end132_crit_edge, !dbg !1747

ComparePixels.exit514:                            ; preds = %if.then14.i504
  %cmp19.i505 = fcmp ogt double %spec.select533, 3.276750e+04, !dbg !1766
  br i1 %cmp19.i505, label %for.end137, label %ComparePixels.exit514.if.end132_crit_edge, !dbg !1747

ComparePixels.exit514.if.end132_crit_edge:        ; preds = %if.end29.i511, %ComparePixels.exit514
  %.pre592 = load i64, ptr %columns, align 8, !dbg !1691, !tbaa !720
  br label %if.end132, !dbg !1747

if.end132:                                        ; preds = %ComparePixels.exit514.if.end132_crit_edge, %SetMagickPixelPacket.exit483, %if.then24.i508, %if.then14.i504
  %125 = phi i64 [ %.pre592, %ComparePixels.exit514.if.end132_crit_edge ], [ %112, %SetMagickPixelPacket.exit483 ], [ %112, %if.then24.i508 ], [ %112, %if.then14.i504 ], !dbg !1691
  %incdec.ptr133 = getelementptr inbounds %struct._PixelPacket, ptr %p.3570, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr133, metadata !1315, metadata !DIExpression()), !dbg !1319
  %incdec.ptr134 = getelementptr inbounds %struct._PixelPacket, ptr %q.3571, i64 1, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr134, metadata !1316, metadata !DIExpression()), !dbg !1319
  %inc136 = add nuw nsw i64 %x.3572, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %inc136, metadata !1317, metadata !DIExpression()), !dbg !1319
  %cmp125 = icmp slt i64 %inc136, %125, !dbg !1694
  br i1 %cmp125, label %for.body126, label %for.end137, !dbg !1695, !llvm.loop !1751

for.end137:                                       ; preds = %if.end132, %ComparePixels.exit514, %if.end29.i511, %if.end132.us, %SetMagickPixelPacket.exit483.us, %if.end120
  %x.3.lcssa = phi i64 [ 0, %if.end120 ], [ %x.3572.us, %SetMagickPixelPacket.exit483.us ], [ %inc136.us, %if.end132.us ], [ %x.3572, %if.end29.i511 ], [ %x.3572, %ComparePixels.exit514 ], [ %inc136, %if.end132 ], !dbg !1767
  %126 = load i64, ptr %columns, align 8, !dbg !1768, !tbaa !720
  %cmp139 = icmp slt i64 %x.3.lcssa, %126, !dbg !1770
  br i1 %cmp139, label %for.end144, label %for.cond109, !dbg !1771, !llvm.loop !1772

for.end144:                                       ; preds = %for.end137, %for.body111, %for.cond109
  %127 = sub i64 %y.3.in, %y.2.lcssa, !dbg !1774
  br label %cleanup, !dbg !1775

cleanup:                                          ; preds = %for.end144, %if.then25
  %.sink = phi i64 [ %127, %for.end144 ], [ 1, %if.then25 ]
  %height148 = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 1, !dbg !1319
  store i64 %.sink, ptr %height148, align 8, !dbg !1319, !tbaa !962
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel2) #7, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel1) #7, !dbg !1776
  ret void, !dbg !1776
}

declare !dbg !1777 ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DeconstructImages(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1786, metadata !DIExpression()), !dbg !1787
  %call = tail call ptr @CompareImageLayers(ptr noundef %images, i32 noundef 2, ptr noundef %exception), !dbg !1788
  ret ptr %call, !dbg !1789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OptimizeImageLayers(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1790 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1792, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1793, metadata !DIExpression()), !dbg !1794
  %call = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %image, i32 noundef 7, ptr noundef %exception), !dbg !1795
  ret ptr %call, !dbg !1796
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @OptimizeLayerFrames(ptr noundef %image, i32 noundef %method, ptr noundef %exception) unnamed_addr #0 !dbg !1797 {
entry:
  %optimized_image = alloca ptr, align 8
  %tmp = alloca %struct._RectangleInfo, align 8
  %tmp59 = alloca %struct._RectangleInfo, align 8
  %tmp77 = alloca %struct._RectangleInfo, align 8
  %tmp115 = alloca %struct._RectangleInfo, align 8
  %tmp116 = alloca %struct._RectangleInfo, align 8
  %tmp160 = alloca %struct._RectangleInfo, align 8
  %tmp164 = alloca %struct._RectangleInfo, align 8
  %tmp235 = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1799, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %method, metadata !1800, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1801, metadata !DIExpression()), !dbg !1821
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %optimized_image) #7, !dbg !1822
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1823
  %0 = load i32, ptr %debug, align 8, !dbg !1823, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !1825
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1826

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1827
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 997, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1828
  br label %if.end, !dbg !1829

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i32 %method, 8, !dbg !1830
  call void @llvm.dbg.value(metadata i32 undef, metadata !1811, metadata !DIExpression()), !dbg !1821
  %call2 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %image) #7, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1815, metadata !DIExpression()), !dbg !1821
  %cmp3.not909 = icmp eq ptr %call2, null, !dbg !1832
  br i1 %cmp3.not909, label %for.end, label %for.body.lr.ph, !dbg !1835

for.body.lr.ph:                                   ; preds = %if.end
  %columns4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %rows6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  br label %for.body, !dbg !1835

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %curr.0910 = phi ptr [ %call2, %for.body.lr.ph ], [ %call13, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %curr.0910, metadata !1815, metadata !DIExpression()), !dbg !1821
  %columns = getelementptr inbounds %struct._Image, ptr %curr.0910, i64 0, i32 7, !dbg !1836
  %1 = load i64, ptr %columns, align 8, !dbg !1836, !tbaa !720
  %2 = load i64, ptr %columns4, align 8, !dbg !1839, !tbaa !720
  %cmp5.not = icmp eq i64 %1, %2, !dbg !1840
  br i1 %cmp5.not, label %lor.lhs.false, label %if.then8, !dbg !1841

lor.lhs.false:                                    ; preds = %for.body
  %rows = getelementptr inbounds %struct._Image, ptr %curr.0910, i64 0, i32 8, !dbg !1842
  %3 = load i64, ptr %rows, align 8, !dbg !1842, !tbaa !727
  %4 = load i64, ptr %rows6, align 8, !dbg !1843, !tbaa !727
  %cmp7.not = icmp eq i64 %3, %4, !dbg !1844
  br i1 %cmp7.not, label %for.inc, label %if.then8, !dbg !1845

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  %filename9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1846
  %call11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1015, i32 noundef 410, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename9) #7, !dbg !1846
  br label %cleanup, !dbg !1846

for.inc:                                          ; preds = %lor.lhs.false
  %call13 = tail call ptr @GetNextImageInList(ptr noundef nonnull %curr.0910) #7, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1815, metadata !DIExpression()), !dbg !1821
  %cmp3.not = icmp eq ptr %call13, null, !dbg !1832
  br i1 %cmp3.not, label %for.end, label %for.body, !dbg !1835, !llvm.loop !1849

for.end:                                          ; preds = %for.inc, %if.end
  %call14 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %image) #7, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1815, metadata !DIExpression()), !dbg !1821
  %call15 = tail call i64 @GetImageListLength(ptr noundef %call14) #7, !dbg !1852
  %cond17 = select i1 %cmp1, i64 2, i64 1, !dbg !1853
  %mul = shl nuw nsw i64 %cond17, 5, !dbg !1854
  %call18 = tail call ptr @AcquireQuantumMemory(i64 noundef %call15, i64 noundef %mul) #8, !dbg !1855
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1810, metadata !DIExpression()), !dbg !1821
  %cmp19 = icmp eq ptr %call18, null, !dbg !1856
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !1858

if.then20:                                        ; preds = %for.end
  %filename21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1859
  %call23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename21) #7, !dbg !1859
  br label %cleanup, !dbg !1859

if.end24:                                         ; preds = %for.end
  %call25 = tail call i64 @GetImageListLength(ptr noundef nonnull %image) #7, !dbg !1861
  %mul28 = shl nuw nsw i64 %cond17, 2, !dbg !1862
  %call29 = tail call ptr @AcquireQuantumMemory(i64 noundef %call25, i64 noundef %mul28) #8, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %call29, metadata !1814, metadata !DIExpression()), !dbg !1821
  %cmp30 = icmp eq ptr %call29, null, !dbg !1864
  br i1 %cmp30, label %if.then31, label %if.end36, !dbg !1866

if.then31:                                        ; preds = %if.end24
  %call32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1810, metadata !DIExpression()), !dbg !1821
  %filename33 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1869
  %call35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1036, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename33) #7, !dbg !1869
  br label %cleanup, !dbg !1869

if.end36:                                         ; preds = %if.end24
  %page = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 26, !dbg !1871
  %5 = load i64, ptr %page, align 8, !dbg !1872, !tbaa !1027
  %height = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 26, i32 1, !dbg !1873
  %6 = load i64, ptr %height, align 8, !dbg !1873, !tbaa !1029
  %call38 = tail call ptr @CloneImage(ptr noundef %call14, i64 noundef %5, i64 noundef %6, i32 noundef 1, ptr noundef %exception) #7, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %call38, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp39 = icmp eq ptr %call38, null, !dbg !1875
  br i1 %cmp39, label %if.then40, label %if.end43, !dbg !1877

if.then40:                                        ; preds = %if.end36
  %call41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1810, metadata !DIExpression()), !dbg !1821
  %call42 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call29) #7, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1814, metadata !DIExpression()), !dbg !1821
  br label %cleanup, !dbg !1881

if.end43:                                         ; preds = %if.end36
  %page44 = getelementptr inbounds %struct._Image, ptr %call38, i64 0, i32 26, !dbg !1882
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page44, ptr noundef nonnull align 8 dereferenceable(32) %page, i64 16, i1 false), !dbg !1883, !tbaa.struct !710
  %x = getelementptr inbounds %struct._Image, ptr %call38, i64 0, i32 26, i32 2, !dbg !1884
  %dispose = getelementptr inbounds %struct._Image, ptr %call38, i64 0, i32 37, !dbg !1885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 0, i64 16, i1 false), !dbg !1886
  store i32 1, ptr %dispose, align 4, !dbg !1887, !tbaa !742
  %opacity = getelementptr inbounds %struct._Image, ptr %call38, i64 0, i32 12, i32 3, !dbg !1888
  store i16 -1, ptr %opacity, align 2, !dbg !1889, !tbaa !1042
  %call48 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call38) #7, !dbg !1890
  store i32 1, ptr %call29, align 4, !dbg !1891, !tbaa !1892
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7, !dbg !1893
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp, ptr noundef nonnull %call38, ptr noundef nonnull %call14, i32 noundef 2, ptr noundef %exception), !dbg !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call18, ptr noundef nonnull align 8 dereferenceable(32) %tmp, i64 32, i1 false), !dbg !1893, !tbaa.struct !710
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7, !dbg !1893
  call void @llvm.dbg.value(metadata i64 1, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr null, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr null, metadata !1804, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  %call54 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call14) #7, !dbg !1894
  call void @llvm.dbg.value(metadata ptr %call54, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call38, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp56.not911 = icmp eq ptr %call54, null, !dbg !1895
  br i1 %cmp56.not911, label %for.end340, label %for.body57.lr.ph, !dbg !1898

for.body57.lr.ph:                                 ; preds = %if.end43
  %try_bounds.sroa.23.0.tmp77.sroa_idx = getelementptr inbounds i8, ptr %tmp77, i64 8
  %try_bounds.sroa.36.0.tmp77.sroa_idx = getelementptr inbounds i8, ptr %tmp77, i64 16
  %try_bounds.sroa.45.0.tmp77.sroa_idx = getelementptr inbounds i8, ptr %tmp77, i64 24
  %dup_bounds.sroa.11.0.tmp115.sroa_idx = getelementptr inbounds i8, ptr %tmp115, i64 8
  %dup_bounds.sroa.18.0.tmp115.sroa_idx = getelementptr inbounds i8, ptr %tmp115, i64 16
  %dup_bounds.sroa.21.0.tmp115.sroa_idx = getelementptr inbounds i8, ptr %tmp115, i64 24
  %try_bounds.sroa.23.0.tmp116.sroa_idx = getelementptr inbounds i8, ptr %tmp116, i64 8
  %try_bounds.sroa.36.0.tmp116.sroa_idx = getelementptr inbounds i8, ptr %tmp116, i64 16
  %try_bounds.sroa.45.0.tmp116.sroa_idx = getelementptr inbounds i8, ptr %tmp116, i64 24
  %try_bounds.sroa.23.0.tmp160.sroa_idx = getelementptr inbounds i8, ptr %tmp160, i64 8
  %try_bounds.sroa.36.0.tmp160.sroa_idx = getelementptr inbounds i8, ptr %tmp160, i64 16
  %try_bounds.sroa.45.0.tmp160.sroa_idx = getelementptr inbounds i8, ptr %tmp160, i64 24
  %try_bounds.sroa.23.0.tmp164.sroa_idx = getelementptr inbounds i8, ptr %tmp164, i64 8
  %try_bounds.sroa.36.0.tmp164.sroa_idx = getelementptr inbounds i8, ptr %tmp164, i64 16
  %try_bounds.sroa.45.0.tmp164.sroa_idx = getelementptr inbounds i8, ptr %tmp164, i64 24
  %try_bounds.sroa.23.0.tmp235.sroa_idx = getelementptr inbounds i8, ptr %tmp235, i64 8
  %try_bounds.sroa.36.0.tmp235.sroa_idx = getelementptr inbounds i8, ptr %tmp235, i64 16
  %try_bounds.sroa.45.0.tmp235.sroa_idx = getelementptr inbounds i8, ptr %tmp235, i64 24
  br label %for.body57, !dbg !1898

for.body57:                                       ; preds = %for.body57.lr.ph, %for.inc338
  %i.0929 = phi i64 [ 1, %for.body57.lr.ph ], [ %i.2, %for.inc338 ]
  %curr.1921 = phi ptr [ %call54, %for.body57.lr.ph ], [ %call339, %for.inc338 ]
  %bgnd_image.0920 = phi ptr [ null, %for.body57.lr.ph ], [ %bgnd_image.6, %for.inc338 ]
  %dup_image.0919 = phi ptr [ null, %for.body57.lr.ph ], [ %dup_image.6, %for.inc338 ]
  %prev_image.0916 = phi ptr [ %call38, %for.body57.lr.ph ], [ %prev_image.4, %for.inc338 ]
  %dup_bounds.sroa.18.0913 = phi i64 [ 0, %for.body57.lr.ph ], [ %dup_bounds.sroa.18.3, %for.inc338 ]
  %dup_bounds.sroa.21.0912 = phi i64 [ 0, %for.body57.lr.ph ], [ %dup_bounds.sroa.21.3, %for.inc338 ]
  call void @llvm.dbg.value(metadata i64 %i.0929, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %curr.1921, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %bgnd_image.0920, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.0919, metadata !1804, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %prev_image.0916, metadata !1803, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.0913, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.0912, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  %arrayidx58 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.0929, !dbg !1899
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp59) #7, !dbg !1901
  %previous = getelementptr inbounds %struct._Image, ptr %curr.1921, i64 0, i32 67, !dbg !1902
  %7 = load ptr, ptr %previous, align 8, !dbg !1902, !tbaa !787
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp59, ptr noundef %7, ptr noundef nonnull %curr.1921, i32 noundef 2, ptr noundef %exception), !dbg !1901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx58, ptr noundef nonnull align 8 dereferenceable(32) %tmp59, i64 32, i1 false), !dbg !1901, !tbaa.struct !710
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp59) #7, !dbg !1901
  %8 = load ptr, ptr %previous, align 8, !dbg !1903, !tbaa !787
  %call62 = tail call fastcc i32 @IsBoundsCleared(ptr noundef %8, ptr noundef nonnull %curr.1921, ptr noundef nonnull %arrayidx58, ptr noundef %exception), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %call62, metadata !1813, metadata !DIExpression()), !dbg !1821
  %sub = add nsw i64 %i.0929, -1, !dbg !1905
  %arrayidx63 = getelementptr inbounds i32, ptr %call29, i64 %sub, !dbg !1906
  store i32 1, ptr %arrayidx63, align 4, !dbg !1907, !tbaa !1892
  %x65 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.0929, i32 2, !dbg !1908
  %9 = load i64, ptr %x65, align 8, !dbg !1908, !tbaa !958
  %cmp66 = icmp slt i64 %9, 0, !dbg !1910
  br i1 %cmp66, label %if.then67, label %if.else, !dbg !1911

if.then67:                                        ; preds = %for.body57
  %cmp68 = icmp sgt i64 %i.0929, 1
  %or.cond = select i1 %cmp1, i1 %cmp68, i1 false, !dbg !1912
  br i1 %or.cond, label %if.then69, label %if.else295, !dbg !1912

if.then69:                                        ; preds = %if.then67
  store i32 8, ptr %arrayidx63, align 4, !dbg !1915, !tbaa !1892
  %arrayidx72 = getelementptr inbounds i32, ptr %call29, i64 %i.0929, !dbg !1917
  store i32 1, ptr %arrayidx72, align 4, !dbg !1918, !tbaa !1892
  %arrayidx75 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %sub, !dbg !1919
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx58, ptr noundef nonnull align 8 dereferenceable(32) %arrayidx75, i64 32, i1 false), !dbg !1919, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %i.0929, metadata !1816, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1821
  br label %for.inc338, !dbg !1920

if.else:                                          ; preds = %for.body57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp77) #7, !dbg !1921
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp77, ptr noundef %prev_image.0916, ptr noundef nonnull %curr.1921, i32 noundef 2, ptr noundef %exception), !dbg !1921
  %try_bounds.sroa.0.0.copyload = load i64, ptr %tmp77, align 8, !dbg !1921, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0.copyload, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %try_bounds.sroa.23.0.copyload = load i64, ptr %try_bounds.sroa.23.0.tmp77.sroa_idx, align 8, !dbg !1921, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0.copyload, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %try_bounds.sroa.36.0.copyload = load i64, ptr %try_bounds.sroa.36.0.tmp77.sroa_idx, align 8, !dbg !1921, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %try_bounds.sroa.45.0.copyload = load i64, ptr %try_bounds.sroa.45.0.tmp77.sroa_idx, align 8, !dbg !1921, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp77) #7, !dbg !1921
  call void @llvm.dbg.value(metadata ptr %prev_image.0916, metadata !860, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %curr.1921, metadata !865, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr undef, metadata !866, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %exception, metadata !867, metadata !DIExpression()) #7, !dbg !1923
  %cmp.i = icmp slt i64 %try_bounds.sroa.36.0.copyload, 0, !dbg !1925
  br i1 %cmp.i, label %IsBoundsCleared.exit, label %for.cond.preheader.i, !dbg !1926

for.cond.preheader.i:                             ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()) #7, !dbg !1923
  %cmp272.i = icmp sgt i64 %try_bounds.sroa.23.0.copyload, 0, !dbg !1927
  br i1 %cmp272.i, label %for.body.i.preheader, label %for.end34.i, !dbg !1928

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %cmp1667.i = icmp sgt i64 %try_bounds.sroa.0.0.copyload, 0
  br label %for.body.i, !dbg !1928

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc32.i
  %y.073.i = phi i64 [ %inc33.i, %for.inc32.i ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.073.i, metadata !871, metadata !DIExpression()) #7, !dbg !1923
  %add.i = add nsw i64 %y.073.i, %try_bounds.sroa.45.0.copyload, !dbg !1929
  %call.i = tail call ptr @GetVirtualPixels(ptr noundef %prev_image.0916, i64 noundef %try_bounds.sroa.36.0.copyload, i64 noundef %add.i, i64 noundef %try_bounds.sroa.0.0.copyload, i64 noundef 1, ptr noundef %exception) #7, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !868, metadata !DIExpression()) #7, !dbg !1923
  %call9.i = tail call ptr @GetVirtualPixels(ptr noundef nonnull %curr.1921, i64 noundef %try_bounds.sroa.36.0.copyload, i64 noundef %add.i, i64 noundef %try_bounds.sroa.0.0.copyload, i64 noundef 1, ptr noundef %exception) #7, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !869, metadata !DIExpression()) #7, !dbg !1923
  %cmp10.i = icmp eq ptr %call.i, null, !dbg !1932
  %cmp11.i = icmp eq ptr %call9.i, null
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp11.i, !dbg !1933
  br i1 %or.cond.i, label %for.end34.i, label %for.cond14.preheader.i, !dbg !1933

for.cond14.preheader.i:                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !869, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !868, metadata !DIExpression()) #7, !dbg !1923
  br i1 %cmp1667.i, label %for.body17.i, label %for.inc32.i, !dbg !1934

for.body17.i:                                     ; preds = %for.cond14.preheader.i, %if.end25.i
  %x.070.i = phi i64 [ %inc.i, %if.end25.i ], [ 0, %for.cond14.preheader.i ]
  %q.069.i = phi ptr [ %incdec.ptr26.i, %if.end25.i ], [ %call9.i, %for.cond14.preheader.i ]
  %p.068.i = phi ptr [ %incdec.ptr.i, %if.end25.i ], [ %call.i, %for.cond14.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %x.070.i, metadata !870, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %q.069.i, metadata !869, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %p.068.i, metadata !868, metadata !DIExpression()) #7, !dbg !1923
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i, i64 0, i32 3, !dbg !1935
  %10 = load i16, ptr %opacity.i, align 2, !dbg !1935, !tbaa !828
  %cmp18.i = icmp sgt i16 %10, -1, !dbg !1936
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end25.i, !dbg !1937

land.lhs.true.i:                                  ; preds = %for.body17.i
  %opacity20.i = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i, i64 0, i32 3, !dbg !1938
  %11 = load i16, ptr %opacity20.i, align 2, !dbg !1938, !tbaa !828
  %cmp22.i = icmp slt i16 %11, 0, !dbg !1939
  br i1 %cmp22.i, label %for.end34.i, label %if.end25.i, !dbg !1940

if.end25.i:                                       ; preds = %land.lhs.true.i, %for.body17.i
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i, i64 1, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !868, metadata !DIExpression()) #7, !dbg !1923
  %incdec.ptr26.i = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i, i64 1, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i, metadata !869, metadata !DIExpression()) #7, !dbg !1923
  %inc.i = add nuw nsw i64 %x.070.i, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !870, metadata !DIExpression()) #7, !dbg !1923
  %exitcond.not.i = icmp eq i64 %inc.i, %try_bounds.sroa.0.0.copyload, !dbg !1944
  br i1 %exitcond.not.i, label %for.inc32.i, label %for.body17.i, !dbg !1934, !llvm.loop !1945

for.inc32.i:                                      ; preds = %if.end25.i, %for.cond14.preheader.i
  %inc33.i = add nuw nsw i64 %y.073.i, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %inc33.i, metadata !871, metadata !DIExpression()) #7, !dbg !1923
  %exitcond.not = icmp eq i64 %inc33.i, %try_bounds.sroa.23.0.copyload, !dbg !1927
  br i1 %exitcond.not, label %for.end34.i, label %for.body.i, !dbg !1928, !llvm.loop !1948

for.end34.i:                                      ; preds = %for.inc32.i, %for.body.i, %land.lhs.true.i, %for.cond.preheader.i
  %y.066.i = phi i64 [ 0, %for.cond.preheader.i ], [ %y.073.i, %land.lhs.true.i ], [ %y.073.i, %for.body.i ], [ %try_bounds.sroa.23.0.copyload, %for.inc32.i ]
  %cmp36.i = icmp slt i64 %y.066.i, %try_bounds.sroa.23.0.copyload, !dbg !1950
  %cond.i = zext i1 %cmp36.i to i32, !dbg !1951
  br label %IsBoundsCleared.exit, !dbg !1952

IsBoundsCleared.exit:                             ; preds = %if.else, %for.end34.i
  %retval.0.i = phi i32 [ %cond.i, %for.end34.i ], [ 0, %if.else ], !dbg !1923
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !1812, metadata !DIExpression()), !dbg !1821
  %tobool79 = icmp eq i32 %retval.0.i, 0, !dbg !1953
  %tobool81 = icmp ne i32 %call62, 0
  %or.cond412 = select i1 %tobool79, i1 %tobool81, i1 false, !dbg !1955
  br i1 %or.cond412, label %if.then92, label %lor.lhs.false82, !dbg !1955

lor.lhs.false82:                                  ; preds = %IsBoundsCleared.exit
  %mul85 = mul i64 %try_bounds.sroa.23.0.copyload, %try_bounds.sroa.0.0.copyload, !dbg !1956
  %12 = load i64, ptr %arrayidx58, align 8, !dbg !1957, !tbaa !966
  %height89 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.0929, i32 1, !dbg !1958
  %13 = load i64, ptr %height89, align 8, !dbg !1958, !tbaa !962
  %mul90 = mul i64 %13, %12, !dbg !1959
  %cmp91 = icmp ult i64 %mul85, %mul90, !dbg !1960
  br i1 %cmp91, label %if.then92, label %if.end96, !dbg !1961

if.then92:                                        ; preds = %IsBoundsCleared.exit, %lor.lhs.false82
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !1813, metadata !DIExpression()), !dbg !1821
  store i64 %try_bounds.sroa.0.0.copyload, ptr %arrayidx58, align 8, !dbg !1962, !tbaa.struct !710
  %try_bounds.sroa.23.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 8, !dbg !1962
  store i64 %try_bounds.sroa.23.0.copyload, ptr %try_bounds.sroa.23.0.arrayidx58.sroa_idx, align 8, !dbg !1962, !tbaa.struct !712
  %try_bounds.sroa.36.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 16, !dbg !1962
  store i64 %try_bounds.sroa.36.0.copyload, ptr %try_bounds.sroa.36.0.arrayidx58.sroa_idx, align 8, !dbg !1962, !tbaa.struct !717
  %try_bounds.sroa.45.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 24, !dbg !1962
  store i64 %try_bounds.sroa.45.0.copyload, ptr %try_bounds.sroa.45.0.arrayidx58.sroa_idx, align 8, !dbg !1962, !tbaa.struct !713
  store i32 3, ptr %arrayidx63, align 4, !dbg !1964, !tbaa !1892
  br label %if.end96, !dbg !1965

if.end96:                                         ; preds = %if.then92, %lor.lhs.false82
  %cleared.0 = phi i32 [ %retval.0.i, %if.then92 ], [ %call62, %lor.lhs.false82 ], !dbg !1966
  call void @llvm.dbg.value(metadata i32 %cleared.0, metadata !1813, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  br i1 %cmp1, label %if.then100, label %if.end139, !dbg !1967

if.then100:                                       ; preds = %if.end96
  %14 = load ptr, ptr %previous, align 8, !dbg !1968, !tbaa !787
  %page103 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, !dbg !1971
  %15 = load i64, ptr %page103, align 8, !dbg !1972, !tbaa !1027
  %height107 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 1, !dbg !1973
  %16 = load i64, ptr %height107, align 8, !dbg !1973, !tbaa !1029
  %call108 = tail call ptr @CloneImage(ptr noundef %14, i64 noundef %15, i64 noundef %16, i32 noundef 1, ptr noundef %exception) #7, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1804, metadata !DIExpression()), !dbg !1821
  %cmp109 = icmp eq ptr %call108, null, !dbg !1975
  br i1 %cmp109, label %if.then110, label %if.end114, !dbg !1977

if.then110:                                       ; preds = %if.then100
  %call111 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !1978
  call void @llvm.dbg.value(metadata ptr %call111, metadata !1810, metadata !DIExpression()), !dbg !1821
  %call112 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call29) #7, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %call112, metadata !1814, metadata !DIExpression()), !dbg !1821
  %call113 = tail call ptr @DestroyImage(ptr noundef %prev_image.0916) #7, !dbg !1981
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1803, metadata !DIExpression()), !dbg !1821
  br label %cleanup, !dbg !1982

if.end114:                                        ; preds = %if.then100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp115) #7, !dbg !1983
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp115, ptr noundef nonnull %call108, ptr noundef nonnull %curr.1921, i32 noundef 3, ptr noundef %exception), !dbg !1983
  %dup_bounds.sroa.0.0.copyload = load i64, ptr %tmp115, align 8, !dbg !1983, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.0.0.copyload, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %dup_bounds.sroa.11.0.copyload = load i64, ptr %dup_bounds.sroa.11.0.tmp115.sroa_idx, align 8, !dbg !1983, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.11.0.copyload, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %dup_bounds.sroa.18.0.copyload = load i64, ptr %dup_bounds.sroa.18.0.tmp115.sroa_idx, align 8, !dbg !1983, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.0.copyload, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %dup_bounds.sroa.21.0.copyload = load i64, ptr %dup_bounds.sroa.21.0.tmp115.sroa_idx, align 8, !dbg !1983, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.0.copyload, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp115) #7, !dbg !1983
  call void @llvm.dbg.value(metadata ptr %call108, metadata !791, metadata !DIExpression()) #7, !dbg !1984
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !1984
  %cmp.i648 = icmp slt i64 %dup_bounds.sroa.18.0.copyload, 0, !dbg !1986
  br i1 %cmp.i648, label %ClearBounds.exit, label %if.end.i, !dbg !1988

if.end.i:                                         ; preds = %if.end114
  %matte.i = getelementptr inbounds %struct._Image, ptr %call108, i64 0, i32 6, !dbg !1989
  %17 = load i32, ptr %matte.i, align 8, !dbg !1989, !tbaa !735
  %cmp1.i = icmp eq i32 %17, 0, !dbg !1990
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i, !dbg !1991

if.then2.i:                                       ; preds = %if.end.i
  %call.i649 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call108, i32 noundef 6) #7, !dbg !1992
  br label %if.end3.i, !dbg !1993

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %exception4.i = getelementptr inbounds %struct._Image, ptr %call108, i64 0, i32 58, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %exception4.i, metadata !797, metadata !DIExpression()) #7, !dbg !1984
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !1984
  %cmp549.i = icmp sgt i64 %dup_bounds.sroa.11.0.copyload, 0, !dbg !1995
  br i1 %cmp549.i, label %for.body.i655.preheader, label %ClearBounds.exit, !dbg !1996

for.body.i655.preheader:                          ; preds = %if.end3.i
  %cmp1546.i = icmp sgt i64 %dup_bounds.sroa.0.0.copyload, 0
  br label %for.body.i655, !dbg !1996

for.body.i655:                                    ; preds = %for.body.i655.preheader, %for.end.i
  %y.050.i = phi i64 [ %inc23.i, %for.end.i ], [ 0, %for.body.i655.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression()) #7, !dbg !1984
  %add.i652 = add nsw i64 %y.050.i, %dup_bounds.sroa.21.0.copyload, !dbg !1997
  %call9.i653 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %call108, i64 noundef %dup_bounds.sroa.18.0.copyload, i64 noundef %add.i652, i64 noundef %dup_bounds.sroa.0.0.copyload, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !1998
  call void @llvm.dbg.value(metadata ptr %call9.i653, metadata !803, metadata !DIExpression()) #7, !dbg !1999
  %cmp10.i654 = icmp eq ptr %call9.i653, null, !dbg !2000
  br i1 %cmp10.i654, label %ClearBounds.exit, label %for.cond13.preheader.i, !dbg !2001

for.cond13.preheader.i:                           ; preds = %for.body.i655
  call void @llvm.dbg.value(metadata ptr %call9.i653, metadata !803, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !1999
  br i1 %cmp1546.i, label %for.body16.i, label %for.end.i, !dbg !2002

for.body16.i:                                     ; preds = %for.cond13.preheader.i, %for.body16.i
  %q.048.i = phi ptr [ %incdec.ptr.i657, %for.body16.i ], [ %call9.i653, %for.cond13.preheader.i ]
  %x6.047.i = phi i64 [ %inc.i658, %for.body16.i ], [ 0, %for.cond13.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %q.048.i, metadata !803, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %x6.047.i, metadata !799, metadata !DIExpression()) #7, !dbg !1999
  %opacity.i656 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i, i64 0, i32 3, !dbg !2003
  store i16 -1, ptr %opacity.i656, align 2, !dbg !2004, !tbaa !828
  %incdec.ptr.i657 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i657, metadata !803, metadata !DIExpression()) #7, !dbg !1999
  %inc.i658 = add nuw nsw i64 %x6.047.i, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %inc.i658, metadata !799, metadata !DIExpression()) #7, !dbg !1999
  %exitcond.not.i659 = icmp eq i64 %inc.i658, %dup_bounds.sroa.0.0.copyload, !dbg !2007
  br i1 %exitcond.not.i659, label %for.end.i, label %for.body16.i, !dbg !2002, !llvm.loop !2008

for.end.i:                                        ; preds = %for.body16.i, %for.cond13.preheader.i
  %call17.i = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %call108, ptr noundef nonnull %exception4.i) #7, !dbg !2010
  %cmp18.i660 = icmp ne i32 %call17.i, 0, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1984
  %inc23.i = add nuw nsw i64 %y.050.i, 1
  %cmp5.i = icmp slt i64 %inc23.i, %dup_bounds.sroa.11.0.copyload
  %or.cond896 = select i1 %cmp18.i660, i1 %cmp5.i, i1 false, !dbg !2012
  br i1 %or.cond896, label %for.body.i655, label %ClearBounds.exit, !dbg !2012, !llvm.loop !2013

ClearBounds.exit:                                 ; preds = %for.body.i655, %for.end.i, %if.end114, %if.end3.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp116) #7, !dbg !2015
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp116, ptr noundef nonnull %call108, ptr noundef nonnull %curr.1921, i32 noundef 2, ptr noundef %exception), !dbg !2015
  %try_bounds.sroa.0.0.copyload822 = load i64, ptr %tmp116, align 8, !dbg !2015, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0.copyload822, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %try_bounds.sroa.23.0.copyload829 = load i64, ptr %try_bounds.sroa.23.0.tmp116.sroa_idx, align 8, !dbg !2015, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0.copyload829, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %try_bounds.sroa.36.0.copyload848 = load i64, ptr %try_bounds.sroa.36.0.tmp116.sroa_idx, align 8, !dbg !2015, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload848, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %try_bounds.sroa.45.0.copyload862 = load i64, ptr %try_bounds.sroa.45.0.tmp116.sroa_idx, align 8, !dbg !2015, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload862, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp116) #7, !dbg !2015
  %tobool117.not = icmp eq i32 %cleared.0, 0, !dbg !2016
  br i1 %tobool117.not, label %lor.lhs.false118, label %if.then131, !dbg !2018

lor.lhs.false118:                                 ; preds = %ClearBounds.exit
  %mul121 = mul i64 %dup_bounds.sroa.11.0.copyload, %dup_bounds.sroa.0.0.copyload, !dbg !2019
  %mul124 = mul i64 %try_bounds.sroa.23.0.copyload829, %try_bounds.sroa.0.0.copyload822, !dbg !2020
  %add = add i64 %mul124, %mul121, !dbg !2021
  %18 = load i64, ptr %arrayidx58, align 8, !dbg !2022, !tbaa !966
  %height128 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.0929, i32 1, !dbg !2023
  %19 = load i64, ptr %height128, align 8, !dbg !2023, !tbaa !962
  %mul129 = mul i64 %19, %18, !dbg !2024
  %cmp130 = icmp ult i64 %add, %mul129, !dbg !2025
  br i1 %cmp130, label %if.then131, label %if.end139, !dbg !2026

if.then131:                                       ; preds = %lor.lhs.false118, %ClearBounds.exit
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1821
  store i64 %try_bounds.sroa.0.0.copyload822, ptr %arrayidx58, align 8, !dbg !2027, !tbaa.struct !710
  %try_bounds.sroa.23.0.arrayidx58.sroa_idx830 = getelementptr inbounds i8, ptr %arrayidx58, i64 8, !dbg !2027
  store i64 %try_bounds.sroa.23.0.copyload829, ptr %try_bounds.sroa.23.0.arrayidx58.sroa_idx830, align 8, !dbg !2027, !tbaa.struct !712
  %try_bounds.sroa.36.0.arrayidx58.sroa_idx849 = getelementptr inbounds i8, ptr %arrayidx58, i64 16, !dbg !2027
  store i64 %try_bounds.sroa.36.0.copyload848, ptr %try_bounds.sroa.36.0.arrayidx58.sroa_idx849, align 8, !dbg !2027, !tbaa.struct !717
  %try_bounds.sroa.45.0.arrayidx58.sroa_idx863 = getelementptr inbounds i8, ptr %arrayidx58, i64 24, !dbg !2027
  store i64 %try_bounds.sroa.45.0.copyload862, ptr %try_bounds.sroa.45.0.arrayidx58.sroa_idx863, align 8, !dbg !2027, !tbaa.struct !713
  store i32 9, ptr %arrayidx63, align 4, !dbg !2029, !tbaa !1892
  br label %if.end139, !dbg !2030

if.end139:                                        ; preds = %lor.lhs.false118, %if.then131, %if.end96
  %dup_bounds.sroa.21.1 = phi i64 [ %dup_bounds.sroa.21.0.copyload, %if.then131 ], [ %dup_bounds.sroa.21.0912, %if.end96 ], [ %dup_bounds.sroa.21.0.copyload, %lor.lhs.false118 ], !dbg !1821
  %dup_bounds.sroa.18.1 = phi i64 [ %dup_bounds.sroa.18.0.copyload, %if.then131 ], [ %dup_bounds.sroa.18.0913, %if.end96 ], [ %dup_bounds.sroa.18.0.copyload, %lor.lhs.false118 ], !dbg !1821
  %dup_bounds.sroa.11.1 = phi i64 [ %dup_bounds.sroa.11.0.copyload, %if.then131 ], [ 0, %if.end96 ], [ 0, %lor.lhs.false118 ], !dbg !2031
  %dup_bounds.sroa.0.1 = phi i64 [ %dup_bounds.sroa.0.0.copyload, %if.then131 ], [ 0, %if.end96 ], [ 0, %lor.lhs.false118 ], !dbg !2031
  %dup_image.1 = phi ptr [ %call108, %if.then131 ], [ %dup_image.0919, %if.end96 ], [ %call108, %lor.lhs.false118 ], !dbg !1821
  %cleared.1 = phi i32 [ 0, %if.then131 ], [ %cleared.0, %if.end96 ], [ 0, %lor.lhs.false118 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.0.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.11.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %cleared.1, metadata !1813, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.1, metadata !1804, metadata !DIExpression()), !dbg !1821
  %20 = load ptr, ptr %previous, align 8, !dbg !2032, !tbaa !787
  %page142 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, !dbg !2033
  %21 = load i64, ptr %page142, align 8, !dbg !2034, !tbaa !1027
  %height146 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, i32 1, !dbg !2035
  %22 = load i64, ptr %height146, align 8, !dbg !2035, !tbaa !1029
  %call147 = tail call ptr @CloneImage(ptr noundef %20, i64 noundef %21, i64 noundef %22, i32 noundef 1, ptr noundef %exception) #7, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %call147, metadata !1805, metadata !DIExpression()), !dbg !1821
  %cmp148 = icmp eq ptr %call147, null, !dbg !2037
  br i1 %cmp148, label %if.then149, label %if.end157, !dbg !2039

if.then149:                                       ; preds = %if.end139
  %call150 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !2040
  call void @llvm.dbg.value(metadata ptr %call150, metadata !1810, metadata !DIExpression()), !dbg !1821
  %call151 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call29) #7, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %call151, metadata !1814, metadata !DIExpression()), !dbg !1821
  %call152 = tail call ptr @DestroyImage(ptr noundef %prev_image.0916) #7, !dbg !2043
  call void @llvm.dbg.value(metadata ptr %call152, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp153.not = icmp eq ptr %dup_image.1, null, !dbg !2044
  br i1 %cmp153.not, label %cleanup, label %if.then154, !dbg !2046

if.then154:                                       ; preds = %if.then149
  %call155 = tail call ptr @DestroyImage(ptr noundef nonnull %dup_image.1) #7, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1804, metadata !DIExpression()), !dbg !1821
  br label %cleanup, !dbg !2048

if.end157:                                        ; preds = %if.end139
  %arrayidx159 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %sub, !dbg !2049
  %bgnd_bounds.sroa.0.0.copyload = load i64, ptr %arrayidx159, align 8, !dbg !2049, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.0.0.copyload, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %bgnd_bounds.sroa.15.0.arrayidx159.sroa_idx = getelementptr inbounds i8, ptr %arrayidx159, i64 8, !dbg !2049
  %bgnd_bounds.sroa.15.0.copyload = load i64, ptr %bgnd_bounds.sroa.15.0.arrayidx159.sroa_idx, align 8, !dbg !2049, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.15.0.copyload, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %bgnd_bounds.sroa.25.0.arrayidx159.sroa_idx = getelementptr inbounds i8, ptr %arrayidx159, i64 16, !dbg !2049
  %bgnd_bounds.sroa.25.0.copyload = load i64, ptr %bgnd_bounds.sroa.25.0.arrayidx159.sroa_idx, align 8, !dbg !2049, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.25.0.copyload, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %bgnd_bounds.sroa.31.0.arrayidx159.sroa_idx = getelementptr inbounds i8, ptr %arrayidx159, i64 24, !dbg !2049
  %bgnd_bounds.sroa.31.0.copyload = load i64, ptr %bgnd_bounds.sroa.31.0.arrayidx159.sroa_idx, align 8, !dbg !2049, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.31.0.copyload, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call147, metadata !791, metadata !DIExpression()) #7, !dbg !2050
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !2050
  %cmp.i662 = icmp slt i64 %bgnd_bounds.sroa.25.0.copyload, 0, !dbg !2052
  br i1 %cmp.i662, label %ClearBounds.exit694, label %if.end.i665, !dbg !2053

if.end.i665:                                      ; preds = %if.end157
  %matte.i663 = getelementptr inbounds %struct._Image, ptr %call147, i64 0, i32 6, !dbg !2054
  %23 = load i32, ptr %matte.i663, align 8, !dbg !2054, !tbaa !735
  %cmp1.i664 = icmp eq i32 %23, 0, !dbg !2055
  br i1 %cmp1.i664, label %if.then2.i667, label %if.end3.i671, !dbg !2056

if.then2.i667:                                    ; preds = %if.end.i665
  %call.i666 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call147, i32 noundef 6) #7, !dbg !2057
  br label %if.end3.i671, !dbg !2058

if.end3.i671:                                     ; preds = %if.then2.i667, %if.end.i665
  %exception4.i668 = getelementptr inbounds %struct._Image, ptr %call147, i64 0, i32 58, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %exception4.i668, metadata !797, metadata !DIExpression()) #7, !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !2050
  %cmp549.i670 = icmp sgt i64 %bgnd_bounds.sroa.15.0.copyload, 0, !dbg !2060
  br i1 %cmp549.i670, label %for.body.i681.preheader, label %ClearBounds.exit694, !dbg !2061

for.body.i681.preheader:                          ; preds = %if.end3.i671
  %cmp1546.i682 = icmp sgt i64 %bgnd_bounds.sroa.0.0.copyload, 0
  br label %for.body.i681, !dbg !2061

for.body.i681:                                    ; preds = %for.body.i681.preheader, %for.end.i693
  %y.050.i677 = phi i64 [ %inc23.i674, %for.end.i693 ], [ 0, %for.body.i681.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i677, metadata !798, metadata !DIExpression()) #7, !dbg !2050
  %add.i678 = add nsw i64 %y.050.i677, %bgnd_bounds.sroa.31.0.copyload, !dbg !2062
  %call9.i679 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %call147, i64 noundef %bgnd_bounds.sroa.25.0.copyload, i64 noundef %add.i678, i64 noundef %bgnd_bounds.sroa.0.0.copyload, i64 noundef 1, ptr noundef nonnull %exception4.i668) #7, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %call9.i679, metadata !803, metadata !DIExpression()) #7, !dbg !2064
  %cmp10.i680 = icmp eq ptr %call9.i679, null, !dbg !2065
  br i1 %cmp10.i680, label %ClearBounds.exit694, label %for.cond13.preheader.i683, !dbg !2066

for.cond13.preheader.i683:                        ; preds = %for.body.i681
  call void @llvm.dbg.value(metadata ptr %call9.i679, metadata !803, metadata !DIExpression()) #7, !dbg !2064
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !2064
  br i1 %cmp1546.i682, label %for.body16.i690, label %for.end.i693, !dbg !2067

for.body16.i690:                                  ; preds = %for.cond13.preheader.i683, %for.body16.i690
  %q.048.i684 = phi ptr [ %incdec.ptr.i687, %for.body16.i690 ], [ %call9.i679, %for.cond13.preheader.i683 ]
  %x6.047.i685 = phi i64 [ %inc.i688, %for.body16.i690 ], [ 0, %for.cond13.preheader.i683 ]
  call void @llvm.dbg.value(metadata ptr %q.048.i684, metadata !803, metadata !DIExpression()) #7, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %x6.047.i685, metadata !799, metadata !DIExpression()) #7, !dbg !2064
  %opacity.i686 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i684, i64 0, i32 3, !dbg !2068
  store i16 -1, ptr %opacity.i686, align 2, !dbg !2069, !tbaa !828
  %incdec.ptr.i687 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i684, i64 1, !dbg !2070
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i687, metadata !803, metadata !DIExpression()) #7, !dbg !2064
  %inc.i688 = add nuw nsw i64 %x6.047.i685, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %inc.i688, metadata !799, metadata !DIExpression()) #7, !dbg !2064
  %exitcond.not.i689 = icmp eq i64 %inc.i688, %bgnd_bounds.sroa.0.0.copyload, !dbg !2072
  br i1 %exitcond.not.i689, label %for.end.i693, label %for.body16.i690, !dbg !2067, !llvm.loop !2073

for.end.i693:                                     ; preds = %for.body16.i690, %for.cond13.preheader.i683
  %call17.i691 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %call147, ptr noundef nonnull %exception4.i668) #7, !dbg !2075
  %cmp18.i692 = icmp ne i32 %call17.i691, 0, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %y.050.i677, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2050
  %inc23.i674 = add nuw nsw i64 %y.050.i677, 1
  %cmp5.i675 = icmp slt i64 %inc23.i674, %bgnd_bounds.sroa.15.0.copyload
  %or.cond897 = select i1 %cmp18.i692, i1 %cmp5.i675, i1 false, !dbg !2077
  br i1 %or.cond897, label %for.body.i681, label %ClearBounds.exit694, !dbg !2077, !llvm.loop !2078

ClearBounds.exit694:                              ; preds = %for.body.i681, %for.end.i693, %if.end157, %if.end3.i671
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp160) #7, !dbg !2080
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp160, ptr noundef nonnull %call147, ptr noundef nonnull %curr.1921, i32 noundef 2, ptr noundef %exception), !dbg !2080
  %try_bounds.sroa.0.0.copyload824 = load i64, ptr %tmp160, align 8, !dbg !2080, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0.copyload824, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %try_bounds.sroa.23.0.copyload832 = load i64, ptr %try_bounds.sroa.23.0.tmp160.sroa_idx, align 8, !dbg !2080, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0.copyload832, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %try_bounds.sroa.36.0.copyload851 = load i64, ptr %try_bounds.sroa.36.0.tmp160.sroa_idx, align 8, !dbg !2080, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload851, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %try_bounds.sroa.45.0.copyload865 = load i64, ptr %try_bounds.sroa.45.0.tmp160.sroa_idx, align 8, !dbg !2080, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload865, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp160) #7, !dbg !2080
  call void @llvm.dbg.value(metadata ptr %call147, metadata !860, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %curr.1921, metadata !865, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr undef, metadata !866, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %exception, metadata !867, metadata !DIExpression()) #7, !dbg !2081
  %cmp.i696 = icmp slt i64 %try_bounds.sroa.36.0.copyload851, 0, !dbg !2083
  br i1 %cmp.i696, label %if.end236, label %for.cond.preheader.i699, !dbg !2084

for.cond.preheader.i699:                          ; preds = %ClearBounds.exit694
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()) #7, !dbg !2081
  %cmp272.i698 = icmp sgt i64 %try_bounds.sroa.23.0.copyload832, 0, !dbg !2085
  br i1 %cmp272.i698, label %for.body.i711.preheader, label %IsBoundsCleared.exit738, !dbg !2086

for.body.i711.preheader:                          ; preds = %for.cond.preheader.i699
  %cmp1667.i712 = icmp sgt i64 %try_bounds.sroa.0.0.copyload824, 0
  br label %for.body.i711, !dbg !2086

for.body.i711:                                    ; preds = %for.body.i711.preheader, %for.inc32.i730
  %y.073.i703 = phi i64 [ %inc33.i728, %for.inc32.i730 ], [ 0, %for.body.i711.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.073.i703, metadata !871, metadata !DIExpression()) #7, !dbg !2081
  %add.i704 = add nsw i64 %y.073.i703, %try_bounds.sroa.45.0.copyload865, !dbg !2087
  %call.i705 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %call147, i64 noundef %try_bounds.sroa.36.0.copyload851, i64 noundef %add.i704, i64 noundef %try_bounds.sroa.0.0.copyload824, i64 noundef 1, ptr noundef %exception) #7, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %call.i705, metadata !868, metadata !DIExpression()) #7, !dbg !2081
  %call9.i707 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %curr.1921, i64 noundef %try_bounds.sroa.36.0.copyload851, i64 noundef %add.i704, i64 noundef %try_bounds.sroa.0.0.copyload824, i64 noundef 1, ptr noundef %exception) #7, !dbg !2089
  call void @llvm.dbg.value(metadata ptr %call9.i707, metadata !869, metadata !DIExpression()) #7, !dbg !2081
  %cmp10.i708 = icmp eq ptr %call.i705, null, !dbg !2090
  %cmp11.i709 = icmp eq ptr %call9.i707, null
  %or.cond.i710 = select i1 %cmp10.i708, i1 true, i1 %cmp11.i709, !dbg !2091
  br i1 %or.cond.i710, label %IsBoundsCleared.exit738, label %for.cond14.preheader.i713, !dbg !2091

for.cond14.preheader.i713:                        ; preds = %for.body.i711
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %call9.i707, metadata !869, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %call.i705, metadata !868, metadata !DIExpression()) #7, !dbg !2081
  br i1 %cmp1667.i712, label %for.body17.i719, label %for.inc32.i730, !dbg !2092

for.body17.i719:                                  ; preds = %for.cond14.preheader.i713, %if.end25.i727
  %x.070.i714 = phi i64 [ %inc.i725, %if.end25.i727 ], [ 0, %for.cond14.preheader.i713 ]
  %q.069.i715 = phi ptr [ %incdec.ptr26.i724, %if.end25.i727 ], [ %call9.i707, %for.cond14.preheader.i713 ]
  %p.068.i716 = phi ptr [ %incdec.ptr.i723, %if.end25.i727 ], [ %call.i705, %for.cond14.preheader.i713 ]
  call void @llvm.dbg.value(metadata i64 %x.070.i714, metadata !870, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %q.069.i715, metadata !869, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %p.068.i716, metadata !868, metadata !DIExpression()) #7, !dbg !2081
  %opacity.i717 = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i716, i64 0, i32 3, !dbg !2093
  %24 = load i16, ptr %opacity.i717, align 2, !dbg !2093, !tbaa !828
  %cmp18.i718 = icmp sgt i16 %24, -1, !dbg !2094
  br i1 %cmp18.i718, label %land.lhs.true.i722, label %if.end25.i727, !dbg !2095

land.lhs.true.i722:                               ; preds = %for.body17.i719
  %opacity20.i720 = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i715, i64 0, i32 3, !dbg !2096
  %25 = load i16, ptr %opacity20.i720, align 2, !dbg !2096, !tbaa !828
  %cmp22.i721 = icmp slt i16 %25, 0, !dbg !2097
  br i1 %cmp22.i721, label %IsBoundsCleared.exit738, label %if.end25.i727, !dbg !2098

if.end25.i727:                                    ; preds = %land.lhs.true.i722, %for.body17.i719
  %incdec.ptr.i723 = getelementptr inbounds %struct._PixelPacket, ptr %p.068.i716, i64 1, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i723, metadata !868, metadata !DIExpression()) #7, !dbg !2081
  %incdec.ptr26.i724 = getelementptr inbounds %struct._PixelPacket, ptr %q.069.i715, i64 1, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i724, metadata !869, metadata !DIExpression()) #7, !dbg !2081
  %inc.i725 = add nuw nsw i64 %x.070.i714, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %inc.i725, metadata !870, metadata !DIExpression()) #7, !dbg !2081
  %exitcond.not.i726 = icmp eq i64 %inc.i725, %try_bounds.sroa.0.0.copyload824, !dbg !2102
  br i1 %exitcond.not.i726, label %for.inc32.i730, label %for.body17.i719, !dbg !2092, !llvm.loop !2103

for.inc32.i730:                                   ; preds = %if.end25.i727, %for.cond14.preheader.i713
  %inc33.i728 = add nuw nsw i64 %y.073.i703, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %inc33.i728, metadata !871, metadata !DIExpression()) #7, !dbg !2081
  %exitcond956.not = icmp eq i64 %inc33.i728, %try_bounds.sroa.23.0.copyload832, !dbg !2085
  br i1 %exitcond956.not, label %if.end236, label %for.body.i711, !dbg !2086, !llvm.loop !2106

IsBoundsCleared.exit738:                          ; preds = %for.body.i711, %land.lhs.true.i722, %for.cond.preheader.i699
  %y.066.i733 = phi i64 [ 0, %for.cond.preheader.i699 ], [ %y.073.i703, %land.lhs.true.i722 ], [ %y.073.i703, %for.body.i711 ]
  %cmp36.i734.not = icmp slt i64 %y.066.i733, %try_bounds.sroa.23.0.copyload832, !dbg !2108
  call void @llvm.dbg.value(metadata i1 %cmp36.i734.not, metadata !1812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1821
  br i1 %cmp36.i734.not, label %if.then163, label %if.end236, !dbg !2109

if.then163:                                       ; preds = %IsBoundsCleared.exit738
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp164) #7, !dbg !2110
  %26 = load ptr, ptr %previous, align 8, !dbg !2113, !tbaa !787
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp164, ptr noundef %26, ptr noundef nonnull %curr.1921, i32 noundef 3, ptr noundef %exception), !dbg !2110
  %try_bounds.sroa.0.0.copyload825 = load i64, ptr %tmp164, align 8, !dbg !2110, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0.copyload825, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %try_bounds.sroa.23.0.copyload833 = load i64, ptr %try_bounds.sroa.23.0.tmp164.sroa_idx, align 8, !dbg !2110, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0.copyload833, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %try_bounds.sroa.36.0.copyload852 = load i64, ptr %try_bounds.sroa.36.0.tmp164.sroa_idx, align 8, !dbg !2110, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload852, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %try_bounds.sroa.45.0.copyload866 = load i64, ptr %try_bounds.sroa.45.0.tmp164.sroa_idx, align 8, !dbg !2110, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload866, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp164) #7, !dbg !2110
  br i1 %cmp.i662, label %if.end234, label %if.else169, !dbg !2114

if.else169:                                       ; preds = %if.then163
  %cmp172 = icmp slt i64 %try_bounds.sroa.36.0.copyload852, %bgnd_bounds.sroa.25.0.copyload, !dbg !2115
  br i1 %cmp172, label %if.then173, label %if.else188, !dbg !2119

if.then173:                                       ; preds = %if.else169
  %sub176 = add i64 %bgnd_bounds.sroa.25.0.copyload, %bgnd_bounds.sroa.0.0.copyload, !dbg !2120
  %add178 = sub i64 %sub176, %try_bounds.sroa.36.0.copyload852, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %add178, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %27 = tail call i64 @llvm.umax.i64(i64 %add178, i64 %try_bounds.sroa.0.0.copyload825), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %27, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload852, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  br label %if.end201, !dbg !2124

if.else188:                                       ; preds = %if.else169
  %sub191 = sub i64 %try_bounds.sroa.0.0.copyload825, %bgnd_bounds.sroa.25.0.copyload, !dbg !2125
  %add193 = add i64 %sub191, %try_bounds.sroa.36.0.copyload852, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %add193, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %28 = tail call i64 @llvm.umax.i64(i64 %bgnd_bounds.sroa.0.0.copyload, i64 %add193), !dbg !2128
  br label %if.end201, !dbg !2128

if.end201:                                        ; preds = %if.else188, %if.then173
  %bgnd_bounds.sroa.25.0 = phi i64 [ %try_bounds.sroa.36.0.copyload852, %if.then173 ], [ %bgnd_bounds.sroa.25.0.copyload, %if.else188 ], !dbg !2031
  %bgnd_bounds.sroa.0.0 = phi i64 [ %27, %if.then173 ], [ %28, %if.else188 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.0.0, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.25.0, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %cmp204 = icmp slt i64 %try_bounds.sroa.45.0.copyload866, %bgnd_bounds.sroa.31.0.copyload, !dbg !2129
  br i1 %cmp204, label %if.then205, label %if.else220, !dbg !2131

if.then205:                                       ; preds = %if.end201
  %sub208 = add i64 %bgnd_bounds.sroa.31.0.copyload, %bgnd_bounds.sroa.15.0.copyload, !dbg !2132
  %add210 = sub i64 %sub208, %try_bounds.sroa.45.0.copyload866, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %add210, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %29 = tail call i64 @llvm.umax.i64(i64 %add210, i64 %try_bounds.sroa.23.0.copyload833), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %29, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload866, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  br label %if.end234, !dbg !2136

if.else220:                                       ; preds = %if.end201
  %sub223 = sub i64 %try_bounds.sroa.23.0.copyload833, %bgnd_bounds.sroa.31.0.copyload, !dbg !2137
  %add225 = add i64 %sub223, %try_bounds.sroa.45.0.copyload866, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %add225, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %30 = tail call i64 @llvm.umax.i64(i64 %bgnd_bounds.sroa.15.0.copyload, i64 %add225), !dbg !2140
  br label %if.end234, !dbg !2140

if.end234:                                        ; preds = %if.else220, %if.then163, %if.then205
  %bgnd_bounds.sroa.31.0 = phi i64 [ %try_bounds.sroa.45.0.copyload866, %if.then205 ], [ %try_bounds.sroa.45.0.copyload866, %if.then163 ], [ %bgnd_bounds.sroa.31.0.copyload, %if.else220 ], !dbg !2031
  %bgnd_bounds.sroa.25.1 = phi i64 [ %bgnd_bounds.sroa.25.0, %if.then205 ], [ %try_bounds.sroa.36.0.copyload852, %if.then163 ], [ %bgnd_bounds.sroa.25.0, %if.else220 ], !dbg !2141
  %bgnd_bounds.sroa.15.0 = phi i64 [ %29, %if.then205 ], [ %try_bounds.sroa.23.0.copyload833, %if.then163 ], [ %30, %if.else220 ], !dbg !2031
  %bgnd_bounds.sroa.0.1 = phi i64 [ %bgnd_bounds.sroa.0.0, %if.then205 ], [ %try_bounds.sroa.0.0.copyload825, %if.then163 ], [ %bgnd_bounds.sroa.0.0, %if.else220 ], !dbg !2141
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.0.1, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.15.0, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.25.1, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.31.0, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call147, metadata !791, metadata !DIExpression()) #7, !dbg !2142
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !2142
  %cmp.i740 = icmp slt i64 %bgnd_bounds.sroa.25.1, 0, !dbg !2144
  br i1 %cmp.i740, label %ClearBounds.exit772, label %if.end.i743, !dbg !2145

if.end.i743:                                      ; preds = %if.end234
  %matte.i741 = getelementptr inbounds %struct._Image, ptr %call147, i64 0, i32 6, !dbg !2146
  %31 = load i32, ptr %matte.i741, align 8, !dbg !2146, !tbaa !735
  %cmp1.i742 = icmp eq i32 %31, 0, !dbg !2147
  br i1 %cmp1.i742, label %if.then2.i745, label %if.end3.i749, !dbg !2148

if.then2.i745:                                    ; preds = %if.end.i743
  %call.i744 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call147, i32 noundef 6) #7, !dbg !2149
  br label %if.end3.i749, !dbg !2150

if.end3.i749:                                     ; preds = %if.then2.i745, %if.end.i743
  %exception4.i746 = getelementptr inbounds %struct._Image, ptr %call147, i64 0, i32 58, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %exception4.i746, metadata !797, metadata !DIExpression()) #7, !dbg !2142
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !2142
  %cmp549.i748 = icmp sgt i64 %bgnd_bounds.sroa.15.0, 0, !dbg !2152
  br i1 %cmp549.i748, label %for.body.i759.preheader, label %ClearBounds.exit772, !dbg !2153

for.body.i759.preheader:                          ; preds = %if.end3.i749
  %cmp1546.i760 = icmp sgt i64 %bgnd_bounds.sroa.0.1, 0
  br label %for.body.i759, !dbg !2153

for.body.i759:                                    ; preds = %for.body.i759.preheader, %for.end.i771
  %y.050.i755 = phi i64 [ %inc23.i752, %for.end.i771 ], [ 0, %for.body.i759.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i755, metadata !798, metadata !DIExpression()) #7, !dbg !2142
  %add.i756 = add nsw i64 %y.050.i755, %bgnd_bounds.sroa.31.0, !dbg !2154
  %call9.i757 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %call147, i64 noundef %bgnd_bounds.sroa.25.1, i64 noundef %add.i756, i64 noundef %bgnd_bounds.sroa.0.1, i64 noundef 1, ptr noundef nonnull %exception4.i746) #7, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %call9.i757, metadata !803, metadata !DIExpression()) #7, !dbg !2156
  %cmp10.i758 = icmp eq ptr %call9.i757, null, !dbg !2157
  br i1 %cmp10.i758, label %ClearBounds.exit772, label %for.cond13.preheader.i761, !dbg !2158

for.cond13.preheader.i761:                        ; preds = %for.body.i759
  call void @llvm.dbg.value(metadata ptr %call9.i757, metadata !803, metadata !DIExpression()) #7, !dbg !2156
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !2156
  br i1 %cmp1546.i760, label %for.body16.i768, label %for.end.i771, !dbg !2159

for.body16.i768:                                  ; preds = %for.cond13.preheader.i761, %for.body16.i768
  %q.048.i762 = phi ptr [ %incdec.ptr.i765, %for.body16.i768 ], [ %call9.i757, %for.cond13.preheader.i761 ]
  %x6.047.i763 = phi i64 [ %inc.i766, %for.body16.i768 ], [ 0, %for.cond13.preheader.i761 ]
  call void @llvm.dbg.value(metadata ptr %q.048.i762, metadata !803, metadata !DIExpression()) #7, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %x6.047.i763, metadata !799, metadata !DIExpression()) #7, !dbg !2156
  %opacity.i764 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i762, i64 0, i32 3, !dbg !2160
  store i16 -1, ptr %opacity.i764, align 2, !dbg !2161, !tbaa !828
  %incdec.ptr.i765 = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i762, i64 1, !dbg !2162
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i765, metadata !803, metadata !DIExpression()) #7, !dbg !2156
  %inc.i766 = add nuw nsw i64 %x6.047.i763, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %inc.i766, metadata !799, metadata !DIExpression()) #7, !dbg !2156
  %exitcond.not.i767 = icmp eq i64 %inc.i766, %bgnd_bounds.sroa.0.1, !dbg !2164
  br i1 %exitcond.not.i767, label %for.end.i771, label %for.body16.i768, !dbg !2159, !llvm.loop !2165

for.end.i771:                                     ; preds = %for.body16.i768, %for.cond13.preheader.i761
  %call17.i769 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %call147, ptr noundef nonnull %exception4.i746) #7, !dbg !2167
  %cmp18.i770 = icmp ne i32 %call17.i769, 0, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %y.050.i755, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2142
  %inc23.i752 = add nuw nsw i64 %y.050.i755, 1
  %cmp5.i753 = icmp slt i64 %inc23.i752, %bgnd_bounds.sroa.15.0
  %or.cond900 = select i1 %cmp18.i770, i1 %cmp5.i753, i1 false, !dbg !2169
  br i1 %or.cond900, label %for.body.i759, label %ClearBounds.exit772, !dbg !2169, !llvm.loop !2170

ClearBounds.exit772:                              ; preds = %for.body.i759, %for.end.i771, %if.end234, %if.end3.i749
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp235) #7, !dbg !2172
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp235, ptr noundef nonnull %call147, ptr noundef nonnull %curr.1921, i32 noundef 4, ptr noundef %exception), !dbg !2172
  %try_bounds.sroa.0.0.copyload826 = load i64, ptr %tmp235, align 8, !dbg !2172, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0.copyload826, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  %try_bounds.sroa.23.0.copyload834 = load i64, ptr %try_bounds.sroa.23.0.tmp235.sroa_idx, align 8, !dbg !2172, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0.copyload834, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  %try_bounds.sroa.36.0.copyload853 = load i64, ptr %try_bounds.sroa.36.0.tmp235.sroa_idx, align 8, !dbg !2172, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0.copyload853, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  %try_bounds.sroa.45.0.copyload867 = load i64, ptr %try_bounds.sroa.45.0.tmp235.sroa_idx, align 8, !dbg !2172, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0.copyload867, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp235) #7, !dbg !2172
  br label %if.end236, !dbg !2173

if.end236:                                        ; preds = %for.inc32.i730, %ClearBounds.exit694, %ClearBounds.exit772, %IsBoundsCleared.exit738
  %try_bounds.sroa.45.0 = phi i64 [ %try_bounds.sroa.45.0.copyload865, %IsBoundsCleared.exit738 ], [ %try_bounds.sroa.45.0.copyload867, %ClearBounds.exit772 ], [ %try_bounds.sroa.45.0.copyload865, %ClearBounds.exit694 ], [ %try_bounds.sroa.45.0.copyload865, %for.inc32.i730 ], !dbg !2031
  %try_bounds.sroa.36.0 = phi i64 [ %try_bounds.sroa.36.0.copyload851, %IsBoundsCleared.exit738 ], [ %try_bounds.sroa.36.0.copyload853, %ClearBounds.exit772 ], [ %try_bounds.sroa.36.0.copyload851, %ClearBounds.exit694 ], [ %try_bounds.sroa.36.0.copyload851, %for.inc32.i730 ], !dbg !2031
  %try_bounds.sroa.23.0 = phi i64 [ %try_bounds.sroa.23.0.copyload832, %IsBoundsCleared.exit738 ], [ %try_bounds.sroa.23.0.copyload834, %ClearBounds.exit772 ], [ %try_bounds.sroa.23.0.copyload832, %ClearBounds.exit694 ], [ %try_bounds.sroa.23.0.copyload832, %for.inc32.i730 ], !dbg !2031
  %try_bounds.sroa.0.0 = phi i64 [ %try_bounds.sroa.0.0.copyload824, %IsBoundsCleared.exit738 ], [ %try_bounds.sroa.0.0.copyload826, %ClearBounds.exit772 ], [ %try_bounds.sroa.0.0.copyload824, %ClearBounds.exit694 ], [ %try_bounds.sroa.0.0.copyload824, %for.inc32.i730 ], !dbg !2031
  %bgnd_bounds.sroa.31.1 = phi i64 [ %bgnd_bounds.sroa.31.0.copyload, %IsBoundsCleared.exit738 ], [ %bgnd_bounds.sroa.31.0, %ClearBounds.exit772 ], [ %bgnd_bounds.sroa.31.0.copyload, %ClearBounds.exit694 ], [ %bgnd_bounds.sroa.31.0.copyload, %for.inc32.i730 ], !dbg !2031
  %bgnd_bounds.sroa.25.2 = phi i64 [ %bgnd_bounds.sroa.25.0.copyload, %IsBoundsCleared.exit738 ], [ %bgnd_bounds.sroa.25.1, %ClearBounds.exit772 ], [ %bgnd_bounds.sroa.25.0.copyload, %ClearBounds.exit694 ], [ %bgnd_bounds.sroa.25.0.copyload, %for.inc32.i730 ], !dbg !2031
  %bgnd_bounds.sroa.15.1 = phi i64 [ %bgnd_bounds.sroa.15.0.copyload, %IsBoundsCleared.exit738 ], [ %bgnd_bounds.sroa.15.0, %ClearBounds.exit772 ], [ %bgnd_bounds.sroa.15.0.copyload, %ClearBounds.exit694 ], [ %bgnd_bounds.sroa.15.0.copyload, %for.inc32.i730 ], !dbg !2031
  %bgnd_bounds.sroa.0.2 = phi i64 [ %bgnd_bounds.sroa.0.0.copyload, %IsBoundsCleared.exit738 ], [ %bgnd_bounds.sroa.0.1, %ClearBounds.exit772 ], [ %bgnd_bounds.sroa.0.0.copyload, %ClearBounds.exit694 ], [ %bgnd_bounds.sroa.0.0.copyload, %for.inc32.i730 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.0.2, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.15.1, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.25.2, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %bgnd_bounds.sroa.31.1, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.0.0, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.23.0, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.36.0, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %try_bounds.sroa.45.0, metadata !1807, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  %tobool237.not = icmp eq i32 %cleared.1, 0, !dbg !2174
  br i1 %tobool237.not, label %lor.lhs.false238, label %if.then264, !dbg !2176

lor.lhs.false238:                                 ; preds = %if.end236
  %mul241 = mul i64 %bgnd_bounds.sroa.0.2, %bgnd_bounds.sroa.15.1, !dbg !2177
  %mul244 = mul i64 %try_bounds.sroa.0.0, %try_bounds.sroa.23.0, !dbg !2178
  %add245 = add i64 %mul241, %mul244, !dbg !2179
  %32 = load i64, ptr %arrayidx159, align 8, !dbg !2180, !tbaa !966
  %height251 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %sub, i32 1, !dbg !2181
  %33 = load i64, ptr %height251, align 8, !dbg !2181, !tbaa !962
  %mul252 = mul i64 %33, %32, !dbg !2182
  %mul255 = mul i64 %dup_bounds.sroa.0.1, %dup_bounds.sroa.11.1, !dbg !2183
  %add256 = add i64 %mul252, %mul255, !dbg !2184
  %34 = load i64, ptr %arrayidx58, align 8, !dbg !2185, !tbaa !966
  %height260 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.0929, i32 1, !dbg !2186
  %35 = load i64, ptr %height260, align 8, !dbg !2186, !tbaa !962
  %mul261 = mul i64 %35, %34, !dbg !2187
  %add262 = add i64 %add256, %mul261, !dbg !2188
  %cmp263 = icmp ult i64 %add245, %add262, !dbg !2189
  br i1 %cmp263, label %if.then264, label %if.end277, !dbg !2190

if.then264:                                       ; preds = %lor.lhs.false238, %if.end236
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1821
  store i64 %bgnd_bounds.sroa.0.2, ptr %arrayidx159, align 8, !dbg !2191, !tbaa.struct !710
  store i64 %bgnd_bounds.sroa.15.1, ptr %bgnd_bounds.sroa.15.0.arrayidx159.sroa_idx, align 8, !dbg !2191, !tbaa.struct !712
  store i64 %bgnd_bounds.sroa.25.2, ptr %bgnd_bounds.sroa.25.0.arrayidx159.sroa_idx, align 8, !dbg !2191, !tbaa.struct !717
  store i64 %bgnd_bounds.sroa.31.1, ptr %bgnd_bounds.sroa.31.0.arrayidx159.sroa_idx, align 8, !dbg !2191, !tbaa.struct !713
  store i64 %try_bounds.sroa.0.0, ptr %arrayidx58, align 8, !dbg !2193, !tbaa.struct !710
  %try_bounds.sroa.23.0.arrayidx58.sroa_idx835 = getelementptr inbounds i8, ptr %arrayidx58, i64 8, !dbg !2193
  store i64 %try_bounds.sroa.23.0, ptr %try_bounds.sroa.23.0.arrayidx58.sroa_idx835, align 8, !dbg !2193, !tbaa.struct !712
  %try_bounds.sroa.36.0.arrayidx58.sroa_idx854 = getelementptr inbounds i8, ptr %arrayidx58, i64 16, !dbg !2193
  store i64 %try_bounds.sroa.36.0, ptr %try_bounds.sroa.36.0.arrayidx58.sroa_idx854, align 8, !dbg !2193, !tbaa.struct !717
  %try_bounds.sroa.45.0.arrayidx58.sroa_idx868 = getelementptr inbounds i8, ptr %arrayidx58, i64 24, !dbg !2193
  store i64 %try_bounds.sroa.45.0, ptr %try_bounds.sroa.45.0.arrayidx58.sroa_idx868, align 8, !dbg !2193, !tbaa.struct !713
  %36 = load i32, ptr %arrayidx63, align 4, !dbg !2194, !tbaa !1892
  %cmp270 = icmp eq i32 %36, 9, !dbg !2196
  br i1 %cmp270, label %if.then271, label %if.end277.thread, !dbg !2197

if.then271:                                       ; preds = %if.then264
  %call272 = tail call ptr @DestroyImage(ptr noundef %dup_image.1) #7, !dbg !2198
  call void @llvm.dbg.value(metadata ptr %call272, metadata !1804, metadata !DIExpression()), !dbg !1821
  br label %if.end277.thread, !dbg !2199

if.end277.thread:                                 ; preds = %if.then264, %if.then271
  %dup_image.2 = phi ptr [ %call272, %if.then271 ], [ %dup_image.1, %if.then264 ], !dbg !2031
  call void @llvm.dbg.value(metadata ptr %dup_image.2, metadata !1804, metadata !DIExpression()), !dbg !1821
  store i32 2, ptr %arrayidx63, align 4, !dbg !2200, !tbaa !1892
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.0.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.11.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call147, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.1, metadata !1804, metadata !DIExpression()), !dbg !1821
  br label %if.else295, !dbg !2201

if.end277:                                        ; preds = %lor.lhs.false238
  %.pr.pre = load i32, ptr %arrayidx63, align 4, !dbg !2202, !tbaa !1892
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.0.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.11.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.1, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call147, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.1, metadata !1804, metadata !DIExpression()), !dbg !1821
  %cmp280 = icmp eq i32 %.pr.pre, 9, !dbg !2204
  br i1 %cmp280, label %if.then283, label %if.else295, !dbg !2201

if.then283:                                       ; preds = %if.end277
  %call284 = tail call ptr @DestroyImage(ptr noundef nonnull %call147) #7, !dbg !2205
  call void @llvm.dbg.value(metadata ptr %call284, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call284, metadata !1805, metadata !DIExpression()), !dbg !1821
  %call286 = tail call ptr @DestroyImage(ptr noundef %prev_image.0916) #7, !dbg !2208
  call void @llvm.dbg.value(metadata ptr %dup_image.1, metadata !1803, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr null, metadata !1804, metadata !DIExpression()), !dbg !1821
  %add287 = add nsw i64 %i.0929, 1, !dbg !2209
  %arrayidx288 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %add287, !dbg !2210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx288, ptr noundef nonnull align 8 dereferenceable(32) %arrayidx58, i64 32, i1 false), !dbg !2211, !tbaa.struct !710
  store i64 %dup_bounds.sroa.0.1, ptr %arrayidx58, align 8, !dbg !2212, !tbaa.struct !710
  %dup_bounds.sroa.11.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 8, !dbg !2212
  store i64 %dup_bounds.sroa.11.1, ptr %dup_bounds.sroa.11.0.arrayidx58.sroa_idx, align 8, !dbg !2212, !tbaa.struct !712
  %dup_bounds.sroa.18.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 16, !dbg !2212
  store i64 %dup_bounds.sroa.18.1, ptr %dup_bounds.sroa.18.0.arrayidx58.sroa_idx, align 8, !dbg !2212, !tbaa.struct !717
  %dup_bounds.sroa.21.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx58, i64 24, !dbg !2212
  store i64 %dup_bounds.sroa.21.1, ptr %dup_bounds.sroa.21.0.arrayidx58.sroa_idx, align 8, !dbg !2212, !tbaa.struct !713
  store i32 9, ptr %arrayidx63, align 4, !dbg !2213, !tbaa !1892
  %arrayidx293 = getelementptr inbounds i32, ptr %call29, i64 %i.0929, !dbg !2214
  store i32 2, ptr %arrayidx293, align 4, !dbg !2215, !tbaa !1892
  call void @llvm.dbg.value(metadata i64 %add287, metadata !1816, metadata !DIExpression()), !dbg !1821
  br label %if.end333, !dbg !2216

if.else295:                                       ; preds = %if.then67, %if.end277.thread, %if.end277
  %37 = phi i32 [ 2, %if.end277.thread ], [ %.pr.pre, %if.end277 ], [ 1, %if.then67 ]
  %bgnd_image.1894 = phi ptr [ %call147, %if.end277.thread ], [ %call147, %if.end277 ], [ %bgnd_image.0920, %if.then67 ]
  %dup_image.3893 = phi ptr [ %dup_image.2, %if.end277.thread ], [ %dup_image.1, %if.end277 ], [ %dup_image.0919, %if.then67 ]
  %dup_bounds.sroa.18.2888 = phi i64 [ %dup_bounds.sroa.18.1, %if.end277.thread ], [ %dup_bounds.sroa.18.1, %if.end277 ], [ %dup_bounds.sroa.18.0913, %if.then67 ]
  %dup_bounds.sroa.21.2886 = phi i64 [ %dup_bounds.sroa.21.1, %if.end277.thread ], [ %dup_bounds.sroa.21.1, %if.end277 ], [ %dup_bounds.sroa.21.0912, %if.then67 ]
  %cmp296.not = icmp eq ptr %dup_image.3893, null, !dbg !2217
  br i1 %cmp296.not, label %if.end299, label %if.then297, !dbg !2220

if.then297:                                       ; preds = %if.else295
  %call298 = tail call ptr @DestroyImage(ptr noundef nonnull %dup_image.3893) #7, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %call298, metadata !1804, metadata !DIExpression()), !dbg !1821
  %.pre = load i32, ptr %arrayidx63, align 4, !dbg !2222, !tbaa !1892
  br label %if.end299, !dbg !2224

if.end299:                                        ; preds = %if.then297, %if.else295
  %38 = phi i32 [ %.pre, %if.then297 ], [ %37, %if.else295 ], !dbg !2222
  %dup_image.4 = phi ptr [ %call298, %if.then297 ], [ null, %if.else295 ], !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.4, metadata !1804, metadata !DIExpression()), !dbg !1821
  %cmp302.not = icmp eq i32 %38, 3, !dbg !2225
  br i1 %cmp302.not, label %if.end305, label %if.then303, !dbg !2226

if.then303:                                       ; preds = %if.end299
  %call304 = tail call ptr @DestroyImage(ptr noundef %prev_image.0916) #7, !dbg !2227
  call void @llvm.dbg.value(metadata ptr %call304, metadata !1803, metadata !DIExpression()), !dbg !1821
  %.pre958 = load i32, ptr %arrayidx63, align 4, !dbg !2228, !tbaa !1892
  br label %if.end305, !dbg !2230

if.end305:                                        ; preds = %if.then303, %if.end299
  %39 = phi i32 [ %.pre958, %if.then303 ], [ 3, %if.end299 ], !dbg !2228
  %prev_image.1 = phi ptr [ %call304, %if.then303 ], [ %prev_image.0916, %if.end299 ], !dbg !1821
  call void @llvm.dbg.value(metadata ptr %prev_image.1, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp308 = icmp eq i32 %39, 2, !dbg !2231
  %spec.select = select i1 %cmp308, ptr %bgnd_image.1894, ptr %prev_image.1, !dbg !2232
  call void @llvm.dbg.value(metadata ptr undef, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp311.not901 = icmp eq ptr %bgnd_image.1894, null, !dbg !2233
  %cmp311.not = select i1 %cmp308, i1 true, i1 %cmp311.not901, !dbg !2233
  br i1 %cmp311.not, label %if.end314, label %if.then312, !dbg !2235

if.then312:                                       ; preds = %if.end305
  %call313 = tail call ptr @DestroyImage(ptr noundef nonnull %bgnd_image.1894) #7, !dbg !2236
  call void @llvm.dbg.value(metadata ptr %call313, metadata !1805, metadata !DIExpression()), !dbg !1821
  %.pr895 = load i32, ptr %arrayidx63, align 4, !dbg !2237, !tbaa !1892
  br label %if.end314, !dbg !2239

if.end314:                                        ; preds = %if.then312, %if.end305
  %40 = phi i32 [ %.pr895, %if.then312 ], [ %39, %if.end305 ], !dbg !2237
  %bgnd_image.4 = phi ptr [ %call313, %if.then312 ], [ null, %if.end305 ], !dbg !2240
  call void @llvm.dbg.value(metadata ptr %bgnd_image.4, metadata !1805, metadata !DIExpression()), !dbg !1821
  %cmp317 = icmp eq i32 %40, 1, !dbg !2241
  br i1 %cmp317, label %if.then318, label %if.end333, !dbg !2242

if.then318:                                       ; preds = %if.end314
  %41 = load ptr, ptr %previous, align 8, !dbg !2243, !tbaa !787
  %page321 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 26, !dbg !2245
  %42 = load i64, ptr %page321, align 8, !dbg !2246, !tbaa !1027
  %height325 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 26, i32 1, !dbg !2247
  %43 = load i64, ptr %height325, align 8, !dbg !2247, !tbaa !1029
  %call326 = tail call ptr @CloneImage(ptr noundef %41, i64 noundef %42, i64 noundef %43, i32 noundef 1, ptr noundef %exception) #7, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %call326, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp327 = icmp eq ptr %call326, null, !dbg !2249
  br i1 %cmp327, label %if.then328, label %if.then318.if.end333_crit_edge, !dbg !2251

if.then318.if.end333_crit_edge:                   ; preds = %if.then318
  %.pre960 = load i32, ptr %arrayidx63, align 4, !dbg !2252, !tbaa !1892
  br label %if.end333, !dbg !2251

if.then328:                                       ; preds = %if.then318
  %call329 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !2253
  call void @llvm.dbg.value(metadata ptr %call329, metadata !1810, metadata !DIExpression()), !dbg !1821
  %call330 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call29) #7, !dbg !2255
  call void @llvm.dbg.value(metadata ptr %call330, metadata !1814, metadata !DIExpression()), !dbg !1821
  br label %cleanup, !dbg !2256

if.end333:                                        ; preds = %if.then318.if.end333_crit_edge, %if.end314, %if.then283
  %44 = phi i32 [ %40, %if.end314 ], [ %.pre960, %if.then318.if.end333_crit_edge ], [ 2, %if.then283 ], !dbg !2252
  %dup_bounds.sroa.18.2887 = phi i64 [ %dup_bounds.sroa.18.2888, %if.end314 ], [ %dup_bounds.sroa.18.2888, %if.then318.if.end333_crit_edge ], [ %dup_bounds.sroa.18.1, %if.then283 ]
  %dup_bounds.sroa.21.2885 = phi i64 [ %dup_bounds.sroa.21.2886, %if.end314 ], [ %dup_bounds.sroa.21.2886, %if.then318.if.end333_crit_edge ], [ %dup_bounds.sroa.21.1, %if.then283 ]
  %prev_image.3 = phi ptr [ %spec.select, %if.end314 ], [ %call326, %if.then318.if.end333_crit_edge ], [ %dup_image.1, %if.then283 ], !dbg !2257
  %dup_image.5 = phi ptr [ %dup_image.4, %if.end314 ], [ %dup_image.4, %if.then318.if.end333_crit_edge ], [ null, %if.then283 ], !dbg !2257
  %bgnd_image.5 = phi ptr [ %bgnd_image.4, %if.end314 ], [ %bgnd_image.4, %if.then318.if.end333_crit_edge ], [ %call284, %if.then283 ], !dbg !2257
  %i.1 = phi i64 [ %i.0929, %if.end314 ], [ %i.0929, %if.then318.if.end333_crit_edge ], [ %add287, %if.then283 ], !dbg !1821
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %bgnd_image.5, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.5, metadata !1804, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %prev_image.3, metadata !1803, metadata !DIExpression()), !dbg !1821
  %arrayidx336 = getelementptr inbounds i32, ptr %call29, i64 %i.1, !dbg !2258
  store i32 %44, ptr %arrayidx336, align 4, !dbg !2259, !tbaa !1892
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1816, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1821
  br label %for.inc338, !dbg !2260

for.inc338:                                       ; preds = %if.end333, %if.then69
  %dup_bounds.sroa.21.3 = phi i64 [ %dup_bounds.sroa.21.0912, %if.then69 ], [ %dup_bounds.sroa.21.2885, %if.end333 ], !dbg !2261
  %dup_bounds.sroa.18.3 = phi i64 [ %dup_bounds.sroa.18.0913, %if.then69 ], [ %dup_bounds.sroa.18.2887, %if.end333 ], !dbg !2262
  %prev_image.4 = phi ptr [ %prev_image.0916, %if.then69 ], [ %prev_image.3, %if.end333 ], !dbg !1821
  %dup_image.6 = phi ptr [ %dup_image.0919, %if.then69 ], [ %dup_image.5, %if.end333 ], !dbg !1821
  %bgnd_image.6 = phi ptr [ %bgnd_image.0920, %if.then69 ], [ %bgnd_image.5, %if.end333 ], !dbg !1821
  %i.2.in = phi i64 [ %i.0929, %if.then69 ], [ %i.1, %if.end333 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.3, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.3, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  %i.2 = add nsw i64 %i.2.in, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %bgnd_image.6, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %dup_image.6, metadata !1804, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %prev_image.4, metadata !1803, metadata !DIExpression()), !dbg !1821
  %call339 = tail call ptr @GetNextImageInList(ptr noundef nonnull %curr.1921) #7, !dbg !2263
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 undef, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.18.3, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %dup_bounds.sroa.21.3, metadata !1809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call339, metadata !1815, metadata !DIExpression()), !dbg !1821
  %cmp56.not = icmp eq ptr %call339, null, !dbg !1895
  br i1 %cmp56.not, label %for.end340, label %for.body57, !dbg !1898, !llvm.loop !2264

for.end340:                                       ; preds = %for.inc338, %if.end43
  %prev_image.0.lcssa = phi ptr [ %call38, %if.end43 ], [ %prev_image.4, %for.inc338 ], !dbg !2266
  %call341 = tail call ptr @DestroyImage(ptr noundef %prev_image.0.lcssa) #7, !dbg !2267
  call void @llvm.dbg.value(metadata ptr %call341, metadata !1803, metadata !DIExpression()), !dbg !1821
  %call342 = tail call ptr @AcquireExceptionInfo() #7, !dbg !2268
  call void @llvm.dbg.value(metadata ptr %call342, metadata !1802, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1816, metadata !DIExpression()), !dbg !1821
  %call343 = tail call ptr @GetFirstImageInList(ptr noundef %image) #7, !dbg !2269
  call void @llvm.dbg.value(metadata ptr %call343, metadata !1815, metadata !DIExpression()), !dbg !1821
  %call344 = tail call ptr @NewImageList() #7, !dbg !2270
  call void @llvm.dbg.value(metadata ptr %call344, metadata !1806, metadata !DIExpression()), !dbg !1821
  store ptr %call344, ptr %optimized_image, align 8, !dbg !2271, !tbaa !1046
  %cmp345.not943 = icmp eq ptr %call343, null, !dbg !2272
  br i1 %cmp345.not943, label %while.end389, label %while.body, !dbg !2273

while.body:                                       ; preds = %for.end340, %if.end387
  %i.3945 = phi i64 [ %inc388, %if.end387 ], [ 0, %for.end340 ]
  %curr.2944 = phi ptr [ %curr.5, %if.end387 ], [ %call343, %for.end340 ]
  call void @llvm.dbg.value(metadata i64 %i.3945, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %curr.2944, metadata !1815, metadata !DIExpression()), !dbg !1821
  %call346 = call ptr @CloneImage(ptr noundef nonnull %curr.2944, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %call346, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp347 = icmp eq ptr %call346, null, !dbg !2275
  br i1 %cmp347, label %while.end389, label %if.end349, !dbg !2277

if.end349:                                        ; preds = %while.body
  %arrayidx350 = getelementptr inbounds i32, ptr %call29, i64 %i.3945, !dbg !2278
  %45 = load i32, ptr %arrayidx350, align 4, !dbg !2278, !tbaa !1892
  %cmp351 = icmp eq i32 %45, 8, !dbg !2279
  br i1 %cmp351, label %while.body356, label %if.end371, !dbg !2280

while.body356:                                    ; preds = %if.end349, %while.body356
  %time.0939 = phi i64 [ %add358, %while.body356 ], [ 0, %if.end349 ]
  %i.4938 = phi i64 [ %inc360, %while.body356 ], [ %i.3945, %if.end349 ]
  %curr.3937 = phi ptr [ %call359, %while.body356 ], [ %curr.2944, %if.end349 ]
  call void @llvm.dbg.value(metadata i64 %time.0939, metadata !1817, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %i.4938, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %curr.3937, metadata !1815, metadata !DIExpression()), !dbg !1821
  %delay = getelementptr inbounds %struct._Image, ptr %curr.3937, i64 0, i32 40, !dbg !2282
  %46 = load i64, ptr %delay, align 8, !dbg !2282, !tbaa !2284
  %mul357 = mul i64 %46, 1000, !dbg !2285
  %ticks_per_second = getelementptr inbounds %struct._Image, ptr %curr.3937, i64 0, i32 41, !dbg !2286
  %47 = load i64, ptr %ticks_per_second, align 8, !dbg !2286, !tbaa !2287
  %div = udiv i64 %mul357, %47, !dbg !2288
  %add358 = add i64 %div, %time.0939, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %add358, metadata !1817, metadata !DIExpression()), !dbg !2281
  %call359 = call ptr @GetNextImageInList(ptr noundef %curr.3937) #7, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %call359, metadata !1815, metadata !DIExpression()), !dbg !1821
  %inc360 = add nsw i64 %i.4938, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %inc360, metadata !1816, metadata !DIExpression()), !dbg !1821
  %arrayidx354 = getelementptr inbounds i32, ptr %call29, i64 %inc360, !dbg !2292
  %48 = load i32, ptr %arrayidx354, align 4, !dbg !2292, !tbaa !1892
  %cmp355 = icmp eq i32 %48, 8, !dbg !2293
  br i1 %cmp355, label %while.body356, label %while.end, !dbg !2294, !llvm.loop !2295

while.end:                                        ; preds = %while.body356
  %delay361 = getelementptr inbounds %struct._Image, ptr %call359, i64 0, i32 40, !dbg !2297
  %49 = load i64, ptr %delay361, align 8, !dbg !2297, !tbaa !2284
  %mul362 = mul i64 %49, 1000, !dbg !2298
  %ticks_per_second363 = getelementptr inbounds %struct._Image, ptr %call359, i64 0, i32 41, !dbg !2299
  %50 = load i64, ptr %ticks_per_second363, align 8, !dbg !2299, !tbaa !2287
  %div364 = udiv i64 %mul362, %50, !dbg !2300
  %add365 = add i64 %div364, %add358, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %add365, metadata !1817, metadata !DIExpression()), !dbg !2281
  %ticks_per_second366 = getelementptr inbounds %struct._Image, ptr %call346, i64 0, i32 41, !dbg !2302
  store i64 100, ptr %ticks_per_second366, align 8, !dbg !2303, !tbaa !2287
  %mul368 = mul i64 %add365, 100, !dbg !2304
  %div369 = udiv i64 %mul368, 1000, !dbg !2305
  %delay370 = getelementptr inbounds %struct._Image, ptr %call346, i64 0, i32 40, !dbg !2306
  store i64 %div369, ptr %delay370, align 8, !dbg !2307, !tbaa !2284
  br label %if.end371, !dbg !2308

if.end371:                                        ; preds = %while.end, %if.end349
  %curr.4 = phi ptr [ %call359, %while.end ], [ %curr.2944, %if.end349 ], !dbg !2309
  %i.5 = phi i64 [ %inc360, %while.end ], [ %i.3945, %if.end349 ], !dbg !2310
  call void @llvm.dbg.value(metadata i64 %i.5, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %curr.4, metadata !1815, metadata !DIExpression()), !dbg !1821
  %arrayidx372 = getelementptr inbounds %struct._RectangleInfo, ptr %call18, i64 %i.5, !dbg !2311
  %call373 = call ptr @CropImage(ptr noundef nonnull %call346, ptr noundef nonnull %arrayidx372, ptr noundef %call342) #7, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %call373, metadata !1805, metadata !DIExpression()), !dbg !1821
  %call374 = call ptr @DestroyImage(ptr noundef nonnull %call346) #7, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %call374, metadata !1803, metadata !DIExpression()), !dbg !1821
  %cmp375 = icmp eq ptr %call373, null, !dbg !2314
  br i1 %cmp375, label %while.end389, label %if.end377, !dbg !2316

if.end377:                                        ; preds = %if.end371
  %arrayidx378 = getelementptr inbounds i32, ptr %call29, i64 %i.5, !dbg !2317
  %51 = load i32, ptr %arrayidx378, align 4, !dbg !2317, !tbaa !1892
  %dispose379 = getelementptr inbounds %struct._Image, ptr %call373, i64 0, i32 37, !dbg !2318
  store i32 %51, ptr %dispose379, align 4, !dbg !2319, !tbaa !742
  %52 = load i32, ptr %arrayidx378, align 4, !dbg !2320, !tbaa !1892
  %cmp381 = icmp eq i32 %52, 9, !dbg !2322
  br i1 %cmp381, label %if.then382, label %if.else385, !dbg !2323

if.then382:                                       ; preds = %if.end377
  %delay383 = getelementptr inbounds %struct._Image, ptr %call373, i64 0, i32 40, !dbg !2324
  store i64 0, ptr %delay383, align 8, !dbg !2326, !tbaa !2284
  store i32 1, ptr %dispose379, align 4, !dbg !2327, !tbaa !742
  br label %if.end387, !dbg !2328

if.else385:                                       ; preds = %if.end377
  %call386 = call ptr @GetNextImageInList(ptr noundef nonnull %curr.4) #7, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %call386, metadata !1815, metadata !DIExpression()), !dbg !1821
  br label %if.end387

if.end387:                                        ; preds = %if.else385, %if.then382
  %curr.5 = phi ptr [ %curr.4, %if.then382 ], [ %call386, %if.else385 ], !dbg !1821
  call void @llvm.dbg.value(metadata ptr %curr.5, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %optimized_image, metadata !1806, metadata !DIExpression(DW_OP_deref)), !dbg !1821
  call void @AppendImageToList(ptr noundef nonnull %optimized_image, ptr noundef nonnull %call373) #7, !dbg !2330
  %inc388 = add nsw i64 %i.5, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %inc388, metadata !1816, metadata !DIExpression()), !dbg !1821
  %cmp345.not = icmp eq ptr %curr.5, null, !dbg !2272
  br i1 %cmp345.not, label %while.end389, label %while.body, !dbg !2273, !llvm.loop !2332

while.end389:                                     ; preds = %if.end387, %while.body, %if.end371, %for.end340
  %curr.6 = phi ptr [ null, %for.end340 ], [ %curr.4, %if.end371 ], [ %curr.2944, %while.body ], [ null, %if.end387 ], !dbg !2309
  call void @llvm.dbg.value(metadata ptr %curr.6, metadata !1815, metadata !DIExpression()), !dbg !1821
  %call390 = call ptr @DestroyExceptionInfo(ptr noundef %call342) #7, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %call390, metadata !1802, metadata !DIExpression()), !dbg !1821
  %call391 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #7, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %call391, metadata !1810, metadata !DIExpression()), !dbg !1821
  %call392 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call29) #7, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %call392, metadata !1814, metadata !DIExpression()), !dbg !1821
  %cmp393.not = icmp eq ptr %curr.6, null, !dbg !2337
  %53 = load ptr, ptr %optimized_image, align 8, !dbg !1821, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %53, metadata !1806, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %53, metadata !1806, metadata !DIExpression()), !dbg !1821
  br i1 %cmp393.not, label %if.end396, label %if.then394, !dbg !2339

if.then394:                                       ; preds = %while.end389
  %call395 = call ptr @DestroyImageList(ptr noundef %53) #7, !dbg !2340
  call void @llvm.dbg.value(metadata ptr %call395, metadata !1806, metadata !DIExpression()), !dbg !1821
  store ptr %call395, ptr %optimized_image, align 8, !dbg !2342, !tbaa !1046
  br label %cleanup, !dbg !2343

if.end396:                                        ; preds = %while.end389
  %call397 = call ptr @GetFirstImageInList(ptr noundef %53) #7, !dbg !2344
  br label %cleanup, !dbg !2345

cleanup:                                          ; preds = %if.then149, %if.then154, %if.end396, %if.then394, %if.then328, %if.then110, %if.then40, %if.then31, %if.then20, %if.then8
  %retval.0 = phi ptr [ null, %if.then8 ], [ null, %if.then20 ], [ null, %if.then31 ], [ null, %if.then40 ], [ null, %if.then328 ], [ null, %if.then110 ], [ null, %if.then394 ], [ %call397, %if.end396 ], [ null, %if.then154 ], [ null, %if.then149 ], !dbg !1821
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %optimized_image) #7, !dbg !2346
  ret ptr %retval.0, !dbg !2346
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OptimizePlusImageLayers(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %image, i32 noundef 8, ptr noundef %exception), !dbg !2352
  ret ptr %call, !dbg !2353
}

; Function Attrs: nounwind uwtable
define dso_local void @OptimizeImageTransparency(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2358, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2359, metadata !DIExpression()), !dbg !2367
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2368
  %0 = load i32, ptr %debug, align 8, !dbg !2368, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !2370
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2371

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2372
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1526, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2373
  br label %if.end, !dbg !2374

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %image) #7, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2361, metadata !DIExpression()), !dbg !2367
  %page = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !2376
  %1 = load i64, ptr %page, align 8, !dbg !2377, !tbaa !1027
  %height = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 1, !dbg !2378
  %2 = load i64, ptr %height, align 8, !dbg !2378, !tbaa !1029
  %call3 = tail call ptr @CloneImage(ptr noundef %call1, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #7, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2360, metadata !DIExpression()), !dbg !2367
  %cmp4 = icmp eq ptr %call3, null, !dbg !2380
  br i1 %cmp4, label %cleanup85, label %if.end6, !dbg !2382

if.end6:                                          ; preds = %if.end
  %page7 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 26, !dbg !2383
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page7, ptr noundef nonnull align 8 dereferenceable(32) %page, i64 16, i1 false), !dbg !2384, !tbaa.struct !710
  %x = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 26, i32 2, !dbg !2385
  %dispose = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 37, !dbg !2386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 0, i64 16, i1 false), !dbg !2387
  store i32 1, ptr %dispose, align 4, !dbg !2388, !tbaa !742
  %opacity = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 12, i32 3, !dbg !2389
  store i16 -1, ptr %opacity, align 2, !dbg !2390, !tbaa !1042
  %call11 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call3) #7, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2361, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2360, metadata !DIExpression()), !dbg !2367
  %cmp12.not159 = icmp eq ptr %call1, null, !dbg !2392
  br i1 %cmp12.not159, label %cleanup85.sink.split, label %while.body, !dbg !2393

while.body:                                       ; preds = %if.end6, %if.then75
  %next.0161 = phi ptr [ %call73, %if.then75 ], [ %call1, %if.end6 ]
  %dispose_image.0160 = phi ptr [ %dispose_image.1, %if.then75 ], [ %call3, %if.end6 ]
  call void @llvm.dbg.value(metadata ptr %next.0161, metadata !2361, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %dispose_image.0160, metadata !2360, metadata !DIExpression()), !dbg !2367
  %call13 = tail call ptr @CloneImage(ptr noundef %dispose_image.0160, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !2394
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2362, metadata !DIExpression()), !dbg !2395
  %cmp14 = icmp eq ptr %call13, null, !dbg !2396
  br i1 %cmp14, label %cleanup85.sink.split, label %if.end17, !dbg !2398

if.end17:                                         ; preds = %while.body
  %matte = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 6, !dbg !2399
  %3 = load i32, ptr %matte, align 8, !dbg !2399, !tbaa !735
  %cmp18.not = icmp eq i32 %3, 0, !dbg !2400
  %cond = select i1 %cmp18.not, i32 13, i32 40, !dbg !2401
  %x20 = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 26, i32 2, !dbg !2402
  %4 = load i64, ptr %x20, align 8, !dbg !2402, !tbaa !745
  %y22 = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 26, i32 3, !dbg !2403
  %5 = load i64, ptr %y22, align 8, !dbg !2403, !tbaa !747
  %call23 = tail call i32 @CompositeImage(ptr noundef nonnull %call13, i32 noundef %cond, ptr noundef nonnull %next.0161, i64 noundef %4, i64 noundef %5) #7, !dbg !2404
  %dispose24 = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 37, !dbg !2405
  %6 = load i32, ptr %dispose24, align 4, !dbg !2405, !tbaa !742
  %cmp25 = icmp eq i32 %6, 2, !dbg !2406
  br i1 %cmp25, label %if.then26, label %if.end66, !dbg !2407

if.then26:                                        ; preds = %if.end17
  %page19 = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 26, !dbg !2408
  call void @llvm.dbg.value(metadata i64 undef, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  call void @llvm.dbg.value(metadata i64 undef, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  %bounds.sroa.17.0.page19.sroa_idx = getelementptr inbounds i8, ptr %page19, i64 16, !dbg !2410
  %bounds.sroa.17.0.copyload = load i64, ptr %bounds.sroa.17.0.page19.sroa_idx, align 8, !dbg !2410, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.17.0.copyload, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2409
  %bounds.sroa.22.0.page19.sroa_idx = getelementptr inbounds i8, ptr %page19, i64 24, !dbg !2410
  %bounds.sroa.22.0.copyload = load i64, ptr %bounds.sroa.22.0.page19.sroa_idx, align 8, !dbg !2410, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.22.0.copyload, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2409
  %columns = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 7, !dbg !2411
  %7 = load i64, ptr %columns, align 8, !dbg !2411, !tbaa !720
  call void @llvm.dbg.value(metadata i64 %7, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  %rows = getelementptr inbounds %struct._Image, ptr %next.0161, i64 0, i32 8, !dbg !2412
  %8 = load i64, ptr %rows, align 8, !dbg !2412, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %8, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  %9 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.17.0.copyload, i64 0), !dbg !2413
  %10 = tail call i64 @llvm.smin.i64(i64 %bounds.sroa.17.0.copyload, i64 0), !dbg !2413
  %spec.select144 = add i64 %7, %10, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %spec.select144, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %9, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2409
  %add39 = add i64 %spec.select144, %9, !dbg !2414
  %columns40 = getelementptr inbounds %struct._Image, ptr %call13, i64 0, i32 7, !dbg !2416
  %11 = load i64, ptr %columns40, align 8, !dbg !2416, !tbaa !720
  %cmp41 = icmp sgt i64 %add39, %11, !dbg !2417
  %sub = sub i64 %11, %9
  %spec.select147 = select i1 %cmp41, i64 %sub, i64 %spec.select144, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %spec.select147, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  %12 = tail call i64 @llvm.smax.i64(i64 %bounds.sroa.22.0.copyload, i64 0), !dbg !2419
  %13 = tail call i64 @llvm.smin.i64(i64 %bounds.sroa.22.0.copyload, i64 0), !dbg !2419
  %spec.select146 = add i64 %8, %13, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %spec.select146, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %12, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2409
  %add57 = add i64 %spec.select146, %12, !dbg !2420
  %rows58 = getelementptr inbounds %struct._Image, ptr %call13, i64 0, i32 8, !dbg !2422
  %14 = load i64, ptr %rows58, align 8, !dbg !2422, !tbaa !727
  %cmp59 = icmp sgt i64 %add57, %14, !dbg !2423
  %sub63 = sub i64 %14, %12
  %spec.select148 = select i1 %cmp59, i64 %sub63, i64 %spec.select146, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %spec.select148, metadata !2364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %call13, metadata !791, metadata !DIExpression()) #7, !dbg !2425
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()) #7, !dbg !2425
  %matte.i = getelementptr inbounds %struct._Image, ptr %call13, i64 0, i32 6, !dbg !2427
  %15 = load i32, ptr %matte.i, align 8, !dbg !2427, !tbaa !735
  %cmp1.i = icmp eq i32 %15, 0, !dbg !2428
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i, !dbg !2429

if.then2.i:                                       ; preds = %if.then26
  %call.i = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call13, i32 noundef 6) #7, !dbg !2430
  br label %if.end3.i, !dbg !2431

if.end3.i:                                        ; preds = %if.then2.i, %if.then26
  %exception4.i = getelementptr inbounds %struct._Image, ptr %call13, i64 0, i32 58, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %exception4.i, metadata !797, metadata !DIExpression()) #7, !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()) #7, !dbg !2425
  %cmp549.i = icmp sgt i64 %spec.select148, 0, !dbg !2433
  br i1 %cmp549.i, label %for.body.i.preheader, label %if.end66thread-pre-split, !dbg !2434

for.body.i.preheader:                             ; preds = %if.end3.i
  %cmp1546.i = icmp sgt i64 %spec.select147, 0
  br i1 %cmp1546.i, label %for.body.i.us, label %for.body.i, !dbg !2435

for.body.i.us:                                    ; preds = %for.body.i.preheader, %for.end.i.loopexit.us
  %y.050.i.us = phi i64 [ %inc23.i.us, %for.end.i.loopexit.us ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression()) #7, !dbg !2425
  %add.i.us = add nuw nsw i64 %y.050.i.us, %12, !dbg !2436
  %call9.i.us = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %call13, i64 noundef %9, i64 noundef %add.i.us, i64 noundef %spec.select147, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %call9.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !2438
  %cmp10.i.us = icmp eq ptr %call9.i.us, null, !dbg !2439
  br i1 %cmp10.i.us, label %if.end66thread-pre-split, label %for.body16.i.us, !dbg !2440

for.body16.i.us:                                  ; preds = %for.body.i.us, %for.body16.i.us
  %q.048.i.us = phi ptr [ %incdec.ptr.i.us, %for.body16.i.us ], [ %call9.i.us, %for.body.i.us ]
  %x6.047.i.us = phi i64 [ %inc.i.us, %for.body16.i.us ], [ 0, %for.body.i.us ]
  call void @llvm.dbg.value(metadata ptr %q.048.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %x6.047.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !2438
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 0, i32 3, !dbg !2441
  store i16 -1, ptr %opacity.i.us, align 2, !dbg !2442, !tbaa !828
  %incdec.ptr.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.048.i.us, i64 1, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.us, metadata !803, metadata !DIExpression()) #7, !dbg !2438
  %inc.i.us = add nuw nsw i64 %x6.047.i.us, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %inc.i.us, metadata !799, metadata !DIExpression()) #7, !dbg !2438
  %exitcond.not.i.us = icmp eq i64 %inc.i.us, %spec.select147, !dbg !2445
  br i1 %exitcond.not.i.us, label %for.end.i.loopexit.us, label %for.body16.i.us, !dbg !2435, !llvm.loop !2446

for.end.i.loopexit.us:                            ; preds = %for.body16.i.us
  %call17.i.us = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %call13, ptr noundef nonnull %exception4.i) #7, !dbg !2448
  %cmp18.i.us = icmp ne i32 %call17.i.us, 0, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2425
  %inc23.i.us = add nuw nsw i64 %y.050.i.us, 1
  %cmp5.i.us = icmp slt i64 %inc23.i.us, %spec.select148
  %or.cond.us = select i1 %cmp18.i.us, i1 %cmp5.i.us, i1 false, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %y.050.i.us, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2425
  br i1 %or.cond.us, label %for.body.i.us, label %if.end66thread-pre-split, !dbg !2450, !llvm.loop !2451

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond13.preheader.i
  %y.050.i = phi i64 [ %inc23.i, %for.cond13.preheader.i ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression()) #7, !dbg !2425
  %add.i = add nuw nsw i64 %y.050.i, %12, !dbg !2436
  %call9.i = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %call13, i64 noundef %9, i64 noundef %add.i, i64 noundef %spec.select147, i64 noundef 1, ptr noundef nonnull %exception4.i) #7, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !2438
  %cmp10.i = icmp eq ptr %call9.i, null, !dbg !2439
  br i1 %cmp10.i, label %if.end66thread-pre-split, label %for.cond13.preheader.i, !dbg !2440

for.cond13.preheader.i:                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !803, metadata !DIExpression()) #7, !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !799, metadata !DIExpression()) #7, !dbg !2438
  %call17.i = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %call13, ptr noundef nonnull %exception4.i) #7, !dbg !2448
  %cmp18.i = icmp ne i32 %call17.i, 0, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2425
  %inc23.i = add nuw nsw i64 %y.050.i, 1
  %cmp5.i = icmp slt i64 %inc23.i, %spec.select148
  %or.cond = select i1 %cmp18.i, i1 %cmp5.i, i1 false, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %y.050.i, metadata !798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !2425
  br i1 %or.cond, label %for.body.i, label %if.end66thread-pre-split, !dbg !2450, !llvm.loop !2451

if.end66thread-pre-split:                         ; preds = %for.cond13.preheader.i, %for.body.i, %for.end.i.loopexit.us, %for.body.i.us, %if.end3.i
  %.pr = load i32, ptr %dispose24, align 4, !dbg !2453, !tbaa !742
  br label %if.end66, !dbg !2453

if.end66:                                         ; preds = %if.end66thread-pre-split, %if.end17
  %16 = phi i32 [ %.pr, %if.end66thread-pre-split ], [ %6, %if.end17 ], !dbg !2453
  %cmp68.not = icmp eq i32 %16, 3, !dbg !2455
  br i1 %cmp68.not, label %if.else, label %if.then69, !dbg !2456

if.then69:                                        ; preds = %if.end66
  %call70 = tail call ptr @DestroyImage(ptr noundef %dispose_image.0160) #7, !dbg !2457
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2360, metadata !DIExpression()), !dbg !2367
  br label %if.end72, !dbg !2459

if.else:                                          ; preds = %if.end66
  %call71 = tail call ptr @DestroyImage(ptr noundef nonnull %call13) #7, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %call71, metadata !2362, metadata !DIExpression()), !dbg !2395
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then69
  %dispose_image.1 = phi ptr [ %call13, %if.then69 ], [ %dispose_image.0160, %if.else ], !dbg !2367
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !2360, metadata !DIExpression()), !dbg !2367
  %call73 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0161) #7, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2361, metadata !DIExpression()), !dbg !2367
  %cond164 = icmp eq ptr %call73, null, !dbg !2462
  br i1 %cond164, label %cleanup85.sink.split, label %if.then75, !dbg !2462

if.then75:                                        ; preds = %if.end72
  %x77 = getelementptr inbounds %struct._Image, ptr %call73, i64 0, i32 26, i32 2, !dbg !2463
  %17 = load i64, ptr %x77, align 8, !dbg !2463, !tbaa !745
  %sub78 = sub nsw i64 0, %17, !dbg !2466
  %y80 = getelementptr inbounds %struct._Image, ptr %call73, i64 0, i32 26, i32 3, !dbg !2467
  %18 = load i64, ptr %y80, align 8, !dbg !2467, !tbaa !747
  %sub81 = sub nsw i64 0, %18, !dbg !2468
  %call82 = tail call i32 @CompositeImage(ptr noundef nonnull %call73, i32 noundef 6, ptr noundef %dispose_image.1, i64 noundef %sub78, i64 noundef %sub81) #7, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2361, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %dispose_image.1, metadata !2360, metadata !DIExpression()), !dbg !2367
  br label %while.body, !dbg !2393

cleanup85.sink.split:                             ; preds = %if.end72, %while.body, %if.end6
  %dispose_image.0.lcssa = phi ptr [ %call3, %if.end6 ], [ %dispose_image.0160, %while.body ], [ %dispose_image.1, %if.end72 ], !dbg !2367
  %call16 = tail call ptr @DestroyImage(ptr noundef %dispose_image.0.lcssa) #7, !dbg !2367
  br label %cleanup85, !dbg !2470

cleanup85:                                        ; preds = %cleanup85.sink.split, %if.end
  ret void, !dbg !2470
}

; Function Attrs: nounwind uwtable
define dso_local void @RemoveDuplicateLayers(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !2471 {
entry:
  %tmp = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !2475, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2476, metadata !DIExpression()), !dbg !2486
  %0 = load ptr, ptr %images, align 8, !dbg !2487, !tbaa !1046
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !2489
  %1 = load i32, ptr %debug, align 8, !dbg !2489, !tbaa !684
  %cmp.not = icmp eq i32 %1, 0, !dbg !2490
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2491

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !2492
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1650, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2493
  %.pre = load ptr, ptr %images, align 8, !dbg !2494, !tbaa !1046
  br label %if.end, !dbg !2495

if.end:                                           ; preds = %if.then, %entry
  %2 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !2494
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef %2) #7, !dbg !2496
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2477, metadata !DIExpression()), !dbg !2486
  %call261 = tail call ptr @GetNextImageInList(ptr noundef %call1) #7, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %call261, metadata !2478, metadata !DIExpression()), !dbg !2486
  %cmp3.not62 = icmp eq ptr %call261, null, !dbg !2498
  br i1 %cmp3.not62, label %for.end, label %for.body.lr.ph, !dbg !2499

for.body.lr.ph:                                   ; preds = %if.end
  %bounds.sroa.3.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i64 16
  br label %for.body, !dbg !2499

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %call264 = phi ptr [ %call261, %for.body.lr.ph ], [ %call2, %for.inc ]
  %curr.063 = phi ptr [ %call1, %for.body.lr.ph ], [ %call264, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %curr.063, metadata !2477, metadata !DIExpression()), !dbg !2486
  %columns = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 7, !dbg !2500
  %3 = load i64, ptr %columns, align 8, !dbg !2500, !tbaa !720
  %columns4 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 7, !dbg !2502
  %4 = load i64, ptr %columns4, align 8, !dbg !2502, !tbaa !720
  %cmp5.not = icmp eq i64 %3, %4, !dbg !2503
  br i1 %cmp5.not, label %lor.lhs.false, label %for.inc, !dbg !2504

lor.lhs.false:                                    ; preds = %for.body
  %rows = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 8, !dbg !2505
  %5 = load i64, ptr %rows, align 8, !dbg !2505, !tbaa !727
  %rows6 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 8, !dbg !2506
  %6 = load i64, ptr %rows6, align 8, !dbg !2506, !tbaa !727
  %cmp7.not = icmp eq i64 %5, %6, !dbg !2507
  br i1 %cmp7.not, label %lor.lhs.false8, label %for.inc, !dbg !2508

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %x = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 26, i32 2, !dbg !2509
  %7 = load i64, ptr %x, align 8, !dbg !2509, !tbaa !745
  %x10 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, i32 2, !dbg !2510
  %8 = load i64, ptr %x10, align 8, !dbg !2510, !tbaa !745
  %cmp11.not = icmp eq i64 %7, %8, !dbg !2511
  br i1 %cmp11.not, label %lor.lhs.false12, label %for.inc, !dbg !2512

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %y = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 26, i32 3, !dbg !2513
  %9 = load i64, ptr %y, align 8, !dbg !2513, !tbaa !747
  %y15 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 26, i32 3, !dbg !2514
  %10 = load i64, ptr %y15, align 8, !dbg !2514, !tbaa !747
  %cmp16.not = icmp eq i64 %9, %10, !dbg !2515
  br i1 %cmp16.not, label %if.end18, label %for.inc, !dbg !2516

if.end18:                                         ; preds = %lor.lhs.false12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7, !dbg !2517
  call fastcc void @CompareImageBounds(ptr noalias nonnull align 8 %tmp, ptr noundef nonnull %curr.063, ptr noundef nonnull %call264, i32 noundef 2, ptr noundef %exception), !dbg !2517
  %bounds.sroa.3.0.copyload = load i64, ptr %bounds.sroa.3.0.tmp.sroa_idx, align 8, !dbg !2517, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.3.0.copyload, metadata !2479, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2486
  call void @llvm.dbg.value(metadata i64 undef, metadata !2479, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2486
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7, !dbg !2517
  %cmp20 = icmp slt i64 %bounds.sroa.3.0.copyload, 0, !dbg !2518
  br i1 %cmp20, label %if.then21, label %for.inc, !dbg !2519

if.then21:                                        ; preds = %if.end18
  %delay = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 40, !dbg !2520
  %11 = load i64, ptr %delay, align 8, !dbg !2520, !tbaa !2284
  %mul = mul i64 %11, 1000, !dbg !2521
  %ticks_per_second = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 41, !dbg !2522
  %12 = load i64, ptr %ticks_per_second, align 8, !dbg !2522, !tbaa !2287
  %div = udiv i64 %mul, %12, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %div, metadata !2480, metadata !DIExpression()), !dbg !2524
  %delay22 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 40, !dbg !2525
  %13 = load i64, ptr %delay22, align 8, !dbg !2525, !tbaa !2284
  %mul23 = mul i64 %13, 1000, !dbg !2526
  %ticks_per_second24 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 41, !dbg !2527
  %14 = load i64, ptr %ticks_per_second24, align 8, !dbg !2527, !tbaa !2287
  %div25 = udiv i64 %mul23, %14, !dbg !2528
  %add = add i64 %div25, %div, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %add, metadata !2480, metadata !DIExpression()), !dbg !2524
  store i64 100, ptr %ticks_per_second24, align 8, !dbg !2530, !tbaa !2287
  %15 = load i64, ptr %ticks_per_second, align 8, !dbg !2531, !tbaa !2287
  %mul28 = mul i64 %15, %add, !dbg !2532
  %div29 = udiv i64 %mul28, 1000, !dbg !2533
  store i64 %div29, ptr %delay22, align 8, !dbg !2534, !tbaa !2284
  %iterations = getelementptr inbounds %struct._Image, ptr %curr.063, i64 0, i32 42, !dbg !2535
  %16 = load i64, ptr %iterations, align 8, !dbg !2535, !tbaa !2536
  %iterations31 = getelementptr inbounds %struct._Image, ptr %call264, i64 0, i32 42, !dbg !2537
  store i64 %16, ptr %iterations31, align 8, !dbg !2538, !tbaa !2536
  store ptr %curr.063, ptr %images, align 8, !dbg !2539, !tbaa !1046
  tail call void @DeleteImageFromList(ptr noundef nonnull %images) #7, !dbg !2540
  br label %for.inc, !dbg !2541

for.inc:                                          ; preds = %if.end18, %if.then21, %for.body, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12
  call void @llvm.dbg.value(metadata ptr %call264, metadata !2477, metadata !DIExpression()), !dbg !2486
  %call2 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call264) #7, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2478, metadata !DIExpression()), !dbg !2486
  %cmp3.not = icmp eq ptr %call2, null, !dbg !2498
  br i1 %cmp3.not, label %for.end, label %for.body, !dbg !2499, !llvm.loop !2542

for.end:                                          ; preds = %for.inc, %if.end
  %17 = load ptr, ptr %images, align 8, !dbg !2544, !tbaa !1046
  %call33 = tail call ptr @GetFirstImageInList(ptr noundef %17) #7, !dbg !2545
  store ptr %call33, ptr %images, align 8, !dbg !2546, !tbaa !1046
  ret void, !dbg !2547
}

declare !dbg !2548 void @DeleteImageFromList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @RemoveZeroDelayLayers(ptr nocapture noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !2551 {
entry:
  %i = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #7, !dbg !2557
  %0 = load ptr, ptr %images, align 8, !dbg !2558, !tbaa !1046
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !2560
  %1 = load i32, ptr %debug, align 8, !dbg !2560, !tbaa !684
  %cmp.not = icmp eq i32 %1, 0, !dbg !2561
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2562

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !2563
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1727, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2564
  %.pre = load ptr, ptr %images, align 8, !dbg !2565, !tbaa !1046
  br label %if.end, !dbg !2566

if.end:                                           ; preds = %if.then, %entry
  %2 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !2565
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef %2) #7, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2555, metadata !DIExpression()), !dbg !2556
  %cmp2.not31 = icmp eq ptr %call1, null, !dbg !2568
  br i1 %cmp2.not31, label %if.then8, label %for.body, !dbg !2571

for.body:                                         ; preds = %if.end, %for.inc
  %storemerge32 = phi ptr [ %call6, %for.inc ], [ %call1, %if.end ]
  call void @llvm.dbg.value(metadata ptr %storemerge32, metadata !2555, metadata !DIExpression()), !dbg !2556
  %delay = getelementptr inbounds %struct._Image, ptr %storemerge32, i64 0, i32 40, !dbg !2572
  %3 = load i64, ptr %delay, align 8, !dbg !2572, !tbaa !2284
  %cmp3.not = icmp eq i64 %3, 0, !dbg !2574
  br i1 %cmp3.not, label %for.inc, label %if.end13, !dbg !2575

for.inc:                                          ; preds = %for.body
  %call6 = tail call ptr @GetNextImageInList(ptr noundef nonnull %storemerge32) #7, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2555, metadata !DIExpression()), !dbg !2556
  %cmp2.not = icmp eq ptr %call6, null, !dbg !2568
  br i1 %cmp2.not, label %if.then8, label %for.body, !dbg !2571, !llvm.loop !2577

if.then8:                                         ; preds = %for.inc, %if.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !2555, metadata !DIExpression()), !dbg !2556
  %4 = load ptr, ptr %images, align 8, !dbg !2579, !tbaa !1046
  %call9 = tail call ptr @GetFirstImageInList(ptr noundef %4) #7, !dbg !2582
  %filename10 = getelementptr inbounds %struct._Image, ptr %call9, i64 0, i32 53, !dbg !2583
  %call12 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename10) #7, !dbg !2584
  br label %cleanup, !dbg !2585

if.end13:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr undef, metadata !2555, metadata !DIExpression()), !dbg !2556
  %5 = load ptr, ptr %images, align 8, !dbg !2586, !tbaa !1046
  %call14 = tail call ptr @GetFirstImageInList(ptr noundef %5) #7, !dbg !2587
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2555, metadata !DIExpression()), !dbg !2556
  store ptr %call14, ptr %i, align 8, !dbg !2588, !tbaa !1046
  %cmp15.not33 = icmp eq ptr %call14, null, !dbg !2589
  br i1 %cmp15.not33, label %while.end, label %while.body, !dbg !2590

while.body:                                       ; preds = %if.end13, %if.end20
  %6 = phi ptr [ %.pr, %if.end20 ], [ %call14, %if.end13 ]
  call void @llvm.dbg.value(metadata ptr %6, metadata !2555, metadata !DIExpression()), !dbg !2556
  %delay16 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 40, !dbg !2591
  %7 = load i64, ptr %delay16, align 8, !dbg !2591, !tbaa !2284
  %cmp17 = icmp eq i64 %7, 0, !dbg !2594
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !2595

if.then18:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %i, metadata !2555, metadata !DIExpression(DW_OP_deref)), !dbg !2556
  call void @DeleteImageFromList(ptr noundef nonnull %i) #7, !dbg !2596
  %8 = load ptr, ptr %i, align 8, !dbg !2598, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %8, metadata !2555, metadata !DIExpression()), !dbg !2556
  store ptr %8, ptr %images, align 8, !dbg !2599, !tbaa !1046
  br label %if.end20, !dbg !2600

if.else:                                          ; preds = %while.body
  %call19 = call ptr @GetNextImageInList(ptr noundef nonnull %6) #7, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2555, metadata !DIExpression()), !dbg !2556
  store ptr %call19, ptr %i, align 8, !dbg !2602, !tbaa !1046
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %.pr = phi ptr [ %call19, %if.else ], [ %8, %if.then18 ], !dbg !2603
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !2555, metadata !DIExpression()), !dbg !2556
  %cmp15.not = icmp eq ptr %.pr, null, !dbg !2589
  br i1 %cmp15.not, label %while.end, label %while.body, !dbg !2590, !llvm.loop !2604

while.end:                                        ; preds = %if.end20, %if.end13
  %9 = load ptr, ptr %images, align 8, !dbg !2606, !tbaa !1046
  %call21 = call ptr @GetFirstImageInList(ptr noundef %9) #7, !dbg !2607
  store ptr %call21, ptr %images, align 8, !dbg !2608, !tbaa !1046
  br label %cleanup, !dbg !2609

cleanup:                                          ; preds = %while.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #7, !dbg !2609
  ret void, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local void @CompositeLayers(ptr noundef %destination, i32 noundef %compose, ptr noundef %source, i64 noundef %x_offset, i64 noundef %y_offset, ptr noundef %exception) local_unnamed_addr #0 !dbg !2610 {
entry:
  %destination.addr = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  store ptr %destination, ptr %destination.addr, align 8, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %compose, metadata !2615, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %source, metadata !2616, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2617, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2619, metadata !DIExpression()), !dbg !2624
  %debug = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 59, !dbg !2625
  %0 = load i32, ptr %debug, align 8, !dbg !2625, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !2627
  br i1 %cmp.not, label %lor.lhs.false, label %if.then, !dbg !2628

lor.lhs.false:                                    ; preds = %entry
  %debug1 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 59, !dbg !2629
  %1 = load i32, ptr %debug1, align 8, !dbg !2629, !tbaa !684
  %cmp2.not = icmp eq i32 %1, 0, !dbg !2630
  br i1 %cmp2.not, label %if.end, label %if.then, !dbg !2631

if.then:                                          ; preds = %lor.lhs.false, %entry
  %filename = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 53, !dbg !2632
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  %filename3 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 53, !dbg !2633
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1828, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename, ptr noundef nonnull %filename3) #7, !dbg !2634
  br label %if.end, !dbg !2635

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %next = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 69, !dbg !2636
  %2 = load ptr, ptr %next, align 8, !dbg !2636, !tbaa !845
  %cmp5 = icmp eq ptr %2, null, !dbg !2637
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  br i1 %cmp5, label %while.condthread-pre-split, label %if.else, !dbg !2638

while.condthread-pre-split:                       ; preds = %if.end
  %cmp7.not113 = icmp eq ptr %destination, null, !dbg !2639
  br i1 %cmp7.not113, label %if.end41.loopexit, label %while.body.lr.ph, !dbg !2640

while.body.lr.ph:                                 ; preds = %while.condthread-pre-split
  %x.i = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 26, i32 2
  %y.i = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 26, i32 3
  br label %while.body, !dbg !2640

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %call8112114 = phi ptr [ %destination, %while.body.lr.ph ], [ %call8, %while.body ]
  call void @llvm.dbg.value(metadata ptr %call8112114, metadata !2614, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %call8112114, metadata !2641, metadata !DIExpression()) #7, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %compose, metadata !2646, metadata !DIExpression()) #7, !dbg !2650
  call void @llvm.dbg.value(metadata ptr %source, metadata !2647, metadata !DIExpression()) #7, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2648, metadata !DIExpression()) #7, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2649, metadata !DIExpression()) #7, !dbg !2650
  %3 = load i64, ptr %x.i, align 8, !dbg !2653, !tbaa !745
  %x2.i = getelementptr inbounds %struct._Image, ptr %call8112114, i64 0, i32 26, i32 2, !dbg !2654
  %4 = load i64, ptr %x2.i, align 8, !dbg !2654, !tbaa !745
  %sub.i = add i64 %3, %x_offset, !dbg !2655
  %add.i = sub i64 %sub.i, %4, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2648, metadata !DIExpression()) #7, !dbg !2650
  %5 = load i64, ptr %y.i, align 8, !dbg !2657, !tbaa !747
  %y5.i = getelementptr inbounds %struct._Image, ptr %call8112114, i64 0, i32 26, i32 3, !dbg !2658
  %6 = load i64, ptr %y5.i, align 8, !dbg !2658, !tbaa !747
  %sub6.i = add i64 %5, %y_offset, !dbg !2659
  %add7.i = sub i64 %sub6.i, %6, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %add7.i, metadata !2649, metadata !DIExpression()) #7, !dbg !2650
  %call.i = tail call i32 @CompositeImage(ptr noundef nonnull %call8112114, i32 noundef %compose, ptr noundef nonnull %source, i64 noundef %add.i, i64 noundef %add7.i) #7, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %call8112114, metadata !2614, metadata !DIExpression()), !dbg !2624
  %call8 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call8112114) #7, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %call8, metadata !2614, metadata !DIExpression()), !dbg !2624
  %cmp7.not = icmp eq ptr %call8, null, !dbg !2639
  br i1 %cmp7.not, label %if.end41.loopexit, label %while.body, !dbg !2640, !llvm.loop !2663

if.else:                                          ; preds = %if.end
  %next9 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 69, !dbg !2665
  %7 = load ptr, ptr %next9, align 8, !dbg !2665, !tbaa !845
  %cmp10 = icmp eq ptr %7, null, !dbg !2666
  br i1 %cmp10, label %if.then11, label %while.body36, !dbg !2667

if.then11:                                        ; preds = %if.else
  %call12 = tail call ptr @CloneImage(ptr noundef nonnull %destination, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2620, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2641, metadata !DIExpression()) #7, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %compose, metadata !2646, metadata !DIExpression()) #7, !dbg !2670
  call void @llvm.dbg.value(metadata ptr %source, metadata !2647, metadata !DIExpression()) #7, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2648, metadata !DIExpression()) #7, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2649, metadata !DIExpression()) #7, !dbg !2670
  %x.i70 = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 26, i32 2, !dbg !2672
  %8 = load i64, ptr %x.i70, align 8, !dbg !2672, !tbaa !745
  %x2.i71 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 26, i32 2, !dbg !2673
  %9 = load i64, ptr %x2.i71, align 8, !dbg !2673, !tbaa !745
  %sub.i72 = add i64 %8, %x_offset, !dbg !2674
  %add.i73 = sub i64 %sub.i72, %9, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %add.i73, metadata !2648, metadata !DIExpression()) #7, !dbg !2670
  %y.i74 = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 26, i32 3, !dbg !2676
  %10 = load i64, ptr %y.i74, align 8, !dbg !2676, !tbaa !747
  %y5.i75 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 26, i32 3, !dbg !2677
  %11 = load i64, ptr %y5.i75, align 8, !dbg !2677, !tbaa !747
  %sub6.i76 = add i64 %10, %y_offset, !dbg !2678
  %add7.i77 = sub i64 %sub6.i76, %11, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %add7.i77, metadata !2649, metadata !DIExpression()) #7, !dbg !2670
  %call.i78 = tail call i32 @CompositeImage(ptr noundef nonnull %destination, i32 noundef %compose, ptr noundef nonnull %source, i64 noundef %add.i73, i64 noundef %add7.i77) #7, !dbg !2680
  %12 = load ptr, ptr %next, align 8, !dbg !2681, !tbaa !845
  %cmp14.not = icmp eq ptr %12, null, !dbg !2683
  br i1 %cmp14.not, label %if.end18, label %if.then15, !dbg !2684

if.then15:                                        ; preds = %if.then11
  %delay = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 40, !dbg !2685
  %13 = load i64, ptr %delay, align 8, !dbg !2685, !tbaa !2284
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2614, metadata !DIExpression()), !dbg !2624
  %delay16 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 40, !dbg !2687
  store i64 %13, ptr %delay16, align 8, !dbg !2688, !tbaa !2284
  %iterations = getelementptr inbounds %struct._Image, ptr %source, i64 0, i32 42, !dbg !2689
  %14 = load i64, ptr %iterations, align 8, !dbg !2689, !tbaa !2536
  %iterations17 = getelementptr inbounds %struct._Image, ptr %destination, i64 0, i32 42, !dbg !2690
  store i64 %14, ptr %iterations17, align 8, !dbg !2691, !tbaa !2536
  br label %if.end18, !dbg !2692

if.end18:                                         ; preds = %if.then15, %if.then11
  %call19 = tail call ptr @GetNextImageInList(ptr noundef nonnull %source) #7, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2616, metadata !DIExpression()), !dbg !2624
  %cmp21.not109 = icmp eq ptr %call19, null, !dbg !2694
  br i1 %cmp21.not109, label %while.end30, label %while.body22, !dbg !2695

while.body22:                                     ; preds = %if.end18, %while.body22
  %source.addr.0110 = phi ptr [ %call29, %while.body22 ], [ %call19, %if.end18 ]
  call void @llvm.dbg.value(metadata ptr %source.addr.0110, metadata !2616, metadata !DIExpression()), !dbg !2624
  %call23 = call ptr @CloneImage(ptr noundef %call12, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %destination.addr, metadata !2614, metadata !DIExpression(DW_OP_deref)), !dbg !2624
  call void @AppendImageToList(ptr noundef nonnull %destination.addr, ptr noundef %call23) #7, !dbg !2698
  %15 = load ptr, ptr %destination.addr, align 8, !dbg !2699, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %15, metadata !2614, metadata !DIExpression()), !dbg !2624
  %call24 = call ptr @GetLastImageInList(ptr noundef %15) #7, !dbg !2700
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2614, metadata !DIExpression()), !dbg !2624
  store ptr %call24, ptr %destination.addr, align 8, !dbg !2701, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2641, metadata !DIExpression()) #7, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %compose, metadata !2646, metadata !DIExpression()) #7, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %source.addr.0110, metadata !2647, metadata !DIExpression()) #7, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2648, metadata !DIExpression()) #7, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2649, metadata !DIExpression()) #7, !dbg !2702
  %x.i79 = getelementptr inbounds %struct._Image, ptr %source.addr.0110, i64 0, i32 26, i32 2, !dbg !2704
  %16 = load i64, ptr %x.i79, align 8, !dbg !2704, !tbaa !745
  %x2.i80 = getelementptr inbounds %struct._Image, ptr %call24, i64 0, i32 26, i32 2, !dbg !2705
  %17 = load i64, ptr %x2.i80, align 8, !dbg !2705, !tbaa !745
  %sub.i81 = add i64 %16, %x_offset, !dbg !2706
  %add.i82 = sub i64 %sub.i81, %17, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %add.i82, metadata !2648, metadata !DIExpression()) #7, !dbg !2702
  %y.i83 = getelementptr inbounds %struct._Image, ptr %source.addr.0110, i64 0, i32 26, i32 3, !dbg !2708
  %18 = load i64, ptr %y.i83, align 8, !dbg !2708, !tbaa !747
  %y5.i84 = getelementptr inbounds %struct._Image, ptr %call24, i64 0, i32 26, i32 3, !dbg !2709
  %19 = load i64, ptr %y5.i84, align 8, !dbg !2709, !tbaa !747
  %sub6.i85 = add i64 %18, %y_offset, !dbg !2710
  %add7.i86 = sub i64 %sub6.i85, %19, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %add7.i86, metadata !2649, metadata !DIExpression()) #7, !dbg !2702
  %call.i87 = call i32 @CompositeImage(ptr noundef %call24, i32 noundef %compose, ptr noundef nonnull %source.addr.0110, i64 noundef %add.i82, i64 noundef %add7.i86) #7, !dbg !2712
  %delay25 = getelementptr inbounds %struct._Image, ptr %source.addr.0110, i64 0, i32 40, !dbg !2713
  %20 = load i64, ptr %delay25, align 8, !dbg !2713, !tbaa !2284
  %21 = load ptr, ptr %destination.addr, align 8, !dbg !2714, !tbaa !1046
  call void @llvm.dbg.value(metadata ptr %21, metadata !2614, metadata !DIExpression()), !dbg !2624
  %delay26 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 40, !dbg !2715
  store i64 %20, ptr %delay26, align 8, !dbg !2716, !tbaa !2284
  %iterations27 = getelementptr inbounds %struct._Image, ptr %source.addr.0110, i64 0, i32 42, !dbg !2717
  %22 = load i64, ptr %iterations27, align 8, !dbg !2717, !tbaa !2536
  %iterations28 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 42, !dbg !2718
  store i64 %22, ptr %iterations28, align 8, !dbg !2719, !tbaa !2536
  %call29 = call ptr @GetNextImageInList(ptr noundef nonnull %source.addr.0110) #7, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2616, metadata !DIExpression()), !dbg !2624
  %cmp21.not = icmp eq ptr %call29, null, !dbg !2694
  br i1 %cmp21.not, label %while.end30, label %while.body22, !dbg !2695, !llvm.loop !2721

while.end30:                                      ; preds = %while.body22, %if.end18
  %call31 = call ptr @DestroyImage(ptr noundef %call12) #7, !dbg !2723
  call void @llvm.dbg.value(metadata ptr %call31, metadata !2620, metadata !DIExpression()), !dbg !2669
  br label %if.end41, !dbg !2724

while.body36:                                     ; preds = %if.else, %while.body36
  %source.addr.1108 = phi ptr [ %call37, %while.body36 ], [ %source, %if.else ]
  %23 = phi ptr [ %call38, %while.body36 ], [ %destination, %if.else ]
  call void @llvm.dbg.value(metadata ptr %source.addr.1108, metadata !2616, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %23, metadata !2614, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %23, metadata !2641, metadata !DIExpression()) #7, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %compose, metadata !2646, metadata !DIExpression()) #7, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %source.addr.1108, metadata !2647, metadata !DIExpression()) #7, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !2648, metadata !DIExpression()) #7, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !2649, metadata !DIExpression()) #7, !dbg !2725
  %x.i88 = getelementptr inbounds %struct._Image, ptr %source.addr.1108, i64 0, i32 26, i32 2, !dbg !2728
  %24 = load i64, ptr %x.i88, align 8, !dbg !2728, !tbaa !745
  %x2.i89 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 26, i32 2, !dbg !2729
  %25 = load i64, ptr %x2.i89, align 8, !dbg !2729, !tbaa !745
  %sub.i90 = add i64 %24, %x_offset, !dbg !2730
  %add.i91 = sub i64 %sub.i90, %25, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %add.i91, metadata !2648, metadata !DIExpression()) #7, !dbg !2725
  %y.i92 = getelementptr inbounds %struct._Image, ptr %source.addr.1108, i64 0, i32 26, i32 3, !dbg !2732
  %26 = load i64, ptr %y.i92, align 8, !dbg !2732, !tbaa !747
  %y5.i93 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 26, i32 3, !dbg !2733
  %27 = load i64, ptr %y5.i93, align 8, !dbg !2733, !tbaa !747
  %sub6.i94 = add i64 %26, %y_offset, !dbg !2734
  %add7.i95 = sub i64 %sub6.i94, %27, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %add7.i95, metadata !2649, metadata !DIExpression()) #7, !dbg !2725
  %call.i96 = tail call i32 @CompositeImage(ptr noundef nonnull %23, i32 noundef %compose, ptr noundef nonnull %source.addr.1108, i64 noundef %add.i91, i64 noundef %add7.i95) #7, !dbg !2736
  %call37 = tail call ptr @GetNextImageInList(ptr noundef nonnull %source.addr.1108) #7, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2616, metadata !DIExpression()), !dbg !2624
  %call38 = tail call ptr @GetNextImageInList(ptr noundef nonnull %23) #7, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %call38, metadata !2614, metadata !DIExpression()), !dbg !2624
  %cmp34 = icmp ne ptr %call37, null, !dbg !2739
  %cmp35 = icmp ne ptr %call38, null
  %or.cond = select i1 %cmp34, i1 %cmp35, i1 false, !dbg !2740
  br i1 %or.cond, label %while.body36, label %if.end41.loopexit104, !dbg !2740, !llvm.loop !2741

if.end41.loopexit:                                ; preds = %while.body, %while.condthread-pre-split
  store ptr null, ptr %destination.addr, align 8, !dbg !2744, !tbaa !1046
  br label %if.end41, !dbg !2745

if.end41.loopexit104:                             ; preds = %while.body36
  store ptr %call38, ptr %destination.addr, align 8
  br label %if.end41, !dbg !2745

if.end41:                                         ; preds = %if.end41.loopexit104, %if.end41.loopexit, %while.end30
  ret void, !dbg !2745
}

declare !dbg !2746 ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MergeImageLayers(ptr noundef %image, i32 noundef %method, ptr noundef %exception) local_unnamed_addr #0 !dbg !2747 {
entry:
  %message.i330 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2751, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %method, metadata !2752, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2753, metadata !DIExpression()), !dbg !2762
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2763
  %0 = load i32, ptr %debug, align 8, !dbg !2763, !tbaa !684
  %cmp.not = icmp eq i32 %0, 0, !dbg !2765
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2766

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2767
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1969, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2768
  br label %if.end, !dbg !2769

if.end:                                           ; preds = %if.then, %entry
  %page1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !2770
  %page.sroa.0.0.copyload = load i64, ptr %page1, align 8, !dbg !2770, !tbaa.struct !710
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2762
  %page.sroa.11.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 8, !dbg !2770
  %page.sroa.11.0.copyload = load i64, ptr %page.sroa.11.0.page1.sroa_idx, align 8, !dbg !2770, !tbaa.struct !712
  call void @llvm.dbg.value(metadata i64 %page.sroa.11.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2771
  %1 = load i64, ptr %columns, align 8, !dbg !2771, !tbaa !720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2762
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2772
  %2 = load i64, ptr %rows, align 8, !dbg !2772, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %2, metadata !2759, metadata !DIExpression()), !dbg !2762
  switch i32 %method, label %sw.default [
    i32 15, label %if.then87.preheader
    i32 14, label %sw.bb59
  ], !dbg !2773

sw.default:                                       ; preds = %if.end
  %page.sroa.29.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 24, !dbg !2770
  %page.sroa.29.0.copyload = load i64, ptr %page.sroa.29.0.page1.sroa_idx, align 8, !dbg !2770, !tbaa.struct !713
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %page.sroa.18.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 16, !dbg !2770
  %page.sroa.18.0.copyload = load i64, ptr %page.sroa.18.0.page1.sroa_idx, align 8, !dbg !2770, !tbaa.struct !717
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  %call2 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #7, !dbg !2774
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %2, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.0.copyload, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %cmp3.not352 = icmp eq ptr %call2, null, !dbg !2777
  br i1 %cmp3.not352, label %sw.epilog, label %for.body, !dbg !2780

for.body:                                         ; preds = %sw.default, %if.end27
  %width.0357 = phi i64 [ %6, %if.end27 ], [ %1, %sw.default ]
  %height.0356 = phi i64 [ %8, %if.end27 ], [ %2, %sw.default ]
  %next.0355 = phi ptr [ %call58, %if.end27 ], [ %call2, %sw.default ]
  %page.sroa.18.0354 = phi i64 [ %page.sroa.18.1, %if.end27 ], [ %page.sroa.18.0.copyload, %sw.default ]
  %page.sroa.29.0353 = phi i64 [ %page.sroa.29.1, %if.end27 ], [ %page.sroa.29.0.copyload, %sw.default ]
  call void @llvm.dbg.value(metadata i64 %width.0357, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %height.0356, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %next.0355, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0354, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.0353, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %x5 = getelementptr inbounds %struct._Image, ptr %next.0355, i64 0, i32 26, i32 2, !dbg !2781
  %3 = load i64, ptr %x5, align 8, !dbg !2781, !tbaa !745
  %cmp6 = icmp sgt i64 %page.sroa.18.0354, %3, !dbg !2784
  br i1 %cmp6, label %if.then7, label %if.end14, !dbg !2785

if.then7:                                         ; preds = %for.body
  %sub = add i64 %width.0357, %page.sroa.18.0354, !dbg !2786
  %add = sub i64 %sub, %3, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %add, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %3, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  br label %if.end14, !dbg !2789

if.end14:                                         ; preds = %if.then7, %for.body
  %page.sroa.18.1 = phi i64 [ %3, %if.then7 ], [ %page.sroa.18.0354, %for.body ], !dbg !2762
  %width.1 = phi i64 [ %add, %if.then7 ], [ %width.0357, %for.body ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %width.1, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  %y16 = getelementptr inbounds %struct._Image, ptr %next.0355, i64 0, i32 26, i32 3, !dbg !2790
  %4 = load i64, ptr %y16, align 8, !dbg !2790, !tbaa !747
  %cmp17 = icmp sgt i64 %page.sroa.29.0353, %4, !dbg !2792
  br i1 %cmp17, label %if.then18, label %if.end27, !dbg !2793

if.then18:                                        ; preds = %if.end14
  %sub22 = add i64 %height.0356, %page.sroa.29.0353, !dbg !2794
  %add23 = sub i64 %sub22, %4, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %add23, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %4, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  br label %if.end27, !dbg !2797

if.end27:                                         ; preds = %if.then18, %if.end14
  %page.sroa.29.1 = phi i64 [ %4, %if.then18 ], [ %page.sroa.29.0353, %if.end14 ], !dbg !2762
  %height.1 = phi i64 [ %add23, %if.then18 ], [ %height.0356, %if.end14 ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %height.1, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %columns30 = getelementptr inbounds %struct._Image, ptr %next.0355, i64 0, i32 7, !dbg !2798
  %5 = load i64, ptr %columns30, align 8, !dbg !2798, !tbaa !720
  %add31 = sub i64 %3, %page.sroa.18.1, !dbg !2800
  %sub33 = add i64 %add31, %5, !dbg !2801
  %6 = tail call i64 @llvm.smax.i64(i64 %width.1, i64 %sub33), !dbg !2802
  call void @llvm.dbg.value(metadata i64 %6, metadata !2760, metadata !DIExpression()), !dbg !2762
  %rows45 = getelementptr inbounds %struct._Image, ptr %next.0355, i64 0, i32 8, !dbg !2803
  %7 = load i64, ptr %rows45, align 8, !dbg !2803, !tbaa !727
  %add46 = sub i64 %4, %page.sroa.29.1, !dbg !2805
  %sub48 = add i64 %add46, %7, !dbg !2806
  %8 = tail call i64 @llvm.smax.i64(i64 %height.1, i64 %sub48), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %8, metadata !2759, metadata !DIExpression()), !dbg !2762
  %call58 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0355) #7, !dbg !2808
  call void @llvm.dbg.value(metadata ptr %call58, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %cmp3.not = icmp eq ptr %call58, null, !dbg !2777
  br i1 %cmp3.not, label %sw.epilog, label %for.body, !dbg !2780, !llvm.loop !2809

sw.bb59:                                          ; preds = %if.end
  %cmp61.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !2811
  %spec.select321 = select i1 %cmp61.not, i64 %1, i64 %page.sroa.0.0.copyload, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %spec.select321, metadata !2760, metadata !DIExpression()), !dbg !2762
  %cmp66.not = icmp eq i64 %page.sroa.11.0.copyload, 0, !dbg !2815
  %spec.select325 = select i1 %cmp66.not, i64 %2, i64 %page.sroa.11.0.copyload, !dbg !2817
  br label %sw.epilog, !dbg !2817

if.then87.preheader:                              ; preds = %if.end
  %cmp74.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !2818
  %spec.select322 = select i1 %cmp74.not, i64 %1, i64 %page.sroa.0.0.copyload, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %spec.select322, metadata !2760, metadata !DIExpression()), !dbg !2762
  %cmp79.not = icmp eq i64 %page.sroa.11.0.copyload, 0, !dbg !2822
  %spec.select326 = select i1 %cmp79.not, i64 %2, i64 %page.sroa.11.0.copyload, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %spec.select326, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %image, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %spec.select322, metadata !2760, metadata !DIExpression()), !dbg !2762
  %x89390 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !2825
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  %y92391 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2831
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %9 = load i64, ptr %x89390, align 8, !dbg !2832, !tbaa !745
  %add97392 = add i64 %1, %9, !dbg !2834
  %10 = tail call i64 @llvm.smax.i64(i64 %spec.select322, i64 %add97392), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %10, metadata !2760, metadata !DIExpression()), !dbg !2762
  %11 = load i64, ptr %y92391, align 8, !dbg !2836, !tbaa !747
  %add108393 = add i64 %2, %11, !dbg !2838
  %12 = tail call i64 @llvm.smax.i64(i64 %spec.select326, i64 %add108393), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %12, metadata !2759, metadata !DIExpression()), !dbg !2762
  %call118394 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #7, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %call118394, metadata !2757, metadata !DIExpression()), !dbg !2762
  %cmp84.not395 = icmp eq ptr %call118394, null, !dbg !2841
  br i1 %cmp84.not395, label %sw.epilog, label %if.then87.if.then87_crit_edge, !dbg !2842, !llvm.loop !2843

if.then87.if.then87_crit_edge:                    ; preds = %if.then87.preheader, %if.then87.if.then87_crit_edge
  %call118396 = phi ptr [ %call118, %if.then87.if.then87_crit_edge ], [ %call118394, %if.then87.preheader ]
  %13 = phi i64 [ %18, %if.then87.if.then87_crit_edge ], [ %12, %if.then87.preheader ]
  %14 = phi i64 [ %16, %if.then87.if.then87_crit_edge ], [ %10, %if.then87.preheader ]
  %columns96.phi.trans.insert = getelementptr inbounds %struct._Image, ptr %call118396, i64 0, i32 7
  %.pre = load i64, ptr %columns96.phi.trans.insert, align 8, !dbg !2845, !tbaa !720
  %rows107.phi.trans.insert = getelementptr inbounds %struct._Image, ptr %call118396, i64 0, i32 8
  %.pre378 = load i64, ptr %rows107.phi.trans.insert, align 8, !dbg !2846, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %14, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %13, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %call118396, metadata !2757, metadata !DIExpression()), !dbg !2762
  %x89 = getelementptr inbounds %struct._Image, ptr %call118396, i64 0, i32 26, i32 2, !dbg !2825
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  %y92 = getelementptr inbounds %struct._Image, ptr %call118396, i64 0, i32 26, i32 3, !dbg !2831
  call void @llvm.dbg.value(metadata i64 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %15 = load i64, ptr %x89, align 8, !dbg !2832, !tbaa !745
  %add97 = add i64 %.pre, %15, !dbg !2834
  %16 = tail call i64 @llvm.smax.i64(i64 %14, i64 %add97), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %16, metadata !2760, metadata !DIExpression()), !dbg !2762
  %17 = load i64, ptr %y92, align 8, !dbg !2836, !tbaa !747
  %add108 = add i64 %.pre378, %17, !dbg !2838
  %18 = tail call i64 @llvm.smax.i64(i64 %13, i64 %add108), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %18, metadata !2759, metadata !DIExpression()), !dbg !2762
  %call118 = tail call ptr @GetNextImageInList(ptr noundef nonnull %call118396) #7, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %call118, metadata !2757, metadata !DIExpression()), !dbg !2762
  %cmp84.not = icmp eq ptr %call118, null, !dbg !2841
  br i1 %cmp84.not, label %sw.epilog, label %if.then87.if.then87_crit_edge, !dbg !2842, !llvm.loop !2843

sw.epilog:                                        ; preds = %if.then87.if.then87_crit_edge, %if.end27, %if.then87.preheader, %sw.default, %sw.bb59
  %page.sroa.29.2 = phi i64 [ 0, %sw.bb59 ], [ %page.sroa.29.0.copyload, %sw.default ], [ 0, %if.then87.preheader ], [ %page.sroa.29.1, %if.end27 ], [ 0, %if.then87.if.then87_crit_edge ], !dbg !2762
  %page.sroa.18.2 = phi i64 [ 0, %sw.bb59 ], [ %page.sroa.18.0.copyload, %sw.default ], [ 0, %if.then87.preheader ], [ %page.sroa.18.1, %if.end27 ], [ 0, %if.then87.if.then87_crit_edge ], !dbg !2762
  %page.sroa.11.0 = phi i64 [ %page.sroa.11.0.copyload, %sw.bb59 ], [ %page.sroa.11.0.copyload, %sw.default ], [ %12, %if.then87.preheader ], [ %page.sroa.11.0.copyload, %if.end27 ], [ %18, %if.then87.if.then87_crit_edge ], !dbg !2762
  %page.sroa.0.0 = phi i64 [ %page.sroa.0.0.copyload, %sw.bb59 ], [ %page.sroa.0.0.copyload, %sw.default ], [ %10, %if.then87.preheader ], [ %page.sroa.0.0.copyload, %if.end27 ], [ %16, %if.then87.if.then87_crit_edge ], !dbg !2762
  %height.7 = phi i64 [ %spec.select325, %sw.bb59 ], [ %2, %sw.default ], [ %12, %if.then87.preheader ], [ %8, %if.end27 ], [ %18, %if.then87.if.then87_crit_edge ], !dbg !2762
  %width.8 = phi i64 [ %spec.select321, %sw.bb59 ], [ %1, %sw.default ], [ %10, %if.then87.preheader ], [ %6, %if.end27 ], [ %16, %if.then87.if.then87_crit_edge ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %width.8, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %height.7, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.11.0, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.2, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.29.2, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2762
  %cmp125 = icmp eq i64 %page.sroa.0.0, 0, !dbg !2847
  br i1 %cmp125, label %if.then126, label %if.end132, !dbg !2849

if.then126:                                       ; preds = %sw.epilog
  %19 = tail call i64 @llvm.smax.i64(i64 %page.sroa.18.2, i64 0), !dbg !2850
  %spec.select328 = add i64 %width.8, %19, !dbg !2850
  br label %if.end132, !dbg !2850

if.end132:                                        ; preds = %if.then126, %sw.epilog
  %page.sroa.0.1 = phi i64 [ %page.sroa.0.0, %sw.epilog ], [ %spec.select328, %if.then126 ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2762
  %cmp134 = icmp eq i64 %page.sroa.11.0, 0, !dbg !2851
  br i1 %cmp134, label %if.then135, label %if.end145, !dbg !2853

if.then135:                                       ; preds = %if.end132
  %20 = tail call i64 @llvm.smax.i64(i64 %page.sroa.29.2, i64 0), !dbg !2854
  %spec.select329 = add i64 %height.7, %20, !dbg !2854
  br label %if.end145, !dbg !2854

if.end145:                                        ; preds = %if.then135, %if.end132
  %page.sroa.11.1 = phi i64 [ %page.sroa.11.0, %if.end132 ], [ %spec.select329, %if.then135 ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %page.sroa.11.1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2762
  %cmp146 = icmp eq i32 %method, 16, !dbg !2855
  br i1 %cmp146, label %if.then147, label %if.end174, !dbg !2857

if.then147:                                       ; preds = %if.end145
  %call148 = tail call i64 @GetImageListLength(ptr noundef %image) #7, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %call148, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 0, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %image, metadata !2751, metadata !DIExpression()), !dbg !2762
  %cmp150367 = icmp sgt i64 %call148, 0, !dbg !2860
  br i1 %cmp150367, label %for.body151, label %cleanup, !dbg !2863

for.body151:                                      ; preds = %if.then147, %if.end167
  %scene.0370 = phi i64 [ %inc, %if.end167 ], [ 0, %if.then147 ]
  %image.addr.0368 = phi ptr [ %call168, %if.end167 ], [ %image, %if.then147 ]
  call void @llvm.dbg.value(metadata i64 %scene.0370, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %image.addr.0368, metadata !2751, metadata !DIExpression()), !dbg !2762
  %page153 = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 26, !dbg !2864
  %x154 = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 26, i32 2, !dbg !2866
  %21 = load i64, ptr %x154, align 8, !dbg !2867, !tbaa !745
  %sub155 = sub nsw i64 %21, %page.sroa.18.2, !dbg !2867
  store i64 %sub155, ptr %x154, align 8, !dbg !2867, !tbaa !745
  %y158 = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 26, i32 3, !dbg !2868
  %22 = load i64, ptr %y158, align 8, !dbg !2869, !tbaa !747
  %sub159 = sub nsw i64 %22, %page.sroa.29.2, !dbg !2869
  store i64 %sub159, ptr %y158, align 8, !dbg !2869, !tbaa !747
  store i64 %width.8, ptr %page153, align 8, !dbg !2870, !tbaa !1027
  %height163 = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 26, i32 1, !dbg !2871
  store i64 %height.7, ptr %height163, align 8, !dbg !2872, !tbaa !1029
  call void @llvm.dbg.value(metadata ptr %image.addr.0368, metadata !2873, metadata !DIExpression()) #7, !dbg !2883
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2879, metadata !DIExpression()) #7, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %scene.0370, metadata !2880, metadata !DIExpression()) #7, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %call148, metadata !2881, metadata !DIExpression()) #7, !dbg !2883
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2882, metadata !DIExpression()) #7, !dbg !2886
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 47, !dbg !2887
  %23 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2887, !tbaa !2889
  %cmp.i = icmp eq ptr %23, null, !dbg !2890
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2891

SetImageProgress.exit.thread:                     ; preds = %for.body151
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2755, metadata !DIExpression()), !dbg !2762
  br label %if.end167, !dbg !2893

SetImageProgress.exit:                            ; preds = %for.body151
  %filename.i = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 53, !dbg !2894
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #7, !dbg !2895
  %24 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2896, !tbaa !2889
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image.addr.0368, i64 0, i32 48, !dbg !2897
  %25 = load ptr, ptr %client_data.i, align 8, !dbg !2897, !tbaa !2898
  %call4.i = call i32 %24(ptr noundef nonnull %message.i, i64 noundef %scene.0370, i64 noundef %call148, ptr noundef %25) #7, !dbg !2899
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2755, metadata !DIExpression()), !dbg !2762
  %cmp165 = icmp eq i32 %call4.i, 0, !dbg !2900
  br i1 %cmp165, label %cleanup, label %if.end167, !dbg !2893

if.end167:                                        ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  %call168 = call ptr @GetNextImageInList(ptr noundef nonnull %image.addr.0368) #7, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %call168, metadata !2751, metadata !DIExpression()), !dbg !2762
  %cmp169 = icmp eq ptr %call168, null, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %scene.0370, metadata !2761, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2762
  %inc = add nuw nsw i64 %scene.0370, 1
  %exitcond377.not = icmp eq i64 %inc, %call148
  %or.cond = select i1 %cmp169, i1 true, i1 %exitcond377.not, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %scene.0370, metadata !2761, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %call168, metadata !2751, metadata !DIExpression()), !dbg !2762
  br i1 %or.cond, label %cleanup, label %for.body151, !dbg !2905, !llvm.loop !2906

if.end174:                                        ; preds = %if.end145
  %call175 = tail call ptr @CloneImage(ptr noundef %image, i64 noundef %width.8, i64 noundef %height.7, i32 noundef 1, ptr noundef %exception) #7, !dbg !2908
  call void @llvm.dbg.value(metadata ptr %call175, metadata !2754, metadata !DIExpression()), !dbg !2762
  %cmp176 = icmp eq ptr %call175, null, !dbg !2909
  br i1 %cmp176, label %cleanup, label %if.end178, !dbg !2911

if.end178:                                        ; preds = %if.end174
  %call179 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call175) #7, !dbg !2912
  %page180 = getelementptr inbounds %struct._Image, ptr %call175, i64 0, i32 26, !dbg !2913
  store i64 %page.sroa.0.1, ptr %page180, align 8, !dbg !2914, !tbaa.struct !710
  %page.sroa.11.0.page180.sroa_idx = getelementptr inbounds i8, ptr %page180, i64 8, !dbg !2914
  store i64 %page.sroa.11.1, ptr %page.sroa.11.0.page180.sroa_idx, align 8, !dbg !2914, !tbaa.struct !712
  %page.sroa.18.0.page180.sroa_idx = getelementptr inbounds i8, ptr %page180, i64 16, !dbg !2914
  store i64 %page.sroa.18.2, ptr %page.sroa.18.0.page180.sroa_idx, align 8, !dbg !2914, !tbaa.struct !717
  %page.sroa.29.0.page180.sroa_idx = getelementptr inbounds i8, ptr %page180, i64 24, !dbg !2914
  store i64 %page.sroa.29.2, ptr %page.sroa.29.0.page180.sroa_idx, align 8, !dbg !2914, !tbaa.struct !713
  %dispose = getelementptr inbounds %struct._Image, ptr %call175, i64 0, i32 37, !dbg !2915
  store i32 0, ptr %dispose, align 4, !dbg !2916, !tbaa !742
  %call181 = tail call i64 @GetImageListLength(ptr noundef %image) #7, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %call181, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 0, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %image, metadata !2751, metadata !DIExpression()), !dbg !2762
  %cmp183362 = icmp sgt i64 %call181, 0, !dbg !2918
  br i1 %cmp183362, label %for.body184.lr.ph, label %cleanup, !dbg !2921

for.body184.lr.ph:                                ; preds = %if.end178
  %x188 = getelementptr inbounds %struct._Image, ptr %call175, i64 0, i32 26, i32 2
  %y193 = getelementptr inbounds %struct._Image, ptr %call175, i64 0, i32 26, i32 3
  br label %for.body184, !dbg !2921

for.body184:                                      ; preds = %if.end199, %for.body184.lr.ph
  %scene.1365 = phi i64 [ 0, %for.body184.lr.ph ], [ %inc205, %if.end199 ]
  %image.addr.1363 = phi ptr [ %image, %for.body184.lr.ph ], [ %call200, %if.end199 ]
  call void @llvm.dbg.value(metadata i64 %scene.1365, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %image.addr.1363, metadata !2751, metadata !DIExpression()), !dbg !2762
  %compose = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 36, !dbg !2922
  %26 = load i32, ptr %compose, align 8, !dbg !2922, !tbaa !2924
  %x186 = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 26, i32 2, !dbg !2925
  %27 = load i64, ptr %x186, align 8, !dbg !2925, !tbaa !745
  %28 = load i64, ptr %x188, align 8, !dbg !2926, !tbaa !745
  %sub189 = sub nsw i64 %27, %28, !dbg !2927
  %y191 = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 26, i32 3, !dbg !2928
  %29 = load i64, ptr %y191, align 8, !dbg !2928, !tbaa !747
  %30 = load i64, ptr %y193, align 8, !dbg !2929, !tbaa !747
  %sub194 = sub nsw i64 %29, %30, !dbg !2930
  %call195 = call i32 @CompositeImage(ptr noundef nonnull %call175, i32 noundef %26, ptr noundef %image.addr.1363, i64 noundef %sub189, i64 noundef %sub194) #7, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %image.addr.1363, metadata !2873, metadata !DIExpression()) #7, !dbg !2932
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2879, metadata !DIExpression()) #7, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %scene.1365, metadata !2880, metadata !DIExpression()) #7, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %call181, metadata !2881, metadata !DIExpression()) #7, !dbg !2932
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i330) #7, !dbg !2934
  call void @llvm.dbg.declare(metadata ptr %message.i330, metadata !2882, metadata !DIExpression()) #7, !dbg !2935
  %progress_monitor.i331 = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 47, !dbg !2936
  %31 = load ptr, ptr %progress_monitor.i331, align 8, !dbg !2936, !tbaa !2889
  %cmp.i332 = icmp eq ptr %31, null, !dbg !2937
  br i1 %cmp.i332, label %SetImageProgress.exit339.thread, label %SetImageProgress.exit339, !dbg !2938

SetImageProgress.exit339.thread:                  ; preds = %for.body184
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i330) #7, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %call4.i336, metadata !2755, metadata !DIExpression()), !dbg !2762
  br label %if.end199, !dbg !2940

SetImageProgress.exit339:                         ; preds = %for.body184
  %filename.i333 = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 53, !dbg !2941
  %call.i334 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i330, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i333) #7, !dbg !2942
  %32 = load ptr, ptr %progress_monitor.i331, align 8, !dbg !2943, !tbaa !2889
  %client_data.i335 = getelementptr inbounds %struct._Image, ptr %image.addr.1363, i64 0, i32 48, !dbg !2944
  %33 = load ptr, ptr %client_data.i335, align 8, !dbg !2944, !tbaa !2898
  %call4.i336 = call i32 %32(ptr noundef nonnull %message.i330, i64 noundef %scene.1365, i64 noundef %call181, ptr noundef %33) #7, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i330) #7, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %call4.i336, metadata !2755, metadata !DIExpression()), !dbg !2762
  %cmp197 = icmp eq i32 %call4.i336, 0, !dbg !2946
  br i1 %cmp197, label %cleanup, label %if.end199, !dbg !2940

if.end199:                                        ; preds = %SetImageProgress.exit339.thread, %SetImageProgress.exit339
  %call200 = call ptr @GetNextImageInList(ptr noundef nonnull %image.addr.1363) #7, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %call200, metadata !2751, metadata !DIExpression()), !dbg !2762
  %cmp201 = icmp eq ptr %call200, null, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %scene.1365, metadata !2761, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2762
  %inc205 = add nuw nsw i64 %scene.1365, 1
  %exitcond.not = icmp eq i64 %inc205, %call181
  %or.cond384 = select i1 %cmp201, i1 true, i1 %exitcond.not, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %scene.1365, metadata !2761, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %call200, metadata !2751, metadata !DIExpression()), !dbg !2762
  br i1 %or.cond384, label %cleanup, label %for.body184, !dbg !2951, !llvm.loop !2952

cleanup:                                          ; preds = %if.end199, %SetImageProgress.exit339, %if.end167, %SetImageProgress.exit, %if.end178, %if.then147, %if.end174
  %retval.0 = phi ptr [ null, %if.end174 ], [ null, %if.then147 ], [ %call175, %if.end178 ], [ null, %SetImageProgress.exit ], [ null, %if.end167 ], [ %call175, %SetImageProgress.exit339 ], [ %call175, %if.end199 ], !dbg !2762
  ret ptr %retval.0, !dbg !2954
}

declare !dbg !2955 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2961 ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2965 i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2968 ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2971 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2974 ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !2977 i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2980 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !2983 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2986 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!661, !662, !663, !664, !665, !666}
!llvm.ident = !{!667}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !427, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/layer.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "f5b9f4c5532ce0d92bdff01faa9d600c")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393, !412}
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
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 34, baseType: !5, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!395 = !DIEnumerator(name: "UndefinedLayer", value: 0)
!396 = !DIEnumerator(name: "CoalesceLayer", value: 1)
!397 = !DIEnumerator(name: "CompareAnyLayer", value: 2)
!398 = !DIEnumerator(name: "CompareClearLayer", value: 3)
!399 = !DIEnumerator(name: "CompareOverlayLayer", value: 4)
!400 = !DIEnumerator(name: "DisposeLayer", value: 5)
!401 = !DIEnumerator(name: "OptimizeLayer", value: 6)
!402 = !DIEnumerator(name: "OptimizeImageLayer", value: 7)
!403 = !DIEnumerator(name: "OptimizePlusLayer", value: 8)
!404 = !DIEnumerator(name: "OptimizeTransLayer", value: 9)
!405 = !DIEnumerator(name: "RemoveDupsLayer", value: 10)
!406 = !DIEnumerator(name: "RemoveZeroLayer", value: 11)
!407 = !DIEnumerator(name: "CompositeLayer", value: 12)
!408 = !DIEnumerator(name: "MergeLayer", value: 13)
!409 = !DIEnumerator(name: "FlattenLayer", value: 14)
!410 = !DIEnumerator(name: "MosaicLayer", value: 15)
!411 = !DIEnumerator(name: "TrimBoundsLayer", value: 16)
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!414 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!415 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!416 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!417 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!418 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!419 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!420 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!421 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!422 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!423 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!424 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!425 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!426 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!427 = !{!428, !429, !484, !493, !457, !650, !440, !651, !565, !452, !653, !655, !657, !445, !660, !524, !557}
!428 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !432)
!432 = !{!433, !435, !437, !439, !442, !444, !446, !447, !448, !449, !450, !451, !462, !463, !464, !465, !467, !481, !483, !485, !487, !490, !491, !492, !498, !499, !500, !508, !509, !510, !511, !512, !513, !515, !517, !519, !521, !523, !525, !527, !528, !529, !530, !531, !532, !533, !541, !556, !570, !571, !572, !573, !577, !581, !585, !586, !587, !588, !589, !607, !608, !610, !611, !621, !622, !624, !625, !626, !627, !628, !629, !631, !632, !633, !634, !635, !636, !637, !639, !640, !641, !642, !643, !647, !649}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !431, file: !73, line: 153, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !431, file: !73, line: 156, baseType: !436, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !431, file: !73, line: 159, baseType: !438, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !431, file: !73, line: 162, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !441, line: 46, baseType: !428)
!441 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!442 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !431, file: !73, line: 165, baseType: !443, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !431, file: !73, line: 168, baseType: !445, size: 32, offset: 224)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !431, file: !73, line: 169, baseType: !445, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !431, file: !73, line: 172, baseType: !440, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !431, file: !73, line: 173, baseType: !440, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !431, file: !73, line: 174, baseType: !440, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !431, file: !73, line: 175, baseType: !440, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !431, file: !73, line: 178, baseType: !452, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !455)
!455 = !{!456, !459, !460, !461}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !454, file: !326, line: 143, baseType: !457, size: 16)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !458)
!458 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !454, file: !326, line: 144, baseType: !457, size: 16, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !454, file: !326, line: 145, baseType: !457, size: 16, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !454, file: !326, line: 146, baseType: !457, size: 16, offset: 48)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !431, file: !73, line: 179, baseType: !453, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !431, file: !73, line: 180, baseType: !453, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !431, file: !73, line: 181, baseType: !453, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !431, file: !73, line: 184, baseType: !466, size: 64, offset: 832)
!466 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !431, file: !73, line: 187, baseType: !468, size: 768, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !470)
!470 = !{!471, !478, !479, !480}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !469, file: !73, line: 124, baseType: !472, size: 192)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !474)
!474 = !{!475, !476, !477}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !473, file: !73, line: 98, baseType: !466, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !473, file: !73, line: 99, baseType: !466, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !473, file: !73, line: 100, baseType: !466, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !469, file: !73, line: 125, baseType: !472, size: 192, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !469, file: !73, line: 126, baseType: !472, size: 192, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !469, file: !73, line: 127, baseType: !472, size: 192, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !431, file: !73, line: 190, baseType: !482, size: 32, offset: 1664)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !431, file: !73, line: 193, baseType: !484, size: 64, offset: 1728)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !431, file: !73, line: 196, baseType: !486, size: 32, offset: 1792)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !431, file: !73, line: 199, baseType: !488, size: 64, offset: 1856)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !431, file: !73, line: 200, baseType: !488, size: 64, offset: 1920)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !431, file: !73, line: 201, baseType: !488, size: 64, offset: 1984)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !431, file: !73, line: 204, baseType: !493, size: 64, offset: 2048)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !494, line: 77, baseType: !495)
!494 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !496, line: 193, baseType: !497)
!496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!497 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !431, file: !73, line: 207, baseType: !466, size: 64, offset: 2112)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !431, file: !73, line: 208, baseType: !466, size: 64, offset: 2176)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !431, file: !73, line: 211, baseType: !501, size: 256, offset: 2240)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !503)
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !502, file: !153, line: 124, baseType: !440, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !502, file: !153, line: 125, baseType: !440, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !502, file: !153, line: 128, baseType: !493, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !502, file: !153, line: 129, baseType: !493, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !431, file: !73, line: 212, baseType: !501, size: 256, offset: 2496)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !431, file: !73, line: 213, baseType: !501, size: 256, offset: 2752)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !431, file: !73, line: 216, baseType: !466, size: 64, offset: 3008)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !431, file: !73, line: 217, baseType: !466, size: 64, offset: 3072)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !431, file: !73, line: 218, baseType: !466, size: 64, offset: 3136)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !431, file: !73, line: 221, baseType: !514, size: 32, offset: 3200)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !431, file: !73, line: 224, baseType: !516, size: 32, offset: 3232)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !431, file: !73, line: 227, baseType: !518, size: 32, offset: 3264)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !431, file: !73, line: 230, baseType: !520, size: 32, offset: 3296)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !431, file: !73, line: 233, baseType: !522, size: 32, offset: 3328)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !431, file: !73, line: 236, baseType: !524, size: 32, offset: 3360)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !431, file: !73, line: 239, baseType: !526, size: 64, offset: 3392)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !431, file: !73, line: 242, baseType: !440, size: 64, offset: 3456)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !431, file: !73, line: 243, baseType: !440, size: 64, offset: 3520)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !431, file: !73, line: 246, baseType: !493, size: 64, offset: 3584)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !431, file: !73, line: 249, baseType: !440, size: 64, offset: 3648)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !431, file: !73, line: 250, baseType: !440, size: 64, offset: 3712)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !431, file: !73, line: 253, baseType: !493, size: 64, offset: 3776)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !431, file: !73, line: 256, baseType: !534, size: 192, offset: 3840)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !535, line: 68, baseType: !536)
!535 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !535, line: 62, size: 192, elements: !537)
!537 = !{!538, !539, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !536, file: !535, line: 65, baseType: !466, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !536, file: !535, line: 66, baseType: !466, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !536, file: !535, line: 67, baseType: !466, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !431, file: !73, line: 259, baseType: !542, size: 512, offset: 4032)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !544)
!544 = !{!545, !552, !553, !555}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !543, file: !247, line: 43, baseType: !546, size: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !548)
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !547, file: !247, line: 35, baseType: !466, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !547, file: !247, line: 36, baseType: !466, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !547, file: !247, line: 37, baseType: !466, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !543, file: !247, line: 44, baseType: !546, size: 192, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !543, file: !247, line: 47, baseType: !554, size: 32, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !543, file: !247, line: 50, baseType: !440, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !431, file: !73, line: 262, baseType: !557, size: 64, offset: 4544)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !558, line: 26, baseType: !559)
!558 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!445, !562, !564, !567, !484}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !566)
!566 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !569)
!569 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !431, file: !73, line: 265, baseType: !484, size: 64, offset: 4608)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !431, file: !73, line: 266, baseType: !484, size: 64, offset: 4672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !431, file: !73, line: 267, baseType: !484, size: 64, offset: 4736)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !431, file: !73, line: 270, baseType: !574, size: 64, offset: 4800)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !431, file: !73, line: 273, baseType: !578, size: 64, offset: 4864)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !431, file: !73, line: 276, baseType: !582, size: 32768, offset: 4928)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 32768, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 4096)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !431, file: !73, line: 277, baseType: !582, size: 32768, offset: 37696)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !431, file: !73, line: 278, baseType: !582, size: 32768, offset: 70464)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !431, file: !73, line: 281, baseType: !440, size: 64, offset: 103232)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !431, file: !73, line: 282, baseType: !440, size: 64, offset: 103296)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !431, file: !73, line: 285, baseType: !590, size: 448, offset: 103360)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !592)
!592 = !{!593, !595, !597, !598, !599, !600, !601, !606}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !591, file: !253, line: 105, baseType: !594, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !591, file: !253, line: 108, baseType: !596, size: 32, offset: 32)
!596 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !591, file: !253, line: 111, baseType: !488, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !591, file: !253, line: 112, baseType: !488, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !591, file: !253, line: 115, baseType: !484, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !591, file: !253, line: 118, baseType: !445, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !591, file: !253, line: 121, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !604, line: 26, baseType: !605)
!604 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !604, line: 25, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !591, file: !253, line: 124, baseType: !440, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !431, file: !73, line: 288, baseType: !445, size: 32, offset: 103808)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !431, file: !73, line: 291, baseType: !609, size: 64, offset: 103872)
!609 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !493)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !431, file: !73, line: 294, baseType: !602, size: 64, offset: 103936)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !431, file: !73, line: 297, baseType: !612, size: 256, offset: 104000)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !614)
!614 = !{!615, !616, !617, !620}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !613, file: !89, line: 30, baseType: !488, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !613, file: !89, line: 33, baseType: !440, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !613, file: !89, line: 36, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !613, file: !89, line: 39, baseType: !440, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !431, file: !73, line: 298, baseType: !612, size: 256, offset: 104256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !431, file: !73, line: 299, baseType: !623, size: 64, offset: 104512)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !431, file: !73, line: 302, baseType: !440, size: 64, offset: 104576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !431, file: !73, line: 305, baseType: !440, size: 64, offset: 104640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !431, file: !73, line: 308, baseType: !526, size: 64, offset: 104704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !431, file: !73, line: 309, baseType: !526, size: 64, offset: 104768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !73, line: 310, baseType: !526, size: 64, offset: 104832)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !431, file: !73, line: 313, baseType: !630, size: 32, offset: 104896)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !431, file: !73, line: 316, baseType: !445, size: 32, offset: 104928)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !431, file: !73, line: 319, baseType: !453, size: 64, offset: 104960)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !431, file: !73, line: 322, baseType: !526, size: 64, offset: 105024)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !431, file: !73, line: 325, baseType: !501, size: 256, offset: 105088)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !431, file: !73, line: 328, baseType: !484, size: 64, offset: 105344)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !431, file: !73, line: 329, baseType: !484, size: 64, offset: 105408)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !73, line: 332, baseType: !638, size: 32, offset: 105472)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !431, file: !73, line: 335, baseType: !445, size: 32, offset: 105504)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !431, file: !73, line: 338, baseType: !568, size: 64, offset: 105536)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !431, file: !73, line: 341, baseType: !445, size: 32, offset: 105600)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !431, file: !73, line: 344, baseType: !440, size: 64, offset: 105664)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !431, file: !73, line: 347, baseType: !644, size: 64, offset: 105728)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !645, line: 7, baseType: !646)
!645 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !496, line: 160, baseType: !497)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !431, file: !73, line: 350, baseType: !648, size: 32, offset: 105792)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !431, file: !73, line: 353, baseType: !440, size: 64, offset: 105856)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !656)
!656 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !457)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!661 = !{i32 7, !"Dwarf Version", i32 5}
!662 = !{i32 2, !"Debug Info Version", i32 3}
!663 = !{i32 1, !"wchar_size", i32 4}
!664 = !{i32 7, !"PIC Level", i32 2}
!665 = !{i32 7, !"PIE Level", i32 2}
!666 = !{i32 7, !"uwtable", i32 2}
!667 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!668 = distinct !DISubprogram(name: "CoalesceImages", scope: !669, file: !669, line: 231, type: !670, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !673)
!669 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f5b9f4c5532ce0d92bdff01faa9d600c")
!670 = !DISubroutineType(types: !671)
!671 = !{!429, !651, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!673 = !{!674, !675, !676, !677, !678, !679, !680}
!674 = !DILocalVariable(name: "image", arg: 1, scope: !668, file: !669, line: 231, type: !651)
!675 = !DILocalVariable(name: "exception", arg: 2, scope: !668, file: !669, line: 231, type: !672)
!676 = !DILocalVariable(name: "coalesce_image", scope: !668, file: !669, line: 234, type: !429)
!677 = !DILocalVariable(name: "dispose_image", scope: !668, file: !669, line: 235, type: !429)
!678 = !DILocalVariable(name: "previous", scope: !668, file: !669, line: 236, type: !429)
!679 = !DILocalVariable(name: "next", scope: !668, file: !669, line: 239, type: !429)
!680 = !DILocalVariable(name: "bounds", scope: !668, file: !669, line: 242, type: !501)
!681 = !DILocation(line: 0, scope: !668)
!682 = !DILocation(line: 249, column: 14, scope: !683)
!683 = distinct !DILexicalBlock(scope: !668, file: !669, line: 249, column: 7)
!684 = !{!685, !686, i64 12976}
!685 = !{!"_Image", !686, i64 0, !686, i64 4, !686, i64 8, !688, i64 16, !686, i64 24, !686, i64 28, !686, i64 32, !688, i64 40, !688, i64 48, !688, i64 56, !688, i64 64, !689, i64 72, !690, i64 80, !690, i64 88, !690, i64 96, !692, i64 104, !693, i64 112, !686, i64 208, !689, i64 216, !686, i64 224, !689, i64 232, !689, i64 240, !689, i64 248, !688, i64 256, !692, i64 264, !692, i64 272, !695, i64 280, !695, i64 312, !695, i64 344, !692, i64 376, !692, i64 384, !692, i64 392, !686, i64 400, !686, i64 404, !686, i64 408, !686, i64 412, !686, i64 416, !686, i64 420, !689, i64 424, !688, i64 432, !688, i64 440, !688, i64 448, !688, i64 456, !688, i64 464, !688, i64 472, !696, i64 480, !697, i64 504, !689, i64 568, !689, i64 576, !689, i64 584, !689, i64 592, !689, i64 600, !689, i64 608, !686, i64 616, !686, i64 4712, !686, i64 8808, !688, i64 12904, !688, i64 12912, !699, i64 12920, !686, i64 12976, !688, i64 12984, !689, i64 12992, !701, i64 13000, !701, i64 13032, !689, i64 13064, !688, i64 13072, !688, i64 13080, !689, i64 13088, !689, i64 13096, !689, i64 13104, !686, i64 13112, !686, i64 13116, !690, i64 13120, !689, i64 13128, !695, i64 13136, !689, i64 13168, !689, i64 13176, !686, i64 13184, !686, i64 13188, !702, i64 13192, !686, i64 13200, !688, i64 13208, !688, i64 13216, !686, i64 13224, !688, i64 13232}
!686 = !{!"omnipotent char", !687, i64 0}
!687 = !{!"Simple C/C++ TBAA"}
!688 = !{!"long", !686, i64 0}
!689 = !{!"any pointer", !686, i64 0}
!690 = !{!"_PixelPacket", !691, i64 0, !691, i64 2, !691, i64 4, !691, i64 6}
!691 = !{!"short", !686, i64 0}
!692 = !{!"double", !686, i64 0}
!693 = !{!"_ChromaticityInfo", !694, i64 0, !694, i64 24, !694, i64 48, !694, i64 72}
!694 = !{!"_PrimaryInfo", !692, i64 0, !692, i64 8, !692, i64 16}
!695 = !{!"_RectangleInfo", !688, i64 0, !688, i64 8, !688, i64 16, !688, i64 24}
!696 = !{!"_ErrorInfo", !692, i64 0, !692, i64 8, !692, i64 16}
!697 = !{!"_TimerInfo", !698, i64 0, !698, i64 24, !686, i64 48, !688, i64 56}
!698 = !{!"_Timer", !692, i64 0, !692, i64 8, !692, i64 16}
!699 = !{!"_ExceptionInfo", !686, i64 0, !700, i64 4, !689, i64 8, !689, i64 16, !689, i64 24, !686, i64 32, !689, i64 40, !688, i64 48}
!700 = !{!"int", !686, i64 0}
!701 = !{!"_ProfileInfo", !689, i64 0, !688, i64 8, !689, i64 16, !688, i64 24}
!702 = !{!"long long", !686, i64 0}
!703 = !DILocation(line: 249, column: 20, scope: !683)
!704 = !DILocation(line: 249, column: 7, scope: !668)
!705 = !DILocation(line: 250, column: 68, scope: !683)
!706 = !DILocation(line: 250, column: 12, scope: !683)
!707 = !DILocation(line: 250, column: 5, scope: !683)
!708 = !DILocation(line: 255, column: 8, scope: !668)
!709 = !DILocation(line: 256, column: 16, scope: !668)
!710 = !{i64 0, i64 8, !711, i64 8, i64 8, !711, i64 16, i64 8, !711, i64 24, i64 8, !711}
!711 = !{!688, !688, i64 0}
!712 = !{i64 0, i64 8, !711, i64 8, i64 8, !711, i64 16, i64 8, !711}
!713 = !{i64 0, i64 8, !711}
!714 = !DILocation(line: 257, column: 20, scope: !715)
!715 = distinct !DILexicalBlock(scope: !668, file: !669, line: 257, column: 7)
!716 = !DILocation(line: 257, column: 7, scope: !668)
!717 = !{i64 0, i64 8, !711, i64 8, i64 8, !711}
!718 = !DILocation(line: 259, column: 26, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !669, line: 258, column: 5)
!720 = !{!685, !688, i64 40}
!721 = !DILocation(line: 260, column: 11, scope: !719)
!722 = !DILocation(line: 263, column: 21, scope: !723)
!723 = distinct !DILexicalBlock(scope: !668, file: !669, line: 263, column: 7)
!724 = !DILocation(line: 263, column: 7, scope: !668)
!725 = !DILocation(line: 265, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !669, line: 264, column: 5)
!727 = !{!685, !688, i64 48}
!728 = !DILocation(line: 266, column: 11, scope: !726)
!729 = !DILocation(line: 271, column: 18, scope: !668)
!730 = !DILocation(line: 273, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !668, file: !669, line: 273, column: 7)
!732 = !DILocation(line: 273, column: 7, scope: !668)
!733 = !DILocation(line: 275, column: 10, scope: !668)
!734 = !DILocation(line: 276, column: 31, scope: !668)
!735 = !{!685, !686, i64 32}
!736 = !DILocation(line: 276, column: 19, scope: !668)
!737 = !DILocation(line: 276, column: 24, scope: !668)
!738 = !DILocation(line: 277, column: 19, scope: !668)
!739 = !DILocation(line: 277, column: 24, scope: !668)
!740 = !DILocation(line: 278, column: 19, scope: !668)
!741 = !DILocation(line: 278, column: 26, scope: !668)
!742 = !{!685, !686, i64 420}
!743 = !DILocation(line: 282, column: 17, scope: !668)
!744 = !DILocation(line: 283, column: 72, scope: !668)
!745 = !{!685, !688, i64 296}
!746 = !DILocation(line: 284, column: 16, scope: !668)
!747 = !{!685, !688, i64 304}
!748 = !DILocation(line: 283, column: 10, scope: !668)
!749 = !DILocation(line: 285, column: 8, scope: !668)
!750 = !DILocation(line: 286, column: 16, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !669, line: 286, column: 3)
!752 = distinct !DILexicalBlock(scope: !668, file: !669, line: 286, column: 3)
!753 = !DILocation(line: 286, column: 3, scope: !752)
!754 = !DILocation(line: 291, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !669, line: 287, column: 3)
!756 = !DILocation(line: 292, column: 22, scope: !755)
!757 = !DILocation(line: 293, column: 28, scope: !755)
!758 = !DILocation(line: 294, column: 29, scope: !755)
!759 = !DILocation(line: 295, column: 9, scope: !755)
!760 = !DILocation(line: 300, column: 28, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !669, line: 300, column: 9)
!762 = !DILocation(line: 300, column: 71, scope: !761)
!763 = !DILocation(line: 300, column: 43, scope: !761)
!764 = !DILocation(line: 300, column: 9, scope: !755)
!765 = !DILocation(line: 302, column: 9, scope: !755)
!766 = !DILocation(line: 307, column: 28, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !669, line: 307, column: 9)
!768 = !DILocation(line: 307, column: 72, scope: !767)
!769 = !DILocation(line: 307, column: 44, scope: !767)
!770 = !DILocation(line: 307, column: 9, scope: !755)
!771 = !DILocation(line: 312, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !755, file: !669, line: 312, column: 9)
!773 = !DILocation(line: 312, column: 39, scope: !772)
!774 = !DILocation(line: 312, column: 47, scope: !772)
!775 = !DILocation(line: 312, column: 9, scope: !755)
!776 = !DILocation(line: 314, column: 23, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !669, line: 313, column: 7)
!778 = !DILocation(line: 315, column: 23, scope: !777)
!779 = !DILocation(line: 316, column: 27, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !669, line: 316, column: 13)
!781 = !DILocation(line: 316, column: 13, scope: !777)
!782 = !DILocation(line: 318, column: 28, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !669, line: 317, column: 11)
!784 = !DILocation(line: 319, column: 13, scope: !783)
!785 = !DILocation(line: 325, column: 15, scope: !786)
!786 = distinct !DILexicalBlock(scope: !755, file: !669, line: 325, column: 9)
!787 = !{!685, !689, i64 13088}
!788 = !DILocation(line: 325, column: 25, scope: !786)
!789 = !DILocation(line: 325, column: 33, scope: !786)
!790 = !DILocation(line: 325, column: 9, scope: !755)
!791 = !DILocalVariable(name: "image", arg: 1, scope: !792, file: !669, line: 97, type: !429)
!792 = distinct !DISubprogram(name: "ClearBounds", scope: !669, file: !669, line: 97, type: !793, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !429, !650}
!795 = !{!791, !796, !797, !798, !799, !803}
!796 = !DILocalVariable(name: "bounds", arg: 2, scope: !792, file: !669, line: 97, type: !650)
!797 = !DILocalVariable(name: "exception", scope: !792, file: !669, line: 100, type: !672)
!798 = !DILocalVariable(name: "y", scope: !792, file: !669, line: 103, type: !493)
!799 = !DILocalVariable(name: "x", scope: !800, file: !669, line: 113, type: !493)
!800 = distinct !DILexicalBlock(scope: !801, file: !669, line: 111, column: 3)
!801 = distinct !DILexicalBlock(scope: !802, file: !669, line: 110, column: 3)
!802 = distinct !DILexicalBlock(scope: !792, file: !669, line: 110, column: 3)
!803 = !DILocalVariable(name: "q", scope: !800, file: !669, line: 116, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !452)
!805 = !DILocation(line: 0, scope: !792, inlinedAt: !806)
!806 = distinct !DILocation(line: 326, column: 7, scope: !786)
!807 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !806)
!808 = distinct !DILexicalBlock(scope: !792, file: !669, line: 107, column: 7)
!809 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !806)
!810 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !806)
!811 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !806)
!812 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !806)
!813 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !806)
!814 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !806)
!815 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !806)
!816 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !806)
!817 = distinct !DILexicalBlock(scope: !800, file: !669, line: 121, column: 5)
!818 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !806)
!819 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !806)
!820 = !DILocation(line: 0, scope: !800, inlinedAt: !806)
!821 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !806)
!822 = distinct !DILexicalBlock(scope: !800, file: !669, line: 119, column: 9)
!823 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !806)
!824 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !806)
!825 = distinct !DILexicalBlock(scope: !826, file: !669, line: 122, column: 5)
!826 = distinct !DILexicalBlock(scope: !817, file: !669, line: 121, column: 5)
!827 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !806)
!828 = !{!690, !691, i64 6}
!829 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !806)
!830 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !806)
!831 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !806)
!832 = distinct !{!832, !816, !833, !834, !835}
!833 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !806)
!834 = !{!"llvm.loop.mustprogress"}
!835 = !{!"llvm.loop.unroll.disable"}
!836 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !806)
!837 = distinct !DILexicalBlock(scope: !800, file: !669, line: 126, column: 9)
!838 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !806)
!839 = !DILocation(line: 0, scope: !801, inlinedAt: !806)
!840 = distinct !{!840, !815, !841, !834, !835}
!841 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !806)
!842 = !DILocation(line: 330, column: 26, scope: !755)
!843 = !DILocation(line: 330, column: 21, scope: !755)
!844 = !DILocation(line: 330, column: 25, scope: !755)
!845 = !{!685, !689, i64 13104}
!846 = !DILocation(line: 331, column: 27, scope: !755)
!847 = !DILocation(line: 331, column: 35, scope: !755)
!848 = !DILocation(line: 333, column: 20, scope: !755)
!849 = !DILocation(line: 334, column: 48, scope: !755)
!850 = !DILocation(line: 334, column: 54, scope: !755)
!851 = !DILocation(line: 334, column: 42, scope: !755)
!852 = !DILocation(line: 335, column: 57, scope: !755)
!853 = !DILocation(line: 335, column: 70, scope: !755)
!854 = !DILocation(line: 334, column: 12, scope: !755)
!855 = !DILocation(line: 336, column: 12, scope: !755)
!856 = !DILocation(line: 337, column: 12, scope: !755)
!857 = !DILocation(line: 338, column: 12, scope: !755)
!858 = !DILocation(line: 339, column: 21, scope: !755)
!859 = !DILocation(line: 339, column: 36, scope: !755)
!860 = !DILocalVariable(name: "image1", arg: 1, scope: !861, file: !669, line: 165, type: !651)
!861 = distinct !DISubprogram(name: "IsBoundsCleared", scope: !669, file: !669, line: 165, type: !862, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!445, !651, !651, !650, !672}
!864 = !{!860, !865, !866, !867, !868, !869, !870, !871}
!865 = !DILocalVariable(name: "image2", arg: 2, scope: !861, file: !669, line: 166, type: !651)
!866 = !DILocalVariable(name: "bounds", arg: 3, scope: !861, file: !669, line: 166, type: !650)
!867 = !DILocalVariable(name: "exception", arg: 4, scope: !861, file: !669, line: 166, type: !672)
!868 = !DILocalVariable(name: "p", scope: !861, file: !669, line: 169, type: !653)
!869 = !DILocalVariable(name: "q", scope: !861, file: !669, line: 170, type: !653)
!870 = !DILocalVariable(name: "x", scope: !861, file: !669, line: 173, type: !493)
!871 = !DILocalVariable(name: "y", scope: !861, file: !669, line: 176, type: !493)
!872 = !DILocation(line: 0, scope: !861, inlinedAt: !873)
!873 = distinct !DILocation(line: 343, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !755, file: !669, line: 343, column: 9)
!875 = !DILocation(line: 180, column: 15, scope: !876, inlinedAt: !873)
!876 = distinct !DILexicalBlock(scope: !877, file: !669, line: 180, column: 3)
!877 = distinct !DILexicalBlock(scope: !861, file: !669, line: 180, column: 3)
!878 = !DILocation(line: 180, column: 3, scope: !877, inlinedAt: !873)
!879 = !DILocation(line: 182, column: 50, scope: !880, inlinedAt: !873)
!880 = distinct !DILexicalBlock(scope: !876, file: !669, line: 181, column: 3)
!881 = !DILocation(line: 182, column: 7, scope: !880, inlinedAt: !873)
!882 = !DILocation(line: 184, column: 7, scope: !880, inlinedAt: !873)
!883 = !DILocation(line: 186, column: 12, scope: !884, inlinedAt: !873)
!884 = distinct !DILexicalBlock(scope: !880, file: !669, line: 186, column: 9)
!885 = !DILocation(line: 186, column: 43, scope: !884, inlinedAt: !873)
!886 = !DILocation(line: 188, column: 5, scope: !887, inlinedAt: !873)
!887 = distinct !DILexicalBlock(scope: !880, file: !669, line: 188, column: 5)
!888 = !DILocation(line: 190, column: 12, scope: !889, inlinedAt: !873)
!889 = distinct !DILexicalBlock(scope: !890, file: !669, line: 190, column: 11)
!890 = distinct !DILexicalBlock(scope: !891, file: !669, line: 189, column: 5)
!891 = distinct !DILexicalBlock(scope: !887, file: !669, line: 188, column: 5)
!892 = !DILocation(line: 190, column: 31, scope: !889, inlinedAt: !873)
!893 = !DILocation(line: 190, column: 62, scope: !889, inlinedAt: !873)
!894 = !DILocation(line: 191, column: 15, scope: !889, inlinedAt: !873)
!895 = !DILocation(line: 191, column: 23, scope: !889, inlinedAt: !873)
!896 = !DILocation(line: 190, column: 11, scope: !890, inlinedAt: !873)
!897 = !DILocation(line: 193, column: 8, scope: !890, inlinedAt: !873)
!898 = !DILocation(line: 194, column: 8, scope: !890, inlinedAt: !873)
!899 = !DILocation(line: 188, column: 45, scope: !891, inlinedAt: !873)
!900 = !DILocation(line: 188, column: 17, scope: !891, inlinedAt: !873)
!901 = distinct !{!901, !886, !902, !834, !835}
!902 = !DILocation(line: 195, column: 5, scope: !887, inlinedAt: !873)
!903 = !DILocation(line: 180, column: 44, scope: !876, inlinedAt: !873)
!904 = distinct !{!904, !878, !905, !834, !835}
!905 = !DILocation(line: 198, column: 3, scope: !877, inlinedAt: !873)
!906 = !DILocation(line: 199, column: 12, scope: !861, inlinedAt: !873)
!907 = !DILocation(line: 343, column: 9, scope: !755)
!908 = !DILocation(line: 344, column: 23, scope: !874)
!909 = !DILocation(line: 344, column: 30, scope: !874)
!910 = !DILocation(line: 347, column: 15, scope: !755)
!911 = !DILocation(line: 347, column: 22, scope: !755)
!912 = !DILocation(line: 286, column: 40, scope: !751)
!913 = distinct !{!913, !753, !914, !834, !835}
!914 = !DILocation(line: 348, column: 3, scope: !752)
!915 = !DILocation(line: 349, column: 17, scope: !668)
!916 = !DILocation(line: 350, column: 10, scope: !668)
!917 = !DILocation(line: 350, column: 3, scope: !668)
!918 = !DILocation(line: 351, column: 1, scope: !668)
!919 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!920 = !DISubroutineType(types: !921)
!921 = !{!445, !922, !562, !562, !924, !562, null}
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!925 = !{}
!926 = !DISubprogram(name: "GetFirstImageInList", scope: !927, file: !927, line: 30, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!927 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!928 = !DISubroutineType(types: !929)
!929 = !{!429, !651}
!930 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!931 = !DISubroutineType(types: !932)
!932 = !{!429, !651, !924, !924, !933, !672}
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!934 = !DISubprogram(name: "SetImageBackgroundColor", scope: !73, file: !73, line: 534, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!935 = !DISubroutineType(types: !936)
!936 = !{!445, !429}
!937 = !DISubprogram(name: "CompositeImage", scope: !168, file: !168, line: 110, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!938 = !DISubroutineType(types: !939)
!939 = !{!445, !429, !940, !651, !941, !941}
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!942 = !DISubprogram(name: "GetNextImageInList", scope: !927, file: !927, line: 33, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!943 = !DISubprogram(name: "GetPreviousImageInList", scope: !927, file: !927, line: 34, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!944 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!945 = !DISubroutineType(types: !946)
!946 = !{!429, !429}
!947 = !DISubprogram(name: "DestroyImageList", scope: !927, file: !927, line: 28, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!948 = !DISubprogram(name: "CloneImageProfiles", scope: !89, file: !89, line: 58, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!949 = !DISubroutineType(types: !950)
!950 = !{!445, !429, !651}
!951 = !DISubprogram(name: "CloneImageProperties", scope: !952, file: !952, line: 35, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!952 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!953 = !DISubprogram(name: "CloneImageArtifacts", scope: !954, file: !954, line: 33, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!954 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!955 = !DILocation(line: 0, scope: !861)
!956 = !DILocation(line: 178, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !861, file: !669, line: 178, column: 7)
!958 = !{!695, !688, i64 16}
!959 = !DILocation(line: 178, column: 17, scope: !957)
!960 = !DILocation(line: 178, column: 7, scope: !861)
!961 = !DILocation(line: 180, column: 35, scope: !876)
!962 = !{!695, !688, i64 8}
!963 = !DILocation(line: 180, column: 15, scope: !876)
!964 = !DILocation(line: 180, column: 3, scope: !877)
!965 = !DILocation(line: 182, column: 61, scope: !880)
!966 = !{!695, !688, i64 0}
!967 = !DILocation(line: 182, column: 39, scope: !880)
!968 = !DILocation(line: 182, column: 49, scope: !880)
!969 = !{!695, !688, i64 24}
!970 = !DILocation(line: 182, column: 50, scope: !880)
!971 = !DILocation(line: 182, column: 7, scope: !880)
!972 = !DILocation(line: 184, column: 39, scope: !880)
!973 = !DILocation(line: 184, column: 49, scope: !880)
!974 = !DILocation(line: 184, column: 50, scope: !880)
!975 = !DILocation(line: 184, column: 61, scope: !880)
!976 = !DILocation(line: 184, column: 7, scope: !880)
!977 = !DILocation(line: 186, column: 12, scope: !884)
!978 = !DILocation(line: 186, column: 43, scope: !884)
!979 = !DILocation(line: 188, column: 17, scope: !891)
!980 = !DILocation(line: 188, column: 5, scope: !887)
!981 = !DILocation(line: 190, column: 12, scope: !889)
!982 = !DILocation(line: 190, column: 31, scope: !889)
!983 = !DILocation(line: 190, column: 62, scope: !889)
!984 = !DILocation(line: 191, column: 15, scope: !889)
!985 = !DILocation(line: 191, column: 23, scope: !889)
!986 = !DILocation(line: 190, column: 11, scope: !890)
!987 = !DILocation(line: 193, column: 8, scope: !890)
!988 = !DILocation(line: 194, column: 8, scope: !890)
!989 = !DILocation(line: 188, column: 45, scope: !891)
!990 = distinct !{!990, !980, !991, !834, !835}
!991 = !DILocation(line: 195, column: 5, scope: !887)
!992 = !DILocation(line: 180, column: 44, scope: !876)
!993 = distinct !{!993, !964, !994, !834, !835}
!994 = !DILocation(line: 198, column: 3, scope: !877)
!995 = !DILocation(line: 199, column: 32, scope: !861)
!996 = !DILocation(line: 199, column: 12, scope: !861)
!997 = !DILocation(line: 199, column: 10, scope: !861)
!998 = !DILocation(line: 199, column: 3, scope: !861)
!999 = !DILocation(line: 200, column: 1, scope: !861)
!1000 = distinct !DISubprogram(name: "DisposeImages", scope: !669, file: !669, line: 379, type: !670, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1013}
!1002 = !DILocalVariable(name: "images", arg: 1, scope: !1000, file: !669, line: 379, type: !651)
!1003 = !DILocalVariable(name: "exception", arg: 2, scope: !1000, file: !669, line: 379, type: !672)
!1004 = !DILocalVariable(name: "dispose_image", scope: !1000, file: !669, line: 382, type: !429)
!1005 = !DILocalVariable(name: "dispose_images", scope: !1000, file: !669, line: 383, type: !429)
!1006 = !DILocalVariable(name: "bounds", scope: !1000, file: !669, line: 386, type: !501)
!1007 = !DILocalVariable(name: "image", scope: !1000, file: !669, line: 389, type: !429)
!1008 = !DILocalVariable(name: "next", scope: !1000, file: !669, line: 390, type: !429)
!1009 = !DILocalVariable(name: "current_image", scope: !1010, file: !669, line: 416, type: !429)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !669, line: 414, column: 3)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !669, line: 413, column: 3)
!1012 = distinct !DILexicalBlock(scope: !1000, file: !669, line: 413, column: 3)
!1013 = !DILocalVariable(name: "dispose", scope: !1014, file: !669, line: 470, type: !429)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !669, line: 468, column: 5)
!1015 = !DILocation(line: 0, scope: !1000)
!1016 = !DILocation(line: 381, column: 3, scope: !1000)
!1017 = !DILocation(line: 397, column: 15, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1000, file: !669, line: 397, column: 7)
!1019 = !DILocation(line: 397, column: 21, scope: !1018)
!1020 = !DILocation(line: 397, column: 7, scope: !1000)
!1021 = !DILocation(line: 398, column: 69, scope: !1018)
!1022 = !DILocation(line: 398, column: 12, scope: !1018)
!1023 = !DILocation(line: 398, column: 5, scope: !1018)
!1024 = !DILocation(line: 401, column: 9, scope: !1000)
!1025 = !DILocation(line: 402, column: 41, scope: !1000)
!1026 = !DILocation(line: 402, column: 46, scope: !1000)
!1027 = !{!685, !688, i64 280}
!1028 = !DILocation(line: 402, column: 64, scope: !1000)
!1029 = !{!685, !688, i64 288}
!1030 = !DILocation(line: 402, column: 17, scope: !1000)
!1031 = !DILocation(line: 404, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1000, file: !669, line: 404, column: 7)
!1033 = !DILocation(line: 404, column: 7, scope: !1000)
!1034 = !DILocation(line: 406, column: 18, scope: !1000)
!1035 = !DILocation(line: 406, column: 30, scope: !1000)
!1036 = !DILocation(line: 407, column: 23, scope: !1000)
!1037 = !DILocation(line: 409, column: 18, scope: !1000)
!1038 = !DILocation(line: 408, column: 24, scope: !1000)
!1039 = !DILocation(line: 409, column: 25, scope: !1000)
!1040 = !DILocation(line: 410, column: 35, scope: !1000)
!1041 = !DILocation(line: 410, column: 42, scope: !1000)
!1042 = !{!685, !691, i64 86}
!1043 = !DILocation(line: 411, column: 10, scope: !1000)
!1044 = !DILocation(line: 412, column: 18, scope: !1000)
!1045 = !DILocation(line: 412, column: 17, scope: !1000)
!1046 = !{!689, !689, i64 0}
!1047 = !DILocation(line: 413, column: 3, scope: !1012)
!1048 = !DILocation(line: 421, column: 19, scope: !1010)
!1049 = !DILocation(line: 0, scope: !1010)
!1050 = !DILocation(line: 422, column: 23, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1010, file: !669, line: 422, column: 9)
!1052 = !DILocation(line: 422, column: 9, scope: !1010)
!1053 = !DILocation(line: 424, column: 41, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !669, line: 423, column: 7)
!1055 = !DILocation(line: 424, column: 24, scope: !1054)
!1056 = !DILocation(line: 424, column: 23, scope: !1054)
!1057 = !DILocation(line: 425, column: 23, scope: !1054)
!1058 = !DILocation(line: 426, column: 9, scope: !1054)
!1059 = !DILocation(line: 428, column: 47, scope: !1010)
!1060 = !DILocation(line: 428, column: 53, scope: !1010)
!1061 = !DILocation(line: 428, column: 41, scope: !1010)
!1062 = !DILocation(line: 429, column: 57, scope: !1010)
!1063 = !DILocation(line: 429, column: 70, scope: !1010)
!1064 = !DILocation(line: 428, column: 12, scope: !1010)
!1065 = !DILocation(line: 433, column: 15, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1010, file: !669, line: 433, column: 9)
!1067 = !DILocation(line: 433, column: 23, scope: !1066)
!1068 = !DILocation(line: 433, column: 9, scope: !1010)
!1069 = !DILocation(line: 429, column: 52, scope: !1010)
!1070 = !DILocation(line: 435, column: 22, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !669, line: 434, column: 7)
!1072 = !DILocation(line: 436, column: 28, scope: !1071)
!1073 = !DILocation(line: 437, column: 29, scope: !1071)
!1074 = !DILocation(line: 438, column: 13, scope: !1071)
!1075 = !DILocation(line: 443, column: 32, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !669, line: 443, column: 13)
!1077 = !DILocation(line: 443, column: 74, scope: !1076)
!1078 = !DILocation(line: 443, column: 47, scope: !1076)
!1079 = !DILocation(line: 443, column: 13, scope: !1071)
!1080 = !DILocation(line: 445, column: 13, scope: !1071)
!1081 = !DILocation(line: 450, column: 32, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1071, file: !669, line: 450, column: 13)
!1083 = !DILocation(line: 450, column: 75, scope: !1082)
!1084 = !DILocation(line: 450, column: 48, scope: !1082)
!1085 = !DILocation(line: 450, column: 13, scope: !1071)
!1086 = !DILocation(line: 0, scope: !792, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 452, column: 9, scope: !1071)
!1088 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !1087)
!1089 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !1087)
!1090 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !1087)
!1091 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !1087)
!1092 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !1087)
!1093 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !1087)
!1094 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !1087)
!1095 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !1087)
!1096 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !1087)
!1097 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !1087)
!1098 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !1087)
!1099 = !DILocation(line: 0, scope: !800, inlinedAt: !1087)
!1100 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !1087)
!1101 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !1087)
!1102 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !1087)
!1103 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !1087)
!1104 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !1087)
!1105 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !1087)
!1106 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !1087)
!1107 = distinct !{!1107, !1096, !1108, !834, !835}
!1108 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !1087)
!1109 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !1087)
!1110 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !1087)
!1111 = !DILocation(line: 0, scope: !801, inlinedAt: !1087)
!1112 = distinct !{!1112, !1095, !1113, !834, !835}
!1113 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !1087)
!1114 = !DILocation(line: 457, column: 15, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1010, file: !669, line: 457, column: 9)
!1116 = !DILocation(line: 457, column: 23, scope: !1115)
!1117 = !DILocation(line: 457, column: 9, scope: !1010)
!1118 = !DILocation(line: 458, column: 21, scope: !1115)
!1119 = !DILocation(line: 458, column: 7, scope: !1115)
!1120 = !DILocation(line: 461, column: 23, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !669, line: 460, column: 7)
!1122 = !DILocation(line: 472, column: 15, scope: !1014)
!1123 = !DILocation(line: 0, scope: !1014)
!1124 = !DILocation(line: 473, column: 19, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1014, file: !669, line: 473, column: 11)
!1126 = !DILocation(line: 473, column: 11, scope: !1014)
!1127 = !DILocation(line: 475, column: 43, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !669, line: 474, column: 9)
!1129 = !DILocation(line: 475, column: 26, scope: !1128)
!1130 = !DILocation(line: 475, column: 25, scope: !1128)
!1131 = !DILocation(line: 476, column: 25, scope: !1128)
!1132 = !DILocation(line: 477, column: 11, scope: !1128)
!1133 = !DILocation(line: 479, column: 14, scope: !1014)
!1134 = !DILocation(line: 480, column: 14, scope: !1014)
!1135 = !DILocation(line: 481, column: 14, scope: !1014)
!1136 = !DILocation(line: 482, column: 21, scope: !1014)
!1137 = !DILocation(line: 483, column: 22, scope: !1014)
!1138 = !DILocation(line: 484, column: 30, scope: !1014)
!1139 = !DILocation(line: 484, column: 16, scope: !1014)
!1140 = !DILocation(line: 484, column: 23, scope: !1014)
!1141 = !DILocation(line: 485, column: 7, scope: !1014)
!1142 = !DILocation(line: 413, column: 49, scope: !1011)
!1143 = !DILocation(line: 413, column: 25, scope: !1011)
!1144 = distinct !{!1144, !1047, !1145, !834, !835}
!1145 = !DILocation(line: 487, column: 3, scope: !1012)
!1146 = !DILocation(line: 488, column: 17, scope: !1000)
!1147 = !DILocation(line: 489, column: 30, scope: !1000)
!1148 = !DILocation(line: 489, column: 10, scope: !1000)
!1149 = !DILocation(line: 489, column: 3, scope: !1000)
!1150 = !DILocation(line: 490, column: 1, scope: !1000)
!1151 = !DISubprogram(name: "NewImageList", scope: !927, file: !927, line: 36, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!429}
!1154 = !DISubprogram(name: "AppendImageToList", scope: !927, file: !927, line: 51, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1157, !651}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1158 = distinct !DISubprogram(name: "CompareImageLayers", scope: !669, file: !669, line: 768, type: !1159, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1163)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!429, !651, !1161, !672}
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageLayerMethod", file: !239, line: 53, baseType: !393)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1164 = !DILocalVariable(name: "image", arg: 1, scope: !1158, file: !669, line: 768, type: !651)
!1165 = !DILocalVariable(name: "method", arg: 2, scope: !1158, file: !669, line: 769, type: !1161)
!1166 = !DILocalVariable(name: "exception", arg: 3, scope: !1158, file: !669, line: 769, type: !672)
!1167 = !DILocalVariable(name: "image_a", scope: !1158, file: !669, line: 772, type: !429)
!1168 = !DILocalVariable(name: "image_b", scope: !1158, file: !669, line: 773, type: !429)
!1169 = !DILocalVariable(name: "layers", scope: !1158, file: !669, line: 774, type: !429)
!1170 = !DILocalVariable(name: "bounds", scope: !1158, file: !669, line: 777, type: !650)
!1171 = !DILocalVariable(name: "next", scope: !1158, file: !669, line: 780, type: !651)
!1172 = !DILocalVariable(name: "i", scope: !1158, file: !669, line: 783, type: !493)
!1173 = !DILocation(line: 0, scope: !1158)
!1174 = !DILocation(line: 771, column: 3, scope: !1158)
!1175 = !DILocation(line: 787, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 787, column: 7)
!1177 = !DILocation(line: 787, column: 20, scope: !1176)
!1178 = !DILocation(line: 787, column: 7, scope: !1158)
!1179 = !DILocation(line: 788, column: 68, scope: !1176)
!1180 = !DILocation(line: 788, column: 12, scope: !1176)
!1181 = !DILocation(line: 788, column: 5, scope: !1176)
!1182 = !DILocation(line: 797, column: 8, scope: !1158)
!1183 = !DILocation(line: 799, column: 5, scope: !1158)
!1184 = !DILocation(line: 798, column: 28, scope: !1158)
!1185 = !DILocation(line: 800, column: 14, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 800, column: 7)
!1187 = !DILocation(line: 800, column: 7, scope: !1158)
!1188 = !DILocation(line: 801, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !669, line: 801, column: 5)
!1190 = !DILocation(line: 805, column: 33, scope: !1158)
!1191 = !DILocation(line: 805, column: 38, scope: !1158)
!1192 = !DILocation(line: 805, column: 55, scope: !1158)
!1193 = !DILocation(line: 805, column: 11, scope: !1158)
!1194 = !DILocation(line: 807, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 807, column: 7)
!1196 = !DILocation(line: 807, column: 7, scope: !1158)
!1197 = !DILocation(line: 809, column: 32, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !669, line: 808, column: 5)
!1199 = !DILocation(line: 810, column: 7, scope: !1198)
!1200 = !DILocation(line: 812, column: 29, scope: !1158)
!1201 = !DILocation(line: 812, column: 36, scope: !1158)
!1202 = !DILocation(line: 813, column: 10, scope: !1158)
!1203 = !DILocation(line: 814, column: 12, scope: !1158)
!1204 = !DILocation(line: 814, column: 23, scope: !1158)
!1205 = !DILocation(line: 815, column: 17, scope: !1158)
!1206 = !DILocation(line: 817, column: 65, scope: !1158)
!1207 = !DILocation(line: 816, column: 18, scope: !1158)
!1208 = !DILocation(line: 817, column: 78, scope: !1158)
!1209 = !DILocation(line: 817, column: 10, scope: !1158)
!1210 = !DILocation(line: 822, column: 8, scope: !1158)
!1211 = !DILocation(line: 823, column: 16, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !669, line: 823, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 823, column: 3)
!1214 = !DILocation(line: 823, column: 3, scope: !1213)
!1215 = !DILocation(line: 825, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !669, line: 824, column: 3)
!1217 = !DILocation(line: 826, column: 17, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1216, file: !669, line: 826, column: 9)
!1219 = !DILocation(line: 826, column: 9, scope: !1216)
!1220 = !DILocation(line: 828, column: 17, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !669, line: 827, column: 7)
!1222 = !DILocation(line: 829, column: 34, scope: !1221)
!1223 = !DILocation(line: 830, column: 9, scope: !1221)
!1224 = !DILocation(line: 832, column: 67, scope: !1216)
!1225 = !DILocation(line: 833, column: 39, scope: !1216)
!1226 = !DILocation(line: 832, column: 12, scope: !1216)
!1227 = !DILocation(line: 834, column: 5, scope: !1216)
!1228 = !DILocation(line: 834, column: 15, scope: !1216)
!1229 = !DILocation(line: 836, column: 13, scope: !1216)
!1230 = !DILocation(line: 837, column: 6, scope: !1216)
!1231 = !DILocation(line: 823, column: 46, scope: !1212)
!1232 = distinct !{!1232, !1214, !1233, !834, !835}
!1233 = !DILocation(line: 838, column: 3, scope: !1213)
!1234 = !DILocation(line: 839, column: 11, scope: !1158)
!1235 = !DILocation(line: 843, column: 8, scope: !1158)
!1236 = !DILocation(line: 844, column: 10, scope: !1158)
!1237 = !DILocation(line: 844, column: 9, scope: !1158)
!1238 = !DILocation(line: 845, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 845, column: 7)
!1240 = !DILocation(line: 845, column: 7, scope: !1158)
!1241 = !DILocation(line: 847, column: 32, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !669, line: 846, column: 5)
!1243 = !DILocation(line: 848, column: 7, scope: !1242)
!1244 = !DILocation(line: 854, column: 8, scope: !1158)
!1245 = !DILocation(line: 855, column: 16, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !669, line: 855, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 855, column: 3)
!1248 = !DILocation(line: 855, column: 3, scope: !1247)
!1249 = !DILocation(line: 857, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !669, line: 856, column: 3)
!1251 = !DILocation(line: 858, column: 17, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !669, line: 858, column: 9)
!1253 = !DILocation(line: 858, column: 9, scope: !1250)
!1254 = !DILocation(line: 860, column: 32, scope: !1250)
!1255 = !DILocation(line: 860, column: 13, scope: !1250)
!1256 = !DILocation(line: 861, column: 13, scope: !1250)
!1257 = !DILocation(line: 862, column: 17, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1250, file: !669, line: 862, column: 9)
!1259 = !DILocation(line: 862, column: 9, scope: !1250)
!1260 = !DILocation(line: 864, column: 5, scope: !1250)
!1261 = !DILocation(line: 865, column: 6, scope: !1250)
!1262 = !DILocation(line: 855, column: 46, scope: !1246)
!1263 = distinct !{!1263, !1248, !1264, !834, !835}
!1264 = !DILocation(line: 866, column: 3, scope: !1247)
!1265 = !DILocation(line: 867, column: 28, scope: !1158)
!1266 = !DILocation(line: 870, column: 31, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !669, line: 869, column: 5)
!1268 = distinct !DILexicalBlock(scope: !1158, file: !669, line: 868, column: 7)
!1269 = !DILocation(line: 870, column: 14, scope: !1267)
!1270 = !DILocation(line: 871, column: 7, scope: !1267)
!1271 = !DILocation(line: 873, column: 30, scope: !1158)
!1272 = !DILocation(line: 873, column: 10, scope: !1158)
!1273 = !DILocation(line: 873, column: 3, scope: !1158)
!1274 = !DILocation(line: 874, column: 1, scope: !1158)
!1275 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1276, file: !1276, line: 42, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1276 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!484, !924, !924}
!1279 = !DISubprogram(name: "GetImageListLength", scope: !927, file: !927, line: 45, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!440, !651}
!1282 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!445, !672, !562, !562, !924, !1285, !562, !562, null}
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!1286 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1276, file: !1276, line: 51, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!484, !484}
!1289 = distinct !DISubprogram(name: "CompareImageBounds", scope: !669, file: !669, line: 593, type: !1290, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!501, !651, !651, !1161, !672}
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1293 = !DILocalVariable(name: "image1", arg: 1, scope: !1289, file: !669, line: 593, type: !651)
!1294 = !DILocalVariable(name: "image2", arg: 2, scope: !1289, file: !669, line: 593, type: !651)
!1295 = !DILocalVariable(name: "method", arg: 3, scope: !1289, file: !669, line: 594, type: !1161)
!1296 = !DILocalVariable(name: "exception", arg: 4, scope: !1289, file: !669, line: 594, type: !672)
!1297 = !DILocalVariable(name: "bounds", scope: !1289, file: !669, line: 597, type: !501)
!1298 = !DILocalVariable(name: "pixel1", scope: !1289, file: !669, line: 600, type: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !1300, file: !326, line: 107, baseType: !434, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1300, file: !326, line: 110, baseType: !436, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !1300, file: !326, line: 113, baseType: !445, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1300, file: !326, line: 116, baseType: !466, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1300, file: !326, line: 119, baseType: !440, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1300, file: !326, line: 122, baseType: !655, size: 32, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1300, file: !326, line: 123, baseType: !655, size: 32, offset: 288)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1300, file: !326, line: 124, baseType: !655, size: 32, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !1300, file: !326, line: 125, baseType: !655, size: 32, offset: 352)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1300, file: !326, line: 126, baseType: !655, size: 32, offset: 384)
!1312 = !DILocalVariable(name: "pixel2", scope: !1289, file: !669, line: 601, type: !1299)
!1313 = !DILocalVariable(name: "indexes1", scope: !1289, file: !669, line: 604, type: !657)
!1314 = !DILocalVariable(name: "indexes2", scope: !1289, file: !669, line: 605, type: !657)
!1315 = !DILocalVariable(name: "p", scope: !1289, file: !669, line: 608, type: !653)
!1316 = !DILocalVariable(name: "q", scope: !1289, file: !669, line: 609, type: !653)
!1317 = !DILocalVariable(name: "x", scope: !1289, file: !669, line: 612, type: !493)
!1318 = !DILocalVariable(name: "y", scope: !1289, file: !669, line: 615, type: !493)
!1319 = !DILocation(line: 0, scope: !1289)
!1320 = !DILocation(line: 597, column: 5, scope: !1289)
!1321 = !DILocation(line: 599, column: 3, scope: !1289)
!1322 = !DILocation(line: 600, column: 5, scope: !1289)
!1323 = !DILocation(line: 601, column: 5, scope: !1289)
!1324 = !DILocation(line: 626, column: 3, scope: !1289)
!1325 = !DILocation(line: 627, column: 3, scope: !1289)
!1326 = !DILocation(line: 628, column: 35, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !669, line: 628, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1289, file: !669, line: 628, column: 3)
!1329 = !DILocation(line: 628, column: 15, scope: !1327)
!1330 = !DILocation(line: 628, column: 3, scope: !1328)
!1331 = !DILocation(line: 630, column: 45, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !669, line: 629, column: 3)
!1333 = !DILocation(line: 630, column: 7, scope: !1332)
!1334 = !DILocation(line: 631, column: 45, scope: !1332)
!1335 = !DILocation(line: 631, column: 7, scope: !1332)
!1336 = !DILocation(line: 632, column: 12, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !669, line: 632, column: 9)
!1338 = !DILocation(line: 632, column: 43, scope: !1337)
!1339 = !DILocation(line: 635, column: 14, scope: !1332)
!1340 = !DILocation(line: 636, column: 14, scope: !1332)
!1341 = !DILocation(line: 637, column: 37, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !669, line: 637, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !669, line: 637, column: 5)
!1344 = !DILocation(line: 637, column: 17, scope: !1342)
!1345 = !DILocation(line: 637, column: 5, scope: !1343)
!1346 = !DILocation(line: 533, column: 7, scope: !1347, inlinedAt: !1358)
!1347 = distinct !DISubprogram(name: "ComparePixels", scope: !669, file: !669, line: 523, type: !1348, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1352)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!445, !1161, !1350, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1352 = !{!1353, !1354, !1355, !1356, !1357}
!1353 = !DILocalVariable(name: "method", arg: 1, scope: !1347, file: !669, line: 523, type: !1161)
!1354 = !DILocalVariable(name: "p", arg: 2, scope: !1347, file: !669, line: 524, type: !1350)
!1355 = !DILocalVariable(name: "q", arg: 3, scope: !1347, file: !669, line: 524, type: !1350)
!1356 = !DILocalVariable(name: "o1", scope: !1347, file: !669, line: 527, type: !655)
!1357 = !DILocalVariable(name: "o2", scope: !1347, file: !669, line: 528, type: !655)
!1358 = distinct !DILocation(line: 641, column: 11, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !669, line: 641, column: 11)
!1360 = distinct !DILexicalBlock(scope: !1342, file: !669, line: 638, column: 5)
!1361 = !DILocation(line: 639, column: 7, scope: !1360)
!1362 = !{!685, !686, i64 4}
!1363 = !DILocalVariable(name: "image", arg: 1, scope: !1364, file: !1365, line: 92, type: !651)
!1364 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1365, file: !1365, line: 92, type: !1366, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1369)
!1365 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !651, !653, !657, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1369 = !{!1363, !1370, !1371, !1372}
!1370 = !DILocalVariable(name: "color", arg: 2, scope: !1364, file: !1365, line: 93, type: !653)
!1371 = !DILocalVariable(name: "index", arg: 3, scope: !1364, file: !1365, line: 93, type: !657)
!1372 = !DILocalVariable(name: "pixel", arg: 4, scope: !1364, file: !1365, line: 93, type: !1368)
!1373 = !DILocation(line: 0, scope: !1364, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 639, column: 7, scope: !1360)
!1375 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1374)
!1376 = !{!690, !691, i64 4}
!1377 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1374)
!1378 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1374)
!1379 = !{!1380, !1381, i64 32}
!1380 = !{!"_MagickPixelPacket", !686, i64 0, !686, i64 4, !686, i64 8, !692, i64 16, !688, i64 24, !1381, i64 32, !1381, i64 36, !1381, i64 40, !1381, i64 44, !1381, i64 48}
!1381 = !{!"float", !686, i64 0}
!1382 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1374)
!1383 = !{!690, !691, i64 2}
!1384 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1374)
!1385 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1374)
!1386 = !{!1380, !1381, i64 36}
!1387 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1374)
!1388 = !{!690, !691, i64 0}
!1389 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1374)
!1390 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1374)
!1391 = !{!1380, !1381, i64 40}
!1392 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1374)
!1393 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1374)
!1394 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1374)
!1395 = !{!1380, !1381, i64 44}
!1396 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1374)
!1397 = distinct !DILexicalBlock(scope: !1364, file: !1365, line: 99, column: 7)
!1398 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1374)
!1399 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1374)
!1400 = !{!691, !691, i64 0}
!1401 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1374)
!1402 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1374)
!1403 = !{!1380, !1381, i64 48}
!1404 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1374)
!1405 = !DILocation(line: 640, column: 7, scope: !1360)
!1406 = !DILocation(line: 0, scope: !1364, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 640, column: 7, scope: !1360)
!1408 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1407)
!1409 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1407)
!1410 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1407)
!1411 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1407)
!1412 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1407)
!1413 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1407)
!1414 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1407)
!1415 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1407)
!1416 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1407)
!1417 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1407)
!1418 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1407)
!1419 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1407)
!1420 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1407)
!1421 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1407)
!1422 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1407)
!1423 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1407)
!1424 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1407)
!1425 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1407)
!1426 = !DILocation(line: 0, scope: !1347, inlinedAt: !1358)
!1427 = !DILocation(line: 534, column: 32, scope: !1428, inlinedAt: !1358)
!1428 = distinct !DILexicalBlock(scope: !1347, file: !669, line: 533, column: 7)
!1429 = !DILocation(line: 534, column: 58, scope: !1428, inlinedAt: !1358)
!1430 = !DILocation(line: 641, column: 11, scope: !1360)
!1431 = !DILocation(line: 643, column: 8, scope: !1360)
!1432 = !DILocation(line: 644, column: 8, scope: !1360)
!1433 = !DILocation(line: 637, column: 44, scope: !1342)
!1434 = distinct !{!1434, !1345, !1435, !834, !835}
!1435 = !DILocation(line: 645, column: 5, scope: !1343)
!1436 = !DILocation(line: 537, column: 12, scope: !1347, inlinedAt: !1358)
!1437 = !{!1380, !686, i64 8}
!1438 = !DILocation(line: 537, column: 18, scope: !1347, inlinedAt: !1358)
!1439 = !DILocation(line: 537, column: 8, scope: !1347, inlinedAt: !1358)
!1440 = !DILocation(line: 542, column: 7, scope: !1347, inlinedAt: !1358)
!1441 = !DILocation(line: 536, column: 12, scope: !1347, inlinedAt: !1358)
!1442 = !DILocation(line: 536, column: 18, scope: !1347, inlinedAt: !1358)
!1443 = !DILocation(line: 536, column: 8, scope: !1347, inlinedAt: !1358)
!1444 = !DILocation(line: 543, column: 38, scope: !1445, inlinedAt: !1358)
!1445 = distinct !DILexicalBlock(scope: !1347, file: !669, line: 542, column: 7)
!1446 = !DILocation(line: 543, column: 78, scope: !1445, inlinedAt: !1358)
!1447 = !DILocation(line: 551, column: 14, scope: !1448, inlinedAt: !1358)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !669, line: 551, column: 11)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !669, line: 550, column: 5)
!1450 = distinct !DILexicalBlock(scope: !1347, file: !669, line: 549, column: 7)
!1451 = !DILocation(line: 551, column: 11, scope: !1449, inlinedAt: !1358)
!1452 = !DILocation(line: 553, column: 35, scope: !1449, inlinedAt: !1358)
!1453 = !DILocation(line: 553, column: 61, scope: !1449, inlinedAt: !1358)
!1454 = !DILocation(line: 544, column: 11, scope: !1445, inlinedAt: !1358)
!1455 = !DILocation(line: 0, scope: !1343)
!1456 = !DILocation(line: 646, column: 31, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1332, file: !669, line: 646, column: 9)
!1458 = !DILocation(line: 646, column: 11, scope: !1457)
!1459 = !DILocation(line: 646, column: 9, scope: !1332)
!1460 = !DILocation(line: 628, column: 45, scope: !1327)
!1461 = distinct !{!1461, !1330, !1462, !834, !835}
!1462 = !DILocation(line: 648, column: 3, scope: !1328)
!1463 = !DILocation(line: 649, column: 30, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1289, file: !669, line: 649, column: 7)
!1465 = !DILocation(line: 0, scope: !1328)
!1466 = !DILocation(line: 649, column: 9, scope: !1464)
!1467 = !DILocation(line: 649, column: 7, scope: !1289)
!1468 = !DILocation(line: 655, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !669, line: 650, column: 5)
!1470 = !DILocation(line: 656, column: 19, scope: !1469)
!1471 = !DILocation(line: 658, column: 7, scope: !1469)
!1472 = !DILocation(line: 660, column: 11, scope: !1289)
!1473 = !DILocation(line: 661, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1289, file: !669, line: 661, column: 3)
!1475 = !DILocation(line: 0, scope: !1474)
!1476 = !DILocation(line: 661, column: 41, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !669, line: 661, column: 3)
!1478 = !DILocation(line: 661, column: 3, scope: !1474)
!1479 = !DILocation(line: 663, column: 45, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !669, line: 662, column: 3)
!1481 = !DILocation(line: 663, column: 7, scope: !1480)
!1482 = !DILocation(line: 664, column: 45, scope: !1480)
!1483 = !DILocation(line: 664, column: 7, scope: !1480)
!1484 = !DILocation(line: 665, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !669, line: 665, column: 9)
!1486 = !DILocation(line: 665, column: 43, scope: !1485)
!1487 = !DILocation(line: 668, column: 14, scope: !1480)
!1488 = !DILocation(line: 669, column: 14, scope: !1480)
!1489 = !DILocation(line: 670, column: 37, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !669, line: 670, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !669, line: 670, column: 5)
!1492 = !DILocation(line: 670, column: 17, scope: !1490)
!1493 = !DILocation(line: 670, column: 5, scope: !1491)
!1494 = !DILocation(line: 533, column: 7, scope: !1347, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 674, column: 11, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !669, line: 674, column: 11)
!1497 = distinct !DILexicalBlock(scope: !1490, file: !669, line: 671, column: 5)
!1498 = !DILocation(line: 672, column: 7, scope: !1497)
!1499 = !DILocation(line: 0, scope: !1364, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 672, column: 7, scope: !1497)
!1501 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1500)
!1502 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1500)
!1503 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1500)
!1504 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1500)
!1505 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1500)
!1506 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1500)
!1507 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1500)
!1508 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1500)
!1509 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1500)
!1510 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1500)
!1511 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1500)
!1512 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1500)
!1513 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1500)
!1514 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1500)
!1515 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1500)
!1516 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1500)
!1517 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1500)
!1518 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1500)
!1519 = !DILocation(line: 673, column: 7, scope: !1497)
!1520 = !DILocation(line: 0, scope: !1364, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 673, column: 7, scope: !1497)
!1522 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1521)
!1523 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1521)
!1524 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1521)
!1525 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1521)
!1526 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1521)
!1527 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1521)
!1528 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1521)
!1529 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1521)
!1530 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1521)
!1531 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1521)
!1532 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1521)
!1533 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1521)
!1534 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1521)
!1535 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1521)
!1536 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1521)
!1537 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1521)
!1538 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1521)
!1539 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1521)
!1540 = !DILocation(line: 0, scope: !1347, inlinedAt: !1495)
!1541 = !DILocation(line: 534, column: 32, scope: !1428, inlinedAt: !1495)
!1542 = !DILocation(line: 534, column: 58, scope: !1428, inlinedAt: !1495)
!1543 = !DILocation(line: 674, column: 11, scope: !1497)
!1544 = !DILocation(line: 676, column: 8, scope: !1497)
!1545 = !DILocation(line: 677, column: 8, scope: !1497)
!1546 = !DILocation(line: 670, column: 44, scope: !1490)
!1547 = distinct !{!1547, !1493, !1548, !834, !835}
!1548 = !DILocation(line: 678, column: 5, scope: !1491)
!1549 = !DILocation(line: 537, column: 12, scope: !1347, inlinedAt: !1495)
!1550 = !DILocation(line: 537, column: 18, scope: !1347, inlinedAt: !1495)
!1551 = !DILocation(line: 537, column: 8, scope: !1347, inlinedAt: !1495)
!1552 = !DILocation(line: 542, column: 7, scope: !1347, inlinedAt: !1495)
!1553 = !DILocation(line: 536, column: 12, scope: !1347, inlinedAt: !1495)
!1554 = !DILocation(line: 536, column: 18, scope: !1347, inlinedAt: !1495)
!1555 = !DILocation(line: 536, column: 8, scope: !1347, inlinedAt: !1495)
!1556 = !DILocation(line: 543, column: 38, scope: !1445, inlinedAt: !1495)
!1557 = !DILocation(line: 543, column: 78, scope: !1445, inlinedAt: !1495)
!1558 = !DILocation(line: 551, column: 14, scope: !1448, inlinedAt: !1495)
!1559 = !DILocation(line: 551, column: 11, scope: !1449, inlinedAt: !1495)
!1560 = !DILocation(line: 553, column: 35, scope: !1449, inlinedAt: !1495)
!1561 = !DILocation(line: 553, column: 61, scope: !1449, inlinedAt: !1495)
!1562 = !DILocation(line: 544, column: 11, scope: !1445, inlinedAt: !1495)
!1563 = !DILocation(line: 0, scope: !1491)
!1564 = !DILocation(line: 679, column: 31, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1480, file: !669, line: 679, column: 9)
!1566 = !DILocation(line: 679, column: 11, scope: !1565)
!1567 = !DILocation(line: 679, column: 9, scope: !1480)
!1568 = distinct !{!1568, !1478, !1569, !834, !835}
!1569 = !DILocation(line: 681, column: 3, scope: !1474)
!1570 = !DILocation(line: 683, column: 35, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !669, line: 683, column: 3)
!1572 = distinct !DILexicalBlock(scope: !1289, file: !669, line: 683, column: 3)
!1573 = !DILocation(line: 682, column: 36, scope: !1289)
!1574 = !DILocation(line: 682, column: 15, scope: !1289)
!1575 = !DILocation(line: 683, column: 15, scope: !1571)
!1576 = !DILocation(line: 683, column: 3, scope: !1572)
!1577 = !DILocation(line: 685, column: 43, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !669, line: 684, column: 3)
!1579 = !DILocation(line: 685, column: 7, scope: !1578)
!1580 = !DILocation(line: 686, column: 43, scope: !1578)
!1581 = !DILocation(line: 686, column: 7, scope: !1578)
!1582 = !DILocation(line: 687, column: 12, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !669, line: 687, column: 9)
!1584 = !DILocation(line: 687, column: 43, scope: !1583)
!1585 = !DILocation(line: 690, column: 14, scope: !1578)
!1586 = !DILocation(line: 691, column: 14, scope: !1578)
!1587 = !DILocation(line: 692, column: 37, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !669, line: 692, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !669, line: 692, column: 5)
!1590 = !DILocation(line: 692, column: 17, scope: !1588)
!1591 = !DILocation(line: 692, column: 5, scope: !1589)
!1592 = !DILocation(line: 533, column: 7, scope: !1347, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 696, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !669, line: 696, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1588, file: !669, line: 693, column: 5)
!1596 = !DILocation(line: 694, column: 7, scope: !1595)
!1597 = !DILocation(line: 0, scope: !1364, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 694, column: 7, scope: !1595)
!1599 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1598)
!1600 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1598)
!1601 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1598)
!1602 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1598)
!1603 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1598)
!1604 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1598)
!1605 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1598)
!1606 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1598)
!1607 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1598)
!1608 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1598)
!1609 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1598)
!1610 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1598)
!1611 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1598)
!1612 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1598)
!1613 = !DILocation(line: 694, column: 45, scope: !1595)
!1614 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1598)
!1615 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1598)
!1616 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1598)
!1617 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1598)
!1618 = !DILocation(line: 695, column: 7, scope: !1595)
!1619 = !DILocation(line: 0, scope: !1364, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 695, column: 7, scope: !1595)
!1621 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1620)
!1622 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1620)
!1623 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1620)
!1624 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1620)
!1625 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1620)
!1626 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1620)
!1627 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1620)
!1628 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1620)
!1629 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1620)
!1630 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1620)
!1631 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1620)
!1632 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1620)
!1633 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1620)
!1634 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1620)
!1635 = !DILocation(line: 695, column: 45, scope: !1595)
!1636 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1620)
!1637 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1620)
!1638 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1620)
!1639 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1620)
!1640 = !DILocation(line: 0, scope: !1347, inlinedAt: !1593)
!1641 = !DILocation(line: 534, column: 32, scope: !1428, inlinedAt: !1593)
!1642 = !DILocation(line: 534, column: 58, scope: !1428, inlinedAt: !1593)
!1643 = !DILocation(line: 696, column: 11, scope: !1595)
!1644 = !DILocation(line: 698, column: 8, scope: !1595)
!1645 = !DILocation(line: 699, column: 8, scope: !1595)
!1646 = !DILocation(line: 692, column: 47, scope: !1588)
!1647 = distinct !{!1647, !1591, !1648, !834, !835}
!1648 = !DILocation(line: 700, column: 5, scope: !1589)
!1649 = !DILocation(line: 537, column: 12, scope: !1347, inlinedAt: !1593)
!1650 = !DILocation(line: 537, column: 18, scope: !1347, inlinedAt: !1593)
!1651 = !DILocation(line: 537, column: 8, scope: !1347, inlinedAt: !1593)
!1652 = !DILocation(line: 542, column: 7, scope: !1347, inlinedAt: !1593)
!1653 = !DILocation(line: 536, column: 12, scope: !1347, inlinedAt: !1593)
!1654 = !DILocation(line: 536, column: 18, scope: !1347, inlinedAt: !1593)
!1655 = !DILocation(line: 536, column: 8, scope: !1347, inlinedAt: !1593)
!1656 = !DILocation(line: 543, column: 38, scope: !1445, inlinedAt: !1593)
!1657 = !DILocation(line: 543, column: 78, scope: !1445, inlinedAt: !1593)
!1658 = !DILocation(line: 551, column: 14, scope: !1448, inlinedAt: !1593)
!1659 = !DILocation(line: 551, column: 11, scope: !1449, inlinedAt: !1593)
!1660 = !DILocation(line: 553, column: 35, scope: !1449, inlinedAt: !1593)
!1661 = !DILocation(line: 553, column: 61, scope: !1449, inlinedAt: !1593)
!1662 = !DILocation(line: 544, column: 11, scope: !1445, inlinedAt: !1593)
!1663 = !DILocation(line: 0, scope: !1589)
!1664 = !DILocation(line: 701, column: 31, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1578, file: !669, line: 701, column: 9)
!1666 = !DILocation(line: 701, column: 11, scope: !1665)
!1667 = !DILocation(line: 701, column: 9, scope: !1578)
!1668 = !DILocation(line: 683, column: 42, scope: !1571)
!1669 = distinct !{!1669, !1576, !1670, !834, !835}
!1670 = !DILocation(line: 703, column: 3, scope: !1572)
!1671 = !DILocation(line: 705, column: 28, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1289, file: !669, line: 705, column: 3)
!1673 = !DILocation(line: 0, scope: !1572)
!1674 = !DILocation(line: 704, column: 10, scope: !1289)
!1675 = !DILocation(line: 704, column: 11, scope: !1289)
!1676 = !DILocation(line: 705, column: 8, scope: !1672)
!1677 = !DILocation(line: 0, scope: !1672)
!1678 = !DILocation(line: 705, column: 38, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !669, line: 705, column: 3)
!1680 = !DILocation(line: 705, column: 3, scope: !1672)
!1681 = !DILocation(line: 707, column: 43, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !669, line: 706, column: 3)
!1683 = !DILocation(line: 707, column: 7, scope: !1682)
!1684 = !DILocation(line: 708, column: 43, scope: !1682)
!1685 = !DILocation(line: 708, column: 7, scope: !1682)
!1686 = !DILocation(line: 709, column: 12, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !669, line: 709, column: 9)
!1688 = !DILocation(line: 709, column: 43, scope: !1687)
!1689 = !DILocation(line: 712, column: 14, scope: !1682)
!1690 = !DILocation(line: 713, column: 14, scope: !1682)
!1691 = !DILocation(line: 714, column: 37, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !669, line: 714, column: 5)
!1693 = distinct !DILexicalBlock(scope: !1682, file: !669, line: 714, column: 5)
!1694 = !DILocation(line: 714, column: 17, scope: !1692)
!1695 = !DILocation(line: 714, column: 5, scope: !1693)
!1696 = !DILocation(line: 533, column: 7, scope: !1347, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 718, column: 11, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !669, line: 718, column: 11)
!1699 = distinct !DILexicalBlock(scope: !1692, file: !669, line: 715, column: 5)
!1700 = !DILocation(line: 716, column: 7, scope: !1699)
!1701 = !DILocation(line: 0, scope: !1364, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 716, column: 7, scope: !1699)
!1703 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1702)
!1704 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1702)
!1705 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1702)
!1706 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1702)
!1707 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1702)
!1708 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1702)
!1709 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1702)
!1710 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1702)
!1711 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1702)
!1712 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1702)
!1713 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1702)
!1714 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1702)
!1715 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1702)
!1716 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1702)
!1717 = !DILocation(line: 716, column: 45, scope: !1699)
!1718 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1702)
!1719 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1702)
!1720 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1702)
!1721 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1702)
!1722 = !DILocation(line: 717, column: 7, scope: !1699)
!1723 = !DILocation(line: 0, scope: !1364, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 717, column: 7, scope: !1699)
!1725 = !DILocation(line: 95, column: 31, scope: !1364, inlinedAt: !1724)
!1726 = !DILocation(line: 95, column: 14, scope: !1364, inlinedAt: !1724)
!1727 = !DILocation(line: 95, column: 13, scope: !1364, inlinedAt: !1724)
!1728 = !DILocation(line: 96, column: 33, scope: !1364, inlinedAt: !1724)
!1729 = !DILocation(line: 96, column: 16, scope: !1364, inlinedAt: !1724)
!1730 = !DILocation(line: 96, column: 15, scope: !1364, inlinedAt: !1724)
!1731 = !DILocation(line: 97, column: 32, scope: !1364, inlinedAt: !1724)
!1732 = !DILocation(line: 97, column: 15, scope: !1364, inlinedAt: !1724)
!1733 = !DILocation(line: 97, column: 14, scope: !1364, inlinedAt: !1724)
!1734 = !DILocation(line: 98, column: 35, scope: !1364, inlinedAt: !1724)
!1735 = !DILocation(line: 98, column: 18, scope: !1364, inlinedAt: !1724)
!1736 = !DILocation(line: 98, column: 17, scope: !1364, inlinedAt: !1724)
!1737 = !DILocation(line: 99, column: 26, scope: !1397, inlinedAt: !1724)
!1738 = !DILocation(line: 99, column: 45, scope: !1397, inlinedAt: !1724)
!1739 = !DILocation(line: 717, column: 45, scope: !1699)
!1740 = !DILocation(line: 101, column: 35, scope: !1397, inlinedAt: !1724)
!1741 = !DILocation(line: 101, column: 18, scope: !1397, inlinedAt: !1724)
!1742 = !DILocation(line: 101, column: 17, scope: !1397, inlinedAt: !1724)
!1743 = !DILocation(line: 101, column: 5, scope: !1397, inlinedAt: !1724)
!1744 = !DILocation(line: 0, scope: !1347, inlinedAt: !1697)
!1745 = !DILocation(line: 534, column: 32, scope: !1428, inlinedAt: !1697)
!1746 = !DILocation(line: 534, column: 58, scope: !1428, inlinedAt: !1697)
!1747 = !DILocation(line: 718, column: 11, scope: !1699)
!1748 = !DILocation(line: 720, column: 8, scope: !1699)
!1749 = !DILocation(line: 721, column: 8, scope: !1699)
!1750 = !DILocation(line: 714, column: 47, scope: !1692)
!1751 = distinct !{!1751, !1695, !1752, !834, !835}
!1752 = !DILocation(line: 722, column: 5, scope: !1693)
!1753 = !DILocation(line: 537, column: 12, scope: !1347, inlinedAt: !1697)
!1754 = !DILocation(line: 537, column: 18, scope: !1347, inlinedAt: !1697)
!1755 = !DILocation(line: 537, column: 8, scope: !1347, inlinedAt: !1697)
!1756 = !DILocation(line: 542, column: 7, scope: !1347, inlinedAt: !1697)
!1757 = !DILocation(line: 536, column: 12, scope: !1347, inlinedAt: !1697)
!1758 = !DILocation(line: 536, column: 18, scope: !1347, inlinedAt: !1697)
!1759 = !DILocation(line: 536, column: 8, scope: !1347, inlinedAt: !1697)
!1760 = !DILocation(line: 543, column: 38, scope: !1445, inlinedAt: !1697)
!1761 = !DILocation(line: 543, column: 78, scope: !1445, inlinedAt: !1697)
!1762 = !DILocation(line: 551, column: 14, scope: !1448, inlinedAt: !1697)
!1763 = !DILocation(line: 551, column: 11, scope: !1449, inlinedAt: !1697)
!1764 = !DILocation(line: 553, column: 35, scope: !1449, inlinedAt: !1697)
!1765 = !DILocation(line: 553, column: 61, scope: !1449, inlinedAt: !1697)
!1766 = !DILocation(line: 544, column: 11, scope: !1445, inlinedAt: !1697)
!1767 = !DILocation(line: 0, scope: !1693)
!1768 = !DILocation(line: 723, column: 31, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1682, file: !669, line: 723, column: 9)
!1770 = !DILocation(line: 723, column: 11, scope: !1769)
!1771 = !DILocation(line: 723, column: 9, scope: !1682)
!1772 = distinct !{!1772, !1680, !1773, !834, !835}
!1773 = !DILocation(line: 725, column: 3, scope: !1672)
!1774 = !DILocation(line: 726, column: 37, scope: !1289)
!1775 = !DILocation(line: 727, column: 3, scope: !1289)
!1776 = !DILocation(line: 728, column: 1, scope: !1289)
!1777 = !DISubprogram(name: "CropImage", scope: !1778, file: !1778, line: 29, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!1778 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38be0c2b8a82bf966e7f55606c3e2192")
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!429, !651, !1781, !672}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!1783 = distinct !DISubprogram(name: "DeconstructImages", scope: !669, file: !669, line: 905, type: !670, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1784)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "images", arg: 1, scope: !1783, file: !669, line: 905, type: !651)
!1786 = !DILocalVariable(name: "exception", arg: 2, scope: !1783, file: !669, line: 906, type: !672)
!1787 = !DILocation(line: 0, scope: !1783)
!1788 = !DILocation(line: 908, column: 10, scope: !1783)
!1789 = !DILocation(line: 908, column: 3, scope: !1783)
!1790 = distinct !DISubprogram(name: "OptimizeImageLayers", scope: !669, file: !669, line: 1441, type: !670, scopeLine: 1443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1791)
!1791 = !{!1792, !1793}
!1792 = !DILocalVariable(name: "image", arg: 1, scope: !1790, file: !669, line: 1441, type: !651)
!1793 = !DILocalVariable(name: "exception", arg: 2, scope: !1790, file: !669, line: 1442, type: !672)
!1794 = !DILocation(line: 0, scope: !1790)
!1795 = !DILocation(line: 1444, column: 10, scope: !1790)
!1796 = !DILocation(line: 1444, column: 3, scope: !1790)
!1797 = distinct !DISubprogram(name: "OptimizeLayerFrames", scope: !669, file: !669, line: 962, type: !1159, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1799 = !DILocalVariable(name: "image", arg: 1, scope: !1797, file: !669, line: 962, type: !651)
!1800 = !DILocalVariable(name: "method", arg: 2, scope: !1797, file: !669, line: 963, type: !1161)
!1801 = !DILocalVariable(name: "exception", arg: 3, scope: !1797, file: !669, line: 963, type: !672)
!1802 = !DILocalVariable(name: "sans_exception", scope: !1797, file: !669, line: 966, type: !672)
!1803 = !DILocalVariable(name: "prev_image", scope: !1797, file: !669, line: 969, type: !429)
!1804 = !DILocalVariable(name: "dup_image", scope: !1797, file: !669, line: 970, type: !429)
!1805 = !DILocalVariable(name: "bgnd_image", scope: !1797, file: !669, line: 971, type: !429)
!1806 = !DILocalVariable(name: "optimized_image", scope: !1797, file: !669, line: 972, type: !429)
!1807 = !DILocalVariable(name: "try_bounds", scope: !1797, file: !669, line: 975, type: !501)
!1808 = !DILocalVariable(name: "bgnd_bounds", scope: !1797, file: !669, line: 976, type: !501)
!1809 = !DILocalVariable(name: "dup_bounds", scope: !1797, file: !669, line: 977, type: !501)
!1810 = !DILocalVariable(name: "bounds", scope: !1797, file: !669, line: 978, type: !650)
!1811 = !DILocalVariable(name: "add_frames", scope: !1797, file: !669, line: 981, type: !445)
!1812 = !DILocalVariable(name: "try_cleared", scope: !1797, file: !669, line: 982, type: !445)
!1813 = !DILocalVariable(name: "cleared", scope: !1797, file: !669, line: 983, type: !445)
!1814 = !DILocalVariable(name: "disposals", scope: !1797, file: !669, line: 986, type: !660)
!1815 = !DILocalVariable(name: "curr", scope: !1797, file: !669, line: 989, type: !651)
!1816 = !DILocalVariable(name: "i", scope: !1797, file: !669, line: 992, type: !493)
!1817 = !DILocalVariable(name: "time", scope: !1818, file: !669, line: 1378, type: !440)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !669, line: 1377, column: 39)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !669, line: 1377, column: 10)
!1820 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1373, column: 3)
!1821 = !DILocation(line: 0, scope: !1797)
!1822 = !DILocation(line: 968, column: 3, scope: !1797)
!1823 = !DILocation(line: 996, column: 14, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 996, column: 7)
!1825 = !DILocation(line: 996, column: 20, scope: !1824)
!1826 = !DILocation(line: 996, column: 7, scope: !1797)
!1827 = !DILocation(line: 997, column: 68, scope: !1824)
!1828 = !DILocation(line: 997, column: 12, scope: !1824)
!1829 = !DILocation(line: 997, column: 5, scope: !1824)
!1830 = !DILocation(line: 1007, column: 21, scope: !1797)
!1831 = !DILocation(line: 1011, column: 8, scope: !1797)
!1832 = !DILocation(line: 1012, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !669, line: 1012, column: 3)
!1834 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1012, column: 3)
!1835 = !DILocation(line: 1012, column: 3, scope: !1834)
!1836 = !DILocation(line: 1014, column: 16, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !669, line: 1014, column: 9)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !669, line: 1013, column: 3)
!1839 = !DILocation(line: 1014, column: 34, scope: !1837)
!1840 = !DILocation(line: 1014, column: 24, scope: !1837)
!1841 = !DILocation(line: 1014, column: 43, scope: !1837)
!1842 = !DILocation(line: 1014, column: 53, scope: !1837)
!1843 = !DILocation(line: 1014, column: 68, scope: !1837)
!1844 = !DILocation(line: 1014, column: 58, scope: !1837)
!1845 = !DILocation(line: 1014, column: 9, scope: !1838)
!1846 = !DILocation(line: 1015, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1837, file: !669, line: 1015, column: 7)
!1848 = !DILocation(line: 1012, column: 39, scope: !1833)
!1849 = distinct !{!1849, !1835, !1850, !834, !835}
!1850 = !DILocation(line: 1020, column: 3, scope: !1834)
!1851 = !DILocation(line: 1024, column: 8, scope: !1797)
!1852 = !DILocation(line: 1026, column: 5, scope: !1797)
!1853 = !DILocation(line: 1026, column: 31, scope: !1797)
!1854 = !DILocation(line: 1026, column: 69, scope: !1797)
!1855 = !DILocation(line: 1025, column: 28, scope: !1797)
!1856 = !DILocation(line: 1028, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1028, column: 7)
!1858 = !DILocation(line: 1028, column: 7, scope: !1797)
!1859 = !DILocation(line: 1029, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !669, line: 1029, column: 5)
!1861 = !DILocation(line: 1031, column: 5, scope: !1797)
!1862 = !DILocation(line: 1031, column: 70, scope: !1797)
!1863 = !DILocation(line: 1030, column: 29, scope: !1797)
!1864 = !DILocation(line: 1033, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1033, column: 7)
!1866 = !DILocation(line: 1033, column: 7, scope: !1797)
!1867 = !DILocation(line: 1035, column: 32, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !669, line: 1034, column: 5)
!1869 = !DILocation(line: 1036, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1868, file: !669, line: 1036, column: 7)
!1871 = !DILocation(line: 1041, column: 36, scope: !1797)
!1872 = !DILocation(line: 1041, column: 41, scope: !1797)
!1873 = !DILocation(line: 1041, column: 58, scope: !1797)
!1874 = !DILocation(line: 1041, column: 14, scope: !1797)
!1875 = !DILocation(line: 1043, column: 18, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1043, column: 7)
!1877 = !DILocation(line: 1043, column: 7, scope: !1797)
!1878 = !DILocation(line: 1045, column: 32, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !669, line: 1044, column: 5)
!1880 = !DILocation(line: 1046, column: 33, scope: !1879)
!1881 = !DILocation(line: 1047, column: 7, scope: !1879)
!1882 = !DILocation(line: 1049, column: 15, scope: !1797)
!1883 = !DILocation(line: 1049, column: 26, scope: !1797)
!1884 = !DILocation(line: 1050, column: 20, scope: !1797)
!1885 = !DILocation(line: 1052, column: 15, scope: !1797)
!1886 = !DILocation(line: 1051, column: 21, scope: !1797)
!1887 = !DILocation(line: 1052, column: 22, scope: !1797)
!1888 = !DILocation(line: 1054, column: 32, scope: !1797)
!1889 = !DILocation(line: 1054, column: 39, scope: !1797)
!1890 = !DILocation(line: 1055, column: 10, scope: !1797)
!1891 = !DILocation(line: 1064, column: 15, scope: !1797)
!1892 = !{!686, !686, i64 0}
!1893 = !DILocation(line: 1065, column: 13, scope: !1797)
!1894 = !DILocation(line: 1081, column: 8, scope: !1797)
!1895 = !DILocation(line: 1082, column: 16, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !669, line: 1082, column: 3)
!1897 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1082, column: 3)
!1898 = !DILocation(line: 1082, column: 3, scope: !1897)
!1899 = !DILocation(line: 1090, column: 5, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !669, line: 1083, column: 3)
!1901 = !DILocation(line: 1090, column: 15, scope: !1900)
!1902 = !DILocation(line: 1090, column: 40, scope: !1900)
!1903 = !DILocation(line: 1091, column: 35, scope: !1900)
!1904 = !DILocation(line: 1091, column: 13, scope: !1900)
!1905 = !DILocation(line: 1092, column: 16, scope: !1900)
!1906 = !DILocation(line: 1092, column: 5, scope: !1900)
!1907 = !DILocation(line: 1092, column: 19, scope: !1900)
!1908 = !DILocation(line: 1100, column: 20, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1900, file: !669, line: 1100, column: 10)
!1910 = !DILocation(line: 1100, column: 22, scope: !1909)
!1911 = !DILocation(line: 1100, column: 10, scope: !1900)
!1912 = !DILocation(line: 1107, column: 23, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !669, line: 1107, column: 12)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !669, line: 1100, column: 28)
!1915 = !DILocation(line: 1108, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !669, line: 1107, column: 33)
!1917 = !DILocation(line: 1109, column: 9, scope: !1916)
!1918 = !DILocation(line: 1109, column: 21, scope: !1916)
!1919 = !DILocation(line: 1110, column: 19, scope: !1916)
!1920 = !DILocation(line: 1112, column: 9, scope: !1916)
!1921 = !DILocation(line: 1120, column: 20, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !669, line: 1116, column: 7)
!1923 = !DILocation(line: 0, scope: !861, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 1121, column: 21, scope: !1922)
!1925 = !DILocation(line: 178, column: 17, scope: !957, inlinedAt: !1924)
!1926 = !DILocation(line: 178, column: 7, scope: !861, inlinedAt: !1924)
!1927 = !DILocation(line: 180, column: 15, scope: !876, inlinedAt: !1924)
!1928 = !DILocation(line: 180, column: 3, scope: !877, inlinedAt: !1924)
!1929 = !DILocation(line: 182, column: 50, scope: !880, inlinedAt: !1924)
!1930 = !DILocation(line: 182, column: 7, scope: !880, inlinedAt: !1924)
!1931 = !DILocation(line: 184, column: 7, scope: !880, inlinedAt: !1924)
!1932 = !DILocation(line: 186, column: 12, scope: !884, inlinedAt: !1924)
!1933 = !DILocation(line: 186, column: 43, scope: !884, inlinedAt: !1924)
!1934 = !DILocation(line: 188, column: 5, scope: !887, inlinedAt: !1924)
!1935 = !DILocation(line: 190, column: 12, scope: !889, inlinedAt: !1924)
!1936 = !DILocation(line: 190, column: 31, scope: !889, inlinedAt: !1924)
!1937 = !DILocation(line: 190, column: 62, scope: !889, inlinedAt: !1924)
!1938 = !DILocation(line: 191, column: 15, scope: !889, inlinedAt: !1924)
!1939 = !DILocation(line: 191, column: 23, scope: !889, inlinedAt: !1924)
!1940 = !DILocation(line: 190, column: 11, scope: !890, inlinedAt: !1924)
!1941 = !DILocation(line: 193, column: 8, scope: !890, inlinedAt: !1924)
!1942 = !DILocation(line: 194, column: 8, scope: !890, inlinedAt: !1924)
!1943 = !DILocation(line: 188, column: 45, scope: !891, inlinedAt: !1924)
!1944 = !DILocation(line: 188, column: 17, scope: !891, inlinedAt: !1924)
!1945 = distinct !{!1945, !1934, !1946, !834, !835}
!1946 = !DILocation(line: 195, column: 5, scope: !887, inlinedAt: !1924)
!1947 = !DILocation(line: 180, column: 44, scope: !876, inlinedAt: !1924)
!1948 = distinct !{!1948, !1928, !1949, !834, !835}
!1949 = !DILocation(line: 198, column: 3, scope: !877, inlinedAt: !1924)
!1950 = !DILocation(line: 199, column: 12, scope: !861, inlinedAt: !1924)
!1951 = !DILocation(line: 199, column: 10, scope: !861, inlinedAt: !1924)
!1952 = !DILocation(line: 199, column: 3, scope: !861, inlinedAt: !1924)
!1953 = !DILocation(line: 1128, column: 16, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1922, file: !669, line: 1128, column: 14)
!1955 = !DILocation(line: 1128, column: 28, scope: !1954)
!1956 = !DILocation(line: 1129, column: 34, scope: !1954)
!1957 = !DILocation(line: 1130, column: 34, scope: !1954)
!1958 = !DILocation(line: 1130, column: 52, scope: !1954)
!1959 = !DILocation(line: 1130, column: 40, scope: !1954)
!1960 = !DILocation(line: 1130, column: 21, scope: !1954)
!1961 = !DILocation(line: 1128, column: 14, scope: !1922)
!1962 = !DILocation(line: 1133, column: 23, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !669, line: 1131, column: 11)
!1964 = !DILocation(line: 1134, column: 27, scope: !1963)
!1965 = !DILocation(line: 1140, column: 11, scope: !1963)
!1966 = !DILocation(line: 0, scope: !1900)
!1967 = !DILocation(line: 1148, column: 14, scope: !1922)
!1968 = !DILocation(line: 1150, column: 40, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !669, line: 1149, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1922, file: !669, line: 1148, column: 14)
!1971 = !DILocation(line: 1150, column: 65, scope: !1969)
!1972 = !DILocation(line: 1150, column: 70, scope: !1969)
!1973 = !DILocation(line: 1151, column: 38, scope: !1969)
!1974 = !DILocation(line: 1150, column: 23, scope: !1969)
!1975 = !DILocation(line: 1152, column: 27, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !669, line: 1152, column: 17)
!1977 = !DILocation(line: 1152, column: 17, scope: !1969)
!1978 = !DILocation(line: 1154, column: 42, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !669, line: 1153, column: 15)
!1980 = !DILocation(line: 1155, column: 43, scope: !1979)
!1981 = !DILocation(line: 1156, column: 28, scope: !1979)
!1982 = !DILocation(line: 1157, column: 17, scope: !1979)
!1983 = !DILocation(line: 1159, column: 24, scope: !1969)
!1984 = !DILocation(line: 0, scope: !792, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 1160, column: 13, scope: !1969)
!1986 = !DILocation(line: 105, column: 17, scope: !1987, inlinedAt: !1985)
!1987 = distinct !DILexicalBlock(scope: !792, file: !669, line: 105, column: 7)
!1988 = !DILocation(line: 105, column: 7, scope: !792, inlinedAt: !1985)
!1989 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !1985)
!1990 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !1985)
!1991 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !1985)
!1992 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !1985)
!1993 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !1985)
!1994 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !1985)
!1995 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !1985)
!1996 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !1985)
!1997 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !1985)
!1998 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !1985)
!1999 = !DILocation(line: 0, scope: !800, inlinedAt: !1985)
!2000 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !1985)
!2001 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !1985)
!2002 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !1985)
!2003 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !1985)
!2004 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !1985)
!2005 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !1985)
!2006 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !1985)
!2007 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !1985)
!2008 = distinct !{!2008, !2002, !2009, !834, !835}
!2009 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !1985)
!2010 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !1985)
!2011 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !1985)
!2012 = !DILocation(line: 0, scope: !801, inlinedAt: !1985)
!2013 = distinct !{!2013, !1996, !2014, !834, !835}
!2014 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !1985)
!2015 = !DILocation(line: 1161, column: 24, scope: !1969)
!2016 = !DILocation(line: 1162, column: 18, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1969, file: !669, line: 1162, column: 18)
!2018 = !DILocation(line: 1162, column: 26, scope: !2017)
!2019 = !DILocation(line: 1163, column: 36, scope: !2017)
!2020 = !DILocation(line: 1164, column: 40, scope: !2017)
!2021 = !DILocation(line: 1164, column: 23, scope: !2017)
!2022 = !DILocation(line: 1165, column: 32, scope: !2017)
!2023 = !DILocation(line: 1165, column: 50, scope: !2017)
!2024 = !DILocation(line: 1165, column: 38, scope: !2017)
!2025 = !DILocation(line: 1165, column: 20, scope: !2017)
!2026 = !DILocation(line: 1162, column: 18, scope: !1969)
!2027 = !DILocation(line: 1168, column: 27, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2017, file: !669, line: 1166, column: 15)
!2029 = !DILocation(line: 1169, column: 31, scope: !2028)
!2030 = !DILocation(line: 1171, column: 15, scope: !2028)
!2031 = !DILocation(line: 0, scope: !1922)
!2032 = !DILocation(line: 1178, column: 37, scope: !1922)
!2033 = !DILocation(line: 1178, column: 62, scope: !1922)
!2034 = !DILocation(line: 1178, column: 67, scope: !1922)
!2035 = !DILocation(line: 1179, column: 32, scope: !1922)
!2036 = !DILocation(line: 1178, column: 20, scope: !1922)
!2037 = !DILocation(line: 1180, column: 24, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1922, file: !669, line: 1180, column: 13)
!2039 = !DILocation(line: 1180, column: 13, scope: !1922)
!2040 = !DILocation(line: 1182, column: 38, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2038, file: !669, line: 1181, column: 11)
!2042 = !DILocation(line: 1183, column: 39, scope: !2041)
!2043 = !DILocation(line: 1184, column: 24, scope: !2041)
!2044 = !DILocation(line: 1185, column: 28, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !669, line: 1185, column: 18)
!2046 = !DILocation(line: 1185, column: 18, scope: !2041)
!2047 = !DILocation(line: 1186, column: 25, scope: !2045)
!2048 = !DILocation(line: 1186, column: 15, scope: !2045)
!2049 = !DILocation(line: 1189, column: 21, scope: !1922)
!2050 = !DILocation(line: 0, scope: !792, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 1190, column: 9, scope: !1922)
!2052 = !DILocation(line: 105, column: 17, scope: !1987, inlinedAt: !2051)
!2053 = !DILocation(line: 105, column: 7, scope: !792, inlinedAt: !2051)
!2054 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !2051)
!2055 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !2051)
!2056 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !2051)
!2057 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !2051)
!2058 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !2051)
!2059 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !2051)
!2060 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !2051)
!2061 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !2051)
!2062 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !2051)
!2063 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !2051)
!2064 = !DILocation(line: 0, scope: !800, inlinedAt: !2051)
!2065 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !2051)
!2066 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !2051)
!2067 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !2051)
!2068 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !2051)
!2069 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !2051)
!2070 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !2051)
!2071 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !2051)
!2072 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !2051)
!2073 = distinct !{!2073, !2067, !2074, !834, !835}
!2074 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !2051)
!2075 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !2051)
!2076 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !2051)
!2077 = !DILocation(line: 0, scope: !801, inlinedAt: !2051)
!2078 = distinct !{!2078, !2061, !2079, !834, !835}
!2079 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !2051)
!2080 = !DILocation(line: 1191, column: 20, scope: !1922)
!2081 = !DILocation(line: 0, scope: !861, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 1192, column: 21, scope: !1922)
!2083 = !DILocation(line: 178, column: 17, scope: !957, inlinedAt: !2082)
!2084 = !DILocation(line: 178, column: 7, scope: !861, inlinedAt: !2082)
!2085 = !DILocation(line: 180, column: 15, scope: !876, inlinedAt: !2082)
!2086 = !DILocation(line: 180, column: 3, scope: !877, inlinedAt: !2082)
!2087 = !DILocation(line: 182, column: 50, scope: !880, inlinedAt: !2082)
!2088 = !DILocation(line: 182, column: 7, scope: !880, inlinedAt: !2082)
!2089 = !DILocation(line: 184, column: 7, scope: !880, inlinedAt: !2082)
!2090 = !DILocation(line: 186, column: 12, scope: !884, inlinedAt: !2082)
!2091 = !DILocation(line: 186, column: 43, scope: !884, inlinedAt: !2082)
!2092 = !DILocation(line: 188, column: 5, scope: !887, inlinedAt: !2082)
!2093 = !DILocation(line: 190, column: 12, scope: !889, inlinedAt: !2082)
!2094 = !DILocation(line: 190, column: 31, scope: !889, inlinedAt: !2082)
!2095 = !DILocation(line: 190, column: 62, scope: !889, inlinedAt: !2082)
!2096 = !DILocation(line: 191, column: 15, scope: !889, inlinedAt: !2082)
!2097 = !DILocation(line: 191, column: 23, scope: !889, inlinedAt: !2082)
!2098 = !DILocation(line: 190, column: 11, scope: !890, inlinedAt: !2082)
!2099 = !DILocation(line: 193, column: 8, scope: !890, inlinedAt: !2082)
!2100 = !DILocation(line: 194, column: 8, scope: !890, inlinedAt: !2082)
!2101 = !DILocation(line: 188, column: 45, scope: !891, inlinedAt: !2082)
!2102 = !DILocation(line: 188, column: 17, scope: !891, inlinedAt: !2082)
!2103 = distinct !{!2103, !2092, !2104, !834, !835}
!2104 = !DILocation(line: 195, column: 5, scope: !887, inlinedAt: !2082)
!2105 = !DILocation(line: 180, column: 44, scope: !876, inlinedAt: !2082)
!2106 = distinct !{!2106, !2086, !2107, !834, !835}
!2107 = !DILocation(line: 198, column: 3, scope: !877, inlinedAt: !2082)
!2108 = !DILocation(line: 199, column: 12, scope: !861, inlinedAt: !2082)
!2109 = !DILocation(line: 1197, column: 14, scope: !1922)
!2110 = !DILocation(line: 1205, column: 24, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !669, line: 1198, column: 11)
!2112 = distinct !DILexicalBlock(scope: !1922, file: !669, line: 1197, column: 14)
!2113 = !DILocation(line: 1205, column: 49, scope: !2111)
!2114 = !DILocation(line: 1212, column: 18, scope: !2111)
!2115 = !DILocation(line: 1221, column: 35, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !669, line: 1221, column: 22)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !669, line: 1215, column: 15)
!2118 = distinct !DILexicalBlock(scope: !2111, file: !669, line: 1212, column: 18)
!2119 = !DILocation(line: 1221, column: 22, scope: !2117)
!2120 = !DILocation(line: 1223, column: 55, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !669, line: 1222, column: 19)
!2122 = !DILocation(line: 1223, column: 39, scope: !2121)
!2123 = !DILocation(line: 1224, column: 27, scope: !2121)
!2124 = !DILocation(line: 1227, column: 19, scope: !2121)
!2125 = !DILocation(line: 1230, column: 55, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2116, file: !669, line: 1229, column: 19)
!2127 = !DILocation(line: 1230, column: 39, scope: !2126)
!2128 = !DILocation(line: 1231, column: 27, scope: !2126)
!2129 = !DILocation(line: 1234, column: 35, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2117, file: !669, line: 1234, column: 22)
!2131 = !DILocation(line: 1234, column: 22, scope: !2117)
!2132 = !DILocation(line: 1236, column: 58, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !669, line: 1235, column: 19)
!2134 = !DILocation(line: 1236, column: 41, scope: !2133)
!2135 = !DILocation(line: 1237, column: 27, scope: !2133)
!2136 = !DILocation(line: 1240, column: 19, scope: !2133)
!2137 = !DILocation(line: 1243, column: 55, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2130, file: !669, line: 1242, column: 19)
!2139 = !DILocation(line: 1243, column: 39, scope: !2138)
!2140 = !DILocation(line: 1244, column: 27, scope: !2138)
!2141 = !DILocation(line: 0, scope: !2118)
!2142 = !DILocation(line: 0, scope: !792, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 1253, column: 13, scope: !2111)
!2144 = !DILocation(line: 105, column: 17, scope: !1987, inlinedAt: !2143)
!2145 = !DILocation(line: 105, column: 7, scope: !792, inlinedAt: !2143)
!2146 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !2143)
!2147 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !2143)
!2148 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !2143)
!2149 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !2143)
!2150 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !2143)
!2151 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !2143)
!2152 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !2143)
!2153 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !2143)
!2154 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !2143)
!2155 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !2143)
!2156 = !DILocation(line: 0, scope: !800, inlinedAt: !2143)
!2157 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !2143)
!2158 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !2143)
!2159 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !2143)
!2160 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !2143)
!2161 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !2143)
!2162 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !2143)
!2163 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !2143)
!2164 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !2143)
!2165 = distinct !{!2165, !2159, !2166, !834, !835}
!2166 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !2143)
!2167 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !2143)
!2168 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !2143)
!2169 = !DILocation(line: 0, scope: !801, inlinedAt: !2143)
!2170 = distinct !{!2170, !2153, !2171, !834, !835}
!2171 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !2143)
!2172 = !DILocation(line: 1273, column: 24, scope: !2111)
!2173 = !DILocation(line: 1281, column: 11, scope: !2111)
!2174 = !DILocation(line: 1286, column: 14, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1922, file: !669, line: 1286, column: 14)
!2176 = !DILocation(line: 1286, column: 22, scope: !2175)
!2177 = !DILocation(line: 1287, column: 32, scope: !2175)
!2178 = !DILocation(line: 1288, column: 34, scope: !2175)
!2179 = !DILocation(line: 1288, column: 17, scope: !2175)
!2180 = !DILocation(line: 1289, column: 29, scope: !2175)
!2181 = !DILocation(line: 1289, column: 47, scope: !2175)
!2182 = !DILocation(line: 1289, column: 34, scope: !2175)
!2183 = !DILocation(line: 1290, column: 36, scope: !2175)
!2184 = !DILocation(line: 1290, column: 19, scope: !2175)
!2185 = !DILocation(line: 1291, column: 30, scope: !2175)
!2186 = !DILocation(line: 1291, column: 46, scope: !2175)
!2187 = !DILocation(line: 1291, column: 35, scope: !2175)
!2188 = !DILocation(line: 1291, column: 19, scope: !2175)
!2189 = !DILocation(line: 1289, column: 15, scope: !2175)
!2190 = !DILocation(line: 1286, column: 14, scope: !1922)
!2191 = !DILocation(line: 1294, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2175, file: !669, line: 1292, column: 11)
!2193 = !DILocation(line: 1295, column: 23, scope: !2192)
!2194 = !DILocation(line: 1296, column: 18, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !669, line: 1296, column: 18)
!2196 = !DILocation(line: 1296, column: 33, scope: !2195)
!2197 = !DILocation(line: 1296, column: 18, scope: !2192)
!2198 = !DILocation(line: 1297, column: 25, scope: !2195)
!2199 = !DILocation(line: 1297, column: 15, scope: !2195)
!2200 = !DILocation(line: 1298, column: 27, scope: !2192)
!2201 = !DILocation(line: 1310, column: 10, scope: !1900)
!2202 = !DILocation(line: 1310, column: 10, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1900, file: !669, line: 1310, column: 10)
!2204 = !DILocation(line: 1310, column: 25, scope: !2203)
!2205 = !DILocation(line: 1313, column: 23, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !669, line: 1312, column: 14)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !669, line: 1311, column: 7)
!2208 = !DILocation(line: 1314, column: 21, scope: !2207)
!2209 = !DILocation(line: 1316, column: 18, scope: !2207)
!2210 = !DILocation(line: 1316, column: 10, scope: !2207)
!2211 = !DILocation(line: 1316, column: 22, scope: !2207)
!2212 = !DILocation(line: 1317, column: 20, scope: !2207)
!2213 = !DILocation(line: 1318, column: 24, scope: !2207)
!2214 = !DILocation(line: 1319, column: 10, scope: !2207)
!2215 = !DILocation(line: 1319, column: 22, scope: !2207)
!2216 = !DILocation(line: 1321, column: 7, scope: !2207)
!2217 = !DILocation(line: 1324, column: 24, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !669, line: 1324, column: 14)
!2219 = distinct !DILexicalBlock(scope: !2203, file: !669, line: 1323, column: 7)
!2220 = !DILocation(line: 1324, column: 14, scope: !2219)
!2221 = !DILocation(line: 1325, column: 21, scope: !2218)
!2222 = !DILocation(line: 1326, column: 14, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !669, line: 1326, column: 14)
!2224 = !DILocation(line: 1325, column: 11, scope: !2218)
!2225 = !DILocation(line: 1326, column: 29, scope: !2223)
!2226 = !DILocation(line: 1326, column: 14, scope: !2219)
!2227 = !DILocation(line: 1327, column: 22, scope: !2223)
!2228 = !DILocation(line: 1328, column: 14, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2219, file: !669, line: 1328, column: 14)
!2230 = !DILocation(line: 1327, column: 11, scope: !2223)
!2231 = !DILocation(line: 1328, column: 29, scope: !2229)
!2232 = !DILocation(line: 1328, column: 14, scope: !2219)
!2233 = !DILocation(line: 1330, column: 24, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2219, file: !669, line: 1330, column: 13)
!2235 = !DILocation(line: 1330, column: 13, scope: !2219)
!2236 = !DILocation(line: 1331, column: 22, scope: !2234)
!2237 = !DILocation(line: 1332, column: 14, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2219, file: !669, line: 1332, column: 14)
!2239 = !DILocation(line: 1331, column: 11, scope: !2234)
!2240 = !DILocation(line: 0, scope: !2219)
!2241 = !DILocation(line: 1332, column: 29, scope: !2238)
!2242 = !DILocation(line: 1332, column: 14, scope: !2219)
!2243 = !DILocation(line: 1334, column: 41, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !669, line: 1333, column: 11)
!2245 = !DILocation(line: 1334, column: 66, scope: !2244)
!2246 = !DILocation(line: 1334, column: 71, scope: !2244)
!2247 = !DILocation(line: 1335, column: 36, scope: !2244)
!2248 = !DILocation(line: 1334, column: 24, scope: !2244)
!2249 = !DILocation(line: 1336, column: 28, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !669, line: 1336, column: 17)
!2251 = !DILocation(line: 1336, column: 17, scope: !2244)
!2252 = !DILocation(line: 1346, column: 18, scope: !1900)
!2253 = !DILocation(line: 1338, column: 42, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !669, line: 1337, column: 15)
!2255 = !DILocation(line: 1339, column: 43, scope: !2254)
!2256 = !DILocation(line: 1340, column: 17, scope: !2254)
!2257 = !DILocation(line: 0, scope: !2203)
!2258 = !DILocation(line: 1346, column: 5, scope: !1900)
!2259 = !DILocation(line: 1346, column: 17, scope: !1900)
!2260 = !DILocation(line: 1363, column: 3, scope: !1900)
!2261 = !DILocation(line: 1080, column: 15, scope: !1797)
!2262 = !DILocation(line: 1079, column: 15, scope: !1797)
!2263 = !DILocation(line: 1082, column: 46, scope: !1896)
!2264 = distinct !{!2264, !1898, !2265, !834, !835}
!2265 = !DILocation(line: 1363, column: 3, scope: !1897)
!2266 = !DILocation(line: 1041, column: 13, scope: !1797)
!2267 = !DILocation(line: 1364, column: 14, scope: !1797)
!2268 = !DILocation(line: 1368, column: 18, scope: !1797)
!2269 = !DILocation(line: 1370, column: 8, scope: !1797)
!2270 = !DILocation(line: 1371, column: 19, scope: !1797)
!2271 = !DILocation(line: 1371, column: 18, scope: !1797)
!2272 = !DILocation(line: 1372, column: 16, scope: !1797)
!2273 = !DILocation(line: 1372, column: 3, scope: !1797)
!2274 = !DILocation(line: 1374, column: 16, scope: !1820)
!2275 = !DILocation(line: 1375, column: 20, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !1820, file: !669, line: 1375, column: 9)
!2277 = !DILocation(line: 1375, column: 9, scope: !1820)
!2278 = !DILocation(line: 1377, column: 10, scope: !1819)
!2279 = !DILocation(line: 1377, column: 23, scope: !1819)
!2280 = !DILocation(line: 1377, column: 10, scope: !1820)
!2281 = !DILocation(line: 0, scope: !1818)
!2282 = !DILocation(line: 1380, column: 23, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !1818, file: !669, line: 1379, column: 44)
!2284 = !{!685, !688, i64 440}
!2285 = !DILocation(line: 1380, column: 28, scope: !2283)
!2286 = !DILocation(line: 1380, column: 40, scope: !2283)
!2287 = !{!685, !688, i64 448}
!2288 = !DILocation(line: 1380, column: 33, scope: !2283)
!2289 = !DILocation(line: 1380, column: 14, scope: !2283)
!2290 = !DILocation(line: 1381, column: 14, scope: !2283)
!2291 = !DILocation(line: 1382, column: 10, scope: !2283)
!2292 = !DILocation(line: 1379, column: 15, scope: !1818)
!2293 = !DILocation(line: 1379, column: 28, scope: !1818)
!2294 = !DILocation(line: 1379, column: 7, scope: !1818)
!2295 = distinct !{!2295, !2294, !2296, !834, !835}
!2296 = !DILocation(line: 1383, column: 7, scope: !1818)
!2297 = !DILocation(line: 1384, column: 21, scope: !1818)
!2298 = !DILocation(line: 1384, column: 26, scope: !1818)
!2299 = !DILocation(line: 1384, column: 38, scope: !1818)
!2300 = !DILocation(line: 1384, column: 31, scope: !1818)
!2301 = !DILocation(line: 1384, column: 12, scope: !1818)
!2302 = !DILocation(line: 1385, column: 19, scope: !1818)
!2303 = !DILocation(line: 1385, column: 36, scope: !1818)
!2304 = !DILocation(line: 1386, column: 31, scope: !1818)
!2305 = !DILocation(line: 1386, column: 60, scope: !1818)
!2306 = !DILocation(line: 1386, column: 19, scope: !1818)
!2307 = !DILocation(line: 1386, column: 25, scope: !1818)
!2308 = !DILocation(line: 1387, column: 5, scope: !1818)
!2309 = !DILocation(line: 1370, column: 7, scope: !1797)
!2310 = !DILocation(line: 1369, column: 4, scope: !1797)
!2311 = !DILocation(line: 1388, column: 38, scope: !1820)
!2312 = !DILocation(line: 1388, column: 16, scope: !1820)
!2313 = !DILocation(line: 1389, column: 16, scope: !1820)
!2314 = !DILocation(line: 1390, column: 20, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1820, file: !669, line: 1390, column: 9)
!2316 = !DILocation(line: 1390, column: 9, scope: !1820)
!2317 = !DILocation(line: 1392, column: 25, scope: !1820)
!2318 = !DILocation(line: 1392, column: 17, scope: !1820)
!2319 = !DILocation(line: 1392, column: 24, scope: !1820)
!2320 = !DILocation(line: 1393, column: 10, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !1820, file: !669, line: 1393, column: 10)
!2322 = !DILocation(line: 1393, column: 23, scope: !2321)
!2323 = !DILocation(line: 1393, column: 10, scope: !1820)
!2324 = !DILocation(line: 1394, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !669, line: 1393, column: 39)
!2326 = !DILocation(line: 1394, column: 24, scope: !2325)
!2327 = !DILocation(line: 1395, column: 26, scope: !2325)
!2328 = !DILocation(line: 1396, column: 5, scope: !2325)
!2329 = !DILocation(line: 1398, column: 12, scope: !2321)
!2330 = !DILocation(line: 1399, column: 5, scope: !1820)
!2331 = !DILocation(line: 1400, column: 6, scope: !1820)
!2332 = distinct !{!2332, !2273, !2333, !834, !835}
!2333 = !DILocation(line: 1401, column: 3, scope: !1797)
!2334 = !DILocation(line: 1402, column: 18, scope: !1797)
!2335 = !DILocation(line: 1403, column: 28, scope: !1797)
!2336 = !DILocation(line: 1404, column: 29, scope: !1797)
!2337 = !DILocation(line: 1405, column: 12, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1797, file: !669, line: 1405, column: 7)
!2339 = !DILocation(line: 1405, column: 7, scope: !1797)
!2340 = !DILocation(line: 1407, column: 23, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !669, line: 1406, column: 5)
!2342 = !DILocation(line: 1407, column: 22, scope: !2341)
!2343 = !DILocation(line: 1408, column: 7, scope: !2341)
!2344 = !DILocation(line: 1410, column: 10, scope: !1797)
!2345 = !DILocation(line: 1410, column: 3, scope: !1797)
!2346 = !DILocation(line: 1411, column: 1, scope: !1797)
!2347 = distinct !DISubprogram(name: "OptimizePlusImageLayers", scope: !669, file: !669, line: 1474, type: !670, scopeLine: 1476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2348)
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "image", arg: 1, scope: !2347, file: !669, line: 1474, type: !651)
!2350 = !DILocalVariable(name: "exception", arg: 2, scope: !2347, file: !669, line: 1475, type: !672)
!2351 = !DILocation(line: 0, scope: !2347)
!2352 = !DILocation(line: 1477, column: 10, scope: !2347)
!2353 = !DILocation(line: 1477, column: 3, scope: !2347)
!2354 = distinct !DISubprogram(name: "OptimizeImageTransparency", scope: !669, file: !669, line: 1511, type: !2355, scopeLine: 1513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !651, !672}
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2364}
!2358 = !DILocalVariable(name: "image", arg: 1, scope: !2354, file: !669, line: 1511, type: !651)
!2359 = !DILocalVariable(name: "exception", arg: 2, scope: !2354, file: !669, line: 1512, type: !672)
!2360 = !DILocalVariable(name: "dispose_image", scope: !2354, file: !669, line: 1515, type: !429)
!2361 = !DILocalVariable(name: "next", scope: !2354, file: !669, line: 1518, type: !429)
!2362 = !DILocalVariable(name: "current_image", scope: !2363, file: !669, line: 1544, type: !429)
!2363 = distinct !DILexicalBlock(scope: !2354, file: !669, line: 1542, column: 3)
!2364 = !DILocalVariable(name: "bounds", scope: !2365, file: !669, line: 1565, type: !501)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !669, line: 1563, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !669, line: 1562, column: 9)
!2367 = !DILocation(line: 0, scope: !2354)
!2368 = !DILocation(line: 1525, column: 14, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2354, file: !669, line: 1525, column: 7)
!2370 = !DILocation(line: 1525, column: 20, scope: !2369)
!2371 = !DILocation(line: 1525, column: 7, scope: !2354)
!2372 = !DILocation(line: 1526, column: 68, scope: !2369)
!2373 = !DILocation(line: 1526, column: 12, scope: !2369)
!2374 = !DILocation(line: 1526, column: 5, scope: !2369)
!2375 = !DILocation(line: 1529, column: 8, scope: !2354)
!2376 = !DILocation(line: 1530, column: 39, scope: !2354)
!2377 = !DILocation(line: 1530, column: 44, scope: !2354)
!2378 = !DILocation(line: 1530, column: 61, scope: !2354)
!2379 = !DILocation(line: 1530, column: 17, scope: !2354)
!2380 = !DILocation(line: 1532, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2354, file: !669, line: 1532, column: 7)
!2382 = !DILocation(line: 1532, column: 7, scope: !2354)
!2383 = !DILocation(line: 1534, column: 18, scope: !2354)
!2384 = !DILocation(line: 1534, column: 29, scope: !2354)
!2385 = !DILocation(line: 1535, column: 23, scope: !2354)
!2386 = !DILocation(line: 1537, column: 18, scope: !2354)
!2387 = !DILocation(line: 1536, column: 24, scope: !2354)
!2388 = !DILocation(line: 1537, column: 25, scope: !2354)
!2389 = !DILocation(line: 1538, column: 35, scope: !2354)
!2390 = !DILocation(line: 1538, column: 42, scope: !2354)
!2391 = !DILocation(line: 1539, column: 10, scope: !2354)
!2392 = !DILocation(line: 1541, column: 16, scope: !2354)
!2393 = !DILocation(line: 1541, column: 3, scope: !2354)
!2394 = !DILocation(line: 1549, column: 19, scope: !2363)
!2395 = !DILocation(line: 0, scope: !2363)
!2396 = !DILocation(line: 1550, column: 23, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2363, file: !669, line: 1550, column: 9)
!2398 = !DILocation(line: 1550, column: 9, scope: !2363)
!2399 = !DILocation(line: 1555, column: 47, scope: !2363)
!2400 = !DILocation(line: 1555, column: 53, scope: !2363)
!2401 = !DILocation(line: 1555, column: 41, scope: !2363)
!2402 = !DILocation(line: 1556, column: 58, scope: !2363)
!2403 = !DILocation(line: 1556, column: 71, scope: !2363)
!2404 = !DILocation(line: 1555, column: 12, scope: !2363)
!2405 = !DILocation(line: 1562, column: 15, scope: !2366)
!2406 = !DILocation(line: 1562, column: 23, scope: !2366)
!2407 = !DILocation(line: 1562, column: 9, scope: !2363)
!2408 = !DILocation(line: 1556, column: 53, scope: !2363)
!2409 = !DILocation(line: 0, scope: !2365)
!2410 = !DILocation(line: 1565, column: 24, scope: !2365)
!2411 = !DILocation(line: 1567, column: 28, scope: !2365)
!2412 = !DILocation(line: 1568, column: 29, scope: !2365)
!2413 = !DILocation(line: 1569, column: 13, scope: !2365)
!2414 = !DILocation(line: 1574, column: 32, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2365, file: !669, line: 1574, column: 13)
!2416 = !DILocation(line: 1574, column: 74, scope: !2415)
!2417 = !DILocation(line: 1574, column: 47, scope: !2415)
!2418 = !DILocation(line: 1574, column: 13, scope: !2365)
!2419 = !DILocation(line: 1576, column: 13, scope: !2365)
!2420 = !DILocation(line: 1581, column: 32, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2365, file: !669, line: 1581, column: 13)
!2422 = !DILocation(line: 1581, column: 75, scope: !2421)
!2423 = !DILocation(line: 1581, column: 48, scope: !2421)
!2424 = !DILocation(line: 1581, column: 13, scope: !2365)
!2425 = !DILocation(line: 0, scope: !792, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1583, column: 9, scope: !2365)
!2427 = !DILocation(line: 107, column: 14, scope: !808, inlinedAt: !2426)
!2428 = !DILocation(line: 107, column: 20, scope: !808, inlinedAt: !2426)
!2429 = !DILocation(line: 107, column: 7, scope: !792, inlinedAt: !2426)
!2430 = !DILocation(line: 108, column: 12, scope: !808, inlinedAt: !2426)
!2431 = !DILocation(line: 108, column: 5, scope: !808, inlinedAt: !2426)
!2432 = !DILocation(line: 109, column: 22, scope: !792, inlinedAt: !2426)
!2433 = !DILocation(line: 110, column: 15, scope: !801, inlinedAt: !2426)
!2434 = !DILocation(line: 110, column: 3, scope: !802, inlinedAt: !2426)
!2435 = !DILocation(line: 121, column: 5, scope: !817, inlinedAt: !2426)
!2436 = !DILocation(line: 118, column: 51, scope: !800, inlinedAt: !2426)
!2437 = !DILocation(line: 118, column: 7, scope: !800, inlinedAt: !2426)
!2438 = !DILocation(line: 0, scope: !800, inlinedAt: !2426)
!2439 = !DILocation(line: 119, column: 11, scope: !822, inlinedAt: !2426)
!2440 = !DILocation(line: 119, column: 9, scope: !800, inlinedAt: !2426)
!2441 = !DILocation(line: 123, column: 10, scope: !825, inlinedAt: !2426)
!2442 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !2426)
!2443 = !DILocation(line: 124, column: 8, scope: !825, inlinedAt: !2426)
!2444 = !DILocation(line: 121, column: 45, scope: !826, inlinedAt: !2426)
!2445 = !DILocation(line: 121, column: 17, scope: !826, inlinedAt: !2426)
!2446 = distinct !{!2446, !2435, !2447, !834, !835}
!2447 = !DILocation(line: 125, column: 5, scope: !817, inlinedAt: !2426)
!2448 = !DILocation(line: 126, column: 9, scope: !837, inlinedAt: !2426)
!2449 = !DILocation(line: 126, column: 46, scope: !837, inlinedAt: !2426)
!2450 = !DILocation(line: 0, scope: !801, inlinedAt: !2426)
!2451 = distinct !{!2451, !2434, !2452, !834, !835}
!2452 = !DILocation(line: 128, column: 3, scope: !802, inlinedAt: !2426)
!2453 = !DILocation(line: 1585, column: 15, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2363, file: !669, line: 1585, column: 9)
!2455 = !DILocation(line: 1585, column: 23, scope: !2454)
!2456 = !DILocation(line: 1585, column: 9, scope: !2363)
!2457 = !DILocation(line: 1587, column: 23, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !669, line: 1586, column: 7)
!2459 = !DILocation(line: 1589, column: 7, scope: !2458)
!2460 = !DILocation(line: 1591, column: 21, scope: !2454)
!2461 = !DILocation(line: 1596, column: 10, scope: !2363)
!2462 = !DILocation(line: 1597, column: 10, scope: !2363)
!2463 = !DILocation(line: 1599, column: 39, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !669, line: 1597, column: 35)
!2465 = distinct !DILexicalBlock(scope: !2363, file: !669, line: 1597, column: 10)
!2466 = !DILocation(line: 1599, column: 26, scope: !2464)
!2467 = !DILocation(line: 1599, column: 56, scope: !2464)
!2468 = !DILocation(line: 1599, column: 43, scope: !2464)
!2469 = !DILocation(line: 1598, column: 14, scope: !2464)
!2470 = !DILocation(line: 1604, column: 1, scope: !2354)
!2471 = distinct !DISubprogram(name: "RemoveDuplicateLayers", scope: !669, file: !669, line: 1637, type: !2472, scopeLine: 1639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !1157, !672}
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480}
!2475 = !DILocalVariable(name: "images", arg: 1, scope: !2471, file: !669, line: 1637, type: !1157)
!2476 = !DILocalVariable(name: "exception", arg: 2, scope: !2471, file: !669, line: 1638, type: !672)
!2477 = !DILocalVariable(name: "curr", scope: !2471, file: !669, line: 1641, type: !429)
!2478 = !DILocalVariable(name: "next", scope: !2471, file: !669, line: 1642, type: !429)
!2479 = !DILocalVariable(name: "bounds", scope: !2471, file: !669, line: 1645, type: !501)
!2480 = !DILocalVariable(name: "time", scope: !2481, file: !669, line: 1665, type: !440)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !669, line: 1661, column: 25)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !669, line: 1661, column: 10)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !669, line: 1656, column: 3)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !669, line: 1655, column: 3)
!2485 = distinct !DILexicalBlock(scope: !2471, file: !669, line: 1655, column: 3)
!2486 = !DILocation(line: 0, scope: !2471)
!2487 = !DILocation(line: 1649, column: 8, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2471, file: !669, line: 1649, column: 7)
!2489 = !DILocation(line: 1649, column: 18, scope: !2488)
!2490 = !DILocation(line: 1649, column: 24, scope: !2488)
!2491 = !DILocation(line: 1649, column: 7, scope: !2471)
!2492 = !DILocation(line: 1650, column: 72, scope: !2488)
!2493 = !DILocation(line: 1650, column: 12, scope: !2488)
!2494 = !DILocation(line: 1654, column: 28, scope: !2471)
!2495 = !DILocation(line: 1650, column: 5, scope: !2488)
!2496 = !DILocation(line: 1654, column: 8, scope: !2471)
!2497 = !DILocation(line: 1655, column: 16, scope: !2484)
!2498 = !DILocation(line: 1655, column: 42, scope: !2484)
!2499 = !DILocation(line: 1655, column: 3, scope: !2485)
!2500 = !DILocation(line: 1657, column: 16, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2483, file: !669, line: 1657, column: 10)
!2502 = !DILocation(line: 1657, column: 33, scope: !2501)
!2503 = !DILocation(line: 1657, column: 24, scope: !2501)
!2504 = !DILocation(line: 1657, column: 41, scope: !2501)
!2505 = !DILocation(line: 1657, column: 50, scope: !2501)
!2506 = !DILocation(line: 1657, column: 64, scope: !2501)
!2507 = !DILocation(line: 1657, column: 55, scope: !2501)
!2508 = !DILocation(line: 1658, column: 10, scope: !2501)
!2509 = !DILocation(line: 1658, column: 24, scope: !2501)
!2510 = !DILocation(line: 1658, column: 40, scope: !2501)
!2511 = !DILocation(line: 1658, column: 26, scope: !2501)
!2512 = !DILocation(line: 1658, column: 42, scope: !2501)
!2513 = !DILocation(line: 1658, column: 56, scope: !2501)
!2514 = !DILocation(line: 1658, column: 72, scope: !2501)
!2515 = !DILocation(line: 1658, column: 58, scope: !2501)
!2516 = !DILocation(line: 1657, column: 10, scope: !2483)
!2517 = !DILocation(line: 1660, column: 12, scope: !2483)
!2518 = !DILocation(line: 1661, column: 19, scope: !2482)
!2519 = !DILocation(line: 1661, column: 10, scope: !2483)
!2520 = !DILocation(line: 1666, column: 20, scope: !2481)
!2521 = !DILocation(line: 1666, column: 25, scope: !2481)
!2522 = !DILocation(line: 1666, column: 37, scope: !2481)
!2523 = !DILocation(line: 1666, column: 30, scope: !2481)
!2524 = !DILocation(line: 0, scope: !2481)
!2525 = !DILocation(line: 1667, column: 21, scope: !2481)
!2526 = !DILocation(line: 1667, column: 26, scope: !2481)
!2527 = !DILocation(line: 1667, column: 38, scope: !2481)
!2528 = !DILocation(line: 1667, column: 31, scope: !2481)
!2529 = !DILocation(line: 1667, column: 12, scope: !2481)
!2530 = !DILocation(line: 1668, column: 30, scope: !2481)
!2531 = !DILocation(line: 1669, column: 32, scope: !2481)
!2532 = !DILocation(line: 1669, column: 25, scope: !2481)
!2533 = !DILocation(line: 1669, column: 48, scope: !2481)
!2534 = !DILocation(line: 1669, column: 19, scope: !2481)
!2535 = !DILocation(line: 1670, column: 32, scope: !2481)
!2536 = !{!685, !688, i64 456}
!2537 = !DILocation(line: 1670, column: 13, scope: !2481)
!2538 = !DILocation(line: 1670, column: 24, scope: !2481)
!2539 = !DILocation(line: 1671, column: 15, scope: !2481)
!2540 = !DILocation(line: 1672, column: 14, scope: !2481)
!2541 = !DILocation(line: 1673, column: 5, scope: !2481)
!2542 = distinct !{!2542, !2499, !2543, !834, !835}
!2543 = !DILocation(line: 1674, column: 3, scope: !2485)
!2544 = !DILocation(line: 1675, column: 33, scope: !2471)
!2545 = !DILocation(line: 1675, column: 13, scope: !2471)
!2546 = !DILocation(line: 1675, column: 11, scope: !2471)
!2547 = !DILocation(line: 1676, column: 1, scope: !2471)
!2548 = !DISubprogram(name: "DeleteImageFromList", scope: !927, file: !927, line: 52, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !1157}
!2551 = distinct !DISubprogram(name: "RemoveZeroDelayLayers", scope: !669, file: !669, line: 1718, type: !2472, scopeLine: 1720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DILocalVariable(name: "images", arg: 1, scope: !2551, file: !669, line: 1718, type: !1157)
!2554 = !DILocalVariable(name: "exception", arg: 2, scope: !2551, file: !669, line: 1719, type: !672)
!2555 = !DILocalVariable(name: "i", scope: !2551, file: !669, line: 1722, type: !429)
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 1721, column: 3, scope: !2551)
!2558 = !DILocation(line: 1726, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !669, line: 1726, column: 7)
!2560 = !DILocation(line: 1726, column: 18, scope: !2559)
!2561 = !DILocation(line: 1726, column: 24, scope: !2559)
!2562 = !DILocation(line: 1726, column: 7, scope: !2551)
!2563 = !DILocation(line: 1727, column: 72, scope: !2559)
!2564 = !DILocation(line: 1727, column: 12, scope: !2559)
!2565 = !DILocation(line: 1731, column: 25, scope: !2551)
!2566 = !DILocation(line: 1727, column: 5, scope: !2559)
!2567 = !DILocation(line: 1731, column: 5, scope: !2551)
!2568 = !DILocation(line: 1732, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !669, line: 1732, column: 3)
!2570 = distinct !DILexicalBlock(scope: !2551, file: !669, line: 1732, column: 3)
!2571 = !DILocation(line: 1732, column: 3, scope: !2570)
!2572 = !DILocation(line: 1733, column: 13, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !669, line: 1733, column: 10)
!2574 = !DILocation(line: 1733, column: 19, scope: !2573)
!2575 = !DILocation(line: 1733, column: 10, scope: !2569)
!2576 = !DILocation(line: 1732, column: 34, scope: !2569)
!2577 = distinct !{!2577, !2571, !2578, !834, !835}
!2578 = !DILocation(line: 1733, column: 27, scope: !2570)
!2579 = !DILocation(line: 1736, column: 55, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !669, line: 1734, column: 30)
!2581 = distinct !DILexicalBlock(scope: !2551, file: !669, line: 1734, column: 8)
!2582 = !DILocation(line: 1736, column: 35, scope: !2580)
!2583 = !DILocation(line: 1736, column: 65, scope: !2580)
!2584 = !DILocation(line: 1735, column: 12, scope: !2580)
!2585 = !DILocation(line: 1737, column: 5, scope: !2580)
!2586 = !DILocation(line: 1739, column: 25, scope: !2551)
!2587 = !DILocation(line: 1739, column: 5, scope: !2551)
!2588 = !DILocation(line: 1739, column: 4, scope: !2551)
!2589 = !DILocation(line: 1740, column: 13, scope: !2551)
!2590 = !DILocation(line: 1740, column: 3, scope: !2551)
!2591 = !DILocation(line: 1742, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !669, line: 1742, column: 10)
!2593 = distinct !DILexicalBlock(scope: !2551, file: !669, line: 1741, column: 3)
!2594 = !DILocation(line: 1742, column: 19, scope: !2592)
!2595 = !DILocation(line: 1742, column: 10, scope: !2593)
!2596 = !DILocation(line: 1743, column: 14, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !669, line: 1742, column: 27)
!2598 = !DILocation(line: 1744, column: 15, scope: !2597)
!2599 = !DILocation(line: 1744, column: 14, scope: !2597)
!2600 = !DILocation(line: 1745, column: 5, scope: !2597)
!2601 = !DILocation(line: 1747, column: 9, scope: !2592)
!2602 = !DILocation(line: 1747, column: 8, scope: !2592)
!2603 = !DILocation(line: 1740, column: 11, scope: !2551)
!2604 = distinct !{!2604, !2590, !2605, !834, !835}
!2605 = !DILocation(line: 1748, column: 3, scope: !2551)
!2606 = !DILocation(line: 1749, column: 31, scope: !2551)
!2607 = !DILocation(line: 1749, column: 11, scope: !2551)
!2608 = !DILocation(line: 1749, column: 10, scope: !2551)
!2609 = !DILocation(line: 1750, column: 1, scope: !2551)
!2610 = distinct !DISubprogram(name: "CompositeLayers", scope: !669, file: !669, line: 1817, type: !2611, scopeLine: 1820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !429, !940, !429, !941, !941, !672}
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2614 = !DILocalVariable(name: "destination", arg: 1, scope: !2610, file: !669, line: 1817, type: !429)
!2615 = !DILocalVariable(name: "compose", arg: 2, scope: !2610, file: !669, line: 1818, type: !940)
!2616 = !DILocalVariable(name: "source", arg: 3, scope: !2610, file: !669, line: 1818, type: !429)
!2617 = !DILocalVariable(name: "x_offset", arg: 4, scope: !2610, file: !669, line: 1818, type: !941)
!2618 = !DILocalVariable(name: "y_offset", arg: 5, scope: !2610, file: !669, line: 1819, type: !941)
!2619 = !DILocalVariable(name: "exception", arg: 6, scope: !2610, file: !669, line: 1819, type: !672)
!2620 = !DILocalVariable(name: "dest", scope: !2621, file: !669, line: 1850, type: !429)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !669, line: 1849, column: 3)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !669, line: 1848, column: 13)
!2623 = distinct !DILexicalBlock(scope: !2610, file: !669, line: 1834, column: 8)
!2624 = !DILocation(line: 0, scope: !2610)
!2625 = !DILocation(line: 1827, column: 15, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2610, file: !669, line: 1827, column: 7)
!2627 = !DILocation(line: 1827, column: 21, scope: !2626)
!2628 = !DILocation(line: 1827, column: 36, scope: !2626)
!2629 = !DILocation(line: 1827, column: 52, scope: !2626)
!2630 = !DILocation(line: 1827, column: 58, scope: !2626)
!2631 = !DILocation(line: 1827, column: 7, scope: !2610)
!2632 = !DILocation(line: 1829, column: 18, scope: !2626)
!2633 = !DILocation(line: 1829, column: 41, scope: !2626)
!2634 = !DILocation(line: 1828, column: 12, scope: !2626)
!2635 = !DILocation(line: 1828, column: 5, scope: !2626)
!2636 = !DILocation(line: 1834, column: 16, scope: !2623)
!2637 = !DILocation(line: 1834, column: 21, scope: !2623)
!2638 = !DILocation(line: 1834, column: 8, scope: !2610)
!2639 = !DILocation(line: 1835, column: 25, scope: !2623)
!2640 = !DILocation(line: 1835, column: 5, scope: !2623)
!2641 = !DILocalVariable(name: "destination", arg: 1, scope: !2642, file: !669, line: 1808, type: !429)
!2642 = distinct !DISubprogram(name: "CompositeCanvas", scope: !669, file: !669, line: 1808, type: !2643, scopeLine: 1811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !429, !940, !429, !493, !493}
!2645 = !{!2641, !2646, !2647, !2648, !2649}
!2646 = !DILocalVariable(name: "compose", arg: 2, scope: !2642, file: !669, line: 1809, type: !940)
!2647 = !DILocalVariable(name: "source", arg: 3, scope: !2642, file: !669, line: 1809, type: !429)
!2648 = !DILocalVariable(name: "x_offset", arg: 4, scope: !2642, file: !669, line: 1809, type: !493)
!2649 = !DILocalVariable(name: "y_offset", arg: 5, scope: !2642, file: !669, line: 1810, type: !493)
!2650 = !DILocation(line: 0, scope: !2642, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1837, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2623, file: !669, line: 1836, column: 5)
!2653 = !DILocation(line: 1812, column: 26, scope: !2642, inlinedAt: !2651)
!2654 = !DILocation(line: 1812, column: 46, scope: !2642, inlinedAt: !2651)
!2655 = !DILocation(line: 1812, column: 27, scope: !2642, inlinedAt: !2651)
!2656 = !DILocation(line: 1812, column: 11, scope: !2642, inlinedAt: !2651)
!2657 = !DILocation(line: 1813, column: 26, scope: !2642, inlinedAt: !2651)
!2658 = !DILocation(line: 1813, column: 46, scope: !2642, inlinedAt: !2651)
!2659 = !DILocation(line: 1813, column: 27, scope: !2642, inlinedAt: !2651)
!2660 = !DILocation(line: 1813, column: 11, scope: !2642, inlinedAt: !2651)
!2661 = !DILocation(line: 1814, column: 10, scope: !2642, inlinedAt: !2651)
!2662 = !DILocation(line: 1838, column: 19, scope: !2652)
!2663 = distinct !{!2663, !2640, !2664, !834, !835}
!2664 = !DILocation(line: 1839, column: 5, scope: !2623)
!2665 = !DILocation(line: 1848, column: 26, scope: !2622)
!2666 = !DILocation(line: 1848, column: 31, scope: !2622)
!2667 = !DILocation(line: 1848, column: 13, scope: !2623)
!2668 = !DILocation(line: 1850, column: 19, scope: !2621)
!2669 = !DILocation(line: 0, scope: !2621)
!2670 = !DILocation(line: 0, scope: !2642, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 1852, column: 5, scope: !2621)
!2672 = !DILocation(line: 1812, column: 26, scope: !2642, inlinedAt: !2671)
!2673 = !DILocation(line: 1812, column: 46, scope: !2642, inlinedAt: !2671)
!2674 = !DILocation(line: 1812, column: 27, scope: !2642, inlinedAt: !2671)
!2675 = !DILocation(line: 1812, column: 11, scope: !2642, inlinedAt: !2671)
!2676 = !DILocation(line: 1813, column: 26, scope: !2642, inlinedAt: !2671)
!2677 = !DILocation(line: 1813, column: 46, scope: !2642, inlinedAt: !2671)
!2678 = !DILocation(line: 1813, column: 27, scope: !2642, inlinedAt: !2671)
!2679 = !DILocation(line: 1813, column: 11, scope: !2642, inlinedAt: !2671)
!2680 = !DILocation(line: 1814, column: 10, scope: !2642, inlinedAt: !2671)
!2681 = !DILocation(line: 1854, column: 18, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2621, file: !669, line: 1854, column: 10)
!2683 = !DILocation(line: 1854, column: 23, scope: !2682)
!2684 = !DILocation(line: 1854, column: 10, scope: !2621)
!2685 = !DILocation(line: 1856, column: 38, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !669, line: 1855, column: 7)
!2687 = !DILocation(line: 1856, column: 22, scope: !2686)
!2688 = !DILocation(line: 1856, column: 28, scope: !2686)
!2689 = !DILocation(line: 1857, column: 43, scope: !2686)
!2690 = !DILocation(line: 1857, column: 22, scope: !2686)
!2691 = !DILocation(line: 1857, column: 33, scope: !2686)
!2692 = !DILocation(line: 1858, column: 7, scope: !2686)
!2693 = !DILocation(line: 1859, column: 12, scope: !2621)
!2694 = !DILocation(line: 1861, column: 20, scope: !2621)
!2695 = !DILocation(line: 1861, column: 5, scope: !2621)
!2696 = !DILocation(line: 1864, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2621, file: !669, line: 1862, column: 5)
!2698 = !DILocation(line: 1863, column: 7, scope: !2697)
!2699 = !DILocation(line: 1865, column: 38, scope: !2697)
!2700 = !DILocation(line: 1865, column: 19, scope: !2697)
!2701 = !DILocation(line: 1865, column: 18, scope: !2697)
!2702 = !DILocation(line: 0, scope: !2642, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 1867, column: 7, scope: !2697)
!2704 = !DILocation(line: 1812, column: 26, scope: !2642, inlinedAt: !2703)
!2705 = !DILocation(line: 1812, column: 46, scope: !2642, inlinedAt: !2703)
!2706 = !DILocation(line: 1812, column: 27, scope: !2642, inlinedAt: !2703)
!2707 = !DILocation(line: 1812, column: 11, scope: !2642, inlinedAt: !2703)
!2708 = !DILocation(line: 1813, column: 26, scope: !2642, inlinedAt: !2703)
!2709 = !DILocation(line: 1813, column: 46, scope: !2642, inlinedAt: !2703)
!2710 = !DILocation(line: 1813, column: 27, scope: !2642, inlinedAt: !2703)
!2711 = !DILocation(line: 1813, column: 11, scope: !2642, inlinedAt: !2703)
!2712 = !DILocation(line: 1814, column: 10, scope: !2642, inlinedAt: !2703)
!2713 = !DILocation(line: 1868, column: 36, scope: !2697)
!2714 = !DILocation(line: 1868, column: 7, scope: !2697)
!2715 = !DILocation(line: 1868, column: 20, scope: !2697)
!2716 = !DILocation(line: 1868, column: 26, scope: !2697)
!2717 = !DILocation(line: 1869, column: 41, scope: !2697)
!2718 = !DILocation(line: 1869, column: 20, scope: !2697)
!2719 = !DILocation(line: 1869, column: 31, scope: !2697)
!2720 = !DILocation(line: 1870, column: 14, scope: !2697)
!2721 = distinct !{!2721, !2695, !2722, !834, !835}
!2722 = !DILocation(line: 1871, column: 5, scope: !2621)
!2723 = !DILocation(line: 1872, column: 10, scope: !2621)
!2724 = !DILocation(line: 1873, column: 3, scope: !2621)
!2725 = !DILocation(line: 0, scope: !2642, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1882, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2622, file: !669, line: 1881, column: 5)
!2728 = !DILocation(line: 1812, column: 26, scope: !2642, inlinedAt: !2726)
!2729 = !DILocation(line: 1812, column: 46, scope: !2642, inlinedAt: !2726)
!2730 = !DILocation(line: 1812, column: 27, scope: !2642, inlinedAt: !2726)
!2731 = !DILocation(line: 1812, column: 11, scope: !2642, inlinedAt: !2726)
!2732 = !DILocation(line: 1813, column: 26, scope: !2642, inlinedAt: !2726)
!2733 = !DILocation(line: 1813, column: 46, scope: !2642, inlinedAt: !2726)
!2734 = !DILocation(line: 1813, column: 27, scope: !2642, inlinedAt: !2726)
!2735 = !DILocation(line: 1813, column: 11, scope: !2642, inlinedAt: !2726)
!2736 = !DILocation(line: 1814, column: 10, scope: !2642, inlinedAt: !2726)
!2737 = !DILocation(line: 1883, column: 14, scope: !2727)
!2738 = !DILocation(line: 1884, column: 19, scope: !2727)
!2739 = !DILocation(line: 1880, column: 20, scope: !2622)
!2740 = !DILocation(line: 1880, column: 38, scope: !2622)
!2741 = distinct !{!2741, !2742, !2743, !834, !835}
!2742 = !DILocation(line: 1880, column: 5, scope: !2622)
!2743 = !DILocation(line: 1885, column: 5, scope: !2622)
!2744 = !DILocation(line: 0, scope: !2652)
!2745 = !DILocation(line: 1886, column: 1, scope: !2610)
!2746 = !DISubprogram(name: "GetLastImageInList", scope: !927, file: !927, line: 32, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2747 = distinct !DISubprogram(name: "MergeImageLayers", scope: !669, file: !669, line: 1941, type: !2748, scopeLine: 1943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!429, !429, !1161, !672}
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2751 = !DILocalVariable(name: "image", arg: 1, scope: !2747, file: !669, line: 1941, type: !429)
!2752 = !DILocalVariable(name: "method", arg: 2, scope: !2747, file: !669, line: 1942, type: !1161)
!2753 = !DILocalVariable(name: "exception", arg: 3, scope: !2747, file: !669, line: 1942, type: !672)
!2754 = !DILocalVariable(name: "canvas", scope: !2747, file: !669, line: 1947, type: !429)
!2755 = !DILocalVariable(name: "proceed", scope: !2747, file: !669, line: 1950, type: !445)
!2756 = !DILocalVariable(name: "page", scope: !2747, file: !669, line: 1953, type: !501)
!2757 = !DILocalVariable(name: "next", scope: !2747, file: !669, line: 1956, type: !651)
!2758 = !DILocalVariable(name: "number_images", scope: !2747, file: !669, line: 1959, type: !440)
!2759 = !DILocalVariable(name: "height", scope: !2747, file: !669, line: 1960, type: !440)
!2760 = !DILocalVariable(name: "width", scope: !2747, file: !669, line: 1961, type: !440)
!2761 = !DILocalVariable(name: "scene", scope: !2747, file: !669, line: 1964, type: !493)
!2762 = !DILocation(line: 0, scope: !2747)
!2763 = !DILocation(line: 1968, column: 14, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 1968, column: 7)
!2765 = !DILocation(line: 1968, column: 20, scope: !2764)
!2766 = !DILocation(line: 1968, column: 7, scope: !2747)
!2767 = !DILocation(line: 1969, column: 68, scope: !2764)
!2768 = !DILocation(line: 1969, column: 12, scope: !2764)
!2769 = !DILocation(line: 1969, column: 5, scope: !2764)
!2770 = !DILocation(line: 1975, column: 15, scope: !2747)
!2771 = !DILocation(line: 1976, column: 16, scope: !2747)
!2772 = !DILocation(line: 1977, column: 17, scope: !2747)
!2773 = !DILocation(line: 1978, column: 3, scope: !2747)
!2774 = !DILocation(line: 1984, column: 12, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !669, line: 1983, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 1979, column: 3)
!2777 = !DILocation(line: 1985, column: 20, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !669, line: 1985, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !669, line: 1985, column: 7)
!2780 = !DILocation(line: 1985, column: 7, scope: !2779)
!2781 = !DILocation(line: 1987, column: 33, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !669, line: 1987, column: 13)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !669, line: 1986, column: 7)
!2784 = !DILocation(line: 1987, column: 20, scope: !2782)
!2785 = !DILocation(line: 1987, column: 13, scope: !2783)
!2786 = !DILocation(line: 1989, column: 26, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !669, line: 1988, column: 11)
!2788 = !DILocation(line: 1989, column: 18, scope: !2787)
!2789 = !DILocation(line: 1991, column: 11, scope: !2787)
!2790 = !DILocation(line: 1992, column: 33, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2783, file: !669, line: 1992, column: 13)
!2792 = !DILocation(line: 1992, column: 20, scope: !2791)
!2793 = !DILocation(line: 1992, column: 13, scope: !2783)
!2794 = !DILocation(line: 1994, column: 27, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !669, line: 1993, column: 11)
!2796 = !DILocation(line: 1994, column: 19, scope: !2795)
!2797 = !DILocation(line: 1996, column: 11, scope: !2795)
!2798 = !DILocation(line: 1997, column: 61, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2783, file: !669, line: 1997, column: 13)
!2800 = !DILocation(line: 1997, column: 44, scope: !2799)
!2801 = !DILocation(line: 1997, column: 68, scope: !2799)
!2802 = !DILocation(line: 1997, column: 13, scope: !2783)
!2803 = !DILocation(line: 1999, column: 62, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2783, file: !669, line: 1999, column: 13)
!2805 = !DILocation(line: 1999, column: 45, scope: !2804)
!2806 = !DILocation(line: 1999, column: 66, scope: !2804)
!2807 = !DILocation(line: 1999, column: 13, scope: !2783)
!2808 = !DILocation(line: 1985, column: 45, scope: !2778)
!2809 = distinct !{!2809, !2780, !2810, !834, !835}
!2810 = !DILocation(line: 2001, column: 7, scope: !2779)
!2811 = !DILocation(line: 2006, column: 22, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !669, line: 2006, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2776, file: !669, line: 2005, column: 5)
!2814 = !DILocation(line: 2006, column: 11, scope: !2813)
!2815 = !DILocation(line: 2008, column: 23, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !669, line: 2008, column: 11)
!2817 = !DILocation(line: 2008, column: 11, scope: !2813)
!2818 = !DILocation(line: 2016, column: 22, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !669, line: 2016, column: 11)
!2820 = distinct !DILexicalBlock(scope: !2776, file: !669, line: 2015, column: 5)
!2821 = !DILocation(line: 2016, column: 11, scope: !2820)
!2822 = !DILocation(line: 2018, column: 23, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !669, line: 2018, column: 11)
!2824 = !DILocation(line: 2018, column: 11, scope: !2820)
!2825 = !DILocation(line: 2024, column: 31, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !669, line: 2023, column: 11)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !669, line: 2022, column: 13)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !669, line: 2021, column: 7)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !669, line: 2020, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2820, file: !669, line: 2020, column: 7)
!2831 = !DILocation(line: 2025, column: 31, scope: !2826)
!2832 = !DILocation(line: 2026, column: 47, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2826, file: !669, line: 2026, column: 17)
!2834 = !DILocation(line: 2026, column: 48, scope: !2833)
!2835 = !DILocation(line: 2026, column: 17, scope: !2826)
!2836 = !DILocation(line: 2028, column: 48, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2826, file: !669, line: 2028, column: 17)
!2838 = !DILocation(line: 2028, column: 49, scope: !2837)
!2839 = !DILocation(line: 2028, column: 17, scope: !2826)
!2840 = !DILocation(line: 2020, column: 53, scope: !2829)
!2841 = !DILocation(line: 2020, column: 29, scope: !2829)
!2842 = !DILocation(line: 2020, column: 7, scope: !2830)
!2843 = distinct !{!2843, !2842, !2844, !834, !835}
!2844 = !DILocation(line: 2031, column: 7, scope: !2830)
!2845 = !DILocation(line: 2026, column: 65, scope: !2833)
!2846 = !DILocation(line: 2028, column: 66, scope: !2837)
!2847 = !DILocation(line: 2042, column: 18, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 2042, column: 7)
!2849 = !DILocation(line: 2042, column: 7, scope: !2747)
!2850 = !DILocation(line: 2043, column: 16, scope: !2848)
!2851 = !DILocation(line: 2044, column: 19, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 2044, column: 7)
!2853 = !DILocation(line: 2044, column: 7, scope: !2747)
!2854 = !DILocation(line: 2045, column: 17, scope: !2852)
!2855 = !DILocation(line: 2049, column: 14, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 2049, column: 7)
!2857 = !DILocation(line: 2049, column: 7, scope: !2747)
!2858 = !DILocation(line: 2051, column: 21, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !669, line: 2050, column: 5)
!2860 = !DILocation(line: 2052, column: 27, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !669, line: 2052, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !669, line: 2052, column: 7)
!2863 = !DILocation(line: 2052, column: 7, scope: !2862)
!2864 = !DILocation(line: 2054, column: 16, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !669, line: 2053, column: 7)
!2866 = !DILocation(line: 2054, column: 21, scope: !2865)
!2867 = !DILocation(line: 2054, column: 22, scope: !2865)
!2868 = !DILocation(line: 2055, column: 21, scope: !2865)
!2869 = !DILocation(line: 2055, column: 22, scope: !2865)
!2870 = !DILocation(line: 2056, column: 26, scope: !2865)
!2871 = !DILocation(line: 2057, column: 21, scope: !2865)
!2872 = !DILocation(line: 2057, column: 27, scope: !2865)
!2873 = !DILocalVariable(name: "image", arg: 1, scope: !2874, file: !2875, line: 27, type: !651)
!2874 = distinct !DISubprogram(name: "SetImageProgress", scope: !2875, file: !2875, line: 27, type: !2876, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2878)
!2875 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!445, !651, !562, !564, !567}
!2878 = !{!2873, !2879, !2880, !2881, !2882}
!2879 = !DILocalVariable(name: "tag", arg: 2, scope: !2874, file: !2875, line: 28, type: !562)
!2880 = !DILocalVariable(name: "offset", arg: 3, scope: !2874, file: !2875, line: 28, type: !564)
!2881 = !DILocalVariable(name: "extent", arg: 4, scope: !2874, file: !2875, line: 28, type: !567)
!2882 = !DILocalVariable(name: "message", scope: !2874, file: !2875, line: 31, type: !582)
!2883 = !DILocation(line: 0, scope: !2874, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 2058, column: 17, scope: !2865)
!2885 = !DILocation(line: 30, column: 3, scope: !2874, inlinedAt: !2884)
!2886 = !DILocation(line: 31, column: 5, scope: !2874, inlinedAt: !2884)
!2887 = !DILocation(line: 33, column: 14, scope: !2888, inlinedAt: !2884)
!2888 = distinct !DILexicalBlock(scope: !2874, file: !2875, line: 33, column: 7)
!2889 = !{!685, !689, i64 568}
!2890 = !DILocation(line: 33, column: 31, scope: !2888, inlinedAt: !2884)
!2891 = !DILocation(line: 33, column: 7, scope: !2874, inlinedAt: !2884)
!2892 = !DILocation(line: 37, column: 1, scope: !2874, inlinedAt: !2884)
!2893 = !DILocation(line: 2060, column: 13, scope: !2865)
!2894 = !DILocation(line: 35, column: 70, scope: !2874, inlinedAt: !2884)
!2895 = !DILocation(line: 35, column: 10, scope: !2874, inlinedAt: !2884)
!2896 = !DILocation(line: 36, column: 17, scope: !2874, inlinedAt: !2884)
!2897 = !DILocation(line: 36, column: 63, scope: !2874, inlinedAt: !2884)
!2898 = !{!685, !689, i64 576}
!2899 = !DILocation(line: 36, column: 10, scope: !2874, inlinedAt: !2884)
!2900 = !DILocation(line: 2060, column: 21, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2865, file: !669, line: 2060, column: 13)
!2902 = !DILocation(line: 2062, column: 15, scope: !2865)
!2903 = !DILocation(line: 2063, column: 19, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2865, file: !669, line: 2063, column: 13)
!2905 = !DILocation(line: 2063, column: 13, scope: !2865)
!2906 = distinct !{!2906, !2863, !2907, !834, !835}
!2907 = !DILocation(line: 2065, column: 7, scope: !2862)
!2908 = !DILocation(line: 2071, column: 10, scope: !2747)
!2909 = !DILocation(line: 2072, column: 14, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 2072, column: 7)
!2911 = !DILocation(line: 2072, column: 7, scope: !2747)
!2912 = !DILocation(line: 2074, column: 10, scope: !2747)
!2913 = !DILocation(line: 2075, column: 11, scope: !2747)
!2914 = !DILocation(line: 2075, column: 16, scope: !2747)
!2915 = !DILocation(line: 2076, column: 11, scope: !2747)
!2916 = !DILocation(line: 2076, column: 18, scope: !2747)
!2917 = !DILocation(line: 2080, column: 17, scope: !2747)
!2918 = !DILocation(line: 2081, column: 23, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !669, line: 2081, column: 3)
!2920 = distinct !DILexicalBlock(scope: !2747, file: !669, line: 2081, column: 3)
!2921 = !DILocation(line: 2081, column: 3, scope: !2920)
!2922 = !DILocation(line: 2083, column: 41, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !669, line: 2082, column: 3)
!2924 = !{!685, !686, i64 416}
!2925 = !DILocation(line: 2083, column: 67, scope: !2923)
!2926 = !DILocation(line: 2084, column: 20, scope: !2923)
!2927 = !DILocation(line: 2083, column: 68, scope: !2923)
!2928 = !DILocation(line: 2084, column: 34, scope: !2923)
!2929 = !DILocation(line: 2084, column: 49, scope: !2923)
!2930 = !DILocation(line: 2084, column: 35, scope: !2923)
!2931 = !DILocation(line: 2083, column: 12, scope: !2923)
!2932 = !DILocation(line: 0, scope: !2874, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 2085, column: 13, scope: !2923)
!2934 = !DILocation(line: 30, column: 3, scope: !2874, inlinedAt: !2933)
!2935 = !DILocation(line: 31, column: 5, scope: !2874, inlinedAt: !2933)
!2936 = !DILocation(line: 33, column: 14, scope: !2888, inlinedAt: !2933)
!2937 = !DILocation(line: 33, column: 31, scope: !2888, inlinedAt: !2933)
!2938 = !DILocation(line: 33, column: 7, scope: !2874, inlinedAt: !2933)
!2939 = !DILocation(line: 37, column: 1, scope: !2874, inlinedAt: !2933)
!2940 = !DILocation(line: 2087, column: 9, scope: !2923)
!2941 = !DILocation(line: 35, column: 70, scope: !2874, inlinedAt: !2933)
!2942 = !DILocation(line: 35, column: 10, scope: !2874, inlinedAt: !2933)
!2943 = !DILocation(line: 36, column: 17, scope: !2874, inlinedAt: !2933)
!2944 = !DILocation(line: 36, column: 63, scope: !2874, inlinedAt: !2933)
!2945 = !DILocation(line: 36, column: 10, scope: !2874, inlinedAt: !2933)
!2946 = !DILocation(line: 2087, column: 17, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2923, file: !669, line: 2087, column: 9)
!2948 = !DILocation(line: 2089, column: 11, scope: !2923)
!2949 = !DILocation(line: 2090, column: 15, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2923, file: !669, line: 2090, column: 9)
!2951 = !DILocation(line: 2090, column: 9, scope: !2923)
!2952 = distinct !{!2952, !2921, !2953, !834, !835}
!2953 = !DILocation(line: 2092, column: 3, scope: !2920)
!2954 = !DILocation(line: 2094, column: 1, scope: !2747)
!2955 = !DISubprogram(name: "SetImageAlphaChannel", scope: !2956, file: !2956, line: 35, type: !2957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2956 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!445, !429, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !412)
!2961 = !DISubprogram(name: "GetAuthenticPixels", scope: !2962, file: !2962, line: 72, type: !2963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2962 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!452, !429, !941, !941, !924, !924, !672}
!2965 = !DISubprogram(name: "SyncAuthenticPixels", scope: !2962, file: !2962, line: 66, type: !2966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!445, !429, !672}
!2968 = !DISubprogram(name: "GetVirtualPixels", scope: !2962, file: !2962, line: 44, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!653, !651, !941, !941, !924, !924, !672}
!2971 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !2972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !651, !1368}
!2974 = !DISubprogram(name: "GetVirtualIndexQueue", scope: !2962, file: !2962, line: 41, type: !2975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!657, !651}
!2977 = !DISubprogram(name: "IsMagickColorSimilar", scope: !535, file: !535, line: 82, type: !2978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!445, !1350, !1350}
!2980 = !DISubprogram(name: "AcquireExceptionInfo", scope: !253, file: !253, line: 146, type: !2981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!672}
!2983 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !2984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!672, !672}
!2986 = !DISubprogram(name: "FormatLocaleString", scope: !2987, file: !2987, line: 71, type: !2988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !925)
!2987 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!493, !2990, !924, !2991, null}
!2990 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!2991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !562)
