; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/colormap.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/colormap.c"
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

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/colormap.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireImageColormap(ptr noundef %image, i64 noundef %colors) local_unnamed_addr #0 !dbg !632 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !638, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 %colors, metadata !639, metadata !DIExpression()), !dbg !646
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !647
  %0 = load i32, ptr %debug, align 8, !dbg !647, !tbaa !649
  %cmp.not = icmp eq i32 %0, 0, !dbg !668
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !669

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !670
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 135, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !671
  br label %if.end, !dbg !672

if.end:                                           ; preds = %if.then, %entry
  %colors1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !673
  store i64 %colors, ptr %colors1, align 8, !dbg !674, !tbaa !675
  call void @llvm.dbg.value(metadata i64 %colors, metadata !641, metadata !DIExpression()), !dbg !646
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !676
  %1 = load ptr, ptr %colormap, align 8, !dbg !676, !tbaa !678
  %cmp2 = icmp eq ptr %1, null, !dbg !679
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !680

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @AcquireQuantumMemory(i64 noundef %colors, i64 noundef 8) #9, !dbg !681
  br label %if.end9, !dbg !682

if.else:                                          ; preds = %if.end
  %call7 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %1, i64 noundef %colors, i64 noundef 8) #10, !dbg !683
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %storemerge = phi ptr [ %call7, %if.else ], [ %call4, %if.then3 ], !dbg !684
  store ptr %storemerge, ptr %colormap, align 8, !dbg !684, !tbaa !678
  %cmp11 = icmp eq ptr %storemerge, null, !dbg !685
  br i1 %cmp11, label %if.then14, label %for.cond.preheader, !dbg !687

for.cond.preheader:                               ; preds = %if.end9
  %2 = load i64, ptr %colors1, align 8, !tbaa !675
  call void @llvm.dbg.value(metadata i64 0, metadata !640, metadata !DIExpression()), !dbg !646
  %cmp2161 = icmp sgt i64 %2, 0, !dbg !688
  br i1 %cmp2161, label %for.body.lr.ph, label %for.end, !dbg !689

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i64 %colors, -1
  %3 = tail call i64 @llvm.umax.i64(i64 %sub, i64 1) #8, !dbg !646
  %div = udiv i64 65535, %3
  br label %for.body, !dbg !689

if.then14:                                        ; preds = %if.end9
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !690
  %filename15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !690
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 146, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename15) #8, !dbg !690
  br label %cleanup, !dbg !690

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.062 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.062, metadata !640, metadata !DIExpression()), !dbg !646
  %mul = mul i64 %div, %i.062, !dbg !693
  call void @llvm.dbg.value(metadata i64 %mul, metadata !642, metadata !DIExpression()), !dbg !694
  %conv = trunc i64 %mul to i16, !dbg !695
  %red = getelementptr inbounds %struct._PixelPacket, ptr %storemerge, i64 %i.062, i32 2, !dbg !696
  store i16 %conv, ptr %red, align 2, !dbg !697, !tbaa !698
  %green = getelementptr inbounds %struct._PixelPacket, ptr %storemerge, i64 %i.062, i32 1, !dbg !699
  store i16 %conv, ptr %green, align 2, !dbg !700, !tbaa !701
  %arrayidx29 = getelementptr inbounds %struct._PixelPacket, ptr %storemerge, i64 %i.062, !dbg !702
  store i16 %conv, ptr %arrayidx29, align 2, !dbg !703, !tbaa !704
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %storemerge, i64 %i.062, i32 3, !dbg !705
  store i16 0, ptr %opacity, align 2, !dbg !706, !tbaa !707
  %inc = add nuw nsw i64 %i.062, 1, !dbg !708
  call void @llvm.dbg.value(metadata i64 %inc, metadata !640, metadata !DIExpression()), !dbg !646
  %exitcond.not = icmp eq i64 %inc, %2, !dbg !688
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !689, !llvm.loop !709

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 2) #8, !dbg !713
  br label %cleanup, !dbg !714

cleanup:                                          ; preds = %if.then14, %for.end
  %retval.0 = phi i32 [ %call32, %for.end ], [ 0, %if.then14 ], !dbg !646
  ret i32 %retval.0, !dbg !715
}

declare !dbg !716 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !722 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare !dbg !726 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !729 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !734 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CycleColormapImage(ptr noundef %image, i64 noundef %displace) local_unnamed_addr #0 !dbg !738 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !743, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i64 %displace, metadata !744, metadata !DIExpression()), !dbg !762
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !763
  %0 = load i32, ptr %debug, align 8, !dbg !763, !tbaa !649
  %cmp.not = icmp eq i32 %0, 0, !dbg !765
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !766

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !767
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #8, !dbg !768
  br label %if.end, !dbg !769

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !770, !tbaa !772
  %cmp1 = icmp eq i32 %1, 1, !dbg !773
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !774

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @SetImageType(ptr noundef nonnull %image, i32 noundef 4) #8, !dbg !775
  br label %if.end4, !dbg !776

if.end4:                                          ; preds = %if.then2, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !751, metadata !DIExpression()), !dbg !762
  %exception5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !777
  call void @llvm.dbg.value(metadata ptr %exception5, metadata !750, metadata !DIExpression()), !dbg !762
  %call6 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception5) #8, !dbg !778
  call void @llvm.dbg.value(metadata ptr %call6, metadata !745, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i64 0, metadata !752, metadata !DIExpression()), !dbg !762
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !752, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 1, metadata !751, metadata !DIExpression()), !dbg !762
  %2 = load i64, ptr %rows, align 8, !dbg !779, !tbaa !780
  %cmp7117 = icmp sgt i64 %2, 0, !dbg !781
  br i1 %cmp7117, label %for.body.lr.ph, label %for.end57, !dbg !782

for.body.lr.ph:                                   ; preds = %if.end4
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  br label %for.body, !dbg !782

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0119 = phi i64 [ 0, %for.body.lr.ph ], [ %inc56, %cleanup ]
  %status.0118 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0119, metadata !752, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 %status.0118, metadata !751, metadata !DIExpression()), !dbg !762
  %cmp8 = icmp eq i32 %status.0118, 0, !dbg !783
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !785

if.end10:                                         ; preds = %for.body
  %3 = load i64, ptr %columns, align 8, !dbg !786, !tbaa !787
  %call11 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call6, i64 noundef 0, i64 noundef %y.0119, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %exception5) #11, !dbg !788
  call void @llvm.dbg.value(metadata ptr %call11, metadata !759, metadata !DIExpression()), !dbg !789
  %cmp12 = icmp eq ptr %call11, null, !dbg !790
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !792

if.end14:                                         ; preds = %if.end10
  %call15 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call6) #8, !dbg !793
  call void @llvm.dbg.value(metadata ptr %call15, metadata !753, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 0, metadata !758, metadata !DIExpression()), !dbg !789
  %4 = load i64, ptr %columns, align 8, !tbaa !787
  call void @llvm.dbg.value(metadata ptr %call11, metadata !759, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 0, metadata !758, metadata !DIExpression()), !dbg !789
  %cmp18113 = icmp sgt i64 %4, 0, !dbg !794
  br i1 %cmp18113, label %for.body19.lr.ph, label %for.end, !dbg !797

for.body19.lr.ph:                                 ; preds = %if.end14
  %cmp20 = icmp eq ptr %call15, null
  %5 = load ptr, ptr %colormap, align 8, !tbaa !678
  %6 = load i64, ptr %colors, align 8, !tbaa !675
  br i1 %cmp20, label %for.body19.lr.ph.split.us, label %for.body19, !dbg !798

for.body19.lr.ph.split.us:                        ; preds = %for.body19.lr.ph
  %rem108.us = urem i64 %displace, %6
  %cmp23109.us = icmp slt i64 %rem108.us, 0
  %add27110.us = select i1 %cmp23109.us, i64 %6, i64 0
  %spec.select111.us = add nsw i64 %add27110.us, %rem108.us
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select111.us, i32 2
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select111.us, i32 1
  %add.ptr42.us = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select111.us
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select111.us, i32 3
  br label %for.body19.us, !dbg !797

