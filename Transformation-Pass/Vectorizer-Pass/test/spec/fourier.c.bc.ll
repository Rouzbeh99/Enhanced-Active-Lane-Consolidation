; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/fourier.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/fourier.c"
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

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/fourier.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ImageSequenceRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"complex:snr\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Complex/Image\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"`%s' (FFTW)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ComplexImages(ptr noundef %images, i32 noundef %op, ptr noundef %exception) local_unnamed_addr #0 !dbg !637 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %complex_images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 %op, metadata !648, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %exception, metadata !649, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %complex_images) #6, !dbg !695
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !696
  %0 = load i32, ptr %debug, align 8, !dbg !696, !tbaa !698
  %cmp.not = icmp eq i32 %0, 0, !dbg !717
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !718

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !719
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !720
  br label %if.end, !dbg !721

if.end:                                           ; preds = %if.then, %entry
  %next = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 69, !dbg !722
  %1 = load ptr, ptr %next, align 8, !dbg !722, !tbaa !724
  %cmp1 = icmp eq ptr %1, null, !dbg !725
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !726

if.then2:                                         ; preds = %if.end
  %filename3 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !727
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 178, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename3) #6, !dbg !729
  br label %cleanup803, !dbg !730

if.end6:                                          ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 7, !dbg !731
  %2 = load i64, ptr %columns, align 8, !dbg !731, !tbaa !732
  %rows = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 8, !dbg !733
  %3 = load i64, ptr %rows, align 8, !dbg !733, !tbaa !734
  %call7 = tail call ptr @CloneImage(ptr noundef nonnull %images, i64 noundef %2, i64 noundef %3, i32 noundef 1, ptr noundef %exception) #6, !dbg !735
  call void @llvm.dbg.value(metadata ptr %call7, metadata !669, metadata !DIExpression()), !dbg !694
  %cmp8 = icmp eq ptr %call7, null, !dbg !736
  br i1 %cmp8, label %cleanup803, label %if.end10, !dbg !738

if.end10:                                         ; preds = %if.end6
  store i32 1, ptr %call7, align 8, !dbg !739, !tbaa !740
  %depth = getelementptr inbounds %struct._Image, ptr %call7, i64 0, i32 9, !dbg !741
  store i64 32, ptr %depth, align 8, !dbg !742, !tbaa !743
  %call11 = tail call ptr @NewImageList() #6, !dbg !744
  call void @llvm.dbg.value(metadata ptr %call11, metadata !667, metadata !DIExpression()), !dbg !694
  store ptr %call11, ptr %complex_images, align 8, !dbg !745, !tbaa !746
  call void @llvm.dbg.value(metadata ptr %complex_images, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !694
  call void @AppendImageToList(ptr noundef nonnull %complex_images, ptr noundef nonnull %call7) #6, !dbg !747
  %4 = load i64, ptr %columns, align 8, !dbg !748, !tbaa !732
  %5 = load i64, ptr %rows, align 8, !dbg !749, !tbaa !734
  %call14 = call ptr @CloneImage(ptr noundef nonnull %images, i64 noundef %4, i64 noundef %5, i32 noundef 1, ptr noundef %exception) #6, !dbg !750
  call void @llvm.dbg.value(metadata ptr %call14, metadata !669, metadata !DIExpression()), !dbg !694
  %cmp15 = icmp eq ptr %call14, null, !dbg !751
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !753

if.then16:                                        ; preds = %if.end10
  %6 = load ptr, ptr %complex_images, align 8, !dbg !754, !tbaa !746
  call void @llvm.dbg.value(metadata ptr %6, metadata !667, metadata !DIExpression()), !dbg !694
  %call17 = call ptr @DestroyImageList(ptr noundef %6) #6, !dbg !756
  call void @llvm.dbg.value(metadata ptr %call17, metadata !667, metadata !DIExpression()), !dbg !694
  br label %cleanup803, !dbg !757

if.end18:                                         ; preds = %if.end10
  store i32 1, ptr %call14, align 8, !dbg !758, !tbaa !740
  %depth20 = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 9, !dbg !759
  store i64 32, ptr %depth20, align 8, !dbg !760, !tbaa !743
  call void @llvm.dbg.value(metadata ptr %complex_images, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !694
  call void @AppendImageToList(ptr noundef nonnull %complex_images, ptr noundef nonnull %call14) #6, !dbg !761
  %call21 = call ptr @GetImageArtifact(ptr noundef nonnull %call14, ptr noundef nonnull @.str.5) #6, !dbg !762
  call void @llvm.dbg.value(metadata ptr %call21, metadata !660, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !665, metadata !DIExpression()), !dbg !694
  %cmp22.not = icmp eq ptr %call21, null, !dbg !763
  br i1 %cmp22.not, label %if.end25, label %if.then23, !dbg !765

if.then23:                                        ; preds = %if.end18
  call void @llvm.dbg.value(metadata ptr %call21, metadata !766, metadata !DIExpression()) #6, !dbg !775
  call void @llvm.dbg.value(metadata ptr null, metadata !774, metadata !DIExpression()) #6, !dbg !775
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %call21, ptr noundef null) #6, !dbg !777
  call void @llvm.dbg.value(metadata double %call.i, metadata !665, metadata !DIExpression()), !dbg !694
  br label %if.end25, !dbg !778

if.end25:                                         ; preds = %if.then23, %if.end18
  %snr.0 = phi double [ %call.i, %if.then23 ], [ 0.000000e+00, %if.end18 ], !dbg !694
  call void @llvm.dbg.value(metadata double %snr.0, metadata !665, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %images, metadata !662, metadata !DIExpression()), !dbg !694
  %7 = load ptr, ptr %next, align 8, !dbg !779, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %images, metadata !664, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %7, metadata !663, metadata !DIExpression()), !dbg !694
  %next29 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 69, !dbg !780
  %8 = load ptr, ptr %next29, align 8, !dbg !780, !tbaa !724
  %cmp30.not = icmp eq ptr %8, null, !dbg !782
  br i1 %cmp30.not, label %if.end41, label %land.lhs.true, !dbg !783

land.lhs.true:                                    ; preds = %if.end25
  %next33 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 69, !dbg !784
  %9 = load ptr, ptr %next33, align 8, !dbg !784, !tbaa !724
  %cmp34.not = icmp eq ptr %9, null, !dbg !785
  %spec.select = select i1 %cmp34.not, ptr %7, ptr %9, !dbg !786
  %spec.select1144 = select i1 %cmp34.not, ptr %images, ptr %8, !dbg !786
  br label %if.end41, !dbg !786

if.end41:                                         ; preds = %land.lhs.true, %if.end25
  %Bi_image.0 = phi ptr [ %7, %if.end25 ], [ %spec.select, %land.lhs.true ], !dbg !694
  %Br_image.0 = phi ptr [ %images, %if.end25 ], [ %spec.select1144, %land.lhs.true ], !dbg !694
  call void @llvm.dbg.value(metadata ptr %Br_image.0, metadata !664, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %Bi_image.0, metadata !663, metadata !DIExpression()), !dbg !694
  %10 = load ptr, ptr %complex_images, align 8, !dbg !787, !tbaa !746
  call void @llvm.dbg.value(metadata ptr %10, metadata !667, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %10, metadata !668, metadata !DIExpression()), !dbg !694
  %next42 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69, !dbg !788
  %11 = load ptr, ptr %next42, align 8, !dbg !788, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %11, metadata !666, metadata !DIExpression()), !dbg !694
  %call43 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %images, ptr noundef %exception) #6, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call43, metadata !655, metadata !DIExpression()), !dbg !694
  %call44 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %7, ptr noundef %exception) #6, !dbg !790
  call void @llvm.dbg.value(metadata ptr %call44, metadata !650, metadata !DIExpression()), !dbg !694
  %call45 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %Br_image.0, ptr noundef %exception) #6, !dbg !791
  call void @llvm.dbg.value(metadata ptr %call45, metadata !657, metadata !DIExpression()), !dbg !694
  %call46 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %Bi_image.0, ptr noundef %exception) #6, !dbg !792
  call void @llvm.dbg.value(metadata ptr %call46, metadata !656, metadata !DIExpression()), !dbg !694
  %call47 = call ptr @AcquireAuthenticCacheView(ptr noundef %10, ptr noundef %exception) #6, !dbg !793
  call void @llvm.dbg.value(metadata ptr %call47, metadata !659, metadata !DIExpression()), !dbg !694
  %call48 = call ptr @AcquireAuthenticCacheView(ptr noundef %11, ptr noundef %exception) #6, !dbg !794
  call void @llvm.dbg.value(metadata ptr %call48, metadata !658, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 1, metadata !670, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 0, metadata !671, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 0, metadata !672, metadata !DIExpression()), !dbg !694
  %12 = load i64, ptr %rows, align 8, !dbg !795, !tbaa !734
  %cmp501316 = icmp sgt i64 %12, 0, !dbg !796
  br i1 %cmp501316, label %for.body.lr.ph, label %for.end791, !dbg !797

for.body.lr.ph:                                   ; preds = %if.end41
  %matte666 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 6
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 48
  br label %for.body, !dbg !797

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.01319 = phi i64 [ 0, %for.body.lr.ph ], [ %inc790, %cleanup ]
  %progress.01318 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.01317 = phi i32 [ 1, %for.body.lr.ph ], [ %status.5, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.01319, metadata !672, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 %progress.01318, metadata !671, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 %status.01317, metadata !670, metadata !DIExpression()), !dbg !694
  %cmp51 = icmp eq i32 %status.01317, 0, !dbg !798
  br i1 %cmp51, label %cleanup, label %if.end53, !dbg !800

if.end53:                                         ; preds = %for.body
  %13 = load i64, ptr %columns, align 8, !dbg !801, !tbaa !732
  %call55 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call43, i64 noundef 0, i64 noundef %y.01319, i64 noundef %13, i64 noundef 1, ptr noundef %exception) #7, !dbg !802
  call void @llvm.dbg.value(metadata ptr %call55, metadata !678, metadata !DIExpression()), !dbg !803
  %14 = load i64, ptr %columns, align 8, !dbg !804, !tbaa !732
  %call57 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call44, i64 noundef 0, i64 noundef %y.01319, i64 noundef %14, i64 noundef 1, ptr noundef %exception) #7, !dbg !805
  call void @llvm.dbg.value(metadata ptr %call57, metadata !673, metadata !DIExpression()), !dbg !803
  %15 = load i64, ptr %columns, align 8, !dbg !806, !tbaa !732
  %call59 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call45, i64 noundef 0, i64 noundef %y.01319, i64 noundef %15, i64 noundef 1, ptr noundef %exception) #7, !dbg !807
  call void @llvm.dbg.value(metadata ptr %call59, metadata !680, metadata !DIExpression()), !dbg !803
  %16 = load i64, ptr %columns, align 8, !dbg !808, !tbaa !732
  %call61 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call46, i64 noundef 0, i64 noundef %y.01319, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #7, !dbg !809
  call void @llvm.dbg.value(metadata ptr %call61, metadata !679, metadata !DIExpression()), !dbg !803
  %17 = load i64, ptr %columns, align 8, !dbg !810, !tbaa !732
  %call63 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call47, i64 noundef 0, i64 noundef %y.01319, i64 noundef %17, i64 noundef 1, ptr noundef %exception) #7, !dbg !811
  call void @llvm.dbg.value(metadata ptr %call63, metadata !683, metadata !DIExpression()), !dbg !803
  %18 = load i64, ptr %columns, align 8, !dbg !812, !tbaa !732
  %call65 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call48, i64 noundef 0, i64 noundef %y.01319, i64 noundef %18, i64 noundef 1, ptr noundef %exception) #7, !dbg !813
  call void @llvm.dbg.value(metadata ptr %call65, metadata !681, metadata !DIExpression()), !dbg !803
  %cmp66 = icmp eq ptr %call55, null, !dbg !814
  %cmp67 = icmp eq ptr %call57, null
  %or.cond = select i1 %cmp66, i1 true, i1 %cmp67, !dbg !816
  %cmp69 = icmp eq ptr %call59, null
  %or.cond822 = select i1 %or.cond, i1 true, i1 %cmp69, !dbg !816
  %cmp71 = icmp eq ptr %call61, null
  %or.cond823 = select i1 %or.cond822, i1 true, i1 %cmp71, !dbg !816
  %cmp73 = icmp eq ptr %call63, null
  %or.cond824 = select i1 %or.cond823, i1 true, i1 %cmp73, !dbg !816
  %cmp75 = icmp eq ptr %call65, null
  %or.cond825 = select i1 %or.cond824, i1 true, i1 %cmp75, !dbg !816
  br i1 %or.cond825, label %cleanup, label %for.cond78.preheader, !dbg !816

for.cond78.preheader:                             ; preds = %if.end53
  call void @llvm.dbg.value(metadata i64 0, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call63, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call65, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call59, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call61, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call55, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %call57, metadata !673, metadata !DIExpression()), !dbg !803
  %19 = load i64, ptr %columns, align 8, !dbg !817, !tbaa !732
  %cmp801182 = icmp sgt i64 %19, 0, !dbg !818
  br i1 %cmp801182, label %for.body81.lr.ph, label %for.end, !dbg !819

for.body81.lr.ph:                                 ; preds = %for.cond78.preheader
  switch i32 %op, label %for.body81.preheader [
    i32 1, label %for.body81.lr.ph.split.us
    i32 7, label %for.body81.lr.ph.split.us1196
    i32 3, label %for.body81.lr.ph.split.us1220
    i32 4, label %for.body81.us1245
    i32 5, label %for.body81.lr.ph.split.us1268
    i32 6, label %for.body81.us1293
  ], !dbg !820

for.body81.preheader:                             ; preds = %for.body81.lr.ph
  %.pre = load i32, ptr %matte666, align 8, !dbg !821, !tbaa !824
  %cmp158.not = icmp eq i32 %.pre, 0
  br label %for.body81, !dbg !819

for.body81.lr.ph.split.us:                        ; preds = %for.body81.lr.ph
  %20 = load i32, ptr %matte666, align 8, !tbaa !824
  %cmp119.not.us = icmp eq i32 %20, 0
  br label %for.body81.us, !dbg !819

for.body81.us:                                    ; preds = %sw.epilog.us, %for.body81.lr.ph.split.us
  %x.01195.us = phi i64 [ 0, %for.body81.lr.ph.split.us ], [ %inc.us, %sw.epilog.us ]
  %Cr.01193.us = phi ptr [ %call63, %for.body81.lr.ph.split.us ], [ %incdec.ptr760.us, %sw.epilog.us ]
  %Ci.01191.us = phi ptr [ %call65, %for.body81.lr.ph.split.us ], [ %incdec.ptr761.us, %sw.epilog.us ]
  %Br.01189.us = phi ptr [ %call59, %for.body81.lr.ph.split.us ], [ %incdec.ptr758.us, %sw.epilog.us ]
  %Bi.01187.us = phi ptr [ %call61, %for.body81.lr.ph.split.us ], [ %incdec.ptr759.us, %sw.epilog.us ]
  %Ar.01185.us = phi ptr [ %call55, %for.body81.lr.ph.split.us ], [ %incdec.ptr.us, %sw.epilog.us ]
  %Ai.01183.us = phi ptr [ %call57, %for.body81.lr.ph.split.us ], [ %incdec.ptr757.us, %sw.epilog.us ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Br.01189.us, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Bi.01187.us, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us, metadata !673, metadata !DIExpression()), !dbg !803
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us, i64 0, i32 2, !dbg !825
  %21 = load i16, ptr %red.us, align 2, !dbg !825, !tbaa !827
  %red82.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us, i64 0, i32 2, !dbg !828
  %22 = load i16, ptr %red82.us, align 2, !dbg !828, !tbaa !827
  %add.us = add i16 %22, %21, !dbg !829
  %red85.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us, i64 0, i32 2, !dbg !830
  store i16 %add.us, ptr %red85.us, align 2, !dbg !831, !tbaa !827
  %red86.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us, i64 0, i32 2, !dbg !832
  %23 = load i16, ptr %red86.us, align 2, !dbg !832, !tbaa !827
  %red88.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us, i64 0, i32 2, !dbg !833
  %24 = load i16, ptr %red88.us, align 2, !dbg !833, !tbaa !827
  %add90.us = add i16 %24, %23, !dbg !834
  %red92.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us, i64 0, i32 2, !dbg !835
  store i16 %add90.us, ptr %red92.us, align 2, !dbg !836, !tbaa !827
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us, i64 0, i32 1, !dbg !837
  %25 = load i16, ptr %green.us, align 2, !dbg !837, !tbaa !838
  %green94.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us, i64 0, i32 1, !dbg !839
  %26 = load i16, ptr %green94.us, align 2, !dbg !839, !tbaa !838
  %add96.us = add i16 %26, %25, !dbg !840
  %green98.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us, i64 0, i32 1, !dbg !841
  store i16 %add96.us, ptr %green98.us, align 2, !dbg !842, !tbaa !838
  %green99.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us, i64 0, i32 1, !dbg !843
  %27 = load i16, ptr %green99.us, align 2, !dbg !843, !tbaa !838
  %green101.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us, i64 0, i32 1, !dbg !844
  %28 = load i16, ptr %green101.us, align 2, !dbg !844, !tbaa !838
  %add103.us = add i16 %28, %27, !dbg !845
  %green105.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us, i64 0, i32 1, !dbg !846
  store i16 %add103.us, ptr %green105.us, align 2, !dbg !847, !tbaa !838
  %29 = load i16, ptr %Ar.01185.us, align 2, !dbg !848, !tbaa !849
  %30 = load i16, ptr %Br.01189.us, align 2, !dbg !850, !tbaa !849
  %add109.us = add i16 %30, %29, !dbg !851
  store i16 %add109.us, ptr %Cr.01193.us, align 2, !dbg !852, !tbaa !849
  %31 = load i16, ptr %Ai.01183.us, align 2, !dbg !853, !tbaa !849
  %32 = load i16, ptr %Bi.01187.us, align 2, !dbg !854, !tbaa !849
  %add116.us = add i16 %32, %31, !dbg !855
  store i16 %add116.us, ptr %Ci.01191.us, align 2, !dbg !856, !tbaa !849
  br i1 %cmp119.not.us, label %sw.epilog.us, label %if.then121.us, !dbg !857

if.then121.us:                                    ; preds = %for.body81.us
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us, i64 0, i32 3, !dbg !858
  %33 = load i16, ptr %opacity.us, align 2, !dbg !858, !tbaa !861
  %opacity123.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us, i64 0, i32 3, !dbg !862
  %34 = load i16, ptr %opacity123.us, align 2, !dbg !862, !tbaa !861
  %add125.us = add i16 %34, %33, !dbg !863
  %opacity127.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us, i64 0, i32 3, !dbg !864
  store i16 %add125.us, ptr %opacity127.us, align 2, !dbg !865, !tbaa !861
  %opacity128.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us, i64 0, i32 3, !dbg !866
  %35 = load i16, ptr %opacity128.us, align 2, !dbg !866, !tbaa !861
  %opacity130.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us, i64 0, i32 3, !dbg !867
  %36 = load i16, ptr %opacity130.us, align 2, !dbg !867, !tbaa !861
  %add132.us = add i16 %36, %35, !dbg !868
  %opacity134.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us, i64 0, i32 3, !dbg !869
  store i16 %add132.us, ptr %opacity134.us, align 2, !dbg !870, !tbaa !861
  br label %sw.epilog.us, !dbg !871

sw.epilog.us:                                     ; preds = %if.then121.us, %for.body81.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us, metadata !673, metadata !DIExpression()), !dbg !803
  %incdec.ptr758.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us, i64 1, !dbg !874
  call void @llvm.dbg.value(metadata ptr %incdec.ptr758.us, metadata !680, metadata !DIExpression()), !dbg !803
  %incdec.ptr759.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759.us, metadata !679, metadata !DIExpression()), !dbg !803
  %incdec.ptr760.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us = add nuw nsw i64 %x.01195.us, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !684, metadata !DIExpression()), !dbg !803
  %exitcond1331.not = icmp eq i64 %inc.us, %19, !dbg !818
  br i1 %exitcond1331.not, label %for.end, label %for.body81.us, !dbg !819, !llvm.loop !879

for.body81.lr.ph.split.us1196:                    ; preds = %for.body81.lr.ph
  %37 = load i32, ptr %matte666, align 8, !tbaa !824
  %cmp739.not.us = icmp eq i32 %37, 0
  br label %for.body81.us1197, !dbg !819

for.body81.us1197:                                ; preds = %sw.epilog.us1205, %for.body81.lr.ph.split.us1196
  %x.01195.us1198 = phi i64 [ 0, %for.body81.lr.ph.split.us1196 ], [ %inc.us1218, %sw.epilog.us1205 ]
  %Cr.01193.us1199 = phi ptr [ %call63, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr760.us1216, %sw.epilog.us1205 ]
  %Ci.01191.us1200 = phi ptr [ %call65, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr761.us1217, %sw.epilog.us1205 ]
  %Br.01189.us1201 = phi ptr [ %call59, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr758.us1214, %sw.epilog.us1205 ]
  %Bi.01187.us1202 = phi ptr [ %call61, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr759.us1215, %sw.epilog.us1205 ]
  %Ar.01185.us1203 = phi ptr [ %call55, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr.us1212, %sw.epilog.us1205 ]
  %Ai.01183.us1204 = phi ptr [ %call57, %for.body81.lr.ph.split.us1196 ], [ %incdec.ptr757.us1213, %sw.epilog.us1205 ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us1198, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us1199, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us1200, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Br.01189.us1201, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Bi.01187.us1202, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us1203, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us1204, metadata !673, metadata !DIExpression()), !dbg !803
  %red696.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1203, i64 0, i32 2, !dbg !883
  %38 = load i16, ptr %red696.us, align 2, !dbg !883, !tbaa !827
  %red698.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1201, i64 0, i32 2, !dbg !885
  %39 = load i16, ptr %red698.us, align 2, !dbg !885, !tbaa !827
  %sub700.us = sub i16 %38, %39, !dbg !886
  %red702.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1199, i64 0, i32 2, !dbg !887
  store i16 %sub700.us, ptr %red702.us, align 2, !dbg !888, !tbaa !827
  %red703.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1204, i64 0, i32 2, !dbg !889
  %40 = load i16, ptr %red703.us, align 2, !dbg !889, !tbaa !827
  %red705.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1202, i64 0, i32 2, !dbg !890
  %41 = load i16, ptr %red705.us, align 2, !dbg !890, !tbaa !827
  %sub707.us = sub i16 %40, %41, !dbg !891
  %red709.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1200, i64 0, i32 2, !dbg !892
  store i16 %sub707.us, ptr %red709.us, align 2, !dbg !893, !tbaa !827
  %green710.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1203, i64 0, i32 1, !dbg !894
  %42 = load i16, ptr %green710.us, align 2, !dbg !894, !tbaa !838
  %green712.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1201, i64 0, i32 1, !dbg !895
  %43 = load i16, ptr %green712.us, align 2, !dbg !895, !tbaa !838
  %sub714.us = sub i16 %42, %43, !dbg !896
  %green716.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1199, i64 0, i32 1, !dbg !897
  store i16 %sub714.us, ptr %green716.us, align 2, !dbg !898, !tbaa !838
  %green717.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1204, i64 0, i32 1, !dbg !899
  %44 = load i16, ptr %green717.us, align 2, !dbg !899, !tbaa !838
  %green719.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1202, i64 0, i32 1, !dbg !900
  %45 = load i16, ptr %green719.us, align 2, !dbg !900, !tbaa !838
  %sub721.us = sub i16 %44, %45, !dbg !901
  %green723.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1200, i64 0, i32 1, !dbg !902
  store i16 %sub721.us, ptr %green723.us, align 2, !dbg !903, !tbaa !838
  %46 = load i16, ptr %Ar.01185.us1203, align 2, !dbg !904, !tbaa !849
  %47 = load i16, ptr %Br.01189.us1201, align 2, !dbg !905, !tbaa !849
  %sub728.us = sub i16 %46, %47, !dbg !906
  store i16 %sub728.us, ptr %Cr.01193.us1199, align 2, !dbg !907, !tbaa !849
  %48 = load i16, ptr %Ai.01183.us1204, align 2, !dbg !908, !tbaa !849
  %49 = load i16, ptr %Bi.01187.us1202, align 2, !dbg !909, !tbaa !849
  %sub735.us = sub i16 %48, %49, !dbg !910
  store i16 %sub735.us, ptr %Ci.01191.us1200, align 2, !dbg !911, !tbaa !849
  br i1 %cmp739.not.us, label %sw.epilog.us1205, label %if.then741.us, !dbg !912

if.then741.us:                                    ; preds = %for.body81.us1197
  %opacity742.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1203, i64 0, i32 3, !dbg !913
  %50 = load i16, ptr %opacity742.us, align 2, !dbg !913, !tbaa !861
  %opacity744.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1201, i64 0, i32 3, !dbg !916
  %51 = load i16, ptr %opacity744.us, align 2, !dbg !916, !tbaa !861
  %sub746.us = sub i16 %50, %51, !dbg !917
  %opacity748.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1199, i64 0, i32 3, !dbg !918
  store i16 %sub746.us, ptr %opacity748.us, align 2, !dbg !919, !tbaa !861
  %opacity749.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1204, i64 0, i32 3, !dbg !920
  %52 = load i16, ptr %opacity749.us, align 2, !dbg !920, !tbaa !861
  %opacity751.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1202, i64 0, i32 3, !dbg !921
  %53 = load i16, ptr %opacity751.us, align 2, !dbg !921, !tbaa !861
  %sub753.us = sub i16 %52, %53, !dbg !922
  %opacity755.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1200, i64 0, i32 3, !dbg !923
  store i16 %sub753.us, ptr %opacity755.us, align 2, !dbg !924, !tbaa !861
  br label %sw.epilog.us1205, !dbg !925

sw.epilog.us1205:                                 ; preds = %if.then741.us, %for.body81.us1197
  %incdec.ptr.us1212 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1203, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us1212, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us1213 = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1204, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us1213, metadata !673, metadata !DIExpression()), !dbg !803
  %incdec.ptr758.us1214 = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1201, i64 1, !dbg !874
  call void @llvm.dbg.value(metadata ptr %incdec.ptr758.us1214, metadata !680, metadata !DIExpression()), !dbg !803
  %incdec.ptr759.us1215 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1202, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759.us1215, metadata !679, metadata !DIExpression()), !dbg !803
  %incdec.ptr760.us1216 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1199, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us1216, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us1217 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1200, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us1217, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us1218 = add nuw nsw i64 %x.01195.us1198, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us1218, metadata !684, metadata !DIExpression()), !dbg !803
  %exitcond1329.not = icmp eq i64 %inc.us1218, %19, !dbg !818
  br i1 %exitcond1329.not, label %for.end, label %for.body81.us1197, !dbg !819, !llvm.loop !879

for.body81.lr.ph.split.us1220:                    ; preds = %for.body81.lr.ph
  %54 = load i32, ptr %matte666, align 8, !tbaa !824
  %cmp314.not.us = icmp eq i32 %54, 0
  br label %for.body81.us1221, !dbg !819

for.body81.us1221:                                ; preds = %sw.epilog.us1229, %for.body81.lr.ph.split.us1220
  %x.01195.us1222 = phi i64 [ 0, %for.body81.lr.ph.split.us1220 ], [ %inc.us1242, %sw.epilog.us1229 ]
  %Cr.01193.us1223 = phi ptr [ %call63, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr760.us1240, %sw.epilog.us1229 ]
  %Ci.01191.us1224 = phi ptr [ %call65, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr761.us1241, %sw.epilog.us1229 ]
  %Br.01189.us1225 = phi ptr [ %call59, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr758.us1238, %sw.epilog.us1229 ]
  %Bi.01187.us1226 = phi ptr [ %call61, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr759.us1239, %sw.epilog.us1229 ]
  %Ar.01185.us1227 = phi ptr [ %call55, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr.us1236, %sw.epilog.us1229 ]
  %Ai.01183.us1228 = phi ptr [ %call57, %for.body81.lr.ph.split.us1220 ], [ %incdec.ptr757.us1237, %sw.epilog.us1229 ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us1222, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us1223, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us1224, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Br.01189.us1225, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Bi.01187.us1226, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us1227, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us1228, metadata !673, metadata !DIExpression()), !dbg !803
  %red170.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1225, i64 0, i32 2, !dbg !926
  %55 = load i16, ptr %red170.us, align 2, !dbg !926, !tbaa !827
  %conv171.us = zext i16 %55 to i32, !dbg !927
  %mul.us = mul nuw nsw i32 %conv171.us, %conv171.us, !dbg !928
  %red174.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1226, i64 0, i32 2, !dbg !929
  %56 = load i16, ptr %red174.us, align 2, !dbg !929, !tbaa !827
  %conv175.us = zext i16 %56 to i32, !dbg !930
  %mul178.us = mul nuw nsw i32 %conv175.us, %conv175.us, !dbg !931
  %add179.us = add nuw nsw i32 %mul178.us, %mul.us, !dbg !932
  %conv180.us = sitofp i32 %add179.us to double, !dbg !927
  %add181.us = fadd double %snr.0, %conv180.us, !dbg !933
  call void @llvm.dbg.value(metadata double %add181.us, metadata !685, metadata !DIExpression()), !dbg !934
  %cmp182.us = fcmp olt double %add181.us, 0.000000e+00, !dbg !935
  br i1 %cmp182.us, label %if.then184.us, label %if.end185.us, !dbg !937

if.then184.us:                                    ; preds = %for.body81.us1221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !685, metadata !DIExpression()), !dbg !934
  br label %if.end185.us, !dbg !938

if.end185.us:                                     ; preds = %if.then184.us, %for.body81.us1221
  %gamma.0.us = phi double [ 0.000000e+00, %if.then184.us ], [ %add181.us, %for.body81.us1221 ], !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.0.us, metadata !685, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.0.us, metadata !939, metadata !DIExpression()), !dbg !947
  %cmp.i.us = fcmp olt double %gamma.0.us, 0.000000e+00, !dbg !949
  %cond.i.us = select i1 %cmp.i.us, double -1.000000e+00, double 1.000000e+00, !dbg !950
  call void @llvm.dbg.value(metadata double %cond.i.us, metadata !946, metadata !DIExpression()), !dbg !947
  %mul.i.us = fmul double %gamma.0.us, %cond.i.us, !dbg !951
  %cmp1.i.us = fcmp ult double %mul.i.us, 1.000000e-15, !dbg !953
  br i1 %cmp1.i.us, label %if.end.i.us, label %if.then.i.us, !dbg !954

if.then.i.us:                                     ; preds = %if.end185.us
  %div.i.us = fdiv double 1.000000e+00, %gamma.0.us, !dbg !955
  br label %PerceptibleReciprocal.exit.us, !dbg !956

if.end.i.us:                                      ; preds = %if.end185.us
  %div2.i.us = fdiv double %cond.i.us, 1.000000e-15, !dbg !957
  br label %PerceptibleReciprocal.exit.us, !dbg !958

PerceptibleReciprocal.exit.us:                    ; preds = %if.end.i.us, %if.then.i.us
  %retval.0.i.us = phi double [ %div.i.us, %if.then.i.us ], [ %div2.i.us, %if.end.i.us ], !dbg !947
  call void @llvm.dbg.value(metadata double %retval.0.i.us, metadata !685, metadata !DIExpression()), !dbg !934
  %red187.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1227, i64 0, i32 2, !dbg !959
  %57 = load i16, ptr %red187.us, align 2, !dbg !959, !tbaa !827
  %conv188.us = zext i16 %57 to i32, !dbg !960
  %mul191.us = mul nuw nsw i32 %conv188.us, %conv171.us, !dbg !961
  %red192.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1228, i64 0, i32 2, !dbg !962
  %58 = load i16, ptr %red192.us, align 2, !dbg !962, !tbaa !827
  %conv193.us = zext i16 %58 to i32, !dbg !963
  %mul196.us = mul nuw nsw i32 %conv193.us, %conv175.us, !dbg !964
  %add197.us = add nuw nsw i32 %mul196.us, %mul191.us, !dbg !965
  %conv198.us = sitofp i32 %add197.us to double, !dbg !966
  %mul199.us = fmul double %retval.0.i.us, %conv198.us, !dbg !967
  %conv200.us = fptoui double %mul199.us to i16, !dbg !968
  %red201.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1223, i64 0, i32 2, !dbg !969
  store i16 %conv200.us, ptr %red201.us, align 2, !dbg !970, !tbaa !827
  %59 = load i16, ptr %red192.us, align 2, !dbg !971, !tbaa !827
  %conv203.us = zext i16 %59 to i32, !dbg !972
  %60 = load i16, ptr %red170.us, align 2, !dbg !973, !tbaa !827
  %conv205.us = zext i16 %60 to i32, !dbg !974
  %mul206.us = mul nuw nsw i32 %conv205.us, %conv203.us, !dbg !975
  %61 = load i16, ptr %red187.us, align 2, !dbg !976, !tbaa !827
  %conv208.us = zext i16 %61 to i32, !dbg !977
  %62 = load i16, ptr %red174.us, align 2, !dbg !978, !tbaa !827
  %conv210.us = zext i16 %62 to i32, !dbg !979
  %mul211.us = mul nuw nsw i32 %conv210.us, %conv208.us, !dbg !980
  %sub212.us = sub nsw i32 %mul206.us, %mul211.us, !dbg !981
  %conv213.us = sitofp i32 %sub212.us to double, !dbg !982
  %mul214.us = fmul double %retval.0.i.us, %conv213.us, !dbg !983
  %conv215.us = fptoui double %mul214.us to i16, !dbg !984
  %red216.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1224, i64 0, i32 2, !dbg !985
  store i16 %conv215.us, ptr %red216.us, align 2, !dbg !986, !tbaa !827
  %green217.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1225, i64 0, i32 1, !dbg !987
  %63 = load i16, ptr %green217.us, align 2, !dbg !987, !tbaa !838
  %conv218.us = zext i16 %63 to i32, !dbg !988
  %mul221.us = mul nuw nsw i32 %conv218.us, %conv218.us, !dbg !989
  %green222.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1226, i64 0, i32 1, !dbg !990
  %64 = load i16, ptr %green222.us, align 2, !dbg !990, !tbaa !838
  %conv223.us = zext i16 %64 to i32, !dbg !991
  %mul226.us = mul nuw nsw i32 %conv223.us, %conv223.us, !dbg !992
  %add227.us = add nuw nsw i32 %mul226.us, %mul221.us, !dbg !993
  %conv228.us = sitofp i32 %add227.us to double, !dbg !988
  %add229.us = fadd double %snr.0, %conv228.us, !dbg !994
  call void @llvm.dbg.value(metadata double %add229.us, metadata !685, metadata !DIExpression()), !dbg !934
  %cmp230.us = fcmp olt double %add229.us, 0.000000e+00, !dbg !995
  br i1 %cmp230.us, label %if.then232.us, label %if.end233.us, !dbg !997

if.then232.us:                                    ; preds = %PerceptibleReciprocal.exit.us
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !685, metadata !DIExpression()), !dbg !934
  br label %if.end233.us, !dbg !998

if.end233.us:                                     ; preds = %if.then232.us, %PerceptibleReciprocal.exit.us
  %gamma.1.us = phi double [ 0.000000e+00, %if.then232.us ], [ %add229.us, %PerceptibleReciprocal.exit.us ], !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.1.us, metadata !685, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.1.us, metadata !939, metadata !DIExpression()), !dbg !999
  %cmp.i1148.us = fcmp olt double %gamma.1.us, 0.000000e+00, !dbg !1001
  %cond.i1149.us = select i1 %cmp.i1148.us, double -1.000000e+00, double 1.000000e+00, !dbg !1002
  call void @llvm.dbg.value(metadata double %cond.i1149.us, metadata !946, metadata !DIExpression()), !dbg !999
  %mul.i1150.us = fmul double %gamma.1.us, %cond.i1149.us, !dbg !1003
  %cmp1.i1151.us = fcmp ult double %mul.i1150.us, 1.000000e-15, !dbg !1004
  br i1 %cmp1.i1151.us, label %if.end.i1155.us, label %if.then.i1153.us, !dbg !1005

if.then.i1153.us:                                 ; preds = %if.end233.us
  %div.i1152.us = fdiv double 1.000000e+00, %gamma.1.us, !dbg !1006
  br label %PerceptibleReciprocal.exit1157.us, !dbg !1007

if.end.i1155.us:                                  ; preds = %if.end233.us
  %div2.i1154.us = fdiv double %cond.i1149.us, 1.000000e-15, !dbg !1008
  br label %PerceptibleReciprocal.exit1157.us, !dbg !1009

PerceptibleReciprocal.exit1157.us:                ; preds = %if.end.i1155.us, %if.then.i1153.us
  %retval.0.i1156.us = phi double [ %div.i1152.us, %if.then.i1153.us ], [ %div2.i1154.us, %if.end.i1155.us ], !dbg !999
  call void @llvm.dbg.value(metadata double %retval.0.i1156.us, metadata !685, metadata !DIExpression()), !dbg !934
  %green235.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1227, i64 0, i32 1, !dbg !1010
  %65 = load i16, ptr %green235.us, align 2, !dbg !1010, !tbaa !838
  %conv236.us = zext i16 %65 to i32, !dbg !1011
  %mul239.us = mul nuw nsw i32 %conv236.us, %conv218.us, !dbg !1012
  %green240.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1228, i64 0, i32 1, !dbg !1013
  %66 = load i16, ptr %green240.us, align 2, !dbg !1013, !tbaa !838
  %conv241.us = zext i16 %66 to i32, !dbg !1014
  %mul244.us = mul nuw nsw i32 %conv241.us, %conv223.us, !dbg !1015
  %add245.us = add nuw nsw i32 %mul244.us, %mul239.us, !dbg !1016
  %conv246.us = sitofp i32 %add245.us to double, !dbg !1017
  %mul247.us = fmul double %retval.0.i1156.us, %conv246.us, !dbg !1018
  %conv248.us = fptoui double %mul247.us to i16, !dbg !1019
  %green249.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1223, i64 0, i32 1, !dbg !1020
  store i16 %conv248.us, ptr %green249.us, align 2, !dbg !1021, !tbaa !838
  %67 = load i16, ptr %green240.us, align 2, !dbg !1022, !tbaa !838
  %conv251.us = zext i16 %67 to i32, !dbg !1023
  %68 = load i16, ptr %green217.us, align 2, !dbg !1024, !tbaa !838
  %conv253.us = zext i16 %68 to i32, !dbg !1025
  %mul254.us = mul nuw nsw i32 %conv253.us, %conv251.us, !dbg !1026
  %69 = load i16, ptr %green235.us, align 2, !dbg !1027, !tbaa !838
  %conv256.us = zext i16 %69 to i32, !dbg !1028
  %70 = load i16, ptr %green222.us, align 2, !dbg !1029, !tbaa !838
  %conv258.us = zext i16 %70 to i32, !dbg !1030
  %mul259.us = mul nuw nsw i32 %conv258.us, %conv256.us, !dbg !1031
  %sub260.us = sub nsw i32 %mul254.us, %mul259.us, !dbg !1032
  %conv261.us = sitofp i32 %sub260.us to double, !dbg !1033
  %mul262.us = fmul double %retval.0.i1156.us, %conv261.us, !dbg !1034
  %conv263.us = fptoui double %mul262.us to i16, !dbg !1035
  %green264.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1224, i64 0, i32 1, !dbg !1036
  store i16 %conv263.us, ptr %green264.us, align 2, !dbg !1037, !tbaa !838
  %71 = load i16, ptr %Br.01189.us1225, align 2, !dbg !1038, !tbaa !849
  %conv266.us = zext i16 %71 to i32, !dbg !1039
  %mul269.us = mul nuw nsw i32 %conv266.us, %conv266.us, !dbg !1040
  %72 = load i16, ptr %Bi.01187.us1226, align 2, !dbg !1041, !tbaa !849
  %conv271.us = zext i16 %72 to i32, !dbg !1042
  %mul274.us = mul nuw nsw i32 %conv271.us, %conv271.us, !dbg !1043
  %add275.us = add nuw nsw i32 %mul274.us, %mul269.us, !dbg !1044
  %conv276.us = sitofp i32 %add275.us to double, !dbg !1039
  %add277.us = fadd double %snr.0, %conv276.us, !dbg !1045
  call void @llvm.dbg.value(metadata double %add277.us, metadata !685, metadata !DIExpression()), !dbg !934
  %cmp278.us = fcmp olt double %add277.us, 0.000000e+00, !dbg !1046
  br i1 %cmp278.us, label %if.then280.us, label %if.end281.us, !dbg !1048

if.then280.us:                                    ; preds = %PerceptibleReciprocal.exit1157.us
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !685, metadata !DIExpression()), !dbg !934
  br label %if.end281.us, !dbg !1049

if.end281.us:                                     ; preds = %if.then280.us, %PerceptibleReciprocal.exit1157.us
  %gamma.2.us = phi double [ 0.000000e+00, %if.then280.us ], [ %add277.us, %PerceptibleReciprocal.exit1157.us ], !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.2.us, metadata !685, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.2.us, metadata !939, metadata !DIExpression()), !dbg !1050
  %cmp.i1158.us = fcmp olt double %gamma.2.us, 0.000000e+00, !dbg !1052
  %cond.i1159.us = select i1 %cmp.i1158.us, double -1.000000e+00, double 1.000000e+00, !dbg !1053
  call void @llvm.dbg.value(metadata double %cond.i1159.us, metadata !946, metadata !DIExpression()), !dbg !1050
  %mul.i1160.us = fmul double %gamma.2.us, %cond.i1159.us, !dbg !1054
  %cmp1.i1161.us = fcmp ult double %mul.i1160.us, 1.000000e-15, !dbg !1055
  br i1 %cmp1.i1161.us, label %if.end.i1165.us, label %if.then.i1163.us, !dbg !1056

if.then.i1163.us:                                 ; preds = %if.end281.us
  %div.i1162.us = fdiv double 1.000000e+00, %gamma.2.us, !dbg !1057
  br label %PerceptibleReciprocal.exit1167.us, !dbg !1058

if.end.i1165.us:                                  ; preds = %if.end281.us
  %div2.i1164.us = fdiv double %cond.i1159.us, 1.000000e-15, !dbg !1059
  br label %PerceptibleReciprocal.exit1167.us, !dbg !1060

PerceptibleReciprocal.exit1167.us:                ; preds = %if.end.i1165.us, %if.then.i1163.us
  %retval.0.i1166.us = phi double [ %div.i1162.us, %if.then.i1163.us ], [ %div2.i1164.us, %if.end.i1165.us ], !dbg !1050
  call void @llvm.dbg.value(metadata double %retval.0.i1166.us, metadata !685, metadata !DIExpression()), !dbg !934
  %73 = load i16, ptr %Ar.01185.us1227, align 2, !dbg !1061, !tbaa !849
  %conv284.us = zext i16 %73 to i32, !dbg !1062
  %mul287.us = mul nuw nsw i32 %conv284.us, %conv266.us, !dbg !1063
  %74 = load i16, ptr %Ai.01183.us1228, align 2, !dbg !1064, !tbaa !849
  %conv289.us = zext i16 %74 to i32, !dbg !1065
  %mul292.us = mul nuw nsw i32 %conv289.us, %conv271.us, !dbg !1066
  %add293.us = add nuw nsw i32 %mul292.us, %mul287.us, !dbg !1067
  %conv294.us = sitofp i32 %add293.us to double, !dbg !1068
  %mul295.us = fmul double %retval.0.i1166.us, %conv294.us, !dbg !1069
  %conv296.us = fptoui double %mul295.us to i16, !dbg !1070
  store i16 %conv296.us, ptr %Cr.01193.us1223, align 2, !dbg !1071, !tbaa !849
  %75 = load i16, ptr %Ai.01183.us1228, align 2, !dbg !1072, !tbaa !849
  %conv299.us = zext i16 %75 to i32, !dbg !1073
  %76 = load i16, ptr %Br.01189.us1225, align 2, !dbg !1074, !tbaa !849
  %conv301.us = zext i16 %76 to i32, !dbg !1075
  %mul302.us = mul nuw nsw i32 %conv301.us, %conv299.us, !dbg !1076
  %77 = load i16, ptr %Ar.01185.us1227, align 2, !dbg !1077, !tbaa !849
  %conv304.us = zext i16 %77 to i32, !dbg !1078
  %78 = load i16, ptr %Bi.01187.us1226, align 2, !dbg !1079, !tbaa !849
  %conv306.us = zext i16 %78 to i32, !dbg !1080
  %mul307.us = mul nuw nsw i32 %conv306.us, %conv304.us, !dbg !1081
  %sub308.us = sub nsw i32 %mul302.us, %mul307.us, !dbg !1082
  %conv309.us = sitofp i32 %sub308.us to double, !dbg !1083
  %mul310.us = fmul double %retval.0.i1166.us, %conv309.us, !dbg !1084
  %conv311.us = fptoui double %mul310.us to i16, !dbg !1085
  store i16 %conv311.us, ptr %Ci.01191.us1224, align 2, !dbg !1086, !tbaa !849
  br i1 %cmp314.not.us, label %sw.epilog.us1229, label %if.then316.us, !dbg !1087

if.then316.us:                                    ; preds = %PerceptibleReciprocal.exit1167.us
  %opacity317.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1225, i64 0, i32 3, !dbg !1088
  %79 = load i16, ptr %opacity317.us, align 2, !dbg !1088, !tbaa !861
  %conv318.us = zext i16 %79 to i32, !dbg !1091
  %mul321.us = mul nuw nsw i32 %conv318.us, %conv318.us, !dbg !1092
  %opacity322.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1226, i64 0, i32 3, !dbg !1093
  %80 = load i16, ptr %opacity322.us, align 2, !dbg !1093, !tbaa !861
  %conv323.us = zext i16 %80 to i32, !dbg !1094
  %mul326.us = mul nuw nsw i32 %conv323.us, %conv323.us, !dbg !1095
  %add327.us = add nuw nsw i32 %mul326.us, %mul321.us, !dbg !1096
  %conv328.us = sitofp i32 %add327.us to double, !dbg !1091
  %add329.us = fadd double %snr.0, %conv328.us, !dbg !1097
  call void @llvm.dbg.value(metadata double %add329.us, metadata !685, metadata !DIExpression()), !dbg !934
  %cmp330.us = fcmp olt double %add329.us, 0.000000e+00, !dbg !1098
  br i1 %cmp330.us, label %if.then332.us, label %if.end333.us, !dbg !1100

if.then332.us:                                    ; preds = %if.then316.us
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !685, metadata !DIExpression()), !dbg !934
  br label %if.end333.us, !dbg !1101

if.end333.us:                                     ; preds = %if.then332.us, %if.then316.us
  %gamma.3.us = phi double [ 0.000000e+00, %if.then332.us ], [ %add329.us, %if.then316.us ], !dbg !1102
  call void @llvm.dbg.value(metadata double %gamma.3.us, metadata !685, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata double %gamma.3.us, metadata !939, metadata !DIExpression()), !dbg !1103
  %cmp.i1168.us = fcmp olt double %gamma.3.us, 0.000000e+00, !dbg !1105
  %cond.i1169.us = select i1 %cmp.i1168.us, double -1.000000e+00, double 1.000000e+00, !dbg !1106
  call void @llvm.dbg.value(metadata double %cond.i1169.us, metadata !946, metadata !DIExpression()), !dbg !1103
  %mul.i1170.us = fmul double %gamma.3.us, %cond.i1169.us, !dbg !1107
  %cmp1.i1171.us = fcmp ult double %mul.i1170.us, 1.000000e-15, !dbg !1108
  br i1 %cmp1.i1171.us, label %if.end.i1175.us, label %if.then.i1173.us, !dbg !1109

if.then.i1173.us:                                 ; preds = %if.end333.us
  %div.i1172.us = fdiv double 1.000000e+00, %gamma.3.us, !dbg !1110
  br label %PerceptibleReciprocal.exit1177.us, !dbg !1111

if.end.i1175.us:                                  ; preds = %if.end333.us
  %div2.i1174.us = fdiv double %cond.i1169.us, 1.000000e-15, !dbg !1112
  br label %PerceptibleReciprocal.exit1177.us, !dbg !1113

PerceptibleReciprocal.exit1177.us:                ; preds = %if.end.i1175.us, %if.then.i1173.us
  %retval.0.i1176.us = phi double [ %div.i1172.us, %if.then.i1173.us ], [ %div2.i1174.us, %if.end.i1175.us ], !dbg !1103
  call void @llvm.dbg.value(metadata double %retval.0.i1176.us, metadata !685, metadata !DIExpression()), !dbg !934
  %opacity335.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1227, i64 0, i32 3, !dbg !1114
  %81 = load i16, ptr %opacity335.us, align 2, !dbg !1114, !tbaa !861
  %conv336.us = zext i16 %81 to i32, !dbg !1115
  %mul339.us = mul nuw nsw i32 %conv336.us, %conv318.us, !dbg !1116
  %opacity340.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1228, i64 0, i32 3, !dbg !1117
  %82 = load i16, ptr %opacity340.us, align 2, !dbg !1117, !tbaa !861
  %conv341.us = zext i16 %82 to i32, !dbg !1118
  %mul344.us = mul nuw nsw i32 %conv341.us, %conv323.us, !dbg !1119
  %add345.us = add nuw nsw i32 %mul344.us, %mul339.us, !dbg !1120
  %conv346.us = sitofp i32 %add345.us to double, !dbg !1121
  %mul347.us = fmul double %retval.0.i1176.us, %conv346.us, !dbg !1122
  %conv348.us = fptoui double %mul347.us to i16, !dbg !1123
  %opacity349.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1223, i64 0, i32 3, !dbg !1124
  store i16 %conv348.us, ptr %opacity349.us, align 2, !dbg !1125, !tbaa !861
  %83 = load i16, ptr %opacity340.us, align 2, !dbg !1126, !tbaa !861
  %conv351.us = zext i16 %83 to i32, !dbg !1127
  %84 = load i16, ptr %opacity317.us, align 2, !dbg !1128, !tbaa !861
  %conv353.us = zext i16 %84 to i32, !dbg !1129
  %mul354.us = mul nuw nsw i32 %conv353.us, %conv351.us, !dbg !1130
  %85 = load i16, ptr %opacity335.us, align 2, !dbg !1131, !tbaa !861
  %conv356.us = zext i16 %85 to i32, !dbg !1132
  %86 = load i16, ptr %opacity322.us, align 2, !dbg !1133, !tbaa !861
  %conv358.us = zext i16 %86 to i32, !dbg !1134
  %mul359.us = mul nuw nsw i32 %conv358.us, %conv356.us, !dbg !1135
  %sub360.us = sub nsw i32 %mul354.us, %mul359.us, !dbg !1136
  %conv361.us = sitofp i32 %sub360.us to double, !dbg !1137
  %mul362.us = fmul double %retval.0.i1176.us, %conv361.us, !dbg !1138
  %conv363.us = fptoui double %mul362.us to i16, !dbg !1139
  %opacity364.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1224, i64 0, i32 3, !dbg !1140
  store i16 %conv363.us, ptr %opacity364.us, align 2, !dbg !1141, !tbaa !861
  br label %sw.epilog.us1229, !dbg !1142

sw.epilog.us1229:                                 ; preds = %PerceptibleReciprocal.exit1177.us, %PerceptibleReciprocal.exit1167.us
  %incdec.ptr.us1236 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1227, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us1236, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us1237 = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1228, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us1237, metadata !673, metadata !DIExpression()), !dbg !803
  %incdec.ptr758.us1238 = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1225, i64 1, !dbg !874
  call void @llvm.dbg.value(metadata ptr %incdec.ptr758.us1238, metadata !680, metadata !DIExpression()), !dbg !803
  %incdec.ptr759.us1239 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1226, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759.us1239, metadata !679, metadata !DIExpression()), !dbg !803
  %incdec.ptr760.us1240 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1223, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us1240, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us1241 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1224, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us1241, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us1242 = add nuw nsw i64 %x.01195.us1222, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us1242, metadata !684, metadata !DIExpression()), !dbg !803
  %exitcond1327.not = icmp eq i64 %inc.us1242, %19, !dbg !818
  br i1 %exitcond1327.not, label %for.end, label %for.body81.us1221, !dbg !819, !llvm.loop !879

for.body81.us1245:                                ; preds = %for.body81.lr.ph, %sw.epilog.us1253
  %x.01195.us1246 = phi i64 [ %inc.us1266, %sw.epilog.us1253 ], [ 0, %for.body81.lr.ph ]
  %Cr.01193.us1247 = phi ptr [ %incdec.ptr760.us1264, %sw.epilog.us1253 ], [ %call63, %for.body81.lr.ph ]
  %Ci.01191.us1248 = phi ptr [ %incdec.ptr761.us1265, %sw.epilog.us1253 ], [ %call65, %for.body81.lr.ph ]
  %Ar.01185.us1251 = phi ptr [ %incdec.ptr.us1260, %sw.epilog.us1253 ], [ %call55, %for.body81.lr.ph ]
  %Ai.01183.us1252 = phi ptr [ %incdec.ptr757.us1261, %sw.epilog.us1253 ], [ %call57, %for.body81.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us1246, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us1247, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us1248, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us1251, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us1252, metadata !673, metadata !DIExpression()), !dbg !803
  %red367.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1251, i64 0, i32 2, !dbg !1143
  %87 = load i16, ptr %red367.us, align 2, !dbg !1143, !tbaa !827
  %conv368.us = zext i16 %87 to i32, !dbg !1145
  %mul371.us = mul nuw nsw i32 %conv368.us, %conv368.us, !dbg !1146
  %red372.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1252, i64 0, i32 2, !dbg !1147
  %88 = load i16, ptr %red372.us, align 2, !dbg !1147, !tbaa !827
  %conv373.us = zext i16 %88 to i32, !dbg !1148
  %mul376.us = mul nuw nsw i32 %conv373.us, %conv373.us, !dbg !1149
  %add377.us = add nuw nsw i32 %mul376.us, %mul371.us, !dbg !1150
  %conv378.us = sitofp i32 %add377.us to double, !dbg !1145
  %call379.us = call double @sqrt(double noundef %conv378.us) #6, !dbg !1151
  %conv380.us = fptoui double %call379.us to i16, !dbg !1151
  %red381.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1247, i64 0, i32 2, !dbg !1152
  store i16 %conv380.us, ptr %red381.us, align 2, !dbg !1153, !tbaa !827
  %89 = load i16, ptr %red372.us, align 2, !dbg !1154, !tbaa !827
  %conv383.us = uitofp i16 %89 to double, !dbg !1155
  %90 = load i16, ptr %red367.us, align 2, !dbg !1156, !tbaa !827
  %conv385.us = uitofp i16 %90 to double, !dbg !1157
  %call386.us = call double @atan2(double noundef %conv383.us, double noundef %conv385.us) #6, !dbg !1158
  %div.us = fdiv double %call386.us, 0x401921FB54442D18, !dbg !1159
  %add387.us = fadd double %div.us, 5.000000e-01, !dbg !1160
  %conv388.us = fptoui double %add387.us to i16, !dbg !1158
  %red389.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1248, i64 0, i32 2, !dbg !1161
  store i16 %conv388.us, ptr %red389.us, align 2, !dbg !1162, !tbaa !827
  %green390.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1251, i64 0, i32 1, !dbg !1163
  %91 = load i16, ptr %green390.us, align 2, !dbg !1163, !tbaa !838
  %conv391.us = zext i16 %91 to i32, !dbg !1164
  %mul394.us = mul nuw nsw i32 %conv391.us, %conv391.us, !dbg !1165
  %green395.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1252, i64 0, i32 1, !dbg !1166
  %92 = load i16, ptr %green395.us, align 2, !dbg !1166, !tbaa !838
  %conv396.us = zext i16 %92 to i32, !dbg !1167
  %mul399.us = mul nuw nsw i32 %conv396.us, %conv396.us, !dbg !1168
  %add400.us = add nuw nsw i32 %mul399.us, %mul394.us, !dbg !1169
  %conv401.us = sitofp i32 %add400.us to double, !dbg !1164
  %call402.us = call double @sqrt(double noundef %conv401.us) #6, !dbg !1170
  %conv403.us = fptoui double %call402.us to i16, !dbg !1170
  %green404.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1247, i64 0, i32 1, !dbg !1171
  store i16 %conv403.us, ptr %green404.us, align 2, !dbg !1172, !tbaa !838
  %93 = load i16, ptr %green395.us, align 2, !dbg !1173, !tbaa !838
  %conv406.us = uitofp i16 %93 to double, !dbg !1174
  %94 = load i16, ptr %green390.us, align 2, !dbg !1175, !tbaa !838
  %conv408.us = uitofp i16 %94 to double, !dbg !1176
  %call409.us = call double @atan2(double noundef %conv406.us, double noundef %conv408.us) #6, !dbg !1177
  %div410.us = fdiv double %call409.us, 0x401921FB54442D18, !dbg !1178
  %add411.us = fadd double %div410.us, 5.000000e-01, !dbg !1179
  %conv412.us = fptoui double %add411.us to i16, !dbg !1177
  %green413.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1248, i64 0, i32 1, !dbg !1180
  store i16 %conv412.us, ptr %green413.us, align 2, !dbg !1181, !tbaa !838
  %95 = load i16, ptr %Ar.01185.us1251, align 2, !dbg !1182, !tbaa !849
  %conv415.us = zext i16 %95 to i32, !dbg !1183
  %mul418.us = mul nuw nsw i32 %conv415.us, %conv415.us, !dbg !1184
  %96 = load i16, ptr %Ai.01183.us1252, align 2, !dbg !1185, !tbaa !849
  %conv420.us = zext i16 %96 to i32, !dbg !1186
  %mul423.us = mul nuw nsw i32 %conv420.us, %conv420.us, !dbg !1187
  %add424.us = add nuw nsw i32 %mul423.us, %mul418.us, !dbg !1188
  %conv425.us = sitofp i32 %add424.us to double, !dbg !1183
  %call426.us = call double @sqrt(double noundef %conv425.us) #6, !dbg !1189
  %conv427.us = fptoui double %call426.us to i16, !dbg !1189
  store i16 %conv427.us, ptr %Cr.01193.us1247, align 2, !dbg !1190, !tbaa !849
  %97 = load i16, ptr %Ai.01183.us1252, align 2, !dbg !1191, !tbaa !849
  %conv430.us = uitofp i16 %97 to double, !dbg !1192
  %98 = load i16, ptr %Ar.01185.us1251, align 2, !dbg !1193, !tbaa !849
  %conv432.us = uitofp i16 %98 to double, !dbg !1194
  %call433.us = call double @atan2(double noundef %conv430.us, double noundef %conv432.us) #6, !dbg !1195
  %div434.us = fdiv double %call433.us, 0x401921FB54442D18, !dbg !1196
  %add435.us = fadd double %div434.us, 5.000000e-01, !dbg !1197
  %conv436.us = fptoui double %add435.us to i16, !dbg !1195
  store i16 %conv436.us, ptr %Ci.01191.us1248, align 2, !dbg !1198, !tbaa !849
  %99 = load i32, ptr %matte666, align 8, !dbg !1199, !tbaa !824
  %cmp439.not.us = icmp eq i32 %99, 0, !dbg !1201
  br i1 %cmp439.not.us, label %sw.epilog.us1253, label %if.then441.us, !dbg !1202

if.then441.us:                                    ; preds = %for.body81.us1245
  %opacity442.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1251, i64 0, i32 3, !dbg !1203
  %100 = load i16, ptr %opacity442.us, align 2, !dbg !1203, !tbaa !861
  %conv443.us = zext i16 %100 to i32, !dbg !1205
  %mul446.us = mul nuw nsw i32 %conv443.us, %conv443.us, !dbg !1206
  %opacity447.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1252, i64 0, i32 3, !dbg !1207
  %101 = load i16, ptr %opacity447.us, align 2, !dbg !1207, !tbaa !861
  %conv448.us = zext i16 %101 to i32, !dbg !1208
  %mul451.us = mul nuw nsw i32 %conv448.us, %conv448.us, !dbg !1209
  %add452.us = add nuw nsw i32 %mul451.us, %mul446.us, !dbg !1210
  %conv453.us = sitofp i32 %add452.us to double, !dbg !1205
  %call454.us = call double @sqrt(double noundef %conv453.us) #6, !dbg !1211
  %conv455.us = fptoui double %call454.us to i16, !dbg !1211
  %opacity456.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1247, i64 0, i32 3, !dbg !1212
  store i16 %conv455.us, ptr %opacity456.us, align 2, !dbg !1213, !tbaa !861
  %102 = load i16, ptr %opacity447.us, align 2, !dbg !1214, !tbaa !861
  %conv458.us = uitofp i16 %102 to double, !dbg !1215
  %103 = load i16, ptr %opacity442.us, align 2, !dbg !1216, !tbaa !861
  %conv460.us = uitofp i16 %103 to double, !dbg !1217
  %call461.us = call double @atan2(double noundef %conv458.us, double noundef %conv460.us) #6, !dbg !1218
  %div462.us = fdiv double %call461.us, 0x401921FB54442D18, !dbg !1219
  %add463.us = fadd double %div462.us, 5.000000e-01, !dbg !1220
  %conv464.us = fptoui double %add463.us to i16, !dbg !1218
  %opacity465.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1248, i64 0, i32 3, !dbg !1221
  store i16 %conv464.us, ptr %opacity465.us, align 2, !dbg !1222, !tbaa !861
  br label %sw.epilog.us1253, !dbg !1223

sw.epilog.us1253:                                 ; preds = %if.then441.us, %for.body81.us1245
  %incdec.ptr.us1260 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1251, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us1260, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us1261 = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1252, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us1261, metadata !673, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  %incdec.ptr760.us1264 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1247, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us1264, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us1265 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1248, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us1265, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us1266 = add nuw nsw i64 %x.01195.us1246, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us1266, metadata !684, metadata !DIExpression()), !dbg !803
  %104 = load i64, ptr %columns, align 8, !dbg !817, !tbaa !732
  %cmp80.us1267 = icmp slt i64 %inc.us1266, %104, !dbg !818
  br i1 %cmp80.us1267, label %for.body81.us1245, label %for.end, !dbg !819, !llvm.loop !879

for.body81.lr.ph.split.us1268:                    ; preds = %for.body81.lr.ph
  %105 = load i32, ptr %matte666, align 8, !tbaa !824
  %cmp559.not.us = icmp eq i32 %105, 0
  br label %for.body81.us1269, !dbg !819

for.body81.us1269:                                ; preds = %sw.epilog.us1277, %for.body81.lr.ph.split.us1268
  %x.01195.us1270 = phi i64 [ 0, %for.body81.lr.ph.split.us1268 ], [ %inc.us1290, %sw.epilog.us1277 ]
  %Cr.01193.us1271 = phi ptr [ %call63, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr760.us1288, %sw.epilog.us1277 ]
  %Ci.01191.us1272 = phi ptr [ %call65, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr761.us1289, %sw.epilog.us1277 ]
  %Br.01189.us1273 = phi ptr [ %call59, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr758.us1286, %sw.epilog.us1277 ]
  %Bi.01187.us1274 = phi ptr [ %call61, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr759.us1287, %sw.epilog.us1277 ]
  %Ar.01185.us1275 = phi ptr [ %call55, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr.us1284, %sw.epilog.us1277 ]
  %Ai.01183.us1276 = phi ptr [ %call57, %for.body81.lr.ph.split.us1268 ], [ %incdec.ptr757.us1285, %sw.epilog.us1277 ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us1270, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us1271, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us1272, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Br.01189.us1273, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Bi.01187.us1274, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us1275, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us1276, metadata !673, metadata !DIExpression()), !dbg !803
  %red468.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1275, i64 0, i32 2, !dbg !1224
  %106 = load i16, ptr %red468.us, align 2, !dbg !1224, !tbaa !827
  %conv469.us = zext i16 %106 to i32, !dbg !1226
  %red470.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1273, i64 0, i32 2, !dbg !1227
  %107 = load i16, ptr %red470.us, align 2, !dbg !1227, !tbaa !827
  %conv471.us = zext i16 %107 to i32, !dbg !1228
  %mul472.us = mul nuw nsw i32 %conv471.us, %conv469.us, !dbg !1229
  %red473.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1276, i64 0, i32 2, !dbg !1230
  %108 = load i16, ptr %red473.us, align 2, !dbg !1230, !tbaa !827
  %conv474.us = zext i16 %108 to i32, !dbg !1231
  %red475.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1274, i64 0, i32 2, !dbg !1232
  %109 = load i16, ptr %red475.us, align 2, !dbg !1232, !tbaa !827
  %conv476.us = zext i16 %109 to i32, !dbg !1233
  %mul477.us = mul nuw nsw i32 %conv476.us, %conv474.us, !dbg !1234
  %sub478.us = sub nsw i32 %mul472.us, %mul477.us, !dbg !1235
  %conv479.us = sitofp i32 %sub478.us to double, !dbg !1236
  %mul480.us = fmul double %conv479.us, 0x3EF0001000100010, !dbg !1237
  %conv481.us = fptoui double %mul480.us to i16, !dbg !1238
  %red482.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1271, i64 0, i32 2, !dbg !1239
  store i16 %conv481.us, ptr %red482.us, align 2, !dbg !1240, !tbaa !827
  %110 = load i16, ptr %red473.us, align 2, !dbg !1241, !tbaa !827
  %conv484.us = zext i16 %110 to i32, !dbg !1242
  %111 = load i16, ptr %red470.us, align 2, !dbg !1243, !tbaa !827
  %conv486.us = zext i16 %111 to i32, !dbg !1244
  %mul487.us = mul nuw nsw i32 %conv486.us, %conv484.us, !dbg !1245
  %112 = load i16, ptr %red468.us, align 2, !dbg !1246, !tbaa !827
  %conv489.us = zext i16 %112 to i32, !dbg !1247
  %113 = load i16, ptr %red475.us, align 2, !dbg !1248, !tbaa !827
  %conv491.us = zext i16 %113 to i32, !dbg !1249
  %mul492.us = mul nuw nsw i32 %conv491.us, %conv489.us, !dbg !1250
  %add493.us = add nuw nsw i32 %mul492.us, %mul487.us, !dbg !1251
  %conv494.us = sitofp i32 %add493.us to double, !dbg !1252
  %mul495.us = fmul double %conv494.us, 0x3EF0001000100010, !dbg !1253
  %conv496.us = fptoui double %mul495.us to i16, !dbg !1254
  %red497.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1272, i64 0, i32 2, !dbg !1255
  store i16 %conv496.us, ptr %red497.us, align 2, !dbg !1256, !tbaa !827
  %green498.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1275, i64 0, i32 1, !dbg !1257
  %114 = load i16, ptr %green498.us, align 2, !dbg !1257, !tbaa !838
  %conv499.us = zext i16 %114 to i32, !dbg !1258
  %green500.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1273, i64 0, i32 1, !dbg !1259
  %115 = load i16, ptr %green500.us, align 2, !dbg !1259, !tbaa !838
  %conv501.us = zext i16 %115 to i32, !dbg !1260
  %mul502.us = mul nuw nsw i32 %conv501.us, %conv499.us, !dbg !1261
  %green503.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1276, i64 0, i32 1, !dbg !1262
  %116 = load i16, ptr %green503.us, align 2, !dbg !1262, !tbaa !838
  %conv504.us = zext i16 %116 to i32, !dbg !1263
  %green505.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1274, i64 0, i32 1, !dbg !1264
  %117 = load i16, ptr %green505.us, align 2, !dbg !1264, !tbaa !838
  %conv506.us = zext i16 %117 to i32, !dbg !1265
  %mul507.us = mul nuw nsw i32 %conv506.us, %conv504.us, !dbg !1266
  %sub508.us = sub nsw i32 %mul502.us, %mul507.us, !dbg !1267
  %conv509.us = sitofp i32 %sub508.us to double, !dbg !1268
  %mul510.us = fmul double %conv509.us, 0x3EF0001000100010, !dbg !1269
  %conv511.us = fptoui double %mul510.us to i16, !dbg !1270
  %green512.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1271, i64 0, i32 1, !dbg !1271
  store i16 %conv511.us, ptr %green512.us, align 2, !dbg !1272, !tbaa !838
  %118 = load i16, ptr %green503.us, align 2, !dbg !1273, !tbaa !838
  %conv514.us = zext i16 %118 to i32, !dbg !1274
  %119 = load i16, ptr %green500.us, align 2, !dbg !1275, !tbaa !838
  %conv516.us = zext i16 %119 to i32, !dbg !1276
  %mul517.us = mul nuw nsw i32 %conv516.us, %conv514.us, !dbg !1277
  %120 = load i16, ptr %green498.us, align 2, !dbg !1278, !tbaa !838
  %conv519.us = zext i16 %120 to i32, !dbg !1279
  %121 = load i16, ptr %green505.us, align 2, !dbg !1280, !tbaa !838
  %conv521.us = zext i16 %121 to i32, !dbg !1281
  %mul522.us = mul nuw nsw i32 %conv521.us, %conv519.us, !dbg !1282
  %add523.us = add nuw nsw i32 %mul522.us, %mul517.us, !dbg !1283
  %conv524.us = sitofp i32 %add523.us to double, !dbg !1284
  %mul525.us = fmul double %conv524.us, 0x3EF0001000100010, !dbg !1285
  %conv526.us = fptoui double %mul525.us to i16, !dbg !1286
  %green527.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1272, i64 0, i32 1, !dbg !1287
  store i16 %conv526.us, ptr %green527.us, align 2, !dbg !1288, !tbaa !838
  %122 = load i16, ptr %Ar.01185.us1275, align 2, !dbg !1289, !tbaa !849
  %conv529.us = zext i16 %122 to i32, !dbg !1290
  %123 = load i16, ptr %Br.01189.us1273, align 2, !dbg !1291, !tbaa !849
  %conv531.us = zext i16 %123 to i32, !dbg !1292
  %mul532.us = mul nuw nsw i32 %conv531.us, %conv529.us, !dbg !1293
  %124 = load i16, ptr %Ai.01183.us1276, align 2, !dbg !1294, !tbaa !849
  %conv534.us = zext i16 %124 to i32, !dbg !1295
  %125 = load i16, ptr %Bi.01187.us1274, align 2, !dbg !1296, !tbaa !849
  %conv536.us = zext i16 %125 to i32, !dbg !1297
  %mul537.us = mul nuw nsw i32 %conv536.us, %conv534.us, !dbg !1298
  %sub538.us = sub nsw i32 %mul532.us, %mul537.us, !dbg !1299
  %conv539.us = sitofp i32 %sub538.us to double, !dbg !1300
  %mul540.us = fmul double %conv539.us, 0x3EF0001000100010, !dbg !1301
  %conv541.us = fptoui double %mul540.us to i16, !dbg !1302
  store i16 %conv541.us, ptr %Cr.01193.us1271, align 2, !dbg !1303, !tbaa !849
  %126 = load i16, ptr %Ai.01183.us1276, align 2, !dbg !1304, !tbaa !849
  %conv544.us = zext i16 %126 to i32, !dbg !1305
  %127 = load i16, ptr %Br.01189.us1273, align 2, !dbg !1306, !tbaa !849
  %conv546.us = zext i16 %127 to i32, !dbg !1307
  %mul547.us = mul nuw nsw i32 %conv546.us, %conv544.us, !dbg !1308
  %128 = load i16, ptr %Ar.01185.us1275, align 2, !dbg !1309, !tbaa !849
  %conv549.us = zext i16 %128 to i32, !dbg !1310
  %129 = load i16, ptr %Bi.01187.us1274, align 2, !dbg !1311, !tbaa !849
  %conv551.us = zext i16 %129 to i32, !dbg !1312
  %mul552.us = mul nuw nsw i32 %conv551.us, %conv549.us, !dbg !1313
  %add553.us = add nuw nsw i32 %mul552.us, %mul547.us, !dbg !1314
  %conv554.us = sitofp i32 %add553.us to double, !dbg !1315
  %mul555.us = fmul double %conv554.us, 0x3EF0001000100010, !dbg !1316
  %conv556.us = fptoui double %mul555.us to i16, !dbg !1317
  store i16 %conv556.us, ptr %Ci.01191.us1272, align 2, !dbg !1318, !tbaa !849
  br i1 %cmp559.not.us, label %sw.epilog.us1277, label %if.then561.us, !dbg !1319

if.then561.us:                                    ; preds = %for.body81.us1269
  %opacity562.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1275, i64 0, i32 3, !dbg !1320
  %130 = load i16, ptr %opacity562.us, align 2, !dbg !1320, !tbaa !861
  %conv563.us = zext i16 %130 to i32, !dbg !1323
  %opacity564.us = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1273, i64 0, i32 3, !dbg !1324
  %131 = load i16, ptr %opacity564.us, align 2, !dbg !1324, !tbaa !861
  %conv565.us = zext i16 %131 to i32, !dbg !1325
  %mul566.us = mul nuw nsw i32 %conv565.us, %conv563.us, !dbg !1326
  %opacity567.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1276, i64 0, i32 3, !dbg !1327
  %132 = load i16, ptr %opacity567.us, align 2, !dbg !1327, !tbaa !861
  %conv568.us = zext i16 %132 to i32, !dbg !1328
  %opacity569.us = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1274, i64 0, i32 3, !dbg !1329
  %133 = load i16, ptr %opacity569.us, align 2, !dbg !1329, !tbaa !861
  %conv570.us = zext i16 %133 to i32, !dbg !1330
  %mul571.us = mul nuw nsw i32 %conv570.us, %conv568.us, !dbg !1331
  %sub572.us = sub nsw i32 %mul566.us, %mul571.us, !dbg !1332
  %conv573.us = sitofp i32 %sub572.us to double, !dbg !1333
  %mul574.us = fmul double %conv573.us, 0x3EF0001000100010, !dbg !1334
  %conv575.us = fptoui double %mul574.us to i16, !dbg !1335
  %opacity576.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1271, i64 0, i32 3, !dbg !1336
  store i16 %conv575.us, ptr %opacity576.us, align 2, !dbg !1337, !tbaa !861
  %134 = load i16, ptr %opacity567.us, align 2, !dbg !1338, !tbaa !861
  %conv578.us = zext i16 %134 to i32, !dbg !1339
  %135 = load i16, ptr %opacity564.us, align 2, !dbg !1340, !tbaa !861
  %conv580.us = zext i16 %135 to i32, !dbg !1341
  %mul581.us = mul nuw nsw i32 %conv580.us, %conv578.us, !dbg !1342
  %136 = load i16, ptr %opacity562.us, align 2, !dbg !1343, !tbaa !861
  %conv583.us = zext i16 %136 to i32, !dbg !1344
  %137 = load i16, ptr %opacity569.us, align 2, !dbg !1345, !tbaa !861
  %conv585.us = zext i16 %137 to i32, !dbg !1346
  %mul586.us = mul nuw nsw i32 %conv585.us, %conv583.us, !dbg !1347
  %add587.us = add nuw nsw i32 %mul586.us, %mul581.us, !dbg !1348
  %conv588.us = sitofp i32 %add587.us to double, !dbg !1349
  %mul589.us = fmul double %conv588.us, 0x3EF0001000100010, !dbg !1350
  %conv590.us = fptoui double %mul589.us to i16, !dbg !1351
  %opacity591.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1272, i64 0, i32 3, !dbg !1352
  store i16 %conv590.us, ptr %opacity591.us, align 2, !dbg !1353, !tbaa !861
  br label %sw.epilog.us1277, !dbg !1354

sw.epilog.us1277:                                 ; preds = %if.then561.us, %for.body81.us1269
  %incdec.ptr.us1284 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1275, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us1284, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us1285 = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1276, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us1285, metadata !673, metadata !DIExpression()), !dbg !803
  %incdec.ptr758.us1286 = getelementptr inbounds %struct._PixelPacket, ptr %Br.01189.us1273, i64 1, !dbg !874
  call void @llvm.dbg.value(metadata ptr %incdec.ptr758.us1286, metadata !680, metadata !DIExpression()), !dbg !803
  %incdec.ptr759.us1287 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187.us1274, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759.us1287, metadata !679, metadata !DIExpression()), !dbg !803
  %incdec.ptr760.us1288 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1271, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us1288, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us1289 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1272, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us1289, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us1290 = add nuw nsw i64 %x.01195.us1270, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us1290, metadata !684, metadata !DIExpression()), !dbg !803
  %exitcond.not = icmp eq i64 %inc.us1290, %19, !dbg !818
  br i1 %exitcond.not, label %for.end, label %for.body81.us1269, !dbg !819, !llvm.loop !879

for.body81.us1293:                                ; preds = %for.body81.lr.ph, %sw.epilog.us1301
  %x.01195.us1294 = phi i64 [ %inc.us1314, %sw.epilog.us1301 ], [ 0, %for.body81.lr.ph ]
  %Cr.01193.us1295 = phi ptr [ %incdec.ptr760.us1312, %sw.epilog.us1301 ], [ %call63, %for.body81.lr.ph ]
  %Ci.01191.us1296 = phi ptr [ %incdec.ptr761.us1313, %sw.epilog.us1301 ], [ %call65, %for.body81.lr.ph ]
  %Ar.01185.us1299 = phi ptr [ %incdec.ptr.us1308, %sw.epilog.us1301 ], [ %call55, %for.body81.lr.ph ]
  %Ai.01183.us1300 = phi ptr [ %incdec.ptr757.us1309, %sw.epilog.us1301 ], [ %call57, %for.body81.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.01195.us1294, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193.us1295, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191.us1296, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185.us1299, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ai.01183.us1300, metadata !673, metadata !DIExpression()), !dbg !803
  %red594.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1299, i64 0, i32 2, !dbg !1355
  %138 = load i16, ptr %red594.us, align 2, !dbg !1355, !tbaa !827
  %conv596.us = uitofp i16 %138 to double, !dbg !1357
  %red597.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1300, i64 0, i32 2, !dbg !1358
  %139 = load i16, ptr %red597.us, align 2, !dbg !1358, !tbaa !827
  %conv599.us = uitofp i16 %139 to double, !dbg !1359
  %sub600.us = fadd double %conv599.us, -5.000000e-01, !dbg !1360
  %mul601.us = fmul double %sub600.us, 0x401921FB54442D18, !dbg !1361
  %call602.us = call double @cos(double noundef %mul601.us) #6, !dbg !1362
  %mul603.us = fmul double %call602.us, %conv596.us, !dbg !1363
  %conv604.us = fptoui double %mul603.us to i16, !dbg !1357
  %red605.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1295, i64 0, i32 2, !dbg !1364
  store i16 %conv604.us, ptr %red605.us, align 2, !dbg !1365, !tbaa !827
  %140 = load i16, ptr %red594.us, align 2, !dbg !1366, !tbaa !827
  %conv608.us = uitofp i16 %140 to double, !dbg !1367
  %141 = load i16, ptr %red597.us, align 2, !dbg !1368, !tbaa !827
  %conv611.us = uitofp i16 %141 to double, !dbg !1369
  %sub612.us = fadd double %conv611.us, -5.000000e-01, !dbg !1370
  %mul613.us = fmul double %sub612.us, 0x401921FB54442D18, !dbg !1371
  %call614.us = call double @sin(double noundef %mul613.us) #6, !dbg !1372
  %mul615.us = fmul double %call614.us, %conv608.us, !dbg !1373
  %conv616.us = fptoui double %mul615.us to i16, !dbg !1367
  %red617.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1296, i64 0, i32 2, !dbg !1374
  store i16 %conv616.us, ptr %red617.us, align 2, !dbg !1375, !tbaa !827
  %green618.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1299, i64 0, i32 1, !dbg !1376
  %142 = load i16, ptr %green618.us, align 2, !dbg !1376, !tbaa !838
  %conv620.us = uitofp i16 %142 to double, !dbg !1377
  %green621.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1300, i64 0, i32 1, !dbg !1378
  %143 = load i16, ptr %green621.us, align 2, !dbg !1378, !tbaa !838
  %conv623.us = uitofp i16 %143 to double, !dbg !1379
  %sub624.us = fadd double %conv623.us, -5.000000e-01, !dbg !1380
  %mul625.us = fmul double %sub624.us, 0x401921FB54442D18, !dbg !1381
  %call626.us = call double @cos(double noundef %mul625.us) #6, !dbg !1382
  %mul627.us = fmul double %call626.us, %conv620.us, !dbg !1383
  %conv628.us = fptoui double %mul627.us to i16, !dbg !1377
  %green629.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1295, i64 0, i32 1, !dbg !1384
  store i16 %conv628.us, ptr %green629.us, align 2, !dbg !1385, !tbaa !838
  %144 = load i16, ptr %green618.us, align 2, !dbg !1386, !tbaa !838
  %conv632.us = uitofp i16 %144 to double, !dbg !1387
  %145 = load i16, ptr %green621.us, align 2, !dbg !1388, !tbaa !838
  %conv635.us = uitofp i16 %145 to double, !dbg !1389
  %sub636.us = fadd double %conv635.us, -5.000000e-01, !dbg !1390
  %mul637.us = fmul double %sub636.us, 0x401921FB54442D18, !dbg !1391
  %call638.us = call double @sin(double noundef %mul637.us) #6, !dbg !1392
  %mul639.us = fmul double %call638.us, %conv632.us, !dbg !1393
  %conv640.us = fptoui double %mul639.us to i16, !dbg !1387
  %green641.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1296, i64 0, i32 1, !dbg !1394
  store i16 %conv640.us, ptr %green641.us, align 2, !dbg !1395, !tbaa !838
  %146 = load i16, ptr %Ar.01185.us1299, align 2, !dbg !1396, !tbaa !849
  %conv644.us = uitofp i16 %146 to double, !dbg !1397
  %147 = load i16, ptr %Ai.01183.us1300, align 2, !dbg !1398, !tbaa !849
  %conv647.us = uitofp i16 %147 to double, !dbg !1399
  %sub648.us = fadd double %conv647.us, -5.000000e-01, !dbg !1400
  %mul649.us = fmul double %sub648.us, 0x401921FB54442D18, !dbg !1401
  %call650.us = call double @cos(double noundef %mul649.us) #6, !dbg !1402
  %mul651.us = fmul double %call650.us, %conv644.us, !dbg !1403
  %conv652.us = fptoui double %mul651.us to i16, !dbg !1397
  store i16 %conv652.us, ptr %Cr.01193.us1295, align 2, !dbg !1404, !tbaa !849
  %148 = load i16, ptr %Ar.01185.us1299, align 2, !dbg !1405, !tbaa !849
  %conv656.us = uitofp i16 %148 to double, !dbg !1406
  %149 = load i16, ptr %Ai.01183.us1300, align 2, !dbg !1407, !tbaa !849
  %conv659.us = uitofp i16 %149 to double, !dbg !1408
  %sub660.us = fadd double %conv659.us, -5.000000e-01, !dbg !1409
  %mul661.us = fmul double %sub660.us, 0x401921FB54442D18, !dbg !1410
  %call662.us = call double @sin(double noundef %mul661.us) #6, !dbg !1411
  %mul663.us = fmul double %call662.us, %conv656.us, !dbg !1412
  %conv664.us = fptoui double %mul663.us to i16, !dbg !1406
  store i16 %conv664.us, ptr %Ci.01191.us1296, align 2, !dbg !1413, !tbaa !849
  %150 = load i32, ptr %matte666, align 8, !dbg !1414, !tbaa !824
  %cmp667.not.us = icmp eq i32 %150, 0, !dbg !1416
  br i1 %cmp667.not.us, label %sw.epilog.us1301, label %if.then669.us, !dbg !1417

if.then669.us:                                    ; preds = %for.body81.us1293
  %opacity670.us = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1299, i64 0, i32 3, !dbg !1418
  %151 = load i16, ptr %opacity670.us, align 2, !dbg !1418, !tbaa !861
  %conv672.us = uitofp i16 %151 to double, !dbg !1420
  %opacity673.us = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1300, i64 0, i32 3, !dbg !1421
  %152 = load i16, ptr %opacity673.us, align 2, !dbg !1421, !tbaa !861
  %conv675.us = uitofp i16 %152 to double, !dbg !1422
  %sub676.us = fadd double %conv675.us, -5.000000e-01, !dbg !1423
  %mul677.us = fmul double %sub676.us, 0x401921FB54442D18, !dbg !1424
  %call678.us = call double @cos(double noundef %mul677.us) #6, !dbg !1425
  %mul679.us = fmul double %call678.us, %conv672.us, !dbg !1426
  %conv680.us = fptoui double %mul679.us to i16, !dbg !1420
  %opacity681.us = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1295, i64 0, i32 3, !dbg !1427
  store i16 %conv680.us, ptr %opacity681.us, align 2, !dbg !1428, !tbaa !861
  %153 = load i16, ptr %opacity670.us, align 2, !dbg !1429, !tbaa !861
  %conv684.us = uitofp i16 %153 to double, !dbg !1430
  %154 = load i16, ptr %opacity673.us, align 2, !dbg !1431, !tbaa !861
  %conv687.us = uitofp i16 %154 to double, !dbg !1432
  %sub688.us = fadd double %conv687.us, -5.000000e-01, !dbg !1433
  %mul689.us = fmul double %sub688.us, 0x401921FB54442D18, !dbg !1434
  %call690.us = call double @sin(double noundef %mul689.us) #6, !dbg !1435
  %mul691.us = fmul double %call690.us, %conv684.us, !dbg !1436
  %conv692.us = fptoui double %mul691.us to i16, !dbg !1430
  %opacity693.us = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1296, i64 0, i32 3, !dbg !1437
  store i16 %conv692.us, ptr %opacity693.us, align 2, !dbg !1438, !tbaa !861
  br label %sw.epilog.us1301, !dbg !1439

sw.epilog.us1301:                                 ; preds = %if.then669.us, %for.body81.us1293
  %incdec.ptr.us1308 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185.us1299, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us1308, metadata !678, metadata !DIExpression()), !dbg !803
  %incdec.ptr757.us1309 = getelementptr inbounds %struct._PixelPacket, ptr %Ai.01183.us1300, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr757.us1309, metadata !673, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  %incdec.ptr760.us1312 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193.us1295, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760.us1312, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761.us1313 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191.us1296, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761.us1313, metadata !681, metadata !DIExpression()), !dbg !803
  %inc.us1314 = add nuw nsw i64 %x.01195.us1294, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc.us1314, metadata !684, metadata !DIExpression()), !dbg !803
  %155 = load i64, ptr %columns, align 8, !dbg !817, !tbaa !732
  %cmp80.us1315 = icmp slt i64 %inc.us1314, %155, !dbg !818
  br i1 %cmp80.us1315, label %for.body81.us1293, label %for.end, !dbg !819, !llvm.loop !879

for.body81:                                       ; preds = %for.body81.preheader, %sw.epilog
  %x.01195 = phi i64 [ %inc, %sw.epilog ], [ 0, %for.body81.preheader ]
  %Cr.01193 = phi ptr [ %incdec.ptr760, %sw.epilog ], [ %call63, %for.body81.preheader ]
  %Ci.01191 = phi ptr [ %incdec.ptr761, %sw.epilog ], [ %call65, %for.body81.preheader ]
  %Bi.01187 = phi ptr [ %incdec.ptr759, %sw.epilog ], [ %call61, %for.body81.preheader ]
  %Ar.01185 = phi ptr [ %incdec.ptr, %sw.epilog ], [ %call55, %for.body81.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.01195, metadata !684, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Cr.01193, metadata !683, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ci.01191, metadata !681, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Bi.01187, metadata !679, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %Ar.01185, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !673, metadata !DIExpression()), !dbg !803
  %red137 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185, i64 0, i32 2, !dbg !1440
  %156 = load i16, ptr %red137, align 2, !dbg !1440, !tbaa !827
  %red138 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193, i64 0, i32 2, !dbg !1441
  store i16 %156, ptr %red138, align 2, !dbg !1442, !tbaa !827
  %red139 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187, i64 0, i32 2, !dbg !1443
  %157 = load i16, ptr %red139, align 2, !dbg !1443, !tbaa !827
  %sub = sub i16 0, %157, !dbg !1444
  %red142 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191, i64 0, i32 2, !dbg !1445
  store i16 %sub, ptr %red142, align 2, !dbg !1446, !tbaa !827
  %green143 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185, i64 0, i32 1, !dbg !1447
  %158 = load i16, ptr %green143, align 2, !dbg !1447, !tbaa !838
  %green144 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193, i64 0, i32 1, !dbg !1448
  store i16 %158, ptr %green144, align 2, !dbg !1449, !tbaa !838
  %green145 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187, i64 0, i32 1, !dbg !1450
  %159 = load i16, ptr %green145, align 2, !dbg !1450, !tbaa !838
  %sub147 = sub i16 0, %159, !dbg !1451
  %green149 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191, i64 0, i32 1, !dbg !1452
  store i16 %sub147, ptr %green149, align 2, !dbg !1453, !tbaa !838
  %160 = load i16, ptr %Ar.01185, align 2, !dbg !1454, !tbaa !849
  store i16 %160, ptr %Cr.01193, align 2, !dbg !1455, !tbaa !849
  %161 = load i16, ptr %Bi.01187, align 2, !dbg !1456, !tbaa !849
  %sub154 = sub i16 0, %161, !dbg !1457
  store i16 %sub154, ptr %Ci.01191, align 2, !dbg !1458, !tbaa !849
  br i1 %cmp158.not, label %sw.epilog, label %if.then160, !dbg !1459

if.then160:                                       ; preds = %for.body81
  %opacity161 = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185, i64 0, i32 3, !dbg !1460
  %162 = load i16, ptr %opacity161, align 2, !dbg !1460, !tbaa !861
  %opacity162 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193, i64 0, i32 3, !dbg !1462
  store i16 %162, ptr %opacity162, align 2, !dbg !1463, !tbaa !861
  %opacity163 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187, i64 0, i32 3, !dbg !1464
  %163 = load i16, ptr %opacity163, align 2, !dbg !1464, !tbaa !861
  %sub165 = sub i16 0, %163, !dbg !1465
  %opacity167 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191, i64 0, i32 3, !dbg !1466
  store i16 %sub165, ptr %opacity167, align 2, !dbg !1467, !tbaa !861
  br label %sw.epilog, !dbg !1468

sw.epilog:                                        ; preds = %for.body81, %if.then160
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %Ar.01185, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !678, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !673, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  call void @llvm.dbg.value(metadata ptr poison, metadata !680, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !803
  %incdec.ptr759 = getelementptr inbounds %struct._PixelPacket, ptr %Bi.01187, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759, metadata !679, metadata !DIExpression()), !dbg !803
  %incdec.ptr760 = getelementptr inbounds %struct._PixelPacket, ptr %Cr.01193, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %incdec.ptr760, metadata !683, metadata !DIExpression()), !dbg !803
  %incdec.ptr761 = getelementptr inbounds %struct._PixelPacket, ptr %Ci.01191, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr761, metadata !681, metadata !DIExpression()), !dbg !803
  %inc = add nuw nsw i64 %x.01195, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %inc, metadata !684, metadata !DIExpression()), !dbg !803
  %cmp80 = icmp slt i64 %inc, %19, !dbg !818
  br i1 %cmp80, label %for.body81, label %for.end, !dbg !819, !llvm.loop !879

for.end:                                          ; preds = %sw.epilog.us1301, %sw.epilog.us1277, %sw.epilog.us1253, %sw.epilog.us1229, %sw.epilog.us1205, %sw.epilog.us, %sw.epilog, %for.cond78.preheader
  %call762 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call48, ptr noundef %exception) #7, !dbg !1469
  %cmp763 = icmp ne i32 %call762, 0, !dbg !1471
  call void @llvm.dbg.value(metadata i1 %cmp763, metadata !670, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !694
  %call767 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call47, ptr noundef %exception) #7, !dbg !1472
  %cmp768 = icmp ne i32 %call767, 0, !dbg !1474
  %narrow = select i1 %cmp768, i1 %cmp763, i1 false, !dbg !1475
  %spec.select1147 = zext i1 %narrow to i32, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %spec.select1147, metadata !670, metadata !DIExpression()), !dbg !694
  %164 = load ptr, ptr %progress_monitor, align 8, !dbg !1476, !tbaa !1477
  %cmp772.not = icmp eq ptr %164, null, !dbg !1478
  br i1 %cmp772.not, label %cleanup, label %SetImageProgress.exit, !dbg !1479

SetImageProgress.exit:                            ; preds = %for.end
  %inc775 = add nsw i64 %progress.01318, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %inc775, metadata !671, metadata !DIExpression()), !dbg !694
  %165 = load i64, ptr %rows, align 8, !dbg !1481, !tbaa !734
  call void @llvm.dbg.value(metadata ptr %images, metadata !1482, metadata !DIExpression()) #6, !dbg !1492
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !1488, metadata !DIExpression()) #6, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %progress.01318, metadata !1489, metadata !DIExpression()) #6, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %165, metadata !1490, metadata !DIExpression()) #6, !dbg !1492
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1494
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1491, metadata !DIExpression()) #6, !dbg !1495
  %call.i1179 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename.i) #6, !dbg !1496
  %166 = load ptr, ptr %progress_monitor, align 8, !dbg !1497, !tbaa !1477
  %167 = load ptr, ptr %client_data.i, align 8, !dbg !1498, !tbaa !1499
  %call4.i = call i32 %166(ptr noundef nonnull %message.i, i64 noundef %progress.01318, i64 noundef %165, ptr noundef %167) #6, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !691, metadata !DIExpression()), !dbg !1502
  %cmp778 = icmp eq i32 %call4.i, 0, !dbg !1503
  %spec.select1146 = select i1 %cmp778, i32 0, i32 %spec.select1147, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %spec.select1146, metadata !670, metadata !DIExpression()), !dbg !694
  br label %cleanup, !dbg !1506

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end53, %for.body
  %status.5 = phi i32 [ 0, %for.body ], [ 0, %if.end53 ], [ %spec.select1146, %SetImageProgress.exit ], [ %spec.select1147, %for.end ], !dbg !694
  %progress.2 = phi i64 [ %progress.01318, %for.body ], [ %progress.01318, %if.end53 ], [ %inc775, %SetImageProgress.exit ], [ %progress.01318, %for.end ], !dbg !694
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !671, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !670, metadata !DIExpression()), !dbg !694
  %inc790 = add nuw nsw i64 %y.01319, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %inc790, metadata !672, metadata !DIExpression()), !dbg !694
  %168 = load i64, ptr %rows, align 8, !dbg !795, !tbaa !734
  %cmp50 = icmp slt i64 %inc790, %168, !dbg !796
  br i1 %cmp50, label %for.body, label %for.end791, !dbg !797, !llvm.loop !1508

for.end791:                                       ; preds = %cleanup, %if.end41
  %status.0.lcssa = phi i32 [ 1, %if.end41 ], [ %status.5, %cleanup ], !dbg !1510
  %call792 = call ptr @DestroyCacheView(ptr noundef %call47) #6, !dbg !1511
  call void @llvm.dbg.value(metadata ptr %call792, metadata !659, metadata !DIExpression()), !dbg !694
  %call793 = call ptr @DestroyCacheView(ptr noundef %call48) #6, !dbg !1512
  call void @llvm.dbg.value(metadata ptr %call793, metadata !658, metadata !DIExpression()), !dbg !694
  %call794 = call ptr @DestroyCacheView(ptr noundef %call45) #6, !dbg !1513
  call void @llvm.dbg.value(metadata ptr %call794, metadata !657, metadata !DIExpression()), !dbg !694
  %call795 = call ptr @DestroyCacheView(ptr noundef %call46) #6, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %call795, metadata !656, metadata !DIExpression()), !dbg !694
  %call796 = call ptr @DestroyCacheView(ptr noundef %call43) #6, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %call796, metadata !655, metadata !DIExpression()), !dbg !694
  %call797 = call ptr @DestroyCacheView(ptr noundef %call44) #6, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %call797, metadata !650, metadata !DIExpression()), !dbg !694
  %cmp798 = icmp eq i32 %status.0.lcssa, 0, !dbg !1517
  %169 = load ptr, ptr %complex_images, align 8, !dbg !694, !tbaa !746
  br i1 %cmp798, label %if.then800, label %cleanup803, !dbg !1519

if.then800:                                       ; preds = %for.end791
  call void @llvm.dbg.value(metadata ptr %169, metadata !667, metadata !DIExpression()), !dbg !694
  %call801 = call ptr @DestroyImageList(ptr noundef %169) #6, !dbg !1520
  call void @llvm.dbg.value(metadata ptr %call801, metadata !667, metadata !DIExpression()), !dbg !694
  br label %cleanup803, !dbg !1521

cleanup803:                                       ; preds = %for.end791, %if.then800, %if.end6, %if.then16, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ %call17, %if.then16 ], [ null, %if.end6 ], [ %call801, %if.then800 ], [ %169, %for.end791 ], !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %complex_images) #6, !dbg !1522
  ret ptr %retval.0, !dbg !1522
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1523 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1530 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1534 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1538 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !1542 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1546 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare !dbg !1549 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1553 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1556 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1557 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1563 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !1566 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1569 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ForwardFourierTransformImage(ptr noundef %image, i32 noundef %modulus, ptr noundef %exception) local_unnamed_addr #0 !dbg !1572 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1576, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i32 %modulus, metadata !1577, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1578, metadata !DIExpression()), !dbg !1580
  %call = tail call ptr @NewImageList() #6, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %call, metadata !1579, metadata !DIExpression()), !dbg !1580
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1582
  %call1 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1014, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #6, !dbg !1583
  ret ptr %call, !dbg !1584
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @InverseFourierTransformImage(ptr noundef %magnitude_image, ptr noundef readnone %phase_image, i32 noundef %modulus, ptr noundef %exception) local_unnamed_addr #0 !dbg !1585 {
entry:
  call void @llvm.dbg.value(metadata ptr %magnitude_image, metadata !1589, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata ptr %phase_image, metadata !1590, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %modulus, metadata !1591, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1592, metadata !DIExpression()), !dbg !1594
  %debug = getelementptr inbounds %struct._Image, ptr %magnitude_image, i64 0, i32 59, !dbg !1595
  %0 = load i32, ptr %debug, align 8, !dbg !1595, !tbaa !698
  %cmp.not = icmp eq i32 %0, 0, !dbg !1597
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1598

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %magnitude_image, i64 0, i32 53, !dbg !1599
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !1600
  br label %if.end, !dbg !1601

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %phase_image, null, !dbg !1602
  %filename3 = getelementptr inbounds %struct._Image, ptr %magnitude_image, i64 0, i32 53, !dbg !1594
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1604

if.then2:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1630, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename3) #6, !dbg !1605
  br label %cleanup, !dbg !1607

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr null, metadata !1593, metadata !DIExpression()), !dbg !1594
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1637, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename3) #6, !dbg !1608
  br label %cleanup, !dbg !1609

cleanup:                                          ; preds = %if.end6, %if.then2
  ret ptr null, !dbg !1610
}

declare !dbg !1611 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1613 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!630, !631, !632, !633, !634, !635}
!llvm.ident = !{!636}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !404, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/fourier.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "fc88b8927bfb9581c6a302d631c50450")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !379}
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
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 25, baseType: !5, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/fourier.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "dabff1ba42f2a160d6c306363b996f01")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378}
!371 = !DIEnumerator(name: "UndefinedComplexOperator", value: 0)
!372 = !DIEnumerator(name: "AddComplexOperator", value: 1)
!373 = !DIEnumerator(name: "ConjugateComplexOperator", value: 2)
!374 = !DIEnumerator(name: "DivideComplexOperator", value: 3)
!375 = !DIEnumerator(name: "MagnitudePhaseComplexOperator", value: 4)
!376 = !DIEnumerator(name: "MultiplyComplexOperator", value: 5)
!377 = !DIEnumerator(name: "RealImaginaryComplexOperator", value: 6)
!378 = !DIEnumerator(name: "SubtractComplexOperator", value: 7)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !380, line: 34, baseType: !5, size: 32, elements: !381)
!380 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!382 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!383 = !DIEnumerator(name: "NoEvents", value: 0)
!384 = !DIEnumerator(name: "TraceEvent", value: 1)
!385 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!386 = !DIEnumerator(name: "BlobEvent", value: 4)
!387 = !DIEnumerator(name: "CacheEvent", value: 8)
!388 = !DIEnumerator(name: "CoderEvent", value: 16)
!389 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!390 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!391 = !DIEnumerator(name: "DrawEvent", value: 128)
!392 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!393 = !DIEnumerator(name: "ImageEvent", value: 512)
!394 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!395 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!396 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!397 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!398 = !DIEnumerator(name: "TransformEvent", value: 16384)
!399 = !DIEnumerator(name: "UserEvent", value: 36864)
!400 = !DIEnumerator(name: "WandEvent", value: 65536)
!401 = !DIEnumerator(name: "X11Event", value: 131072)
!402 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!403 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!404 = !{!405, !406, !461, !539, !627, !470, !628, !429, !443, !434, !534}
!405 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !409)
!409 = !{!410, !412, !414, !416, !419, !421, !423, !424, !425, !426, !427, !428, !439, !440, !441, !442, !444, !458, !460, !462, !464, !467, !468, !469, !475, !476, !477, !485, !486, !487, !488, !489, !490, !492, !494, !496, !498, !500, !502, !504, !505, !506, !507, !508, !509, !510, !518, !533, !547, !548, !549, !550, !554, !558, !562, !563, !564, !565, !566, !584, !585, !587, !588, !598, !599, !601, !602, !603, !604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !616, !617, !618, !619, !620, !624, !626}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !408, file: !73, line: 153, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !408, file: !73, line: 156, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !408, file: !73, line: 159, baseType: !415, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !408, file: !73, line: 162, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !418, line: 46, baseType: !405)
!418 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !408, file: !73, line: 165, baseType: !420, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !408, file: !73, line: 168, baseType: !422, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !408, file: !73, line: 169, baseType: !422, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !408, file: !73, line: 172, baseType: !417, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !408, file: !73, line: 173, baseType: !417, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !408, file: !73, line: 174, baseType: !417, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !408, file: !73, line: 175, baseType: !417, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !408, file: !73, line: 178, baseType: !429, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !432)
!432 = !{!433, !436, !437, !438}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !431, file: !326, line: 143, baseType: !434, size: 16)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !435)
!435 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !431, file: !326, line: 144, baseType: !434, size: 16, offset: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !431, file: !326, line: 145, baseType: !434, size: 16, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !431, file: !326, line: 146, baseType: !434, size: 16, offset: 48)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !408, file: !73, line: 179, baseType: !430, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !408, file: !73, line: 180, baseType: !430, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !408, file: !73, line: 181, baseType: !430, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !408, file: !73, line: 184, baseType: !443, size: 64, offset: 832)
!443 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !408, file: !73, line: 187, baseType: !445, size: 768, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !447)
!447 = !{!448, !455, !456, !457}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !446, file: !73, line: 124, baseType: !449, size: 192)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !450, file: !73, line: 98, baseType: !443, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !450, file: !73, line: 99, baseType: !443, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !450, file: !73, line: 100, baseType: !443, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !446, file: !73, line: 125, baseType: !449, size: 192, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !446, file: !73, line: 126, baseType: !449, size: 192, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !446, file: !73, line: 127, baseType: !449, size: 192, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !408, file: !73, line: 190, baseType: !459, size: 32, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !408, file: !73, line: 193, baseType: !461, size: 64, offset: 1728)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !408, file: !73, line: 196, baseType: !463, size: 32, offset: 1792)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !408, file: !73, line: 199, baseType: !465, size: 64, offset: 1856)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !408, file: !73, line: 200, baseType: !465, size: 64, offset: 1920)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !408, file: !73, line: 201, baseType: !465, size: 64, offset: 1984)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !408, file: !73, line: 204, baseType: !470, size: 64, offset: 2048)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !471, line: 77, baseType: !472)
!471 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !473, line: 193, baseType: !474)
!473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!474 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !408, file: !73, line: 207, baseType: !443, size: 64, offset: 2112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !408, file: !73, line: 208, baseType: !443, size: 64, offset: 2176)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !408, file: !73, line: 211, baseType: !478, size: 256, offset: 2240)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !480)
!480 = !{!481, !482, !483, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !479, file: !153, line: 124, baseType: !417, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !479, file: !153, line: 125, baseType: !417, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !479, file: !153, line: 128, baseType: !470, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !479, file: !153, line: 129, baseType: !470, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !408, file: !73, line: 212, baseType: !478, size: 256, offset: 2496)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !408, file: !73, line: 213, baseType: !478, size: 256, offset: 2752)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !408, file: !73, line: 216, baseType: !443, size: 64, offset: 3008)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !408, file: !73, line: 217, baseType: !443, size: 64, offset: 3072)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !408, file: !73, line: 218, baseType: !443, size: 64, offset: 3136)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !408, file: !73, line: 221, baseType: !491, size: 32, offset: 3200)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !408, file: !73, line: 224, baseType: !493, size: 32, offset: 3232)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !408, file: !73, line: 227, baseType: !495, size: 32, offset: 3264)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !408, file: !73, line: 230, baseType: !497, size: 32, offset: 3296)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !408, file: !73, line: 233, baseType: !499, size: 32, offset: 3328)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !408, file: !73, line: 236, baseType: !501, size: 32, offset: 3360)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !408, file: !73, line: 239, baseType: !503, size: 64, offset: 3392)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !408, file: !73, line: 242, baseType: !417, size: 64, offset: 3456)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !408, file: !73, line: 243, baseType: !417, size: 64, offset: 3520)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !408, file: !73, line: 246, baseType: !470, size: 64, offset: 3584)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !408, file: !73, line: 249, baseType: !417, size: 64, offset: 3648)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !408, file: !73, line: 250, baseType: !417, size: 64, offset: 3712)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !408, file: !73, line: 253, baseType: !470, size: 64, offset: 3776)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !408, file: !73, line: 256, baseType: !511, size: 192, offset: 3840)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !512, line: 68, baseType: !513)
!512 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !512, line: 62, size: 192, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !513, file: !512, line: 65, baseType: !443, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !513, file: !512, line: 66, baseType: !443, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !513, file: !512, line: 67, baseType: !443, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !408, file: !73, line: 259, baseType: !519, size: 512, offset: 4032)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !521)
!521 = !{!522, !529, !530, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !520, file: !247, line: 43, baseType: !523, size: 192)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !524, file: !247, line: 35, baseType: !443, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !524, file: !247, line: 36, baseType: !443, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !524, file: !247, line: 37, baseType: !443, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !520, file: !247, line: 44, baseType: !523, size: 192, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !520, file: !247, line: 47, baseType: !531, size: 32, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !520, file: !247, line: 50, baseType: !417, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !408, file: !73, line: 262, baseType: !534, size: 64, offset: 4544)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !535, line: 26, baseType: !536)
!535 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!422, !539, !541, !544, !461}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !543)
!543 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !546)
!546 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !408, file: !73, line: 265, baseType: !461, size: 64, offset: 4608)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !408, file: !73, line: 266, baseType: !461, size: 64, offset: 4672)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !408, file: !73, line: 267, baseType: !461, size: 64, offset: 4736)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !408, file: !73, line: 270, baseType: !551, size: 64, offset: 4800)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !408, file: !73, line: 273, baseType: !555, size: 64, offset: 4864)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !408, file: !73, line: 276, baseType: !559, size: 32768, offset: 4928)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 32768, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 4096)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !408, file: !73, line: 277, baseType: !559, size: 32768, offset: 37696)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !408, file: !73, line: 278, baseType: !559, size: 32768, offset: 70464)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !408, file: !73, line: 281, baseType: !417, size: 64, offset: 103232)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !408, file: !73, line: 282, baseType: !417, size: 64, offset: 103296)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !408, file: !73, line: 285, baseType: !567, size: 448, offset: 103360)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !569)
!569 = !{!570, !572, !574, !575, !576, !577, !578, !583}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !568, file: !253, line: 105, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !568, file: !253, line: 108, baseType: !573, size: 32, offset: 32)
!573 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !568, file: !253, line: 111, baseType: !465, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !568, file: !253, line: 112, baseType: !465, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !568, file: !253, line: 115, baseType: !461, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !568, file: !253, line: 118, baseType: !422, size: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !568, file: !253, line: 121, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !581, line: 26, baseType: !582)
!581 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !581, line: 25, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !568, file: !253, line: 124, baseType: !417, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !408, file: !73, line: 288, baseType: !422, size: 32, offset: 103808)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !408, file: !73, line: 291, baseType: !586, size: 64, offset: 103872)
!586 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !470)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !408, file: !73, line: 294, baseType: !579, size: 64, offset: 103936)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !408, file: !73, line: 297, baseType: !589, size: 256, offset: 104000)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !591)
!591 = !{!592, !593, !594, !597}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !89, line: 30, baseType: !465, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !590, file: !89, line: 33, baseType: !417, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !590, file: !89, line: 36, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !590, file: !89, line: 39, baseType: !417, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !408, file: !73, line: 298, baseType: !589, size: 256, offset: 104256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !408, file: !73, line: 299, baseType: !600, size: 64, offset: 104512)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !408, file: !73, line: 302, baseType: !417, size: 64, offset: 104576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !408, file: !73, line: 305, baseType: !417, size: 64, offset: 104640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !408, file: !73, line: 308, baseType: !503, size: 64, offset: 104704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !408, file: !73, line: 309, baseType: !503, size: 64, offset: 104768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !73, line: 310, baseType: !503, size: 64, offset: 104832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !408, file: !73, line: 313, baseType: !607, size: 32, offset: 104896)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !408, file: !73, line: 316, baseType: !422, size: 32, offset: 104928)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !408, file: !73, line: 319, baseType: !430, size: 64, offset: 104960)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !408, file: !73, line: 322, baseType: !503, size: 64, offset: 105024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !408, file: !73, line: 325, baseType: !478, size: 256, offset: 105088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !408, file: !73, line: 328, baseType: !461, size: 64, offset: 105344)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !408, file: !73, line: 329, baseType: !461, size: 64, offset: 105408)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !73, line: 332, baseType: !615, size: 32, offset: 105472)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !408, file: !73, line: 335, baseType: !422, size: 32, offset: 105504)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !408, file: !73, line: 338, baseType: !545, size: 64, offset: 105536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !408, file: !73, line: 341, baseType: !422, size: 32, offset: 105600)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !408, file: !73, line: 344, baseType: !417, size: 64, offset: 105664)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !408, file: !73, line: 347, baseType: !621, size: 64, offset: 105728)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !622, line: 7, baseType: !623)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !473, line: 160, baseType: !474)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !408, file: !73, line: 350, baseType: !625, size: 32, offset: 105792)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !408, file: !73, line: 353, baseType: !417, size: 64, offset: 105856)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!630 = !{i32 7, !"Dwarf Version", i32 5}
!631 = !{i32 2, !"Debug Info Version", i32 3}
!632 = !{i32 1, !"wchar_size", i32 4}
!633 = !{i32 7, !"PIC Level", i32 2}
!634 = !{i32 7, !"PIE Level", i32 2}
!635 = !{i32 7, !"uwtable", i32 2}
!636 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!637 = distinct !DISubprogram(name: "ComplexImages", scope: !638, file: !638, line: 130, type: !639, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !646)
!638 = !DIFile(filename: "apps/538.imagick_r/src/magick/fourier.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fc88b8927bfb9581c6a302d631c50450")
!639 = !DISubroutineType(types: !640)
!640 = !{!406, !641, !643, !645}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ComplexOperator", file: !369, line: 35, baseType: !368)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!646 = !{!647, !648, !649, !650, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !678, !679, !680, !681, !683, !684, !685, !691}
!647 = !DILocalVariable(name: "images", arg: 1, scope: !637, file: !638, line: 130, type: !641)
!648 = !DILocalVariable(name: "op", arg: 2, scope: !637, file: !638, line: 130, type: !643)
!649 = !DILocalVariable(name: "exception", arg: 3, scope: !637, file: !638, line: 131, type: !645)
!650 = !DILocalVariable(name: "Ai_view", scope: !637, file: !638, line: 136, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !653, line: 50, baseType: !654)
!653 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!655 = !DILocalVariable(name: "Ar_view", scope: !637, file: !638, line: 137, type: !651)
!656 = !DILocalVariable(name: "Bi_view", scope: !637, file: !638, line: 138, type: !651)
!657 = !DILocalVariable(name: "Br_view", scope: !637, file: !638, line: 139, type: !651)
!658 = !DILocalVariable(name: "Ci_view", scope: !637, file: !638, line: 140, type: !651)
!659 = !DILocalVariable(name: "Cr_view", scope: !637, file: !638, line: 141, type: !651)
!660 = !DILocalVariable(name: "artifact", scope: !637, file: !638, line: 144, type: !539)
!661 = !DILocalVariable(name: "Ai_image", scope: !637, file: !638, line: 147, type: !641)
!662 = !DILocalVariable(name: "Ar_image", scope: !637, file: !638, line: 148, type: !641)
!663 = !DILocalVariable(name: "Bi_image", scope: !637, file: !638, line: 149, type: !641)
!664 = !DILocalVariable(name: "Br_image", scope: !637, file: !638, line: 150, type: !641)
!665 = !DILocalVariable(name: "snr", scope: !637, file: !638, line: 153, type: !443)
!666 = !DILocalVariable(name: "Ci_image", scope: !637, file: !638, line: 156, type: !406)
!667 = !DILocalVariable(name: "complex_images", scope: !637, file: !638, line: 157, type: !406)
!668 = !DILocalVariable(name: "Cr_image", scope: !637, file: !638, line: 158, type: !406)
!669 = !DILocalVariable(name: "image", scope: !637, file: !638, line: 159, type: !406)
!670 = !DILocalVariable(name: "status", scope: !637, file: !638, line: 162, type: !422)
!671 = !DILocalVariable(name: "progress", scope: !637, file: !638, line: 165, type: !542)
!672 = !DILocalVariable(name: "y", scope: !637, file: !638, line: 168, type: !470)
!673 = !DILocalVariable(name: "Ai", scope: !674, file: !638, line: 232, type: !677)
!674 = distinct !DILexicalBlock(scope: !675, file: !638, line: 230, column: 3)
!675 = distinct !DILexicalBlock(scope: !676, file: !638, line: 229, column: 3)
!676 = distinct !DILexicalBlock(scope: !637, file: !638, line: 229, column: 3)
!677 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !628)
!678 = !DILocalVariable(name: "Ar", scope: !674, file: !638, line: 233, type: !677)
!679 = !DILocalVariable(name: "Bi", scope: !674, file: !638, line: 234, type: !677)
!680 = !DILocalVariable(name: "Br", scope: !674, file: !638, line: 235, type: !677)
!681 = !DILocalVariable(name: "Ci", scope: !674, file: !638, line: 238, type: !682)
!682 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !429)
!683 = !DILocalVariable(name: "Cr", scope: !674, file: !638, line: 239, type: !682)
!684 = !DILocalVariable(name: "x", scope: !674, file: !638, line: 242, type: !470)
!685 = !DILocalVariable(name: "gamma", scope: !686, file: !638, line: 299, type: !443)
!686 = distinct !DILexicalBlock(scope: !687, file: !638, line: 297, column: 9)
!687 = distinct !DILexicalBlock(scope: !688, file: !638, line: 264, column: 7)
!688 = distinct !DILexicalBlock(scope: !689, file: !638, line: 262, column: 5)
!689 = distinct !DILexicalBlock(scope: !690, file: !638, line: 261, column: 5)
!690 = distinct !DILexicalBlock(scope: !674, file: !638, line: 261, column: 5)
!691 = !DILocalVariable(name: "proceed", scope: !692, file: !638, line: 424, type: !422)
!692 = distinct !DILexicalBlock(scope: !693, file: !638, line: 422, column: 7)
!693 = distinct !DILexicalBlock(scope: !674, file: !638, line: 421, column: 9)
!694 = !DILocation(line: 0, scope: !637)
!695 = !DILocation(line: 155, column: 3, scope: !637)
!696 = !DILocation(line: 172, column: 15, scope: !697)
!697 = distinct !DILexicalBlock(scope: !637, file: !638, line: 172, column: 7)
!698 = !{!699, !700, i64 12976}
!699 = !{!"_Image", !700, i64 0, !700, i64 4, !700, i64 8, !702, i64 16, !700, i64 24, !700, i64 28, !700, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !703, i64 72, !704, i64 80, !704, i64 88, !704, i64 96, !706, i64 104, !707, i64 112, !700, i64 208, !703, i64 216, !700, i64 224, !703, i64 232, !703, i64 240, !703, i64 248, !702, i64 256, !706, i64 264, !706, i64 272, !709, i64 280, !709, i64 312, !709, i64 344, !706, i64 376, !706, i64 384, !706, i64 392, !700, i64 400, !700, i64 404, !700, i64 408, !700, i64 412, !700, i64 416, !700, i64 420, !703, i64 424, !702, i64 432, !702, i64 440, !702, i64 448, !702, i64 456, !702, i64 464, !702, i64 472, !710, i64 480, !711, i64 504, !703, i64 568, !703, i64 576, !703, i64 584, !703, i64 592, !703, i64 600, !703, i64 608, !700, i64 616, !700, i64 4712, !700, i64 8808, !702, i64 12904, !702, i64 12912, !713, i64 12920, !700, i64 12976, !702, i64 12984, !703, i64 12992, !715, i64 13000, !715, i64 13032, !703, i64 13064, !702, i64 13072, !702, i64 13080, !703, i64 13088, !703, i64 13096, !703, i64 13104, !700, i64 13112, !700, i64 13116, !704, i64 13120, !703, i64 13128, !709, i64 13136, !703, i64 13168, !703, i64 13176, !700, i64 13184, !700, i64 13188, !716, i64 13192, !700, i64 13200, !702, i64 13208, !702, i64 13216, !700, i64 13224, !702, i64 13232}
!700 = !{!"omnipotent char", !701, i64 0}
!701 = !{!"Simple C/C++ TBAA"}
!702 = !{!"long", !700, i64 0}
!703 = !{!"any pointer", !700, i64 0}
!704 = !{!"_PixelPacket", !705, i64 0, !705, i64 2, !705, i64 4, !705, i64 6}
!705 = !{!"short", !700, i64 0}
!706 = !{!"double", !700, i64 0}
!707 = !{!"_ChromaticityInfo", !708, i64 0, !708, i64 24, !708, i64 48, !708, i64 72}
!708 = !{!"_PrimaryInfo", !706, i64 0, !706, i64 8, !706, i64 16}
!709 = !{!"_RectangleInfo", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24}
!710 = !{!"_ErrorInfo", !706, i64 0, !706, i64 8, !706, i64 16}
!711 = !{!"_TimerInfo", !712, i64 0, !712, i64 24, !700, i64 48, !702, i64 56}
!712 = !{!"_Timer", !706, i64 0, !706, i64 8, !706, i64 16}
!713 = !{!"_ExceptionInfo", !700, i64 0, !714, i64 4, !703, i64 8, !703, i64 16, !703, i64 24, !700, i64 32, !703, i64 40, !702, i64 48}
!714 = !{!"int", !700, i64 0}
!715 = !{!"_ProfileInfo", !703, i64 0, !702, i64 8, !703, i64 16, !702, i64 24}
!716 = !{!"long long", !700, i64 0}
!717 = !DILocation(line: 172, column: 21, scope: !697)
!718 = !DILocation(line: 172, column: 7, scope: !637)
!719 = !DILocation(line: 173, column: 69, scope: !697)
!720 = !DILocation(line: 173, column: 12, scope: !697)
!721 = !DILocation(line: 173, column: 5, scope: !697)
!722 = !DILocation(line: 176, column: 15, scope: !723)
!723 = distinct !DILexicalBlock(scope: !637, file: !638, line: 176, column: 7)
!724 = !{!699, !703, i64 13104}
!725 = !DILocation(line: 176, column: 20, scope: !723)
!726 = !DILocation(line: 176, column: 7, scope: !637)
!727 = !DILocation(line: 179, column: 48, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !638, line: 177, column: 5)
!729 = !DILocation(line: 178, column: 14, scope: !728)
!730 = !DILocation(line: 180, column: 7, scope: !728)
!731 = !DILocation(line: 182, column: 35, scope: !637)
!732 = !{!699, !702, i64 40}
!733 = !DILocation(line: 182, column: 51, scope: !637)
!734 = !{!699, !702, i64 48}
!735 = !DILocation(line: 182, column: 9, scope: !637)
!736 = !DILocation(line: 183, column: 13, scope: !737)
!737 = distinct !DILexicalBlock(scope: !637, file: !638, line: 183, column: 7)
!738 = !DILocation(line: 183, column: 7, scope: !637)
!739 = !DILocation(line: 185, column: 23, scope: !637)
!740 = !{!699, !700, i64 0}
!741 = !DILocation(line: 186, column: 10, scope: !637)
!742 = !DILocation(line: 186, column: 15, scope: !637)
!743 = !{!699, !702, i64 56}
!744 = !DILocation(line: 187, column: 18, scope: !637)
!745 = !DILocation(line: 187, column: 17, scope: !637)
!746 = !{!703, !703, i64 0}
!747 = !DILocation(line: 188, column: 3, scope: !637)
!748 = !DILocation(line: 189, column: 35, scope: !637)
!749 = !DILocation(line: 189, column: 51, scope: !637)
!750 = !DILocation(line: 189, column: 9, scope: !637)
!751 = !DILocation(line: 190, column: 13, scope: !752)
!752 = distinct !DILexicalBlock(scope: !637, file: !638, line: 190, column: 7)
!753 = !DILocation(line: 190, column: 7, scope: !637)
!754 = !DILocation(line: 192, column: 39, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !638, line: 191, column: 5)
!756 = !DILocation(line: 192, column: 22, scope: !755)
!757 = !DILocation(line: 193, column: 7, scope: !755)
!758 = !DILocation(line: 195, column: 23, scope: !637)
!759 = !DILocation(line: 196, column: 10, scope: !637)
!760 = !DILocation(line: 196, column: 15, scope: !637)
!761 = !DILocation(line: 197, column: 3, scope: !637)
!762 = !DILocation(line: 201, column: 12, scope: !637)
!763 = !DILocation(line: 203, column: 16, scope: !764)
!764 = distinct !DILexicalBlock(scope: !637, file: !638, line: 203, column: 7)
!765 = !DILocation(line: 203, column: 7, scope: !637)
!766 = !DILocalVariable(name: "string", arg: 1, scope: !767, file: !768, line: 42, type: !771)
!767 = distinct !DISubprogram(name: "StringToDouble", scope: !768, file: !768, line: 42, type: !769, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !773)
!768 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!769 = !DISubroutineType(types: !770)
!770 = !{!443, !771, !772}
!771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !539)
!772 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !627)
!773 = !{!766, !774}
!774 = !DILocalVariable(name: "sentinal", arg: 2, scope: !767, file: !768, line: 43, type: !772)
!775 = !DILocation(line: 0, scope: !767, inlinedAt: !776)
!776 = distinct !DILocation(line: 204, column: 9, scope: !764)
!777 = !DILocation(line: 45, column: 10, scope: !767, inlinedAt: !776)
!778 = !DILocation(line: 204, column: 5, scope: !764)
!779 = !DILocation(line: 206, column: 20, scope: !637)
!780 = !DILocation(line: 209, column: 22, scope: !781)
!781 = distinct !DILexicalBlock(scope: !637, file: !638, line: 209, column: 7)
!782 = !DILocation(line: 209, column: 27, scope: !781)
!783 = !DILocation(line: 209, column: 46, scope: !781)
!784 = !DILocation(line: 210, column: 28, scope: !781)
!785 = !DILocation(line: 210, column: 33, scope: !781)
!786 = !DILocation(line: 209, column: 7, scope: !637)
!787 = !DILocation(line: 215, column: 12, scope: !637)
!788 = !DILocation(line: 216, column: 28, scope: !637)
!789 = !DILocation(line: 217, column: 11, scope: !637)
!790 = !DILocation(line: 218, column: 11, scope: !637)
!791 = !DILocation(line: 219, column: 11, scope: !637)
!792 = !DILocation(line: 220, column: 11, scope: !637)
!793 = !DILocation(line: 221, column: 11, scope: !637)
!794 = !DILocation(line: 222, column: 11, scope: !637)
!795 = !DILocation(line: 229, column: 35, scope: !675)
!796 = !DILocation(line: 229, column: 15, scope: !675)
!797 = !DILocation(line: 229, column: 3, scope: !676)
!798 = !DILocation(line: 244, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !674, file: !638, line: 244, column: 9)
!800 = !DILocation(line: 244, column: 9, scope: !674)
!801 = !DILocation(line: 246, column: 54, scope: !674)
!802 = !DILocation(line: 246, column: 8, scope: !674)
!803 = !DILocation(line: 0, scope: !674)
!804 = !DILocation(line: 247, column: 54, scope: !674)
!805 = !DILocation(line: 247, column: 8, scope: !674)
!806 = !DILocation(line: 248, column: 54, scope: !674)
!807 = !DILocation(line: 248, column: 8, scope: !674)
!808 = !DILocation(line: 249, column: 54, scope: !674)
!809 = !DILocation(line: 249, column: 8, scope: !674)
!810 = !DILocation(line: 250, column: 58, scope: !674)
!811 = !DILocation(line: 250, column: 8, scope: !674)
!812 = !DILocation(line: 251, column: 58, scope: !674)
!813 = !DILocation(line: 251, column: 8, scope: !674)
!814 = !DILocation(line: 252, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !674, file: !638, line: 252, column: 9)
!816 = !DILocation(line: 252, column: 44, scope: !815)
!817 = !DILocation(line: 261, column: 37, scope: !689)
!818 = !DILocation(line: 261, column: 17, scope: !689)
!819 = !DILocation(line: 261, column: 5, scope: !690)
!820 = !DILocation(line: 263, column: 7, scope: !688)
!821 = !DILocation(line: 289, column: 23, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !638, line: 289, column: 15)
!823 = distinct !DILexicalBlock(scope: !687, file: !638, line: 282, column: 9)
!824 = !{!699, !700, i64 32}
!825 = !DILocation(line: 267, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !687, file: !638, line: 266, column: 9)
!827 = !{!704, !705, i64 4}
!828 = !DILocation(line: 267, column: 31, scope: !826)
!829 = !DILocation(line: 267, column: 26, scope: !826)
!830 = !DILocation(line: 267, column: 15, scope: !826)
!831 = !DILocation(line: 267, column: 18, scope: !826)
!832 = !DILocation(line: 268, column: 23, scope: !826)
!833 = !DILocation(line: 268, column: 31, scope: !826)
!834 = !DILocation(line: 268, column: 26, scope: !826)
!835 = !DILocation(line: 268, column: 15, scope: !826)
!836 = !DILocation(line: 268, column: 18, scope: !826)
!837 = !DILocation(line: 269, column: 25, scope: !826)
!838 = !{!704, !705, i64 2}
!839 = !DILocation(line: 269, column: 35, scope: !826)
!840 = !DILocation(line: 269, column: 30, scope: !826)
!841 = !DILocation(line: 269, column: 15, scope: !826)
!842 = !DILocation(line: 269, column: 20, scope: !826)
!843 = !DILocation(line: 270, column: 25, scope: !826)
!844 = !DILocation(line: 270, column: 35, scope: !826)
!845 = !DILocation(line: 270, column: 30, scope: !826)
!846 = !DILocation(line: 270, column: 15, scope: !826)
!847 = !DILocation(line: 270, column: 20, scope: !826)
!848 = !DILocation(line: 271, column: 24, scope: !826)
!849 = !{!704, !705, i64 0}
!850 = !DILocation(line: 271, column: 33, scope: !826)
!851 = !DILocation(line: 271, column: 28, scope: !826)
!852 = !DILocation(line: 271, column: 19, scope: !826)
!853 = !DILocation(line: 272, column: 24, scope: !826)
!854 = !DILocation(line: 272, column: 33, scope: !826)
!855 = !DILocation(line: 272, column: 28, scope: !826)
!856 = !DILocation(line: 272, column: 19, scope: !826)
!857 = !DILocation(line: 273, column: 15, scope: !826)
!858 = !DILocation(line: 275, column: 31, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !638, line: 274, column: 13)
!860 = distinct !DILexicalBlock(scope: !826, file: !638, line: 273, column: 15)
!861 = !{!704, !705, i64 6}
!862 = !DILocation(line: 275, column: 43, scope: !859)
!863 = !DILocation(line: 275, column: 38, scope: !859)
!864 = !DILocation(line: 275, column: 19, scope: !859)
!865 = !DILocation(line: 275, column: 26, scope: !859)
!866 = !DILocation(line: 276, column: 31, scope: !859)
!867 = !DILocation(line: 276, column: 43, scope: !859)
!868 = !DILocation(line: 276, column: 38, scope: !859)
!869 = !DILocation(line: 276, column: 19, scope: !859)
!870 = !DILocation(line: 276, column: 26, scope: !859)
!871 = !DILocation(line: 277, column: 13, scope: !859)
!872 = !DILocation(line: 410, column: 9, scope: !688)
!873 = !DILocation(line: 411, column: 9, scope: !688)
!874 = !DILocation(line: 412, column: 9, scope: !688)
!875 = !DILocation(line: 413, column: 9, scope: !688)
!876 = !DILocation(line: 414, column: 9, scope: !688)
!877 = !DILocation(line: 415, column: 9, scope: !688)
!878 = !DILocation(line: 261, column: 47, scope: !689)
!879 = distinct !{!879, !819, !880, !881, !882}
!880 = !DILocation(line: 416, column: 5, scope: !690)
!881 = !{!"llvm.loop.mustprogress"}
!882 = !{!"llvm.loop.unroll.disable"}
!883 = !DILocation(line: 396, column: 23, scope: !884)
!884 = distinct !DILexicalBlock(scope: !687, file: !638, line: 395, column: 9)
!885 = !DILocation(line: 396, column: 31, scope: !884)
!886 = !DILocation(line: 396, column: 26, scope: !884)
!887 = !DILocation(line: 396, column: 15, scope: !884)
!888 = !DILocation(line: 396, column: 18, scope: !884)
!889 = !DILocation(line: 397, column: 23, scope: !884)
!890 = !DILocation(line: 397, column: 31, scope: !884)
!891 = !DILocation(line: 397, column: 26, scope: !884)
!892 = !DILocation(line: 397, column: 15, scope: !884)
!893 = !DILocation(line: 397, column: 18, scope: !884)
!894 = !DILocation(line: 398, column: 25, scope: !884)
!895 = !DILocation(line: 398, column: 35, scope: !884)
!896 = !DILocation(line: 398, column: 30, scope: !884)
!897 = !DILocation(line: 398, column: 15, scope: !884)
!898 = !DILocation(line: 398, column: 20, scope: !884)
!899 = !DILocation(line: 399, column: 25, scope: !884)
!900 = !DILocation(line: 399, column: 35, scope: !884)
!901 = !DILocation(line: 399, column: 30, scope: !884)
!902 = !DILocation(line: 399, column: 15, scope: !884)
!903 = !DILocation(line: 399, column: 20, scope: !884)
!904 = !DILocation(line: 400, column: 24, scope: !884)
!905 = !DILocation(line: 400, column: 33, scope: !884)
!906 = !DILocation(line: 400, column: 28, scope: !884)
!907 = !DILocation(line: 400, column: 19, scope: !884)
!908 = !DILocation(line: 401, column: 24, scope: !884)
!909 = !DILocation(line: 401, column: 33, scope: !884)
!910 = !DILocation(line: 401, column: 28, scope: !884)
!911 = !DILocation(line: 401, column: 19, scope: !884)
!912 = !DILocation(line: 402, column: 15, scope: !884)
!913 = !DILocation(line: 404, column: 31, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !638, line: 403, column: 13)
!915 = distinct !DILexicalBlock(scope: !884, file: !638, line: 402, column: 15)
!916 = !DILocation(line: 404, column: 43, scope: !914)
!917 = !DILocation(line: 404, column: 38, scope: !914)
!918 = !DILocation(line: 404, column: 19, scope: !914)
!919 = !DILocation(line: 404, column: 26, scope: !914)
!920 = !DILocation(line: 405, column: 31, scope: !914)
!921 = !DILocation(line: 405, column: 43, scope: !914)
!922 = !DILocation(line: 405, column: 38, scope: !914)
!923 = !DILocation(line: 405, column: 19, scope: !914)
!924 = !DILocation(line: 405, column: 26, scope: !914)
!925 = !DILocation(line: 406, column: 13, scope: !914)
!926 = !DILocation(line: 302, column: 22, scope: !686)
!927 = !DILocation(line: 302, column: 18, scope: !686)
!928 = !DILocation(line: 302, column: 25, scope: !686)
!929 = !DILocation(line: 302, column: 38, scope: !686)
!930 = !DILocation(line: 302, column: 34, scope: !686)
!931 = !DILocation(line: 302, column: 41, scope: !686)
!932 = !DILocation(line: 302, column: 33, scope: !686)
!933 = !DILocation(line: 302, column: 49, scope: !686)
!934 = !DILocation(line: 0, scope: !686)
!935 = !DILocation(line: 303, column: 21, scope: !936)
!936 = distinct !DILexicalBlock(scope: !686, file: !638, line: 303, column: 15)
!937 = !DILocation(line: 303, column: 15, scope: !686)
!938 = !DILocation(line: 303, column: 28, scope: !936)
!939 = !DILocalVariable(name: "x", arg: 1, scope: !940, file: !941, line: 78, type: !944)
!940 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !941, file: !941, line: 78, type: !942, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !945)
!941 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!942 = !DISubroutineType(types: !943)
!943 = !{!443, !944}
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!945 = !{!939, !946}
!946 = !DILocalVariable(name: "sign", scope: !940, file: !941, line: 81, type: !443)
!947 = !DILocation(line: 0, scope: !940, inlinedAt: !948)
!948 = distinct !DILocation(line: 304, column: 17, scope: !686)
!949 = !DILocation(line: 86, column: 10, scope: !940, inlinedAt: !948)
!950 = !DILocation(line: 86, column: 8, scope: !940, inlinedAt: !948)
!951 = !DILocation(line: 87, column: 12, scope: !952, inlinedAt: !948)
!952 = distinct !DILexicalBlock(scope: !940, file: !941, line: 87, column: 7)
!953 = !DILocation(line: 87, column: 16, scope: !952, inlinedAt: !948)
!954 = !DILocation(line: 87, column: 7, scope: !940, inlinedAt: !948)
!955 = !DILocation(line: 88, column: 15, scope: !952, inlinedAt: !948)
!956 = !DILocation(line: 88, column: 5, scope: !952, inlinedAt: !948)
!957 = !DILocation(line: 89, column: 14, scope: !940, inlinedAt: !948)
!958 = !DILocation(line: 89, column: 3, scope: !940, inlinedAt: !948)
!959 = !DILocation(line: 308, column: 30, scope: !686)
!960 = !DILocation(line: 308, column: 26, scope: !686)
!961 = !DILocation(line: 308, column: 33, scope: !686)
!962 = !DILocation(line: 308, column: 46, scope: !686)
!963 = !DILocation(line: 308, column: 42, scope: !686)
!964 = !DILocation(line: 308, column: 49, scope: !686)
!965 = !DILocation(line: 308, column: 41, scope: !686)
!966 = !DILocation(line: 308, column: 25, scope: !686)
!967 = !DILocation(line: 308, column: 24, scope: !686)
!968 = !DILocation(line: 308, column: 19, scope: !686)
!969 = !DILocation(line: 308, column: 15, scope: !686)
!970 = !DILocation(line: 308, column: 18, scope: !686)
!971 = !DILocation(line: 309, column: 30, scope: !686)
!972 = !DILocation(line: 309, column: 26, scope: !686)
!973 = !DILocation(line: 309, column: 38, scope: !686)
!974 = !DILocation(line: 309, column: 34, scope: !686)
!975 = !DILocation(line: 309, column: 33, scope: !686)
!976 = !DILocation(line: 309, column: 46, scope: !686)
!977 = !DILocation(line: 309, column: 42, scope: !686)
!978 = !DILocation(line: 309, column: 54, scope: !686)
!979 = !DILocation(line: 309, column: 50, scope: !686)
!980 = !DILocation(line: 309, column: 49, scope: !686)
!981 = !DILocation(line: 309, column: 41, scope: !686)
!982 = !DILocation(line: 309, column: 25, scope: !686)
!983 = !DILocation(line: 309, column: 24, scope: !686)
!984 = !DILocation(line: 309, column: 19, scope: !686)
!985 = !DILocation(line: 309, column: 15, scope: !686)
!986 = !DILocation(line: 309, column: 18, scope: !686)
!987 = !DILocation(line: 311, column: 22, scope: !686)
!988 = !DILocation(line: 311, column: 18, scope: !686)
!989 = !DILocation(line: 311, column: 27, scope: !686)
!990 = !DILocation(line: 311, column: 42, scope: !686)
!991 = !DILocation(line: 311, column: 38, scope: !686)
!992 = !DILocation(line: 311, column: 47, scope: !686)
!993 = !DILocation(line: 311, column: 37, scope: !686)
!994 = !DILocation(line: 311, column: 57, scope: !686)
!995 = !DILocation(line: 312, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !686, file: !638, line: 312, column: 15)
!997 = !DILocation(line: 312, column: 15, scope: !686)
!998 = !DILocation(line: 312, column: 28, scope: !996)
!999 = !DILocation(line: 0, scope: !940, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 313, column: 17, scope: !686)
!1001 = !DILocation(line: 86, column: 10, scope: !940, inlinedAt: !1000)
!1002 = !DILocation(line: 86, column: 8, scope: !940, inlinedAt: !1000)
!1003 = !DILocation(line: 87, column: 12, scope: !952, inlinedAt: !1000)
!1004 = !DILocation(line: 87, column: 16, scope: !952, inlinedAt: !1000)
!1005 = !DILocation(line: 87, column: 7, scope: !940, inlinedAt: !1000)
!1006 = !DILocation(line: 88, column: 15, scope: !952, inlinedAt: !1000)
!1007 = !DILocation(line: 88, column: 5, scope: !952, inlinedAt: !1000)
!1008 = !DILocation(line: 89, column: 14, scope: !940, inlinedAt: !1000)
!1009 = !DILocation(line: 89, column: 3, scope: !940, inlinedAt: !1000)
!1010 = !DILocation(line: 318, column: 32, scope: !686)
!1011 = !DILocation(line: 318, column: 28, scope: !686)
!1012 = !DILocation(line: 318, column: 37, scope: !686)
!1013 = !DILocation(line: 318, column: 52, scope: !686)
!1014 = !DILocation(line: 318, column: 48, scope: !686)
!1015 = !DILocation(line: 318, column: 57, scope: !686)
!1016 = !DILocation(line: 318, column: 47, scope: !686)
!1017 = !DILocation(line: 318, column: 27, scope: !686)
!1018 = !DILocation(line: 318, column: 26, scope: !686)
!1019 = !DILocation(line: 318, column: 21, scope: !686)
!1020 = !DILocation(line: 318, column: 15, scope: !686)
!1021 = !DILocation(line: 318, column: 20, scope: !686)
!1022 = !DILocation(line: 319, column: 32, scope: !686)
!1023 = !DILocation(line: 319, column: 28, scope: !686)
!1024 = !DILocation(line: 319, column: 42, scope: !686)
!1025 = !DILocation(line: 319, column: 38, scope: !686)
!1026 = !DILocation(line: 319, column: 37, scope: !686)
!1027 = !DILocation(line: 319, column: 52, scope: !686)
!1028 = !DILocation(line: 319, column: 48, scope: !686)
!1029 = !DILocation(line: 319, column: 62, scope: !686)
!1030 = !DILocation(line: 319, column: 58, scope: !686)
!1031 = !DILocation(line: 319, column: 57, scope: !686)
!1032 = !DILocation(line: 319, column: 47, scope: !686)
!1033 = !DILocation(line: 319, column: 27, scope: !686)
!1034 = !DILocation(line: 319, column: 26, scope: !686)
!1035 = !DILocation(line: 319, column: 21, scope: !686)
!1036 = !DILocation(line: 319, column: 15, scope: !686)
!1037 = !DILocation(line: 319, column: 20, scope: !686)
!1038 = !DILocation(line: 321, column: 22, scope: !686)
!1039 = !DILocation(line: 321, column: 18, scope: !686)
!1040 = !DILocation(line: 321, column: 26, scope: !686)
!1041 = !DILocation(line: 321, column: 40, scope: !686)
!1042 = !DILocation(line: 321, column: 36, scope: !686)
!1043 = !DILocation(line: 321, column: 44, scope: !686)
!1044 = !DILocation(line: 321, column: 35, scope: !686)
!1045 = !DILocation(line: 321, column: 53, scope: !686)
!1046 = !DILocation(line: 322, column: 21, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !686, file: !638, line: 322, column: 15)
!1048 = !DILocation(line: 322, column: 15, scope: !686)
!1049 = !DILocation(line: 322, column: 28, scope: !1047)
!1050 = !DILocation(line: 0, scope: !940, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 323, column: 17, scope: !686)
!1052 = !DILocation(line: 86, column: 10, scope: !940, inlinedAt: !1051)
!1053 = !DILocation(line: 86, column: 8, scope: !940, inlinedAt: !1051)
!1054 = !DILocation(line: 87, column: 12, scope: !952, inlinedAt: !1051)
!1055 = !DILocation(line: 87, column: 16, scope: !952, inlinedAt: !1051)
!1056 = !DILocation(line: 87, column: 7, scope: !940, inlinedAt: !1051)
!1057 = !DILocation(line: 88, column: 15, scope: !952, inlinedAt: !1051)
!1058 = !DILocation(line: 88, column: 5, scope: !952, inlinedAt: !1051)
!1059 = !DILocation(line: 89, column: 14, scope: !940, inlinedAt: !1051)
!1060 = !DILocation(line: 89, column: 3, scope: !940, inlinedAt: !1051)
!1061 = !DILocation(line: 327, column: 31, scope: !686)
!1062 = !DILocation(line: 327, column: 27, scope: !686)
!1063 = !DILocation(line: 327, column: 35, scope: !686)
!1064 = !DILocation(line: 327, column: 49, scope: !686)
!1065 = !DILocation(line: 327, column: 45, scope: !686)
!1066 = !DILocation(line: 327, column: 53, scope: !686)
!1067 = !DILocation(line: 327, column: 44, scope: !686)
!1068 = !DILocation(line: 327, column: 26, scope: !686)
!1069 = !DILocation(line: 327, column: 25, scope: !686)
!1070 = !DILocation(line: 327, column: 20, scope: !686)
!1071 = !DILocation(line: 327, column: 19, scope: !686)
!1072 = !DILocation(line: 328, column: 31, scope: !686)
!1073 = !DILocation(line: 328, column: 27, scope: !686)
!1074 = !DILocation(line: 328, column: 40, scope: !686)
!1075 = !DILocation(line: 328, column: 36, scope: !686)
!1076 = !DILocation(line: 328, column: 35, scope: !686)
!1077 = !DILocation(line: 328, column: 49, scope: !686)
!1078 = !DILocation(line: 328, column: 45, scope: !686)
!1079 = !DILocation(line: 328, column: 58, scope: !686)
!1080 = !DILocation(line: 328, column: 54, scope: !686)
!1081 = !DILocation(line: 328, column: 53, scope: !686)
!1082 = !DILocation(line: 328, column: 44, scope: !686)
!1083 = !DILocation(line: 328, column: 26, scope: !686)
!1084 = !DILocation(line: 328, column: 25, scope: !686)
!1085 = !DILocation(line: 328, column: 20, scope: !686)
!1086 = !DILocation(line: 328, column: 19, scope: !686)
!1087 = !DILocation(line: 329, column: 15, scope: !686)
!1088 = !DILocation(line: 332, column: 26, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !638, line: 330, column: 13)
!1090 = distinct !DILexicalBlock(scope: !686, file: !638, line: 329, column: 15)
!1091 = !DILocation(line: 332, column: 22, scope: !1089)
!1092 = !DILocation(line: 332, column: 33, scope: !1089)
!1093 = !DILocation(line: 332, column: 50, scope: !1089)
!1094 = !DILocation(line: 332, column: 46, scope: !1089)
!1095 = !DILocation(line: 332, column: 57, scope: !1089)
!1096 = !DILocation(line: 332, column: 45, scope: !1089)
!1097 = !DILocation(line: 333, column: 28, scope: !1089)
!1098 = !DILocation(line: 334, column: 25, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1089, file: !638, line: 334, column: 19)
!1100 = !DILocation(line: 334, column: 19, scope: !1089)
!1101 = !DILocation(line: 334, column: 32, scope: !1099)
!1102 = !DILocation(line: 0, scope: !1089)
!1103 = !DILocation(line: 0, scope: !940, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 335, column: 21, scope: !1089)
!1105 = !DILocation(line: 86, column: 10, scope: !940, inlinedAt: !1104)
!1106 = !DILocation(line: 86, column: 8, scope: !940, inlinedAt: !1104)
!1107 = !DILocation(line: 87, column: 12, scope: !952, inlinedAt: !1104)
!1108 = !DILocation(line: 87, column: 16, scope: !952, inlinedAt: !1104)
!1109 = !DILocation(line: 87, column: 7, scope: !940, inlinedAt: !1104)
!1110 = !DILocation(line: 88, column: 15, scope: !952, inlinedAt: !1104)
!1111 = !DILocation(line: 88, column: 5, scope: !952, inlinedAt: !1104)
!1112 = !DILocation(line: 89, column: 14, scope: !940, inlinedAt: !1104)
!1113 = !DILocation(line: 89, column: 3, scope: !940, inlinedAt: !1104)
!1114 = !DILocation(line: 340, column: 38, scope: !1089)
!1115 = !DILocation(line: 340, column: 34, scope: !1089)
!1116 = !DILocation(line: 340, column: 45, scope: !1089)
!1117 = !DILocation(line: 340, column: 62, scope: !1089)
!1118 = !DILocation(line: 340, column: 58, scope: !1089)
!1119 = !DILocation(line: 340, column: 69, scope: !1089)
!1120 = !DILocation(line: 340, column: 57, scope: !1089)
!1121 = !DILocation(line: 340, column: 33, scope: !1089)
!1122 = !DILocation(line: 340, column: 32, scope: !1089)
!1123 = !DILocation(line: 340, column: 27, scope: !1089)
!1124 = !DILocation(line: 340, column: 19, scope: !1089)
!1125 = !DILocation(line: 340, column: 26, scope: !1089)
!1126 = !DILocation(line: 342, column: 38, scope: !1089)
!1127 = !DILocation(line: 342, column: 34, scope: !1089)
!1128 = !DILocation(line: 342, column: 50, scope: !1089)
!1129 = !DILocation(line: 342, column: 46, scope: !1089)
!1130 = !DILocation(line: 342, column: 45, scope: !1089)
!1131 = !DILocation(line: 342, column: 62, scope: !1089)
!1132 = !DILocation(line: 342, column: 58, scope: !1089)
!1133 = !DILocation(line: 343, column: 21, scope: !1089)
!1134 = !DILocation(line: 343, column: 17, scope: !1089)
!1135 = !DILocation(line: 342, column: 69, scope: !1089)
!1136 = !DILocation(line: 342, column: 57, scope: !1089)
!1137 = !DILocation(line: 342, column: 33, scope: !1089)
!1138 = !DILocation(line: 342, column: 32, scope: !1089)
!1139 = !DILocation(line: 342, column: 27, scope: !1089)
!1140 = !DILocation(line: 342, column: 19, scope: !1089)
!1141 = !DILocation(line: 342, column: 26, scope: !1089)
!1142 = !DILocation(line: 344, column: 13, scope: !1089)
!1143 = !DILocation(line: 349, column: 28, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !687, file: !638, line: 348, column: 9)
!1145 = !DILocation(line: 349, column: 24, scope: !1144)
!1146 = !DILocation(line: 349, column: 31, scope: !1144)
!1147 = !DILocation(line: 349, column: 44, scope: !1144)
!1148 = !DILocation(line: 349, column: 40, scope: !1144)
!1149 = !DILocation(line: 349, column: 47, scope: !1144)
!1150 = !DILocation(line: 349, column: 39, scope: !1144)
!1151 = !DILocation(line: 349, column: 19, scope: !1144)
!1152 = !DILocation(line: 349, column: 15, scope: !1144)
!1153 = !DILocation(line: 349, column: 18, scope: !1144)
!1154 = !DILocation(line: 350, column: 29, scope: !1144)
!1155 = !DILocation(line: 350, column: 25, scope: !1144)
!1156 = !DILocation(line: 350, column: 37, scope: !1144)
!1157 = !DILocation(line: 350, column: 33, scope: !1144)
!1158 = !DILocation(line: 350, column: 19, scope: !1144)
!1159 = !DILocation(line: 350, column: 41, scope: !1144)
!1160 = !DILocation(line: 350, column: 56, scope: !1144)
!1161 = !DILocation(line: 350, column: 15, scope: !1144)
!1162 = !DILocation(line: 350, column: 18, scope: !1144)
!1163 = !DILocation(line: 351, column: 30, scope: !1144)
!1164 = !DILocation(line: 351, column: 26, scope: !1144)
!1165 = !DILocation(line: 351, column: 35, scope: !1144)
!1166 = !DILocation(line: 351, column: 50, scope: !1144)
!1167 = !DILocation(line: 351, column: 46, scope: !1144)
!1168 = !DILocation(line: 351, column: 55, scope: !1144)
!1169 = !DILocation(line: 351, column: 45, scope: !1144)
!1170 = !DILocation(line: 351, column: 21, scope: !1144)
!1171 = !DILocation(line: 351, column: 15, scope: !1144)
!1172 = !DILocation(line: 351, column: 20, scope: !1144)
!1173 = !DILocation(line: 352, column: 31, scope: !1144)
!1174 = !DILocation(line: 352, column: 27, scope: !1144)
!1175 = !DILocation(line: 352, column: 41, scope: !1144)
!1176 = !DILocation(line: 352, column: 37, scope: !1144)
!1177 = !DILocation(line: 352, column: 21, scope: !1144)
!1178 = !DILocation(line: 352, column: 47, scope: !1144)
!1179 = !DILocation(line: 352, column: 62, scope: !1144)
!1180 = !DILocation(line: 352, column: 15, scope: !1144)
!1181 = !DILocation(line: 352, column: 20, scope: !1144)
!1182 = !DILocation(line: 353, column: 29, scope: !1144)
!1183 = !DILocation(line: 353, column: 25, scope: !1144)
!1184 = !DILocation(line: 353, column: 33, scope: !1144)
!1185 = !DILocation(line: 353, column: 47, scope: !1144)
!1186 = !DILocation(line: 353, column: 43, scope: !1144)
!1187 = !DILocation(line: 353, column: 51, scope: !1144)
!1188 = !DILocation(line: 353, column: 42, scope: !1144)
!1189 = !DILocation(line: 353, column: 20, scope: !1144)
!1190 = !DILocation(line: 353, column: 19, scope: !1144)
!1191 = !DILocation(line: 354, column: 30, scope: !1144)
!1192 = !DILocation(line: 354, column: 26, scope: !1144)
!1193 = !DILocation(line: 354, column: 39, scope: !1144)
!1194 = !DILocation(line: 354, column: 35, scope: !1144)
!1195 = !DILocation(line: 354, column: 20, scope: !1144)
!1196 = !DILocation(line: 354, column: 44, scope: !1144)
!1197 = !DILocation(line: 354, column: 59, scope: !1144)
!1198 = !DILocation(line: 354, column: 19, scope: !1144)
!1199 = !DILocation(line: 355, column: 23, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1144, file: !638, line: 355, column: 15)
!1201 = !DILocation(line: 355, column: 29, scope: !1200)
!1202 = !DILocation(line: 355, column: 15, scope: !1144)
!1203 = !DILocation(line: 357, column: 36, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !638, line: 356, column: 13)
!1205 = !DILocation(line: 357, column: 32, scope: !1204)
!1206 = !DILocation(line: 357, column: 43, scope: !1204)
!1207 = !DILocation(line: 357, column: 60, scope: !1204)
!1208 = !DILocation(line: 357, column: 56, scope: !1204)
!1209 = !DILocation(line: 357, column: 67, scope: !1204)
!1210 = !DILocation(line: 357, column: 55, scope: !1204)
!1211 = !DILocation(line: 357, column: 27, scope: !1204)
!1212 = !DILocation(line: 357, column: 19, scope: !1204)
!1213 = !DILocation(line: 357, column: 26, scope: !1204)
!1214 = !DILocation(line: 358, column: 37, scope: !1204)
!1215 = !DILocation(line: 358, column: 33, scope: !1204)
!1216 = !DILocation(line: 358, column: 49, scope: !1204)
!1217 = !DILocation(line: 358, column: 45, scope: !1204)
!1218 = !DILocation(line: 358, column: 27, scope: !1204)
!1219 = !DILocation(line: 358, column: 57, scope: !1204)
!1220 = !DILocation(line: 358, column: 72, scope: !1204)
!1221 = !DILocation(line: 358, column: 19, scope: !1204)
!1222 = !DILocation(line: 358, column: 26, scope: !1204)
!1223 = !DILocation(line: 359, column: 13, scope: !1204)
!1224 = !DILocation(line: 364, column: 37, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !687, file: !638, line: 363, column: 9)
!1226 = !DILocation(line: 364, column: 33, scope: !1225)
!1227 = !DILocation(line: 364, column: 45, scope: !1225)
!1228 = !DILocation(line: 364, column: 41, scope: !1225)
!1229 = !DILocation(line: 364, column: 40, scope: !1225)
!1230 = !DILocation(line: 364, column: 53, scope: !1225)
!1231 = !DILocation(line: 364, column: 49, scope: !1225)
!1232 = !DILocation(line: 364, column: 61, scope: !1225)
!1233 = !DILocation(line: 364, column: 57, scope: !1225)
!1234 = !DILocation(line: 364, column: 56, scope: !1225)
!1235 = !DILocation(line: 364, column: 48, scope: !1225)
!1236 = !DILocation(line: 364, column: 32, scope: !1225)
!1237 = !DILocation(line: 364, column: 31, scope: !1225)
!1238 = !DILocation(line: 364, column: 19, scope: !1225)
!1239 = !DILocation(line: 364, column: 15, scope: !1225)
!1240 = !DILocation(line: 364, column: 18, scope: !1225)
!1241 = !DILocation(line: 365, column: 37, scope: !1225)
!1242 = !DILocation(line: 365, column: 33, scope: !1225)
!1243 = !DILocation(line: 365, column: 45, scope: !1225)
!1244 = !DILocation(line: 365, column: 41, scope: !1225)
!1245 = !DILocation(line: 365, column: 40, scope: !1225)
!1246 = !DILocation(line: 365, column: 53, scope: !1225)
!1247 = !DILocation(line: 365, column: 49, scope: !1225)
!1248 = !DILocation(line: 365, column: 61, scope: !1225)
!1249 = !DILocation(line: 365, column: 57, scope: !1225)
!1250 = !DILocation(line: 365, column: 56, scope: !1225)
!1251 = !DILocation(line: 365, column: 48, scope: !1225)
!1252 = !DILocation(line: 365, column: 32, scope: !1225)
!1253 = !DILocation(line: 365, column: 31, scope: !1225)
!1254 = !DILocation(line: 365, column: 19, scope: !1225)
!1255 = !DILocation(line: 365, column: 15, scope: !1225)
!1256 = !DILocation(line: 365, column: 18, scope: !1225)
!1257 = !DILocation(line: 366, column: 39, scope: !1225)
!1258 = !DILocation(line: 366, column: 35, scope: !1225)
!1259 = !DILocation(line: 366, column: 49, scope: !1225)
!1260 = !DILocation(line: 366, column: 45, scope: !1225)
!1261 = !DILocation(line: 366, column: 44, scope: !1225)
!1262 = !DILocation(line: 366, column: 59, scope: !1225)
!1263 = !DILocation(line: 366, column: 55, scope: !1225)
!1264 = !DILocation(line: 366, column: 69, scope: !1225)
!1265 = !DILocation(line: 366, column: 65, scope: !1225)
!1266 = !DILocation(line: 366, column: 64, scope: !1225)
!1267 = !DILocation(line: 366, column: 54, scope: !1225)
!1268 = !DILocation(line: 366, column: 34, scope: !1225)
!1269 = !DILocation(line: 366, column: 33, scope: !1225)
!1270 = !DILocation(line: 366, column: 21, scope: !1225)
!1271 = !DILocation(line: 366, column: 15, scope: !1225)
!1272 = !DILocation(line: 366, column: 20, scope: !1225)
!1273 = !DILocation(line: 367, column: 39, scope: !1225)
!1274 = !DILocation(line: 367, column: 35, scope: !1225)
!1275 = !DILocation(line: 367, column: 49, scope: !1225)
!1276 = !DILocation(line: 367, column: 45, scope: !1225)
!1277 = !DILocation(line: 367, column: 44, scope: !1225)
!1278 = !DILocation(line: 367, column: 59, scope: !1225)
!1279 = !DILocation(line: 367, column: 55, scope: !1225)
!1280 = !DILocation(line: 367, column: 69, scope: !1225)
!1281 = !DILocation(line: 367, column: 65, scope: !1225)
!1282 = !DILocation(line: 367, column: 64, scope: !1225)
!1283 = !DILocation(line: 367, column: 54, scope: !1225)
!1284 = !DILocation(line: 367, column: 34, scope: !1225)
!1285 = !DILocation(line: 367, column: 33, scope: !1225)
!1286 = !DILocation(line: 367, column: 21, scope: !1225)
!1287 = !DILocation(line: 367, column: 15, scope: !1225)
!1288 = !DILocation(line: 367, column: 20, scope: !1225)
!1289 = !DILocation(line: 368, column: 38, scope: !1225)
!1290 = !DILocation(line: 368, column: 34, scope: !1225)
!1291 = !DILocation(line: 368, column: 47, scope: !1225)
!1292 = !DILocation(line: 368, column: 43, scope: !1225)
!1293 = !DILocation(line: 368, column: 42, scope: !1225)
!1294 = !DILocation(line: 368, column: 56, scope: !1225)
!1295 = !DILocation(line: 368, column: 52, scope: !1225)
!1296 = !DILocation(line: 368, column: 65, scope: !1225)
!1297 = !DILocation(line: 368, column: 61, scope: !1225)
!1298 = !DILocation(line: 368, column: 60, scope: !1225)
!1299 = !DILocation(line: 368, column: 51, scope: !1225)
!1300 = !DILocation(line: 368, column: 33, scope: !1225)
!1301 = !DILocation(line: 368, column: 32, scope: !1225)
!1302 = !DILocation(line: 368, column: 20, scope: !1225)
!1303 = !DILocation(line: 368, column: 19, scope: !1225)
!1304 = !DILocation(line: 369, column: 38, scope: !1225)
!1305 = !DILocation(line: 369, column: 34, scope: !1225)
!1306 = !DILocation(line: 369, column: 47, scope: !1225)
!1307 = !DILocation(line: 369, column: 43, scope: !1225)
!1308 = !DILocation(line: 369, column: 42, scope: !1225)
!1309 = !DILocation(line: 369, column: 56, scope: !1225)
!1310 = !DILocation(line: 369, column: 52, scope: !1225)
!1311 = !DILocation(line: 369, column: 65, scope: !1225)
!1312 = !DILocation(line: 369, column: 61, scope: !1225)
!1313 = !DILocation(line: 369, column: 60, scope: !1225)
!1314 = !DILocation(line: 369, column: 51, scope: !1225)
!1315 = !DILocation(line: 369, column: 33, scope: !1225)
!1316 = !DILocation(line: 369, column: 32, scope: !1225)
!1317 = !DILocation(line: 369, column: 20, scope: !1225)
!1318 = !DILocation(line: 369, column: 19, scope: !1225)
!1319 = !DILocation(line: 370, column: 15, scope: !1225)
!1320 = !DILocation(line: 372, column: 45, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !638, line: 371, column: 13)
!1322 = distinct !DILexicalBlock(scope: !1225, file: !638, line: 370, column: 15)
!1323 = !DILocation(line: 372, column: 41, scope: !1321)
!1324 = !DILocation(line: 372, column: 57, scope: !1321)
!1325 = !DILocation(line: 372, column: 53, scope: !1321)
!1326 = !DILocation(line: 372, column: 52, scope: !1321)
!1327 = !DILocation(line: 372, column: 69, scope: !1321)
!1328 = !DILocation(line: 372, column: 65, scope: !1321)
!1329 = !DILocation(line: 373, column: 21, scope: !1321)
!1330 = !DILocation(line: 373, column: 17, scope: !1321)
!1331 = !DILocation(line: 372, column: 76, scope: !1321)
!1332 = !DILocation(line: 372, column: 64, scope: !1321)
!1333 = !DILocation(line: 372, column: 40, scope: !1321)
!1334 = !DILocation(line: 372, column: 39, scope: !1321)
!1335 = !DILocation(line: 372, column: 27, scope: !1321)
!1336 = !DILocation(line: 372, column: 19, scope: !1321)
!1337 = !DILocation(line: 372, column: 26, scope: !1321)
!1338 = !DILocation(line: 374, column: 45, scope: !1321)
!1339 = !DILocation(line: 374, column: 41, scope: !1321)
!1340 = !DILocation(line: 374, column: 57, scope: !1321)
!1341 = !DILocation(line: 374, column: 53, scope: !1321)
!1342 = !DILocation(line: 374, column: 52, scope: !1321)
!1343 = !DILocation(line: 374, column: 69, scope: !1321)
!1344 = !DILocation(line: 374, column: 65, scope: !1321)
!1345 = !DILocation(line: 375, column: 21, scope: !1321)
!1346 = !DILocation(line: 375, column: 17, scope: !1321)
!1347 = !DILocation(line: 374, column: 76, scope: !1321)
!1348 = !DILocation(line: 374, column: 64, scope: !1321)
!1349 = !DILocation(line: 374, column: 40, scope: !1321)
!1350 = !DILocation(line: 374, column: 39, scope: !1321)
!1351 = !DILocation(line: 374, column: 27, scope: !1321)
!1352 = !DILocation(line: 374, column: 19, scope: !1321)
!1353 = !DILocation(line: 374, column: 26, scope: !1321)
!1354 = !DILocation(line: 376, column: 13, scope: !1321)
!1355 = !DILocation(line: 381, column: 23, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !687, file: !638, line: 380, column: 9)
!1357 = !DILocation(line: 381, column: 19, scope: !1356)
!1358 = !DILocation(line: 381, column: 49, scope: !1356)
!1359 = !DILocation(line: 381, column: 45, scope: !1356)
!1360 = !DILocation(line: 381, column: 52, scope: !1356)
!1361 = !DILocation(line: 381, column: 43, scope: !1356)
!1362 = !DILocation(line: 381, column: 27, scope: !1356)
!1363 = !DILocation(line: 381, column: 26, scope: !1356)
!1364 = !DILocation(line: 381, column: 15, scope: !1356)
!1365 = !DILocation(line: 381, column: 18, scope: !1356)
!1366 = !DILocation(line: 382, column: 23, scope: !1356)
!1367 = !DILocation(line: 382, column: 19, scope: !1356)
!1368 = !DILocation(line: 382, column: 49, scope: !1356)
!1369 = !DILocation(line: 382, column: 45, scope: !1356)
!1370 = !DILocation(line: 382, column: 52, scope: !1356)
!1371 = !DILocation(line: 382, column: 43, scope: !1356)
!1372 = !DILocation(line: 382, column: 27, scope: !1356)
!1373 = !DILocation(line: 382, column: 26, scope: !1356)
!1374 = !DILocation(line: 382, column: 15, scope: !1356)
!1375 = !DILocation(line: 382, column: 18, scope: !1356)
!1376 = !DILocation(line: 383, column: 25, scope: !1356)
!1377 = !DILocation(line: 383, column: 21, scope: !1356)
!1378 = !DILocation(line: 383, column: 53, scope: !1356)
!1379 = !DILocation(line: 383, column: 49, scope: !1356)
!1380 = !DILocation(line: 383, column: 58, scope: !1356)
!1381 = !DILocation(line: 383, column: 47, scope: !1356)
!1382 = !DILocation(line: 383, column: 31, scope: !1356)
!1383 = !DILocation(line: 383, column: 30, scope: !1356)
!1384 = !DILocation(line: 383, column: 15, scope: !1356)
!1385 = !DILocation(line: 383, column: 20, scope: !1356)
!1386 = !DILocation(line: 384, column: 25, scope: !1356)
!1387 = !DILocation(line: 384, column: 21, scope: !1356)
!1388 = !DILocation(line: 384, column: 53, scope: !1356)
!1389 = !DILocation(line: 384, column: 49, scope: !1356)
!1390 = !DILocation(line: 384, column: 58, scope: !1356)
!1391 = !DILocation(line: 384, column: 47, scope: !1356)
!1392 = !DILocation(line: 384, column: 31, scope: !1356)
!1393 = !DILocation(line: 384, column: 30, scope: !1356)
!1394 = !DILocation(line: 384, column: 15, scope: !1356)
!1395 = !DILocation(line: 384, column: 20, scope: !1356)
!1396 = !DILocation(line: 385, column: 24, scope: !1356)
!1397 = !DILocation(line: 385, column: 20, scope: !1356)
!1398 = !DILocation(line: 385, column: 51, scope: !1356)
!1399 = !DILocation(line: 385, column: 47, scope: !1356)
!1400 = !DILocation(line: 385, column: 55, scope: !1356)
!1401 = !DILocation(line: 385, column: 45, scope: !1356)
!1402 = !DILocation(line: 385, column: 29, scope: !1356)
!1403 = !DILocation(line: 385, column: 28, scope: !1356)
!1404 = !DILocation(line: 385, column: 19, scope: !1356)
!1405 = !DILocation(line: 386, column: 24, scope: !1356)
!1406 = !DILocation(line: 386, column: 20, scope: !1356)
!1407 = !DILocation(line: 386, column: 51, scope: !1356)
!1408 = !DILocation(line: 386, column: 47, scope: !1356)
!1409 = !DILocation(line: 386, column: 55, scope: !1356)
!1410 = !DILocation(line: 386, column: 45, scope: !1356)
!1411 = !DILocation(line: 386, column: 29, scope: !1356)
!1412 = !DILocation(line: 386, column: 28, scope: !1356)
!1413 = !DILocation(line: 386, column: 19, scope: !1356)
!1414 = !DILocation(line: 387, column: 23, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1356, file: !638, line: 387, column: 15)
!1416 = !DILocation(line: 387, column: 29, scope: !1415)
!1417 = !DILocation(line: 387, column: 15, scope: !1356)
!1418 = !DILocation(line: 389, column: 32, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !638, line: 388, column: 13)
!1420 = !DILocation(line: 389, column: 28, scope: !1419)
!1421 = !DILocation(line: 389, column: 62, scope: !1419)
!1422 = !DILocation(line: 389, column: 58, scope: !1419)
!1423 = !DILocation(line: 389, column: 69, scope: !1419)
!1424 = !DILocation(line: 389, column: 56, scope: !1419)
!1425 = !DILocation(line: 389, column: 40, scope: !1419)
!1426 = !DILocation(line: 389, column: 39, scope: !1419)
!1427 = !DILocation(line: 389, column: 20, scope: !1419)
!1428 = !DILocation(line: 389, column: 27, scope: !1419)
!1429 = !DILocation(line: 390, column: 32, scope: !1419)
!1430 = !DILocation(line: 390, column: 28, scope: !1419)
!1431 = !DILocation(line: 390, column: 62, scope: !1419)
!1432 = !DILocation(line: 390, column: 58, scope: !1419)
!1433 = !DILocation(line: 390, column: 69, scope: !1419)
!1434 = !DILocation(line: 390, column: 56, scope: !1419)
!1435 = !DILocation(line: 390, column: 40, scope: !1419)
!1436 = !DILocation(line: 390, column: 39, scope: !1419)
!1437 = !DILocation(line: 390, column: 20, scope: !1419)
!1438 = !DILocation(line: 390, column: 27, scope: !1419)
!1439 = !DILocation(line: 391, column: 13, scope: !1419)
!1440 = !DILocation(line: 283, column: 23, scope: !823)
!1441 = !DILocation(line: 283, column: 15, scope: !823)
!1442 = !DILocation(line: 283, column: 18, scope: !823)
!1443 = !DILocation(line: 284, column: 25, scope: !823)
!1444 = !DILocation(line: 284, column: 20, scope: !823)
!1445 = !DILocation(line: 284, column: 15, scope: !823)
!1446 = !DILocation(line: 284, column: 18, scope: !823)
!1447 = !DILocation(line: 285, column: 25, scope: !823)
!1448 = !DILocation(line: 285, column: 15, scope: !823)
!1449 = !DILocation(line: 285, column: 20, scope: !823)
!1450 = !DILocation(line: 286, column: 27, scope: !823)
!1451 = !DILocation(line: 286, column: 22, scope: !823)
!1452 = !DILocation(line: 286, column: 15, scope: !823)
!1453 = !DILocation(line: 286, column: 20, scope: !823)
!1454 = !DILocation(line: 287, column: 24, scope: !823)
!1455 = !DILocation(line: 287, column: 19, scope: !823)
!1456 = !DILocation(line: 288, column: 26, scope: !823)
!1457 = !DILocation(line: 288, column: 21, scope: !823)
!1458 = !DILocation(line: 288, column: 19, scope: !823)
!1459 = !DILocation(line: 289, column: 15, scope: !823)
!1460 = !DILocation(line: 291, column: 31, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !822, file: !638, line: 290, column: 13)
!1462 = !DILocation(line: 291, column: 19, scope: !1461)
!1463 = !DILocation(line: 291, column: 26, scope: !1461)
!1464 = !DILocation(line: 292, column: 33, scope: !1461)
!1465 = !DILocation(line: 292, column: 28, scope: !1461)
!1466 = !DILocation(line: 292, column: 19, scope: !1461)
!1467 = !DILocation(line: 292, column: 26, scope: !1461)
!1468 = !DILocation(line: 293, column: 13, scope: !1461)
!1469 = !DILocation(line: 417, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !674, file: !638, line: 417, column: 9)
!1471 = !DILocation(line: 417, column: 57, scope: !1470)
!1472 = !DILocation(line: 419, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !674, file: !638, line: 419, column: 9)
!1474 = !DILocation(line: 419, column: 57, scope: !1473)
!1475 = !DILocation(line: 419, column: 9, scope: !674)
!1476 = !DILocation(line: 421, column: 17, scope: !693)
!1477 = !{!699, !703, i64 568}
!1478 = !DILocation(line: 421, column: 34, scope: !693)
!1479 = !DILocation(line: 421, column: 9, scope: !674)
!1480 = !DILocation(line: 429, column: 65, scope: !692)
!1481 = !DILocation(line: 430, column: 19, scope: !692)
!1482 = !DILocalVariable(name: "image", arg: 1, scope: !1483, file: !1484, line: 27, type: !641)
!1483 = distinct !DISubprogram(name: "SetImageProgress", scope: !1484, file: !1484, line: 27, type: !1485, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1487)
!1484 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!422, !641, !539, !541, !544}
!1487 = !{!1482, !1488, !1489, !1490, !1491}
!1488 = !DILocalVariable(name: "tag", arg: 2, scope: !1483, file: !1484, line: 28, type: !539)
!1489 = !DILocalVariable(name: "offset", arg: 3, scope: !1483, file: !1484, line: 28, type: !541)
!1490 = !DILocalVariable(name: "extent", arg: 4, scope: !1483, file: !1484, line: 28, type: !544)
!1491 = !DILocalVariable(name: "message", scope: !1483, file: !1484, line: 31, type: !559)
!1492 = !DILocation(line: 0, scope: !1483, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 429, column: 17, scope: !692)
!1494 = !DILocation(line: 30, column: 3, scope: !1483, inlinedAt: !1493)
!1495 = !DILocation(line: 31, column: 5, scope: !1483, inlinedAt: !1493)
!1496 = !DILocation(line: 35, column: 10, scope: !1483, inlinedAt: !1493)
!1497 = !DILocation(line: 36, column: 17, scope: !1483, inlinedAt: !1493)
!1498 = !DILocation(line: 36, column: 63, scope: !1483, inlinedAt: !1493)
!1499 = !{!699, !703, i64 576}
!1500 = !DILocation(line: 36, column: 10, scope: !1483, inlinedAt: !1493)
!1501 = !DILocation(line: 37, column: 1, scope: !1483, inlinedAt: !1493)
!1502 = !DILocation(line: 0, scope: !692)
!1503 = !DILocation(line: 431, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !692, file: !638, line: 431, column: 13)
!1505 = !DILocation(line: 431, column: 13, scope: !692)
!1506 = !DILocation(line: 433, column: 7, scope: !692)
!1507 = !DILocation(line: 229, column: 42, scope: !675)
!1508 = distinct !{!1508, !797, !1509, !881, !882}
!1509 = !DILocation(line: 434, column: 3, scope: !676)
!1510 = !DILocation(line: 223, column: 9, scope: !637)
!1511 = !DILocation(line: 435, column: 11, scope: !637)
!1512 = !DILocation(line: 436, column: 11, scope: !637)
!1513 = !DILocation(line: 437, column: 11, scope: !637)
!1514 = !DILocation(line: 438, column: 11, scope: !637)
!1515 = !DILocation(line: 439, column: 11, scope: !637)
!1516 = !DILocation(line: 440, column: 11, scope: !637)
!1517 = !DILocation(line: 441, column: 14, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !637, file: !638, line: 441, column: 7)
!1519 = !DILocation(line: 441, column: 7, scope: !637)
!1520 = !DILocation(line: 442, column: 20, scope: !1518)
!1521 = !DILocation(line: 442, column: 5, scope: !1518)
!1522 = !DILocation(line: 444, column: 1, scope: !637)
!1523 = !DISubprogram(name: "LogMagickEvent", scope: !380, file: !380, line: 83, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!422, !1526, !539, !539, !1528, !539, null}
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !380, line: 58, baseType: !379)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!1529 = !{}
!1530 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!422, !645, !539, !539, !1528, !1533, !539, !539, null}
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1534 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!406, !641, !1528, !1528, !1537, !645}
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!1538 = !DISubprogram(name: "NewImageList", scope: !1539, file: !1539, line: 36, type: !1540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1539 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!406}
!1542 = !DISubprogram(name: "AppendImageToList", scope: !1539, file: !1539, line: 51, type: !1543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1545, !641}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1546 = !DISubprogram(name: "DestroyImageList", scope: !1539, file: !1539, line: 28, type: !1547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!406, !406}
!1549 = !DISubprogram(name: "GetImageArtifact", scope: !1550, file: !1550, line: 30, type: !1551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1550 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!539, !641, !539}
!1553 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !653, file: !653, line: 55, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!651, !641, !645}
!1556 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !653, file: !653, line: 53, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1557 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !653, file: !653, line: 69, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!628, !1560, !1562, !1562, !1528, !1528, !645}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!1563 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !653, file: !653, line: 101, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!429, !651, !1562, !1562, !1528, !1528, !645}
!1566 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !653, file: !653, line: 89, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!422, !651, !645}
!1569 = !DISubprogram(name: "DestroyCacheView", scope: !653, file: !653, line: 57, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!651, !651}
!1572 = distinct !DISubprogram(name: "ForwardFourierTransformImage", scope: !638, file: !638, line: 1005, type: !1573, scopeLine: 1007, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!406, !641, !1537, !645}
!1575 = !{!1576, !1577, !1578, !1579}
!1576 = !DILocalVariable(name: "image", arg: 1, scope: !1572, file: !638, line: 1005, type: !641)
!1577 = !DILocalVariable(name: "modulus", arg: 2, scope: !1572, file: !638, line: 1006, type: !1537)
!1578 = !DILocalVariable(name: "exception", arg: 3, scope: !1572, file: !638, line: 1006, type: !645)
!1579 = !DILocalVariable(name: "fourier_image", scope: !1572, file: !638, line: 1009, type: !406)
!1580 = !DILocation(line: 0, scope: !1572)
!1581 = !DILocation(line: 1011, column: 17, scope: !1572)
!1582 = !DILocation(line: 1016, column: 12, scope: !1572)
!1583 = !DILocation(line: 1014, column: 10, scope: !1572)
!1584 = !DILocation(line: 1143, column: 3, scope: !1572)
!1585 = distinct !DISubprogram(name: "InverseFourierTransformImage", scope: !638, file: !638, line: 1616, type: !1586, scopeLine: 1619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!406, !641, !641, !1537, !645}
!1588 = !{!1589, !1590, !1591, !1592, !1593}
!1589 = !DILocalVariable(name: "magnitude_image", arg: 1, scope: !1585, file: !638, line: 1616, type: !641)
!1590 = !DILocalVariable(name: "phase_image", arg: 2, scope: !1585, file: !638, line: 1617, type: !641)
!1591 = !DILocalVariable(name: "modulus", arg: 3, scope: !1585, file: !638, line: 1617, type: !1537)
!1592 = !DILocalVariable(name: "exception", arg: 4, scope: !1585, file: !638, line: 1618, type: !645)
!1593 = !DILocalVariable(name: "fourier_image", scope: !1585, file: !638, line: 1621, type: !406)
!1594 = !DILocation(line: 0, scope: !1585)
!1595 = !DILocation(line: 1625, column: 24, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !638, line: 1625, column: 7)
!1597 = !DILocation(line: 1625, column: 30, scope: !1596)
!1598 = !DILocation(line: 1625, column: 7, scope: !1585)
!1599 = !DILocation(line: 1627, column: 24, scope: !1596)
!1600 = !DILocation(line: 1626, column: 12, scope: !1596)
!1601 = !DILocation(line: 1626, column: 5, scope: !1596)
!1602 = !DILocation(line: 1628, column: 19, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1585, file: !638, line: 1628, column: 7)
!1604 = !DILocation(line: 1628, column: 7, scope: !1585)
!1605 = !DILocation(line: 1630, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !638, line: 1629, column: 5)
!1607 = !DILocation(line: 1632, column: 7, scope: !1606)
!1608 = !DILocation(line: 1637, column: 10, scope: !1585)
!1609 = !DILocation(line: 1737, column: 3, scope: !1585)
!1610 = !DILocation(line: 1738, column: 1, scope: !1585)
!1611 = !DISubprogram(name: "InterpretLocaleValue", scope: !1612, file: !1612, line: 56, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1612 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1613 = !DISubprogram(name: "FormatLocaleString", scope: !1612, file: !1612, line: 71, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1529)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!470, !1616, !1528, !771, null}
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !465)
