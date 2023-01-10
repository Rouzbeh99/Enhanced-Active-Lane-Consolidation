; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/prepress.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/prepress.c"
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

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/prepress.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @GetImageTotalInkDensity(ptr noundef %image) local_unnamed_addr #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !633, metadata !DIExpression()), !dbg !651
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !652
  %0 = load i32, ptr %debug, align 8, !dbg !652, !tbaa !654
  %cmp.not = icmp eq i32 %0, 0, !dbg !673
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !674

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 102, ptr noundef nonnull @.str.2) #4, !dbg !675
  br label %if.end, !dbg !676

if.end:                                           ; preds = %if.then, %entry
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !677
  %1 = load i32, ptr %colorspace, align 4, !dbg !677, !tbaa !679
  %cmp1.not = icmp eq i32 %1, 12, !dbg !680
  %exception6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !651
  br i1 %cmp1.not, label %if.end5, label %if.then2, !dbg !681

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !682
  %call4 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #4, !dbg !684
  br label %cleanup48, !dbg !685

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !642, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !639, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata ptr %exception6, metadata !640, metadata !DIExpression()), !dbg !651
  %call7 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception6) #4, !dbg !686
  call void @llvm.dbg.value(metadata ptr %call7, metadata !634, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i64 0, metadata !643, metadata !DIExpression()), !dbg !651
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !643, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 1, metadata !642, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !639, metadata !DIExpression()), !dbg !651
  %2 = load i64, ptr %rows, align 8, !dbg !687, !tbaa !688
  %cmp883 = icmp sgt i64 %2, 0, !dbg !689
  br i1 %cmp883, label %for.body.lr.ph, label %for.end42.thread, !dbg !690

for.end42.thread:                                 ; preds = %if.end5
  %call4393 = tail call ptr @DestroyCacheView(ptr noundef %call7) #4, !dbg !691
  call void @llvm.dbg.value(metadata ptr %call43, metadata !634, metadata !DIExpression()), !dbg !651
  br label %cleanup48, !dbg !692

for.body.lr.ph:                                   ; preds = %if.end5
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  br label %for.body, !dbg !690

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.086 = phi i64 [ 0, %for.body.lr.ph ], [ %inc41, %cleanup ]
  %status.085 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  %total_ink_density.084 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %total_ink_density.3, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.086, metadata !643, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %status.085, metadata !642, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata double %total_ink_density.084, metadata !639, metadata !DIExpression()), !dbg !651
  %3 = load i64, ptr %columns, align 8, !dbg !693, !tbaa !694
  %call9 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call7, i64 noundef 0, i64 noundef %y.086, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %exception6) #5, !dbg !695
  call void @llvm.dbg.value(metadata ptr %call9, metadata !649, metadata !DIExpression()), !dbg !696
  %cmp10 = icmp eq ptr %call9, null, !dbg !697
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !699

if.end12:                                         ; preds = %for.body
  %call13 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call7) #4, !dbg !700
  call void @llvm.dbg.value(metadata ptr %call13, metadata !648, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 0, metadata !650, metadata !DIExpression()), !dbg !696
  %4 = load i64, ptr %columns, align 8, !tbaa !694
  call void @llvm.dbg.value(metadata i64 0, metadata !650, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr %call9, metadata !649, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %total_ink_density.084, metadata !639, metadata !DIExpression()), !dbg !651
  %cmp1678 = icmp sgt i64 %4, 0, !dbg !701
  br i1 %cmp1678, label %for.body17.lr.ph, label %cleanup, !dbg !704

for.body17.lr.ph:                                 ; preds = %if.end12
  %cmp23 = icmp eq ptr %call13, null
  br i1 %cmp23, label %for.body17.us, label %for.body17, !dbg !705