for.body19.us:                                    ; preds = %for.body19.us, %for.body19.lr.ph.split.us
  %q.0116.us = phi ptr [ %call11, %for.body19.lr.ph.split.us ], [ %incdec.ptr.us, %for.body19.us ]
  %x.0114.us = phi i64 [ 0, %for.body19.lr.ph.split.us ], [ %inc.us, %for.body19.us ]
  call void @llvm.dbg.value(metadata ptr %q.0116.us, metadata !759, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 %x.0114.us, metadata !758, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 %rem, metadata !761, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !761, metadata !DIExpression()), !dbg !789
  %7 = load i16, ptr %red.us, align 2, !dbg !800, !tbaa !698
  %red37.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0116.us, i64 0, i32 2, !dbg !800
  store i16 %7, ptr %red37.us, align 2, !dbg !800, !tbaa !698
  %8 = load i16, ptr %green.us, align 2, !dbg !800, !tbaa !701
  %green40.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0116.us, i64 0, i32 1, !dbg !800
  store i16 %8, ptr %green40.us, align 2, !dbg !800, !tbaa !701
  %9 = load i16, ptr %add.ptr42.us, align 2, !dbg !800, !tbaa !704
  store i16 %9, ptr %q.0116.us, align 2, !dbg !800, !tbaa !704
  %10 = load i16, ptr %opacity.us, align 2, !dbg !800, !tbaa !707
  %opacity46.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0116.us, i64 0, i32 3, !dbg !800
  store i16 %10, ptr %opacity46.us, align 2, !dbg !800, !tbaa !707
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0116.us, i64 1, !dbg !802
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !759, metadata !DIExpression()), !dbg !789
  %inc.us = add nuw nsw i64 %x.0114.us, 1, !dbg !803
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !758, metadata !DIExpression()), !dbg !789
  %exitcond121.not = icmp eq i64 %inc.us, %4, !dbg !794
  br i1 %exitcond121.not, label %for.end, label %for.body19.us, !dbg !797, !llvm.loop !804

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %q.0116 = phi ptr [ %incdec.ptr, %for.body19 ], [ %call11, %for.body19.lr.ph ]
  %x.0114 = phi i64 [ %inc, %for.body19 ], [ 0, %for.body19.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0116, metadata !759, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 %x.0114, metadata !758, metadata !DIExpression()), !dbg !789
  %add.ptr = getelementptr inbounds i16, ptr %call15, i64 %x.0114, !dbg !798
  %11 = load i16, ptr %add.ptr, align 2, !dbg !798, !tbaa !806
  %conv = zext i16 %11 to i64, !dbg !798
  %add = add nsw i64 %conv, %displace, !dbg !807
  %rem = urem i64 %add, %6, !dbg !808
  call void @llvm.dbg.value(metadata i64 %rem, metadata !761, metadata !DIExpression()), !dbg !789
  %cmp23 = icmp slt i64 %rem, 0, !dbg !809
  %add27 = select i1 %cmp23, i64 %6, i64 0, !dbg !811
  %spec.select = add nsw i64 %add27, %rem, !dbg !811
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !761, metadata !DIExpression()), !dbg !789
  %conv33 = trunc i64 %spec.select to i16, !dbg !812
  store i16 %conv33, ptr %add.ptr, align 2, !dbg !812, !tbaa !806
  %red = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select, i32 2, !dbg !800
  %12 = load i16, ptr %red, align 2, !dbg !800, !tbaa !698
  %red37 = getelementptr inbounds %struct._PixelPacket, ptr %q.0116, i64 0, i32 2, !dbg !800
  store i16 %12, ptr %red37, align 2, !dbg !800, !tbaa !698
  %green = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select, i32 1, !dbg !800
  %13 = load i16, ptr %green, align 2, !dbg !800, !tbaa !701
  %green40 = getelementptr inbounds %struct._PixelPacket, ptr %q.0116, i64 0, i32 1, !dbg !800
  store i16 %13, ptr %green40, align 2, !dbg !800, !tbaa !701
  %add.ptr42 = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select, !dbg !800
  %14 = load i16, ptr %add.ptr42, align 2, !dbg !800, !tbaa !704
  store i16 %14, ptr %q.0116, align 2, !dbg !800, !tbaa !704
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %spec.select, i32 3, !dbg !800
  %15 = load i16, ptr %opacity, align 2, !dbg !800, !tbaa !707
  %opacity46 = getelementptr inbounds %struct._PixelPacket, ptr %q.0116, i64 0, i32 3, !dbg !800
  store i16 %15, ptr %opacity46, align 2, !dbg !800, !tbaa !707
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0116, i64 1, !dbg !802
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !759, metadata !DIExpression()), !dbg !789
  %inc = add nuw nsw i64 %x.0114, 1, !dbg !803
  call void @llvm.dbg.value(metadata i64 %inc, metadata !758, metadata !DIExpression()), !dbg !789
  %exitcond.not = icmp eq i64 %inc, %4, !dbg !794
  br i1 %exitcond.not, label %for.end, label %for.body19, !dbg !797, !llvm.loop !804

for.end:                                          ; preds = %for.body19, %for.body19.us, %if.end14
  %call47 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call6, ptr noundef nonnull %exception5) #11, !dbg !815
  %cmp48 = icmp ne i32 %call47, 0, !dbg !817
  %spec.select104 = zext i1 %cmp48 to i32, !dbg !818
  call void @llvm.dbg.value(metadata i32 %spec.select104, metadata !751, metadata !DIExpression()), !dbg !762
  br label %cleanup, !dbg !819

cleanup:                                          ; preds = %if.end10, %for.body, %for.end
  %status.2 = phi i32 [ %spec.select104, %for.end ], [ 0, %for.body ], [ 0, %if.end10 ], !dbg !762
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !751, metadata !DIExpression()), !dbg !762
  %inc56 = add nuw nsw i64 %y.0119, 1, !dbg !820
  call void @llvm.dbg.value(metadata i64 %inc56, metadata !752, metadata !DIExpression()), !dbg !762
  %16 = load i64, ptr %rows, align 8, !dbg !779, !tbaa !780
  %cmp7 = icmp slt i64 %inc56, %16, !dbg !781
  br i1 %cmp7, label %for.body, label %for.end57, !dbg !782, !llvm.loop !821

for.end57:                                        ; preds = %cleanup, %if.end4
  %status.0.lcssa = phi i32 [ 1, %if.end4 ], [ %status.2, %cleanup ], !dbg !823
  %call58 = tail call ptr @DestroyCacheView(ptr noundef %call6) #8, !dbg !824
  call void @llvm.dbg.value(metadata ptr %call58, metadata !745, metadata !DIExpression()), !dbg !762
  ret i32 %status.0.lcssa, !dbg !825
}

declare !dbg !826 i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !831 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !836 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !839 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !842 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !845 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SortColormapByIntensity(ptr noundef %image) local_unnamed_addr #0 !dbg !848 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !852, metadata !DIExpression()), !dbg !866
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !867
  %0 = load i32, ptr %debug, align 8, !dbg !867, !tbaa !649
  %cmp.not = icmp eq i32 %0, 0, !dbg !869
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !870

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 324, ptr noundef nonnull @.str.5) #8, !dbg !871
  br label %if.end, !dbg !872

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !873, !tbaa !772
  %cmp1.not = icmp eq i32 %1, 2, !dbg !875
  br i1 %cmp1.not, label %if.end3, label %cleanup97, !dbg !876

if.end3:                                          ; preds = %if.end
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !877
  %2 = load i64, ptr %colors, align 8, !dbg !877, !tbaa !675
  %call4 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 2) #9, !dbg !878
  call void @llvm.dbg.value(metadata ptr %call4, metadata !858, metadata !DIExpression()), !dbg !866
  %cmp5 = icmp eq ptr %call4, null, !dbg !879
  br i1 %cmp5, label %if.then8, label %for.cond.preheader, !dbg !881

for.cond.preheader:                               ; preds = %if.end3
  %3 = load i64, ptr %colors, align 8, !tbaa !675
  call void @llvm.dbg.value(metadata i64 0, metadata !856, metadata !DIExpression()), !dbg !866
  %cmp14168 = icmp sgt i64 %3, 0, !dbg !882
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %4 = load ptr, ptr %colormap, align 8, !tbaa !678
  br i1 %cmp14168, label %for.body, label %for.end, !dbg !885

if.then8:                                         ; preds = %if.end3
  %exception9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !886
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !886
  %call10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 335, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #8, !dbg !886
  br label %cleanup97, !dbg !889

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0169 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0169, metadata !856, metadata !DIExpression()), !dbg !866
  %conv = trunc i64 %i.0169 to i16, !dbg !890
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 %i.0169, i32 3, !dbg !891
  store i16 %conv, ptr %opacity, align 2, !dbg !892, !tbaa !707
  %inc = add nuw nsw i64 %i.0169, 1, !dbg !893
  call void @llvm.dbg.value(metadata i64 %inc, metadata !856, metadata !DIExpression()), !dbg !866
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !882
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !885, !llvm.loop !894

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %colormap15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !896
  tail call void @qsort(ptr noundef %4, i64 noundef %3, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #8, !dbg !897
  call void @llvm.dbg.value(metadata i64 0, metadata !856, metadata !DIExpression()), !dbg !866
  %5 = load i64, ptr %colors, align 8, !tbaa !675
  %cmp19170 = icmp sgt i64 %5, 0, !dbg !898
  br i1 %cmp19170, label %for.body21.lr.ph, label %for.end30, !dbg !901

for.body21.lr.ph:                                 ; preds = %for.end
  %6 = load ptr, ptr %colormap15, align 8, !tbaa !678
  br label %for.body21, !dbg !901

for.body21:                                       ; preds = %for.body21.lr.ph, %for.body21
  %i.1171 = phi i64 [ 0, %for.body21.lr.ph ], [ %inc29, %for.body21 ]
  call void @llvm.dbg.value(metadata i64 %i.1171, metadata !856, metadata !DIExpression()), !dbg !866
  %conv22 = trunc i64 %i.1171 to i16, !dbg !902
  %opacity25 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 %i.1171, i32 3, !dbg !903
  %7 = load i16, ptr %opacity25, align 2, !dbg !903, !tbaa !707
  %conv26 = zext i16 %7 to i64, !dbg !904
  %arrayidx27 = getelementptr inbounds i16, ptr %call4, i64 %conv26, !dbg !905
  store i16 %conv22, ptr %arrayidx27, align 2, !dbg !906, !tbaa !806
  %inc29 = add nuw nsw i64 %i.1171, 1, !dbg !907
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !856, metadata !DIExpression()), !dbg !866
  %exitcond182.not = icmp eq i64 %inc29, %5, !dbg !898
  br i1 %exitcond182.not, label %for.end30, label %for.body21, !dbg !901, !llvm.loop !908

for.end30:                                        ; preds = %for.body21, %for.end
  call void @llvm.dbg.value(metadata i32 1, metadata !855, metadata !DIExpression()), !dbg !866
  %exception31 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !910
  call void @llvm.dbg.value(metadata ptr %exception31, metadata !854, metadata !DIExpression()), !dbg !866
  %call32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception31) #8, !dbg !911
  call void @llvm.dbg.value(metadata ptr %call32, metadata !853, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !857, metadata !DIExpression()), !dbg !866
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %8 = load i64, ptr %rows, align 8, !dbg !912, !tbaa !780
  %cmp34176 = icmp sgt i64 %8, 0, !dbg !913
  br i1 %cmp34176, label %for.body36.lr.ph, label %for.end94, !dbg !914

