; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/accelerate.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/accelerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateConvolveImageChannel(ptr nocapture noundef readnone %image, i32 noundef %channel, ptr nocapture noundef readnone %kernel, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !457 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !710, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %channel, metadata !711, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata ptr %kernel, metadata !712, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata ptr %exception, metadata !713, metadata !DIExpression()), !dbg !714
  ret ptr null, !dbg !715
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateFunctionImage(ptr nocapture noundef readnone %image, i32 noundef %channel, i32 noundef %function, i64 noundef %number_parameters, ptr nocapture noundef readnone %parameters, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !716 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !725, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %channel, metadata !726, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %function, metadata !727, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i64 %number_parameters, metadata !728, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %parameters, metadata !729, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %exception, metadata !730, metadata !DIExpression()), !dbg !731
  ret i32 0, !dbg !732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateBlurImage(ptr nocapture noundef readnone %image, i32 noundef %channel, double noundef %radius, double noundef %sigma, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !733 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !737, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 %channel, metadata !738, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %radius, metadata !739, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %sigma, metadata !740, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata ptr %exception, metadata !741, metadata !DIExpression()), !dbg !742
  ret ptr null, !dbg !743
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateRadialBlurImage(ptr nocapture noundef readnone %image, i32 noundef %channel, double noundef %angle, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !744 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !748, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i32 %channel, metadata !749, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double %angle, metadata !750, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata ptr %exception, metadata !751, metadata !DIExpression()), !dbg !752
  ret ptr null, !dbg !753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateUnsharpMaskImage(ptr nocapture noundef readnone %image, i32 noundef %channel, double noundef %radius, double noundef %sigma, double noundef %gain, double noundef %threshold, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !754 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !758, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %channel, metadata !759, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %radius, metadata !760, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %sigma, metadata !761, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %gain, metadata !762, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %threshold, metadata !763, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %exception, metadata !764, metadata !DIExpression()), !dbg !765
  ret ptr null, !dbg !766
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateCompositeImage(ptr nocapture noundef readnone %image, i32 noundef %channel, i32 noundef %compose, ptr nocapture noundef readnone %composite, i64 noundef %x_offset, i64 noundef %y_offset, float noundef %destination_dissolve, float noundef %source_dissolve, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !767 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !775, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i32 %channel, metadata !776, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i32 %compose, metadata !777, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr %composite, metadata !778, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !780, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata float %destination_dissolve, metadata !781, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata float %source_dissolve, metadata !782, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr %exception, metadata !783, metadata !DIExpression()), !dbg !784
  ret i32 0, !dbg !785
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateContrastImage(ptr nocapture noundef readnone %image, i32 noundef %sharpen, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !786 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !791, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 %sharpen, metadata !792, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata ptr %exception, metadata !793, metadata !DIExpression()), !dbg !794
  ret i32 0, !dbg !795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateContrastStretchImageChannel(ptr nocapture noundef readnone %image, i32 noundef %channel, double noundef %black_point, double noundef %white_point, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !800, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 %channel, metadata !801, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata double %black_point, metadata !802, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata double %white_point, metadata !803, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %exception, metadata !804, metadata !DIExpression()), !dbg !805
  ret i32 0, !dbg !806
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateEqualizeImage(ptr nocapture noundef readnone %image, i32 noundef %channel, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !807 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !811, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 %channel, metadata !812, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata ptr %exception, metadata !813, metadata !DIExpression()), !dbg !814
  ret i32 0, !dbg !815
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateDespeckleImage(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !816 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !820, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr %exception, metadata !821, metadata !DIExpression()), !dbg !822
  ret ptr null, !dbg !823
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateResizeImage(ptr nocapture noundef readnone %image, i64 noundef %resizedColumns, i64 noundef %resizedRows, ptr nocapture noundef readnone %resizeFilter, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !824 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !833, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 %resizedColumns, metadata !834, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 %resizedRows, metadata !835, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr %resizeFilter, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr %exception, metadata !837, metadata !DIExpression()), !dbg !838
  ret ptr null, !dbg !839
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateModulateImage(ptr nocapture noundef readnone %image, double noundef %percent_brightness, double noundef %percent_hue, double noundef %percent_saturation, i32 noundef %colorspace, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !840 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !844, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %percent_brightness, metadata !845, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %percent_hue, metadata !846, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %percent_saturation, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 %colorspace, metadata !848, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata ptr %exception, metadata !849, metadata !DIExpression()), !dbg !850
  ret i32 0, !dbg !851
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateNegateImageChannel(ptr nocapture noundef readnone %image, i32 noundef %channel, i32 noundef %grayscale, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !852 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !856, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i32 %channel, metadata !857, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i32 %grayscale, metadata !858, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %exception, metadata !859, metadata !DIExpression()), !dbg !860
  ret i32 0, !dbg !861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateGrayscaleImage(ptr nocapture noundef readnone %image, i32 noundef %method, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !867, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 %method, metadata !868, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %exception, metadata !869, metadata !DIExpression()), !dbg !870
  ret i32 0, !dbg !871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateAddNoiseImage(ptr nocapture noundef readnone %image, i32 noundef %channel, i32 noundef %noise_type, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !872 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !878, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 %channel, metadata !879, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 %noise_type, metadata !880, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr %exception, metadata !881, metadata !DIExpression()), !dbg !882
  ret ptr null, !dbg !883
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateRandomImage(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !884 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !888, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr %exception, metadata !889, metadata !DIExpression()), !dbg !890
  ret i32 0, !dbg !891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @AccelerateMotionBlurImage(ptr nocapture noundef readnone %image, i32 noundef %channel, ptr nocapture noundef readnone %kernel, i64 noundef %width, ptr nocapture noundef readnone %offset, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !892 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !903, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %channel, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %kernel, metadata !905, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i64 %width, metadata !906, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %offset, metadata !907, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %exception, metadata !908, metadata !DIExpression()), !dbg !909
  ret ptr null, !dbg !910
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AccelerateConvolveImage(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %kernel, ptr nocapture noundef readnone %convolve_image, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !911 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %kernel, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %convolve_image, metadata !917, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %exception, metadata !918, metadata !DIExpression()), !dbg !919
  ret i32 0, !dbg !920
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!450, !451, !452, !453, !454, !455}
!llvm.ident = !{!456}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/accelerate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "a5a7b281bf08049873eb9c1012e202f0")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !390, !431, !439}
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
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!370 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!371 = !DIEnumerator(name: "RedChannel", value: 1)
!372 = !DIEnumerator(name: "GrayChannel", value: 1)
!373 = !DIEnumerator(name: "CyanChannel", value: 1)
!374 = !DIEnumerator(name: "GreenChannel", value: 2)
!375 = !DIEnumerator(name: "MagentaChannel", value: 2)
!376 = !DIEnumerator(name: "BlueChannel", value: 4)
!377 = !DIEnumerator(name: "YellowChannel", value: 4)
!378 = !DIEnumerator(name: "AlphaChannel", value: 8)
!379 = !DIEnumerator(name: "OpacityChannel", value: 8)
!380 = !DIEnumerator(name: "MatteChannel", value: 8)
!381 = !DIEnumerator(name: "BlackChannel", value: 32)
!382 = !DIEnumerator(name: "IndexChannel", value: 32)
!383 = !DIEnumerator(name: "CompositeChannels", value: 47)
!384 = !DIEnumerator(name: "AllChannels", value: 134217727)
!385 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!386 = !DIEnumerator(name: "RGBChannels", value: 128)
!387 = !DIEnumerator(name: "GrayChannels", value: 128)
!388 = !DIEnumerator(name: "SyncChannels", value: 256)
!389 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 27, baseType: !5, size: 32, elements: !392)
!391 = !DIFile(filename: "apps/538.imagick_r/src/magick/morphology.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c6a894945ec2a897d86b4fa1dd783082")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!393 = !DIEnumerator(name: "UndefinedKernel", value: 0)
!394 = !DIEnumerator(name: "UnityKernel", value: 1)
!395 = !DIEnumerator(name: "GaussianKernel", value: 2)
!396 = !DIEnumerator(name: "DoGKernel", value: 3)
!397 = !DIEnumerator(name: "LoGKernel", value: 4)
!398 = !DIEnumerator(name: "BlurKernel", value: 5)
!399 = !DIEnumerator(name: "CometKernel", value: 6)
!400 = !DIEnumerator(name: "LaplacianKernel", value: 7)
!401 = !DIEnumerator(name: "SobelKernel", value: 8)
!402 = !DIEnumerator(name: "FreiChenKernel", value: 9)
!403 = !DIEnumerator(name: "RobertsKernel", value: 10)
!404 = !DIEnumerator(name: "PrewittKernel", value: 11)
!405 = !DIEnumerator(name: "CompassKernel", value: 12)
!406 = !DIEnumerator(name: "KirschKernel", value: 13)
!407 = !DIEnumerator(name: "DiamondKernel", value: 14)
!408 = !DIEnumerator(name: "SquareKernel", value: 15)
!409 = !DIEnumerator(name: "RectangleKernel", value: 16)
!410 = !DIEnumerator(name: "OctagonKernel", value: 17)
!411 = !DIEnumerator(name: "DiskKernel", value: 18)
!412 = !DIEnumerator(name: "PlusKernel", value: 19)
!413 = !DIEnumerator(name: "CrossKernel", value: 20)
!414 = !DIEnumerator(name: "RingKernel", value: 21)
!415 = !DIEnumerator(name: "PeaksKernel", value: 22)
!416 = !DIEnumerator(name: "EdgesKernel", value: 23)
!417 = !DIEnumerator(name: "CornersKernel", value: 24)
!418 = !DIEnumerator(name: "DiagonalsKernel", value: 25)
!419 = !DIEnumerator(name: "LineEndsKernel", value: 26)
!420 = !DIEnumerator(name: "LineJunctionsKernel", value: 27)
!421 = !DIEnumerator(name: "RidgesKernel", value: 28)
!422 = !DIEnumerator(name: "ConvexHullKernel", value: 29)
!423 = !DIEnumerator(name: "ThinSEKernel", value: 30)
!424 = !DIEnumerator(name: "SkeletonKernel", value: 31)
!425 = !DIEnumerator(name: "ChebyshevKernel", value: 32)
!426 = !DIEnumerator(name: "ManhattanKernel", value: 33)
!427 = !DIEnumerator(name: "OctagonalKernel", value: 34)
!428 = !DIEnumerator(name: "EuclideanKernel", value: 35)
!429 = !DIEnumerator(name: "UserDefinedKernel", value: 36)
!430 = !DIEnumerator(name: "BinomialKernel", value: 37)
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 104, baseType: !5, size: 32, elements: !433)
!432 = !DIFile(filename: "apps/538.imagick_r/src/magick/statistic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc0a772b8e2f514bf6d24321fcc65365")
!433 = !{!434, !435, !436, !437, !438}
!434 = !DIEnumerator(name: "UndefinedFunction", value: 0)
!435 = !DIEnumerator(name: "PolynomialFunction", value: 1)
!436 = !DIEnumerator(name: "SinusoidFunction", value: 2)
!437 = !DIEnumerator(name: "ArcsinFunction", value: 3)
!438 = !DIEnumerator(name: "ArctanFunction", value: 4)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !440, line: 27, baseType: !5, size: 32, elements: !441)
!440 = !DIFile(filename: "apps/538.imagick_r/src/magick/fx.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd08d328d828970731689944b1df77bd")
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449}
!442 = !DIEnumerator(name: "UndefinedNoise", value: 0)
!443 = !DIEnumerator(name: "UniformNoise", value: 1)
!444 = !DIEnumerator(name: "GaussianNoise", value: 2)
!445 = !DIEnumerator(name: "MultiplicativeGaussianNoise", value: 3)
!446 = !DIEnumerator(name: "ImpulseNoise", value: 4)
!447 = !DIEnumerator(name: "LaplacianNoise", value: 5)
!448 = !DIEnumerator(name: "PoissonNoise", value: 6)
!449 = !DIEnumerator(name: "RandomNoise", value: 7)
!450 = !{i32 7, !"Dwarf Version", i32 5}
!451 = !{i32 2, !"Debug Info Version", i32 3}
!452 = !{i32 1, !"wchar_size", i32 4}
!453 = !{i32 7, !"PIC Level", i32 2}
!454 = !{i32 7, !"PIE Level", i32 2}
!455 = !{i32 7, !"uwtable", i32 2}
!456 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!457 = distinct !DISubprogram(name: "AccelerateConvolveImageChannel", scope: !458, file: !458, line: 6661, type: !459, scopeLine: 6665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !709)
!458 = !DIFile(filename: "apps/538.imagick_r/src/magick/accelerate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a5a7b281bf08049873eb9c1012e202f0")
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !683, !685, !687, !708}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !464)
!464 = !{!465, !467, !469, !471, !475, !477, !479, !480, !481, !482, !483, !484, !495, !496, !497, !498, !500, !514, !516, !518, !520, !523, !524, !525, !531, !532, !533, !541, !542, !543, !544, !545, !546, !548, !550, !552, !554, !556, !558, !560, !561, !562, !563, !564, !565, !566, !574, !589, !603, !604, !605, !606, !610, !614, !618, !619, !620, !621, !622, !640, !641, !643, !644, !654, !655, !657, !658, !659, !660, !661, !662, !664, !665, !666, !667, !668, !669, !670, !672, !673, !674, !675, !676, !680, !682}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !463, file: !73, line: 153, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !463, file: !73, line: 156, baseType: !468, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !463, file: !73, line: 159, baseType: !470, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !463, file: !73, line: 162, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !473, line: 46, baseType: !474)
!473 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!474 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !463, file: !73, line: 165, baseType: !476, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !463, file: !73, line: 168, baseType: !478, size: 32, offset: 224)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !463, file: !73, line: 169, baseType: !478, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !463, file: !73, line: 172, baseType: !472, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !463, file: !73, line: 173, baseType: !472, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !463, file: !73, line: 174, baseType: !472, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !463, file: !73, line: 175, baseType: !472, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !463, file: !73, line: 178, baseType: !485, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !488)
!488 = !{!489, !492, !493, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !487, file: !326, line: 143, baseType: !490, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !491)
!491 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !487, file: !326, line: 144, baseType: !490, size: 16, offset: 16)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !487, file: !326, line: 145, baseType: !490, size: 16, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !487, file: !326, line: 146, baseType: !490, size: 16, offset: 48)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !463, file: !73, line: 179, baseType: !486, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !463, file: !73, line: 180, baseType: !486, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !463, file: !73, line: 181, baseType: !486, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !463, file: !73, line: 184, baseType: !499, size: 64, offset: 832)
!499 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !463, file: !73, line: 187, baseType: !501, size: 768, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !503)
!503 = !{!504, !511, !512, !513}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !502, file: !73, line: 124, baseType: !505, size: 192)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !507)
!507 = !{!508, !509, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !506, file: !73, line: 98, baseType: !499, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !506, file: !73, line: 99, baseType: !499, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !506, file: !73, line: 100, baseType: !499, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !502, file: !73, line: 125, baseType: !505, size: 192, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !502, file: !73, line: 126, baseType: !505, size: 192, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !502, file: !73, line: 127, baseType: !505, size: 192, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !463, file: !73, line: 190, baseType: !515, size: 32, offset: 1664)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !463, file: !73, line: 193, baseType: !517, size: 64, offset: 1728)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !463, file: !73, line: 196, baseType: !519, size: 32, offset: 1792)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !463, file: !73, line: 199, baseType: !521, size: 64, offset: 1856)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !463, file: !73, line: 200, baseType: !521, size: 64, offset: 1920)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !463, file: !73, line: 201, baseType: !521, size: 64, offset: 1984)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !463, file: !73, line: 204, baseType: !526, size: 64, offset: 2048)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !527, line: 77, baseType: !528)
!527 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !529, line: 193, baseType: !530)
!529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!530 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !463, file: !73, line: 207, baseType: !499, size: 64, offset: 2112)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !463, file: !73, line: 208, baseType: !499, size: 64, offset: 2176)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !463, file: !73, line: 211, baseType: !534, size: 256, offset: 2240)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !535, file: !153, line: 124, baseType: !472, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !535, file: !153, line: 125, baseType: !472, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !535, file: !153, line: 128, baseType: !526, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !535, file: !153, line: 129, baseType: !526, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !463, file: !73, line: 212, baseType: !534, size: 256, offset: 2496)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !463, file: !73, line: 213, baseType: !534, size: 256, offset: 2752)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !463, file: !73, line: 216, baseType: !499, size: 64, offset: 3008)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !463, file: !73, line: 217, baseType: !499, size: 64, offset: 3072)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !463, file: !73, line: 218, baseType: !499, size: 64, offset: 3136)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !463, file: !73, line: 221, baseType: !547, size: 32, offset: 3200)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !463, file: !73, line: 224, baseType: !549, size: 32, offset: 3232)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !463, file: !73, line: 227, baseType: !551, size: 32, offset: 3264)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !463, file: !73, line: 230, baseType: !553, size: 32, offset: 3296)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !463, file: !73, line: 233, baseType: !555, size: 32, offset: 3328)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !463, file: !73, line: 236, baseType: !557, size: 32, offset: 3360)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !463, file: !73, line: 239, baseType: !559, size: 64, offset: 3392)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !463, file: !73, line: 242, baseType: !472, size: 64, offset: 3456)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !463, file: !73, line: 243, baseType: !472, size: 64, offset: 3520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !463, file: !73, line: 246, baseType: !526, size: 64, offset: 3584)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !463, file: !73, line: 249, baseType: !472, size: 64, offset: 3648)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !463, file: !73, line: 250, baseType: !472, size: 64, offset: 3712)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !463, file: !73, line: 253, baseType: !526, size: 64, offset: 3776)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !463, file: !73, line: 256, baseType: !567, size: 192, offset: 3840)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !568, line: 68, baseType: !569)
!568 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !568, line: 62, size: 192, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !569, file: !568, line: 65, baseType: !499, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !569, file: !568, line: 66, baseType: !499, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !569, file: !568, line: 67, baseType: !499, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !463, file: !73, line: 259, baseType: !575, size: 512, offset: 4032)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !577)
!577 = !{!578, !585, !586, !588}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !576, file: !247, line: 43, baseType: !579, size: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !580, file: !247, line: 35, baseType: !499, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !580, file: !247, line: 36, baseType: !499, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !580, file: !247, line: 37, baseType: !499, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !576, file: !247, line: 44, baseType: !579, size: 192, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !576, file: !247, line: 47, baseType: !587, size: 32, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !576, file: !247, line: 50, baseType: !472, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !463, file: !73, line: 262, baseType: !590, size: 64, offset: 4544)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !591, line: 26, baseType: !592)
!591 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!478, !595, !597, !600, !517}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !599)
!599 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !602)
!602 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !463, file: !73, line: 265, baseType: !517, size: 64, offset: 4608)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !463, file: !73, line: 266, baseType: !517, size: 64, offset: 4672)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !463, file: !73, line: 267, baseType: !517, size: 64, offset: 4736)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !463, file: !73, line: 270, baseType: !607, size: 64, offset: 4800)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !463, file: !73, line: 273, baseType: !611, size: 64, offset: 4864)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !463, file: !73, line: 276, baseType: !615, size: 32768, offset: 4928)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 32768, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 4096)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !463, file: !73, line: 277, baseType: !615, size: 32768, offset: 37696)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !463, file: !73, line: 278, baseType: !615, size: 32768, offset: 70464)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !463, file: !73, line: 281, baseType: !472, size: 64, offset: 103232)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !463, file: !73, line: 282, baseType: !472, size: 64, offset: 103296)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !463, file: !73, line: 285, baseType: !623, size: 448, offset: 103360)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !625)
!625 = !{!626, !628, !630, !631, !632, !633, !634, !639}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !624, file: !253, line: 105, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !624, file: !253, line: 108, baseType: !629, size: 32, offset: 32)
!629 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !624, file: !253, line: 111, baseType: !521, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !624, file: !253, line: 112, baseType: !521, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !624, file: !253, line: 115, baseType: !517, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !624, file: !253, line: 118, baseType: !478, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !624, file: !253, line: 121, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !637, line: 26, baseType: !638)
!637 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !637, line: 25, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !624, file: !253, line: 124, baseType: !472, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !463, file: !73, line: 288, baseType: !478, size: 32, offset: 103808)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !73, line: 291, baseType: !642, size: 64, offset: 103872)
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !526)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !463, file: !73, line: 294, baseType: !635, size: 64, offset: 103936)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !463, file: !73, line: 297, baseType: !645, size: 256, offset: 104000)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !647)
!647 = !{!648, !649, !650, !653}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !89, line: 30, baseType: !521, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !646, file: !89, line: 33, baseType: !472, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !646, file: !89, line: 36, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !646, file: !89, line: 39, baseType: !472, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !463, file: !73, line: 298, baseType: !645, size: 256, offset: 104256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !463, file: !73, line: 299, baseType: !656, size: 64, offset: 104512)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !463, file: !73, line: 302, baseType: !472, size: 64, offset: 104576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !463, file: !73, line: 305, baseType: !472, size: 64, offset: 104640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !463, file: !73, line: 308, baseType: !559, size: 64, offset: 104704)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !463, file: !73, line: 309, baseType: !559, size: 64, offset: 104768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !73, line: 310, baseType: !559, size: 64, offset: 104832)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !463, file: !73, line: 313, baseType: !663, size: 32, offset: 104896)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !463, file: !73, line: 316, baseType: !478, size: 32, offset: 104928)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !463, file: !73, line: 319, baseType: !486, size: 64, offset: 104960)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !463, file: !73, line: 322, baseType: !559, size: 64, offset: 105024)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !463, file: !73, line: 325, baseType: !534, size: 256, offset: 105088)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !463, file: !73, line: 328, baseType: !517, size: 64, offset: 105344)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !463, file: !73, line: 329, baseType: !517, size: 64, offset: 105408)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !73, line: 332, baseType: !671, size: 32, offset: 105472)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !463, file: !73, line: 335, baseType: !478, size: 32, offset: 105504)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !463, file: !73, line: 338, baseType: !601, size: 64, offset: 105536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !463, file: !73, line: 341, baseType: !478, size: 32, offset: 105600)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !463, file: !73, line: 344, baseType: !472, size: 64, offset: 105664)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !463, file: !73, line: 347, baseType: !677, size: 64, offset: 105728)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !678, line: 7, baseType: !679)
!678 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !529, line: 160, baseType: !530)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !463, file: !73, line: 350, baseType: !681, size: 32, offset: 105792)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !463, file: !73, line: 353, baseType: !472, size: 64, offset: 105856)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !368)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "KernelInfo", file: !391, line: 128, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "KernelInfo", file: !391, line: 102, size: 832, elements: !691)
!691 = !{!692, !694, !695, !696, !697, !698, !700, !701, !702, !703, !704, !705, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !391, line: 105, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "KernelInfoType", file: !391, line: 67, baseType: !390)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !690, file: !391, line: 108, baseType: !472, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !690, file: !391, line: 109, baseType: !472, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !690, file: !391, line: 112, baseType: !526, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !690, file: !391, line: 113, baseType: !526, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !690, file: !391, line: 116, baseType: !699, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !690, file: !391, line: 117, baseType: !499, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !690, file: !391, line: 118, baseType: !499, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "negative_range", scope: !690, file: !391, line: 119, baseType: !499, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "positive_range", scope: !690, file: !391, line: 120, baseType: !499, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "angle", scope: !690, file: !391, line: 121, baseType: !499, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !391, line: 124, baseType: !706, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !690, file: !391, line: 127, baseType: !472, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!709 = !{!710, !711, !712, !713}
!710 = !DILocalVariable(name: "image", arg: 1, scope: !457, file: !458, line: 6662, type: !683)
!711 = !DILocalVariable(name: "channel", arg: 2, scope: !457, file: !458, line: 6662, type: !685)
!712 = !DILocalVariable(name: "kernel", arg: 3, scope: !457, file: !458, line: 6663, type: !687)
!713 = !DILocalVariable(name: "exception", arg: 4, scope: !457, file: !458, line: 6664, type: !708)
!714 = !DILocation(line: 0, scope: !457)
!715 = !DILocation(line: 6671, column: 3, scope: !457)
!716 = distinct !DISubprogram(name: "AccelerateFunctionImage", scope: !458, file: !458, line: 6674, type: !717, scopeLine: 6680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !724)
!717 = !DISubroutineType(types: !718)
!718 = !{!478, !461, !685, !719, !721, !722, !708}
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFunction", file: !432, line: 111, baseType: !431)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!724 = !{!725, !726, !727, !728, !729, !730}
!725 = !DILocalVariable(name: "image", arg: 1, scope: !716, file: !458, line: 6675, type: !461)
!726 = !DILocalVariable(name: "channel", arg: 2, scope: !716, file: !458, line: 6675, type: !685)
!727 = !DILocalVariable(name: "function", arg: 3, scope: !716, file: !458, line: 6676, type: !719)
!728 = !DILocalVariable(name: "number_parameters", arg: 4, scope: !716, file: !458, line: 6677, type: !721)
!729 = !DILocalVariable(name: "parameters", arg: 5, scope: !716, file: !458, line: 6678, type: !722)
!730 = !DILocalVariable(name: "exception", arg: 6, scope: !716, file: !458, line: 6679, type: !708)
!731 = !DILocation(line: 0, scope: !716)
!732 = !DILocation(line: 6688, column: 3, scope: !716)
!733 = distinct !DISubprogram(name: "AccelerateBlurImage", scope: !458, file: !458, line: 6691, type: !734, scopeLine: 6694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!461, !683, !685, !723, !723, !708}
!736 = !{!737, !738, !739, !740, !741}
!737 = !DILocalVariable(name: "image", arg: 1, scope: !733, file: !458, line: 6691, type: !683)
!738 = !DILocalVariable(name: "channel", arg: 2, scope: !733, file: !458, line: 6692, type: !685)
!739 = !DILocalVariable(name: "radius", arg: 3, scope: !733, file: !458, line: 6692, type: !723)
!740 = !DILocalVariable(name: "sigma", arg: 4, scope: !733, file: !458, line: 6693, type: !723)
!741 = !DILocalVariable(name: "exception", arg: 5, scope: !733, file: !458, line: 6693, type: !708)
!742 = !DILocation(line: 0, scope: !733)
!743 = !DILocation(line: 6701, column: 3, scope: !733)
!744 = distinct !DISubprogram(name: "AccelerateRadialBlurImage", scope: !458, file: !458, line: 6704, type: !745, scopeLine: 6707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!461, !683, !685, !723, !708}
!747 = !{!748, !749, !750, !751}
!748 = !DILocalVariable(name: "image", arg: 1, scope: !744, file: !458, line: 6705, type: !683)
!749 = !DILocalVariable(name: "channel", arg: 2, scope: !744, file: !458, line: 6705, type: !685)
!750 = !DILocalVariable(name: "angle", arg: 3, scope: !744, file: !458, line: 6706, type: !723)
!751 = !DILocalVariable(name: "exception", arg: 4, scope: !744, file: !458, line: 6706, type: !708)
!752 = !DILocation(line: 0, scope: !744)
!753 = !DILocation(line: 6713, column: 3, scope: !744)
!754 = distinct !DISubprogram(name: "AccelerateUnsharpMaskImage", scope: !458, file: !458, line: 6717, type: !755, scopeLine: 6722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!461, !683, !685, !723, !723, !723, !723, !708}
!757 = !{!758, !759, !760, !761, !762, !763, !764}
!758 = !DILocalVariable(name: "image", arg: 1, scope: !754, file: !458, line: 6718, type: !683)
!759 = !DILocalVariable(name: "channel", arg: 2, scope: !754, file: !458, line: 6718, type: !685)
!760 = !DILocalVariable(name: "radius", arg: 3, scope: !754, file: !458, line: 6719, type: !723)
!761 = !DILocalVariable(name: "sigma", arg: 4, scope: !754, file: !458, line: 6719, type: !723)
!762 = !DILocalVariable(name: "gain", arg: 5, scope: !754, file: !458, line: 6720, type: !723)
!763 = !DILocalVariable(name: "threshold", arg: 6, scope: !754, file: !458, line: 6720, type: !723)
!764 = !DILocalVariable(name: "exception", arg: 7, scope: !754, file: !458, line: 6721, type: !708)
!765 = !DILocation(line: 0, scope: !754)
!766 = !DILocation(line: 6731, column: 3, scope: !754)
!767 = distinct !DISubprogram(name: "AccelerateCompositeImage", scope: !458, file: !458, line: 6735, type: !768, scopeLine: 6743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !774)
!768 = !DISubroutineType(types: !769)
!769 = !{!478, !461, !685, !770, !683, !771, !771, !772, !772, !708}
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783}
!775 = !DILocalVariable(name: "image", arg: 1, scope: !767, file: !458, line: 6735, type: !461)
!776 = !DILocalVariable(name: "channel", arg: 2, scope: !767, file: !458, line: 6736, type: !685)
!777 = !DILocalVariable(name: "compose", arg: 3, scope: !767, file: !458, line: 6737, type: !770)
!778 = !DILocalVariable(name: "composite", arg: 4, scope: !767, file: !458, line: 6738, type: !683)
!779 = !DILocalVariable(name: "x_offset", arg: 5, scope: !767, file: !458, line: 6738, type: !771)
!780 = !DILocalVariable(name: "y_offset", arg: 6, scope: !767, file: !458, line: 6739, type: !771)
!781 = !DILocalVariable(name: "destination_dissolve", arg: 7, scope: !767, file: !458, line: 6740, type: !772)
!782 = !DILocalVariable(name: "source_dissolve", arg: 8, scope: !767, file: !458, line: 6741, type: !772)
!783 = !DILocalVariable(name: "exception", arg: 9, scope: !767, file: !458, line: 6742, type: !708)
!784 = !DILocation(line: 0, scope: !767)
!785 = !DILocation(line: 6754, column: 3, scope: !767)
!786 = distinct !DISubprogram(name: "AccelerateContrastImage", scope: !458, file: !458, line: 6757, type: !787, scopeLine: 6760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !790)
!787 = !DISubroutineType(types: !788)
!788 = !{!478, !461, !789, !708}
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "image", arg: 1, scope: !786, file: !458, line: 6758, type: !461)
!792 = !DILocalVariable(name: "sharpen", arg: 2, scope: !786, file: !458, line: 6758, type: !789)
!793 = !DILocalVariable(name: "exception", arg: 3, scope: !786, file: !458, line: 6759, type: !708)
!794 = !DILocation(line: 0, scope: !786)
!795 = !DILocation(line: 6765, column: 3, scope: !786)
!796 = distinct !DISubprogram(name: "AccelerateContrastStretchImageChannel", scope: !458, file: !458, line: 6768, type: !797, scopeLine: 6773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!478, !461, !685, !723, !723, !708}
!799 = !{!800, !801, !802, !803, !804}
!800 = !DILocalVariable(name: "image", arg: 1, scope: !796, file: !458, line: 6769, type: !461)
!801 = !DILocalVariable(name: "channel", arg: 2, scope: !796, file: !458, line: 6769, type: !685)
!802 = !DILocalVariable(name: "black_point", arg: 3, scope: !796, file: !458, line: 6770, type: !723)
!803 = !DILocalVariable(name: "white_point", arg: 4, scope: !796, file: !458, line: 6771, type: !723)
!804 = !DILocalVariable(name: "exception", arg: 5, scope: !796, file: !458, line: 6772, type: !708)
!805 = !DILocation(line: 0, scope: !796)
!806 = !DILocation(line: 6780, column: 3, scope: !796)
!807 = distinct !DISubprogram(name: "AccelerateEqualizeImage", scope: !458, file: !458, line: 6783, type: !808, scopeLine: 6786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!478, !461, !685, !708}
!810 = !{!811, !812, !813}
!811 = !DILocalVariable(name: "image", arg: 1, scope: !807, file: !458, line: 6784, type: !461)
!812 = !DILocalVariable(name: "channel", arg: 2, scope: !807, file: !458, line: 6784, type: !685)
!813 = !DILocalVariable(name: "exception", arg: 3, scope: !807, file: !458, line: 6785, type: !708)
!814 = !DILocation(line: 0, scope: !807)
!815 = !DILocation(line: 6791, column: 3, scope: !807)
!816 = distinct !DISubprogram(name: "AccelerateDespeckleImage", scope: !458, file: !458, line: 6794, type: !817, scopeLine: 6796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!461, !683, !708}
!819 = !{!820, !821}
!820 = !DILocalVariable(name: "image", arg: 1, scope: !816, file: !458, line: 6794, type: !683)
!821 = !DILocalVariable(name: "exception", arg: 2, scope: !816, file: !458, line: 6795, type: !708)
!822 = !DILocation(line: 0, scope: !816)
!823 = !DILocation(line: 6800, column: 3, scope: !816)
!824 = distinct !DISubprogram(name: "AccelerateResizeImage", scope: !458, file: !458, line: 6803, type: !825, scopeLine: 6808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!825 = !DISubroutineType(types: !826)
!826 = !{!461, !683, !721, !721, !827, !708}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResizeFilter", file: !830, line: 26, baseType: !831)
!830 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ResizeFilter", file: !830, line: 25, flags: DIFlagFwdDecl)
!832 = !{!833, !834, !835, !836, !837}
!833 = !DILocalVariable(name: "image", arg: 1, scope: !824, file: !458, line: 6803, type: !683)
!834 = !DILocalVariable(name: "resizedColumns", arg: 2, scope: !824, file: !458, line: 6804, type: !721)
!835 = !DILocalVariable(name: "resizedRows", arg: 3, scope: !824, file: !458, line: 6805, type: !721)
!836 = !DILocalVariable(name: "resizeFilter", arg: 4, scope: !824, file: !458, line: 6806, type: !827)
!837 = !DILocalVariable(name: "exception", arg: 5, scope: !824, file: !458, line: 6807, type: !708)
!838 = !DILocation(line: 0, scope: !824)
!839 = !DILocation(line: 6815, column: 3, scope: !824)
!840 = distinct !DISubprogram(name: "AccelerateModulateImage", scope: !458, file: !458, line: 6819, type: !841, scopeLine: 6822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!478, !461, !499, !499, !499, !468, !708}
!843 = !{!844, !845, !846, !847, !848, !849}
!844 = !DILocalVariable(name: "image", arg: 1, scope: !840, file: !458, line: 6820, type: !461)
!845 = !DILocalVariable(name: "percent_brightness", arg: 2, scope: !840, file: !458, line: 6820, type: !499)
!846 = !DILocalVariable(name: "percent_hue", arg: 3, scope: !840, file: !458, line: 6820, type: !499)
!847 = !DILocalVariable(name: "percent_saturation", arg: 4, scope: !840, file: !458, line: 6821, type: !499)
!848 = !DILocalVariable(name: "colorspace", arg: 5, scope: !840, file: !458, line: 6821, type: !468)
!849 = !DILocalVariable(name: "exception", arg: 6, scope: !840, file: !458, line: 6821, type: !708)
!850 = !DILocation(line: 0, scope: !840)
!851 = !DILocation(line: 6829, column: 3, scope: !840)
!852 = distinct !DISubprogram(name: "AccelerateNegateImageChannel", scope: !458, file: !458, line: 6833, type: !853, scopeLine: 6835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!478, !461, !685, !789, !708}
!855 = !{!856, !857, !858, !859}
!856 = !DILocalVariable(name: "image", arg: 1, scope: !852, file: !458, line: 6834, type: !461)
!857 = !DILocalVariable(name: "channel", arg: 2, scope: !852, file: !458, line: 6834, type: !685)
!858 = !DILocalVariable(name: "grayscale", arg: 3, scope: !852, file: !458, line: 6834, type: !789)
!859 = !DILocalVariable(name: "exception", arg: 4, scope: !852, file: !458, line: 6834, type: !708)
!860 = !DILocation(line: 0, scope: !852)
!861 = !DILocation(line: 6840, column: 3, scope: !852)
!862 = distinct !DISubprogram(name: "AccelerateGrayscaleImage", scope: !458, file: !458, line: 6844, type: !863, scopeLine: 6846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !866)
!863 = !DISubroutineType(types: !864)
!864 = !{!478, !461, !865, !708}
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "image", arg: 1, scope: !862, file: !458, line: 6845, type: !461)
!868 = !DILocalVariable(name: "method", arg: 2, scope: !862, file: !458, line: 6845, type: !865)
!869 = !DILocalVariable(name: "exception", arg: 3, scope: !862, file: !458, line: 6845, type: !708)
!870 = !DILocation(line: 0, scope: !862)
!871 = !DILocation(line: 6850, column: 3, scope: !862)
!872 = distinct !DISubprogram(name: "AccelerateAddNoiseImage", scope: !458, file: !458, line: 6853, type: !873, scopeLine: 6855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !877)
!873 = !DISubroutineType(types: !874)
!874 = !{!461, !683, !685, !875, !708}
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "NoiseType", file: !440, line: 37, baseType: !439)
!877 = !{!878, !879, !880, !881}
!878 = !DILocalVariable(name: "image", arg: 1, scope: !872, file: !458, line: 6853, type: !683)
!879 = !DILocalVariable(name: "channel", arg: 2, scope: !872, file: !458, line: 6854, type: !685)
!880 = !DILocalVariable(name: "noise_type", arg: 3, scope: !872, file: !458, line: 6854, type: !875)
!881 = !DILocalVariable(name: "exception", arg: 4, scope: !872, file: !458, line: 6854, type: !708)
!882 = !DILocation(line: 0, scope: !872)
!883 = !DILocation(line: 6860, column: 3, scope: !872)
!884 = distinct !DISubprogram(name: "AccelerateRandomImage", scope: !458, file: !458, line: 6864, type: !885, scopeLine: 6865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!478, !461, !708}
!887 = !{!888, !889}
!888 = !DILocalVariable(name: "image", arg: 1, scope: !884, file: !458, line: 6864, type: !461)
!889 = !DILocalVariable(name: "exception", arg: 2, scope: !884, file: !458, line: 6864, type: !708)
!890 = !DILocation(line: 0, scope: !884)
!891 = !DILocation(line: 6868, column: 3, scope: !884)
!892 = distinct !DISubprogram(name: "AccelerateMotionBlurImage", scope: !458, file: !458, line: 6872, type: !893, scopeLine: 6876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !902)
!893 = !DISubroutineType(types: !894)
!894 = !{!461, !683, !685, !722, !721, !895, !708}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "OffsetInfo", file: !153, line: 119, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OffsetInfo", file: !153, line: 114, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !898, file: !153, line: 117, baseType: !526, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !898, file: !153, line: 118, baseType: !526, size: 64, offset: 64)
!902 = !{!903, !904, !905, !906, !907, !908}
!903 = !DILocalVariable(name: "image", arg: 1, scope: !892, file: !458, line: 6872, type: !683)
!904 = !DILocalVariable(name: "channel", arg: 2, scope: !892, file: !458, line: 6872, type: !685)
!905 = !DILocalVariable(name: "kernel", arg: 3, scope: !892, file: !458, line: 6873, type: !722)
!906 = !DILocalVariable(name: "width", arg: 4, scope: !892, file: !458, line: 6873, type: !721)
!907 = !DILocalVariable(name: "offset", arg: 5, scope: !892, file: !458, line: 6874, type: !895)
!908 = !DILocalVariable(name: "exception", arg: 6, scope: !892, file: !458, line: 6875, type: !708)
!909 = !DILocation(line: 0, scope: !892)
!910 = !DILocation(line: 6883, column: 3, scope: !892)
!911 = distinct !DISubprogram(name: "AccelerateConvolveImage", scope: !458, file: !458, line: 6888, type: !912, scopeLine: 6891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!478, !683, !687, !461, !708}
!914 = !{!915, !916, !917, !918}
!915 = !DILocalVariable(name: "image", arg: 1, scope: !911, file: !458, line: 6889, type: !683)
!916 = !DILocalVariable(name: "kernel", arg: 2, scope: !911, file: !458, line: 6889, type: !687)
!917 = !DILocalVariable(name: "convolve_image", arg: 3, scope: !911, file: !458, line: 6890, type: !461)
!918 = !DILocalVariable(name: "exception", arg: 4, scope: !911, file: !458, line: 6890, type: !708)
!919 = !DILocation(line: 0, scope: !911)
!920 = !DILocation(line: 6898, column: 3, scope: !911)