for.body17.us:                                    ; preds = %for.body17.lr.ph, %if.end36.us
  %x.081.us = phi i64 [ %inc.us, %if.end36.us ], [ 0, %for.body17.lr.ph ]
  %p.080.us = phi ptr [ %incdec.ptr.us, %if.end36.us ], [ %call9, %for.body17.lr.ph ]
  %total_ink_density.179.us = phi double [ %total_ink_density.2.us, %if.end36.us ], [ %total_ink_density.084, %for.body17.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.081.us, metadata !650, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr %p.080.us, metadata !649, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %total_ink_density.179.us, metadata !639, metadata !DIExpression()), !dbg !651
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %p.080.us, i64 0, i32 2, !dbg !707
  %5 = load i16, ptr %red.us, align 2, !dbg !707, !tbaa !708
  %conv.us = uitofp i16 %5 to double, !dbg !709
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %p.080.us, i64 0, i32 1, !dbg !710
  %6 = load i16, ptr %green.us, align 2, !dbg !710, !tbaa !711
  %conv19.us = uitofp i16 %6 to double, !dbg !710
  %add.us = fadd double %conv.us, %conv19.us, !dbg !712
  %7 = load i16, ptr %p.080.us, align 2, !dbg !713, !tbaa !714
  %conv21.us = uitofp i16 %7 to double, !dbg !713
  %add22.us = fadd double %add.us, %conv21.us, !dbg !715
  %add28.us = fadd double %add22.us, 0.000000e+00, !dbg !716
  call void @llvm.dbg.value(metadata double %add28.us, metadata !644, metadata !DIExpression()), !dbg !696
  %cmp29.us = fcmp ogt double %add28.us, %total_ink_density.179.us, !dbg !717
  br i1 %cmp29.us, label %if.then34.us, label %if.end36.us, !dbg !719

if.then34.us:                                     ; preds = %for.body17.us
  call void @llvm.dbg.value(metadata double %add28.us, metadata !639, metadata !DIExpression()), !dbg !651
  br label %if.end36.us, !dbg !720

if.end36.us:                                      ; preds = %if.then34.us, %for.body17.us
  %total_ink_density.2.us = phi double [ %add28.us, %if.then34.us ], [ %total_ink_density.179.us, %for.body17.us ], !dbg !651
  call void @llvm.dbg.value(metadata double %total_ink_density.2.us, metadata !639, metadata !DIExpression()), !dbg !651
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.080.us, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !649, metadata !DIExpression()), !dbg !696
  %inc.us = add nuw nsw i64 %x.081.us, 1, !dbg !724
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !650, metadata !DIExpression()), !dbg !696
  %exitcond90.not = icmp eq i64 %inc.us, %4, !dbg !701
  br i1 %exitcond90.not, label %cleanup, label %for.body17.us, !dbg !704, !llvm.loop !725

for.body17:                                       ; preds = %for.body17.lr.ph, %if.end36
  %x.081 = phi i64 [ %inc, %if.end36 ], [ 0, %for.body17.lr.ph ]
  %p.080 = phi ptr [ %incdec.ptr, %if.end36 ], [ %call9, %for.body17.lr.ph ]
  %total_ink_density.179 = phi double [ %total_ink_density.2, %if.end36 ], [ %total_ink_density.084, %for.body17.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.081, metadata !650, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr %p.080, metadata !649, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %total_ink_density.179, metadata !639, metadata !DIExpression()), !dbg !651
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.080, i64 0, i32 2, !dbg !707
  %8 = load i16, ptr %red, align 2, !dbg !707, !tbaa !708
  %conv = uitofp i16 %8 to double, !dbg !709
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.080, i64 0, i32 1, !dbg !710
  %9 = load i16, ptr %green, align 2, !dbg !710, !tbaa !711
  %conv19 = uitofp i16 %9 to double, !dbg !710
  %add = fadd double %conv, %conv19, !dbg !712
  %10 = load i16, ptr %p.080, align 2, !dbg !713, !tbaa !714
  %conv21 = uitofp i16 %10 to double, !dbg !713
  %add22 = fadd double %add, %conv21, !dbg !715
  %add.ptr = getelementptr inbounds i16, ptr %call13, i64 %x.081, !dbg !705
  %11 = load i16, ptr %add.ptr, align 2, !dbg !705, !tbaa !729
  %conv27 = uitofp i16 %11 to double, !dbg !705
  %add28 = fadd double %add22, %conv27, !dbg !716
  call void @llvm.dbg.value(metadata double %add28, metadata !644, metadata !DIExpression()), !dbg !696
  %cmp29 = fcmp ogt double %add28, %total_ink_density.179, !dbg !717
  br i1 %cmp29, label %if.then34, label %if.end36, !dbg !719