for.body36.lr.ph:                                 ; preds = %for.end30
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  br label %for.body36, !dbg !914

for.body36:                                       ; preds = %for.body36.lr.ph, %for.inc92
  %y.0178 = phi i64 [ 0, %for.body36.lr.ph ], [ %inc93, %for.inc92 ]
  %status.0177 = phi i32 [ 1, %for.body36.lr.ph ], [ %status.2166, %for.inc92 ]
  call void @llvm.dbg.value(metadata i64 %y.0178, metadata !857, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i32 %status.0177, metadata !855, metadata !DIExpression()), !dbg !866
  %9 = load i64, ptr %columns, align 8, !dbg !915, !tbaa !787
  %call37 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call32, i64 noundef 0, i64 noundef %y.0178, i64 noundef %9, i64 noundef 1, ptr noundef nonnull %exception31) #11, !dbg !916
  call void @llvm.dbg.value(metadata ptr %call37, metadata !865, metadata !DIExpression()), !dbg !917
  %cmp38 = icmp eq ptr %call37, null, !dbg !918
  br i1 %cmp38, label %for.inc92, label %if.end41, !dbg !920

if.end41:                                         ; preds = %for.body36
  %call42 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call32) #8, !dbg !921
  call void @llvm.dbg.value(metadata ptr %call42, metadata !864, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression()), !dbg !917
  %10 = load i64, ptr %columns, align 8, !tbaa !787
  call void @llvm.dbg.value(metadata ptr %call37, metadata !865, metadata !DIExpression()), !dbg !917
  %cmp45172 = icmp sgt i64 %10, 0, !dbg !922
  br i1 %cmp45172, label %for.body47.lr.ph, label %cleanup, !dbg !925

for.body47.lr.ph:                                 ; preds = %if.end41
  %cmp48 = icmp eq ptr %call42, null
  %11 = load ptr, ptr %colormap15, align 8, !tbaa !678
  br i1 %cmp48, label %for.body47.us, label %for.body47, !dbg !926

for.body47.us:                                    ; preds = %for.body47.lr.ph, %for.body47.us
  %q.0175.us = phi ptr [ %incdec.ptr.us, %for.body47.us ], [ %call37, %for.body47.lr.ph ]
  %x.0173.us = phi i64 [ %inc78.us, %for.body47.us ], [ 0, %for.body47.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0175.us, metadata !865, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i64 %x.0173.us, metadata !863, metadata !DIExpression()), !dbg !917
  %12 = load i16, ptr %call4, align 2, !dbg !928, !tbaa !806
  call void @llvm.dbg.value(metadata i16 %18, metadata !859, metadata !DIExpression()), !dbg !917
  %conv61.us = zext i16 %12 to i64, !dbg !929
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61.us, i32 2, !dbg !929
  %13 = load i16, ptr %red.us, align 2, !dbg !929, !tbaa !698
  %red63.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0175.us, i64 0, i32 2, !dbg !929
  store i16 %13, ptr %red63.us, align 2, !dbg !929, !tbaa !698
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61.us, i32 1, !dbg !929
  %14 = load i16, ptr %green.us, align 2, !dbg !929, !tbaa !701
  %green67.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0175.us, i64 0, i32 1, !dbg !929
  store i16 %14, ptr %green67.us, align 2, !dbg !929, !tbaa !701
  %add.ptr70.us = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61.us, !dbg !929
  %15 = load i16, ptr %add.ptr70.us, align 2, !dbg !929, !tbaa !704
  store i16 %15, ptr %q.0175.us, align 2, !dbg !929, !tbaa !704
  %opacity75.us = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61.us, i32 3, !dbg !929
  %16 = load i16, ptr %opacity75.us, align 2, !dbg !929, !tbaa !707
  %opacity76.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0175.us, i64 0, i32 3, !dbg !929
  store i16 %16, ptr %opacity76.us, align 2, !dbg !929, !tbaa !707
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0175.us, i64 1, !dbg !931
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !865, metadata !DIExpression()), !dbg !917
  %inc78.us = add nuw nsw i64 %x.0173.us, 1, !dbg !932
  call void @llvm.dbg.value(metadata i64 %inc78.us, metadata !863, metadata !DIExpression()), !dbg !917
  %exitcond184.not = icmp eq i64 %inc78.us, %10, !dbg !922
  br i1 %exitcond184.not, label %cleanup, label %for.body47.us, !dbg !925, !llvm.loop !933

for.body47:                                       ; preds = %for.body47.lr.ph, %for.body47
  %q.0175 = phi ptr [ %incdec.ptr, %for.body47 ], [ %call37, %for.body47.lr.ph ]
  %x.0173 = phi i64 [ %inc78, %for.body47 ], [ 0, %for.body47.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0175, metadata !865, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i64 %x.0173, metadata !863, metadata !DIExpression()), !dbg !917
  %add.ptr = getelementptr inbounds i16, ptr %call42, i64 %x.0173, !dbg !926
  %17 = load i16, ptr %add.ptr, align 2, !dbg !926, !tbaa !806
  %conv51 = zext i16 %17 to i64, !dbg !926
  %arrayidx53 = getelementptr inbounds i16, ptr %call4, i64 %conv51, !dbg !928
  %18 = load i16, ptr %arrayidx53, align 2, !dbg !928, !tbaa !806
  call void @llvm.dbg.value(metadata i16 %18, metadata !859, metadata !DIExpression()), !dbg !917
  store i16 %18, ptr %add.ptr, align 2, !dbg !935, !tbaa !806
  %conv61 = zext i16 %18 to i64, !dbg !929
  %red = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61, i32 2, !dbg !929
  %19 = load i16, ptr %red, align 2, !dbg !929, !tbaa !698
  %red63 = getelementptr inbounds %struct._PixelPacket, ptr %q.0175, i64 0, i32 2, !dbg !929
  store i16 %19, ptr %red63, align 2, !dbg !929, !tbaa !698
  %green = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61, i32 1, !dbg !929
  %20 = load i16, ptr %green, align 2, !dbg !929, !tbaa !701
  %green67 = getelementptr inbounds %struct._PixelPacket, ptr %q.0175, i64 0, i32 1, !dbg !929
  store i16 %20, ptr %green67, align 2, !dbg !929, !tbaa !701
  %add.ptr70 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61, !dbg !929
  %21 = load i16, ptr %add.ptr70, align 2, !dbg !929, !tbaa !704
  store i16 %21, ptr %q.0175, align 2, !dbg !929, !tbaa !704
  %opacity75 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %conv61, i32 3, !dbg !929
  %22 = load i16, ptr %opacity75, align 2, !dbg !929, !tbaa !707
  %opacity76 = getelementptr inbounds %struct._PixelPacket, ptr %q.0175, i64 0, i32 3, !dbg !929
  store i16 %22, ptr %opacity76, align 2, !dbg !929, !tbaa !707
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0175, i64 1, !dbg !931
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !865, metadata !DIExpression()), !dbg !917
  %inc78 = add nuw nsw i64 %x.0173, 1, !dbg !932
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !863, metadata !DIExpression()), !dbg !917
  %exitcond183.not = icmp eq i64 %inc78, %10, !dbg !922
  br i1 %exitcond183.not, label %cleanup, label %for.body47, !dbg !925, !llvm.loop !933

cleanup:                                          ; preds = %for.body47, %for.body47.us, %if.end41
  %call80 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call32, ptr noundef nonnull %exception31) #11, !dbg !938
  %cmp81 = icmp eq i32 %call80, 0, !dbg !940
  call void @llvm.dbg.value(metadata i32 undef, metadata !855, metadata !DIExpression()), !dbg !866
  %cmp85167 = icmp eq i32 %status.0177, 0, !dbg !941
  %cmp85 = select i1 %cmp81, i1 true, i1 %cmp85167, !dbg !941
  %not.cmp85 = xor i1 %cmp85, true, !dbg !943
  %spec.select158 = zext i1 %not.cmp85 to i32, !dbg !943
  call void @llvm.dbg.value(metadata i32 %spec.select158, metadata !855, metadata !DIExpression()), !dbg !866
  br i1 %cmp85, label %for.end94, label %for.inc92

for.inc92:                                        ; preds = %for.body36, %cleanup
  %status.2166 = phi i32 [ %spec.select158, %cleanup ], [ 0, %for.body36 ]
  %inc93 = add nuw nsw i64 %y.0178, 1, !dbg !944
  call void @llvm.dbg.value(metadata i64 %inc93, metadata !857, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i32 %status.2166, metadata !855, metadata !DIExpression()), !dbg !866
  %23 = load i64, ptr %rows, align 8, !dbg !912, !tbaa !780
  %cmp34 = icmp slt i64 %inc93, %23, !dbg !913
  br i1 %cmp34, label %for.body36, label %for.end94, !dbg !914, !llvm.loop !945

for.end94:                                        ; preds = %for.inc92, %cleanup, %for.end30
  %status.3 = phi i32 [ 1, %for.end30 ], [ %spec.select158, %cleanup ], [ %status.2166, %for.inc92 ], !dbg !866
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !855, metadata !DIExpression()), !dbg !866
  %call95 = tail call ptr @DestroyCacheView(ptr noundef %call32) #8, !dbg !947
  call void @llvm.dbg.value(metadata ptr %call95, metadata !853, metadata !DIExpression()), !dbg !866
  %call96 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call4) #8, !dbg !948
  call void @llvm.dbg.value(metadata ptr %call96, metadata !858, metadata !DIExpression()), !dbg !866
  br label %cleanup97, !dbg !949

cleanup97:                                        ; preds = %if.end, %for.end94, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %status.3, %for.end94 ], [ 1, %if.end ], !dbg !866
  ret i32 %retval.0, !dbg !950
}

; Function Attrs: nofree
declare !dbg !951 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #6 !dbg !961 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !963, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %y, metadata !964, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %x, metadata !965, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %y, metadata !966, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %y, metadata !969, metadata !DIExpression()) #8, !dbg !976
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 2, !dbg !978
  %0 = load i16, ptr %red.i, align 2, !dbg !978, !tbaa !698
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 1, !dbg !980
  %1 = load i16, ptr %green.i, align 2, !dbg !980, !tbaa !701
  %cmp.i = icmp eq i16 %0, %1, !dbg !981
  %2 = load i16, ptr %y, align 2, !dbg !976, !tbaa !704
  %cmp6.i = icmp eq i16 %0, %2
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false, !dbg !982
  br i1 %or.cond.i, label %PixelPacketIntensity.exit, label %if.end.i, !dbg !982

if.end.i:                                         ; preds = %entry
  %conv11.i = uitofp i16 %0 to double, !dbg !983
  %conv14.i = uitofp i16 %1 to double, !dbg !984
  %mul15.i = fmul double %conv14.i, 0x3FE6E29307AF20EA, !dbg !985
  %3 = tail call double @llvm.fmuladd.f64(double %conv11.i, double 2.126560e-01, double %mul15.i) #8, !dbg !986
  %conv18.i = uitofp i16 %2 to double, !dbg !987
  %4 = tail call double @llvm.fmuladd.f64(double %conv18.i, double 7.218600e-02, double %3) #8, !dbg !988
  %conv19.i = fptrunc double %4 to float, !dbg !989
  call void @llvm.dbg.value(metadata float %conv19.i, metadata !975, metadata !DIExpression()) #8, !dbg !976
  call void @llvm.dbg.value(metadata float %conv19.i, metadata !990, metadata !DIExpression()) #8, !dbg !996
  %cmp.i.i = fcmp ugt float %conv19.i, 0.000000e+00, !dbg !998
  br i1 %cmp.i.i, label %if.end.i.i, label %PixelPacketIntensity.exit, !dbg !1000

if.end.i.i:                                       ; preds = %if.end.i
  %cmp1.i.i = fcmp ult float %conv19.i, 6.553500e+04, !dbg !1001
  br i1 %cmp1.i.i, label %if.end3.i.i, label %PixelPacketIntensity.exit, !dbg !1003

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %conv19.i, 5.000000e-01, !dbg !1004
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1005
  br label %PixelPacketIntensity.exit, !dbg !1006

PixelPacketIntensity.exit:                        ; preds = %entry, %if.end.i, %if.end.i.i, %if.end3.i.i
  %retval.0.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %if.end.i ], [ -1, %if.end.i.i ], [ %0, %entry ], !dbg !976
  call void @llvm.dbg.value(metadata ptr %x, metadata !969, metadata !DIExpression()) #8, !dbg !1007
  %red.i3 = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 2, !dbg !1009
  %5 = load i16, ptr %red.i3, align 2, !dbg !1009, !tbaa !698
  %green.i4 = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 1, !dbg !1010
  %6 = load i16, ptr %green.i4, align 2, !dbg !1010, !tbaa !701
  %cmp.i5 = icmp eq i16 %5, %6, !dbg !1011
  %7 = load i16, ptr %x, align 2, !dbg !1007, !tbaa !704
  %cmp6.i6 = icmp eq i16 %5, %7
  %or.cond.i7 = select i1 %cmp.i5, i1 %cmp6.i6, i1 false, !dbg !1012
  br i1 %or.cond.i7, label %PixelPacketIntensity.exit21, label %if.end.i14, !dbg !1012

if.end.i14:                                       ; preds = %PixelPacketIntensity.exit
  %conv11.i8 = uitofp i16 %5 to double, !dbg !1013
  %conv14.i9 = uitofp i16 %6 to double, !dbg !1014
  %mul15.i10 = fmul double %conv14.i9, 0x3FE6E29307AF20EA, !dbg !1015
  %8 = tail call double @llvm.fmuladd.f64(double %conv11.i8, double 2.126560e-01, double %mul15.i10) #8, !dbg !1016
  %conv18.i11 = uitofp i16 %7 to double, !dbg !1017
  %9 = tail call double @llvm.fmuladd.f64(double %conv18.i11, double 7.218600e-02, double %8) #8, !dbg !1018
  %conv19.i12 = fptrunc double %9 to float, !dbg !1019
  call void @llvm.dbg.value(metadata float %conv19.i12, metadata !975, metadata !DIExpression()) #8, !dbg !1007
  call void @llvm.dbg.value(metadata float %conv19.i12, metadata !990, metadata !DIExpression()) #8, !dbg !1020
  %cmp.i.i13 = fcmp ugt float %conv19.i12, 0.000000e+00, !dbg !1022
  br i1 %cmp.i.i13, label %if.end.i.i16, label %PixelPacketIntensity.exit21, !dbg !1023

if.end.i.i16:                                     ; preds = %if.end.i14
  %cmp1.i.i15 = fcmp ult float %conv19.i12, 6.553500e+04, !dbg !1024
  br i1 %cmp1.i.i15, label %if.end3.i.i19, label %PixelPacketIntensity.exit21, !dbg !1025

if.end3.i.i19:                                    ; preds = %if.end.i.i16
  %add.i.i17 = fadd float %conv19.i12, 5.000000e-01, !dbg !1026
  %conv.i.i18 = fptoui float %add.i.i17 to i16, !dbg !1027
  br label %PixelPacketIntensity.exit21, !dbg !1028

PixelPacketIntensity.exit21:                      ; preds = %PixelPacketIntensity.exit, %if.end.i14, %if.end.i.i16, %if.end3.i.i19
  %retval.0.i20 = phi i16 [ %conv.i.i18, %if.end3.i.i19 ], [ 0, %if.end.i14 ], [ -1, %if.end.i.i16 ], [ %5, %PixelPacketIntensity.exit ], !dbg !1007
  %conv = zext i16 %retval.0.i to i32, !dbg !1029
  %conv2 = zext i16 %retval.0.i20 to i32, !dbg !1030
  %sub = sub nsw i32 %conv, %conv2, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %sub, metadata !967, metadata !DIExpression()), !dbg !968
  ret i32 %sub, !dbg !1032
}