if.then34:                                        ; preds = %for.body17
  call void @llvm.dbg.value(metadata double %add28, metadata !639, metadata !DIExpression()), !dbg !651
  br label %if.end36, !dbg !720

if.end36:                                         ; preds = %if.then34, %for.body17
  %total_ink_density.2 = phi double [ %add28, %if.then34 ], [ %total_ink_density.179, %for.body17 ], !dbg !651
  call void @llvm.dbg.value(metadata double %total_ink_density.2, metadata !639, metadata !DIExpression()), !dbg !651
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.080, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !649, metadata !DIExpression()), !dbg !696
  %inc = add nuw nsw i64 %x.081, 1, !dbg !724
  call void @llvm.dbg.value(metadata i64 %inc, metadata !650, metadata !DIExpression()), !dbg !696
  %exitcond.not = icmp eq i64 %inc, %4, !dbg !701
  br i1 %exitcond.not, label %cleanup, label %for.body17, !dbg !704, !llvm.loop !725

cleanup:                                          ; preds = %if.end36, %if.end36.us, %if.end12, %for.body
  %total_ink_density.3 = phi double [ %total_ink_density.084, %for.body ], [ %total_ink_density.084, %if.end12 ], [ %total_ink_density.2.us, %if.end36.us ], [ %total_ink_density.2, %if.end36 ], !dbg !730
  %status.1 = phi i32 [ 0, %for.body ], [ %status.085, %if.end12 ], [ %status.085, %if.end36.us ], [ %status.085, %if.end36 ], !dbg !651
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !642, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata double %total_ink_density.3, metadata !639, metadata !DIExpression()), !dbg !651
  %inc41 = add nuw nsw i64 %y.086, 1, !dbg !731
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !643, metadata !DIExpression()), !dbg !651
  %12 = load i64, ptr %rows, align 8, !dbg !687, !tbaa !688
  %cmp8 = icmp slt i64 %inc41, %12, !dbg !689
  br i1 %cmp8, label %for.body, label %for.end42, !dbg !690, !llvm.loop !732

for.end42:                                        ; preds = %cleanup
  %call43 = tail call ptr @DestroyCacheView(ptr noundef %call7) #4, !dbg !691
  call void @llvm.dbg.value(metadata ptr %call43, metadata !634, metadata !DIExpression()), !dbg !651
  %cmp44 = icmp eq i32 %status.1, 0, !dbg !734
  %spec.select = select i1 %cmp44, double 0.000000e+00, double %total_ink_density.3, !dbg !692
  br label %cleanup48, !dbg !692

cleanup48:                                        ; preds = %for.end42, %for.end42.thread, %if.then2
  %retval.0 = phi double [ 0.000000e+00, %if.then2 ], [ 0.000000e+00, %for.end42.thread ], [ %spec.select, %for.end42 ], !dbg !651
  ret double %retval.0, !dbg !736
}

declare !dbg !737 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !744 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !748 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !753 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !759 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

declare !dbg !762 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!416, !417, !418, !419, !420, !421}
!llvm.ident = !{!422}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/prepress.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "8dc3fd72e45188f1bdaaf3ef849d9463")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368}
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
!393 = !{!394, !395, !400, !411, !412, !413}
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !396, line: 77, baseType: !397)
!396 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !398, line: 193, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!399 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !404)
!404 = !{!405, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !403, file: !326, line: 143, baseType: !406, size: 16)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !407)
!407 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !403, file: !326, line: 144, baseType: !406, size: 16, offset: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !403, file: !326, line: 145, baseType: !406, size: 16, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !403, file: !326, line: 146, baseType: !406, size: 16, offset: 48)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!412 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !406)
!416 = !{i32 7, !"Dwarf Version", i32 5}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{i32 1, !"wchar_size", i32 4}
!419 = !{i32 7, !"PIC Level", i32 2}
!420 = !{i32 7, !"PIE Level", i32 2}
!421 = !{i32 7, !"uwtable", i32 2}
!422 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!423 = distinct !DISubprogram(name: "GetImageTotalInkDensity", scope: !424, file: !424, line: 83, type: !425, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !632)
!424 = !DIFile(filename: "apps/538.imagick_r/src/magick/prepress.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8dc3fd72e45188f1bdaaf3ef849d9463")
!425 = !DISubroutineType(types: !426)
!426 = !{!412, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !430)
!430 = !{!431, !433, !435, !437, !440, !442, !444, !445, !446, !447, !448, !449, !451, !452, !453, !454, !455, !469, !471, !472, !474, !477, !478, !479, !480, !481, !482, !490, !491, !492, !493, !494, !495, !497, !499, !501, !503, !505, !507, !509, !510, !511, !512, !513, !514, !515, !523, !538, !552, !553, !554, !555, !559, !563, !567, !568, !569, !570, !571, !589, !590, !592, !593, !603, !604, !606, !607, !608, !609, !610, !611, !613, !614, !615, !616, !617, !618, !619, !621, !622, !623, !624, !625, !629, !631}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !429, file: !73, line: 153, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !429, file: !73, line: 156, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !429, file: !73, line: 159, baseType: !436, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !429, file: !73, line: 162, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !439, line: 46, baseType: !394)
!439 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !429, file: !73, line: 165, baseType: !441, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !429, file: !73, line: 168, baseType: !443, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !429, file: !73, line: 169, baseType: !443, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !429, file: !73, line: 172, baseType: !438, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !429, file: !73, line: 173, baseType: !438, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !429, file: !73, line: 174, baseType: !438, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !429, file: !73, line: 175, baseType: !438, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !429, file: !73, line: 178, baseType: !450, size: 64, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !429, file: !73, line: 179, baseType: !402, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !429, file: !73, line: 180, baseType: !402, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !429, file: !73, line: 181, baseType: !402, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !429, file: !73, line: 184, baseType: !412, size: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !429, file: !73, line: 187, baseType: !456, size: 768, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !458)
!458 = !{!459, !466, !467, !468}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !457, file: !73, line: 124, baseType: !460, size: 192)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !461, file: !73, line: 98, baseType: !412, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !461, file: !73, line: 99, baseType: !412, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !461, file: !73, line: 100, baseType: !412, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !457, file: !73, line: 125, baseType: !460, size: 192, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !457, file: !73, line: 126, baseType: !460, size: 192, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !457, file: !73, line: 127, baseType: !460, size: 192, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !429, file: !73, line: 190, baseType: !470, size: 32, offset: 1664)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !429, file: !73, line: 193, baseType: !411, size: 64, offset: 1728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !429, file: !73, line: 196, baseType: !473, size: 32, offset: 1792)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !429, file: !73, line: 199, baseType: !475, size: 64, offset: 1856)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !429, file: !73, line: 200, baseType: !475, size: 64, offset: 1920)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !429, file: !73, line: 201, baseType: !475, size: 64, offset: 1984)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !429, file: !73, line: 204, baseType: !395, size: 64, offset: 2048)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !429, file: !73, line: 207, baseType: !412, size: 64, offset: 2112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !429, file: !73, line: 208, baseType: !412, size: 64, offset: 2176)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !429, file: !73, line: 211, baseType: !483, size: 256, offset: 2240)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !485)
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !484, file: !153, line: 124, baseType: !438, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !484, file: !153, line: 125, baseType: !438, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !484, file: !153, line: 128, baseType: !395, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !484, file: !153, line: 129, baseType: !395, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !429, file: !73, line: 212, baseType: !483, size: 256, offset: 2496)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !429, file: !73, line: 213, baseType: !483, size: 256, offset: 2752)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !429, file: !73, line: 216, baseType: !412, size: 64, offset: 3008)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !429, file: !73, line: 217, baseType: !412, size: 64, offset: 3072)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !429, file: !73, line: 218, baseType: !412, size: 64, offset: 3136)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !429, file: !73, line: 221, baseType: !496, size: 32, offset: 3200)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !429, file: !73, line: 224, baseType: !498, size: 32, offset: 3232)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !429, file: !73, line: 227, baseType: !500, size: 32, offset: 3264)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !429, file: !73, line: 230, baseType: !502, size: 32, offset: 3296)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !429, file: !73, line: 233, baseType: !504, size: 32, offset: 3328)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !429, file: !73, line: 236, baseType: !506, size: 32, offset: 3360)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !429, file: !73, line: 239, baseType: !508, size: 64, offset: 3392)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !429, file: !73, line: 242, baseType: !438, size: 64, offset: 3456)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !429, file: !73, line: 243, baseType: !438, size: 64, offset: 3520)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !429, file: !73, line: 246, baseType: !395, size: 64, offset: 3584)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !429, file: !73, line: 249, baseType: !438, size: 64, offset: 3648)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !429, file: !73, line: 250, baseType: !438, size: 64, offset: 3712)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !429, file: !73, line: 253, baseType: !395, size: 64, offset: 3776)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !429, file: !73, line: 256, baseType: !516, size: 192, offset: 3840)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !517, line: 68, baseType: !518)
!517 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !517, line: 62, size: 192, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !518, file: !517, line: 65, baseType: !412, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !518, file: !517, line: 66, baseType: !412, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !518, file: !517, line: 67, baseType: !412, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !429, file: !73, line: 259, baseType: !524, size: 512, offset: 4032)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !526)
!526 = !{!527, !534, !535, !537}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !525, file: !247, line: 43, baseType: !528, size: 192)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !530)
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !529, file: !247, line: 35, baseType: !412, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !529, file: !247, line: 36, baseType: !412, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !529, file: !247, line: 37, baseType: !412, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !525, file: !247, line: 44, baseType: !528, size: 192, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !525, file: !247, line: 47, baseType: !536, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !525, file: !247, line: 50, baseType: !438, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !429, file: !73, line: 262, baseType: !539, size: 64, offset: 4544)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !540, line: 26, baseType: !541)
!540 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!443, !544, !546, !549, !411}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !548)
!548 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !551)
!551 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !429, file: !73, line: 265, baseType: !411, size: 64, offset: 4608)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !429, file: !73, line: 266, baseType: !411, size: 64, offset: 4672)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !429, file: !73, line: 267, baseType: !411, size: 64, offset: 4736)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !429, file: !73, line: 270, baseType: !556, size: 64, offset: 4800)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !558)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !429, file: !73, line: 273, baseType: !560, size: 64, offset: 4864)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !562)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !429, file: !73, line: 276, baseType: !564, size: 32768, offset: 4928)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 32768, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 4096)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !429, file: !73, line: 277, baseType: !564, size: 32768, offset: 37696)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !429, file: !73, line: 278, baseType: !564, size: 32768, offset: 70464)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !429, file: !73, line: 281, baseType: !438, size: 64, offset: 103232)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !429, file: !73, line: 282, baseType: !438, size: 64, offset: 103296)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !429, file: !73, line: 285, baseType: !572, size: 448, offset: 103360)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !574)
!574 = !{!575, !577, !579, !580, !581, !582, !583, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !573, file: !253, line: 105, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !573, file: !253, line: 108, baseType: !578, size: 32, offset: 32)
!578 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !573, file: !253, line: 111, baseType: !475, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !573, file: !253, line: 112, baseType: !475, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !573, file: !253, line: 115, baseType: !411, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !573, file: !253, line: 118, baseType: !443, size: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !573, file: !253, line: 121, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !586, line: 26, baseType: !587)
!586 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !586, line: 25, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !573, file: !253, line: 124, baseType: !438, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !429, file: !73, line: 288, baseType: !443, size: 32, offset: 103808)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !429, file: !73, line: 291, baseType: !591, size: 64, offset: 103872)
!591 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !395)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !429, file: !73, line: 294, baseType: !584, size: 64, offset: 103936)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !429, file: !73, line: 297, baseType: !594, size: 256, offset: 104000)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !596)
!596 = !{!597, !598, !599, !602}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !89, line: 30, baseType: !475, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !595, file: !89, line: 33, baseType: !438, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !595, file: !89, line: 36, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !595, file: !89, line: 39, baseType: !438, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !429, file: !73, line: 298, baseType: !594, size: 256, offset: 104256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !429, file: !73, line: 299, baseType: !605, size: 64, offset: 104512)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !429, file: !73, line: 302, baseType: !438, size: 64, offset: 104576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !429, file: !73, line: 305, baseType: !438, size: 64, offset: 104640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !429, file: !73, line: 308, baseType: !508, size: 64, offset: 104704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !73, line: 309, baseType: !508, size: 64, offset: 104768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !73, line: 310, baseType: !508, size: 64, offset: 104832)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !429, file: !73, line: 313, baseType: !612, size: 32, offset: 104896)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !429, file: !73, line: 316, baseType: !443, size: 32, offset: 104928)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !429, file: !73, line: 319, baseType: !402, size: 64, offset: 104960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !429, file: !73, line: 322, baseType: !508, size: 64, offset: 105024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !429, file: !73, line: 325, baseType: !483, size: 256, offset: 105088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !429, file: !73, line: 328, baseType: !411, size: 64, offset: 105344)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !429, file: !73, line: 329, baseType: !411, size: 64, offset: 105408)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !73, line: 332, baseType: !620, size: 32, offset: 105472)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !429, file: !73, line: 335, baseType: !443, size: 32, offset: 105504)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !429, file: !73, line: 338, baseType: !550, size: 64, offset: 105536)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !429, file: !73, line: 341, baseType: !443, size: 32, offset: 105600)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !429, file: !73, line: 344, baseType: !438, size: 64, offset: 105664)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !429, file: !73, line: 347, baseType: !626, size: 64, offset: 105728)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !627, line: 7, baseType: !628)
!627 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !398, line: 160, baseType: !399)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !429, file: !73, line: 350, baseType: !630, size: 32, offset: 105792)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !429, file: !73, line: 353, baseType: !438, size: 64, offset: 105856)
!632 = !{!633, !634, !639, !640, !642, !643, !644, !648, !649, !650}
!633 = !DILocalVariable(name: "image", arg: 1, scope: !423, file: !424, line: 83, type: !427)
!634 = !DILocalVariable(name: "image_view", scope: !423, file: !424, line: 86, type: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !637, line: 50, baseType: !638)
!637 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!639 = !DILocalVariable(name: "total_ink_density", scope: !423, file: !424, line: 89, type: !412)
!640 = !DILocalVariable(name: "exception", scope: !423, file: !424, line: 92, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!642 = !DILocalVariable(name: "status", scope: !423, file: !424, line: 95, type: !443)
!643 = !DILocalVariable(name: "y", scope: !423, file: !424, line: 98, type: !395)
!644 = !DILocalVariable(name: "density", scope: !645, file: !424, line: 121, type: !412)
!645 = distinct !DILexicalBlock(scope: !646, file: !424, line: 119, column: 3)
!646 = distinct !DILexicalBlock(scope: !647, file: !424, line: 118, column: 3)
!647 = distinct !DILexicalBlock(scope: !423, file: !424, line: 118, column: 3)
!648 = !DILocalVariable(name: "indexes", scope: !645, file: !424, line: 124, type: !413)
!649 = !DILocalVariable(name: "p", scope: !645, file: !424, line: 127, type: !400)
!650 = !DILocalVariable(name: "x", scope: !645, file: !424, line: 130, type: !395)
!651 = !DILocation(line: 0, scope: !423)
!652 = !DILocation(line: 101, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !423, file: !424, line: 101, column: 7)
!654 = !{!655, !656, i64 12976}
!655 = !{!"_Image", !656, i64 0, !656, i64 4, !656, i64 8, !658, i64 16, !656, i64 24, !656, i64 28, !656, i64 32, !658, i64 40, !658, i64 48, !658, i64 56, !658, i64 64, !659, i64 72, !660, i64 80, !660, i64 88, !660, i64 96, !662, i64 104, !663, i64 112, !656, i64 208, !659, i64 216, !656, i64 224, !659, i64 232, !659, i64 240, !659, i64 248, !658, i64 256, !662, i64 264, !662, i64 272, !665, i64 280, !665, i64 312, !665, i64 344, !662, i64 376, !662, i64 384, !662, i64 392, !656, i64 400, !656, i64 404, !656, i64 408, !656, i64 412, !656, i64 416, !656, i64 420, !659, i64 424, !658, i64 432, !658, i64 440, !658, i64 448, !658, i64 456, !658, i64 464, !658, i64 472, !666, i64 480, !667, i64 504, !659, i64 568, !659, i64 576, !659, i64 584, !659, i64 592, !659, i64 600, !659, i64 608, !656, i64 616, !656, i64 4712, !656, i64 8808, !658, i64 12904, !658, i64 12912, !669, i64 12920, !656, i64 12976, !658, i64 12984, !659, i64 12992, !671, i64 13000, !671, i64 13032, !659, i64 13064, !658, i64 13072, !658, i64 13080, !659, i64 13088, !659, i64 13096, !659, i64 13104, !656, i64 13112, !656, i64 13116, !660, i64 13120, !659, i64 13128, !665, i64 13136, !659, i64 13168, !659, i64 13176, !656, i64 13184, !656, i64 13188, !672, i64 13192, !656, i64 13200, !658, i64 13208, !658, i64 13216, !656, i64 13224, !658, i64 13232}
!656 = !{!"omnipotent char", !657, i64 0}
!657 = !{!"Simple C/C++ TBAA"}
!658 = !{!"long", !656, i64 0}
!659 = !{!"any pointer", !656, i64 0}
!660 = !{!"_PixelPacket", !661, i64 0, !661, i64 2, !661, i64 4, !661, i64 6}
!661 = !{!"short", !656, i64 0}
!662 = !{!"double", !656, i64 0}
!663 = !{!"_ChromaticityInfo", !664, i64 0, !664, i64 24, !664, i64 48, !664, i64 72}
!664 = !{!"_PrimaryInfo", !662, i64 0, !662, i64 8, !662, i64 16}
!665 = !{!"_RectangleInfo", !658, i64 0, !658, i64 8, !658, i64 16, !658, i64 24}
!666 = !{!"_ErrorInfo", !662, i64 0, !662, i64 8, !662, i64 16}
!667 = !{!"_TimerInfo", !668, i64 0, !668, i64 24, !656, i64 48, !658, i64 56}
!668 = !{!"_Timer", !662, i64 0, !662, i64 8, !662, i64 16}
!669 = !{!"_ExceptionInfo", !656, i64 0, !670, i64 4, !659, i64 8, !659, i64 16, !659, i64 24, !656, i64 32, !659, i64 40, !658, i64 48}
!670 = !{!"int", !656, i64 0}
!671 = !{!"_ProfileInfo", !659, i64 0, !658, i64 8, !659, i64 16, !658, i64 24}
!672 = !{!"long long", !656, i64 0}
!673 = !DILocation(line: 101, column: 20, scope: !653)
!674 = !DILocation(line: 101, column: 7, scope: !423)
!675 = !DILocation(line: 102, column: 12, scope: !653)
!676 = !DILocation(line: 102, column: 5, scope: !653)
!677 = !DILocation(line: 104, column: 14, scope: !678)
!678 = distinct !DILexicalBlock(scope: !423, file: !424, line: 104, column: 7)
!679 = !{!655, !656, i64 4}
!680 = !DILocation(line: 104, column: 25, scope: !678)
!681 = !DILocation(line: 104, column: 7, scope: !423)
!682 = !DILocation(line: 107, column: 64, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !424, line: 105, column: 5)
!684 = !DILocation(line: 106, column: 14, scope: !683)
!685 = !DILocation(line: 108, column: 7, scope: !683)
!686 = !DILocation(line: 113, column: 14, scope: !423)
!687 = !DILocation(line: 118, column: 34, scope: !646)
!688 = !{!655, !658, i64 48}
!689 = !DILocation(line: 118, column: 15, scope: !646)
!690 = !DILocation(line: 118, column: 3, scope: !647)
!691 = !DILocation(line: 154, column: 14, scope: !423)
!692 = !DILocation(line: 155, column: 7, scope: !423)
!693 = !DILocation(line: 132, column: 55, scope: !645)
!694 = !{!655, !658, i64 40}
!695 = !DILocation(line: 132, column: 7, scope: !645)
!696 = !DILocation(line: 0, scope: !645)
!697 = !DILocation(line: 133, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !645, file: !424, line: 133, column: 9)
!699 = !DILocation(line: 133, column: 9, scope: !645)
!700 = !DILocation(line: 138, column: 13, scope: !645)
!701 = !DILocation(line: 139, column: 17, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !424, line: 139, column: 5)
!703 = distinct !DILexicalBlock(scope: !645, file: !424, line: 139, column: 5)
!704 = !DILocation(line: 139, column: 5, scope: !703)
!705 = !DILocation(line: 142, column: 25, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !424, line: 140, column: 5)
!707 = !DILocation(line: 141, column: 24, scope: !706)
!708 = !{!660, !661, i64 4}
!709 = !DILocation(line: 141, column: 15, scope: !706)
!710 = !DILocation(line: 141, column: 39, scope: !706)
!711 = !{!660, !661, i64 2}
!712 = !DILocation(line: 141, column: 38, scope: !706)
!713 = !DILocation(line: 142, column: 9, scope: !706)
!714 = !{!660, !661, i64 0}
!715 = !DILocation(line: 141, column: 55, scope: !706)
!716 = !DILocation(line: 142, column: 24, scope: !706)
!717 = !DILocation(line: 143, column: 19, scope: !718)
!718 = distinct !DILexicalBlock(scope: !706, file: !424, line: 143, column: 11)
!719 = !DILocation(line: 143, column: 11, scope: !706)
!720 = !DILocation(line: 149, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !424, line: 148, column: 15)
!722 = distinct !DILexicalBlock(scope: !718, file: !424, line: 147, column: 9)
!723 = !DILocation(line: 151, column: 8, scope: !706)
!724 = !DILocation(line: 139, column: 46, scope: !702)
!725 = distinct !{!725, !704, !726, !727, !728}
!726 = !DILocation(line: 152, column: 5, scope: !703)
!727 = !{!"llvm.loop.mustprogress"}
!728 = !{!"llvm.loop.unroll.disable"}
!729 = !{!661, !661, i64 0}
!730 = !DILocation(line: 111, column: 20, scope: !423)
!731 = !DILocation(line: 118, column: 41, scope: !646)
!732 = distinct !{!732, !690, !733, !727, !728}
!733 = !DILocation(line: 153, column: 3, scope: !647)
!734 = !DILocation(line: 155, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !423, file: !424, line: 155, column: 7)
!736 = !DILocation(line: 158, column: 1, scope: !423)
!737 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!738 = !DISubroutineType(types: !739)
!739 = !{!443, !740, !544, !544, !742, !544, null}
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!743 = !{}
!744 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!745 = !DISubroutineType(types: !746)
!746 = !{!443, !641, !544, !544, !742, !747, !544, !544, null}
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!748 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !637, file: !637, line: 55, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!749 = !DISubroutineType(types: !750)
!750 = !{!635, !751, !641}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!753 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !637, file: !637, line: 69, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!754 = !DISubroutineType(types: !755)
!755 = !{!400, !756, !758, !758, !742, !742, !641}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!759 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !637, file: !637, line: 66, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!760 = !DISubroutineType(types: !761)
!761 = !{!413, !756}
!762 = !DISubprogram(name: "DestroyCacheView", scope: !637, file: !637, line: 57, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !743)
!763 = !DISubroutineType(types: !764)
!764 = !{!635, !635}