declare !dbg !1033 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind allocsize(1,2) }
attributes #11 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!625, !626, !627, !628, !629, !630}
!llvm.ident = !{!631}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/colormap.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "9356bb4c6b888aa8bbd9358e1655b6cb")
!2 = !{!3, !9, !14, !51, !76, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "UndefinedClass", value: 0)
!12 = !DIEnumerator(name: "DirectClass", value: 1)
!13 = !DIEnumerator(name: "PseudoClass", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 25, baseType: !5, size: 32, elements: !16)
!15 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!17 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!18 = !DIEnumerator(name: "RGBColorspace", value: 1)
!19 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!20 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!21 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!22 = !DIEnumerator(name: "LabColorspace", value: 5)
!23 = !DIEnumerator(name: "XYZColorspace", value: 6)
!24 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!25 = !DIEnumerator(name: "YCCColorspace", value: 8)
!26 = !DIEnumerator(name: "YIQColorspace", value: 9)
!27 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!28 = !DIEnumerator(name: "YUVColorspace", value: 11)
!29 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!30 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!31 = !DIEnumerator(name: "HSBColorspace", value: 14)
!32 = !DIEnumerator(name: "HSLColorspace", value: 15)
!33 = !DIEnumerator(name: "HWBColorspace", value: 16)
!34 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!35 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!36 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!37 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!38 = !DIEnumerator(name: "LogColorspace", value: 21)
!39 = !DIEnumerator(name: "CMYColorspace", value: 22)
!40 = !DIEnumerator(name: "LuvColorspace", value: 23)
!41 = !DIEnumerator(name: "HCLColorspace", value: 24)
!42 = !DIEnumerator(name: "LCHColorspace", value: 25)
!43 = !DIEnumerator(name: "LMSColorspace", value: 26)
!44 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!45 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!46 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!47 = !DIEnumerator(name: "HSIColorspace", value: 30)
!48 = !DIEnumerator(name: "HSVColorspace", value: 31)
!49 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!50 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 25, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!54 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!55 = !DIEnumerator(name: "NoCompression", value: 1)
!56 = !DIEnumerator(name: "BZipCompression", value: 2)
!57 = !DIEnumerator(name: "DXT1Compression", value: 3)
!58 = !DIEnumerator(name: "DXT3Compression", value: 4)
!59 = !DIEnumerator(name: "DXT5Compression", value: 5)
!60 = !DIEnumerator(name: "FaxCompression", value: 6)
!61 = !DIEnumerator(name: "Group4Compression", value: 7)
!62 = !DIEnumerator(name: "JPEGCompression", value: 8)
!63 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!64 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!65 = !DIEnumerator(name: "LZWCompression", value: 11)
!66 = !DIEnumerator(name: "RLECompression", value: 12)
!67 = !DIEnumerator(name: "ZipCompression", value: 13)
!68 = !DIEnumerator(name: "ZipSCompression", value: 14)
!69 = !DIEnumerator(name: "PizCompression", value: 15)
!70 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!71 = !DIEnumerator(name: "B44Compression", value: 17)
!72 = !DIEnumerator(name: "B44ACompression", value: 18)
!73 = !DIEnumerator(name: "LZMACompression", value: 19)
!74 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!75 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 75, baseType: !5, size: 32, elements: !78)
!77 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87}
!79 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!80 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!81 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!82 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!83 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!84 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!85 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!86 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!87 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 42, baseType: !5, size: 32, elements: !90)
!89 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!92 = !DIEnumerator(name: "SaturationIntent", value: 1)
!93 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!94 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!95 = !DIEnumerator(name: "RelativeIntent", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 88, baseType: !5, size: 32, elements: !97)
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
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 63, baseType: !5, size: 32, elements: !137)
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
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 47, baseType: !5, size: 32, elements: !343)
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
!393 = !{!394, !395, !397, !407, !408, !459, !402, !616, !619, !618, !620, !403, !621, !562, !623}
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !396, line: 46, baseType: !394)
!396 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !400)
!400 = !{!401, !404, !405, !406}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !399, file: !326, line: 143, baseType: !402, size: 16)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !403)
!403 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !399, file: !326, line: 144, baseType: !402, size: 16, offset: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !399, file: !326, line: 145, baseType: !402, size: 16, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !399, file: !326, line: 146, baseType: !402, size: 16, offset: 48)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !77, line: 150, size: 105920, elements: !411)
!411 = !{!412, !414, !416, !418, !419, !421, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !434, !448, !450, !451, !453, !456, !457, !458, !464, !465, !466, !474, !475, !476, !477, !478, !479, !481, !483, !485, !487, !489, !491, !493, !494, !495, !496, !497, !498, !499, !507, !522, !536, !537, !538, !539, !543, !547, !551, !552, !553, !554, !555, !573, !574, !576, !577, !587, !588, !590, !591, !592, !593, !594, !595, !597, !598, !599, !600, !601, !602, !603, !605, !606, !607, !608, !609, !613, !615}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !410, file: !77, line: 153, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !9)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !410, file: !77, line: 156, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !15, line: 61, baseType: !14)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !410, file: !77, line: 159, baseType: !417, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !52, line: 49, baseType: !51)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !410, file: !77, line: 162, baseType: !395, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !410, file: !77, line: 165, baseType: !420, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !77, line: 86, baseType: !76)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !410, file: !77, line: 168, baseType: !422, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !410, file: !77, line: 169, baseType: !422, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !410, file: !77, line: 172, baseType: !395, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !410, file: !77, line: 173, baseType: !395, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !410, file: !77, line: 174, baseType: !395, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !410, file: !77, line: 175, baseType: !395, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !410, file: !77, line: 178, baseType: !397, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !410, file: !77, line: 179, baseType: !398, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !410, file: !77, line: 180, baseType: !398, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !410, file: !77, line: 181, baseType: !398, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !410, file: !77, line: 184, baseType: !433, size: 64, offset: 832)
!433 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !410, file: !77, line: 187, baseType: !435, size: 768, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !77, line: 128, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !77, line: 121, size: 768, elements: !437)
!437 = !{!438, !445, !446, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !436, file: !77, line: 124, baseType: !439, size: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !77, line: 101, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !77, line: 95, size: 192, elements: !441)
!441 = !{!442, !443, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !440, file: !77, line: 98, baseType: !433, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !440, file: !77, line: 99, baseType: !433, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !440, file: !77, line: 100, baseType: !433, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !436, file: !77, line: 125, baseType: !439, size: 192, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !436, file: !77, line: 126, baseType: !439, size: 192, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !436, file: !77, line: 127, baseType: !439, size: 192, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !410, file: !77, line: 190, baseType: !449, size: 32, offset: 1664)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !410, file: !77, line: 193, baseType: !407, size: 64, offset: 1728)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !410, file: !77, line: 196, baseType: !452, size: 32, offset: 1792)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !77, line: 93, baseType: !96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !410, file: !77, line: 199, baseType: !454, size: 64, offset: 1856)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !410, file: !77, line: 200, baseType: !454, size: 64, offset: 1920)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !410, file: !77, line: 201, baseType: !454, size: 64, offset: 1984)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !410, file: !77, line: 204, baseType: !459, size: 64, offset: 2048)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !460, line: 77, baseType: !461)
!460 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !462, line: 193, baseType: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!463 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !410, file: !77, line: 207, baseType: !433, size: 64, offset: 2112)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !410, file: !77, line: 208, baseType: !433, size: 64, offset: 2176)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !410, file: !77, line: 211, baseType: !467, size: 256, offset: 2240)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !469)
!469 = !{!470, !471, !472, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !468, file: !153, line: 124, baseType: !395, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !468, file: !153, line: 125, baseType: !395, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !468, file: !153, line: 128, baseType: !459, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !468, file: !153, line: 129, baseType: !459, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !410, file: !77, line: 212, baseType: !467, size: 256, offset: 2496)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !410, file: !77, line: 213, baseType: !467, size: 256, offset: 2752)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !410, file: !77, line: 216, baseType: !433, size: 64, offset: 3008)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !410, file: !77, line: 217, baseType: !433, size: 64, offset: 3072)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !410, file: !77, line: 218, baseType: !433, size: 64, offset: 3136)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !410, file: !77, line: 221, baseType: !480, size: 32, offset: 3200)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !410, file: !77, line: 224, baseType: !482, size: 32, offset: 3232)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !77, line: 73, baseType: !136)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !410, file: !77, line: 227, baseType: !484, size: 32, offset: 3264)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !410, file: !77, line: 230, baseType: !486, size: 32, offset: 3296)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !410, file: !77, line: 233, baseType: !488, size: 32, offset: 3328)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !410, file: !77, line: 236, baseType: !490, size: 32, offset: 3360)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !410, file: !77, line: 239, baseType: !492, size: 64, offset: 3392)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !410, file: !77, line: 242, baseType: !395, size: 64, offset: 3456)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !410, file: !77, line: 243, baseType: !395, size: 64, offset: 3520)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !410, file: !77, line: 246, baseType: !459, size: 64, offset: 3584)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !410, file: !77, line: 249, baseType: !395, size: 64, offset: 3648)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !410, file: !77, line: 250, baseType: !395, size: 64, offset: 3712)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !410, file: !77, line: 253, baseType: !459, size: 64, offset: 3776)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !410, file: !77, line: 256, baseType: !500, size: 192, offset: 3840)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !501, line: 68, baseType: !502)
!501 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !501, line: 62, size: 192, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !502, file: !501, line: 65, baseType: !433, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !502, file: !501, line: 66, baseType: !433, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !502, file: !501, line: 67, baseType: !433, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !410, file: !77, line: 259, baseType: !508, size: 512, offset: 4032)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !510)
!510 = !{!511, !518, !519, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !509, file: !247, line: 43, baseType: !512, size: 192)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !513, file: !247, line: 35, baseType: !433, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !513, file: !247, line: 36, baseType: !433, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !513, file: !247, line: 37, baseType: !433, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !509, file: !247, line: 44, baseType: !512, size: 192, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !509, file: !247, line: 47, baseType: !520, size: 32, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !509, file: !247, line: 50, baseType: !395, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !410, file: !77, line: 262, baseType: !523, size: 64, offset: 4544)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !524, line: 26, baseType: !525)
!524 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!422, !528, !530, !533, !407}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !532)
!532 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !535)
!535 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !410, file: !77, line: 265, baseType: !407, size: 64, offset: 4608)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !410, file: !77, line: 266, baseType: !407, size: 64, offset: 4672)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !410, file: !77, line: 267, baseType: !407, size: 64, offset: 4736)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !410, file: !77, line: 270, baseType: !540, size: 64, offset: 4800)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !52, line: 52, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !52, line: 51, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !410, file: !77, line: 273, baseType: !544, size: 64, offset: 4864)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !546)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !410, file: !77, line: 276, baseType: !548, size: 32768, offset: 4928)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 32768, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 4096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !410, file: !77, line: 277, baseType: !548, size: 32768, offset: 37696)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !410, file: !77, line: 278, baseType: !548, size: 32768, offset: 70464)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !410, file: !77, line: 281, baseType: !395, size: 64, offset: 103232)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !410, file: !77, line: 282, baseType: !395, size: 64, offset: 103296)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !410, file: !77, line: 285, baseType: !556, size: 448, offset: 103360)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !558)
!558 = !{!559, !561, !563, !564, !565, !566, !567, !572}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !557, file: !253, line: 105, baseType: !560, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !557, file: !253, line: 108, baseType: !562, size: 32, offset: 32)
!562 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !557, file: !253, line: 111, baseType: !454, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !557, file: !253, line: 112, baseType: !454, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !557, file: !253, line: 115, baseType: !407, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !557, file: !253, line: 118, baseType: !422, size: 32, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !557, file: !253, line: 121, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !570, line: 26, baseType: !571)
!570 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !570, line: 25, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !557, file: !253, line: 124, baseType: !395, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !410, file: !77, line: 288, baseType: !422, size: 32, offset: 103808)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !410, file: !77, line: 291, baseType: !575, size: 64, offset: 103872)
!575 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !459)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !410, file: !77, line: 294, baseType: !568, size: 64, offset: 103936)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !410, file: !77, line: 297, baseType: !578, size: 256, offset: 104000)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !580)
!580 = !{!581, !582, !583, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !89, line: 30, baseType: !454, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !579, file: !89, line: 33, baseType: !395, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !579, file: !89, line: 36, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !579, file: !89, line: 39, baseType: !395, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !410, file: !77, line: 298, baseType: !578, size: 256, offset: 104256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !410, file: !77, line: 299, baseType: !589, size: 64, offset: 104512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !410, file: !77, line: 302, baseType: !395, size: 64, offset: 104576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !410, file: !77, line: 305, baseType: !395, size: 64, offset: 104640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !410, file: !77, line: 308, baseType: !492, size: 64, offset: 104704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !410, file: !77, line: 309, baseType: !492, size: 64, offset: 104768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !77, line: 310, baseType: !492, size: 64, offset: 104832)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !410, file: !77, line: 313, baseType: !596, size: 32, offset: 104896)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !410, file: !77, line: 316, baseType: !422, size: 32, offset: 104928)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !410, file: !77, line: 319, baseType: !398, size: 64, offset: 104960)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !410, file: !77, line: 322, baseType: !492, size: 64, offset: 105024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !410, file: !77, line: 325, baseType: !467, size: 256, offset: 105088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !410, file: !77, line: 328, baseType: !407, size: 64, offset: 105344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !410, file: !77, line: 329, baseType: !407, size: 64, offset: 105408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !77, line: 332, baseType: !604, size: 32, offset: 105472)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !77, line: 61, baseType: !342)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !410, file: !77, line: 335, baseType: !422, size: 32, offset: 105504)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !410, file: !77, line: 338, baseType: !534, size: 64, offset: 105536)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !410, file: !77, line: 341, baseType: !422, size: 32, offset: 105600)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !410, file: !77, line: 344, baseType: !395, size: 64, offset: 105664)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !410, file: !77, line: 347, baseType: !610, size: 64, offset: 105728)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !611, line: 7, baseType: !612)
!611 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !462, line: 160, baseType: !463)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !410, file: !77, line: 350, baseType: !614, size: 32, offset: 105792)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !410, file: !77, line: 353, baseType: !395, size: 64, offset: 105856)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !402)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !624)
!624 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!625 = !{i32 7, !"Dwarf Version", i32 5}
!626 = !{i32 2, !"Debug Info Version", i32 3}
!627 = !{i32 1, !"wchar_size", i32 4}
!628 = !{i32 7, !"PIC Level", i32 2}
!629 = !{i32 7, !"PIE Level", i32 2}
!630 = !{i32 7, !"uwtable", i32 2}
!631 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!632 = distinct !DISubprogram(name: "AcquireImageColormap", scope: !633, file: !633, line: 120, type: !634, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !637)
!633 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9356bb4c6b888aa8bbd9358e1655b6cb")
!634 = !DISubroutineType(types: !635)
!635 = !{!422, !408, !636}
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!637 = !{!638, !639, !640, !641, !642}
!638 = !DILocalVariable(name: "image", arg: 1, scope: !632, file: !633, line: 120, type: !408)
!639 = !DILocalVariable(name: "colors", arg: 2, scope: !632, file: !633, line: 121, type: !636)
!640 = !DILocalVariable(name: "i", scope: !632, file: !633, line: 124, type: !459)
!641 = !DILocalVariable(name: "length", scope: !632, file: !633, line: 127, type: !395)
!642 = !DILocalVariable(name: "pixel", scope: !643, file: !633, line: 150, type: !395)
!643 = distinct !DILexicalBlock(scope: !644, file: !633, line: 148, column: 3)
!644 = distinct !DILexicalBlock(scope: !645, file: !633, line: 147, column: 3)
!645 = distinct !DILexicalBlock(scope: !632, file: !633, line: 147, column: 3)
!646 = !DILocation(line: 0, scope: !632)
!647 = !DILocation(line: 134, column: 14, scope: !648)
!648 = distinct !DILexicalBlock(scope: !632, file: !633, line: 134, column: 7)
!649 = !{!650, !651, i64 12976}
!650 = !{!"_Image", !651, i64 0, !651, i64 4, !651, i64 8, !653, i64 16, !651, i64 24, !651, i64 28, !651, i64 32, !653, i64 40, !653, i64 48, !653, i64 56, !653, i64 64, !654, i64 72, !655, i64 80, !655, i64 88, !655, i64 96, !657, i64 104, !658, i64 112, !651, i64 208, !654, i64 216, !651, i64 224, !654, i64 232, !654, i64 240, !654, i64 248, !653, i64 256, !657, i64 264, !657, i64 272, !660, i64 280, !660, i64 312, !660, i64 344, !657, i64 376, !657, i64 384, !657, i64 392, !651, i64 400, !651, i64 404, !651, i64 408, !651, i64 412, !651, i64 416, !651, i64 420, !654, i64 424, !653, i64 432, !653, i64 440, !653, i64 448, !653, i64 456, !653, i64 464, !653, i64 472, !661, i64 480, !662, i64 504, !654, i64 568, !654, i64 576, !654, i64 584, !654, i64 592, !654, i64 600, !654, i64 608, !651, i64 616, !651, i64 4712, !651, i64 8808, !653, i64 12904, !653, i64 12912, !664, i64 12920, !651, i64 12976, !653, i64 12984, !654, i64 12992, !666, i64 13000, !666, i64 13032, !654, i64 13064, !653, i64 13072, !653, i64 13080, !654, i64 13088, !654, i64 13096, !654, i64 13104, !651, i64 13112, !651, i64 13116, !655, i64 13120, !654, i64 13128, !660, i64 13136, !654, i64 13168, !654, i64 13176, !651, i64 13184, !651, i64 13188, !667, i64 13192, !651, i64 13200, !653, i64 13208, !653, i64 13216, !651, i64 13224, !653, i64 13232}
!651 = !{!"omnipotent char", !652, i64 0}
!652 = !{!"Simple C/C++ TBAA"}
!653 = !{!"long", !651, i64 0}
!654 = !{!"any pointer", !651, i64 0}
!655 = !{!"_PixelPacket", !656, i64 0, !656, i64 2, !656, i64 4, !656, i64 6}
!656 = !{!"short", !651, i64 0}
!657 = !{!"double", !651, i64 0}
!658 = !{!"_ChromaticityInfo", !659, i64 0, !659, i64 24, !659, i64 48, !659, i64 72}
!659 = !{!"_PrimaryInfo", !657, i64 0, !657, i64 8, !657, i64 16}
!660 = !{!"_RectangleInfo", !653, i64 0, !653, i64 8, !653, i64 16, !653, i64 24}
!661 = !{!"_ErrorInfo", !657, i64 0, !657, i64 8, !657, i64 16}
!662 = !{!"_TimerInfo", !663, i64 0, !663, i64 24, !651, i64 48, !653, i64 56}
!663 = !{!"_Timer", !657, i64 0, !657, i64 8, !657, i64 16}
!664 = !{!"_ExceptionInfo", !651, i64 0, !665, i64 4, !654, i64 8, !654, i64 16, !654, i64 24, !651, i64 32, !654, i64 40, !653, i64 48}
!665 = !{!"int", !651, i64 0}
!666 = !{!"_ProfileInfo", !654, i64 0, !653, i64 8, !654, i64 16, !653, i64 24}
!667 = !{!"long long", !651, i64 0}
!668 = !DILocation(line: 134, column: 20, scope: !648)
!669 = !DILocation(line: 134, column: 7, scope: !632)
!670 = !DILocation(line: 135, column: 68, scope: !648)
!671 = !DILocation(line: 135, column: 12, scope: !648)
!672 = !DILocation(line: 135, column: 5, scope: !648)
!673 = !DILocation(line: 136, column: 10, scope: !632)
!674 = !DILocation(line: 136, column: 16, scope: !632)
!675 = !{!650, !653, i64 64}
!676 = !DILocation(line: 138, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !632, file: !633, line: 138, column: 7)
!678 = !{!650, !654, i64 72}
!679 = !DILocation(line: 138, column: 23, scope: !677)
!680 = !DILocation(line: 138, column: 7, scope: !632)
!681 = !DILocation(line: 139, column: 37, scope: !677)
!682 = !DILocation(line: 139, column: 5, scope: !677)
!683 = !DILocation(line: 142, column: 37, scope: !677)
!684 = !DILocation(line: 0, scope: !677)
!685 = !DILocation(line: 144, column: 23, scope: !686)
!686 = distinct !DILexicalBlock(scope: !632, file: !633, line: 144, column: 7)
!687 = !DILocation(line: 144, column: 7, scope: !632)
!688 = !DILocation(line: 147, column: 15, scope: !644)
!689 = !DILocation(line: 147, column: 3, scope: !645)
!690 = !DILocation(line: 145, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !633, line: 145, column: 5)
!692 = distinct !DILexicalBlock(scope: !686, file: !633, line: 145, column: 5)
!693 = !DILocation(line: 152, column: 22, scope: !643)
!694 = !DILocation(line: 0, scope: !643)
!695 = !DILocation(line: 153, column: 28, scope: !643)
!696 = !DILocation(line: 153, column: 24, scope: !643)
!697 = !DILocation(line: 153, column: 27, scope: !643)
!698 = !{!655, !656, i64 4}
!699 = !DILocation(line: 154, column: 24, scope: !643)
!700 = !DILocation(line: 154, column: 29, scope: !643)
!701 = !{!655, !656, i64 2}
!702 = !DILocation(line: 155, column: 5, scope: !643)
!703 = !DILocation(line: 155, column: 28, scope: !643)
!704 = !{!655, !656, i64 0}
!705 = !DILocation(line: 156, column: 24, scope: !643)
!706 = !DILocation(line: 156, column: 31, scope: !643)
!707 = !{!655, !656, i64 6}
!708 = !DILocation(line: 147, column: 43, scope: !644)
!709 = distinct !{!709, !689, !710, !711, !712}
!710 = !DILocation(line: 157, column: 3, scope: !645)
!711 = !{!"llvm.loop.mustprogress"}
!712 = !{!"llvm.loop.unroll.disable"}
!713 = !DILocation(line: 158, column: 10, scope: !632)
!714 = !DILocation(line: 158, column: 3, scope: !632)
!715 = !DILocation(line: 159, column: 1, scope: !632)
!716 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!717 = !DISubroutineType(types: !718)
!718 = !{!422, !719, !528, !528, !636, !528, null}
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!721 = !{}
!722 = !DISubprogram(name: "AcquireQuantumMemory", scope: !723, file: !723, line: 42, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!723 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!724 = !DISubroutineType(types: !725)
!725 = !{!407, !636, !636}
!726 = !DISubprogram(name: "ResizeQuantumMemory", scope: !723, file: !723, line: 55, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!727 = !DISubroutineType(types: !728)
!728 = !{!407, !407, !636, !636}
!729 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!730 = !DISubroutineType(types: !731)
!731 = !{!422, !732, !528, !528, !636, !733, !528, !528, null}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!734 = !DISubprogram(name: "SetImageStorageClass", scope: !77, file: !77, line: 542, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!735 = !DISubroutineType(types: !736)
!736 = !{!422, !408, !737}
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!738 = distinct !DISubprogram(name: "CycleColormapImage", scope: !633, file: !633, line: 187, type: !739, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!422, !408, !741}
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!742 = !{!743, !744, !745, !750, !751, !752, !753, !758, !759, !761}
!743 = !DILocalVariable(name: "image", arg: 1, scope: !738, file: !633, line: 187, type: !408)
!744 = !DILocalVariable(name: "displace", arg: 2, scope: !738, file: !633, line: 188, type: !741)
!745 = !DILocalVariable(name: "image_view", scope: !738, file: !633, line: 191, type: !746)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !748, line: 50, baseType: !749)
!748 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!750 = !DILocalVariable(name: "exception", scope: !738, file: !633, line: 194, type: !732)
!751 = !DILocalVariable(name: "status", scope: !738, file: !633, line: 197, type: !422)
!752 = !DILocalVariable(name: "y", scope: !738, file: !633, line: 200, type: !459)
!753 = !DILocalVariable(name: "indexes", scope: !754, file: !633, line: 218, type: !757)
!754 = distinct !DILexicalBlock(scope: !755, file: !633, line: 216, column: 3)
!755 = distinct !DILexicalBlock(scope: !756, file: !633, line: 215, column: 3)
!756 = distinct !DILexicalBlock(scope: !738, file: !633, line: 215, column: 3)
!757 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !619)
!758 = !DILocalVariable(name: "x", scope: !754, file: !633, line: 221, type: !459)
!759 = !DILocalVariable(name: "q", scope: !754, file: !633, line: 224, type: !760)
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !397)
!761 = !DILocalVariable(name: "index", scope: !754, file: !633, line: 227, type: !459)
!762 = !DILocation(line: 0, scope: !738)
!763 = !DILocation(line: 204, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !738, file: !633, line: 204, column: 7)
!765 = !DILocation(line: 204, column: 20, scope: !764)
!766 = !DILocation(line: 204, column: 7, scope: !738)
!767 = !DILocation(line: 205, column: 68, scope: !764)
!768 = !DILocation(line: 205, column: 12, scope: !764)
!769 = !DILocation(line: 205, column: 5, scope: !764)
!770 = !DILocation(line: 206, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !738, file: !633, line: 206, column: 7)
!772 = !{!650, !651, i64 0}
!773 = !DILocation(line: 206, column: 28, scope: !771)
!774 = !DILocation(line: 206, column: 7, scope: !738)
!775 = !DILocation(line: 207, column: 12, scope: !771)
!776 = !DILocation(line: 207, column: 5, scope: !771)
!777 = !DILocation(line: 209, column: 22, scope: !738)
!778 = !DILocation(line: 210, column: 14, scope: !738)
!779 = !DILocation(line: 215, column: 34, scope: !755)
!780 = !{!650, !653, i64 48}
!781 = !DILocation(line: 215, column: 15, scope: !755)
!782 = !DILocation(line: 215, column: 3, scope: !756)
!783 = !DILocation(line: 229, column: 16, scope: !784)
!784 = distinct !DILexicalBlock(scope: !754, file: !633, line: 229, column: 9)
!785 = !DILocation(line: 229, column: 9, scope: !754)
!786 = !DILocation(line: 231, column: 57, scope: !754)
!787 = !{!650, !653, i64 40}
!788 = !DILocation(line: 231, column: 7, scope: !754)
!789 = !DILocation(line: 0, scope: !754)
!790 = !DILocation(line: 232, column: 11, scope: !791)
!791 = distinct !DILexicalBlock(scope: !754, file: !633, line: 232, column: 9)
!792 = !DILocation(line: 232, column: 9, scope: !754)
!793 = !DILocation(line: 237, column: 13, scope: !754)
!794 = !DILocation(line: 238, column: 17, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !633, line: 238, column: 5)
!796 = distinct !DILexicalBlock(scope: !754, file: !633, line: 238, column: 5)
!797 = !DILocation(line: 238, column: 5, scope: !796)
!798 = !DILocation(line: 240, column: 24, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !633, line: 239, column: 5)
!800 = !DILocation(line: 245, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !799, file: !633, line: 245, column: 7)
!802 = !DILocation(line: 246, column: 8, scope: !799)
!803 = !DILocation(line: 238, column: 46, scope: !795)
!804 = distinct !{!804, !797, !805, !711, !712}
!805 = !DILocation(line: 247, column: 5, scope: !796)
!806 = !{!656, !656, i64 0}
!807 = !DILocation(line: 240, column: 48, scope: !799)
!808 = !DILocation(line: 240, column: 59, scope: !799)
!809 = !DILocation(line: 242, column: 17, scope: !810)
!810 = distinct !DILexicalBlock(scope: !799, file: !633, line: 242, column: 11)
!811 = !DILocation(line: 242, column: 11, scope: !799)
!812 = !DILocation(line: 244, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !633, line: 244, column: 7)
!814 = distinct !DILexicalBlock(scope: !799, file: !633, line: 244, column: 7)
!815 = !DILocation(line: 248, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !754, file: !633, line: 248, column: 9)
!817 = !DILocation(line: 248, column: 60, scope: !816)
!818 = !DILocation(line: 248, column: 9, scope: !754)
!819 = !DILocation(line: 250, column: 3, scope: !755)
!820 = !DILocation(line: 215, column: 41, scope: !755)
!821 = distinct !{!821, !782, !822, !711, !712}
!822 = !DILocation(line: 250, column: 3, scope: !756)
!823 = !DILocation(line: 208, column: 9, scope: !738)
!824 = !DILocation(line: 251, column: 14, scope: !738)
!825 = !DILocation(line: 252, column: 3, scope: !738)
!826 = !DISubprogram(name: "SetImageType", scope: !827, file: !827, line: 37, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!827 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!828 = !DISubroutineType(types: !829)
!829 = !{!422, !408, !830}
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!831 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !748, file: !748, line: 53, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!832 = !DISubroutineType(types: !833)
!833 = !{!746, !834, !732}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!836 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !748, file: !748, line: 99, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!837 = !DISubroutineType(types: !838)
!838 = !{!397, !746, !741, !741, !636, !636, !732}
!839 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !748, file: !748, line: 77, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!840 = !DISubroutineType(types: !841)
!841 = !{!619, !746}
!842 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !748, file: !748, line: 89, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!843 = !DISubroutineType(types: !844)
!844 = !{!422, !746, !732}
!845 = !DISubprogram(name: "DestroyCacheView", scope: !748, file: !748, line: 57, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!846 = !DISubroutineType(types: !847)
!847 = !{!746, !746}
!848 = distinct !DISubprogram(name: "SortColormapByIntensity", scope: !633, file: !633, line: 302, type: !849, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!422, !408}
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !863, !864, !865}
!852 = !DILocalVariable(name: "image", arg: 1, scope: !848, file: !633, line: 302, type: !408)
!853 = !DILocalVariable(name: "image_view", scope: !848, file: !633, line: 305, type: !746)
!854 = !DILocalVariable(name: "exception", scope: !848, file: !633, line: 308, type: !732)
!855 = !DILocalVariable(name: "status", scope: !848, file: !633, line: 311, type: !422)
!856 = !DILocalVariable(name: "i", scope: !848, file: !633, line: 314, type: !459)
!857 = !DILocalVariable(name: "y", scope: !848, file: !633, line: 317, type: !459)
!858 = !DILocalVariable(name: "pixels", scope: !848, file: !633, line: 320, type: !620)
!859 = !DILocalVariable(name: "index", scope: !860, file: !633, line: 364, type: !618)
!860 = distinct !DILexicalBlock(scope: !861, file: !633, line: 362, column: 3)
!861 = distinct !DILexicalBlock(scope: !862, file: !633, line: 361, column: 3)
!862 = distinct !DILexicalBlock(scope: !848, file: !633, line: 361, column: 3)
!863 = !DILocalVariable(name: "x", scope: !860, file: !633, line: 367, type: !459)
!864 = !DILocalVariable(name: "indexes", scope: !860, file: !633, line: 370, type: !757)
!865 = !DILocalVariable(name: "q", scope: !860, file: !633, line: 373, type: !760)
!866 = !DILocation(line: 0, scope: !848)
!867 = !DILocation(line: 323, column: 14, scope: !868)
!868 = distinct !DILexicalBlock(scope: !848, file: !633, line: 323, column: 7)
!869 = !DILocation(line: 323, column: 20, scope: !868)
!870 = !DILocation(line: 323, column: 7, scope: !848)
!871 = !DILocation(line: 324, column: 12, scope: !868)
!872 = !DILocation(line: 324, column: 5, scope: !868)
!873 = !DILocation(line: 326, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !848, file: !633, line: 326, column: 7)
!875 = !DILocation(line: 326, column: 28, scope: !874)
!876 = !DILocation(line: 326, column: 7, scope: !848)
!877 = !DILocation(line: 331, column: 66, scope: !848)
!878 = !DILocation(line: 331, column: 29, scope: !848)
!879 = !DILocation(line: 333, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !848, file: !633, line: 333, column: 7)
!881 = !DILocation(line: 333, column: 7, scope: !848)
!882 = !DILocation(line: 343, column: 15, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !633, line: 343, column: 3)
!884 = distinct !DILexicalBlock(scope: !848, file: !633, line: 343, column: 3)
!885 = !DILocation(line: 343, column: 3, scope: !884)
!886 = !DILocation(line: 334, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !633, line: 334, column: 5)
!888 = distinct !DILexicalBlock(scope: !880, file: !633, line: 334, column: 5)
!889 = !DILocation(line: 334, column: 5, scope: !888)
!890 = !DILocation(line: 344, column: 32, scope: !883)
!891 = !DILocation(line: 344, column: 24, scope: !883)
!892 = !DILocation(line: 344, column: 31, scope: !883)
!893 = !DILocation(line: 343, column: 43, scope: !883)
!894 = distinct !{!894, !885, !895, !711, !712}
!895 = !DILocation(line: 344, column: 46, scope: !884)
!896 = !DILocation(line: 348, column: 25, scope: !848)
!897 = !DILocation(line: 348, column: 3, scope: !848)
!898 = !DILocation(line: 356, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !633, line: 356, column: 3)
!900 = distinct !DILexicalBlock(scope: !848, file: !633, line: 356, column: 3)
!901 = !DILocation(line: 356, column: 3, scope: !900)
!902 = !DILocation(line: 357, column: 50, scope: !899)
!903 = !DILocation(line: 357, column: 41, scope: !899)
!904 = !DILocation(line: 357, column: 12, scope: !899)
!905 = !DILocation(line: 357, column: 5, scope: !899)
!906 = !DILocation(line: 357, column: 49, scope: !899)
!907 = !DILocation(line: 356, column: 43, scope: !899)
!908 = distinct !{!908, !901, !909, !711, !712}
!909 = !DILocation(line: 357, column: 67, scope: !900)
!910 = !DILocation(line: 359, column: 22, scope: !848)
!911 = !DILocation(line: 360, column: 14, scope: !848)
!912 = !DILocation(line: 361, column: 34, scope: !861)
!913 = !DILocation(line: 361, column: 15, scope: !861)
!914 = !DILocation(line: 361, column: 3, scope: !862)
!915 = !DILocation(line: 375, column: 57, scope: !860)
!916 = !DILocation(line: 375, column: 7, scope: !860)
!917 = !DILocation(line: 0, scope: !860)
!918 = !DILocation(line: 376, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !860, file: !633, line: 376, column: 9)
!920 = !DILocation(line: 376, column: 9, scope: !860)
!921 = !DILocation(line: 381, column: 13, scope: !860)
!922 = !DILocation(line: 382, column: 17, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !633, line: 382, column: 5)
!924 = distinct !DILexicalBlock(scope: !860, file: !633, line: 382, column: 5)
!925 = !DILocation(line: 382, column: 5, scope: !924)
!926 = !DILocation(line: 384, column: 44, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !633, line: 383, column: 5)
!928 = !DILocation(line: 384, column: 27, scope: !927)
!929 = !DILocation(line: 386, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !633, line: 386, column: 7)
!931 = !DILocation(line: 387, column: 8, scope: !927)
!932 = !DILocation(line: 382, column: 46, scope: !923)
!933 = distinct !{!933, !925, !934, !711, !712}
!934 = !DILocation(line: 388, column: 5, scope: !924)
!935 = !DILocation(line: 385, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !633, line: 385, column: 7)
!937 = distinct !DILexicalBlock(scope: !927, file: !633, line: 385, column: 7)
!938 = !DILocation(line: 389, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !860, file: !633, line: 389, column: 9)
!940 = !DILocation(line: 389, column: 60, scope: !939)
!941 = !DILocation(line: 391, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !860, file: !633, line: 391, column: 9)
!943 = !DILocation(line: 391, column: 9, scope: !860)
!944 = !DILocation(line: 361, column: 41, scope: !861)
!945 = distinct !{!945, !914, !946, !711, !712}
!946 = !DILocation(line: 393, column: 3, scope: !862)
!947 = !DILocation(line: 394, column: 14, scope: !848)
!948 = !DILocation(line: 395, column: 29, scope: !848)
!949 = !DILocation(line: 396, column: 3, scope: !848)
!950 = !DILocation(line: 397, column: 1, scope: !848)
!951 = !DISubprogram(name: "qsort", scope: !952, file: !952, line: 830, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!952 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!953 = !DISubroutineType(types: !954)
!954 = !{null, !407, !395, !395, !955}
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !952, line: 808, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!562, !959, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!961 = distinct !DISubprogram(name: "IntensityCompare", scope: !633, file: !633, line: 283, type: !957, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !962)
!962 = !{!963, !964, !965, !966, !967}
!963 = !DILocalVariable(name: "x", arg: 1, scope: !961, file: !633, line: 283, type: !959)
!964 = !DILocalVariable(name: "y", arg: 2, scope: !961, file: !633, line: 283, type: !959)
!965 = !DILocalVariable(name: "color_1", scope: !961, file: !633, line: 286, type: !621)
!966 = !DILocalVariable(name: "color_2", scope: !961, file: !633, line: 287, type: !621)
!967 = !DILocalVariable(name: "intensity", scope: !961, file: !633, line: 290, type: !562)
!968 = !DILocation(line: 0, scope: !961)
!969 = !DILocalVariable(name: "pixel", arg: 1, scope: !970, file: !971, line: 174, type: !621)
!970 = distinct !DISubprogram(name: "PixelPacketIntensity", scope: !971, file: !971, line: 174, type: !972, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !974)
!971 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!972 = !DISubroutineType(types: !973)
!973 = !{!402, !621}
!974 = !{!969, !975}
!975 = !DILocalVariable(name: "intensity", scope: !970, file: !971, line: 177, type: !623)
!976 = !DILocation(line: 0, scope: !970, inlinedAt: !977)
!977 = distinct !DILocation(line: 294, column: 13, scope: !961)
!978 = !DILocation(line: 179, column: 15, scope: !979, inlinedAt: !977)
!979 = distinct !DILexicalBlock(scope: !970, file: !971, line: 179, column: 7)
!980 = !DILocation(line: 179, column: 30, scope: !979, inlinedAt: !977)
!981 = !DILocation(line: 179, column: 20, scope: !979, inlinedAt: !977)
!982 = !DILocation(line: 179, column: 37, scope: !979, inlinedAt: !977)
!983 = !DILocation(line: 181, column: 40, scope: !970, inlinedAt: !977)
!984 = !DILocation(line: 181, column: 60, scope: !970, inlinedAt: !977)
!985 = !DILocation(line: 181, column: 59, scope: !970, inlinedAt: !977)
!986 = !DILocation(line: 181, column: 50, scope: !970, inlinedAt: !977)
!987 = !DILocation(line: 182, column: 14, scope: !970, inlinedAt: !977)
!988 = !DILocation(line: 181, column: 72, scope: !970, inlinedAt: !977)
!989 = !DILocation(line: 181, column: 13, scope: !970, inlinedAt: !977)
!990 = !DILocalVariable(name: "value", arg: 1, scope: !991, file: !147, line: 87, type: !994)
!991 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !992, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !995)
!992 = !DISubroutineType(types: !993)
!993 = !{!402, !994}
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!995 = !{!990}
!996 = !DILocation(line: 0, scope: !991, inlinedAt: !997)
!997 = distinct !DILocation(line: 183, column: 10, scope: !970, inlinedAt: !977)
!998 = !DILocation(line: 92, column: 13, scope: !999, inlinedAt: !997)
!999 = distinct !DILexicalBlock(scope: !991, file: !147, line: 92, column: 7)
!1000 = !DILocation(line: 92, column: 7, scope: !991, inlinedAt: !997)
!1001 = !DILocation(line: 94, column: 13, scope: !1002, inlinedAt: !997)
!1002 = distinct !DILexicalBlock(scope: !991, file: !147, line: 94, column: 7)
!1003 = !DILocation(line: 94, column: 7, scope: !991, inlinedAt: !997)
!1004 = !DILocation(line: 96, column: 26, scope: !991, inlinedAt: !997)
!1005 = !DILocation(line: 96, column: 10, scope: !991, inlinedAt: !997)
!1006 = !DILocation(line: 96, column: 3, scope: !991, inlinedAt: !997)
!1007 = !DILocation(line: 0, scope: !970, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 294, column: 49, scope: !961)
!1009 = !DILocation(line: 179, column: 15, scope: !979, inlinedAt: !1008)
!1010 = !DILocation(line: 179, column: 30, scope: !979, inlinedAt: !1008)
!1011 = !DILocation(line: 179, column: 20, scope: !979, inlinedAt: !1008)
!1012 = !DILocation(line: 179, column: 37, scope: !979, inlinedAt: !1008)
!1013 = !DILocation(line: 181, column: 40, scope: !970, inlinedAt: !1008)
!1014 = !DILocation(line: 181, column: 60, scope: !970, inlinedAt: !1008)
!1015 = !DILocation(line: 181, column: 59, scope: !970, inlinedAt: !1008)
!1016 = !DILocation(line: 181, column: 50, scope: !970, inlinedAt: !1008)
!1017 = !DILocation(line: 182, column: 14, scope: !970, inlinedAt: !1008)
!1018 = !DILocation(line: 181, column: 72, scope: !970, inlinedAt: !1008)
!1019 = !DILocation(line: 181, column: 13, scope: !970, inlinedAt: !1008)
!1020 = !DILocation(line: 0, scope: !991, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 183, column: 10, scope: !970, inlinedAt: !1008)
!1022 = !DILocation(line: 92, column: 13, scope: !999, inlinedAt: !1021)
!1023 = !DILocation(line: 92, column: 7, scope: !991, inlinedAt: !1021)
!1024 = !DILocation(line: 94, column: 13, scope: !1002, inlinedAt: !1021)
!1025 = !DILocation(line: 94, column: 7, scope: !991, inlinedAt: !1021)
!1026 = !DILocation(line: 96, column: 26, scope: !991, inlinedAt: !1021)
!1027 = !DILocation(line: 96, column: 10, scope: !991, inlinedAt: !1021)
!1028 = !DILocation(line: 96, column: 3, scope: !991, inlinedAt: !1021)
!1029 = !DILocation(line: 294, column: 13, scope: !961)
!1030 = !DILocation(line: 294, column: 43, scope: !961)
!1031 = !DILocation(line: 294, column: 42, scope: !961)
!1032 = !DILocation(line: 295, column: 3, scope: !961)
!1033 = !DISubprogram(name: "RelinquishMagickMemory", scope: !723, file: !723, line: 51, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !721)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!407, !407}
