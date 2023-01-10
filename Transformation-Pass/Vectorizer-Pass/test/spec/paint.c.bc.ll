; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/paint.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._SegmentInfo = type { double, double, double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._StopInfo = type { %struct._MagickPixelPacket, float }

@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/paint.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SegmentStackOverflow\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OilPaint/Image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Opaque/Image\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Transparent/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @FloodfillPaintImage(ptr noundef %image, i32 noundef %channel, ptr nocapture noundef readonly %draw_info, ptr noundef %target, i64 noundef %x_offset, i64 noundef %y_offset, i32 noundef %invert) local_unnamed_addr #0 !dbg !812 {
entry:
  %fill = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %fill_color = alloca %struct._PixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !927, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %channel, metadata !928, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !929, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %target, metadata !930, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !931, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !932, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %invert, metadata !933, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fill) #7, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %fill, metadata !943, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #7, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !944, metadata !DIExpression()), !dbg !974
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fill_color) #7, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %fill_color, metadata !946, metadata !DIExpression()), !dbg !976
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !977
  %0 = load i32, ptr %debug, align 8, !dbg !977, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !998
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !999

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1000
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1001
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp slt i64 %x_offset, 0, !dbg !1003
  br i1 %cmp1, label %cleanup496, label %lor.lhs.false, !dbg !1005

lor.lhs.false:                                    ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1006
  %1 = load i64, ptr %columns, align 8, !dbg !1006, !tbaa !1007
  %cmp2.not = icmp sle i64 %1, %x_offset, !dbg !1008
  %cmp5 = icmp slt i64 %y_offset, 0
  %or.cond773 = or i1 %cmp5, %cmp2.not, !dbg !1009
  br i1 %or.cond773, label %cleanup496, label %lor.lhs.false6, !dbg !1009

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1010
  %2 = load i64, ptr %rows, align 8, !dbg !1010, !tbaa !1012
  %cmp7.not = icmp sgt i64 %2, %y_offset, !dbg !1013
  br i1 %cmp7.not, label %if.end9, label %cleanup496, !dbg !1014

if.end9:                                          ; preds = %lor.lhs.false6
  %call10 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #7, !dbg !1015
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1017
  br i1 %cmp11, label %cleanup496, label %if.end13, !dbg !1018

if.end13:                                         ; preds = %if.end9
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1019
  %3 = load i32, ptr %colorspace, align 4, !dbg !1019, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %3, metadata !1022, metadata !DIExpression()), !dbg !1029
  switch i32 %3, label %if.end18 [
    i32 19, label %if.then16
    i32 17, label %if.then16
    i32 2, label %if.then16
  ], !dbg !1031

if.then16:                                        ; preds = %if.end13, %if.end13, %if.end13
  %call17 = tail call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #7, !dbg !1033
  br label %if.end18, !dbg !1034

if.end18:                                         ; preds = %if.end13, %if.then16
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1035
  %4 = load i32, ptr %matte, align 8, !dbg !1035, !tbaa !1037
  %cmp19 = icmp eq i32 %4, 0, !dbg !1038
  br i1 %cmp19, label %land.lhs.true, label %if.end25, !dbg !1039

land.lhs.true:                                    ; preds = %if.end18
  %opacity = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 5, i32 3, !dbg !1040
  %5 = load i16, ptr %opacity, align 2, !dbg !1040, !tbaa !1041
  %cmp21.not = icmp eq i16 %5, 0, !dbg !1049
  br i1 %cmp21.not, label %if.end25, label %if.then23, !dbg !1050

if.then23:                                        ; preds = %land.lhs.true
  %call24 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #7, !dbg !1051
  br label %if.end25, !dbg !1052

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.end18
  %exception26 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1053
  %call27 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %exception26) #7, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %call27, metadata !941, metadata !DIExpression()), !dbg !971
  %cmp28 = icmp eq ptr %call27, null, !dbg !1055
  br i1 %cmp28, label %cleanup496, label %if.end31, !dbg !1057

if.end31:                                         ; preds = %if.end25
  %call32 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call27, i32 noundef 6) #7, !dbg !1058
  %call33 = tail call ptr @AcquireVirtualMemory(i64 noundef 131072, i64 noundef 32) #8, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %call33, metadata !945, metadata !DIExpression()), !dbg !971
  %cmp34 = icmp eq ptr %call33, null, !dbg !1060
  br i1 %cmp34, label %if.then40, label %land.lhs.true62, !dbg !1062

if.then40:                                        ; preds = %if.end31
  %call37 = tail call ptr @DestroyImage(ptr noundef nonnull %call27) #7, !dbg !1063
  call void @llvm.dbg.value(metadata ptr %call37, metadata !941, metadata !DIExpression()), !dbg !971
  %filename42 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1065
  %call44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename42) #7, !dbg !1065
  br label %cleanup496, !dbg !1065

land.lhs.true62:                                  ; preds = %if.end31
  %call47 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %call33) #7, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %call47, metadata !948, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %exception26, metadata !939, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !951, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !954, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %call47, metadata !947, metadata !DIExpression()), !dbg !971
  %add = add nuw nsw i64 %y_offset, 1, !dbg !1069
  %6 = load i64, ptr %rows, align 8, !dbg !1069, !tbaa !1012
  %cmp65 = icmp slt i64 %add, %6, !dbg !1069
  br i1 %cmp65, label %if.then67, label %if.end74, !dbg !1074

if.then67:                                        ; preds = %land.lhs.true62
  %conv68 = sitofp i64 %x_offset to double, !dbg !1075
  store double %conv68, ptr %call47, align 8, !dbg !1075, !tbaa !1077
  %conv70 = sitofp i64 %y_offset to double, !dbg !1075
  %y1 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 0, i32 1, !dbg !1075
  store double %conv70, ptr %y1, align 8, !dbg !1075, !tbaa !1078
  %x272 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 0, i32 2, !dbg !1075
  store double %conv68, ptr %x272, align 8, !dbg !1075, !tbaa !1079
  %y2 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 0, i32 3, !dbg !1075
  store double 1.000000e+00, ptr %y2, align 8, !dbg !1075, !tbaa !1080
  call void @llvm.dbg.value(metadata ptr %call47, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !971
  br label %if.end74, !dbg !1075

if.end74:                                         ; preds = %land.lhs.true62, %if.then67
  %s.0.idx = phi i64 [ 1, %if.then67 ], [ 0, %land.lhs.true62 ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.0.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  %cmp96 = icmp sgt i64 %6, %y_offset, !dbg !1081
  br i1 %cmp96, label %if.then98, label %if.end109, !dbg !1086

if.then98:                                        ; preds = %if.end74
  %s.0.ptr = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.0.idx, !dbg !971
  call void @llvm.dbg.value(metadata ptr %s.0.ptr, metadata !947, metadata !DIExpression()), !dbg !971
  %conv99 = sitofp i64 %x_offset to double, !dbg !1087
  store double %conv99, ptr %s.0.ptr, align 8, !dbg !1087, !tbaa !1077
  %conv102 = sitofp i64 %add to double, !dbg !1087
  %y1103 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.0.idx, i32 1, !dbg !1087
  store double %conv102, ptr %y1103, align 8, !dbg !1087, !tbaa !1078
  %x2105 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.0.idx, i32 2, !dbg !1087
  store double %conv99, ptr %x2105, align 8, !dbg !1087, !tbaa !1079
  %y2106 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.0.idx, i32 3, !dbg !1087
  store double -1.000000e+00, ptr %y2106, align 8, !dbg !1087, !tbaa !1080
  %s.0.add = add nuw nsw i64 %s.0.idx, 1, !dbg !1087
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.0.add), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  br label %if.end109, !dbg !1087

if.end109:                                        ; preds = %if.end74, %if.then98
  %s.1.idx = phi i64 [ %s.0.add, %if.then98 ], [ %s.0.idx, %if.end74 ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.1.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %fill) #7, !dbg !1089
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #7, !dbg !1090
  %call110 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception26) #7, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %call110, metadata !938, metadata !DIExpression()), !dbg !971
  %call111 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call27, ptr noundef nonnull %exception26) #7, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %call111, metadata !934, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.1.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  %cmp112909.not = icmp eq i64 %s.1.idx, 0, !dbg !1093
  br i1 %cmp112909.not, label %while.end, label %while.body.lr.ph, !dbg !1094

while.body.lr.ph:                                 ; preds = %if.end109
  %7 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  br label %while.body, !dbg !1094

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %start.0911 = phi i64 [ 0, %while.body.lr.ph ], [ %start.4, %cleanup ]
  %s.2.idx910 = phi i64 [ %s.1.idx, %while.body.lr.ph ], [ %s.9.idx, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %start.0911, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.2.idx910), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  %s.2.ptr = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.2.idx910, !dbg !971
  call void @llvm.dbg.value(metadata ptr %s.2.ptr, metadata !947, metadata !DIExpression()), !dbg !971
  %s.2.add = add nsw i64 %s.2.idx910, -1, !dbg !1095
  %incdec.ptr115.ptr = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.2.add, !dbg !971
  call void @llvm.dbg.value(metadata ptr %incdec.ptr115.ptr, metadata !947, metadata !DIExpression()), !dbg !971
  %8 = load double, ptr %incdec.ptr115.ptr, align 8, !dbg !1096, !tbaa !1077
  %conv117 = fptosi double %8 to i64, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %conv117, metadata !952, metadata !DIExpression()), !dbg !971
  %x2118 = getelementptr inbounds %struct._SegmentInfo, ptr %s.2.ptr, i64 -1, i32 2, !dbg !1098
  %9 = load double, ptr %x2118, align 8, !dbg !1098, !tbaa !1079
  %conv119 = fptosi double %9 to i64, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %conv119, metadata !953, metadata !DIExpression()), !dbg !971
  %y2120 = getelementptr inbounds %struct._SegmentInfo, ptr %s.2.ptr, i64 -1, i32 3, !dbg !1100
  %10 = load double, ptr %y2120, align 8, !dbg !1100, !tbaa !1080
  %conv121 = fptosi double %10 to i64, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %conv121, metadata !949, metadata !DIExpression()), !dbg !971
  %y1122 = getelementptr inbounds %struct._SegmentInfo, ptr %s.2.ptr, i64 -1, i32 1, !dbg !1102
  %11 = load double, ptr %y1122, align 8, !dbg !1102, !tbaa !1078
  %conv123 = fptosi double %11 to i64, !dbg !1103
  %add124 = add nsw i64 %conv123, %conv121, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %add124, metadata !954, metadata !DIExpression()), !dbg !971
  %add125 = add nsw i64 %conv117, 1, !dbg !1105
  %call126 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call110, i64 noundef 0, i64 noundef %add124, i64 noundef %add125, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %call126, metadata !958, metadata !DIExpression()), !dbg !1107
  %call128 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call111, i64 noundef 0, i64 noundef %add124, i64 noundef %add125, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %call128, metadata !961, metadata !DIExpression()), !dbg !1107
  %cmp129 = icmp eq ptr %call126, null, !dbg !1109
  %cmp132 = icmp eq ptr %call128, null
  %or.cond = select i1 %cmp129, i1 true, i1 %cmp132, !dbg !1111
  br i1 %or.cond, label %while.end, label %if.end135, !dbg !1111

if.end135:                                        ; preds = %while.body
  %call136 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call110) #7, !dbg !1112
  call void @llvm.dbg.value(metadata ptr %call136, metadata !955, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call126, i64 %conv117), metadata !958, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1107
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call128, i64 %conv117), metadata !961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %conv117, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call126, i64 %conv117), metadata !958, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1107
  %cmp139889 = icmp sgt i64 %conv117, -1, !dbg !1113
  br i1 %cmp139889, label %for.body.lr.ph, label %for.end, !dbg !1116

for.body.lr.ph:                                   ; preds = %if.end135
  %add.ptr138 = getelementptr inbounds %struct._PixelPacket, ptr %call128, i64 %conv117, !dbg !1117
  call void @llvm.dbg.value(metadata ptr %add.ptr138, metadata !961, metadata !DIExpression()), !dbg !1107
  %add.ptr137 = getelementptr inbounds %struct._PixelPacket, ptr %call126, i64 %conv117, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %add.ptr137, metadata !958, metadata !DIExpression()), !dbg !1107
  %cmp9.i = icmp ne ptr %call136, null
  br label %for.body, !dbg !1116

for.body:                                         ; preds = %for.body.lr.ph, %if.end152
  %q.0892 = phi ptr [ %add.ptr138, %for.body.lr.ph ], [ %incdec.ptr155, %if.end152 ]
  %x114.0891 = phi i64 [ %conv117, %for.body.lr.ph ], [ %dec, %if.end152 ]
  %p.0890 = phi ptr [ %add.ptr137, %for.body.lr.ph ], [ %incdec.ptr154, %if.end152 ]
  call void @llvm.dbg.value(metadata ptr %q.0892, metadata !961, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.0891, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %p.0890, metadata !958, metadata !DIExpression()), !dbg !1107
  %opacity141 = getelementptr inbounds %struct._PixelPacket, ptr %q.0892, i64 0, i32 3, !dbg !1119
  %12 = load i16, ptr %opacity141, align 2, !dbg !1119, !tbaa !1122
  %cmp143 = icmp eq i16 %12, -1, !dbg !1123
  br i1 %cmp143, label %for.end, label %if.end146, !dbg !1124

if.end146:                                        ; preds = %for.body
  %image.val776 = load i32, ptr %7, align 4, !dbg !1125, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %p.0890, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call136, i64 %x114.0891), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !1138
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0890, i64 0, i32 2, !dbg !1140
  %13 = load i16, ptr %red.i, align 2, !dbg !1140, !tbaa !1141
  %conv.i = uitofp i16 %13 to float, !dbg !1142
  store float %conv.i, ptr %red1.i, align 8, !dbg !1143, !tbaa !1144
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0890, i64 0, i32 1, !dbg !1146
  %14 = load i16, ptr %green.i, align 2, !dbg !1146, !tbaa !1147
  %conv2.i = uitofp i16 %14 to float, !dbg !1148
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1149, !tbaa !1150
  %15 = load i16, ptr %p.0890, align 2, !dbg !1151, !tbaa !1152
  %conv4.i = uitofp i16 %15 to float, !dbg !1153
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1154, !tbaa !1155
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0890, i64 0, i32 3, !dbg !1156
  %16 = load i16, ptr %opacity.i, align 2, !dbg !1156, !tbaa !1122
  %conv6.i = uitofp i16 %16 to float, !dbg !1157
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1158, !tbaa !1159
  %cmp.i = icmp eq i32 %image.val776, 12, !dbg !1160
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !1162
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1162

cond.end.i:                                       ; preds = %if.end146
  %add.ptr147 = getelementptr inbounds i16, ptr %call136, i64 %x114.0891, !dbg !1163
  call void @llvm.dbg.value(metadata ptr %add.ptr147, metadata !1136, metadata !DIExpression()), !dbg !1138
  %17 = load i16, ptr %add.ptr147, align 2, !dbg !1164, !tbaa !1165
  %conv14.i = uitofp i16 %17 to float, !dbg !1166
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1167, !tbaa !1168
  br label %SetMagickPixelPacket.exit, !dbg !1169

SetMagickPixelPacket.exit:                        ; preds = %if.end146, %cond.end.i
  %call148 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !1170
  %cmp149 = icmp eq i32 %call148, %invert, !dbg !1172
  br i1 %cmp149, label %for.end, label %if.end152, !dbg !1173

if.end152:                                        ; preds = %SetMagickPixelPacket.exit
  store i16 -1, ptr %opacity141, align 2, !dbg !1174, !tbaa !1122
  %incdec.ptr154 = getelementptr inbounds %struct._PixelPacket, ptr %p.0890, i64 -1, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %incdec.ptr154, metadata !958, metadata !DIExpression()), !dbg !1107
  %incdec.ptr155 = getelementptr inbounds %struct._PixelPacket, ptr %q.0892, i64 -1, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %incdec.ptr155, metadata !961, metadata !DIExpression()), !dbg !1107
  %dec = add nsw i64 %x114.0891, -1, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %dec, metadata !960, metadata !DIExpression()), !dbg !1107
  %cmp139 = icmp sgt i64 %x114.0891, 0, !dbg !1113
  br i1 %cmp139, label %for.body, label %for.end, !dbg !1116, !llvm.loop !1178

for.end:                                          ; preds = %if.end152, %for.body, %SetMagickPixelPacket.exit, %if.end135
  %x114.0.lcssa = phi i64 [ %conv117, %if.end135 ], [ %x114.0891, %SetMagickPixelPacket.exit ], [ %x114.0891, %for.body ], [ -1, %if.end152 ], !dbg !1182
  %call156 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call111, ptr noundef nonnull %exception26) #9, !dbg !1183
  %cmp157 = icmp eq i32 %call156, 0, !dbg !1185
  br i1 %cmp157, label %while.end, label %if.end160, !dbg !1186

if.end160:                                        ; preds = %for.end
  %cmp161.not = icmp sge i64 %x114.0.lcssa, %conv117, !dbg !1187
  %cond = zext i1 %cmp161.not to i32, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %cond, metadata !942, metadata !DIExpression()), !dbg !971
  br i1 %cmp161.not, label %if.end208, label %if.then165, !dbg !1189

if.then165:                                       ; preds = %if.end160
  %add166 = add nsw i64 %x114.0.lcssa, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %add166, metadata !950, metadata !DIExpression()), !dbg !971
  %cmp167 = icmp slt i64 %add166, %conv117, !dbg !1193
  br i1 %cmp167, label %if.then169, label %if.end208, !dbg !1195

if.then169:                                       ; preds = %if.then165
  %cmp171.not = icmp slt i64 %s.2.idx910, 131073, !dbg !1196
  br i1 %cmp171.not, label %if.else182, label %if.then173, !dbg !1199

if.then173:                                       ; preds = %if.then169
  %cmp174.not = icmp eq ptr %image, null, !dbg !1200
  br i1 %cmp174.not, label %cleanup496, label %if.then176, !dbg !1203

if.then176:                                       ; preds = %if.then173
  %filename178 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1200
  %call180 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename178) #7, !dbg !1200
  br label %cleanup496, !dbg !1200

if.else182:                                       ; preds = %if.then169
  %sub = sub nsw i64 0, %conv121, !dbg !1204
  %cmp184 = icmp sgt i64 %conv123, -1, !dbg !1204
  br i1 %cmp184, label %land.lhs.true186, label %if.end208, !dbg !1204

land.lhs.true186:                                 ; preds = %if.else182
  %18 = load i64, ptr %rows, align 8, !dbg !1204, !tbaa !1012
  %cmp190 = icmp sgt i64 %18, %conv123, !dbg !1204
  br i1 %cmp190, label %if.then192, label %if.end208, !dbg !1207

if.then192:                                       ; preds = %land.lhs.true186
  %conv193 = sitofp i64 %add166 to double, !dbg !1208
  store double %conv193, ptr %incdec.ptr115.ptr, align 8, !dbg !1208, !tbaa !1077
  %conv195 = sitofp i64 %add124 to double, !dbg !1208
  store double %conv195, ptr %y1122, align 8, !dbg !1208, !tbaa !1078
  %sub197 = add nsw i64 %conv117, -1, !dbg !1208
  %conv198 = sitofp i64 %sub197 to double, !dbg !1208
  store double %conv198, ptr %x2118, align 8, !dbg !1208, !tbaa !1079
  %conv201 = sitofp i64 %sub to double, !dbg !1208
  store double %conv201, ptr %y2120, align 8, !dbg !1208, !tbaa !1080
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.2.idx910), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  br label %if.end208, !dbg !1208

if.end208:                                        ; preds = %if.then165, %if.else182, %land.lhs.true186, %if.then192, %if.end160
  %s.4.idx = phi i64 [ %s.2.add, %if.end160 ], [ %s.2.idx910, %if.then192 ], [ %s.2.add, %land.lhs.true186 ], [ %s.2.add, %if.else182 ], [ %s.2.add, %if.then165 ]
  %start.1 = phi i64 [ %start.0911, %if.end160 ], [ %add166, %if.then192 ], [ %add166, %land.lhs.true186 ], [ %add166, %if.else182 ], [ %add166, %if.then165 ], !dbg !971
  %x114.1 = phi i64 [ %x114.0.lcssa, %if.end160 ], [ %add125, %if.then192 ], [ %add125, %land.lhs.true186 ], [ %add125, %if.else182 ], [ %add125, %if.then165 ], !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.1, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %start.1, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.4.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  %add271 = add nsw i64 %add124, %conv121
  %cmp272 = icmp sgt i64 %add271, -1
  %conv282 = sitofp i64 %add124 to double
  %conv287 = sitofp i64 %conv121 to double
  %add292 = add i64 %conv119, 1
  %sub309 = sub nsw i64 0, %conv121
  %cmp311 = icmp sgt i64 %conv123, -1
  %conv321 = sitofp i64 %add292 to double
  %conv329 = sitofp i64 %sub309 to double
  br label %do.body, !dbg !1210

do.body:                                          ; preds = %if.end375, %if.end208
  %s.5.idx = phi i64 [ %s.4.idx, %if.end208 ], [ %s.7.idx, %if.end375 ]
  %skip.0 = phi i32 [ %cond, %if.end208 ], [ 0, %if.end375 ], !dbg !1107
  %start.2 = phi i64 [ %start.1, %if.end208 ], [ %x114.7, %if.end375 ], !dbg !1107
  %x114.2 = phi i64 [ %x114.1, %if.end208 ], [ %x114.7, %if.end375 ], !dbg !1107
  %s.5.ptr = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.5.idx, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.2, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %start.2, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %skip.0, metadata !942, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %s.5.ptr, metadata !947, metadata !DIExpression()), !dbg !971
  %cmp209 = icmp eq i32 %skip.0, 0, !dbg !1211
  br i1 %cmp209, label %if.then211, label %if.end335, !dbg !1214

if.then211:                                       ; preds = %do.body
  %19 = load i64, ptr %columns, align 8, !dbg !1215, !tbaa !1007
  %cmp213 = icmp sgt i64 %19, %x114.2, !dbg !1218
  br i1 %cmp213, label %if.then215, label %if.end257, !dbg !1219

if.then215:                                       ; preds = %if.then211
  %sub217 = sub i64 %19, %x114.2, !dbg !1220
  %call218 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call110, i64 noundef %x114.2, i64 noundef %add124, i64 noundef %sub217, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %call218, metadata !958, metadata !DIExpression()), !dbg !1107
  %20 = load i64, ptr %columns, align 8, !dbg !1223, !tbaa !1007
  %sub220 = sub i64 %20, %x114.2, !dbg !1224
  %call221 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call111, i64 noundef %x114.2, i64 noundef %add124, i64 noundef %sub220, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %call221, metadata !961, metadata !DIExpression()), !dbg !1107
  %cmp222 = icmp eq ptr %call218, null, !dbg !1226
  %cmp225 = icmp eq ptr %call221, null
  %or.cond513 = select i1 %cmp222, i1 true, i1 %cmp225, !dbg !1228
  br i1 %or.cond513, label %cleanup, label %if.end228, !dbg !1228

if.end228:                                        ; preds = %if.then215
  %call229 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call110) #7, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call229, metadata !955, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %call221, metadata !961, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.2, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %call218, metadata !958, metadata !DIExpression()), !dbg !1107
  %21 = load i64, ptr %columns, align 8, !dbg !1230, !tbaa !1007
  %cmp232895 = icmp slt i64 %x114.2, %21, !dbg !1233
  br i1 %cmp232895, label %for.body234.lr.ph, label %for.end251, !dbg !1234

for.body234.lr.ph:                                ; preds = %if.end228
  %cmp9.i790 = icmp ne ptr %call229, null
  br label %for.body234, !dbg !1234

for.body234:                                      ; preds = %for.body234.lr.ph, %if.end246
  %q.1898 = phi ptr [ %call221, %for.body234.lr.ph ], [ %incdec.ptr249, %if.end246 ]
  %x114.3897 = phi i64 [ %x114.2, %for.body234.lr.ph ], [ %inc, %if.end246 ]
  %p.1896 = phi ptr [ %call218, %for.body234.lr.ph ], [ %incdec.ptr248, %if.end246 ]
  call void @llvm.dbg.value(metadata ptr %q.1898, metadata !961, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.3897, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %p.1896, metadata !958, metadata !DIExpression()), !dbg !1107
  %opacity235 = getelementptr inbounds %struct._PixelPacket, ptr %q.1898, i64 0, i32 3, !dbg !1235
  %22 = load i16, ptr %opacity235, align 2, !dbg !1235, !tbaa !1122
  %cmp237 = icmp eq i16 %22, -1, !dbg !1238
  br i1 %cmp237, label %for.end251, label %if.end240, !dbg !1239

if.end240:                                        ; preds = %for.body234
  %image.val775 = load i32, ptr %7, align 4, !dbg !1240, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr %p.1896, metadata !1135, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call229, i64 %x114.3897), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1241
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !1241
  %red.i778 = getelementptr inbounds %struct._PixelPacket, ptr %p.1896, i64 0, i32 2, !dbg !1243
  %23 = load i16, ptr %red.i778, align 2, !dbg !1243, !tbaa !1141
  %conv.i779 = uitofp i16 %23 to float, !dbg !1244
  store float %conv.i779, ptr %red1.i, align 8, !dbg !1245, !tbaa !1144
  %green.i781 = getelementptr inbounds %struct._PixelPacket, ptr %p.1896, i64 0, i32 1, !dbg !1246
  %24 = load i16, ptr %green.i781, align 2, !dbg !1246, !tbaa !1147
  %conv2.i782 = uitofp i16 %24 to float, !dbg !1247
  store float %conv2.i782, ptr %green3.i, align 4, !dbg !1248, !tbaa !1150
  %25 = load i16, ptr %p.1896, align 2, !dbg !1249, !tbaa !1152
  %conv4.i784 = uitofp i16 %25 to float, !dbg !1250
  store float %conv4.i784, ptr %blue5.i, align 8, !dbg !1251, !tbaa !1155
  %opacity.i786 = getelementptr inbounds %struct._PixelPacket, ptr %p.1896, i64 0, i32 3, !dbg !1252
  %26 = load i16, ptr %opacity.i786, align 2, !dbg !1252, !tbaa !1122
  %conv6.i787 = uitofp i16 %26 to float, !dbg !1253
  store float %conv6.i787, ptr %opacity7.i, align 4, !dbg !1254, !tbaa !1159
  %cmp.i789 = icmp eq i32 %image.val775, 12, !dbg !1255
  %or.cond.i791 = and i1 %cmp9.i790, %cmp.i789, !dbg !1256
  br i1 %or.cond.i791, label %cond.end.i794, label %SetMagickPixelPacket.exit796, !dbg !1256

cond.end.i794:                                    ; preds = %if.end240
  %add.ptr241 = getelementptr inbounds i16, ptr %call229, i64 %x114.3897, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %add.ptr241, metadata !1136, metadata !DIExpression()), !dbg !1241
  %27 = load i16, ptr %add.ptr241, align 2, !dbg !1258, !tbaa !1165
  %conv14.i792 = uitofp i16 %27 to float, !dbg !1259
  store float %conv14.i792, ptr %index15.i, align 8, !dbg !1260, !tbaa !1168
  br label %SetMagickPixelPacket.exit796, !dbg !1261

SetMagickPixelPacket.exit796:                     ; preds = %if.end240, %cond.end.i794
  %call242 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !1262
  %cmp243 = icmp eq i32 %call242, %invert, !dbg !1264
  br i1 %cmp243, label %for.end251, label %if.end246, !dbg !1265

if.end246:                                        ; preds = %SetMagickPixelPacket.exit796
  store i16 -1, ptr %opacity235, align 2, !dbg !1266, !tbaa !1122
  %incdec.ptr248 = getelementptr inbounds %struct._PixelPacket, ptr %p.1896, i64 1, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %incdec.ptr248, metadata !958, metadata !DIExpression()), !dbg !1107
  %incdec.ptr249 = getelementptr inbounds %struct._PixelPacket, ptr %q.1898, i64 1, !dbg !1268
  call void @llvm.dbg.value(metadata ptr %incdec.ptr249, metadata !961, metadata !DIExpression()), !dbg !1107
  %inc = add nsw i64 %x114.3897, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %inc, metadata !960, metadata !DIExpression()), !dbg !1107
  %28 = load i64, ptr %columns, align 8, !dbg !1230, !tbaa !1007
  %cmp232 = icmp slt i64 %inc, %28, !dbg !1233
  br i1 %cmp232, label %for.body234, label %for.end251, !dbg !1234, !llvm.loop !1270

for.end251:                                       ; preds = %if.end246, %for.body234, %SetMagickPixelPacket.exit796, %if.end228
  %x114.3.lcssa = phi i64 [ %x114.2, %if.end228 ], [ %x114.3897, %SetMagickPixelPacket.exit796 ], [ %x114.3897, %for.body234 ], [ %inc, %if.end246 ], !dbg !1107
  %call252 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call111, ptr noundef nonnull %exception26) #9, !dbg !1272
  %cmp253 = icmp eq i32 %call252, 0, !dbg !1274
  br i1 %cmp253, label %cleanup, label %if.end257, !dbg !1275

if.end257:                                        ; preds = %for.end251, %if.then211
  %x114.4 = phi i64 [ %x114.3.lcssa, %for.end251 ], [ %x114.2, %if.then211 ], !dbg !1276
  call void @llvm.dbg.value(metadata i64 %x114.4, metadata !960, metadata !DIExpression()), !dbg !1107
  %cmp259.not = icmp slt i64 %s.5.idx, 131072, !dbg !1277
  br i1 %cmp259.not, label %if.else270, label %if.then264, !dbg !1280

if.then264:                                       ; preds = %if.end257
  %filename266 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1281
  %call268 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename266) #7, !dbg !1281
  br label %cleanup496, !dbg !1281

if.else270:                                       ; preds = %if.end257
  br i1 %cmp272, label %land.lhs.true274, label %if.end291, !dbg !1284

land.lhs.true274:                                 ; preds = %if.else270
  %29 = load i64, ptr %rows, align 8, !dbg !1284, !tbaa !1012
  %cmp277 = icmp slt i64 %add271, %29, !dbg !1284
  br i1 %cmp277, label %if.then279, label %if.end291, !dbg !1287

if.then279:                                       ; preds = %land.lhs.true274
  %conv280 = sitofp i64 %start.2 to double, !dbg !1288
  store double %conv280, ptr %s.5.ptr, align 8, !dbg !1288, !tbaa !1077
  %y1283 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.5.idx, i32 1, !dbg !1288
  store double %conv282, ptr %y1283, align 8, !dbg !1288, !tbaa !1078
  %sub284 = add nsw i64 %x114.4, -1, !dbg !1288
  %conv285 = sitofp i64 %sub284 to double, !dbg !1288
  %x2286 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.5.idx, i32 2, !dbg !1288
  store double %conv285, ptr %x2286, align 8, !dbg !1288, !tbaa !1079
  %y2288 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.5.idx, i32 3, !dbg !1288
  store double %conv287, ptr %y2288, align 8, !dbg !1288, !tbaa !1080
  %s.5.add = add nsw i64 %s.5.idx, 1, !dbg !1288
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.5.add), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  br label %if.end291, !dbg !1288

if.end291:                                        ; preds = %if.else270, %land.lhs.true274, %if.then279
  %s.6.idx = phi i64 [ %s.5.add, %if.then279 ], [ %s.5.idx, %land.lhs.true274 ], [ %s.5.idx, %if.else270 ]
  %s.6.ptr = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.6.idx, !dbg !971
  call void @llvm.dbg.value(metadata ptr %s.6.ptr, metadata !947, metadata !DIExpression()), !dbg !971
  %cmp293 = icmp sgt i64 %x114.4, %add292, !dbg !1290
  br i1 %cmp293, label %if.then295, label %if.end335, !dbg !1292

if.then295:                                       ; preds = %if.end291
  %cmp297.not = icmp slt i64 %s.6.idx, 131072, !dbg !1293
  br i1 %cmp297.not, label %if.else308, label %if.then302, !dbg !1296

if.then302:                                       ; preds = %if.then295
  %filename304 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1297
  %call306 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 300, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename304) #7, !dbg !1297
  br label %cleanup496, !dbg !1297

if.else308:                                       ; preds = %if.then295
  br i1 %cmp311, label %land.lhs.true313, label %if.end335, !dbg !1300

land.lhs.true313:                                 ; preds = %if.else308
  %30 = load i64, ptr %rows, align 8, !dbg !1300, !tbaa !1012
  %cmp317 = icmp sgt i64 %30, %conv123, !dbg !1300
  br i1 %cmp317, label %if.then319, label %if.end335, !dbg !1303

if.then319:                                       ; preds = %land.lhs.true313
  store double %conv321, ptr %s.6.ptr, align 8, !dbg !1304, !tbaa !1077
  %y1324 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.6.idx, i32 1, !dbg !1304
  store double %conv282, ptr %y1324, align 8, !dbg !1304, !tbaa !1078
  %sub325 = add nsw i64 %x114.4, -1, !dbg !1304
  %conv326 = sitofp i64 %sub325 to double, !dbg !1304
  %x2327 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.6.idx, i32 2, !dbg !1304
  store double %conv326, ptr %x2327, align 8, !dbg !1304, !tbaa !1079
  %y2330 = getelementptr inbounds %struct._SegmentInfo, ptr %call47, i64 %s.6.idx, i32 3, !dbg !1304
  store double %conv329, ptr %y2330, align 8, !dbg !1304, !tbaa !1080
  %s.6.add = add nsw i64 %s.6.idx, 1, !dbg !1304
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.6.add), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  br label %if.end335, !dbg !1304

if.end335:                                        ; preds = %if.end291, %if.else308, %land.lhs.true313, %if.then319, %do.body
  %s.7.idx = phi i64 [ %s.6.add, %if.then319 ], [ %s.6.idx, %land.lhs.true313 ], [ %s.6.idx, %if.else308 ], [ %s.6.idx, %if.end291 ], [ %s.5.idx, %do.body ]
  %x114.5 = phi i64 [ %x114.4, %if.then319 ], [ %x114.4, %land.lhs.true313 ], [ %x114.4, %if.else308 ], [ %x114.4, %if.end291 ], [ %x114.2, %do.body ], !dbg !1276
  call void @llvm.dbg.value(metadata i64 %x114.5, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.7.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !942, metadata !DIExpression()), !dbg !971
  %inc336 = add nsw i64 %x114.5, 1, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %inc336, metadata !960, metadata !DIExpression()), !dbg !1107
  %cmp337.not.not = icmp slt i64 %x114.5, %conv119, !dbg !1307
  br i1 %cmp337.not.not, label %if.then339, label %if.end375, !dbg !1309

if.then339:                                       ; preds = %if.end335
  %sub340 = sub nsw i64 %conv119, %inc336, !dbg !1310
  %add341 = add nsw i64 %sub340, 1, !dbg !1312
  %call342 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call110, i64 noundef %inc336, i64 noundef %add124, i64 noundef %add341, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call342, metadata !958, metadata !DIExpression()), !dbg !1107
  %call345 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call111, i64 noundef %inc336, i64 noundef %add124, i64 noundef %add341, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %call345, metadata !961, metadata !DIExpression()), !dbg !1107
  %cmp346 = icmp eq ptr %call342, null, !dbg !1315
  %cmp349 = icmp eq ptr %call345, null
  %or.cond514 = select i1 %cmp346, i1 true, i1 %cmp349, !dbg !1317
  br i1 %or.cond514, label %cleanup, label %for.body357.lr.ph, !dbg !1317

for.body357.lr.ph:                                ; preds = %if.then339
  %call353 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call110) #7, !dbg !1318
  call void @llvm.dbg.value(metadata ptr %call353, metadata !955, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %call345, metadata !961, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %inc336, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %call342, metadata !958, metadata !DIExpression()), !dbg !1107
  %cmp9.i809 = icmp ne ptr %call353, null
  br label %for.body357, !dbg !1319

for.body357:                                      ; preds = %for.body357.lr.ph, %if.end369
  %q.2905 = phi ptr [ %call345, %for.body357.lr.ph ], [ %incdec.ptr371, %if.end369 ]
  %x114.6904 = phi i64 [ %inc336, %for.body357.lr.ph ], [ %inc373, %if.end369 ]
  %p.2903 = phi ptr [ %call342, %for.body357.lr.ph ], [ %incdec.ptr370, %if.end369 ]
  call void @llvm.dbg.value(metadata ptr %q.2905, metadata !961, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.6904, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %p.2903, metadata !958, metadata !DIExpression()), !dbg !1107
  %opacity358 = getelementptr inbounds %struct._PixelPacket, ptr %q.2905, i64 0, i32 3, !dbg !1321
  %31 = load i16, ptr %opacity358, align 2, !dbg !1321, !tbaa !1122
  %cmp360 = icmp eq i16 %31, -1, !dbg !1325
  br i1 %cmp360, label %if.end375, label %if.end363, !dbg !1326

if.end363:                                        ; preds = %for.body357
  %image.val774 = load i32, ptr %7, align 4, !dbg !1327, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %p.2903, metadata !1135, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call353, i64 %x114.6904), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !1328
  %red.i797 = getelementptr inbounds %struct._PixelPacket, ptr %p.2903, i64 0, i32 2, !dbg !1330
  %32 = load i16, ptr %red.i797, align 2, !dbg !1330, !tbaa !1141
  %conv.i798 = uitofp i16 %32 to float, !dbg !1331
  store float %conv.i798, ptr %red1.i, align 8, !dbg !1332, !tbaa !1144
  %green.i800 = getelementptr inbounds %struct._PixelPacket, ptr %p.2903, i64 0, i32 1, !dbg !1333
  %33 = load i16, ptr %green.i800, align 2, !dbg !1333, !tbaa !1147
  %conv2.i801 = uitofp i16 %33 to float, !dbg !1334
  store float %conv2.i801, ptr %green3.i, align 4, !dbg !1335, !tbaa !1150
  %34 = load i16, ptr %p.2903, align 2, !dbg !1336, !tbaa !1152
  %conv4.i803 = uitofp i16 %34 to float, !dbg !1337
  store float %conv4.i803, ptr %blue5.i, align 8, !dbg !1338, !tbaa !1155
  %opacity.i805 = getelementptr inbounds %struct._PixelPacket, ptr %p.2903, i64 0, i32 3, !dbg !1339
  %35 = load i16, ptr %opacity.i805, align 2, !dbg !1339, !tbaa !1122
  %conv6.i806 = uitofp i16 %35 to float, !dbg !1340
  store float %conv6.i806, ptr %opacity7.i, align 4, !dbg !1341, !tbaa !1159
  %cmp.i808 = icmp eq i32 %image.val774, 12, !dbg !1342
  %or.cond.i810 = and i1 %cmp9.i809, %cmp.i808, !dbg !1343
  br i1 %or.cond.i810, label %cond.end.i813, label %SetMagickPixelPacket.exit815, !dbg !1343

cond.end.i813:                                    ; preds = %if.end363
  %add.ptr364 = getelementptr inbounds i16, ptr %call353, i64 %x114.6904, !dbg !1344
  call void @llvm.dbg.value(metadata ptr %add.ptr364, metadata !1136, metadata !DIExpression()), !dbg !1328
  %36 = load i16, ptr %add.ptr364, align 2, !dbg !1345, !tbaa !1165
  %conv14.i811 = uitofp i16 %36 to float, !dbg !1346
  store float %conv14.i811, ptr %index15.i, align 8, !dbg !1347, !tbaa !1168
  br label %SetMagickPixelPacket.exit815, !dbg !1348

SetMagickPixelPacket.exit815:                     ; preds = %if.end363, %cond.end.i813
  %call365 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !1349
  %cmp366.not = icmp eq i32 %call365, %invert, !dbg !1351
  br i1 %cmp366.not, label %if.end369, label %if.end375, !dbg !1352

if.end369:                                        ; preds = %SetMagickPixelPacket.exit815
  %incdec.ptr370 = getelementptr inbounds %struct._PixelPacket, ptr %p.2903, i64 1, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %incdec.ptr370, metadata !958, metadata !DIExpression()), !dbg !1107
  %incdec.ptr371 = getelementptr inbounds %struct._PixelPacket, ptr %q.2905, i64 1, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %incdec.ptr371, metadata !961, metadata !DIExpression()), !dbg !1107
  %inc373 = add i64 %x114.6904, 1, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %inc373, metadata !960, metadata !DIExpression()), !dbg !1107
  %exitcond.not = icmp eq i64 %x114.6904, %conv119, !dbg !1356
  br i1 %exitcond.not, label %if.end375, label %for.body357, !dbg !1319, !llvm.loop !1357

if.end375:                                        ; preds = %SetMagickPixelPacket.exit815, %for.body357, %if.end369, %if.end335
  %x114.7 = phi i64 [ %inc336, %if.end335 ], [ %x114.6904, %SetMagickPixelPacket.exit815 ], [ %x114.6904, %for.body357 ], [ %add292, %if.end369 ], !dbg !1306
  call void @llvm.dbg.value(metadata i64 %x114.7, metadata !960, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %x114.7, metadata !950, metadata !DIExpression()), !dbg !971
  %cmp376.not = icmp sgt i64 %x114.7, %conv119, !dbg !1359
  br i1 %cmp376.not, label %cleanup, label %do.body, !dbg !1360, !llvm.loop !1361

cleanup:                                          ; preds = %if.end375, %if.then215, %for.end251, %if.then339
  %s.9.idx = phi i64 [ %s.5.idx, %if.then215 ], [ %s.5.idx, %for.end251 ], [ %s.7.idx, %if.then339 ], [ %s.7.idx, %if.end375 ]
  %start.4 = phi i64 [ %start.2, %if.then215 ], [ %start.2, %for.end251 ], [ %start.2, %if.then339 ], [ %x114.7, %if.end375 ], !dbg !971
  call void @llvm.dbg.value(metadata i64 %start.4, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call47, i64 %s.9.idx), metadata !947, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !971
  %cmp112 = icmp sgt i64 %s.9.idx, 0, !dbg !1093
  br i1 %cmp112, label %while.body, label %while.end, !dbg !1094

while.end:                                        ; preds = %cleanup, %while.body, %for.end, %if.end109
  call void @llvm.dbg.value(metadata i64 0, metadata !954, metadata !DIExpression()), !dbg !971
  %37 = load i64, ptr %rows, align 8, !dbg !1363, !tbaa !1012
  %cmp383920 = icmp sgt i64 %37, 0, !dbg !1364
  br i1 %cmp383920, label %for.body385.lr.ph, label %for.end487, !dbg !1365

for.body385.lr.ph:                                ; preds = %while.end
  %fill_pattern.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 9
  %opacity.i818 = getelementptr inbounds %struct._PixelPacket, ptr %fill_color, i64 0, i32 3
  %fill.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 5
  %red.i819 = getelementptr inbounds %struct._PixelPacket, ptr %fill_color, i64 0, i32 2
  %red1.i821 = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 5
  %green.i822 = getelementptr inbounds %struct._PixelPacket, ptr %fill_color, i64 0, i32 1
  %green3.i824 = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 6
  %blue5.i826 = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 7
  %opacity7.i829 = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 8
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 1
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 9
  %and = and i32 %channel, 1
  %cmp418.not = icmp eq i32 %and, 0
  %and424 = and i32 %channel, 2
  %cmp425.not = icmp eq i32 %and424, 0
  %and431 = and i32 %channel, 4
  %cmp432.not = icmp eq i32 %and431, 0
  %and438 = and i32 %channel, 8
  %cmp439.not = icmp eq i32 %and438, 0
  %opacity443 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 5, i32 3
  %and452 = and i32 %channel, 32
  %cmp453.not = icmp eq i32 %and452, 0
  br label %for.body385, !dbg !1365

for.body385:                                      ; preds = %for.body385.lr.ph, %for.inc485
  %y.0921 = phi i64 [ 0, %for.body385.lr.ph ], [ %inc486, %for.inc485 ]
  call void @llvm.dbg.value(metadata i64 %y.0921, metadata !954, metadata !DIExpression()), !dbg !971
  %38 = load i64, ptr %columns, align 8, !dbg !1366, !tbaa !1007
  %call391 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call111, i64 noundef 0, i64 noundef %y.0921, i64 noundef %38, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1367
  call void @llvm.dbg.value(metadata ptr %call391, metadata !963, metadata !DIExpression()), !dbg !1368
  %39 = load i64, ptr %columns, align 8, !dbg !1369, !tbaa !1007
  %call393 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call110, i64 noundef 0, i64 noundef %y.0921, i64 noundef %39, i64 noundef 1, ptr noundef nonnull %exception26) #9, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %call393, metadata !970, metadata !DIExpression()), !dbg !1368
  %cmp394 = icmp eq ptr %call391, null, !dbg !1371
  %cmp397 = icmp eq ptr %call393, null
  %or.cond515 = select i1 %cmp394, i1 true, i1 %cmp397, !dbg !1373
  br i1 %or.cond515, label %for.end487, label %if.end400, !dbg !1373

if.end400:                                        ; preds = %for.body385
  %call401 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call110) #7, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %call401, metadata !967, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %call393, metadata !970, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %call391, metadata !963, metadata !DIExpression()), !dbg !1368
  %40 = load i64, ptr %columns, align 8, !dbg !1375, !tbaa !1007
  %cmp404912 = icmp sgt i64 %40, 0, !dbg !1378
  br i1 %cmp404912, label %for.body406.lr.ph, label %for.end473, !dbg !1379

for.body406.lr.ph:                                ; preds = %if.end400
  %cmp461.not = icmp eq ptr %call401, null
  br label %for.body406, !dbg !1379

for.body406:                                      ; preds = %for.body406.lr.ph, %if.end468
  %q389.0917 = phi ptr [ %call393, %for.body406.lr.ph ], [ %incdec.ptr470, %if.end468 ]
  %x388.0914 = phi i64 [ 0, %for.body406.lr.ph ], [ %inc472, %if.end468 ]
  %p386.0913 = phi ptr [ %call391, %for.body406.lr.ph ], [ %incdec.ptr469, %if.end468 ]
  call void @llvm.dbg.value(metadata ptr %q389.0917, metadata !970, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %x388.0914, metadata !969, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %p386.0913, metadata !963, metadata !DIExpression()), !dbg !1368
  %opacity407 = getelementptr inbounds %struct._PixelPacket, ptr %p386.0913, i64 0, i32 3, !dbg !1380
  %41 = load i16, ptr %opacity407, align 2, !dbg !1380, !tbaa !1122
  %cmp409.not = icmp eq i16 %41, 0, !dbg !1383
  br i1 %cmp409.not, label %if.end468, label %if.then411, !dbg !1384

if.then411:                                       ; preds = %for.body406
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !1385, metadata !DIExpression()) #7, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %x388.0914, metadata !1391, metadata !DIExpression()) #7, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %y.0921, metadata !1392, metadata !DIExpression()) #7, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %fill_color, metadata !1393, metadata !DIExpression()) #7, !dbg !1396
  %42 = load ptr, ptr %fill_pattern.i, align 8, !dbg !1399, !tbaa !1400
  call void @llvm.dbg.value(metadata ptr %42, metadata !1394, metadata !DIExpression()) #7, !dbg !1396
  %cmp.i816 = icmp eq ptr %42, null, !dbg !1401
  br i1 %cmp.i816, label %if.then.i, label %if.end.i817, !dbg !1403

if.then.i:                                        ; preds = %if.then411
  %43 = load i64, ptr %fill.i, align 4, !dbg !1404
  store i64 %43, ptr %fill_color, align 8, !dbg !1404
  %44 = lshr i64 %43, 48, !dbg !1406
  %45 = trunc i64 %44 to i16, !dbg !1406
  br label %GetFillColor.exit, !dbg !1406

if.end.i817:                                      ; preds = %if.then411
  %x1.i = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 74, i32 2, !dbg !1407
  %46 = load i64, ptr %x1.i, align 8, !dbg !1407, !tbaa !1408
  %add.i = add nsw i64 %46, %x388.0914, !dbg !1409
  %y3.i = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 74, i32 3, !dbg !1410
  %47 = load i64, ptr %y3.i, align 8, !dbg !1410, !tbaa !1411
  %add4.i = add nsw i64 %47, %y.0921, !dbg !1412
  %exception.i = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 58, !dbg !1413
  %call.i = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %42, i32 noundef 7, i64 noundef %add.i, i64 noundef %add4.i, ptr noundef nonnull %fill_color, ptr noundef nonnull %exception.i) #7, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1395, metadata !DIExpression()) #7, !dbg !1396
  %matte.i = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 6, !dbg !1415
  %48 = load i32, ptr %matte.i, align 8, !dbg !1415, !tbaa !1037
  %cmp5.i = icmp eq i32 %48, 0, !dbg !1417
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i817.GetFillColor.exit_crit_edge, !dbg !1418

if.end.i817.GetFillColor.exit_crit_edge:          ; preds = %if.end.i817
  %.pre = load i16, ptr %opacity.i818, align 2, !dbg !1419, !tbaa !1122
  br label %GetFillColor.exit, !dbg !1418

if.then6.i:                                       ; preds = %if.end.i817
  store i16 0, ptr %opacity.i818, align 2, !dbg !1421, !tbaa !1122
  br label %GetFillColor.exit, !dbg !1422

GetFillColor.exit:                                ; preds = %if.end.i817.GetFillColor.exit_crit_edge, %if.then.i, %if.then6.i
  %49 = phi i16 [ %.pre, %if.end.i817.GetFillColor.exit_crit_edge ], [ %45, %if.then.i ], [ 0, %if.then6.i ], !dbg !1419
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %fill_color, metadata !1135, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr null, metadata !1136, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %fill, metadata !1137, metadata !DIExpression()), !dbg !1423
  %50 = load i16, ptr %red.i819, align 4, !dbg !1424, !tbaa !1141
  %conv.i820 = uitofp i16 %50 to float, !dbg !1425
  store float %conv.i820, ptr %red1.i821, align 8, !dbg !1426, !tbaa !1144
  %51 = load i16, ptr %green.i822, align 2, !dbg !1427, !tbaa !1147
  %conv2.i823 = uitofp i16 %51 to float, !dbg !1428
  store float %conv2.i823, ptr %green3.i824, align 4, !dbg !1429, !tbaa !1150
  %52 = load i16, ptr %fill_color, align 8, !dbg !1430, !tbaa !1152
  %conv4.i825 = uitofp i16 %52 to float, !dbg !1431
  store float %conv4.i825, ptr %blue5.i826, align 8, !dbg !1432, !tbaa !1155
  %conv6.i828 = uitofp i16 %49 to float, !dbg !1433
  store float %conv6.i828, ptr %opacity7.i829, align 4, !dbg !1434, !tbaa !1159
  %53 = load i32, ptr %colorspace, align 4, !dbg !1435, !tbaa !1021
  %cmp414 = icmp eq i32 %53, 12, !dbg !1437
  br i1 %cmp414, label %if.then416, label %if.end417, !dbg !1438

if.then416:                                       ; preds = %GetFillColor.exit
  call void @llvm.dbg.value(metadata ptr %fill, metadata !1439, metadata !DIExpression()) #7, !dbg !1451
  %54 = load i32, ptr %colorspace.i, align 4, !dbg !1453, !tbaa !1455
  %cmp.not.i = icmp eq i32 %54, 13, !dbg !1456
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i837, !dbg !1457

if.then.i837:                                     ; preds = %if.then416
  %conv.i832 = uitofp i16 %50 to double, !dbg !1458
  %mul.i = fmul double %conv.i832, 0x3EF0001000100010, !dbg !1460
  %conv2.i833 = fptrunc double %mul.i to float, !dbg !1461
  call void @llvm.dbg.value(metadata float %conv2.i833, metadata !1449, metadata !DIExpression()) #7, !dbg !1451
  %conv4.i835 = uitofp i16 %51 to double, !dbg !1462
  %mul5.i = fmul double %conv4.i835, 0x3EF0001000100010, !dbg !1463
  %conv6.i836 = fptrunc double %mul5.i to float, !dbg !1464
  call void @llvm.dbg.value(metadata float %conv6.i836, metadata !1447, metadata !DIExpression()) #7, !dbg !1451
  %conv8.i = uitofp i16 %52 to double, !dbg !1465
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !1466
  %conv10.i = fptrunc double %mul9.i to float, !dbg !1467
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !1445, metadata !DIExpression()) #7, !dbg !1451
  br label %if.end.i839, !dbg !1468

if.else.i:                                        ; preds = %if.then416
  %call.i838 = call float @DecodePixelGamma(float noundef %conv.i820) #9, !dbg !1469
  call void @llvm.dbg.value(metadata float %call.i838, metadata !1449, metadata !DIExpression()) #7, !dbg !1451
  %55 = load float, ptr %green3.i824, align 4, !dbg !1471, !tbaa !1150
  %call13.i = call float @DecodePixelGamma(float noundef %55) #9, !dbg !1472
  call void @llvm.dbg.value(metadata float %call13.i, metadata !1447, metadata !DIExpression()) #7, !dbg !1451
  %56 = load float, ptr %blue5.i826, align 8, !dbg !1473, !tbaa !1155
  %call15.i = call float @DecodePixelGamma(float noundef %56) #9, !dbg !1474
  call void @llvm.dbg.value(metadata float %call15.i, metadata !1445, metadata !DIExpression()) #7, !dbg !1451
  br label %if.end.i839

if.end.i839:                                      ; preds = %if.else.i, %if.then.i837
  %blue.0.i = phi float [ %conv10.i, %if.then.i837 ], [ %call15.i, %if.else.i ], !dbg !1475
  %green.0.i = phi float [ %conv6.i836, %if.then.i837 ], [ %call13.i, %if.else.i ], !dbg !1475
  %red.0.i = phi float [ %conv2.i833, %if.then.i837 ], [ %call.i838, %if.else.i ], !dbg !1475
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !1449, metadata !DIExpression()) #7, !dbg !1451
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !1447, metadata !DIExpression()) #7, !dbg !1451
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !1445, metadata !DIExpression()) #7, !dbg !1451
  %57 = call float @llvm.fabs.f32(float %red.0.i) #7, !dbg !1476
  %58 = fpext float %57 to double, !dbg !1476
  %cmp17.i = fcmp olt double %58, 1.000000e-15, !dbg !1478
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end27.i, !dbg !1479

land.lhs.true.i:                                  ; preds = %if.end.i839
  %59 = call float @llvm.fabs.f32(float %green.0.i) #7, !dbg !1480
  %60 = fpext float %59 to double, !dbg !1480
  %cmp20.i = fcmp olt double %60, 1.000000e-15, !dbg !1481
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !1482

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %61 = call float @llvm.fabs.f32(float %blue.0.i) #7, !dbg !1483
  %62 = fpext float %61 to double, !dbg !1483
  %cmp24.i = fcmp olt double %62, 1.000000e-15, !dbg !1484
  br i1 %cmp24.i, label %ConvertRGBToCMYK.exit, label %if.end27.i, !dbg !1485

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i, %if.end.i839
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !1486
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1446, metadata !DIExpression()) #7, !dbg !1451
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !1487
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1448, metadata !DIExpression()) #7, !dbg !1451
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !1488
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1450, metadata !DIExpression()) #7, !dbg !1451
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1444, metadata !DIExpression()) #7, !dbg !1451
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !1489
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !1491

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1444, metadata !DIExpression()) #7, !dbg !1451
  br label %if.end39.i, !dbg !1492

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !1451
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !1444, metadata !DIExpression()) #7, !dbg !1451
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !1493
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !1495

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1444, metadata !DIExpression()) #7, !dbg !1451
  br label %if.end43.i, !dbg !1496

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !1451
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !1444, metadata !DIExpression()) #7, !dbg !1451
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !1497
  %conv45.i = fpext float %sub44.i to double, !dbg !1498
  %conv46.i = fpext float %black.1.i to double, !dbg !1499
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !1500
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !1501
  %conv48.i = fptrunc double %div.i to float, !dbg !1502
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !1446, metadata !DIExpression()) #7, !dbg !1451
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !1503
  %conv50.i = fpext float %sub49.i to double, !dbg !1504
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !1505
  %conv54.i = fptrunc double %div53.i to float, !dbg !1506
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !1448, metadata !DIExpression()) #7, !dbg !1451
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !1507
  %conv56.i = fpext float %sub55.i to double, !dbg !1508
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !1509
  %conv60.i = fptrunc double %div59.i to float, !dbg !1510
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !1450, metadata !DIExpression()) #7, !dbg !1451
  store i32 12, ptr %colorspace.i, align 4, !dbg !1511, !tbaa !1455
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !1512
  store float %mul62.i, ptr %red1.i821, align 8, !dbg !1513, !tbaa !1144
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !1514
  store float %mul64.i, ptr %green3.i824, align 4, !dbg !1515, !tbaa !1150
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !1516
  store float %mul66.i, ptr %blue5.i826, align 8, !dbg !1517, !tbaa !1155
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !1518
  br label %ConvertRGBToCMYK.exit, !dbg !1519

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i, %if.end43.i
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i ]
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !1451, !tbaa !1168
  br label %if.end417, !dbg !1520

if.end417:                                        ; preds = %ConvertRGBToCMYK.exit, %GetFillColor.exit
  br i1 %cmp418.not, label %if.end423, label %if.then420, !dbg !1521

if.then420:                                       ; preds = %if.end417
  %63 = load float, ptr %red1.i821, align 8, !dbg !1522, !tbaa !1144
  call void @llvm.dbg.value(metadata float %63, metadata !1524, metadata !DIExpression()), !dbg !1530
  %cmp.i840 = fcmp ugt float %63, 0.000000e+00, !dbg !1532
  br i1 %cmp.i840, label %if.end.i841, label %ClampToQuantum.exit, !dbg !1534

if.end.i841:                                      ; preds = %if.then420
  %cmp1.i = fcmp ult float %63, 6.553500e+04, !dbg !1535
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1537

if.end3.i:                                        ; preds = %if.end.i841
  %add.i842 = fadd float %63, 5.000000e-01, !dbg !1538
  %conv.i843 = fptoui float %add.i842 to i16, !dbg !1539
  br label %ClampToQuantum.exit, !dbg !1540

ClampToQuantum.exit:                              ; preds = %if.then420, %if.end.i841, %if.end3.i
  %retval.0.i844 = phi i16 [ %conv.i843, %if.end3.i ], [ 0, %if.then420 ], [ -1, %if.end.i841 ], !dbg !1530
  %red422 = getelementptr inbounds %struct._PixelPacket, ptr %q389.0917, i64 0, i32 2, !dbg !1522
  store i16 %retval.0.i844, ptr %red422, align 2, !dbg !1522, !tbaa !1141
  br label %if.end423, !dbg !1522

if.end423:                                        ; preds = %ClampToQuantum.exit, %if.end417
  br i1 %cmp425.not, label %if.end430, label %if.then427, !dbg !1541

if.then427:                                       ; preds = %if.end423
  %64 = load float, ptr %green3.i824, align 4, !dbg !1542, !tbaa !1150
  call void @llvm.dbg.value(metadata float %64, metadata !1524, metadata !DIExpression()), !dbg !1544
  %cmp.i845 = fcmp ugt float %64, 0.000000e+00, !dbg !1546
  br i1 %cmp.i845, label %if.end.i847, label %ClampToQuantum.exit852, !dbg !1547

if.end.i847:                                      ; preds = %if.then427
  %cmp1.i846 = fcmp ult float %64, 6.553500e+04, !dbg !1548
  br i1 %cmp1.i846, label %if.end3.i850, label %ClampToQuantum.exit852, !dbg !1549

if.end3.i850:                                     ; preds = %if.end.i847
  %add.i848 = fadd float %64, 5.000000e-01, !dbg !1550
  %conv.i849 = fptoui float %add.i848 to i16, !dbg !1551
  br label %ClampToQuantum.exit852, !dbg !1552

ClampToQuantum.exit852:                           ; preds = %if.then427, %if.end.i847, %if.end3.i850
  %retval.0.i851 = phi i16 [ %conv.i849, %if.end3.i850 ], [ 0, %if.then427 ], [ -1, %if.end.i847 ], !dbg !1544
  %green429 = getelementptr inbounds %struct._PixelPacket, ptr %q389.0917, i64 0, i32 1, !dbg !1542
  store i16 %retval.0.i851, ptr %green429, align 2, !dbg !1542, !tbaa !1147
  br label %if.end430, !dbg !1542

if.end430:                                        ; preds = %ClampToQuantum.exit852, %if.end423
  br i1 %cmp432.not, label %if.end437, label %if.then434, !dbg !1553

if.then434:                                       ; preds = %if.end430
  %65 = load float, ptr %blue5.i826, align 8, !dbg !1554, !tbaa !1155
  call void @llvm.dbg.value(metadata float %65, metadata !1524, metadata !DIExpression()), !dbg !1556
  %cmp.i853 = fcmp ugt float %65, 0.000000e+00, !dbg !1558
  br i1 %cmp.i853, label %if.end.i855, label %ClampToQuantum.exit860, !dbg !1559

if.end.i855:                                      ; preds = %if.then434
  %cmp1.i854 = fcmp ult float %65, 6.553500e+04, !dbg !1560
  br i1 %cmp1.i854, label %if.end3.i858, label %ClampToQuantum.exit860, !dbg !1561

if.end3.i858:                                     ; preds = %if.end.i855
  %add.i856 = fadd float %65, 5.000000e-01, !dbg !1562
  %conv.i857 = fptoui float %add.i856 to i16, !dbg !1563
  br label %ClampToQuantum.exit860, !dbg !1564

ClampToQuantum.exit860:                           ; preds = %if.then434, %if.end.i855, %if.end3.i858
  %retval.0.i859 = phi i16 [ %conv.i857, %if.end3.i858 ], [ 0, %if.then434 ], [ -1, %if.end.i855 ], !dbg !1556
  store i16 %retval.0.i859, ptr %q389.0917, align 2, !dbg !1554, !tbaa !1152
  br label %if.end437, !dbg !1554

if.end437:                                        ; preds = %ClampToQuantum.exit860, %if.end430
  br i1 %cmp439.not, label %lor.lhs.false441, label %if.then447, !dbg !1565

lor.lhs.false441:                                 ; preds = %if.end437
  %66 = load i16, ptr %opacity443, align 2, !dbg !1567, !tbaa !1041
  %cmp445.not = icmp eq i16 %66, 0, !dbg !1568
  br i1 %cmp445.not, label %if.end451, label %if.then447, !dbg !1569

if.then447:                                       ; preds = %lor.lhs.false441, %if.end437
  %67 = load float, ptr %opacity7.i829, align 4, !dbg !1570, !tbaa !1159
  call void @llvm.dbg.value(metadata float %67, metadata !1524, metadata !DIExpression()), !dbg !1571
  %cmp.i861 = fcmp ugt float %67, 0.000000e+00, !dbg !1573
  br i1 %cmp.i861, label %if.end.i863, label %ClampToQuantum.exit868, !dbg !1574

if.end.i863:                                      ; preds = %if.then447
  %cmp1.i862 = fcmp ult float %67, 6.553500e+04, !dbg !1575
  br i1 %cmp1.i862, label %if.end3.i866, label %ClampToQuantum.exit868, !dbg !1576

if.end3.i866:                                     ; preds = %if.end.i863
  %add.i864 = fadd float %67, 5.000000e-01, !dbg !1577
  %conv.i865 = fptoui float %add.i864 to i16, !dbg !1578
  br label %ClampToQuantum.exit868, !dbg !1579

ClampToQuantum.exit868:                           ; preds = %if.then447, %if.end.i863, %if.end3.i866
  %retval.0.i867 = phi i16 [ %conv.i865, %if.end3.i866 ], [ 0, %if.then447 ], [ -1, %if.end.i863 ], !dbg !1571
  %opacity450 = getelementptr inbounds %struct._PixelPacket, ptr %q389.0917, i64 0, i32 3, !dbg !1570
  store i16 %retval.0.i867, ptr %opacity450, align 2, !dbg !1570, !tbaa !1122
  br label %if.end451, !dbg !1570

if.end451:                                        ; preds = %ClampToQuantum.exit868, %lor.lhs.false441
  br i1 %cmp453.not, label %if.end468, label %land.lhs.true455, !dbg !1580

land.lhs.true455:                                 ; preds = %if.end451
  %68 = load i32, ptr %colorspace, align 4, !dbg !1582, !tbaa !1021
  %cmp457 = icmp ne i32 %68, 12, !dbg !1583
  %or.cond772 = select i1 %cmp457, i1 true, i1 %cmp461.not, !dbg !1584
  br i1 %or.cond772, label %if.end468, label %if.then463, !dbg !1584

if.then463:                                       ; preds = %land.lhs.true455
  %add.ptr460 = getelementptr inbounds i16, ptr %call401, i64 %x388.0914, !dbg !1585
  %69 = load float, ptr %index69.i, align 8, !dbg !1585, !tbaa !1168
  call void @llvm.dbg.value(metadata float %69, metadata !1524, metadata !DIExpression()), !dbg !1588
  %cmp.i869 = fcmp ugt float %69, 0.000000e+00, !dbg !1590
  br i1 %cmp.i869, label %if.end.i871, label %ClampToQuantum.exit876, !dbg !1591

if.end.i871:                                      ; preds = %if.then463
  %cmp1.i870 = fcmp ult float %69, 6.553500e+04, !dbg !1592
  br i1 %cmp1.i870, label %if.end3.i874, label %ClampToQuantum.exit876, !dbg !1593

if.end3.i874:                                     ; preds = %if.end.i871
  %add.i872 = fadd float %69, 5.000000e-01, !dbg !1594
  %conv.i873 = fptoui float %add.i872 to i16, !dbg !1595
  br label %ClampToQuantum.exit876, !dbg !1596

ClampToQuantum.exit876:                           ; preds = %if.then463, %if.end.i871, %if.end3.i874
  %retval.0.i875 = phi i16 [ %conv.i873, %if.end3.i874 ], [ 0, %if.then463 ], [ -1, %if.end.i871 ], !dbg !1588
  store i16 %retval.0.i875, ptr %add.ptr460, align 2, !dbg !1585, !tbaa !1165
  br label %if.end468, !dbg !1585

if.end468:                                        ; preds = %if.end451, %land.lhs.true455, %ClampToQuantum.exit876, %for.body406
  %incdec.ptr469 = getelementptr inbounds %struct._PixelPacket, ptr %p386.0913, i64 1, !dbg !1597
  call void @llvm.dbg.value(metadata ptr %incdec.ptr469, metadata !963, metadata !DIExpression()), !dbg !1368
  %incdec.ptr470 = getelementptr inbounds %struct._PixelPacket, ptr %q389.0917, i64 1, !dbg !1598
  call void @llvm.dbg.value(metadata ptr %incdec.ptr470, metadata !970, metadata !DIExpression()), !dbg !1368
  %inc472 = add nuw nsw i64 %x388.0914, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %inc472, metadata !969, metadata !DIExpression()), !dbg !1368
  %70 = load i64, ptr %columns, align 8, !dbg !1375, !tbaa !1007
  %cmp404 = icmp slt i64 %inc472, %70, !dbg !1378
  br i1 %cmp404, label %for.body406, label %for.end473, !dbg !1379, !llvm.loop !1600

for.end473:                                       ; preds = %if.end468, %if.end400
  %call474 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call110, ptr noundef nonnull %exception26) #9, !dbg !1602
  %cmp475 = icmp eq i32 %call474, 0, !dbg !1604
  br i1 %cmp475, label %for.end487, label %for.inc485, !dbg !1605

for.inc485:                                       ; preds = %for.end473
  %inc486 = add nuw nsw i64 %y.0921, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %inc486, metadata !954, metadata !DIExpression()), !dbg !971
  %71 = load i64, ptr %rows, align 8, !dbg !1363, !tbaa !1012
  %cmp383 = icmp slt i64 %inc486, %71, !dbg !1364
  br i1 %cmp383, label %for.body385, label %for.end487, !dbg !1365, !llvm.loop !1607

for.end487:                                       ; preds = %for.inc485, %for.body385, %for.end473, %while.end
  %y.0.lcssa = phi i64 [ 0, %while.end ], [ %y.0921, %for.end473 ], [ %y.0921, %for.body385 ], [ %inc486, %for.inc485 ], !dbg !1609
  %call488 = call ptr @DestroyCacheView(ptr noundef %call111) #7, !dbg !1610
  call void @llvm.dbg.value(metadata ptr %call488, metadata !934, metadata !DIExpression()), !dbg !971
  %call489 = call ptr @DestroyCacheView(ptr noundef %call110) #7, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %call489, metadata !938, metadata !DIExpression()), !dbg !971
  %call490 = call ptr @RelinquishVirtualMemory(ptr noundef nonnull %call33) #7, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call490, metadata !945, metadata !DIExpression()), !dbg !971
  %call491 = call ptr @DestroyImage(ptr noundef nonnull %call27) #7, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %call491, metadata !941, metadata !DIExpression()), !dbg !971
  %72 = load i64, ptr %rows, align 8, !dbg !1614, !tbaa !1012
  %cmp493 = icmp eq i64 %y.0.lcssa, %72, !dbg !1615
  %cond495 = zext i1 %cmp493 to i32, !dbg !1616
  br label %cleanup496, !dbg !1617

cleanup496:                                       ; preds = %if.then302, %if.then264, %if.then173, %if.then176, %if.then40, %if.end25, %if.end9, %lor.lhs.false6, %if.end, %lor.lhs.false, %for.end487
  %retval.2 = phi i32 [ %cond495, %for.end487 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %lor.lhs.false6 ], [ 0, %if.end9 ], [ 0, %if.end25 ], [ 0, %if.then40 ], [ 0, %if.then176 ], [ 0, %if.then173 ], [ 0, %if.then264 ], [ 0, %if.then302 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fill_color) #7, !dbg !1618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #7, !dbg !1618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fill) #7, !dbg !1618
  ret i32 %retval.2, !dbg !1618
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1619 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1626 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1630 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1633 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1639 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !1642 ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1645 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1648 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1652 ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !1657 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1660 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1663 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1664 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !1669 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !1672 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !1675 i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1678 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1681 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !1684 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1687 ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GradientImage(ptr noundef %image, i32 noundef %type, i32 noundef %method, ptr nocapture noundef readonly %start_color, ptr nocapture noundef readonly %stop_color) local_unnamed_addr #0 !dbg !1690 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1696, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %type, metadata !1697, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %method, metadata !1698, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %start_color, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %stop_color, metadata !1700, metadata !DIExpression()), !dbg !1707
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1708
  %0 = load i32, ptr %debug, align 8, !dbg !1708, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !1710
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1711

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1712
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 450, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1713
  br label %if.end, !dbg !1714

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireDrawInfo() #7, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1701, metadata !DIExpression()), !dbg !1707
  %gradient2 = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %gradient2, metadata !1703, metadata !DIExpression()), !dbg !1707
  store i32 %type, ptr %gradient2, align 8, !dbg !1717, !tbaa !1718
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1719
  %1 = load i64, ptr %columns, align 8, !dbg !1719, !tbaa !1007
  %bounding_box = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 1, !dbg !1720
  store i64 %1, ptr %bounding_box, align 8, !dbg !1721, !tbaa !1722
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1723
  %2 = load i64, ptr %rows, align 8, !dbg !1723, !tbaa !1012
  %height = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 1, i32 1, !dbg !1724
  store i64 %2, ptr %height, align 8, !dbg !1725, !tbaa !1726
  %conv = uitofp i64 %1 to double, !dbg !1727
  %sub = fadd double %conv, -1.000000e+00, !dbg !1728
  %x2 = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 2, i32 2, !dbg !1729
  store double %sub, ptr %x2, align 8, !dbg !1730, !tbaa !1731
  %conv7 = uitofp i64 %2 to double, !dbg !1732
  %sub8 = fadd double %conv7, -1.000000e+00, !dbg !1733
  %y2 = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 2, i32 3, !dbg !1734
  store double %sub8, ptr %y2, align 8, !dbg !1735, !tbaa !1736
  %cmp10 = icmp eq i32 %type, 1, !dbg !1737
  %cmp14 = fcmp une double %sub8, 0.000000e+00
  %or.cond = select i1 %cmp10, i1 %cmp14, i1 false, !dbg !1739
  br i1 %or.cond, label %if.then16, label %if.end19, !dbg !1739

if.then16:                                        ; preds = %if.end
  store double 0.000000e+00, ptr %x2, align 8, !dbg !1740, !tbaa !1731
  br label %if.end19, !dbg !1741

if.end19:                                         ; preds = %if.then16, %if.end
  %3 = phi double [ 0.000000e+00, %if.then16 ], [ %sub, %if.end ], !dbg !1742
  %div = fmul double %3, 5.000000e-01, !dbg !1743
  %center = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 8, !dbg !1744
  store double %div, ptr %center, align 8, !dbg !1745, !tbaa !1746
  %div24 = fmul double %sub8, 5.000000e-01, !dbg !1747
  %y = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 8, i32 1, !dbg !1748
  store double %div24, ptr %y, align 8, !dbg !1749, !tbaa !1750
  call void @llvm.dbg.value(metadata double %div, metadata !1751, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata double %div24, metadata !1757, metadata !DIExpression()), !dbg !1758
  %cmp.i = fcmp ogt double %div, %div24, !dbg !1760
  %x.y.i = select i1 %cmp.i, double %div, double %div24, !dbg !1761
  %conv31 = fptrunc double %x.y.i to float, !dbg !1762
  %radius = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 9, !dbg !1763
  store float %conv31, ptr %radius, align 8, !dbg !1764, !tbaa !1765
  %spread = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 5, !dbg !1766
  store i32 %method, ptr %spread, align 8, !dbg !1767, !tbaa !1768
  %number_stops = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 4, !dbg !1769
  store i64 2, ptr %number_stops, align 8, !dbg !1770, !tbaa !1771
  %call33 = tail call ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 64) #8, !dbg !1772
  %stops = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 8, i32 3, !dbg !1773
  store ptr %call33, ptr %stops, align 8, !dbg !1774, !tbaa !1775
  %cmp35 = icmp eq ptr %call33, null, !dbg !1776
  br i1 %cmp35, label %if.then40, label %if.end45, !dbg !1778

if.then40:                                        ; preds = %if.end19
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1779
  %filename41 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1779
  %call43 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 474, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename41) #7, !dbg !1779
  br label %cleanup, !dbg !1779

if.end45:                                         ; preds = %if.end19
  %4 = load i64, ptr %number_stops, align 8, !dbg !1782, !tbaa !1771
  %mul = shl i64 %4, 6, !dbg !1783
  %call48 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call33, i32 noundef 0, i64 noundef %mul) #7, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1706, metadata !DIExpression()), !dbg !1707
  %5 = load i64, ptr %number_stops, align 8, !dbg !1785, !tbaa !1771
  %cmp50126 = icmp sgt i64 %5, 0, !dbg !1788
  br i1 %cmp50126, label %for.body, label %for.end, !dbg !1789

for.body:                                         ; preds = %if.end45, %for.body
  %i.0127 = phi i64 [ %inc, %for.body ], [ 0, %if.end45 ]
  call void @llvm.dbg.value(metadata i64 %i.0127, metadata !1706, metadata !DIExpression()), !dbg !1707
  %6 = load ptr, ptr %stops, align 8, !dbg !1790, !tbaa !1775
  %arrayidx = getelementptr inbounds %struct._StopInfo, ptr %6, i64 %i.0127, !dbg !1791
  tail call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef %arrayidx) #7, !dbg !1792
  %inc = add nuw nsw i64 %i.0127, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1706, metadata !DIExpression()), !dbg !1707
  %7 = load i64, ptr %number_stops, align 8, !dbg !1785, !tbaa !1771
  %cmp50 = icmp slt i64 %inc, %7, !dbg !1788
  br i1 %cmp50, label %for.body, label %for.end, !dbg !1789, !llvm.loop !1794

for.end:                                          ; preds = %for.body, %if.end45
  %8 = load ptr, ptr %stops, align 8, !dbg !1796, !tbaa !1775
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %start_color, metadata !1135, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr null, metadata !1136, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %8, metadata !1137, metadata !DIExpression()), !dbg !1797
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %start_color, i64 0, i32 2, !dbg !1799
  %9 = load i16, ptr %red.i, align 2, !dbg !1799, !tbaa !1141
  %conv.i = uitofp i16 %9 to float, !dbg !1800
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5, !dbg !1801
  store float %conv.i, ptr %red1.i, align 8, !dbg !1802, !tbaa !1144
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %start_color, i64 0, i32 1, !dbg !1803
  %10 = load i16, ptr %green.i, align 2, !dbg !1803, !tbaa !1147
  %conv2.i = uitofp i16 %10 to float, !dbg !1804
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6, !dbg !1805
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1806, !tbaa !1150
  %11 = load i16, ptr %start_color, align 2, !dbg !1807, !tbaa !1152
  %conv4.i = uitofp i16 %11 to float, !dbg !1808
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7, !dbg !1809
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1810, !tbaa !1155
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %start_color, i64 0, i32 3, !dbg !1811
  %12 = load i16, ptr %opacity.i, align 2, !dbg !1811, !tbaa !1122
  %conv6.i = uitofp i16 %12 to float, !dbg !1812
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8, !dbg !1813
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1814, !tbaa !1159
  %offset = getelementptr inbounds %struct._StopInfo, ptr %8, i64 0, i32 1, !dbg !1815
  store float 0.000000e+00, ptr %offset, align 8, !dbg !1816, !tbaa !1817
  %arrayidx59 = getelementptr inbounds %struct._StopInfo, ptr %8, i64 1, !dbg !1819
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %stop_color, metadata !1135, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr null, metadata !1136, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %arrayidx59, metadata !1137, metadata !DIExpression()), !dbg !1820
  %red.i114 = getelementptr inbounds %struct._PixelPacket, ptr %stop_color, i64 0, i32 2, !dbg !1822
  %13 = load i16, ptr %red.i114, align 2, !dbg !1822, !tbaa !1141
  %conv.i115 = uitofp i16 %13 to float, !dbg !1823
  %red1.i116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %arrayidx59, i64 0, i32 5, !dbg !1824
  store float %conv.i115, ptr %red1.i116, align 8, !dbg !1825, !tbaa !1144
  %green.i117 = getelementptr inbounds %struct._PixelPacket, ptr %stop_color, i64 0, i32 1, !dbg !1826
  %14 = load i16, ptr %green.i117, align 2, !dbg !1826, !tbaa !1147
  %conv2.i118 = uitofp i16 %14 to float, !dbg !1827
  %green3.i119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %arrayidx59, i64 0, i32 6, !dbg !1828
  store float %conv2.i118, ptr %green3.i119, align 4, !dbg !1829, !tbaa !1150
  %15 = load i16, ptr %stop_color, align 2, !dbg !1830, !tbaa !1152
  %conv4.i120 = uitofp i16 %15 to float, !dbg !1831
  %blue5.i121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %arrayidx59, i64 0, i32 7, !dbg !1832
  store float %conv4.i120, ptr %blue5.i121, align 8, !dbg !1833, !tbaa !1155
  %opacity.i122 = getelementptr inbounds %struct._PixelPacket, ptr %stop_color, i64 0, i32 3, !dbg !1834
  %16 = load i16, ptr %opacity.i122, align 2, !dbg !1834, !tbaa !1122
  %conv6.i123 = uitofp i16 %16 to float, !dbg !1835
  %opacity7.i124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %arrayidx59, i64 0, i32 8, !dbg !1836
  store float %conv6.i123, ptr %opacity7.i124, align 4, !dbg !1837, !tbaa !1159
  %offset63 = getelementptr inbounds %struct._StopInfo, ptr %8, i64 1, i32 1, !dbg !1838
  store float 1.000000e+00, ptr %offset63, align 8, !dbg !1839, !tbaa !1817
  %call64 = tail call i32 @DrawGradientImage(ptr noundef %image, ptr noundef nonnull %call1) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %call64, metadata !1705, metadata !DIExpression()), !dbg !1707
  %call65 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %call1) #7, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1701, metadata !DIExpression()), !dbg !1707
  br label %cleanup, !dbg !1842

cleanup:                                          ; preds = %if.then40, %for.end
  %retval.0 = phi i32 [ %call64, %for.end ], [ 0, %if.then40 ], !dbg !1707
  ret i32 %retval.0, !dbg !1843
}

declare !dbg !1844 ptr @AcquireDrawInfo() local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !1847 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1850 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1853 i32 @DrawGradientImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1856 ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @OilPaintImage(ptr noundef %image, double noundef %radius, ptr noundef %exception) local_unnamed_addr #0 !dbg !1859 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1863, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata double %radius, metadata !1864, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1865, metadata !DIExpression()), !dbg !1897
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1898
  %0 = load i32, ptr %debug, align 8, !dbg !1898, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !1900
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1901

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1902
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1903
  br label %if.end, !dbg !1904

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i64 @GetOptimalKernelWidth2D(double noundef %radius, double noundef 5.000000e-01) #7, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1874, metadata !DIExpression()), !dbg !1897
  %call2 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1868, metadata !DIExpression()), !dbg !1897
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1907
  %1 = load i64, ptr %columns, align 8, !dbg !1907, !tbaa !1007
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1908
  %2 = load i64, ptr %rows, align 8, !dbg !1908, !tbaa !1012
  %call3 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #7, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1869, metadata !DIExpression()), !dbg !1897
  %cmp4 = icmp eq ptr %call2, null, !dbg !1910
  %cmp5 = icmp eq ptr %call3, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5, !dbg !1912
  br i1 %or.cond, label %if.then6, label %if.end15, !dbg !1912

if.then6:                                         ; preds = %if.end
  br i1 %cmp4, label %if.end10, label %if.then8, !dbg !1913

if.then8:                                         ; preds = %if.then6
  %call9 = tail call ptr @DestroyImage(ptr noundef nonnull %call2) #7, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1868, metadata !DIExpression()), !dbg !1897
  br label %if.end10, !dbg !1917

if.end10:                                         ; preds = %if.then8, %if.then6
  br i1 %cmp5, label %cleanup139, label %if.then12, !dbg !1918

if.then12:                                        ; preds = %if.end10
  %call13 = tail call ptr @DestroyImage(ptr noundef nonnull %call3) #7, !dbg !1919
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1868, metadata !DIExpression()), !dbg !1897
  br label %cleanup139, !dbg !1921

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call3, i32 noundef 1) #7, !dbg !1922
  %cmp17 = icmp eq i32 %call16, 0, !dbg !1924
  br i1 %cmp17, label %if.then18, label %if.end22, !dbg !1925

if.then18:                                        ; preds = %if.end15
  %exception19 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 58, !dbg !1926
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception19) #7, !dbg !1928
  %call20 = tail call ptr @DestroyImage(ptr noundef nonnull %call2) #7, !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1868, metadata !DIExpression()), !dbg !1897
  %call21 = tail call ptr @DestroyImage(ptr noundef nonnull %call3) #7, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1869, metadata !DIExpression()), !dbg !1897
  br label %cleanup139, !dbg !1931

if.end22:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i64 256, metadata !1932, metadata !DIExpression()) #7, !dbg !1940
  %call.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !1939, metadata !DIExpression()) #7, !dbg !1940
  %call1.i = tail call ptr @AcquireQuantumMemory(i64 noundef %call.i, i64 noundef 8) #8, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1938, metadata !DIExpression()) #7, !dbg !1940
  %cmp.i = icmp eq ptr %call1.i, null, !dbg !1944
  br i1 %cmp.i, label %if.then25, label %if.end.i, !dbg !1946

if.end.i:                                         ; preds = %if.end22
  %mul.i = shl i64 %call.i, 3, !dbg !1947
  %call2.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1.i, i32 noundef 0, i64 noundef %mul.i) #7, !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !1937, metadata !DIExpression()) #7, !dbg !1940
  %cmp31.i = icmp sgt i64 %call.i, 0, !dbg !1949
  br i1 %cmp31.i, label %for.body.i, label %if.end31, !dbg !1952

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %i.02.i, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %i.02.i, metadata !1937, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1940
  %exitcond.not.i = icmp eq i64 %inc.i, %call.i, !dbg !1949
  br i1 %exitcond.not.i, label %if.end31, label %for.body.i, !dbg !1952, !llvm.loop !1954

for.body.i:                                       ; preds = %if.end.i, %for.cond.i
  %i.02.i = phi i64 [ %inc.i, %for.cond.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 %i.02.i, metadata !1937, metadata !DIExpression()) #7, !dbg !1940
  %call4.i = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #8, !dbg !1956
  %arrayidx.i = getelementptr inbounds ptr, ptr %call1.i, i64 %i.02.i, !dbg !1958
  store ptr %call4.i, ptr %arrayidx.i, align 8, !dbg !1959, !tbaa !1960
  %cmp6.i = icmp eq ptr %call4.i, null, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %i.02.i, metadata !1937, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1940
  br i1 %cmp6.i, label %if.then7.i, label %for.cond.i, !dbg !1963

if.then7.i:                                       ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1964, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()) #7, !dbg !1970
  %call14.i.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7, !dbg !1972
  %cmp15.i.i = icmp sgt i64 %call14.i.i, 0, !dbg !1975
  br i1 %cmp15.i.i, label %for.body.i.i, label %AcquireHistogramThreadSet.exit, !dbg !1976

for.body.i.i:                                     ; preds = %if.then7.i, %for.inc.i.i
  %i.016.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ 0, %if.then7.i ]
  call void @llvm.dbg.value(metadata i64 %i.016.i.i, metadata !1969, metadata !DIExpression()) #7, !dbg !1970
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %call1.i, i64 %i.016.i.i, !dbg !1977
  %3 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !1977, !tbaa !1960
  %cmp1.not.i.i = icmp eq ptr %3, null, !dbg !1979
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.then.i.i, !dbg !1980

if.then.i.i:                                      ; preds = %for.body.i.i
  %call3.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #7, !dbg !1981
  store ptr %call3.i.i, ptr %arrayidx.i.i, align 8, !dbg !1982, !tbaa !1960
  br label %for.inc.i.i, !dbg !1983

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i
  %inc.i.i = add nuw nsw i64 %i.016.i.i, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !1969, metadata !DIExpression()) #7, !dbg !1970
  %call.i.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7, !dbg !1972
  %cmp.i.i = icmp slt i64 %inc.i.i, %call.i.i, !dbg !1975
  br i1 %cmp.i.i, label %for.body.i.i, label %AcquireHistogramThreadSet.exit, !dbg !1976, !llvm.loop !1985

AcquireHistogramThreadSet.exit:                   ; preds = %for.inc.i.i, %if.then7.i
  %call5.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1.i) #7, !dbg !1987
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !1964, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !1872, metadata !DIExpression()), !dbg !1897
  %cmp24 = icmp eq ptr %call5.i.i, null, !dbg !1988
  br i1 %cmp24, label %if.then25, label %if.end31, !dbg !1990

if.then25:                                        ; preds = %if.end22, %AcquireHistogramThreadSet.exit
  %call26 = tail call ptr @DestroyImage(ptr noundef %call2) #7, !dbg !1991
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1868, metadata !DIExpression()), !dbg !1897
  %call27 = tail call ptr @DestroyImage(ptr noundef %call3) #7, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1869, metadata !DIExpression()), !dbg !1897
  %filename28 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1994
  %call30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 620, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename28) #7, !dbg !1994
  br label %cleanup139, !dbg !1994

if.end31:                                         ; preds = %for.cond.i, %if.end.i, %AcquireHistogramThreadSet.exit
  %retval.0.i251 = phi ptr [ %call5.i.i, %AcquireHistogramThreadSet.exit ], [ %call1.i, %if.end.i ], [ %call1.i, %for.cond.i ]
  call void @llvm.dbg.value(metadata i32 1, metadata !1870, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1897
  %call32 = tail call ptr @AcquireVirtualCacheView(ptr noundef %call2, ptr noundef %exception) #7, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1866, metadata !DIExpression()), !dbg !1897
  %call33 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %call3, ptr noundef %exception) #7, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1867, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1897
  %rows34 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 8
  %4 = load i64, ptr %rows34, align 8, !dbg !1998, !tbaa !1012
  %cmp35296 = icmp sgt i64 %4, 0, !dbg !1999
  br i1 %cmp35296, label %for.body.lr.ph, label %for.end129, !dbg !2000

for.body.lr.ph:                                   ; preds = %if.end31
  %div.neg = sdiv i64 %call1, -2
  %div39230 = lshr i64 %call1, 1
  %columns41 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 7
  %columns43 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 7
  %cmp59260 = icmp sgt i64 %call1, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2000

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0299 = phi i64 [ 0, %for.body.lr.ph ], [ %inc128, %cleanup ]
  %status.0298 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %progress.0297 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0299, metadata !1875, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %status.0298, metadata !1870, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %progress.0297, metadata !1871, metadata !DIExpression()), !dbg !1897
  %cmp36 = icmp eq i32 %status.0298, 0, !dbg !2001
  br i1 %cmp36, label %cleanup, label %if.end38, !dbg !2003

if.end38:                                         ; preds = %for.body
  %sub40 = sub nsw i64 %y.0299, %div39230, !dbg !2004
  %5 = load i64, ptr %columns41, align 8, !dbg !2005, !tbaa !1007
  %add = add i64 %5, %call1, !dbg !2006
  %call42 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call32, i64 noundef %div.neg, i64 noundef %sub40, i64 noundef %add, i64 noundef %call1, ptr noundef %exception) #9, !dbg !2007
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1880, metadata !DIExpression()), !dbg !2008
  %6 = load i64, ptr %columns43, align 8, !dbg !2009, !tbaa !1007
  %call44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call33, i64 noundef 0, i64 noundef %y.0299, i64 noundef %6, i64 noundef 1, ptr noundef %exception) #9, !dbg !2010
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1883, metadata !DIExpression()), !dbg !2008
  %cmp45 = icmp eq ptr %call42, null, !dbg !2011
  %cmp47 = icmp eq ptr %call44, null
  %or.cond148 = select i1 %cmp45, i1 true, i1 %cmp47, !dbg !2013
  br i1 %or.cond148, label %cleanup, label %if.end49, !dbg !2013

if.end49:                                         ; preds = %if.end38
  %call50 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call32) #7, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1876, metadata !DIExpression()), !dbg !2008
  %call51 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call33) #7, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %call51, metadata !1881, metadata !DIExpression()), !dbg !2008
  %7 = load ptr, ptr %retval.0.i251, align 8, !dbg !2016, !tbaa !1960
  call void @llvm.dbg.value(metadata ptr %7, metadata !1884, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, metadata !1882, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1883, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1880, metadata !DIExpression()), !dbg !2008
  %8 = load i64, ptr %columns41, align 8, !dbg !2017, !tbaa !1007
  %cmp55266 = icmp sgt i64 %8, 0, !dbg !2018
  br i1 %cmp55266, label %for.body56.lr.ph, label %for.end105, !dbg !2019

for.body56.lr.ph:                                 ; preds = %if.end49
  %cmp88.not = icmp eq ptr %call51, null
  %cmp93 = icmp eq ptr %call50, null
  br i1 %cmp59260, label %for.cond61.preheader.us.us.preheader, label %for.body56.lr.ph.split, !dbg !2020

for.cond61.preheader.us.us.preheader:             ; preds = %for.body56.lr.ph, %if.end101.us
  %q.0273.us = phi ptr [ %incdec.ptr102.us, %if.end101.us ], [ %call44, %for.body56.lr.ph ]
  %x.0270.us = phi i64 [ %inc104.us, %if.end101.us ], [ 0, %for.body56.lr.ph ]
  %p.0267.us = phi ptr [ %incdec.ptr.us, %if.end101.us ], [ %call42, %for.body56.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0273.us, metadata !1883, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %x.0270.us, metadata !1882, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %p.0267.us, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !2022
  %call57.us = call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef 2048) #7, !dbg !2023
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2022
  br label %for.cond61.preheader.us.us, !dbg !2020

if.then86.us:                                     ; preds = %for.cond58.for.end82_crit_edge.us
  %add.ptr87.us = getelementptr inbounds i16, ptr %call51, i64 %x.0270.us, !dbg !2024
  br i1 %cmp88.not, label %if.end101.us, label %if.then90.us, !dbg !2028

if.then90.us:                                     ; preds = %if.then86.us
  br i1 %cmp93, label %cond.end.us, label %cond.false.us, !dbg !2024

cond.false.us:                                    ; preds = %if.then90.us
  %add.ptr91.us = getelementptr inbounds i16, ptr %call50, i64 %x.0270.us, !dbg !2024
  %add.ptr92.us = getelementptr inbounds i16, ptr %add.ptr91.us, i64 %spec.select231.us.us, !dbg !2024
  %9 = load i16, ptr %add.ptr92.us, align 2, !dbg !2024, !tbaa !1165
  br label %cond.end.us, !dbg !2024

cond.end.us:                                      ; preds = %cond.false.us, %if.then90.us
  %cond.us = phi i16 [ %9, %cond.false.us ], [ 0, %if.then90.us ], !dbg !2024
  store i16 %cond.us, ptr %add.ptr87.us, align 2, !dbg !2024, !tbaa !1165
  br label %if.end101.us, !dbg !2024

if.end101.us:                                     ; preds = %cond.end.us, %if.then86.us, %for.cond58.for.end82_crit_edge.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0267.us, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !1880, metadata !DIExpression()), !dbg !2008
  %incdec.ptr102.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0273.us, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr102.us, metadata !1883, metadata !DIExpression()), !dbg !2008
  %inc104.us = add nuw nsw i64 %x.0270.us, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %inc104.us, metadata !1882, metadata !DIExpression()), !dbg !2008
  %10 = load i64, ptr %columns41, align 8, !dbg !2017, !tbaa !1007
  %cmp55.us = icmp slt i64 %inc104.us, %10, !dbg !2018
  br i1 %cmp55.us, label %for.cond61.preheader.us.us.preheader, label %for.end105, !dbg !2019, !llvm.loop !2032

for.cond58.for.end82_crit_edge.us:                ; preds = %for.cond61.for.end_crit_edge.us.us
  %add.ptr83.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0267.us, i64 %spec.select231.us.us, !dbg !2034
  %11 = load i64, ptr %add.ptr83.us, align 2, !dbg !2035
  store i64 %11, ptr %q.0273.us, align 2, !dbg !2035
  %12 = load i32, ptr %colorspace, align 4, !dbg !2036, !tbaa !1021
  %cmp84.us = icmp eq i32 %12, 12, !dbg !2037
  br i1 %cmp84.us, label %if.then86.us, label %if.end101.us, !dbg !2038

for.cond61.preheader.us.us:                       ; preds = %for.cond61.preheader.us.us.preheader, %for.cond61.for.end_crit_edge.us.us
  %v.0264.us.us = phi i64 [ %inc81.us.us, %for.cond61.for.end_crit_edge.us.us ], [ 0, %for.cond61.preheader.us.us.preheader ]
  %j.0263.us.us = phi i64 [ %spec.select231.us.us, %for.cond61.for.end_crit_edge.us.us ], [ 0, %for.cond61.preheader.us.us.preheader ]
  %count.0262.us.us = phi i64 [ %14, %for.cond61.for.end_crit_edge.us.us ], [ 0, %for.cond61.preheader.us.us.preheader ]
  %i.0261.us.us = phi i64 [ %add79.us.us, %for.cond61.for.end_crit_edge.us.us ], [ 0, %for.cond61.preheader.us.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %v.0264.us.us, metadata !1893, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %i.0261.us.us, metadata !1885, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %j.0263.us.us, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %count.0262.us.us, metadata !1890, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1889, metadata !DIExpression()), !dbg !2022
  %add.ptr.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0267.us, i64 %i.0261.us.us
  br label %for.body63.us.us, !dbg !2039

for.body63.us.us:                                 ; preds = %ClampToQuantum.exit.us.us, %for.cond61.preheader.us.us
  %j.1258.us.us = phi i64 [ %j.0263.us.us, %for.cond61.preheader.us.us ], [ %spec.select231.us.us, %ClampToQuantum.exit.us.us ]
  %count.1257.us.us = phi i64 [ %count.0262.us.us, %for.cond61.preheader.us.us ], [ %14, %ClampToQuantum.exit.us.us ]
  %u.0256.us.us = phi i64 [ 0, %for.cond61.preheader.us.us ], [ %inc76.us.us, %ClampToQuantum.exit.us.us ]
  call void @llvm.dbg.value(metadata i64 %j.1258.us.us, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %count.1257.us.us, metadata !1890, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %u.0256.us.us, metadata !1889, metadata !DIExpression()), !dbg !2022
  %add.ptr64.us.us = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr.us.us, i64 %u.0256.us.us, !dbg !2043
  %call65.us.us = call float @GetPixelIntensity(ptr noundef %call2, ptr noundef %add.ptr64.us.us) #9, !dbg !2046
  call void @llvm.dbg.value(metadata float %call65.us.us, metadata !1524, metadata !DIExpression()), !dbg !2047
  %cmp.i234.us.us = fcmp ugt float %call65.us.us, 0.000000e+00, !dbg !2049
  br i1 %cmp.i234.us.us, label %if.end.i235.us.us, label %ClampToQuantum.exit.us.us, !dbg !2050

if.end.i235.us.us:                                ; preds = %for.body63.us.us
  %cmp1.i.us.us = fcmp ult float %call65.us.us, 6.553500e+04, !dbg !2051
  br i1 %cmp1.i.us.us, label %if.end3.i.us.us, label %ClampToQuantum.exit.us.us, !dbg !2052

if.end3.i.us.us:                                  ; preds = %if.end.i235.us.us
  %add.i.us.us = fadd float %call65.us.us, 5.000000e-01, !dbg !2053
  %conv.i.us.us = fptoui float %add.i.us.us to i16, !dbg !2054
  br label %ClampToQuantum.exit.us.us, !dbg !2055

ClampToQuantum.exit.us.us:                        ; preds = %if.end3.i.us.us, %if.end.i235.us.us, %for.body63.us.us
  %retval.0.i236.us.us = phi i16 [ %conv.i.us.us, %if.end3.i.us.us ], [ 0, %for.body63.us.us ], [ -1, %if.end.i235.us.us ], !dbg !2047
  call void @llvm.dbg.value(metadata i16 %retval.0.i236.us.us, metadata !2056, metadata !DIExpression()), !dbg !2062
  %conv.i237.us.us = zext i16 %retval.0.i236.us.us to i64, !dbg !2064
  %add.i238.us.us = add nuw nsw i64 %conv.i237.us.us, 128, !dbg !2065
  %shr.i.us.us = lshr i64 %add.i238.us.us, 8, !dbg !2066
  %sub.i.us.us = sub nsw i64 %add.i238.us.us, %shr.i.us.us, !dbg !2067
  %shr3.i.us.us = lshr i64 %sub.i.us.us, 8, !dbg !2068
  %conv.us.us = and i64 %shr3.i.us.us, 255, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %conv.us.us, metadata !1892, metadata !DIExpression()), !dbg !2022
  %arrayidx68.us.us = getelementptr inbounds i64, ptr %7, i64 %conv.us.us, !dbg !2070
  %13 = load i64, ptr %arrayidx68.us.us, align 8, !dbg !2071, !tbaa !2072
  %inc.us.us = add i64 %13, 1, !dbg !2071
  store i64 %inc.us.us, ptr %arrayidx68.us.us, align 8, !dbg !2071, !tbaa !2072
  %cmp70.us.us = icmp ugt i64 %inc.us.us, %count.1257.us.us, !dbg !2073
  %add73.us.us = add nsw i64 %u.0256.us.us, %i.0261.us.us
  %14 = call i64 @llvm.umax.i64(i64 %inc.us.us, i64 %count.1257.us.us), !dbg !2075
  %spec.select231.us.us = select i1 %cmp70.us.us, i64 %add73.us.us, i64 %j.1258.us.us, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %spec.select231.us.us, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %14, metadata !1890, metadata !DIExpression()), !dbg !2022
  %inc76.us.us = add nuw nsw i64 %u.0256.us.us, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %inc76.us.us, metadata !1889, metadata !DIExpression()), !dbg !2022
  %exitcond.not = icmp eq i64 %inc76.us.us, %call1, !dbg !2077
  br i1 %exitcond.not, label %for.cond61.for.end_crit_edge.us.us, label %for.body63.us.us, !dbg !2039, !llvm.loop !2078

for.cond61.for.end_crit_edge.us.us:               ; preds = %ClampToQuantum.exit.us.us
  %15 = load i64, ptr %columns41, align 8, !dbg !2080, !tbaa !1007
  %add78.us.us = add i64 %i.0261.us.us, %call1, !dbg !2081
  %add79.us.us = add i64 %add78.us.us, %15, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %add79.us.us, metadata !1885, metadata !DIExpression()), !dbg !2022
  %inc81.us.us = add nuw nsw i64 %v.0264.us.us, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %inc81.us.us, metadata !1893, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 undef, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 undef, metadata !1890, metadata !DIExpression()), !dbg !2022
  %exitcond303.not = icmp eq i64 %inc81.us.us, %call1, !dbg !2084
  br i1 %exitcond303.not, label %for.cond58.for.end82_crit_edge.us, label %for.cond61.preheader.us.us, !dbg !2020, !llvm.loop !2085

for.body56.lr.ph.split:                           ; preds = %for.body56.lr.ph
  br i1 %cmp88.not, label %for.body56.us283, label %for.body56, !dbg !2028

for.body56.us283:                                 ; preds = %for.body56.lr.ph.split, %for.body56.us283
  %q.0273.us284 = phi ptr [ %incdec.ptr102.us293, %for.body56.us283 ], [ %call44, %for.body56.lr.ph.split ]
  %x.0270.us285 = phi i64 [ %inc104.us294, %for.body56.us283 ], [ 0, %for.body56.lr.ph.split ]
  %p.0267.us286 = phi ptr [ %incdec.ptr.us292, %for.body56.us283 ], [ %call42, %for.body56.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q.0273.us284, metadata !1883, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %x.0270.us285, metadata !1882, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %p.0267.us286, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !2022
  %call57.us287 = call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef 2048) #7, !dbg !2023
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2022
  %16 = load i64, ptr %p.0267.us286, align 2, !dbg !2035
  store i64 %16, ptr %q.0273.us284, align 2, !dbg !2035
  %incdec.ptr.us292 = getelementptr inbounds %struct._PixelPacket, ptr %p.0267.us286, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us292, metadata !1880, metadata !DIExpression()), !dbg !2008
  %incdec.ptr102.us293 = getelementptr inbounds %struct._PixelPacket, ptr %q.0273.us284, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr102.us293, metadata !1883, metadata !DIExpression()), !dbg !2008
  %inc104.us294 = add nuw nsw i64 %x.0270.us285, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %inc104.us294, metadata !1882, metadata !DIExpression()), !dbg !2008
  %17 = load i64, ptr %columns41, align 8, !dbg !2017, !tbaa !1007
  %cmp55.us295 = icmp slt i64 %inc104.us294, %17, !dbg !2018
  br i1 %cmp55.us295, label %for.body56.us283, label %for.end105, !dbg !2019, !llvm.loop !2032

for.body56:                                       ; preds = %for.body56.lr.ph.split, %if.end101
  %q.0273 = phi ptr [ %incdec.ptr102, %if.end101 ], [ %call44, %for.body56.lr.ph.split ]
  %x.0270 = phi i64 [ %inc104, %if.end101 ], [ 0, %for.body56.lr.ph.split ]
  %p.0267 = phi ptr [ %incdec.ptr, %if.end101 ], [ %call42, %for.body56.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %q.0273, metadata !1883, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %x.0270, metadata !1882, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %p.0267, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1891, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !2022
  %call57 = call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef 2048) #7, !dbg !2023
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2022
  %18 = load i64, ptr %p.0267, align 2, !dbg !2035
  store i64 %18, ptr %q.0273, align 2, !dbg !2035
  %19 = load i32, ptr %colorspace, align 4, !dbg !2036, !tbaa !1021
  %cmp84 = icmp eq i32 %19, 12, !dbg !2037
  br i1 %cmp84, label %if.then86, label %if.end101, !dbg !2038

if.then86:                                        ; preds = %for.body56
  %add.ptr87 = getelementptr inbounds i16, ptr %call51, i64 %x.0270, !dbg !2024
  br i1 %cmp93, label %cond.end, label %cond.false, !dbg !2024

cond.false:                                       ; preds = %if.then86
  %add.ptr91 = getelementptr inbounds i16, ptr %call50, i64 %x.0270, !dbg !2024
  %20 = load i16, ptr %add.ptr91, align 2, !dbg !2024, !tbaa !1165
  br label %cond.end, !dbg !2024

cond.end:                                         ; preds = %if.then86, %cond.false
  %cond = phi i16 [ %20, %cond.false ], [ 0, %if.then86 ], !dbg !2024
  store i16 %cond, ptr %add.ptr87, align 2, !dbg !2024, !tbaa !1165
  br label %if.end101, !dbg !2024

if.end101:                                        ; preds = %cond.end, %for.body56
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0267, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1880, metadata !DIExpression()), !dbg !2008
  %incdec.ptr102 = getelementptr inbounds %struct._PixelPacket, ptr %q.0273, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr102, metadata !1883, metadata !DIExpression()), !dbg !2008
  %inc104 = add nuw nsw i64 %x.0270, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %inc104, metadata !1882, metadata !DIExpression()), !dbg !2008
  %21 = load i64, ptr %columns41, align 8, !dbg !2017, !tbaa !1007
  %cmp55 = icmp slt i64 %inc104, %21, !dbg !2018
  br i1 %cmp55, label %for.body56, label %for.end105, !dbg !2019, !llvm.loop !2032

for.end105:                                       ; preds = %if.end101, %for.body56.us283, %if.end101.us, %if.end49
  %call106 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call33, ptr noundef %exception) #9, !dbg !2087
  %cmp107 = icmp ne i32 %call106, 0, !dbg !2089
  %spec.select232 = zext i1 %cmp107 to i32, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %spec.select232, metadata !1870, metadata !DIExpression()), !dbg !1897
  %22 = load ptr, ptr %progress_monitor, align 8, !dbg !2091, !tbaa !2092
  %cmp111.not = icmp eq ptr %22, null, !dbg !2093
  br i1 %cmp111.not, label %cleanup, label %SetImageProgress.exit, !dbg !2094

SetImageProgress.exit:                            ; preds = %for.end105
  %inc114 = add nsw i64 %progress.0297, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %inc114, metadata !1871, metadata !DIExpression()), !dbg !1897
  %23 = load i64, ptr %rows, align 8, !dbg !2096, !tbaa !1012
  call void @llvm.dbg.value(metadata ptr %image, metadata !2097, metadata !DIExpression()) #7, !dbg !2107
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !2103, metadata !DIExpression()) #7, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %progress.0297, metadata !2104, metadata !DIExpression()) #7, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %23, metadata !2105, metadata !DIExpression()) #7, !dbg !2107
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2106, metadata !DIExpression()) #7, !dbg !2110
  %call.i240 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename.i) #7, !dbg !2111
  %24 = load ptr, ptr %progress_monitor, align 8, !dbg !2112, !tbaa !2092
  %25 = load ptr, ptr %client_data.i, align 8, !dbg !2113, !tbaa !2114
  %call4.i241 = call i32 %24(ptr noundef nonnull %message.i, i64 noundef %progress.0297, i64 noundef %23, ptr noundef %25) #7, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %call4.i241, metadata !1894, metadata !DIExpression()), !dbg !2117
  %cmp117 = icmp eq i32 %call4.i241, 0, !dbg !2118
  %spec.select233 = select i1 %cmp117, i32 0, i32 %spec.select232, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %spec.select233, metadata !1870, metadata !DIExpression()), !dbg !1897
  br label %cleanup, !dbg !2121

cleanup:                                          ; preds = %for.end105, %SetImageProgress.exit, %if.end38, %for.body
  %progress.2 = phi i64 [ %progress.0297, %for.body ], [ %progress.0297, %if.end38 ], [ %inc114, %SetImageProgress.exit ], [ %progress.0297, %for.end105 ], !dbg !1897
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end38 ], [ %spec.select233, %SetImageProgress.exit ], [ %spec.select232, %for.end105 ], !dbg !1897
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1870, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1871, metadata !DIExpression()), !dbg !1897
  %inc128 = add nuw nsw i64 %y.0299, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %inc128, metadata !1875, metadata !DIExpression()), !dbg !1897
  %26 = load i64, ptr %rows34, align 8, !dbg !1998, !tbaa !1012
  %cmp35 = icmp slt i64 %inc128, %26, !dbg !1999
  br i1 %cmp35, label %for.body, label %for.end129, !dbg !2000, !llvm.loop !2123

for.end129:                                       ; preds = %cleanup, %if.end31
  %status.0.lcssa = phi i32 [ 1, %if.end31 ], [ %status.4, %cleanup ], !dbg !2125
  %call130 = call ptr @DestroyCacheView(ptr noundef %call33) #7, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %call130, metadata !1867, metadata !DIExpression()), !dbg !1897
  %call131 = call ptr @DestroyCacheView(ptr noundef %call32) #7, !dbg !2127
  call void @llvm.dbg.value(metadata ptr %call131, metadata !1866, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !1964, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()) #7, !dbg !2128
  %call14.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #7, !dbg !2130
  %cmp15.i = icmp sgt i64 %call14.i, 0, !dbg !2131
  br i1 %cmp15.i, label %for.body.i245, label %DestroyHistogramThreadSet.exit, !dbg !2132

for.body.i245:                                    ; preds = %for.end129, %for.inc.i
  %i.016.i = phi i64 [ %inc.i246, %for.inc.i ], [ 0, %for.end129 ]
  call void @llvm.dbg.value(metadata i64 %i.016.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2128
  %arrayidx.i244 = getelementptr inbounds ptr, ptr %retval.0.i251, i64 %i.016.i, !dbg !2133
  %27 = load ptr, ptr %arrayidx.i244, align 8, !dbg !2133, !tbaa !1960
  %cmp1.not.i = icmp eq ptr %27, null, !dbg !2134
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !2135

if.then.i:                                        ; preds = %for.body.i245
  %call3.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %27) #7, !dbg !2136
  store ptr %call3.i, ptr %arrayidx.i244, align 8, !dbg !2137, !tbaa !1960
  br label %for.inc.i, !dbg !2138

for.inc.i:                                        ; preds = %if.then.i, %for.body.i245
  %inc.i246 = add nuw nsw i64 %i.016.i, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %inc.i246, metadata !1969, metadata !DIExpression()) #7, !dbg !2128
  %call.i247 = call i64 @GetMagickResourceLimit(i32 noundef 6) #7, !dbg !2130
  %cmp.i248 = icmp slt i64 %inc.i246, %call.i247, !dbg !2131
  br i1 %cmp.i248, label %for.body.i245, label %DestroyHistogramThreadSet.exit, !dbg !2132, !llvm.loop !2140

DestroyHistogramThreadSet.exit:                   ; preds = %for.inc.i, %for.end129
  %call5.i = call ptr @RelinquishMagickMemory(ptr noundef %retval.0.i251) #7, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !1964, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata ptr undef, metadata !1872, metadata !DIExpression()), !dbg !1897
  %call133 = call ptr @DestroyImage(ptr noundef %call2) #7, !dbg !2143
  call void @llvm.dbg.value(metadata ptr %call133, metadata !1868, metadata !DIExpression()), !dbg !1897
  %cmp134 = icmp eq i32 %status.0.lcssa, 0, !dbg !2144
  br i1 %cmp134, label %if.then136, label %cleanup139, !dbg !2146

if.then136:                                       ; preds = %DestroyHistogramThreadSet.exit
  %call137 = call ptr @DestroyImage(ptr noundef %call3) #7, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %call137, metadata !1869, metadata !DIExpression()), !dbg !1897
  br label %cleanup139, !dbg !2148

cleanup139:                                       ; preds = %DestroyHistogramThreadSet.exit, %if.then136, %if.end10, %if.then12, %if.then25, %if.then18
  %retval.0 = phi ptr [ null, %if.then18 ], [ null, %if.then25 ], [ null, %if.then12 ], [ null, %if.end10 ], [ %call137, %if.then136 ], [ %call3, %DestroyHistogramThreadSet.exit ], !dbg !1897
  ret ptr %retval.0, !dbg !2149
}

declare !dbg !2150 i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !2154 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2159 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !2160 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @OpaquePaintImage(ptr noundef %image, ptr noundef %target, ptr nocapture noundef readonly %fill, i32 noundef %invert) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %target, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %fill, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i32 %invert, metadata !2170, metadata !DIExpression()), !dbg !2171
  %call = tail call i32 @OpaquePaintImageChannel(ptr noundef %image, i32 noundef 47, ptr noundef %target, ptr noundef %fill, i32 noundef %invert), !dbg !2172
  ret i32 %call, !dbg !2173
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OpaquePaintImageChannel(ptr noundef %image, i32 noundef %channel, ptr noundef %target, ptr nocapture noundef readonly %fill, i32 noundef %invert) local_unnamed_addr #0 !dbg !2174 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2178, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2179, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata ptr %target, metadata !2180, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata ptr %fill, metadata !2181, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %invert, metadata !2182, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #7, !dbg !2200
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !2187, metadata !DIExpression()), !dbg !2201
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2202
  %0 = load i32, ptr %debug, align 8, !dbg !2202, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !2204
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2205

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2206
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2207
  br label %if.end, !dbg !2208

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #7, !dbg !2209
  %cmp2 = icmp eq i32 %call1, 0, !dbg !2211
  br i1 %cmp2, label %cleanup94, label %if.end4, !dbg !2212

if.end4:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2213
  %1 = load i32, ptr %colorspace, align 4, !dbg !2213, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %1, metadata !1022, metadata !DIExpression()), !dbg !2215
  switch i32 %1, label %if.end11 [
    i32 19, label %land.lhs.true
    i32 17, label %land.lhs.true
    i32 2, label %land.lhs.true
  ], !dbg !2217

land.lhs.true:                                    ; preds = %if.end4, %if.end4, %if.end4
  call void @llvm.dbg.value(metadata ptr %fill, metadata !2218, metadata !DIExpression()) #7, !dbg !2224
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 1, !dbg !2226
  %2 = load i32, ptr %colorspace.i, align 4, !dbg !2226, !tbaa !1455
  %.off.i = add i32 %2, -1, !dbg !2228
  %switch.i = icmp ult i32 %.off.i, 2, !dbg !2228
  br i1 %switch.i, label %if.end.i148, label %if.then9, !dbg !2228

if.end.i148:                                      ; preds = %land.lhs.true
  %red.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 5, !dbg !2229
  %3 = load float, ptr %red.i, align 8, !dbg !2229, !tbaa !1144
  %green.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 6, !dbg !2231
  %4 = load float, ptr %green.i, align 4, !dbg !2231, !tbaa !1150
  %sub.i = fsub float %3, %4, !dbg !2232
  %5 = tail call float @llvm.fabs.f32(float %sub.i) #7, !dbg !2233
  %6 = fpext float %5 to double, !dbg !2233
  %cmp3.i = fcmp olt double %6, 1.000000e-15, !dbg !2234
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.then9, !dbg !2235

land.lhs.true5.i:                                 ; preds = %if.end.i148
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 7, !dbg !2236
  %7 = load float, ptr %blue.i, align 8, !dbg !2236, !tbaa !1155
  %sub7.i = fsub float %4, %7, !dbg !2237
  %8 = tail call float @llvm.fabs.f32(float %sub7.i) #7, !dbg !2238
  %9 = fpext float %8 to double, !dbg !2238
  %cmp9.i = fcmp olt double %9, 1.000000e-15, !dbg !2239
  br i1 %cmp9.i, label %if.end11, label %if.then9, !dbg !2240

if.then9:                                         ; preds = %if.end.i148, %land.lhs.true5.i, %land.lhs.true
  %call10 = tail call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #7, !dbg !2241
  br label %if.end11, !dbg !2242

if.end11:                                         ; preds = %if.end4, %land.lhs.true5.i, %if.then9
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 8, !dbg !2243
  %10 = load float, ptr %opacity, align 4, !dbg !2243, !tbaa !1159
  %cmp12 = fcmp une float %10, 0.000000e+00, !dbg !2245
  br i1 %cmp12, label %land.lhs.true13, label %if.end17, !dbg !2246

land.lhs.true13:                                  ; preds = %if.end11
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2247
  %11 = load i32, ptr %matte, align 8, !dbg !2247, !tbaa !1037
  %cmp14 = icmp eq i32 %11, 0, !dbg !2248
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2249

if.then15:                                        ; preds = %land.lhs.true13
  %call16 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #7, !dbg !2250
  br label %if.end17, !dbg !2251

if.end17:                                         ; preds = %if.then15, %land.lhs.true13, %if.end11
  call void @llvm.dbg.value(metadata i32 1, metadata !2185, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 0, metadata !2186, metadata !DIExpression()), !dbg !2199
  %exception18 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %exception18, metadata !2184, metadata !DIExpression()), !dbg !2199
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %zero) #7, !dbg !2253
  %call19 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception18) #7, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2183, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 0, metadata !2188, metadata !DIExpression()), !dbg !2199
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2188, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 0, metadata !2186, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 1, metadata !2185, metadata !DIExpression()), !dbg !2199
  %12 = load i64, ptr %rows, align 8, !dbg !2255, !tbaa !1012
  %cmp20202 = icmp sgt i64 %12, 0, !dbg !2256
  br i1 %cmp20202, label %for.body.lr.ph, label %for.end92, !dbg !2257

for.body.lr.ph:                                   ; preds = %if.end17
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %13 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %and = and i32 %channel, 1
  %cmp36.not = icmp eq i32 %and, 0
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 5
  %and41 = and i32 %channel, 2
  %cmp42.not = icmp eq i32 %and41, 0
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 6
  %and47 = and i32 %channel, 4
  %cmp48.not = icmp eq i32 %and47, 0
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 7
  %and53 = and i32 %channel, 8
  %cmp54.not = icmp eq i32 %and53, 0
  %and60 = and i32 %channel, 32
  %cmp61.not = icmp eq i32 %and60, 0
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %fill, i64 0, i32 9
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2257

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0205 = phi i64 [ 0, %for.body.lr.ph ], [ %inc91, %cleanup ]
  %progress.0204 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.0203 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0205, metadata !2188, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %progress.0204, metadata !2186, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %status.0203, metadata !2185, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2189, metadata !DIExpression()), !dbg !2259
  %cmp21 = icmp eq i32 %status.0203, 0, !dbg !2260
  br i1 %cmp21, label %cleanup, label %if.end23, !dbg !2262

if.end23:                                         ; preds = %for.body
  %14 = load i64, ptr %columns, align 8, !dbg !2263, !tbaa !1007
  %call24 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call19, i64 noundef 0, i64 noundef %y.0205, i64 noundef %14, i64 noundef 1, ptr noundef nonnull %exception18) #9, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2195, metadata !DIExpression()), !dbg !2265
  %cmp25 = icmp eq ptr %call24, null, !dbg !2266
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !2268

if.end27:                                         ; preds = %if.end23
  %call28 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call19) #7, !dbg !2269
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2193, metadata !DIExpression()), !dbg !2265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !2270, !tbaa.struct !2271
  call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2195, metadata !DIExpression()), !dbg !2265
  %15 = load i64, ptr %columns, align 8, !dbg !2275, !tbaa !1007
  %cmp31197 = icmp sgt i64 %15, 0, !dbg !2278
  br i1 %cmp31197, label %for.body32.lr.ph, label %for.end, !dbg !2279

for.body32.lr.ph:                                 ; preds = %if.end27
  %cmp9.i152 = icmp ne ptr %call28, null
  %cmp67.not = icmp eq ptr %call28, null
  br label %for.body32, !dbg !2279

for.body32:                                       ; preds = %for.body32.lr.ph, %if.end73
  %q.0199 = phi ptr [ %call24, %for.body32.lr.ph ], [ %incdec.ptr, %if.end73 ]
  %x.0198 = phi i64 [ 0, %for.body32.lr.ph ], [ %inc, %if.end73 ]
  call void @llvm.dbg.value(metadata ptr %q.0199, metadata !2195, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %x.0198, metadata !2194, metadata !DIExpression()), !dbg !2265
  %add.ptr = getelementptr inbounds i16, ptr %call28, i64 %x.0198, !dbg !2280
  %image.val = load i32, ptr %13, align 4, !dbg !2282, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata ptr %q.0199, metadata !1135, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1136, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !2283
  %red.i150 = getelementptr inbounds %struct._PixelPacket, ptr %q.0199, i64 0, i32 2, !dbg !2285
  %16 = load i16, ptr %red.i150, align 2, !dbg !2285, !tbaa !1141
  %conv.i = uitofp i16 %16 to float, !dbg !2286
  store float %conv.i, ptr %red1.i, align 8, !dbg !2287, !tbaa !1144
  %green.i151 = getelementptr inbounds %struct._PixelPacket, ptr %q.0199, i64 0, i32 1, !dbg !2288
  %17 = load i16, ptr %green.i151, align 2, !dbg !2288, !tbaa !1147
  %conv2.i = uitofp i16 %17 to float, !dbg !2289
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2290, !tbaa !1150
  %18 = load i16, ptr %q.0199, align 2, !dbg !2291, !tbaa !1152
  %conv4.i = uitofp i16 %18 to float, !dbg !2292
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2293, !tbaa !1155
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0199, i64 0, i32 3, !dbg !2294
  %19 = load i16, ptr %opacity.i, align 2, !dbg !2294, !tbaa !1122
  %conv6.i = uitofp i16 %19 to float, !dbg !2295
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2296, !tbaa !1159
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !2297
  %or.cond.i = and i1 %cmp9.i152, %cmp.i, !dbg !2298
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !2298

cond.end.i:                                       ; preds = %for.body32
  %20 = load i16, ptr %add.ptr, align 2, !dbg !2299, !tbaa !1165
  %conv14.i = uitofp i16 %20 to float, !dbg !2300
  store float %conv14.i, ptr %index15.i, align 8, !dbg !2301, !tbaa !1168
  br label %SetMagickPixelPacket.exit, !dbg !2302

SetMagickPixelPacket.exit:                        ; preds = %for.body32, %cond.end.i
  %call33 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !2303
  %cmp34.not = icmp eq i32 %call33, %invert, !dbg !2305
  br i1 %cmp34.not, label %if.end73, label %if.then35, !dbg !2306

if.then35:                                        ; preds = %SetMagickPixelPacket.exit
  br i1 %cmp36.not, label %if.end40, label %if.then37, !dbg !2307

if.then37:                                        ; preds = %if.then35
  %21 = load float, ptr %red, align 8, !dbg !2309, !tbaa !1144
  call void @llvm.dbg.value(metadata float %21, metadata !1524, metadata !DIExpression()), !dbg !2311
  %cmp.i154 = fcmp ugt float %21, 0.000000e+00, !dbg !2313
  br i1 %cmp.i154, label %if.end.i155, label %ClampToQuantum.exit, !dbg !2314

if.end.i155:                                      ; preds = %if.then37
  %cmp1.i = fcmp ult float %21, 6.553500e+04, !dbg !2315
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2316

if.end3.i:                                        ; preds = %if.end.i155
  %add.i = fadd float %21, 5.000000e-01, !dbg !2317
  %conv.i156 = fptoui float %add.i to i16, !dbg !2318
  br label %ClampToQuantum.exit, !dbg !2319

ClampToQuantum.exit:                              ; preds = %if.then37, %if.end.i155, %if.end3.i
  %retval.0.i157 = phi i16 [ %conv.i156, %if.end3.i ], [ 0, %if.then37 ], [ -1, %if.end.i155 ], !dbg !2311
  store i16 %retval.0.i157, ptr %red.i150, align 2, !dbg !2309, !tbaa !1141
  br label %if.end40, !dbg !2309

if.end40:                                         ; preds = %ClampToQuantum.exit, %if.then35
  br i1 %cmp42.not, label %if.end46, label %if.then43, !dbg !2320

if.then43:                                        ; preds = %if.end40
  %22 = load float, ptr %green, align 4, !dbg !2321, !tbaa !1150
  call void @llvm.dbg.value(metadata float %22, metadata !1524, metadata !DIExpression()), !dbg !2323
  %cmp.i158 = fcmp ugt float %22, 0.000000e+00, !dbg !2325
  br i1 %cmp.i158, label %if.end.i160, label %ClampToQuantum.exit165, !dbg !2326

if.end.i160:                                      ; preds = %if.then43
  %cmp1.i159 = fcmp ult float %22, 6.553500e+04, !dbg !2327
  br i1 %cmp1.i159, label %if.end3.i163, label %ClampToQuantum.exit165, !dbg !2328

if.end3.i163:                                     ; preds = %if.end.i160
  %add.i161 = fadd float %22, 5.000000e-01, !dbg !2329
  %conv.i162 = fptoui float %add.i161 to i16, !dbg !2330
  br label %ClampToQuantum.exit165, !dbg !2331

ClampToQuantum.exit165:                           ; preds = %if.then43, %if.end.i160, %if.end3.i163
  %retval.0.i164 = phi i16 [ %conv.i162, %if.end3.i163 ], [ 0, %if.then43 ], [ -1, %if.end.i160 ], !dbg !2323
  store i16 %retval.0.i164, ptr %green.i151, align 2, !dbg !2321, !tbaa !1147
  br label %if.end46, !dbg !2321

if.end46:                                         ; preds = %ClampToQuantum.exit165, %if.end40
  br i1 %cmp48.not, label %if.end52, label %if.then49, !dbg !2332

if.then49:                                        ; preds = %if.end46
  %23 = load float, ptr %blue, align 8, !dbg !2333, !tbaa !1155
  call void @llvm.dbg.value(metadata float %23, metadata !1524, metadata !DIExpression()), !dbg !2335
  %cmp.i166 = fcmp ugt float %23, 0.000000e+00, !dbg !2337
  br i1 %cmp.i166, label %if.end.i168, label %ClampToQuantum.exit173, !dbg !2338

if.end.i168:                                      ; preds = %if.then49
  %cmp1.i167 = fcmp ult float %23, 6.553500e+04, !dbg !2339
  br i1 %cmp1.i167, label %if.end3.i171, label %ClampToQuantum.exit173, !dbg !2340

if.end3.i171:                                     ; preds = %if.end.i168
  %add.i169 = fadd float %23, 5.000000e-01, !dbg !2341
  %conv.i170 = fptoui float %add.i169 to i16, !dbg !2342
  br label %ClampToQuantum.exit173, !dbg !2343

ClampToQuantum.exit173:                           ; preds = %if.then49, %if.end.i168, %if.end3.i171
  %retval.0.i172 = phi i16 [ %conv.i170, %if.end3.i171 ], [ 0, %if.then49 ], [ -1, %if.end.i168 ], !dbg !2335
  store i16 %retval.0.i172, ptr %q.0199, align 2, !dbg !2333, !tbaa !1152
  br label %if.end52, !dbg !2333

if.end52:                                         ; preds = %ClampToQuantum.exit173, %if.end46
  br i1 %cmp54.not, label %if.end59, label %if.then55, !dbg !2344

if.then55:                                        ; preds = %if.end52
  %24 = load float, ptr %opacity, align 4, !dbg !2345, !tbaa !1159
  call void @llvm.dbg.value(metadata float %24, metadata !1524, metadata !DIExpression()), !dbg !2347
  %cmp.i174 = fcmp ugt float %24, 0.000000e+00, !dbg !2349
  br i1 %cmp.i174, label %if.end.i176, label %ClampToQuantum.exit181, !dbg !2350

if.end.i176:                                      ; preds = %if.then55
  %cmp1.i175 = fcmp ult float %24, 6.553500e+04, !dbg !2351
  br i1 %cmp1.i175, label %if.end3.i179, label %ClampToQuantum.exit181, !dbg !2352

if.end3.i179:                                     ; preds = %if.end.i176
  %add.i177 = fadd float %24, 5.000000e-01, !dbg !2353
  %conv.i178 = fptoui float %add.i177 to i16, !dbg !2354
  br label %ClampToQuantum.exit181, !dbg !2355

ClampToQuantum.exit181:                           ; preds = %if.then55, %if.end.i176, %if.end3.i179
  %retval.0.i180 = phi i16 [ %conv.i178, %if.end3.i179 ], [ 0, %if.then55 ], [ -1, %if.end.i176 ], !dbg !2347
  store i16 %retval.0.i180, ptr %opacity.i, align 2, !dbg !2345, !tbaa !1122
  br label %if.end59, !dbg !2345

if.end59:                                         ; preds = %ClampToQuantum.exit181, %if.end52
  br i1 %cmp61.not, label %if.end73, label %land.lhs.true62, !dbg !2356

land.lhs.true62:                                  ; preds = %if.end59
  %25 = load i32, ptr %colorspace, align 4, !dbg !2358, !tbaa !1021
  %cmp64 = icmp ne i32 %25, 12, !dbg !2359
  %or.cond = select i1 %cmp64, i1 true, i1 %cmp67.not, !dbg !2360
  br i1 %or.cond, label %if.end73, label %if.then68, !dbg !2360

if.then68:                                        ; preds = %land.lhs.true62
  %26 = load float, ptr %index, align 8, !dbg !2361, !tbaa !1168
  call void @llvm.dbg.value(metadata float %26, metadata !1524, metadata !DIExpression()), !dbg !2364
  %cmp.i182 = fcmp ugt float %26, 0.000000e+00, !dbg !2366
  br i1 %cmp.i182, label %if.end.i184, label %ClampToQuantum.exit189, !dbg !2367

if.end.i184:                                      ; preds = %if.then68
  %cmp1.i183 = fcmp ult float %26, 6.553500e+04, !dbg !2368
  br i1 %cmp1.i183, label %if.end3.i187, label %ClampToQuantum.exit189, !dbg !2369

if.end3.i187:                                     ; preds = %if.end.i184
  %add.i185 = fadd float %26, 5.000000e-01, !dbg !2370
  %conv.i186 = fptoui float %add.i185 to i16, !dbg !2371
  br label %ClampToQuantum.exit189, !dbg !2372

ClampToQuantum.exit189:                           ; preds = %if.then68, %if.end.i184, %if.end3.i187
  %retval.0.i188 = phi i16 [ %conv.i186, %if.end3.i187 ], [ 0, %if.then68 ], [ -1, %if.end.i184 ], !dbg !2364
  store i16 %retval.0.i188, ptr %add.ptr, align 2, !dbg !2361, !tbaa !1165
  br label %if.end73, !dbg !2361

if.end73:                                         ; preds = %if.end59, %land.lhs.true62, %ClampToQuantum.exit189, %SetMagickPixelPacket.exit
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0199, i64 1, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2195, metadata !DIExpression()), !dbg !2265
  %inc = add nuw nsw i64 %x.0198, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2194, metadata !DIExpression()), !dbg !2265
  %27 = load i64, ptr %columns, align 8, !dbg !2275, !tbaa !1007
  %cmp31 = icmp slt i64 %inc, %27, !dbg !2278
  br i1 %cmp31, label %for.body32, label %for.end, !dbg !2279, !llvm.loop !2375

for.end:                                          ; preds = %if.end73, %if.end27
  %call74 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call19, ptr noundef nonnull %exception18) #9, !dbg !2377
  %cmp75 = icmp ne i32 %call74, 0, !dbg !2379
  %spec.select = zext i1 %cmp75 to i32, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2185, metadata !DIExpression()), !dbg !2199
  %28 = load ptr, ptr %progress_monitor, align 8, !dbg !2381, !tbaa !2092
  %cmp78.not = icmp eq ptr %28, null, !dbg !2382
  br i1 %cmp78.not, label %cleanup, label %SetImageProgress.exit, !dbg !2383

SetImageProgress.exit:                            ; preds = %for.end
  %inc80 = add nsw i64 %progress.0204, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %inc80, metadata !2186, metadata !DIExpression()), !dbg !2199
  %29 = load i64, ptr %rows, align 8, !dbg !2385, !tbaa !1012
  call void @llvm.dbg.value(metadata ptr %image, metadata !2097, metadata !DIExpression()) #7, !dbg !2386
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2103, metadata !DIExpression()) #7, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %progress.0204, metadata !2104, metadata !DIExpression()) #7, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %29, metadata !2105, metadata !DIExpression()) #7, !dbg !2386
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2106, metadata !DIExpression()) #7, !dbg !2389
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #7, !dbg !2390
  %30 = load ptr, ptr %progress_monitor, align 8, !dbg !2391, !tbaa !2092
  %31 = load ptr, ptr %client_data.i, align 8, !dbg !2392, !tbaa !2114
  %call4.i = call i32 %30(ptr noundef nonnull %message.i, i64 noundef %progress.0204, i64 noundef %29, ptr noundef %31) #7, !dbg !2393
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2196, metadata !DIExpression()), !dbg !2395
  %cmp83 = icmp eq i32 %call4.i, 0, !dbg !2396
  %spec.select147 = select i1 %cmp83, i32 0, i32 %spec.select, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %spec.select147, metadata !2185, metadata !DIExpression()), !dbg !2199
  br label %cleanup, !dbg !2399

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end23, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end23 ], [ %spec.select147, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !2199
  %progress.2 = phi i64 [ %progress.0204, %for.body ], [ %progress.0204, %if.end23 ], [ %inc80, %SetImageProgress.exit ], [ %progress.0204, %for.end ], !dbg !2199
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2186, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2185, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2400
  %inc91 = add nuw nsw i64 %y.0205, 1, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %inc91, metadata !2188, metadata !DIExpression()), !dbg !2199
  %32 = load i64, ptr %rows, align 8, !dbg !2255, !tbaa !1012
  %cmp20 = icmp slt i64 %inc91, %32, !dbg !2256
  br i1 %cmp20, label %for.body, label %for.end92, !dbg !2257, !llvm.loop !2402

for.end92:                                        ; preds = %cleanup, %if.end17
  %status.0.lcssa = phi i32 [ 1, %if.end17 ], [ %status.4, %cleanup ], !dbg !2404
  %call93 = call ptr @DestroyCacheView(ptr noundef %call19) #7, !dbg !2405
  call void @llvm.dbg.value(metadata ptr %call93, metadata !2183, metadata !DIExpression()), !dbg !2199
  br label %cleanup94, !dbg !2406

cleanup94:                                        ; preds = %if.end, %for.end92
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end92 ], [ 0, %if.end ], !dbg !2199
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #7, !dbg !2407
  ret i32 %retval.0, !dbg !2407
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransparentPaintImage(ptr noundef %image, ptr noundef %target, i16 noundef zeroext %opacity, i32 noundef %invert) local_unnamed_addr #0 !dbg !2408 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2412, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %target, metadata !2413, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i16 %opacity, metadata !2414, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %invert, metadata !2415, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #7, !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !2420, metadata !DIExpression()), !dbg !2434
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2435
  %0 = load i32, ptr %debug, align 8, !dbg !2435, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !2437
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2438

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2439
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2440
  br label %if.end, !dbg !2441

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #7, !dbg !2442
  %cmp2 = icmp eq i32 %call1, 0, !dbg !2444
  br i1 %cmp2, label %cleanup49, label %if.end4, !dbg !2445

if.end4:                                          ; preds = %if.end
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2446
  %1 = load i32, ptr %matte, align 8, !dbg !2446, !tbaa !1037
  %cmp5 = icmp eq i32 %1, 0, !dbg !2448
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2449

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #7, !dbg !2450
  br label %if.end8, !dbg !2451

if.end8:                                          ; preds = %if.then6, %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !2418, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 0, metadata !2419, metadata !DIExpression()), !dbg !2432
  %exception9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %exception9, metadata !2417, metadata !DIExpression()), !dbg !2432
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %zero) #7, !dbg !2453
  %call10 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception9) #7, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2416, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 0, metadata !2421, metadata !DIExpression()), !dbg !2432
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2421, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 0, metadata !2419, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 1, metadata !2418, metadata !DIExpression()), !dbg !2432
  %2 = load i64, ptr %rows, align 8, !dbg !2455, !tbaa !1012
  %cmp1188 = icmp sgt i64 %2, 0, !dbg !2456
  br i1 %cmp1188, label %for.body.lr.ph, label %for.end47, !dbg !2457

for.body.lr.ph:                                   ; preds = %if.end8
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %3 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2457

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.091 = phi i64 [ 0, %for.body.lr.ph ], [ %inc46, %cleanup ]
  %progress.090 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.089 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.091, metadata !2421, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 %progress.090, metadata !2419, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %status.089, metadata !2418, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2422, metadata !DIExpression()), !dbg !2459
  %cmp12 = icmp eq i32 %status.089, 0, !dbg !2460
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !2462

if.end14:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !2463, !tbaa !1007
  %call15 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call10, i64 noundef 0, i64 noundef %y.091, i64 noundef %4, i64 noundef 1, ptr noundef nonnull %exception9) #9, !dbg !2464
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2428, metadata !DIExpression()), !dbg !2465
  %cmp16 = icmp eq ptr %call15, null, !dbg !2466
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !2468

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call10) #7, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2426, metadata !DIExpression()), !dbg !2465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !2470, !tbaa.struct !2271
  call void @llvm.dbg.value(metadata i64 0, metadata !2427, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2428, metadata !DIExpression()), !dbg !2465
  %5 = load i64, ptr %columns, align 8, !dbg !2471, !tbaa !1007
  %cmp2284 = icmp sgt i64 %5, 0, !dbg !2474
  br i1 %cmp2284, label %for.body23.lr.ph, label %for.end, !dbg !2475

for.body23.lr.ph:                                 ; preds = %if.end18
  %cmp9.i.not = icmp eq ptr %call19, null
  br i1 %cmp9.i.not, label %for.body23.us, label %for.body23

for.body23.us:                                    ; preds = %for.body23.lr.ph, %if.end28.us
  %q.087.us = phi ptr [ %incdec.ptr.us, %if.end28.us ], [ %call15, %for.body23.lr.ph ]
  %x.085.us = phi i64 [ %inc.us, %if.end28.us ], [ 0, %for.body23.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.087.us, metadata !2428, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %x.085.us, metadata !2427, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %q.087.us, metadata !1135, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call19, i64 %x.085.us), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !2476
  %red.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.087.us, i64 0, i32 2, !dbg !2479
  %6 = load i16, ptr %red.i.us, align 2, !dbg !2479, !tbaa !1141
  %conv.i.us = uitofp i16 %6 to float, !dbg !2480
  store float %conv.i.us, ptr %red1.i, align 8, !dbg !2481, !tbaa !1144
  %green.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.087.us, i64 0, i32 1, !dbg !2482
  %7 = load i16, ptr %green.i.us, align 2, !dbg !2482, !tbaa !1147
  %conv2.i.us = uitofp i16 %7 to float, !dbg !2483
  store float %conv2.i.us, ptr %green3.i, align 4, !dbg !2484, !tbaa !1150
  %8 = load i16, ptr %q.087.us, align 2, !dbg !2485, !tbaa !1152
  %conv4.i.us = uitofp i16 %8 to float, !dbg !2486
  store float %conv4.i.us, ptr %blue5.i, align 8, !dbg !2487, !tbaa !1155
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.087.us, i64 0, i32 3, !dbg !2488
  %9 = load i16, ptr %opacity.i.us, align 2, !dbg !2488, !tbaa !1122
  %conv6.i.us = uitofp i16 %9 to float, !dbg !2489
  store float %conv6.i.us, ptr %opacity7.i, align 4, !dbg !2490, !tbaa !1159
  %call24.us = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !2491
  %cmp25.not.us = icmp eq i32 %call24.us, %invert, !dbg !2493
  br i1 %cmp25.not.us, label %if.end28.us, label %if.then26.us, !dbg !2494

if.then26.us:                                     ; preds = %for.body23.us
  store i16 %opacity, ptr %opacity.i.us, align 2, !dbg !2495, !tbaa !1122
  br label %if.end28.us, !dbg !2496

if.end28.us:                                      ; preds = %if.then26.us, %for.body23.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.087.us, i64 1, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2428, metadata !DIExpression()), !dbg !2465
  %inc.us = add nuw nsw i64 %x.085.us, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2427, metadata !DIExpression()), !dbg !2465
  %10 = load i64, ptr %columns, align 8, !dbg !2471, !tbaa !1007
  %cmp22.us = icmp slt i64 %inc.us, %10, !dbg !2474
  br i1 %cmp22.us, label %for.body23.us, label %for.end, !dbg !2475, !llvm.loop !2499

for.body23:                                       ; preds = %for.body23.lr.ph, %if.end28
  %q.087 = phi ptr [ %incdec.ptr, %if.end28 ], [ %call15, %for.body23.lr.ph ]
  %x.085 = phi i64 [ %inc, %if.end28 ], [ 0, %for.body23.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.087, metadata !2428, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %x.085, metadata !2427, metadata !DIExpression()), !dbg !2465
  %image.val = load i32, ptr %3, align 4, !dbg !2501, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %q.087, metadata !1135, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call19, i64 %x.085), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !2476
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %q.087, i64 0, i32 2, !dbg !2479
  %11 = load i16, ptr %red.i, align 2, !dbg !2479, !tbaa !1141
  %conv.i = uitofp i16 %11 to float, !dbg !2480
  store float %conv.i, ptr %red1.i, align 8, !dbg !2481, !tbaa !1144
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %q.087, i64 0, i32 1, !dbg !2482
  %12 = load i16, ptr %green.i, align 2, !dbg !2482, !tbaa !1147
  %conv2.i = uitofp i16 %12 to float, !dbg !2483
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2484, !tbaa !1150
  %13 = load i16, ptr %q.087, align 2, !dbg !2485, !tbaa !1152
  %conv4.i = uitofp i16 %13 to float, !dbg !2486
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2487, !tbaa !1155
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %q.087, i64 0, i32 3, !dbg !2488
  %14 = load i16, ptr %opacity.i, align 2, !dbg !2488, !tbaa !1122
  %conv6.i = uitofp i16 %14 to float, !dbg !2489
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2490, !tbaa !1159
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !2502
  br i1 %cmp.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !2503

cond.end.i:                                       ; preds = %for.body23
  %add.ptr = getelementptr inbounds i16, ptr %call19, i64 %x.085, !dbg !2504
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1136, metadata !DIExpression()), !dbg !2476
  %15 = load i16, ptr %add.ptr, align 2, !dbg !2505, !tbaa !1165
  %conv14.i = uitofp i16 %15 to float, !dbg !2506
  store float %conv14.i, ptr %index15.i, align 8, !dbg !2507, !tbaa !1168
  br label %SetMagickPixelPacket.exit, !dbg !2508

SetMagickPixelPacket.exit:                        ; preds = %for.body23, %cond.end.i
  %call24 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef %target) #7, !dbg !2491
  %cmp25.not = icmp eq i32 %call24, %invert, !dbg !2493
  br i1 %cmp25.not, label %if.end28, label %if.then26, !dbg !2494

if.then26:                                        ; preds = %SetMagickPixelPacket.exit
  store i16 %opacity, ptr %opacity.i, align 2, !dbg !2495, !tbaa !1122
  br label %if.end28, !dbg !2496

if.end28:                                         ; preds = %if.then26, %SetMagickPixelPacket.exit
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.087, i64 1, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2428, metadata !DIExpression()), !dbg !2465
  %inc = add nuw nsw i64 %x.085, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2427, metadata !DIExpression()), !dbg !2465
  %16 = load i64, ptr %columns, align 8, !dbg !2471, !tbaa !1007
  %cmp22 = icmp slt i64 %inc, %16, !dbg !2474
  br i1 %cmp22, label %for.body23, label %for.end, !dbg !2475, !llvm.loop !2499

for.end:                                          ; preds = %if.end28, %if.end28.us, %if.end18
  %call29 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call10, ptr noundef nonnull %exception9) #9, !dbg !2509
  %cmp30 = icmp ne i32 %call29, 0, !dbg !2511
  %spec.select = zext i1 %cmp30 to i32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2418, metadata !DIExpression()), !dbg !2432
  %17 = load ptr, ptr %progress_monitor, align 8, !dbg !2513, !tbaa !2092
  %cmp33.not = icmp eq ptr %17, null, !dbg !2514
  br i1 %cmp33.not, label %cleanup, label %SetImageProgress.exit, !dbg !2515

SetImageProgress.exit:                            ; preds = %for.end
  %inc35 = add nsw i64 %progress.090, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %inc35, metadata !2419, metadata !DIExpression()), !dbg !2432
  %18 = load i64, ptr %rows, align 8, !dbg !2517, !tbaa !1012
  call void @llvm.dbg.value(metadata ptr %image, metadata !2097, metadata !DIExpression()) #7, !dbg !2518
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !2103, metadata !DIExpression()) #7, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %progress.090, metadata !2104, metadata !DIExpression()) #7, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %18, metadata !2105, metadata !DIExpression()) #7, !dbg !2518
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2106, metadata !DIExpression()) #7, !dbg !2521
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #7, !dbg !2522
  %19 = load ptr, ptr %progress_monitor, align 8, !dbg !2523, !tbaa !2092
  %20 = load ptr, ptr %client_data.i, align 8, !dbg !2524, !tbaa !2114
  %call4.i = call i32 %19(ptr noundef nonnull %message.i, i64 noundef %progress.090, i64 noundef %18, ptr noundef %20) #7, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2429, metadata !DIExpression()), !dbg !2527
  %cmp38 = icmp eq i32 %call4.i, 0, !dbg !2528
  %spec.select82 = select i1 %cmp38, i32 0, i32 %spec.select, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %spec.select82, metadata !2418, metadata !DIExpression()), !dbg !2432
  br label %cleanup, !dbg !2531

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end14, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end14 ], [ %spec.select82, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !2432
  %progress.2 = phi i64 [ %progress.090, %for.body ], [ %progress.090, %if.end14 ], [ %inc35, %SetImageProgress.exit ], [ %progress.090, %for.end ], !dbg !2432
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2419, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2418, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2532
  %inc46 = add nuw nsw i64 %y.091, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !2421, metadata !DIExpression()), !dbg !2432
  %21 = load i64, ptr %rows, align 8, !dbg !2455, !tbaa !1012
  %cmp11 = icmp slt i64 %inc46, %21, !dbg !2456
  br i1 %cmp11, label %for.body, label %for.end47, !dbg !2457, !llvm.loop !2534

for.end47:                                        ; preds = %cleanup, %if.end8
  %status.0.lcssa = phi i32 [ 1, %if.end8 ], [ %status.4, %cleanup ], !dbg !2536
  %call48 = call ptr @DestroyCacheView(ptr noundef %call10) #7, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %call48, metadata !2416, metadata !DIExpression()), !dbg !2432
  br label %cleanup49, !dbg !2538

cleanup49:                                        ; preds = %if.end, %for.end47
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end47 ], [ 0, %if.end ], !dbg !2432
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #7, !dbg !2539
  ret i32 %retval.0, !dbg !2539
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransparentPaintImageChroma(ptr noundef %image, ptr nocapture noundef readonly %low, ptr nocapture noundef readonly %high, i16 noundef zeroext %opacity, i32 noundef %invert) local_unnamed_addr #0 !dbg !2540 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2544, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %low, metadata !2545, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %high, metadata !2546, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i16 %opacity, metadata !2547, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %invert, metadata !2548, metadata !DIExpression()), !dbg !2565
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2566
  %0 = load i32, ptr %debug, align 8, !dbg !2566, !tbaa !979
  %cmp.not = icmp eq i32 %0, 0, !dbg !2568
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2569

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2570
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1094, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !2571
  br label %if.end, !dbg !2572

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #7, !dbg !2573
  %cmp2 = icmp eq i32 %call1, 0, !dbg !2575
  br i1 %cmp2, label %cleanup67, label %if.end4, !dbg !2576

if.end4:                                          ; preds = %if.end
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2577
  %1 = load i32, ptr %matte, align 8, !dbg !2577, !tbaa !1037
  %cmp5 = icmp eq i32 %1, 0, !dbg !2579
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2580

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 7) #7, !dbg !2581
  br label %if.end8, !dbg !2582

if.end8:                                          ; preds = %if.then6, %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !2551, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2565
  %exception9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %exception9, metadata !2550, metadata !DIExpression()), !dbg !2565
  %call10 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception9) #7, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2549, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2565
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2551, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2565
  %2 = load i64, ptr %rows, align 8, !dbg !2585, !tbaa !1012
  %cmp11116 = icmp sgt i64 %2, 0, !dbg !2586
  br i1 %cmp11116, label %for.body.lr.ph, label %for.end65, !dbg !2587

for.body.lr.ph:                                   ; preds = %if.end8
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %3 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %red24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %low, i64 0, i32 5
  %red27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %high, i64 0, i32 5
  %green30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %low, i64 0, i32 6
  %green34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %high, i64 0, i32 6
  %blue37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %low, i64 0, i32 7
  %blue40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %high, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2587

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0119 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0118 = phi i64 [ 0, %for.body.lr.ph ], [ %inc64, %cleanup ]
  %progress.0117 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0119, metadata !2551, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %y.0118, metadata !2553, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %progress.0117, metadata !2552, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2558, metadata !DIExpression()), !dbg !2589
  %cmp12 = icmp eq i32 %status.0119, 0, !dbg !2590
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !2592

if.end14:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !2593, !tbaa !1007
  %call15 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call10, i64 noundef 0, i64 noundef %y.0118, i64 noundef %4, i64 noundef 1, ptr noundef nonnull %exception9) #9, !dbg !2594
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2561, metadata !DIExpression()), !dbg !2595
  %cmp16 = icmp eq ptr %call15, null, !dbg !2596
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !2598

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call10) #7, !dbg !2599
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2559, metadata !DIExpression()), !dbg !2595
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #7, !dbg !2600
  call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2595
  %5 = load i64, ptr %columns, align 8, !tbaa !1007
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2561, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2595
  %cmp22107 = icmp sgt i64 %5, 0, !dbg !2601
  br i1 %cmp22107, label %for.body23.lr.ph, label %for.end, !dbg !2604

for.body23.lr.ph:                                 ; preds = %if.end18
  %image.val = load i32, ptr %3, align 4, !tbaa !1021
  %cmp.i = icmp eq i32 %image.val, 12
  %cmp9.i = icmp ne ptr %call19, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i
  %6 = load float, ptr %red24, align 8, !tbaa !1144
  br i1 %or.cond.i, label %for.body23.us, label %for.body23, !dbg !2605

for.body23.us:                                    ; preds = %for.body23.lr.ph, %if.end45.us
  %q.0110.us = phi ptr [ %incdec.ptr.us, %if.end45.us ], [ %call15, %for.body23.lr.ph ]
  %x.0108.us = phi i64 [ %inc.us, %if.end45.us ], [ 0, %for.body23.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0110.us, metadata !2561, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %x.0108.us, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %q.0110.us, metadata !1135, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call19, i64 %x.0108.us), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !2608
  %red.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0110.us, i64 0, i32 2, !dbg !2609
  %7 = load i16, ptr %red.i.us, align 2, !dbg !2609, !tbaa !1141
  %conv.i.us = uitofp i16 %7 to float, !dbg !2610
  %green.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0110.us, i64 0, i32 1, !dbg !2611
  %8 = load i16, ptr %green.i.us, align 2, !dbg !2611, !tbaa !1147
  %conv2.i.us = uitofp i16 %8 to float, !dbg !2612
  %9 = load i16, ptr %q.0110.us, align 2, !dbg !2613, !tbaa !1152
  %conv4.i.us = uitofp i16 %9 to float, !dbg !2614
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0110.us, i64 0, i32 3, !dbg !2615
  %10 = load i16, ptr %opacity.i.us, align 2, !dbg !2615, !tbaa !1122
  %add.ptr.us = getelementptr inbounds i16, ptr %call19, i64 %x.0108.us, !dbg !2616
  call void @llvm.dbg.value(metadata ptr %add.ptr.us, metadata !1136, metadata !DIExpression()), !dbg !2608
  %11 = load i16, ptr %add.ptr.us, align 2, !dbg !2617, !tbaa !1165
  %cmp25.us = fcmp ugt float %6, %conv.i.us, !dbg !2618
  br i1 %cmp25.us, label %land.end.us, label %land.lhs.true.us, !dbg !2619

land.lhs.true.us:                                 ; preds = %for.body23.us
  %12 = load float, ptr %red27, align 8, !dbg !2620, !tbaa !1144
  %cmp28.us = fcmp ult float %12, %conv.i.us, !dbg !2621
  br i1 %cmp28.us, label %land.end.us, label %land.lhs.true29.us, !dbg !2622

land.lhs.true29.us:                               ; preds = %land.lhs.true.us
  %13 = load float, ptr %green30, align 4, !dbg !2623, !tbaa !1150
  %cmp31.us = fcmp ugt float %13, %conv2.i.us, !dbg !2624
  br i1 %cmp31.us, label %land.end.us, label %land.lhs.true32.us, !dbg !2625

land.lhs.true32.us:                               ; preds = %land.lhs.true29.us
  %14 = load float, ptr %green34, align 4, !dbg !2626, !tbaa !1150
  %cmp35.us = fcmp ult float %14, %conv2.i.us, !dbg !2627
  br i1 %cmp35.us, label %land.end.us, label %land.lhs.true36.us, !dbg !2628

land.lhs.true36.us:                               ; preds = %land.lhs.true32.us
  %15 = load float, ptr %blue37, align 8, !dbg !2629, !tbaa !1155
  %cmp38.us = fcmp ugt float %15, %conv4.i.us, !dbg !2630
  br i1 %cmp38.us, label %land.end.us, label %land.rhs.us, !dbg !2631

land.rhs.us:                                      ; preds = %land.lhs.true36.us
  %16 = load float, ptr %blue40, align 8, !dbg !2632, !tbaa !1155
  %cmp41.us = fcmp oge float %16, %conv4.i.us, !dbg !2633
  br label %land.end.us

land.end.us:                                      ; preds = %land.rhs.us, %land.lhs.true36.us, %land.lhs.true32.us, %land.lhs.true29.us, %land.lhs.true.us, %for.body23.us
  %17 = phi i1 [ false, %land.lhs.true36.us ], [ false, %land.lhs.true32.us ], [ false, %land.lhs.true29.us ], [ false, %land.lhs.true.us ], [ false, %for.body23.us ], [ %cmp41.us, %land.rhs.us ], !dbg !2634
  %cond.us = zext i1 %17 to i32, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %cond.us, metadata !2554, metadata !DIExpression()), !dbg !2595
  %cmp42.not.us = icmp eq i32 %cond.us, %invert, !dbg !2636
  br i1 %cmp42.not.us, label %if.end45.us, label %if.then43.us, !dbg !2638

if.then43.us:                                     ; preds = %land.end.us
  store i16 %opacity, ptr %opacity.i.us, align 2, !dbg !2639, !tbaa !1122
  br label %if.end45.us, !dbg !2640

if.end45.us:                                      ; preds = %if.then43.us, %land.end.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0110.us, i64 1, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2561, metadata !DIExpression()), !dbg !2595
  %inc.us = add nuw nsw i64 %x.0108.us, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2560, metadata !DIExpression()), !dbg !2595
  %exitcond122.not = icmp eq i64 %inc.us, %5, !dbg !2601
  br i1 %exitcond122.not, label %for.cond20.for.end_crit_edge.split.us, label %for.body23.us, !dbg !2604, !llvm.loop !2643

for.cond20.for.end_crit_edge.split.us:            ; preds = %if.end45.us
  %conv14.i.us.le = uitofp i16 %11 to float, !dbg !2645
  store float %conv14.i.us.le, ptr %index15.i, align 8, !dbg !2646, !tbaa !1168
  br label %for.cond20.for.end_crit_edge, !dbg !2647

for.body23:                                       ; preds = %for.body23.lr.ph, %if.end45
  %q.0110 = phi ptr [ %incdec.ptr, %if.end45 ], [ %call15, %for.body23.lr.ph ]
  %x.0108 = phi i64 [ %inc, %if.end45 ], [ 0, %for.body23.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0110, metadata !2561, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %x.0108, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr undef, metadata !1126, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %q.0110, metadata !1135, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call19, i64 %x.0108), metadata !1136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1137, metadata !DIExpression()), !dbg !2608
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0110, i64 0, i32 2, !dbg !2609
  %18 = load i16, ptr %red.i, align 2, !dbg !2609, !tbaa !1141
  %conv.i = uitofp i16 %18 to float, !dbg !2610
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0110, i64 0, i32 1, !dbg !2611
  %19 = load i16, ptr %green.i, align 2, !dbg !2611, !tbaa !1147
  %conv2.i = uitofp i16 %19 to float, !dbg !2612
  %20 = load i16, ptr %q.0110, align 2, !dbg !2613, !tbaa !1152
  %conv4.i = uitofp i16 %20 to float, !dbg !2614
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0110, i64 0, i32 3, !dbg !2615
  %21 = load i16, ptr %opacity.i, align 2, !dbg !2615, !tbaa !1122
  %cmp25 = fcmp ugt float %6, %conv.i, !dbg !2618
  br i1 %cmp25, label %land.end, label %land.lhs.true, !dbg !2619

land.lhs.true:                                    ; preds = %for.body23
  %22 = load float, ptr %red27, align 8, !dbg !2620, !tbaa !1144
  %cmp28 = fcmp ult float %22, %conv.i, !dbg !2621
  br i1 %cmp28, label %land.end, label %land.lhs.true29, !dbg !2622

land.lhs.true29:                                  ; preds = %land.lhs.true
  %23 = load float, ptr %green30, align 4, !dbg !2623, !tbaa !1150
  %cmp31 = fcmp ugt float %23, %conv2.i, !dbg !2624
  br i1 %cmp31, label %land.end, label %land.lhs.true32, !dbg !2625

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %24 = load float, ptr %green34, align 4, !dbg !2626, !tbaa !1150
  %cmp35 = fcmp ult float %24, %conv2.i, !dbg !2627
  br i1 %cmp35, label %land.end, label %land.lhs.true36, !dbg !2628

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %25 = load float, ptr %blue37, align 8, !dbg !2629, !tbaa !1155
  %cmp38 = fcmp ugt float %25, %conv4.i, !dbg !2630
  br i1 %cmp38, label %land.end, label %land.rhs, !dbg !2631

land.rhs:                                         ; preds = %land.lhs.true36
  %26 = load float, ptr %blue40, align 8, !dbg !2632, !tbaa !1155
  %cmp41 = fcmp oge float %26, %conv4.i, !dbg !2633
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true36, %land.lhs.true32, %land.lhs.true29, %land.lhs.true, %for.body23
  %27 = phi i1 [ false, %land.lhs.true36 ], [ false, %land.lhs.true32 ], [ false, %land.lhs.true29 ], [ false, %land.lhs.true ], [ false, %for.body23 ], [ %cmp41, %land.rhs ], !dbg !2634
  %cond = zext i1 %27 to i32, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2554, metadata !DIExpression()), !dbg !2595
  %cmp42.not = icmp eq i32 %cond, %invert, !dbg !2636
  br i1 %cmp42.not, label %if.end45, label %if.then43, !dbg !2638

if.then43:                                        ; preds = %land.end
  store i16 %opacity, ptr %opacity.i, align 2, !dbg !2639, !tbaa !1122
  br label %if.end45, !dbg !2640

if.end45:                                         ; preds = %if.then43, %land.end
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0110, i64 1, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2561, metadata !DIExpression()), !dbg !2595
  %inc = add nuw nsw i64 %x.0108, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2560, metadata !DIExpression()), !dbg !2595
  %exitcond.not = icmp eq i64 %inc, %5, !dbg !2601
  br i1 %exitcond.not, label %for.cond20.for.end_crit_edge, label %for.body23, !dbg !2604, !llvm.loop !2643

for.cond20.for.end_crit_edge:                     ; preds = %if.end45, %for.cond20.for.end_crit_edge.split.us
  %.us-phi.in = phi i16 [ %10, %for.cond20.for.end_crit_edge.split.us ], [ %21, %if.end45 ]
  %.us-phi111 = phi float [ %conv4.i.us, %for.cond20.for.end_crit_edge.split.us ], [ %conv4.i, %if.end45 ]
  %.us-phi112 = phi float [ %conv2.i.us, %for.cond20.for.end_crit_edge.split.us ], [ %conv2.i, %if.end45 ]
  %.us-phi113 = phi float [ %conv.i.us, %for.cond20.for.end_crit_edge.split.us ], [ %conv.i, %if.end45 ]
  %.us-phi = uitofp i16 %.us-phi.in to float, !dbg !2648
  store float %.us-phi113, ptr %red1.i, align 8, !dbg !2647, !tbaa !1144
  store float %.us-phi112, ptr %green3.i, align 4, !dbg !2649, !tbaa !1150
  store float %.us-phi111, ptr %blue5.i, align 8, !dbg !2650, !tbaa !1155
  store float %.us-phi, ptr %opacity7.i, align 4, !dbg !2651, !tbaa !1159
  br label %for.end, !dbg !2604

for.end:                                          ; preds = %for.cond20.for.end_crit_edge, %if.end18
  %call46 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call10, ptr noundef nonnull %exception9) #9, !dbg !2652
  %cmp47 = icmp ne i32 %call46, 0, !dbg !2654
  %spec.select = zext i1 %cmp47 to i32, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2551, metadata !DIExpression()), !dbg !2565
  %28 = load ptr, ptr %progress_monitor, align 8, !dbg !2656, !tbaa !2092
  %cmp50.not = icmp eq ptr %28, null, !dbg !2657
  br i1 %cmp50.not, label %cleanup, label %SetImageProgress.exit, !dbg !2658

SetImageProgress.exit:                            ; preds = %for.end
  %inc52 = add nsw i64 %progress.0117, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %inc52, metadata !2552, metadata !DIExpression()), !dbg !2565
  %29 = load i64, ptr %rows, align 8, !dbg !2660, !tbaa !1012
  call void @llvm.dbg.value(metadata ptr %image, metadata !2097, metadata !DIExpression()) #7, !dbg !2661
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !2103, metadata !DIExpression()) #7, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %progress.0117, metadata !2104, metadata !DIExpression()) #7, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %29, metadata !2105, metadata !DIExpression()) #7, !dbg !2661
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2106, metadata !DIExpression()) #7, !dbg !2664
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #7, !dbg !2665
  %30 = load ptr, ptr %progress_monitor, align 8, !dbg !2666, !tbaa !2092
  %31 = load ptr, ptr %client_data.i, align 8, !dbg !2667, !tbaa !2114
  %call4.i = call i32 %30(ptr noundef nonnull %message.i, i64 noundef %progress.0117, i64 noundef %29, ptr noundef %31) #7, !dbg !2668
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2562, metadata !DIExpression()), !dbg !2670
  %cmp55 = icmp eq i32 %call4.i, 0, !dbg !2671
  %spec.select105 = select i1 %cmp55, i32 0, i32 %spec.select, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %spec.select105, metadata !2551, metadata !DIExpression()), !dbg !2565
  br label %cleanup, !dbg !2674

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end14, %for.body
  %progress.2 = phi i64 [ %progress.0117, %for.body ], [ %progress.0117, %if.end14 ], [ %inc52, %SetImageProgress.exit ], [ %progress.0117, %for.end ], !dbg !2565
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end14 ], [ %spec.select105, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !2565
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2551, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2552, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #7, !dbg !2675
  %inc64 = add nuw nsw i64 %y.0118, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %inc64, metadata !2553, metadata !DIExpression()), !dbg !2565
  %32 = load i64, ptr %rows, align 8, !dbg !2585, !tbaa !1012
  %cmp11 = icmp slt i64 %inc64, %32, !dbg !2586
  br i1 %cmp11, label %for.body, label %for.end65, !dbg !2587, !llvm.loop !2677

for.end65:                                        ; preds = %cleanup, %if.end8
  %status.0.lcssa = phi i32 [ 1, %if.end8 ], [ %status.4, %cleanup ], !dbg !2679
  %call66 = call ptr @DestroyCacheView(ptr noundef %call10) #7, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2549, metadata !DIExpression()), !dbg !2565
  br label %cleanup67, !dbg !2681

cleanup67:                                        ; preds = %if.end, %for.end65
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end65 ], [ 0, %if.end ], !dbg !2565
  ret i32 %retval.0, !dbg !2682
}

declare !dbg !2683 i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2689 float @DecodePixelGamma(float noundef) local_unnamed_addr #5

declare !dbg !2692 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

declare !dbg !2697 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2703 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!805, !806, !807, !808, !809, !810}
!llvm.ident = !{!811}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !541, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/paint.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "b6c498e55ae73bc8e15c1bc95712f35f")
!2 = !{!3, !9, !14, !51, !76, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !390, !396, !402, !407, !413, !419, !426, !434, !447, !453, !459, !463, !468, !493, !508, !529}
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
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 70, baseType: !5, size: 32, elements: !392)
!391 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!392 = !{!393, !394, !395}
!393 = !DIEnumerator(name: "UndefinedGradient", value: 0)
!394 = !DIEnumerator(name: "LinearGradient", value: 1)
!395 = !DIEnumerator(name: "RadialGradient", value: 2)
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 129, baseType: !5, size: 32, elements: !397)
!397 = !{!398, !399, !400, !401}
!398 = !DIEnumerator(name: "UndefinedSpread", value: 0)
!399 = !DIEnumerator(name: "PadSpread", value: 1)
!400 = !DIEnumerator(name: "ReflectSpread", value: 2)
!401 = !DIEnumerator(name: "RepeatSpread", value: 3)
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 62, baseType: !5, size: 32, elements: !403)
!403 = !{!404, !405, !406}
!404 = !DIEnumerator(name: "UndefinedRule", value: 0)
!405 = !DIEnumerator(name: "EvenOddRule", value: 1)
!406 = !DIEnumerator(name: "NonZeroRule", value: 2)
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 77, baseType: !5, size: 32, elements: !408)
!408 = !{!409, !410, !411, !412}
!409 = !DIEnumerator(name: "UndefinedCap", value: 0)
!410 = !DIEnumerator(name: "ButtCap", value: 1)
!411 = !DIEnumerator(name: "RoundCap", value: 2)
!412 = !DIEnumerator(name: "SquareCap", value: 3)
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 85, baseType: !5, size: 32, elements: !414)
!414 = !{!415, !416, !417, !418}
!415 = !DIEnumerator(name: "UndefinedJoin", value: 0)
!416 = !DIEnumerator(name: "MiterJoin", value: 1)
!417 = !DIEnumerator(name: "RoundJoin", value: 2)
!418 = !DIEnumerator(name: "BevelJoin", value: 3)
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 46, baseType: !5, size: 32, elements: !420)
!420 = !{!421, !422, !423, !424, !425}
!421 = !DIEnumerator(name: "UndefinedDecoration", value: 0)
!422 = !DIEnumerator(name: "NoDecoration", value: 1)
!423 = !DIEnumerator(name: "UnderlineDecoration", value: 2)
!424 = !DIEnumerator(name: "OverlineDecoration", value: 3)
!425 = !DIEnumerator(name: "LineThroughDecoration", value: 4)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !427, line: 40, baseType: !5, size: 32, elements: !428)
!427 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!428 = !{!429, !430, !431, !432, !433}
!429 = !DIEnumerator(name: "UndefinedStyle", value: 0)
!430 = !DIEnumerator(name: "NormalStyle", value: 1)
!431 = !DIEnumerator(name: "ItalicStyle", value: 2)
!432 = !DIEnumerator(name: "ObliqueStyle", value: 3)
!433 = !DIEnumerator(name: "AnyStyle", value: 4)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !427, line: 25, baseType: !5, size: 32, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!436 = !DIEnumerator(name: "UndefinedStretch", value: 0)
!437 = !DIEnumerator(name: "NormalStretch", value: 1)
!438 = !DIEnumerator(name: "UltraCondensedStretch", value: 2)
!439 = !DIEnumerator(name: "ExtraCondensedStretch", value: 3)
!440 = !DIEnumerator(name: "CondensedStretch", value: 4)
!441 = !DIEnumerator(name: "SemiCondensedStretch", value: 5)
!442 = !DIEnumerator(name: "SemiExpandedStretch", value: 6)
!443 = !DIEnumerator(name: "ExpandedStretch", value: 7)
!444 = !DIEnumerator(name: "ExtraExpandedStretch", value: 8)
!445 = !DIEnumerator(name: "UltraExpandedStretch", value: 9)
!446 = !DIEnumerator(name: "AnyStretch", value: 10)
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 30, baseType: !5, size: 32, elements: !448)
!448 = !{!449, !450, !451, !452}
!449 = !DIEnumerator(name: "UndefinedAlign", value: 0)
!450 = !DIEnumerator(name: "LeftAlign", value: 1)
!451 = !DIEnumerator(name: "CenterAlign", value: 2)
!452 = !DIEnumerator(name: "RightAlign", value: 3)
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 38, baseType: !5, size: 32, elements: !454)
!454 = !{!455, !456, !457, !458}
!455 = !DIEnumerator(name: "UndefinedPathUnits", value: 0)
!456 = !DIEnumerator(name: "UserSpace", value: 1)
!457 = !DIEnumerator(name: "UserSpaceOnUse", value: 2)
!458 = !DIEnumerator(name: "ObjectBoundingBox", value: 3)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 123, baseType: !5, size: 32, elements: !460)
!460 = !{!461, !462}
!461 = !DIEnumerator(name: "UndefinedReference", value: 0)
!462 = !DIEnumerator(name: "GradientReference", value: 1)
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 55, baseType: !5, size: 32, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIEnumerator(name: "UndefinedDirection", value: 0)
!466 = !DIEnumerator(name: "RightToLeftDirection", value: 1)
!467 = !DIEnumerator(name: "LeftToRightDirection", value: 2)
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !469, line: 34, baseType: !5, size: 32, elements: !470)
!469 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!471 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!472 = !DIEnumerator(name: "NoEvents", value: 0)
!473 = !DIEnumerator(name: "TraceEvent", value: 1)
!474 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!475 = !DIEnumerator(name: "BlobEvent", value: 4)
!476 = !DIEnumerator(name: "CacheEvent", value: 8)
!477 = !DIEnumerator(name: "CoderEvent", value: 16)
!478 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!479 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!480 = !DIEnumerator(name: "DrawEvent", value: 128)
!481 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!482 = !DIEnumerator(name: "ImageEvent", value: 512)
!483 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!484 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!485 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!486 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!487 = !DIEnumerator(name: "TransformEvent", value: 16384)
!488 = !DIEnumerator(name: "UserEvent", value: 36864)
!489 = !DIEnumerator(name: "WandEvent", value: 65536)
!490 = !DIEnumerator(name: "X11Event", value: 131072)
!491 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!492 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 30, baseType: !5, size: 32, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!495 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!496 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!497 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!498 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!499 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!500 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!501 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!502 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!503 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!504 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!505 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!506 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!507 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!508 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 27, baseType: !5, size: 32, elements: !510)
!509 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!511 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!512 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!513 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!514 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!515 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!516 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!517 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!518 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!519 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!520 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!521 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!522 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!523 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!524 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!525 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!526 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!527 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!528 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !530, line: 25, baseType: !5, size: 32, elements: !531)
!530 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540}
!532 = !DIEnumerator(name: "UndefinedResource", value: 0)
!533 = !DIEnumerator(name: "AreaResource", value: 1)
!534 = !DIEnumerator(name: "DiskResource", value: 2)
!535 = !DIEnumerator(name: "FileResource", value: 3)
!536 = !DIEnumerator(name: "MapResource", value: 4)
!537 = !DIEnumerator(name: "MemoryResource", value: 5)
!538 = !DIEnumerator(name: "ThreadResource", value: 6)
!539 = !DIEnumerator(name: "TimeResource", value: 7)
!540 = !DIEnumerator(name: "ThrottleResource", value: 8)
!541 = !{!542, !543, !548, !550, !603, !764, !768, !585, !561, !776, !573, !778, !779, !780, !801, !803, !671, !794, !802, !733}
!542 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !544, line: 77, baseType: !545)
!544 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !546, line: 193, baseType: !547)
!546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!547 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !549)
!549 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !77, line: 150, size: 105920, elements: !553)
!553 = !{!554, !556, !558, !560, !563, !565, !567, !568, !569, !570, !571, !572, !581, !582, !583, !584, !586, !600, !602, !604, !606, !609, !610, !611, !612, !613, !614, !622, !623, !624, !625, !626, !627, !629, !631, !633, !635, !637, !639, !641, !642, !643, !644, !645, !646, !647, !655, !670, !684, !685, !686, !687, !691, !695, !699, !700, !701, !702, !703, !721, !722, !724, !725, !735, !736, !738, !739, !740, !741, !742, !743, !745, !746, !747, !748, !749, !750, !751, !753, !754, !755, !756, !757, !761, !763}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !552, file: !77, line: 153, baseType: !555, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !9)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !552, file: !77, line: 156, baseType: !557, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !15, line: 61, baseType: !14)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !552, file: !77, line: 159, baseType: !559, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !52, line: 49, baseType: !51)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !552, file: !77, line: 162, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !562, line: 46, baseType: !542)
!562 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !552, file: !77, line: 165, baseType: !564, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !77, line: 86, baseType: !76)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !552, file: !77, line: 168, baseType: !566, size: 32, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !552, file: !77, line: 169, baseType: !566, size: 32, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !552, file: !77, line: 172, baseType: !561, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !552, file: !77, line: 173, baseType: !561, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !552, file: !77, line: 174, baseType: !561, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !552, file: !77, line: 175, baseType: !561, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !552, file: !77, line: 178, baseType: !573, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !575, file: !326, line: 143, baseType: !548, size: 16)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !575, file: !326, line: 144, baseType: !548, size: 16, offset: 16)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !575, file: !326, line: 145, baseType: !548, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !575, file: !326, line: 146, baseType: !548, size: 16, offset: 48)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !552, file: !77, line: 179, baseType: !574, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !552, file: !77, line: 180, baseType: !574, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !552, file: !77, line: 181, baseType: !574, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !552, file: !77, line: 184, baseType: !585, size: 64, offset: 832)
!585 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !552, file: !77, line: 187, baseType: !587, size: 768, offset: 896)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !77, line: 128, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !77, line: 121, size: 768, elements: !589)
!589 = !{!590, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !588, file: !77, line: 124, baseType: !591, size: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !77, line: 101, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !77, line: 95, size: 192, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !592, file: !77, line: 98, baseType: !585, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !592, file: !77, line: 99, baseType: !585, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !592, file: !77, line: 100, baseType: !585, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !588, file: !77, line: 125, baseType: !591, size: 192, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !588, file: !77, line: 126, baseType: !591, size: 192, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !588, file: !77, line: 127, baseType: !591, size: 192, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !552, file: !77, line: 190, baseType: !601, size: 32, offset: 1664)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !552, file: !77, line: 193, baseType: !603, size: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !552, file: !77, line: 196, baseType: !605, size: 32, offset: 1792)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !77, line: 93, baseType: !96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !552, file: !77, line: 199, baseType: !607, size: 64, offset: 1856)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !552, file: !77, line: 200, baseType: !607, size: 64, offset: 1920)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !552, file: !77, line: 201, baseType: !607, size: 64, offset: 1984)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !552, file: !77, line: 204, baseType: !543, size: 64, offset: 2048)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !552, file: !77, line: 207, baseType: !585, size: 64, offset: 2112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !552, file: !77, line: 208, baseType: !585, size: 64, offset: 2176)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !552, file: !77, line: 211, baseType: !615, size: 256, offset: 2240)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !617)
!617 = !{!618, !619, !620, !621}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !616, file: !153, line: 124, baseType: !561, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !616, file: !153, line: 125, baseType: !561, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !616, file: !153, line: 128, baseType: !543, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !616, file: !153, line: 129, baseType: !543, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !552, file: !77, line: 212, baseType: !615, size: 256, offset: 2496)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !552, file: !77, line: 213, baseType: !615, size: 256, offset: 2752)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !552, file: !77, line: 216, baseType: !585, size: 64, offset: 3008)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !552, file: !77, line: 217, baseType: !585, size: 64, offset: 3072)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !552, file: !77, line: 218, baseType: !585, size: 64, offset: 3136)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !552, file: !77, line: 221, baseType: !628, size: 32, offset: 3200)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !552, file: !77, line: 224, baseType: !630, size: 32, offset: 3232)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !77, line: 73, baseType: !136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !552, file: !77, line: 227, baseType: !632, size: 32, offset: 3264)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !552, file: !77, line: 230, baseType: !634, size: 32, offset: 3296)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !552, file: !77, line: 233, baseType: !636, size: 32, offset: 3328)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !552, file: !77, line: 236, baseType: !638, size: 32, offset: 3360)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !552, file: !77, line: 239, baseType: !640, size: 64, offset: 3392)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !552, file: !77, line: 242, baseType: !561, size: 64, offset: 3456)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !552, file: !77, line: 243, baseType: !561, size: 64, offset: 3520)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !552, file: !77, line: 246, baseType: !543, size: 64, offset: 3584)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !552, file: !77, line: 249, baseType: !561, size: 64, offset: 3648)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !552, file: !77, line: 250, baseType: !561, size: 64, offset: 3712)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !552, file: !77, line: 253, baseType: !543, size: 64, offset: 3776)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !552, file: !77, line: 256, baseType: !648, size: 192, offset: 3840)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !649, line: 68, baseType: !650)
!649 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !649, line: 62, size: 192, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !650, file: !649, line: 65, baseType: !585, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !650, file: !649, line: 66, baseType: !585, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !650, file: !649, line: 67, baseType: !585, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !552, file: !77, line: 259, baseType: !656, size: 512, offset: 4032)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !658)
!658 = !{!659, !666, !667, !669}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !657, file: !247, line: 43, baseType: !660, size: 192)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !662)
!662 = !{!663, !664, !665}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !661, file: !247, line: 35, baseType: !585, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !661, file: !247, line: 36, baseType: !585, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !661, file: !247, line: 37, baseType: !585, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !657, file: !247, line: 44, baseType: !660, size: 192, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !657, file: !247, line: 47, baseType: !668, size: 32, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !657, file: !247, line: 50, baseType: !561, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !552, file: !77, line: 262, baseType: !671, size: 64, offset: 4544)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !672, line: 26, baseType: !673)
!672 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!566, !676, !678, !681, !603}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !680)
!680 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !683)
!683 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !552, file: !77, line: 265, baseType: !603, size: 64, offset: 4608)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !552, file: !77, line: 266, baseType: !603, size: 64, offset: 4672)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !552, file: !77, line: 267, baseType: !603, size: 64, offset: 4736)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !552, file: !77, line: 270, baseType: !688, size: 64, offset: 4800)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !52, line: 52, baseType: !690)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !52, line: 51, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !552, file: !77, line: 273, baseType: !692, size: 64, offset: 4864)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !552, file: !77, line: 276, baseType: !696, size: 32768, offset: 4928)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 32768, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 4096)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !552, file: !77, line: 277, baseType: !696, size: 32768, offset: 37696)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !552, file: !77, line: 278, baseType: !696, size: 32768, offset: 70464)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !552, file: !77, line: 281, baseType: !561, size: 64, offset: 103232)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !552, file: !77, line: 282, baseType: !561, size: 64, offset: 103296)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !552, file: !77, line: 285, baseType: !704, size: 448, offset: 103360)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !706)
!706 = !{!707, !709, !711, !712, !713, !714, !715, !720}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !705, file: !253, line: 105, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !705, file: !253, line: 108, baseType: !710, size: 32, offset: 32)
!710 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !705, file: !253, line: 111, baseType: !607, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !705, file: !253, line: 112, baseType: !607, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !705, file: !253, line: 115, baseType: !603, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !705, file: !253, line: 118, baseType: !566, size: 32, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !705, file: !253, line: 121, baseType: !716, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !718, line: 26, baseType: !719)
!718 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !718, line: 25, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !705, file: !253, line: 124, baseType: !561, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !552, file: !77, line: 288, baseType: !566, size: 32, offset: 103808)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !77, line: 291, baseType: !723, size: 64, offset: 103872)
!723 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !543)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !552, file: !77, line: 294, baseType: !716, size: 64, offset: 103936)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !552, file: !77, line: 297, baseType: !726, size: 256, offset: 104000)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !728)
!728 = !{!729, !730, !731, !734}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !727, file: !89, line: 30, baseType: !607, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !727, file: !89, line: 33, baseType: !561, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !727, file: !89, line: 36, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !727, file: !89, line: 39, baseType: !561, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !552, file: !77, line: 298, baseType: !726, size: 256, offset: 104256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !552, file: !77, line: 299, baseType: !737, size: 64, offset: 104512)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !552, file: !77, line: 302, baseType: !561, size: 64, offset: 104576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !552, file: !77, line: 305, baseType: !561, size: 64, offset: 104640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !552, file: !77, line: 308, baseType: !640, size: 64, offset: 104704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !552, file: !77, line: 309, baseType: !640, size: 64, offset: 104768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !77, line: 310, baseType: !640, size: 64, offset: 104832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !552, file: !77, line: 313, baseType: !744, size: 32, offset: 104896)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !552, file: !77, line: 316, baseType: !566, size: 32, offset: 104928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !552, file: !77, line: 319, baseType: !574, size: 64, offset: 104960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !552, file: !77, line: 322, baseType: !640, size: 64, offset: 105024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !552, file: !77, line: 325, baseType: !615, size: 256, offset: 105088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !552, file: !77, line: 328, baseType: !603, size: 64, offset: 105344)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !552, file: !77, line: 329, baseType: !603, size: 64, offset: 105408)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !77, line: 332, baseType: !752, size: 32, offset: 105472)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !77, line: 61, baseType: !342)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !552, file: !77, line: 335, baseType: !566, size: 32, offset: 105504)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !552, file: !77, line: 338, baseType: !682, size: 64, offset: 105536)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !552, file: !77, line: 341, baseType: !566, size: 32, offset: 105600)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !552, file: !77, line: 344, baseType: !561, size: 64, offset: 105664)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !552, file: !77, line: 347, baseType: !758, size: 64, offset: 105728)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !759, line: 7, baseType: !760)
!759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !546, line: 160, baseType: !547)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !552, file: !77, line: 350, baseType: !762, size: 32, offset: 105792)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !552, file: !77, line: 353, baseType: !561, size: 64, offset: 105856)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemoryInfo", file: !766, line: 26, baseType: !767)
!766 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MemoryInfo", file: !766, line: 25, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "SegmentInfo", file: !77, line: 110, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SegmentInfo", file: !77, line: 103, size: 256, elements: !771)
!771 = !{!772, !773, !774, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !770, file: !77, line: 106, baseType: !585, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !770, file: !77, line: 107, baseType: !585, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !770, file: !77, line: 108, baseType: !585, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !770, file: !77, line: 109, baseType: !585, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !548)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "StopInfo", file: !391, line: 151, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StopInfo", file: !391, line: 144, size: 512, elements: !783)
!783 = !{!784, !800}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !782, file: !391, line: 147, baseType: !785, size: 448)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !796, !797, !798, !799}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !786, file: !326, line: 107, baseType: !555, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !786, file: !326, line: 110, baseType: !557, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !786, file: !326, line: 113, baseType: !566, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !786, file: !326, line: 116, baseType: !585, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !786, file: !326, line: 119, baseType: !561, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !786, file: !326, line: 122, baseType: !794, size: 32, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !795)
!795 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !786, file: !326, line: 123, baseType: !794, size: 32, offset: 288)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !786, file: !326, line: 124, baseType: !794, size: 32, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !786, file: !326, line: 125, baseType: !794, size: 32, offset: 352)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !786, file: !326, line: 126, baseType: !794, size: 32, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !782, file: !391, line: 150, baseType: !794, size: 32, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!805 = !{i32 7, !"Dwarf Version", i32 5}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 4}
!808 = !{i32 7, !"PIC Level", i32 2}
!809 = !{i32 7, !"PIE Level", i32 2}
!810 = !{i32 7, !"uwtable", i32 2}
!811 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!812 = distinct !DISubprogram(name: "FloodfillPaintImage", scope: !813, file: !813, line: 107, type: !814, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !926)
!813 = !DIFile(filename: "apps/538.imagick_r/src/magick/paint.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b6c498e55ae73bc8e15c1bc95712f35f")
!814 = !DISubroutineType(types: !815)
!815 = !{!566, !550, !816, !818, !922, !924, !924, !925}
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !368)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "DrawInfo", file: !391, line: 333, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DrawInfo", file: !391, line: 205, size: 5760, elements: !822)
!822 = !{!823, !824, !825, !826, !836, !837, !838, !839, !840, !861, !862, !863, !864, !865, !866, !868, !870, !872, !873, !874, !876, !877, !878, !879, !880, !881, !882, !884, !886, !887, !888, !889, !890, !892, !893, !894, !895, !897, !898, !899, !901, !902, !903, !915, !916, !917, !918, !919, !920}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !821, file: !391, line: 208, baseType: !607, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !821, file: !391, line: 209, baseType: !607, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "viewbox", scope: !821, file: !391, line: 212, baseType: !615, size: 256, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "affine", scope: !821, file: !391, line: 215, baseType: !827, size: 384, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !153, line: 102, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !153, line: 93, size: 384, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !828, file: !153, line: 96, baseType: !585, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !828, file: !153, line: 97, baseType: !585, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !828, file: !153, line: 98, baseType: !585, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !828, file: !153, line: 99, baseType: !585, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !828, file: !153, line: 100, baseType: !585, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !828, file: !153, line: 101, baseType: !585, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !821, file: !391, line: 218, baseType: !634, size: 32, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !821, file: !391, line: 221, baseType: !574, size: 64, offset: 800)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "stroke", scope: !821, file: !391, line: 222, baseType: !574, size: 64, offset: 864)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_width", scope: !821, file: !391, line: 225, baseType: !585, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !821, file: !391, line: 228, baseType: !841, size: 1024, offset: 1024)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientInfo", file: !391, line: 184, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GradientInfo", file: !391, line: 153, size: 1024, elements: !843)
!843 = !{!844, !846, !847, !848, !849, !850, !852, !853, !854, !860}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !842, file: !391, line: 156, baseType: !845, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientType", file: !391, line: 75, baseType: !390)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bounding_box", scope: !842, file: !391, line: 159, baseType: !615, size: 256, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gradient_vector", scope: !842, file: !391, line: 162, baseType: !769, size: 256, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "stops", scope: !842, file: !391, line: 165, baseType: !780, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "number_stops", scope: !842, file: !391, line: 168, baseType: !561, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "spread", scope: !842, file: !391, line: 171, baseType: !851, size: 32, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "SpreadMethod", file: !391, line: 135, baseType: !396)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !842, file: !391, line: 174, baseType: !566, size: 32, offset: 736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !842, file: !391, line: 177, baseType: !561, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !842, file: !391, line: 180, baseType: !855, size: 128, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !391, line: 142, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !391, line: 137, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !856, file: !391, line: 140, baseType: !585, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !856, file: !391, line: 141, baseType: !585, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !842, file: !391, line: 183, baseType: !794, size: 32, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fill_pattern", scope: !821, file: !391, line: 231, baseType: !550, size: 64, offset: 2048)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !821, file: !391, line: 232, baseType: !550, size: 64, offset: 2112)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_pattern", scope: !821, file: !391, line: 233, baseType: !550, size: 64, offset: 2176)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_antialias", scope: !821, file: !391, line: 236, baseType: !566, size: 32, offset: 2240)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "text_antialias", scope: !821, file: !391, line: 237, baseType: !566, size: 32, offset: 2272)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fill_rule", scope: !821, file: !391, line: 240, baseType: !867, size: 32, offset: 2304)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "FillRule", file: !391, line: 68, baseType: !402)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "linecap", scope: !821, file: !391, line: 243, baseType: !869, size: 32, offset: 2336)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineCap", file: !391, line: 83, baseType: !407)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "linejoin", scope: !821, file: !391, line: 246, baseType: !871, size: 32, offset: 2368)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineJoin", file: !391, line: 91, baseType: !413)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "miterlimit", scope: !821, file: !391, line: 249, baseType: !561, size: 64, offset: 2432)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dash_offset", scope: !821, file: !391, line: 252, baseType: !585, size: 64, offset: 2496)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decorate", scope: !821, file: !391, line: 255, baseType: !875, size: 32, offset: 2560)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecorationType", file: !391, line: 53, baseType: !419)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !821, file: !391, line: 258, baseType: !636, size: 32, offset: 2592)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !821, file: !391, line: 261, baseType: !607, size: 64, offset: 2624)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !821, file: !391, line: 264, baseType: !561, size: 64, offset: 2688)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !821, file: !391, line: 267, baseType: !607, size: 64, offset: 2752)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !821, file: !391, line: 268, baseType: !607, size: 64, offset: 2816)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !821, file: !391, line: 269, baseType: !607, size: 64, offset: 2880)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !821, file: !391, line: 272, baseType: !883, size: 32, offset: 2944)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleType", file: !427, line: 47, baseType: !426)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !821, file: !391, line: 275, baseType: !885, size: 32, offset: 2976)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "StretchType", file: !427, line: 38, baseType: !434)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !821, file: !391, line: 278, baseType: !561, size: 64, offset: 3008)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !821, file: !391, line: 281, baseType: !607, size: 64, offset: 3072)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !821, file: !391, line: 284, baseType: !585, size: 64, offset: 3136)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !821, file: !391, line: 287, baseType: !607, size: 64, offset: 3200)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !821, file: !391, line: 290, baseType: !891, size: 32, offset: 3264)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignType", file: !391, line: 36, baseType: !447)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "undercolor", scope: !821, file: !391, line: 293, baseType: !574, size: 64, offset: 3296)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !821, file: !391, line: 294, baseType: !574, size: 64, offset: 3360)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !821, file: !391, line: 297, baseType: !607, size: 64, offset: 3456)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dash_pattern", scope: !821, file: !391, line: 300, baseType: !896, size: 64, offset: 3520)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !821, file: !391, line: 303, baseType: !607, size: 64, offset: 3584)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !821, file: !391, line: 306, baseType: !769, size: 256, offset: 3648)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "clip_units", scope: !821, file: !391, line: 309, baseType: !900, size: 32, offset: 3904)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClipPathUnits", file: !391, line: 44, baseType: !453)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !821, file: !391, line: 312, baseType: !548, size: 16, offset: 3936)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !821, file: !391, line: 315, baseType: !566, size: 32, offset: 3968)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "element_reference", scope: !821, file: !391, line: 318, baseType: !904, size: 1344, offset: 4032)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementReference", file: !391, line: 203, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ElementReference", file: !391, line: 186, size: 1344, elements: !906)
!906 = !{!907, !908, !910, !911, !912, !914}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !905, file: !391, line: 189, baseType: !607, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !391, line: 192, baseType: !909, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReferenceType", file: !391, line: 127, baseType: !459)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !905, file: !391, line: 195, baseType: !841, size: 1024, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !905, file: !391, line: 198, baseType: !561, size: 64, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !905, file: !391, line: 201, baseType: !913, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !391, line: 202, baseType: !913, size: 64, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !821, file: !391, line: 321, baseType: !566, size: 32, offset: 5376)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !821, file: !391, line: 324, baseType: !561, size: 64, offset: 5440)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "kerning", scope: !821, file: !391, line: 327, baseType: !585, size: 64, offset: 5504)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "interword_spacing", scope: !821, file: !391, line: 328, baseType: !585, size: 64, offset: 5568)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "interline_spacing", scope: !821, file: !391, line: 329, baseType: !585, size: 64, offset: 5632)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !821, file: !391, line: 332, baseType: !921, size: 32, offset: 5696)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectionType", file: !391, line: 60, baseType: !463)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !938, !939, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !958, !960, !961, !963, !967, !969, !970}
!927 = !DILocalVariable(name: "image", arg: 1, scope: !812, file: !813, line: 107, type: !550)
!928 = !DILocalVariable(name: "channel", arg: 2, scope: !812, file: !813, line: 108, type: !816)
!929 = !DILocalVariable(name: "draw_info", arg: 3, scope: !812, file: !813, line: 108, type: !818)
!930 = !DILocalVariable(name: "target", arg: 4, scope: !812, file: !813, line: 109, type: !922)
!931 = !DILocalVariable(name: "x_offset", arg: 5, scope: !812, file: !813, line: 109, type: !924)
!932 = !DILocalVariable(name: "y_offset", arg: 6, scope: !812, file: !813, line: 109, type: !924)
!933 = !DILocalVariable(name: "invert", arg: 7, scope: !812, file: !813, line: 110, type: !925)
!934 = !DILocalVariable(name: "floodplane_view", scope: !812, file: !813, line: 131, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !509, line: 50, baseType: !937)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!938 = !DILocalVariable(name: "image_view", scope: !812, file: !813, line: 132, type: !935)
!939 = !DILocalVariable(name: "exception", scope: !812, file: !813, line: 135, type: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!941 = !DILocalVariable(name: "floodplane_image", scope: !812, file: !813, line: 138, type: !550)
!942 = !DILocalVariable(name: "skip", scope: !812, file: !813, line: 141, type: !566)
!943 = !DILocalVariable(name: "fill", scope: !812, file: !813, line: 144, type: !785)
!944 = !DILocalVariable(name: "pixel", scope: !812, file: !813, line: 145, type: !785)
!945 = !DILocalVariable(name: "segment_info", scope: !812, file: !813, line: 148, type: !764)
!946 = !DILocalVariable(name: "fill_color", scope: !812, file: !813, line: 151, type: !574)
!947 = !DILocalVariable(name: "s", scope: !812, file: !813, line: 154, type: !768)
!948 = !DILocalVariable(name: "segment_stack", scope: !812, file: !813, line: 157, type: !768)
!949 = !DILocalVariable(name: "offset", scope: !812, file: !813, line: 160, type: !543)
!950 = !DILocalVariable(name: "start", scope: !812, file: !813, line: 161, type: !543)
!951 = !DILocalVariable(name: "x", scope: !812, file: !813, line: 162, type: !543)
!952 = !DILocalVariable(name: "x1", scope: !812, file: !813, line: 163, type: !543)
!953 = !DILocalVariable(name: "x2", scope: !812, file: !813, line: 164, type: !543)
!954 = !DILocalVariable(name: "y", scope: !812, file: !813, line: 165, type: !543)
!955 = !DILocalVariable(name: "indexes", scope: !956, file: !813, line: 219, type: !957)
!956 = distinct !DILexicalBlock(scope: !812, file: !813, line: 217, column: 3)
!957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !803)
!958 = !DILocalVariable(name: "p", scope: !956, file: !813, line: 222, type: !959)
!959 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !776)
!960 = !DILocalVariable(name: "x", scope: !956, file: !813, line: 225, type: !543)
!961 = !DILocalVariable(name: "q", scope: !956, file: !813, line: 228, type: !962)
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !573)
!963 = !DILocalVariable(name: "p", scope: !964, file: !813, line: 330, type: !959)
!964 = distinct !DILexicalBlock(scope: !965, file: !813, line: 328, column: 3)
!965 = distinct !DILexicalBlock(scope: !966, file: !813, line: 327, column: 3)
!966 = distinct !DILexicalBlock(scope: !812, file: !813, line: 327, column: 3)
!967 = !DILocalVariable(name: "indexes", scope: !964, file: !813, line: 333, type: !968)
!968 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !778)
!969 = !DILocalVariable(name: "x", scope: !964, file: !813, line: 336, type: !543)
!970 = !DILocalVariable(name: "q", scope: !964, file: !813, line: 339, type: !962)
!971 = !DILocation(line: 0, scope: !812)
!972 = !DILocation(line: 143, column: 3, scope: !812)
!973 = !DILocation(line: 144, column: 5, scope: !812)
!974 = !DILocation(line: 145, column: 5, scope: !812)
!975 = !DILocation(line: 150, column: 3, scope: !812)
!976 = !DILocation(line: 151, column: 5, scope: !812)
!977 = !DILocation(line: 172, column: 14, scope: !978)
!978 = distinct !DILexicalBlock(scope: !812, file: !813, line: 172, column: 7)
!979 = !{!980, !981, i64 12976}
!980 = !{!"_Image", !981, i64 0, !981, i64 4, !981, i64 8, !983, i64 16, !981, i64 24, !981, i64 28, !981, i64 32, !983, i64 40, !983, i64 48, !983, i64 56, !983, i64 64, !984, i64 72, !985, i64 80, !985, i64 88, !985, i64 96, !987, i64 104, !988, i64 112, !981, i64 208, !984, i64 216, !981, i64 224, !984, i64 232, !984, i64 240, !984, i64 248, !983, i64 256, !987, i64 264, !987, i64 272, !990, i64 280, !990, i64 312, !990, i64 344, !987, i64 376, !987, i64 384, !987, i64 392, !981, i64 400, !981, i64 404, !981, i64 408, !981, i64 412, !981, i64 416, !981, i64 420, !984, i64 424, !983, i64 432, !983, i64 440, !983, i64 448, !983, i64 456, !983, i64 464, !983, i64 472, !991, i64 480, !992, i64 504, !984, i64 568, !984, i64 576, !984, i64 584, !984, i64 592, !984, i64 600, !984, i64 608, !981, i64 616, !981, i64 4712, !981, i64 8808, !983, i64 12904, !983, i64 12912, !994, i64 12920, !981, i64 12976, !983, i64 12984, !984, i64 12992, !996, i64 13000, !996, i64 13032, !984, i64 13064, !983, i64 13072, !983, i64 13080, !984, i64 13088, !984, i64 13096, !984, i64 13104, !981, i64 13112, !981, i64 13116, !985, i64 13120, !984, i64 13128, !990, i64 13136, !984, i64 13168, !984, i64 13176, !981, i64 13184, !981, i64 13188, !997, i64 13192, !981, i64 13200, !983, i64 13208, !983, i64 13216, !981, i64 13224, !983, i64 13232}
!981 = !{!"omnipotent char", !982, i64 0}
!982 = !{!"Simple C/C++ TBAA"}
!983 = !{!"long", !981, i64 0}
!984 = !{!"any pointer", !981, i64 0}
!985 = !{!"_PixelPacket", !986, i64 0, !986, i64 2, !986, i64 4, !986, i64 6}
!986 = !{!"short", !981, i64 0}
!987 = !{!"double", !981, i64 0}
!988 = !{!"_ChromaticityInfo", !989, i64 0, !989, i64 24, !989, i64 48, !989, i64 72}
!989 = !{!"_PrimaryInfo", !987, i64 0, !987, i64 8, !987, i64 16}
!990 = !{!"_RectangleInfo", !983, i64 0, !983, i64 8, !983, i64 16, !983, i64 24}
!991 = !{!"_ErrorInfo", !987, i64 0, !987, i64 8, !987, i64 16}
!992 = !{!"_TimerInfo", !993, i64 0, !993, i64 24, !981, i64 48, !983, i64 56}
!993 = !{!"_Timer", !987, i64 0, !987, i64 8, !987, i64 16}
!994 = !{!"_ExceptionInfo", !981, i64 0, !995, i64 4, !984, i64 8, !984, i64 16, !984, i64 24, !981, i64 32, !984, i64 40, !983, i64 48}
!995 = !{!"int", !981, i64 0}
!996 = !{!"_ProfileInfo", !984, i64 0, !983, i64 8, !984, i64 16, !983, i64 24}
!997 = !{!"long long", !981, i64 0}
!998 = !DILocation(line: 172, column: 20, scope: !978)
!999 = !DILocation(line: 172, column: 7, scope: !812)
!1000 = !DILocation(line: 173, column: 68, scope: !978)
!1001 = !DILocation(line: 173, column: 12, scope: !978)
!1002 = !DILocation(line: 173, column: 5, scope: !978)
!1003 = !DILocation(line: 176, column: 17, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !812, file: !813, line: 176, column: 7)
!1005 = !DILocation(line: 176, column: 22, scope: !1004)
!1006 = !DILocation(line: 176, column: 55, scope: !1004)
!1007 = !{!980, !983, i64 40}
!1008 = !DILocation(line: 176, column: 35, scope: !1004)
!1009 = !DILocation(line: 176, column: 7, scope: !812)
!1010 = !DILocation(line: 178, column: 55, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !812, file: !813, line: 178, column: 7)
!1012 = !{!980, !983, i64 48}
!1013 = !DILocation(line: 178, column: 35, scope: !1011)
!1014 = !DILocation(line: 178, column: 7, scope: !812)
!1015 = !DILocation(line: 180, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !812, file: !813, line: 180, column: 7)
!1017 = !DILocation(line: 180, column: 47, scope: !1016)
!1018 = !DILocation(line: 180, column: 7, scope: !812)
!1019 = !DILocation(line: 182, column: 31, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !812, file: !813, line: 182, column: 7)
!1021 = !{!980, !981, i64 4}
!1022 = !DILocalVariable(name: "colorspace", arg: 1, scope: !1023, file: !1024, line: 86, type: !1027)
!1023 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !1024, file: !1024, line: 85, type: !1025, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1028)
!1024 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!566, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!1028 = !{!1022}
!1029 = !DILocation(line: 0, scope: !1023, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 182, column: 7, scope: !1020)
!1031 = !DILocation(line: 88, column: 38, scope: !1032, inlinedAt: !1030)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !1024, line: 88, column: 7)
!1033 = !DILocation(line: 183, column: 12, scope: !1020)
!1034 = !DILocation(line: 183, column: 5, scope: !1020)
!1035 = !DILocation(line: 184, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !812, file: !813, line: 184, column: 7)
!1037 = !{!980, !981, i64 32}
!1038 = !DILocation(line: 184, column: 21, scope: !1036)
!1039 = !DILocation(line: 184, column: 37, scope: !1036)
!1040 = !DILocation(line: 185, column: 24, scope: !1036)
!1041 = !{!1042, !986, i64 106}
!1042 = !{!"_DrawInfo", !984, i64 0, !984, i64 8, !990, i64 16, !1043, i64 48, !981, i64 96, !985, i64 100, !985, i64 108, !987, i64 120, !1044, i64 128, !984, i64 256, !984, i64 264, !984, i64 272, !981, i64 280, !981, i64 284, !981, i64 288, !981, i64 292, !981, i64 296, !983, i64 304, !987, i64 312, !981, i64 320, !981, i64 324, !984, i64 328, !983, i64 336, !984, i64 344, !984, i64 352, !984, i64 360, !981, i64 368, !981, i64 372, !983, i64 376, !984, i64 384, !987, i64 392, !984, i64 400, !981, i64 408, !985, i64 412, !985, i64 420, !984, i64 432, !984, i64 440, !984, i64 448, !1045, i64 456, !981, i64 488, !986, i64 492, !981, i64 496, !1048, i64 504, !981, i64 672, !983, i64 680, !987, i64 688, !987, i64 696, !987, i64 704, !981, i64 712}
!1043 = !{!"_AffineMatrix", !987, i64 0, !987, i64 8, !987, i64 16, !987, i64 24, !987, i64 32, !987, i64 40}
!1044 = !{!"_GradientInfo", !981, i64 0, !990, i64 8, !1045, i64 40, !984, i64 72, !983, i64 80, !981, i64 88, !981, i64 92, !983, i64 96, !1046, i64 104, !1047, i64 120}
!1045 = !{!"_SegmentInfo", !987, i64 0, !987, i64 8, !987, i64 16, !987, i64 24}
!1046 = !{!"_PointInfo", !987, i64 0, !987, i64 8}
!1047 = !{!"float", !981, i64 0}
!1048 = !{!"_ElementReference", !984, i64 0, !981, i64 8, !1044, i64 16, !983, i64 144, !984, i64 152, !984, i64 160}
!1049 = !DILocation(line: 185, column: 32, scope: !1036)
!1050 = !DILocation(line: 184, column: 7, scope: !812)
!1051 = !DILocation(line: 186, column: 12, scope: !1036)
!1052 = !DILocation(line: 186, column: 5, scope: !1036)
!1053 = !DILocation(line: 190, column: 60, scope: !812)
!1054 = !DILocation(line: 190, column: 20, scope: !812)
!1055 = !DILocation(line: 191, column: 24, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !812, file: !813, line: 191, column: 7)
!1057 = !DILocation(line: 191, column: 7, scope: !812)
!1058 = !DILocation(line: 193, column: 10, scope: !812)
!1059 = !DILocation(line: 194, column: 16, scope: !812)
!1060 = !DILocation(line: 195, column: 20, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !812, file: !813, line: 195, column: 7)
!1062 = !DILocation(line: 195, column: 7, scope: !812)
!1063 = !DILocation(line: 197, column: 24, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !813, line: 196, column: 5)
!1065 = !DILocation(line: 198, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !813, line: 198, column: 7)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !813, line: 198, column: 7)
!1068 = !DILocation(line: 201, column: 33, scope: !812)
!1069 = !DILocation(line: 210, column: 3, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !813, line: 210, column: 3)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !813, line: 210, column: 3)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !813, line: 210, column: 3)
!1073 = distinct !DILexicalBlock(scope: !812, file: !813, line: 210, column: 3)
!1074 = !DILocation(line: 210, column: 3, scope: !1071)
!1075 = !DILocation(line: 210, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !813, line: 210, column: 3)
!1077 = !{!1045, !987, i64 0}
!1078 = !{!1045, !987, i64 8}
!1079 = !{!1045, !987, i64 16}
!1080 = !{!1045, !987, i64 24}
!1081 = !DILocation(line: 211, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !813, line: 211, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !813, line: 211, column: 3)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !813, line: 211, column: 3)
!1085 = distinct !DILexicalBlock(scope: !812, file: !813, line: 211, column: 3)
!1086 = !DILocation(line: 211, column: 3, scope: !1083)
!1087 = !DILocation(line: 211, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !813, line: 211, column: 3)
!1089 = !DILocation(line: 212, column: 3, scope: !812)
!1090 = !DILocation(line: 213, column: 3, scope: !812)
!1091 = !DILocation(line: 214, column: 14, scope: !812)
!1092 = !DILocation(line: 215, column: 19, scope: !812)
!1093 = !DILocation(line: 216, column: 12, scope: !812)
!1094 = !DILocation(line: 216, column: 3, scope: !812)
!1095 = !DILocation(line: 233, column: 6, scope: !956)
!1096 = !DILocation(line: 234, column: 21, scope: !956)
!1097 = !DILocation(line: 234, column: 8, scope: !956)
!1098 = !DILocation(line: 235, column: 21, scope: !956)
!1099 = !DILocation(line: 235, column: 8, scope: !956)
!1100 = !DILocation(line: 236, column: 25, scope: !956)
!1101 = !DILocation(line: 236, column: 12, scope: !956)
!1102 = !DILocation(line: 237, column: 20, scope: !956)
!1103 = !DILocation(line: 237, column: 7, scope: !956)
!1104 = !DILocation(line: 237, column: 22, scope: !956)
!1105 = !DILocation(line: 241, column: 60, scope: !956)
!1106 = !DILocation(line: 241, column: 7, scope: !956)
!1107 = !DILocation(line: 0, scope: !956)
!1108 = !DILocation(line: 242, column: 7, scope: !956)
!1109 = !DILocation(line: 244, column: 12, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !956, file: !813, line: 244, column: 9)
!1111 = !DILocation(line: 244, column: 43, scope: !1110)
!1112 = !DILocation(line: 246, column: 13, scope: !956)
!1113 = !DILocation(line: 249, column: 18, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !813, line: 249, column: 5)
!1115 = distinct !DILexicalBlock(scope: !956, file: !813, line: 249, column: 5)
!1116 = !DILocation(line: 249, column: 5, scope: !1115)
!1117 = !DILocation(line: 248, column: 6, scope: !956)
!1118 = !DILocation(line: 247, column: 6, scope: !956)
!1119 = !DILocation(line: 251, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !813, line: 251, column: 11)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !813, line: 250, column: 5)
!1122 = !{!985, !986, i64 6}
!1123 = !DILocation(line: 251, column: 22, scope: !1120)
!1124 = !DILocation(line: 251, column: 11, scope: !1121)
!1125 = !DILocation(line: 253, column: 7, scope: !1121)
!1126 = !DILocalVariable(name: "image", arg: 1, scope: !1127, file: !1128, line: 92, type: !1131)
!1127 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1128, file: !1128, line: 92, type: !1129, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1134)
!1128 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1131, !776, !803, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!1134 = !{!1126, !1135, !1136, !1137}
!1135 = !DILocalVariable(name: "color", arg: 2, scope: !1127, file: !1128, line: 93, type: !776)
!1136 = !DILocalVariable(name: "index", arg: 3, scope: !1127, file: !1128, line: 93, type: !803)
!1137 = !DILocalVariable(name: "pixel", arg: 4, scope: !1127, file: !1128, line: 93, type: !1133)
!1138 = !DILocation(line: 0, scope: !1127, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 253, column: 7, scope: !1121)
!1140 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1139)
!1141 = !{!985, !986, i64 4}
!1142 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1139)
!1143 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1139)
!1144 = !{!1145, !1047, i64 32}
!1145 = !{!"_MagickPixelPacket", !981, i64 0, !981, i64 4, !981, i64 8, !987, i64 16, !983, i64 24, !1047, i64 32, !1047, i64 36, !1047, i64 40, !1047, i64 44, !1047, i64 48}
!1146 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1139)
!1147 = !{!985, !986, i64 2}
!1148 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1139)
!1149 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1139)
!1150 = !{!1145, !1047, i64 36}
!1151 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1139)
!1152 = !{!985, !986, i64 0}
!1153 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1139)
!1154 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1139)
!1155 = !{!1145, !1047, i64 40}
!1156 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1139)
!1157 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1139)
!1158 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1139)
!1159 = !{!1145, !1047, i64 44}
!1160 = !DILocation(line: 99, column: 26, scope: !1161, inlinedAt: !1139)
!1161 = distinct !DILexicalBlock(scope: !1127, file: !1128, line: 99, column: 7)
!1162 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !1139)
!1163 = !DILocation(line: 253, column: 43, scope: !1121)
!1164 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !1139)
!1165 = !{!986, !986, i64 0}
!1166 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !1139)
!1167 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !1139)
!1168 = !{!1145, !1047, i64 48}
!1169 = !DILocation(line: 101, column: 5, scope: !1161, inlinedAt: !1139)
!1170 = !DILocation(line: 254, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1121, file: !813, line: 254, column: 11)
!1172 = !DILocation(line: 254, column: 47, scope: !1171)
!1173 = !DILocation(line: 254, column: 11, scope: !1121)
!1174 = !DILocation(line: 256, column: 17, scope: !1121)
!1175 = !DILocation(line: 257, column: 8, scope: !1121)
!1176 = !DILocation(line: 258, column: 8, scope: !1121)
!1177 = !DILocation(line: 249, column: 25, scope: !1114)
!1178 = distinct !{!1178, !1116, !1179, !1180, !1181}
!1179 = !DILocation(line: 259, column: 5, scope: !1115)
!1180 = !{!"llvm.loop.mustprogress"}
!1181 = !{!"llvm.loop.unroll.disable"}
!1182 = !DILocation(line: 0, scope: !1115)
!1183 = !DILocation(line: 260, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !956, file: !813, line: 260, column: 9)
!1185 = !DILocation(line: 260, column: 65, scope: !1184)
!1186 = !DILocation(line: 260, column: 9, scope: !956)
!1187 = !DILocation(line: 262, column: 12, scope: !956)
!1188 = !DILocation(line: 262, column: 10, scope: !956)
!1189 = !DILocation(line: 263, column: 9, scope: !956)
!1190 = !DILocation(line: 265, column: 16, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !813, line: 264, column: 7)
!1192 = distinct !DILexicalBlock(scope: !956, file: !813, line: 263, column: 9)
!1193 = !DILocation(line: 266, column: 19, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !813, line: 266, column: 13)
!1195 = !DILocation(line: 266, column: 13, scope: !1191)
!1196 = !DILocation(line: 267, column: 11, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !813, line: 267, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !813, line: 267, column: 11)
!1199 = !DILocation(line: 267, column: 11, scope: !1198)
!1200 = !DILocation(line: 267, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !813, line: 267, column: 11)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !813, line: 267, column: 11)
!1203 = !DILocation(line: 267, column: 11, scope: !1202)
!1204 = !DILocation(line: 267, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !813, line: 267, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1197, file: !813, line: 267, column: 11)
!1207 = !DILocation(line: 267, column: 11, scope: !1206)
!1208 = !DILocation(line: 267, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !813, line: 267, column: 11)
!1210 = !DILocation(line: 270, column: 5, scope: !956)
!1211 = !DILocation(line: 272, column: 16, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !813, line: 272, column: 11)
!1213 = distinct !DILexicalBlock(scope: !956, file: !813, line: 271, column: 5)
!1214 = !DILocation(line: 272, column: 11, scope: !1213)
!1215 = !DILocation(line: 274, column: 36, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !813, line: 274, column: 15)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !813, line: 273, column: 9)
!1218 = !DILocation(line: 274, column: 17, scope: !1216)
!1219 = !DILocation(line: 274, column: 15, scope: !1217)
!1220 = !DILocation(line: 276, column: 72, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !813, line: 275, column: 13)
!1222 = !DILocation(line: 276, column: 17, scope: !1221)
!1223 = !DILocation(line: 279, column: 24, scope: !1221)
!1224 = !DILocation(line: 279, column: 31, scope: !1221)
!1225 = !DILocation(line: 278, column: 17, scope: !1221)
!1226 = !DILocation(line: 280, column: 22, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !813, line: 280, column: 19)
!1228 = !DILocation(line: 280, column: 53, scope: !1227)
!1229 = !DILocation(line: 283, column: 23, scope: !1221)
!1230 = !DILocation(line: 284, column: 44, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !813, line: 284, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1221, file: !813, line: 284, column: 15)
!1233 = !DILocation(line: 284, column: 25, scope: !1231)
!1234 = !DILocation(line: 284, column: 15, scope: !1232)
!1235 = !DILocation(line: 286, column: 24, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !813, line: 286, column: 21)
!1237 = distinct !DILexicalBlock(scope: !1231, file: !813, line: 285, column: 15)
!1238 = !DILocation(line: 286, column: 32, scope: !1236)
!1239 = !DILocation(line: 286, column: 21, scope: !1237)
!1240 = !DILocation(line: 288, column: 17, scope: !1237)
!1241 = !DILocation(line: 0, scope: !1127, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 288, column: 17, scope: !1237)
!1243 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1242)
!1244 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1242)
!1245 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1242)
!1246 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1242)
!1247 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1242)
!1248 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1242)
!1249 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1242)
!1250 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1242)
!1251 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1242)
!1252 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1242)
!1253 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1242)
!1254 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1242)
!1255 = !DILocation(line: 99, column: 26, scope: !1161, inlinedAt: !1242)
!1256 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !1242)
!1257 = !DILocation(line: 288, column: 53, scope: !1237)
!1258 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !1242)
!1259 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !1242)
!1260 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !1242)
!1261 = !DILocation(line: 101, column: 5, scope: !1161, inlinedAt: !1242)
!1262 = !DILocation(line: 289, column: 21, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1237, file: !813, line: 289, column: 21)
!1264 = !DILocation(line: 289, column: 57, scope: !1263)
!1265 = !DILocation(line: 289, column: 21, scope: !1237)
!1266 = !DILocation(line: 291, column: 27, scope: !1237)
!1267 = !DILocation(line: 292, column: 18, scope: !1237)
!1268 = !DILocation(line: 293, column: 18, scope: !1237)
!1269 = !DILocation(line: 284, column: 54, scope: !1231)
!1270 = distinct !{!1270, !1234, !1271, !1180, !1181}
!1271 = !DILocation(line: 294, column: 15, scope: !1232)
!1272 = !DILocation(line: 295, column: 19, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1221, file: !813, line: 295, column: 19)
!1274 = !DILocation(line: 295, column: 75, scope: !1273)
!1275 = !DILocation(line: 295, column: 19, scope: !1221)
!1276 = !DILocation(line: 268, column: 10, scope: !1191)
!1277 = !DILocation(line: 298, column: 11, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !813, line: 298, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1217, file: !813, line: 298, column: 11)
!1280 = !DILocation(line: 298, column: 11, scope: !1279)
!1281 = !DILocation(line: 298, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !813, line: 298, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !813, line: 298, column: 11)
!1284 = !DILocation(line: 298, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !813, line: 298, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !813, line: 298, column: 11)
!1287 = !DILocation(line: 298, column: 11, scope: !1286)
!1288 = !DILocation(line: 298, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !813, line: 298, column: 11)
!1290 = !DILocation(line: 299, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1217, file: !813, line: 299, column: 15)
!1292 = !DILocation(line: 299, column: 15, scope: !1217)
!1293 = !DILocation(line: 300, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !813, line: 300, column: 13)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !813, line: 300, column: 13)
!1296 = !DILocation(line: 300, column: 13, scope: !1295)
!1297 = !DILocation(line: 300, column: 13, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !813, line: 300, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !813, line: 300, column: 13)
!1300 = !DILocation(line: 300, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !813, line: 300, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !813, line: 300, column: 13)
!1303 = !DILocation(line: 300, column: 13, scope: !1302)
!1304 = !DILocation(line: 300, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !813, line: 300, column: 13)
!1306 = !DILocation(line: 303, column: 8, scope: !1213)
!1307 = !DILocation(line: 304, column: 13, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1213, file: !813, line: 304, column: 11)
!1309 = !DILocation(line: 304, column: 11, scope: !1213)
!1310 = !DILocation(line: 306, column: 66, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !813, line: 305, column: 9)
!1312 = !DILocation(line: 306, column: 68, scope: !1311)
!1313 = !DILocation(line: 306, column: 13, scope: !1311)
!1314 = !DILocation(line: 308, column: 13, scope: !1311)
!1315 = !DILocation(line: 310, column: 18, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !813, line: 310, column: 15)
!1317 = !DILocation(line: 310, column: 49, scope: !1316)
!1318 = !DILocation(line: 312, column: 19, scope: !1311)
!1319 = !DILocation(line: 313, column: 11, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !813, line: 313, column: 11)
!1321 = !DILocation(line: 315, column: 20, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !813, line: 315, column: 17)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !813, line: 314, column: 11)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !813, line: 313, column: 11)
!1325 = !DILocation(line: 315, column: 28, scope: !1322)
!1326 = !DILocation(line: 315, column: 17, scope: !1323)
!1327 = !DILocation(line: 317, column: 13, scope: !1323)
!1328 = !DILocation(line: 0, scope: !1127, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 317, column: 13, scope: !1323)
!1330 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1329)
!1331 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1329)
!1332 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1329)
!1333 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1329)
!1334 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1329)
!1335 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1329)
!1336 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1329)
!1337 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1329)
!1338 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1329)
!1339 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1329)
!1340 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1329)
!1341 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1329)
!1342 = !DILocation(line: 99, column: 26, scope: !1161, inlinedAt: !1329)
!1343 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !1329)
!1344 = !DILocation(line: 317, column: 49, scope: !1323)
!1345 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !1329)
!1346 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !1329)
!1347 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !1329)
!1348 = !DILocation(line: 101, column: 5, scope: !1161, inlinedAt: !1329)
!1349 = !DILocation(line: 318, column: 17, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1323, file: !813, line: 318, column: 17)
!1351 = !DILocation(line: 318, column: 53, scope: !1350)
!1352 = !DILocation(line: 318, column: 17, scope: !1323)
!1353 = !DILocation(line: 320, column: 14, scope: !1323)
!1354 = !DILocation(line: 321, column: 14, scope: !1323)
!1355 = !DILocation(line: 313, column: 29, scope: !1324)
!1356 = !DILocation(line: 313, column: 21, scope: !1324)
!1357 = distinct !{!1357, !1319, !1358, !1180, !1181}
!1358 = !DILocation(line: 322, column: 11, scope: !1320)
!1359 = !DILocation(line: 325, column: 16, scope: !956)
!1360 = !DILocation(line: 325, column: 5, scope: !1213)
!1361 = distinct !{!1361, !1210, !1362, !1180, !1181}
!1362 = !DILocation(line: 325, column: 21, scope: !956)
!1363 = !DILocation(line: 327, column: 34, scope: !965)
!1364 = !DILocation(line: 327, column: 15, scope: !965)
!1365 = !DILocation(line: 327, column: 3, scope: !966)
!1366 = !DILocation(line: 344, column: 60, scope: !964)
!1367 = !DILocation(line: 344, column: 7, scope: !964)
!1368 = !DILocation(line: 0, scope: !964)
!1369 = !DILocation(line: 346, column: 57, scope: !964)
!1370 = !DILocation(line: 346, column: 7, scope: !964)
!1371 = !DILocation(line: 347, column: 12, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !964, file: !813, line: 347, column: 9)
!1373 = !DILocation(line: 347, column: 43, scope: !1372)
!1374 = !DILocation(line: 349, column: 13, scope: !964)
!1375 = !DILocation(line: 350, column: 36, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !813, line: 350, column: 5)
!1377 = distinct !DILexicalBlock(scope: !964, file: !813, line: 350, column: 5)
!1378 = !DILocation(line: 350, column: 17, scope: !1376)
!1379 = !DILocation(line: 350, column: 5, scope: !1377)
!1380 = !DILocation(line: 352, column: 11, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !813, line: 352, column: 11)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !813, line: 351, column: 5)
!1383 = !DILocation(line: 352, column: 30, scope: !1381)
!1384 = !DILocation(line: 352, column: 11, scope: !1382)
!1385 = !DILocalVariable(name: "draw_info", arg: 1, scope: !1386, file: !1387, line: 29, type: !818)
!1386 = distinct !DISubprogram(name: "GetFillColor", scope: !1387, file: !1387, line: 29, type: !1388, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1390)
!1387 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a80397ab3836f40b9c96191ff268033")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!566, !818, !924, !924, !573}
!1390 = !{!1385, !1391, !1392, !1393, !1394, !1395}
!1391 = !DILocalVariable(name: "x", arg: 2, scope: !1386, file: !1387, line: 30, type: !924)
!1392 = !DILocalVariable(name: "y", arg: 3, scope: !1386, file: !1387, line: 30, type: !924)
!1393 = !DILocalVariable(name: "pixel", arg: 4, scope: !1386, file: !1387, line: 30, type: !573)
!1394 = !DILocalVariable(name: "pattern", scope: !1386, file: !1387, line: 33, type: !550)
!1395 = !DILocalVariable(name: "status", scope: !1386, file: !1387, line: 36, type: !566)
!1396 = !DILocation(line: 0, scope: !1386, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 354, column: 18, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1381, file: !813, line: 353, column: 9)
!1399 = !DILocation(line: 38, column: 22, scope: !1386, inlinedAt: !1397)
!1400 = !{!1042, !984, i64 256}
!1401 = !DILocation(line: 39, column: 15, scope: !1402, inlinedAt: !1397)
!1402 = distinct !DILexicalBlock(scope: !1386, file: !1387, line: 39, column: 7)
!1403 = !DILocation(line: 39, column: 7, scope: !1386, inlinedAt: !1397)
!1404 = !DILocation(line: 41, column: 25, scope: !1405, inlinedAt: !1397)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !1387, line: 40, column: 5)
!1406 = !DILocation(line: 42, column: 7, scope: !1405, inlinedAt: !1397)
!1407 = !DILocation(line: 45, column: 28, scope: !1386, inlinedAt: !1397)
!1408 = !{!980, !983, i64 13152}
!1409 = !DILocation(line: 45, column: 6, scope: !1386, inlinedAt: !1397)
!1410 = !DILocation(line: 45, column: 53, scope: !1386, inlinedAt: !1397)
!1411 = !{!980, !983, i64 13160}
!1412 = !DILocation(line: 45, column: 31, scope: !1386, inlinedAt: !1397)
!1413 = !DILocation(line: 46, column: 15, scope: !1386, inlinedAt: !1397)
!1414 = !DILocation(line: 44, column: 10, scope: !1386, inlinedAt: !1397)
!1415 = !DILocation(line: 47, column: 16, scope: !1416, inlinedAt: !1397)
!1416 = distinct !DILexicalBlock(scope: !1386, file: !1387, line: 47, column: 7)
!1417 = !DILocation(line: 47, column: 22, scope: !1416, inlinedAt: !1397)
!1418 = !DILocation(line: 47, column: 7, scope: !1386, inlinedAt: !1397)
!1419 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 355, column: 11, scope: !1398)
!1421 = !DILocation(line: 48, column: 19, scope: !1416, inlinedAt: !1397)
!1422 = !DILocation(line: 48, column: 5, scope: !1416, inlinedAt: !1397)
!1423 = !DILocation(line: 0, scope: !1127, inlinedAt: !1420)
!1424 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1420)
!1425 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1420)
!1426 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1420)
!1427 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1420)
!1428 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1420)
!1429 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1420)
!1430 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1420)
!1431 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1420)
!1432 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1420)
!1433 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1420)
!1434 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1420)
!1435 = !DILocation(line: 356, column: 22, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 356, column: 15)
!1437 = !DILocation(line: 356, column: 33, scope: !1436)
!1438 = !DILocation(line: 356, column: 15, scope: !1398)
!1439 = !DILocalVariable(name: "pixel", arg: 1, scope: !1440, file: !1024, line: 30, type: !1133)
!1440 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !1024, file: !1024, line: 30, type: !1441, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1133}
!1443 = !{!1439, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1444 = !DILocalVariable(name: "black", scope: !1440, file: !1024, line: 33, type: !794)
!1445 = !DILocalVariable(name: "blue", scope: !1440, file: !1024, line: 34, type: !794)
!1446 = !DILocalVariable(name: "cyan", scope: !1440, file: !1024, line: 35, type: !794)
!1447 = !DILocalVariable(name: "green", scope: !1440, file: !1024, line: 36, type: !794)
!1448 = !DILocalVariable(name: "magenta", scope: !1440, file: !1024, line: 37, type: !794)
!1449 = !DILocalVariable(name: "red", scope: !1440, file: !1024, line: 38, type: !794)
!1450 = !DILocalVariable(name: "yellow", scope: !1440, file: !1024, line: 39, type: !794)
!1451 = !DILocation(line: 0, scope: !1440, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 357, column: 13, scope: !1436)
!1453 = !DILocation(line: 41, column: 14, scope: !1454, inlinedAt: !1452)
!1454 = distinct !DILexicalBlock(scope: !1440, file: !1024, line: 41, column: 7)
!1455 = !{!1145, !981, i64 4}
!1456 = !DILocation(line: 41, column: 25, scope: !1454, inlinedAt: !1452)
!1457 = !DILocation(line: 41, column: 7, scope: !1440, inlinedAt: !1452)
!1458 = !DILocation(line: 43, column: 24, scope: !1459, inlinedAt: !1452)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !1024, line: 42, column: 5)
!1460 = !DILocation(line: 43, column: 23, scope: !1459, inlinedAt: !1452)
!1461 = !DILocation(line: 43, column: 11, scope: !1459, inlinedAt: !1452)
!1462 = !DILocation(line: 44, column: 26, scope: !1459, inlinedAt: !1452)
!1463 = !DILocation(line: 44, column: 25, scope: !1459, inlinedAt: !1452)
!1464 = !DILocation(line: 44, column: 13, scope: !1459, inlinedAt: !1452)
!1465 = !DILocation(line: 45, column: 25, scope: !1459, inlinedAt: !1452)
!1466 = !DILocation(line: 45, column: 24, scope: !1459, inlinedAt: !1452)
!1467 = !DILocation(line: 45, column: 12, scope: !1459, inlinedAt: !1452)
!1468 = !DILocation(line: 46, column: 5, scope: !1459, inlinedAt: !1452)
!1469 = !DILocation(line: 49, column: 11, scope: !1470, inlinedAt: !1452)
!1470 = distinct !DILexicalBlock(scope: !1454, file: !1024, line: 48, column: 5)
!1471 = !DILocation(line: 50, column: 37, scope: !1470, inlinedAt: !1452)
!1472 = !DILocation(line: 50, column: 13, scope: !1470, inlinedAt: !1452)
!1473 = !DILocation(line: 51, column: 36, scope: !1470, inlinedAt: !1452)
!1474 = !DILocation(line: 51, column: 12, scope: !1470, inlinedAt: !1452)
!1475 = !DILocation(line: 0, scope: !1454, inlinedAt: !1452)
!1476 = !DILocation(line: 53, column: 8, scope: !1477, inlinedAt: !1452)
!1477 = distinct !DILexicalBlock(scope: !1440, file: !1024, line: 53, column: 7)
!1478 = !DILocation(line: 53, column: 18, scope: !1477, inlinedAt: !1452)
!1479 = !DILocation(line: 53, column: 35, scope: !1477, inlinedAt: !1452)
!1480 = !DILocation(line: 53, column: 39, scope: !1477, inlinedAt: !1452)
!1481 = !DILocation(line: 53, column: 51, scope: !1477, inlinedAt: !1452)
!1482 = !DILocation(line: 53, column: 68, scope: !1477, inlinedAt: !1452)
!1483 = !DILocation(line: 54, column: 8, scope: !1477, inlinedAt: !1452)
!1484 = !DILocation(line: 54, column: 19, scope: !1477, inlinedAt: !1452)
!1485 = !DILocation(line: 53, column: 7, scope: !1440, inlinedAt: !1452)
!1486 = !DILocation(line: 59, column: 8, scope: !1440, inlinedAt: !1452)
!1487 = !DILocation(line: 60, column: 11, scope: !1440, inlinedAt: !1452)
!1488 = !DILocation(line: 61, column: 10, scope: !1440, inlinedAt: !1452)
!1489 = !DILocation(line: 63, column: 15, scope: !1490, inlinedAt: !1452)
!1490 = distinct !DILexicalBlock(scope: !1440, file: !1024, line: 63, column: 7)
!1491 = !DILocation(line: 63, column: 7, scope: !1440, inlinedAt: !1452)
!1492 = !DILocation(line: 64, column: 5, scope: !1490, inlinedAt: !1452)
!1493 = !DILocation(line: 65, column: 14, scope: !1494, inlinedAt: !1452)
!1494 = distinct !DILexicalBlock(scope: !1440, file: !1024, line: 65, column: 7)
!1495 = !DILocation(line: 65, column: 7, scope: !1440, inlinedAt: !1452)
!1496 = !DILocation(line: 66, column: 5, scope: !1494, inlinedAt: !1452)
!1497 = !DILocation(line: 67, column: 31, scope: !1440, inlinedAt: !1452)
!1498 = !DILocation(line: 67, column: 26, scope: !1440, inlinedAt: !1452)
!1499 = !DILocation(line: 67, column: 44, scope: !1440, inlinedAt: !1452)
!1500 = !DILocation(line: 67, column: 43, scope: !1440, inlinedAt: !1452)
!1501 = !DILocation(line: 67, column: 38, scope: !1440, inlinedAt: !1452)
!1502 = !DILocation(line: 67, column: 8, scope: !1440, inlinedAt: !1452)
!1503 = !DILocation(line: 68, column: 37, scope: !1440, inlinedAt: !1452)
!1504 = !DILocation(line: 68, column: 29, scope: !1440, inlinedAt: !1452)
!1505 = !DILocation(line: 68, column: 44, scope: !1440, inlinedAt: !1452)
!1506 = !DILocation(line: 68, column: 11, scope: !1440, inlinedAt: !1452)
!1507 = !DILocation(line: 69, column: 35, scope: !1440, inlinedAt: !1452)
!1508 = !DILocation(line: 69, column: 28, scope: !1440, inlinedAt: !1452)
!1509 = !DILocation(line: 69, column: 42, scope: !1440, inlinedAt: !1452)
!1510 = !DILocation(line: 69, column: 10, scope: !1440, inlinedAt: !1452)
!1511 = !DILocation(line: 70, column: 20, scope: !1440, inlinedAt: !1452)
!1512 = !DILocation(line: 71, column: 26, scope: !1440, inlinedAt: !1452)
!1513 = !DILocation(line: 71, column: 13, scope: !1440, inlinedAt: !1452)
!1514 = !DILocation(line: 72, column: 28, scope: !1440, inlinedAt: !1452)
!1515 = !DILocation(line: 72, column: 15, scope: !1440, inlinedAt: !1452)
!1516 = !DILocation(line: 73, column: 27, scope: !1440, inlinedAt: !1452)
!1517 = !DILocation(line: 73, column: 14, scope: !1440, inlinedAt: !1452)
!1518 = !DILocation(line: 74, column: 28, scope: !1440, inlinedAt: !1452)
!1519 = !DILocation(line: 75, column: 1, scope: !1440, inlinedAt: !1452)
!1520 = !DILocation(line: 357, column: 13, scope: !1436)
!1521 = !DILocation(line: 358, column: 15, scope: !1398)
!1522 = !DILocation(line: 359, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 358, column: 15)
!1524 = !DILocalVariable(name: "value", arg: 1, scope: !1525, file: !147, line: 87, type: !1528)
!1525 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1526, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1529)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!548, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!1529 = !{!1524}
!1530 = !DILocation(line: 0, scope: !1525, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 359, column: 13, scope: !1523)
!1532 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !1531)
!1533 = distinct !DILexicalBlock(scope: !1525, file: !147, line: 92, column: 7)
!1534 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1531)
!1535 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !1531)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !147, line: 94, column: 7)
!1537 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !1531)
!1538 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !1531)
!1539 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !1531)
!1540 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !1531)
!1541 = !DILocation(line: 360, column: 15, scope: !1398)
!1542 = !DILocation(line: 361, column: 13, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 360, column: 15)
!1544 = !DILocation(line: 0, scope: !1525, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 361, column: 13, scope: !1543)
!1546 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !1545)
!1547 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1545)
!1548 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !1545)
!1549 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !1545)
!1550 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !1545)
!1551 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !1545)
!1552 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !1545)
!1553 = !DILocation(line: 362, column: 15, scope: !1398)
!1554 = !DILocation(line: 363, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 362, column: 15)
!1556 = !DILocation(line: 0, scope: !1525, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 363, column: 13, scope: !1555)
!1558 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !1557)
!1559 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1557)
!1560 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !1557)
!1561 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !1557)
!1562 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !1557)
!1563 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !1557)
!1564 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !1557)
!1565 = !DILocation(line: 364, column: 49, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 364, column: 15)
!1567 = !DILocation(line: 365, column: 32, scope: !1566)
!1568 = !DILocation(line: 365, column: 40, scope: !1566)
!1569 = !DILocation(line: 364, column: 15, scope: !1398)
!1570 = !DILocation(line: 366, column: 13, scope: !1566)
!1571 = !DILocation(line: 0, scope: !1525, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 366, column: 13, scope: !1566)
!1573 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !1572)
!1574 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1572)
!1575 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !1572)
!1576 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !1572)
!1577 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !1572)
!1578 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !1572)
!1579 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !1572)
!1580 = !DILocation(line: 367, column: 47, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1398, file: !813, line: 367, column: 15)
!1582 = !DILocation(line: 368, column: 23, scope: !1581)
!1583 = !DILocation(line: 368, column: 34, scope: !1581)
!1584 = !DILocation(line: 367, column: 15, scope: !1398)
!1585 = !DILocation(line: 369, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !813, line: 369, column: 13)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !813, line: 369, column: 13)
!1588 = !DILocation(line: 0, scope: !1525, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 369, column: 13, scope: !1586)
!1590 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !1589)
!1591 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1589)
!1592 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !1589)
!1593 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !1589)
!1594 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !1589)
!1595 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !1589)
!1596 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !1589)
!1597 = !DILocation(line: 371, column: 8, scope: !1382)
!1598 = !DILocation(line: 372, column: 8, scope: !1382)
!1599 = !DILocation(line: 350, column: 46, scope: !1376)
!1600 = distinct !{!1600, !1379, !1601, !1180, !1181}
!1601 = !DILocation(line: 373, column: 5, scope: !1377)
!1602 = !DILocation(line: 374, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !964, file: !813, line: 374, column: 9)
!1604 = !DILocation(line: 374, column: 60, scope: !1603)
!1605 = !DILocation(line: 0, scope: !965)
!1606 = !DILocation(line: 327, column: 41, scope: !965)
!1607 = distinct !{!1607, !1365, !1608, !1180, !1181}
!1608 = !DILocation(line: 376, column: 3, scope: !966)
!1609 = !DILocation(line: 0, scope: !966)
!1610 = !DILocation(line: 377, column: 19, scope: !812)
!1611 = !DILocation(line: 378, column: 14, scope: !812)
!1612 = !DILocation(line: 379, column: 16, scope: !812)
!1613 = !DILocation(line: 380, column: 20, scope: !812)
!1614 = !DILocation(line: 381, column: 32, scope: !812)
!1615 = !DILocation(line: 381, column: 12, scope: !812)
!1616 = !DILocation(line: 381, column: 10, scope: !812)
!1617 = !DILocation(line: 381, column: 3, scope: !812)
!1618 = !DILocation(line: 382, column: 1, scope: !812)
!1619 = !DISubprogram(name: "LogMagickEvent", scope: !469, file: !469, line: 83, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!566, !1622, !676, !676, !1624, !676, null}
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !469, line: 58, baseType: !468)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!1625 = !{}
!1626 = !DISubprogram(name: "SetImageStorageClass", scope: !77, file: !77, line: 542, type: !1627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!566, !550, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!1630 = !DISubprogram(name: "SetImageColorspace", scope: !15, file: !15, line: 65, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!566, !550, !1027}
!1633 = !DISubprogram(name: "SetImageAlphaChannel", scope: !1634, file: !1634, line: 35, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1634 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!566, !550, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !77, line: 45, baseType: !493)
!1639 = !DISubprogram(name: "CloneImage", scope: !77, file: !77, line: 508, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!550, !1131, !1624, !1624, !925, !940}
!1642 = !DISubprogram(name: "AcquireVirtualMemory", scope: !766, file: !766, line: 34, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!764, !1624, !1624}
!1645 = !DISubprogram(name: "DestroyImage", scope: !77, file: !77, line: 510, type: !1646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!550, !550}
!1648 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!566, !940, !676, !676, !1624, !1651, !676, !676, null}
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!1652 = !DISubprogram(name: "GetVirtualMemoryBlob", scope: !766, file: !766, line: 49, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!603, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!1657 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1131, !1133}
!1660 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !509, file: !509, line: 55, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!935, !1131, !940}
!1663 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !509, file: !509, line: 53, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1664 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !509, file: !509, line: 69, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!776, !1667, !924, !924, !1624, !1624, !940}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!1669 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !509, file: !509, line: 99, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!573, !935, !924, !924, !1624, !1624, !940}
!1672 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !509, file: !509, line: 66, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!803, !1667}
!1675 = !DISubprogram(name: "IsMagickColorSimilar", scope: !649, file: !649, line: 82, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!566, !922, !922}
!1678 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !509, file: !509, line: 89, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!566, !935, !940}
!1681 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !509, file: !509, line: 77, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!778, !935}
!1684 = !DISubprogram(name: "DestroyCacheView", scope: !509, file: !509, line: 57, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!935, !935}
!1687 = !DISubprogram(name: "RelinquishVirtualMemory", scope: !766, file: !766, line: 35, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!764, !764}
!1690 = distinct !DISubprogram(name: "GradientImage", scope: !813, file: !813, line: 428, type: !1691, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1695)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!566, !550, !1693, !1694, !776, !776}
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1703, !1705, !1706}
!1696 = !DILocalVariable(name: "image", arg: 1, scope: !1690, file: !813, line: 428, type: !550)
!1697 = !DILocalVariable(name: "type", arg: 2, scope: !1690, file: !813, line: 429, type: !1693)
!1698 = !DILocalVariable(name: "method", arg: 3, scope: !1690, file: !813, line: 429, type: !1694)
!1699 = !DILocalVariable(name: "start_color", arg: 4, scope: !1690, file: !813, line: 430, type: !776)
!1700 = !DILocalVariable(name: "stop_color", arg: 5, scope: !1690, file: !813, line: 430, type: !776)
!1701 = !DILocalVariable(name: "draw_info", scope: !1690, file: !813, line: 433, type: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1703 = !DILocalVariable(name: "gradient", scope: !1690, file: !813, line: 436, type: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1705 = !DILocalVariable(name: "status", scope: !1690, file: !813, line: 439, type: !566)
!1706 = !DILocalVariable(name: "i", scope: !1690, file: !813, line: 442, type: !543)
!1707 = !DILocation(line: 0, scope: !1690)
!1708 = !DILocation(line: 449, column: 14, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1690, file: !813, line: 449, column: 7)
!1710 = !DILocation(line: 449, column: 20, scope: !1709)
!1711 = !DILocation(line: 449, column: 7, scope: !1690)
!1712 = !DILocation(line: 450, column: 68, scope: !1709)
!1713 = !DILocation(line: 450, column: 12, scope: !1709)
!1714 = !DILocation(line: 450, column: 5, scope: !1709)
!1715 = !DILocation(line: 453, column: 13, scope: !1690)
!1716 = !DILocation(line: 454, column: 25, scope: !1690)
!1717 = !DILocation(line: 455, column: 17, scope: !1690)
!1718 = !{!1044, !981, i64 0}
!1719 = !DILocation(line: 456, column: 39, scope: !1690)
!1720 = !DILocation(line: 456, column: 13, scope: !1690)
!1721 = !DILocation(line: 456, column: 31, scope: !1690)
!1722 = !{!1044, !983, i64 8}
!1723 = !DILocation(line: 457, column: 40, scope: !1690)
!1724 = !DILocation(line: 457, column: 26, scope: !1690)
!1725 = !DILocation(line: 457, column: 32, scope: !1690)
!1726 = !{!1044, !983, i64 16}
!1727 = !DILocation(line: 458, column: 32, scope: !1690)
!1728 = !DILocation(line: 458, column: 55, scope: !1690)
!1729 = !DILocation(line: 458, column: 29, scope: !1690)
!1730 = !DILocation(line: 458, column: 31, scope: !1690)
!1731 = !{!1044, !987, i64 56}
!1732 = !DILocation(line: 459, column: 32, scope: !1690)
!1733 = !DILocation(line: 459, column: 52, scope: !1690)
!1734 = !DILocation(line: 459, column: 29, scope: !1690)
!1735 = !DILocation(line: 459, column: 31, scope: !1690)
!1736 = !{!1044, !987, i64 64}
!1737 = !DILocation(line: 460, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1690, file: !813, line: 460, column: 7)
!1739 = !DILocation(line: 460, column: 32, scope: !1738)
!1740 = !DILocation(line: 461, column: 33, scope: !1738)
!1741 = !DILocation(line: 461, column: 5, scope: !1738)
!1742 = !DILocation(line: 462, column: 57, scope: !1690)
!1743 = !DILocation(line: 462, column: 59, scope: !1690)
!1744 = !DILocation(line: 462, column: 13, scope: !1690)
!1745 = !DILocation(line: 462, column: 21, scope: !1690)
!1746 = !{!1044, !987, i64 104}
!1747 = !DILocation(line: 463, column: 59, scope: !1690)
!1748 = !DILocation(line: 463, column: 20, scope: !1690)
!1749 = !DILocation(line: 463, column: 21, scope: !1690)
!1750 = !{!1044, !987, i64 112}
!1751 = !DILocalVariable(name: "x", arg: 1, scope: !1752, file: !813, line: 423, type: !1755)
!1752 = distinct !DISubprogram(name: "MagickMax", scope: !813, file: !813, line: 423, type: !1753, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1756)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!585, !1755, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!1756 = !{!1751, !1757}
!1757 = !DILocalVariable(name: "y", arg: 2, scope: !1752, file: !813, line: 423, type: !1755)
!1758 = !DILocation(line: 0, scope: !1752, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 464, column: 20, scope: !1690)
!1760 = !DILocation(line: 425, column: 12, scope: !1752, inlinedAt: !1759)
!1761 = !DILocation(line: 425, column: 10, scope: !1752, inlinedAt: !1759)
!1762 = !DILocation(line: 464, column: 20, scope: !1690)
!1763 = !DILocation(line: 464, column: 13, scope: !1690)
!1764 = !DILocation(line: 464, column: 19, scope: !1690)
!1765 = !{!1044, !1047, i64 120}
!1766 = !DILocation(line: 465, column: 13, scope: !1690)
!1767 = !DILocation(line: 465, column: 19, scope: !1690)
!1768 = !{!1044, !981, i64 88}
!1769 = !DILocation(line: 469, column: 13, scope: !1690)
!1770 = !DILocation(line: 469, column: 25, scope: !1690)
!1771 = !{!1044, !983, i64 80}
!1772 = !DILocation(line: 470, column: 32, scope: !1690)
!1773 = !DILocation(line: 470, column: 13, scope: !1690)
!1774 = !DILocation(line: 470, column: 18, scope: !1690)
!1775 = !{!1044, !984, i64 72}
!1776 = !DILocation(line: 472, column: 23, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1690, file: !813, line: 472, column: 7)
!1778 = !DILocation(line: 472, column: 7, scope: !1690)
!1779 = !DILocation(line: 473, column: 5, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !813, line: 473, column: 5)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !813, line: 473, column: 5)
!1782 = !DILocation(line: 475, column: 56, scope: !1690)
!1783 = !DILocation(line: 475, column: 68, scope: !1690)
!1784 = !DILocation(line: 475, column: 10, scope: !1690)
!1785 = !DILocation(line: 477, column: 37, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !813, line: 477, column: 3)
!1787 = distinct !DILexicalBlock(scope: !1690, file: !813, line: 477, column: 3)
!1788 = !DILocation(line: 477, column: 15, scope: !1786)
!1789 = !DILocation(line: 477, column: 3, scope: !1787)
!1790 = !DILocation(line: 478, column: 43, scope: !1786)
!1791 = !DILocation(line: 478, column: 33, scope: !1786)
!1792 = !DILocation(line: 478, column: 5, scope: !1786)
!1793 = !DILocation(line: 477, column: 52, scope: !1786)
!1794 = distinct !{!1794, !1789, !1795, !1180, !1181}
!1795 = !DILocation(line: 478, column: 57, scope: !1787)
!1796 = !DILocation(line: 480, column: 16, scope: !1690)
!1797 = !DILocation(line: 0, scope: !1127, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 479, column: 3, scope: !1690)
!1799 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1798)
!1800 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1798)
!1801 = !DILocation(line: 95, column: 10, scope: !1127, inlinedAt: !1798)
!1802 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1798)
!1803 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1798)
!1804 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1798)
!1805 = !DILocation(line: 96, column: 10, scope: !1127, inlinedAt: !1798)
!1806 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1798)
!1807 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1798)
!1808 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1798)
!1809 = !DILocation(line: 97, column: 10, scope: !1127, inlinedAt: !1798)
!1810 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1798)
!1811 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1798)
!1812 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1798)
!1813 = !DILocation(line: 98, column: 10, scope: !1127, inlinedAt: !1798)
!1814 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1798)
!1815 = !DILocation(line: 481, column: 22, scope: !1690)
!1816 = !DILocation(line: 481, column: 28, scope: !1690)
!1817 = !{!1818, !1047, i64 56}
!1818 = !{!"_StopInfo", !1145, i64 0, !1047, i64 56}
!1819 = !DILocation(line: 483, column: 6, scope: !1690)
!1820 = !DILocation(line: 0, scope: !1127, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 482, column: 3, scope: !1690)
!1822 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !1821)
!1823 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !1821)
!1824 = !DILocation(line: 95, column: 10, scope: !1127, inlinedAt: !1821)
!1825 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !1821)
!1826 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !1821)
!1827 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !1821)
!1828 = !DILocation(line: 96, column: 10, scope: !1127, inlinedAt: !1821)
!1829 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !1821)
!1830 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !1821)
!1831 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !1821)
!1832 = !DILocation(line: 97, column: 10, scope: !1127, inlinedAt: !1821)
!1833 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !1821)
!1834 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !1821)
!1835 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !1821)
!1836 = !DILocation(line: 98, column: 10, scope: !1127, inlinedAt: !1821)
!1837 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !1821)
!1838 = !DILocation(line: 484, column: 22, scope: !1690)
!1839 = !DILocation(line: 484, column: 28, scope: !1690)
!1840 = !DILocation(line: 488, column: 10, scope: !1690)
!1841 = !DILocation(line: 489, column: 13, scope: !1690)
!1842 = !DILocation(line: 490, column: 3, scope: !1690)
!1843 = !DILocation(line: 491, column: 1, scope: !1690)
!1844 = !DISubprogram(name: "AcquireDrawInfo", scope: !391, file: !391, line: 375, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1702}
!1847 = !DISubprogram(name: "AcquireQuantumMemory", scope: !766, file: !766, line: 42, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!603, !1624, !1624}
!1850 = !DISubprogram(name: "ResetMagickMemory", scope: !766, file: !766, line: 52, type: !1851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!603, !603, !710, !1624}
!1853 = !DISubprogram(name: "DrawGradientImage", scope: !391, file: !391, line: 382, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!566, !550, !818}
!1856 = !DISubprogram(name: "DestroyDrawInfo", scope: !391, file: !391, line: 377, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1702, !1702}
!1859 = distinct !DISubprogram(name: "OilPaintImage", scope: !813, file: !813, line: 561, type: !1860, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!550, !1131, !1755, !940}
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1874, !1875, !1876, !1880, !1881, !1882, !1883, !1884, !1885, !1889, !1890, !1891, !1892, !1893, !1894}
!1863 = !DILocalVariable(name: "image", arg: 1, scope: !1859, file: !813, line: 561, type: !1131)
!1864 = !DILocalVariable(name: "radius", arg: 2, scope: !1859, file: !813, line: 561, type: !1755)
!1865 = !DILocalVariable(name: "exception", arg: 3, scope: !1859, file: !813, line: 562, type: !940)
!1866 = !DILocalVariable(name: "image_view", scope: !1859, file: !813, line: 568, type: !935)
!1867 = !DILocalVariable(name: "paint_view", scope: !1859, file: !813, line: 569, type: !935)
!1868 = !DILocalVariable(name: "linear_image", scope: !1859, file: !813, line: 572, type: !550)
!1869 = !DILocalVariable(name: "paint_image", scope: !1859, file: !813, line: 573, type: !550)
!1870 = !DILocalVariable(name: "status", scope: !1859, file: !813, line: 576, type: !566)
!1871 = !DILocalVariable(name: "progress", scope: !1859, file: !813, line: 579, type: !679)
!1872 = !DILocalVariable(name: "histograms", scope: !1859, file: !813, line: 582, type: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !801)
!1874 = !DILocalVariable(name: "width", scope: !1859, file: !813, line: 583, type: !561)
!1875 = !DILocalVariable(name: "y", scope: !1859, file: !813, line: 586, type: !543)
!1876 = !DILocalVariable(name: "indexes", scope: !1877, file: !813, line: 636, type: !957)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !813, line: 634, column: 3)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !813, line: 633, column: 3)
!1879 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 633, column: 3)
!1880 = !DILocalVariable(name: "p", scope: !1877, file: !813, line: 639, type: !959)
!1881 = !DILocalVariable(name: "paint_indexes", scope: !1877, file: !813, line: 642, type: !968)
!1882 = !DILocalVariable(name: "x", scope: !1877, file: !813, line: 645, type: !543)
!1883 = !DILocalVariable(name: "q", scope: !1877, file: !813, line: 648, type: !962)
!1884 = !DILocalVariable(name: "histogram", scope: !1877, file: !813, line: 651, type: !802)
!1885 = !DILocalVariable(name: "i", scope: !1886, file: !813, line: 670, type: !543)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !813, line: 668, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !813, line: 667, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1877, file: !813, line: 667, column: 5)
!1889 = !DILocalVariable(name: "u", scope: !1886, file: !813, line: 671, type: !543)
!1890 = !DILocalVariable(name: "count", scope: !1886, file: !813, line: 674, type: !561)
!1891 = !DILocalVariable(name: "j", scope: !1886, file: !813, line: 677, type: !543)
!1892 = !DILocalVariable(name: "k", scope: !1886, file: !813, line: 678, type: !543)
!1893 = !DILocalVariable(name: "v", scope: !1886, file: !813, line: 679, type: !543)
!1894 = !DILocalVariable(name: "proceed", scope: !1895, file: !813, line: 714, type: !566)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !813, line: 712, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1877, file: !813, line: 711, column: 9)
!1897 = !DILocation(line: 0, scope: !1859)
!1898 = !DILocation(line: 593, column: 14, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 593, column: 7)
!1900 = !DILocation(line: 593, column: 20, scope: !1899)
!1901 = !DILocation(line: 593, column: 7, scope: !1859)
!1902 = !DILocation(line: 594, column: 68, scope: !1899)
!1903 = !DILocation(line: 594, column: 12, scope: !1899)
!1904 = !DILocation(line: 594, column: 5, scope: !1899)
!1905 = !DILocation(line: 597, column: 9, scope: !1859)
!1906 = !DILocation(line: 598, column: 16, scope: !1859)
!1907 = !DILocation(line: 599, column: 39, scope: !1859)
!1908 = !DILocation(line: 599, column: 54, scope: !1859)
!1909 = !DILocation(line: 599, column: 15, scope: !1859)
!1910 = !DILocation(line: 600, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 600, column: 7)
!1912 = !DILocation(line: 600, column: 40, scope: !1911)
!1913 = !DILocation(line: 602, column: 11, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1911, file: !813, line: 601, column: 5)
!1915 = !DILocation(line: 603, column: 22, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !813, line: 602, column: 11)
!1917 = !DILocation(line: 603, column: 9, scope: !1916)
!1918 = !DILocation(line: 604, column: 11, scope: !1914)
!1919 = !DILocation(line: 605, column: 22, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !813, line: 604, column: 11)
!1921 = !DILocation(line: 605, column: 9, scope: !1920)
!1922 = !DILocation(line: 608, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 608, column: 7)
!1924 = !DILocation(line: 608, column: 53, scope: !1923)
!1925 = !DILocation(line: 608, column: 7, scope: !1859)
!1926 = !DILocation(line: 610, column: 48, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !813, line: 609, column: 5)
!1928 = !DILocation(line: 610, column: 7, scope: !1927)
!1929 = !DILocation(line: 611, column: 20, scope: !1927)
!1930 = !DILocation(line: 612, column: 19, scope: !1927)
!1931 = !DILocation(line: 613, column: 7, scope: !1927)
!1932 = !DILocalVariable(name: "count", arg: 1, scope: !1933, file: !813, line: 536, type: !1624)
!1933 = distinct !DISubprogram(name: "AcquireHistogramThreadSet", scope: !813, file: !813, line: 536, type: !1934, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!801, !1624}
!1936 = !{!1932, !1937, !1938, !1939}
!1937 = !DILocalVariable(name: "i", scope: !1933, file: !813, line: 539, type: !543)
!1938 = !DILocalVariable(name: "histogram", scope: !1933, file: !813, line: 542, type: !801)
!1939 = !DILocalVariable(name: "number_threads", scope: !1933, file: !813, line: 543, type: !561)
!1940 = !DILocation(line: 0, scope: !1933, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 615, column: 14, scope: !1859)
!1942 = !DILocation(line: 545, column: 27, scope: !1933, inlinedAt: !1941)
!1943 = !DILocation(line: 546, column: 25, scope: !1933, inlinedAt: !1941)
!1944 = !DILocation(line: 548, column: 17, scope: !1945, inlinedAt: !1941)
!1945 = distinct !DILexicalBlock(scope: !1933, file: !813, line: 548, column: 7)
!1946 = !DILocation(line: 548, column: 7, scope: !1933, inlinedAt: !1941)
!1947 = !DILocation(line: 550, column: 54, scope: !1933, inlinedAt: !1941)
!1948 = !DILocation(line: 550, column: 10, scope: !1933, inlinedAt: !1941)
!1949 = !DILocation(line: 551, column: 15, scope: !1950, inlinedAt: !1941)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !813, line: 551, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1933, file: !813, line: 551, column: 3)
!1952 = !DILocation(line: 551, column: 3, scope: !1951, inlinedAt: !1941)
!1953 = !DILocation(line: 551, column: 44, scope: !1950, inlinedAt: !1941)
!1954 = distinct !{!1954, !1952, !1955, !1180, !1181}
!1955 = !DILocation(line: 557, column: 3, scope: !1951, inlinedAt: !1941)
!1956 = !DILocation(line: 553, column: 29, scope: !1957, inlinedAt: !1941)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !813, line: 552, column: 3)
!1958 = !DILocation(line: 553, column: 5, scope: !1957, inlinedAt: !1941)
!1959 = !DILocation(line: 553, column: 17, scope: !1957, inlinedAt: !1941)
!1960 = !{!984, !984, i64 0}
!1961 = !DILocation(line: 555, column: 22, scope: !1962, inlinedAt: !1941)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !813, line: 555, column: 9)
!1963 = !DILocation(line: 555, column: 9, scope: !1957, inlinedAt: !1941)
!1964 = !DILocalVariable(name: "histogram", arg: 1, scope: !1965, file: !813, line: 523, type: !801)
!1965 = distinct !DISubprogram(name: "DestroyHistogramThreadSet", scope: !813, file: !813, line: 523, type: !1966, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!801, !801}
!1968 = !{!1964, !1969}
!1969 = !DILocalVariable(name: "i", scope: !1965, file: !813, line: 526, type: !543)
!1970 = !DILocation(line: 0, scope: !1965, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 556, column: 14, scope: !1962, inlinedAt: !1941)
!1972 = !DILocation(line: 529, column: 27, scope: !1973, inlinedAt: !1971)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !813, line: 529, column: 3)
!1974 = distinct !DILexicalBlock(scope: !1965, file: !813, line: 529, column: 3)
!1975 = !DILocation(line: 529, column: 15, scope: !1973, inlinedAt: !1971)
!1976 = !DILocation(line: 529, column: 3, scope: !1974, inlinedAt: !1971)
!1977 = !DILocation(line: 530, column: 9, scope: !1978, inlinedAt: !1971)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !813, line: 530, column: 9)
!1979 = !DILocation(line: 530, column: 22, scope: !1978, inlinedAt: !1971)
!1980 = !DILocation(line: 530, column: 9, scope: !1973, inlinedAt: !1971)
!1981 = !DILocation(line: 531, column: 31, scope: !1978, inlinedAt: !1971)
!1982 = !DILocation(line: 531, column: 19, scope: !1978, inlinedAt: !1971)
!1983 = !DILocation(line: 531, column: 7, scope: !1978, inlinedAt: !1971)
!1984 = !DILocation(line: 529, column: 68, scope: !1973, inlinedAt: !1971)
!1985 = distinct !{!1985, !1976, !1986, !1180, !1181}
!1986 = !DILocation(line: 531, column: 66, scope: !1974, inlinedAt: !1971)
!1987 = !DILocation(line: 532, column: 25, scope: !1965, inlinedAt: !1971)
!1988 = !DILocation(line: 616, column: 18, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 616, column: 7)
!1990 = !DILocation(line: 616, column: 7, scope: !1859)
!1991 = !DILocation(line: 618, column: 20, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !813, line: 617, column: 5)
!1993 = !DILocation(line: 619, column: 19, scope: !1992)
!1994 = !DILocation(line: 620, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !813, line: 620, column: 7)
!1996 = !DILocation(line: 627, column: 14, scope: !1859)
!1997 = !DILocation(line: 628, column: 14, scope: !1859)
!1998 = !DILocation(line: 633, column: 41, scope: !1878)
!1999 = !DILocation(line: 633, column: 15, scope: !1878)
!2000 = !DILocation(line: 633, column: 3, scope: !1879)
!2001 = !DILocation(line: 653, column: 16, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1877, file: !813, line: 653, column: 9)
!2003 = !DILocation(line: 653, column: 9, scope: !1877)
!2004 = !DILocation(line: 655, column: 67, scope: !1877)
!2005 = !DILocation(line: 656, column: 32, scope: !1877)
!2006 = !DILocation(line: 656, column: 39, scope: !1877)
!2007 = !DILocation(line: 655, column: 7, scope: !1877)
!2008 = !DILocation(line: 0, scope: !1877)
!2009 = !DILocation(line: 657, column: 65, scope: !1877)
!2010 = !DILocation(line: 657, column: 7, scope: !1877)
!2011 = !DILocation(line: 659, column: 12, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1877, file: !813, line: 659, column: 9)
!2013 = !DILocation(line: 659, column: 43, scope: !2012)
!2014 = !DILocation(line: 664, column: 13, scope: !1877)
!2015 = !DILocation(line: 665, column: 19, scope: !1877)
!2016 = !DILocation(line: 666, column: 15, scope: !1877)
!2017 = !DILocation(line: 667, column: 43, scope: !1887)
!2018 = !DILocation(line: 667, column: 17, scope: !1887)
!2019 = !DILocation(line: 667, column: 5, scope: !1888)
!2020 = !DILocation(line: 688, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1886, file: !813, line: 688, column: 7)
!2022 = !DILocation(line: 0, scope: !1886)
!2023 = !DILocation(line: 687, column: 14, scope: !1886)
!2024 = !DILocation(line: 705, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !813, line: 705, column: 9)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !813, line: 705, column: 9)
!2027 = distinct !DILexicalBlock(scope: !1886, file: !813, line: 704, column: 11)
!2028 = !DILocation(line: 705, column: 9, scope: !2026)
!2029 = !DILocation(line: 706, column: 8, scope: !1886)
!2030 = !DILocation(line: 707, column: 8, scope: !1886)
!2031 = !DILocation(line: 667, column: 53, scope: !1887)
!2032 = distinct !{!2032, !2019, !2033, !1180, !1181}
!2033 = !DILocation(line: 708, column: 5, scope: !1888)
!2034 = !DILocation(line: 703, column: 14, scope: !1886)
!2035 = !DILocation(line: 703, column: 11, scope: !1886)
!2036 = !DILocation(line: 704, column: 25, scope: !2027)
!2037 = !DILocation(line: 704, column: 36, scope: !2027)
!2038 = !DILocation(line: 704, column: 11, scope: !1886)
!2039 = !DILocation(line: 690, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !813, line: 690, column: 9)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !813, line: 689, column: 7)
!2042 = distinct !DILexicalBlock(scope: !2021, file: !813, line: 688, column: 7)
!2043 = !DILocation(line: 693, column: 29, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !813, line: 691, column: 9)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !813, line: 690, column: 9)
!2046 = !DILocation(line: 692, column: 57, scope: !2044)
!2047 = !DILocation(line: 0, scope: !1525, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 692, column: 42, scope: !2044)
!2049 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2048)
!2050 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2048)
!2051 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2048)
!2052 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2048)
!2053 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2048)
!2054 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2048)
!2055 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2048)
!2056 = !DILocalVariable(name: "quantum", arg: 1, scope: !2057, file: !147, line: 114, type: !2060)
!2057 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !147, file: !147, line: 114, type: !2058, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!733, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2061 = !{!2056}
!2062 = !DILocation(line: 0, scope: !2057, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 692, column: 23, scope: !2044)
!2064 = !DILocation(line: 117, column: 29, scope: !2057, inlinedAt: !2063)
!2065 = !DILocation(line: 117, column: 36, scope: !2057, inlinedAt: !2063)
!2066 = !DILocation(line: 117, column: 61, scope: !2057, inlinedAt: !2063)
!2067 = !DILocation(line: 117, column: 43, scope: !2057, inlinedAt: !2063)
!2068 = !DILocation(line: 117, column: 68, scope: !2057, inlinedAt: !2063)
!2069 = !DILocation(line: 692, column: 13, scope: !2044)
!2070 = !DILocation(line: 694, column: 11, scope: !2044)
!2071 = !DILocation(line: 694, column: 23, scope: !2044)
!2072 = !{!983, !983, i64 0}
!2073 = !DILocation(line: 695, column: 28, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2044, file: !813, line: 695, column: 15)
!2075 = !DILocation(line: 695, column: 15, scope: !2044)
!2076 = !DILocation(line: 690, column: 41, scope: !2045)
!2077 = !DILocation(line: 690, column: 21, scope: !2045)
!2078 = distinct !{!2078, !2039, !2079, !1180, !1181}
!2079 = !DILocation(line: 700, column: 9, scope: !2040)
!2080 = !DILocation(line: 701, column: 37, scope: !2041)
!2081 = !DILocation(line: 701, column: 44, scope: !2041)
!2082 = !DILocation(line: 701, column: 10, scope: !2041)
!2083 = !DILocation(line: 688, column: 39, scope: !2042)
!2084 = !DILocation(line: 688, column: 19, scope: !2042)
!2085 = distinct !{!2085, !2020, !2086, !1180, !1181}
!2086 = !DILocation(line: 702, column: 7, scope: !2021)
!2087 = !DILocation(line: 709, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1877, file: !813, line: 709, column: 9)
!2089 = !DILocation(line: 709, column: 60, scope: !2088)
!2090 = !DILocation(line: 709, column: 9, scope: !1877)
!2091 = !DILocation(line: 711, column: 16, scope: !1896)
!2092 = !{!980, !984, i64 568}
!2093 = !DILocation(line: 711, column: 33, scope: !1896)
!2094 = !DILocation(line: 711, column: 9, scope: !1877)
!2095 = !DILocation(line: 719, column: 65, scope: !1895)
!2096 = !DILocation(line: 719, column: 75, scope: !1895)
!2097 = !DILocalVariable(name: "image", arg: 1, scope: !2098, file: !2099, line: 27, type: !1131)
!2098 = distinct !DISubprogram(name: "SetImageProgress", scope: !2099, file: !2099, line: 27, type: !2100, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2102)
!2099 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!566, !1131, !676, !678, !681}
!2102 = !{!2097, !2103, !2104, !2105, !2106}
!2103 = !DILocalVariable(name: "tag", arg: 2, scope: !2098, file: !2099, line: 28, type: !676)
!2104 = !DILocalVariable(name: "offset", arg: 3, scope: !2098, file: !2099, line: 28, type: !678)
!2105 = !DILocalVariable(name: "extent", arg: 4, scope: !2098, file: !2099, line: 28, type: !681)
!2106 = !DILocalVariable(name: "message", scope: !2098, file: !2099, line: 31, type: !696)
!2107 = !DILocation(line: 0, scope: !2098, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 719, column: 17, scope: !1895)
!2109 = !DILocation(line: 30, column: 3, scope: !2098, inlinedAt: !2108)
!2110 = !DILocation(line: 31, column: 5, scope: !2098, inlinedAt: !2108)
!2111 = !DILocation(line: 35, column: 10, scope: !2098, inlinedAt: !2108)
!2112 = !DILocation(line: 36, column: 17, scope: !2098, inlinedAt: !2108)
!2113 = !DILocation(line: 36, column: 63, scope: !2098, inlinedAt: !2108)
!2114 = !{!980, !984, i64 576}
!2115 = !DILocation(line: 36, column: 10, scope: !2098, inlinedAt: !2108)
!2116 = !DILocation(line: 37, column: 1, scope: !2098, inlinedAt: !2108)
!2117 = !DILocation(line: 0, scope: !1895)
!2118 = !DILocation(line: 720, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1895, file: !813, line: 720, column: 13)
!2120 = !DILocation(line: 720, column: 13, scope: !1895)
!2121 = !DILocation(line: 722, column: 7, scope: !1895)
!2122 = !DILocation(line: 633, column: 48, scope: !1878)
!2123 = distinct !{!2123, !2000, !2124, !1180, !1181}
!2124 = !DILocation(line: 723, column: 3, scope: !1879)
!2125 = !DILocation(line: 625, column: 9, scope: !1859)
!2126 = !DILocation(line: 724, column: 14, scope: !1859)
!2127 = !DILocation(line: 725, column: 14, scope: !1859)
!2128 = !DILocation(line: 0, scope: !1965, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 726, column: 14, scope: !1859)
!2130 = !DILocation(line: 529, column: 27, scope: !1973, inlinedAt: !2129)
!2131 = !DILocation(line: 529, column: 15, scope: !1973, inlinedAt: !2129)
!2132 = !DILocation(line: 529, column: 3, scope: !1974, inlinedAt: !2129)
!2133 = !DILocation(line: 530, column: 9, scope: !1978, inlinedAt: !2129)
!2134 = !DILocation(line: 530, column: 22, scope: !1978, inlinedAt: !2129)
!2135 = !DILocation(line: 530, column: 9, scope: !1973, inlinedAt: !2129)
!2136 = !DILocation(line: 531, column: 31, scope: !1978, inlinedAt: !2129)
!2137 = !DILocation(line: 531, column: 19, scope: !1978, inlinedAt: !2129)
!2138 = !DILocation(line: 531, column: 7, scope: !1978, inlinedAt: !2129)
!2139 = !DILocation(line: 529, column: 68, scope: !1973, inlinedAt: !2129)
!2140 = distinct !{!2140, !2132, !2141, !1180, !1181}
!2141 = !DILocation(line: 531, column: 66, scope: !1974, inlinedAt: !2129)
!2142 = !DILocation(line: 532, column: 25, scope: !1965, inlinedAt: !2129)
!2143 = !DILocation(line: 727, column: 16, scope: !1859)
!2144 = !DILocation(line: 728, column: 14, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1859, file: !813, line: 728, column: 7)
!2146 = !DILocation(line: 728, column: 7, scope: !1859)
!2147 = !DILocation(line: 729, column: 17, scope: !2145)
!2148 = !DILocation(line: 729, column: 5, scope: !2145)
!2149 = !DILocation(line: 731, column: 1, scope: !1859)
!2150 = !DISubprogram(name: "GetOptimalKernelWidth2D", scope: !2151, file: !2151, line: 36, type: !2152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2151 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1c4d294250c916114ca6e5f5b31857f")
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!561, !1755, !1755}
!2154 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !2155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null, !940, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!2159 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !509, file: !509, line: 101, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2160 = !DISubprogram(name: "GetPixelIntensity", scope: !326, file: !326, line: 181, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!794, !1131, !959}
!2163 = distinct !DISubprogram(name: "OpaquePaintImage", scope: !813, file: !813, line: 776, type: !2164, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!566, !550, !922, !922, !925}
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "image", arg: 1, scope: !2163, file: !813, line: 776, type: !550)
!2168 = !DILocalVariable(name: "target", arg: 2, scope: !2163, file: !813, line: 777, type: !922)
!2169 = !DILocalVariable(name: "fill", arg: 3, scope: !2163, file: !813, line: 777, type: !922)
!2170 = !DILocalVariable(name: "invert", arg: 4, scope: !2163, file: !813, line: 778, type: !925)
!2171 = !DILocation(line: 0, scope: !2163)
!2172 = !DILocation(line: 780, column: 10, scope: !2163)
!2173 = !DILocation(line: 780, column: 3, scope: !2163)
!2174 = distinct !DISubprogram(name: "OpaquePaintImageChannel", scope: !813, file: !813, line: 783, type: !2175, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!566, !550, !816, !922, !922, !925}
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2193, !2194, !2195, !2196}
!2178 = !DILocalVariable(name: "image", arg: 1, scope: !2174, file: !813, line: 783, type: !550)
!2179 = !DILocalVariable(name: "channel", arg: 2, scope: !2174, file: !813, line: 784, type: !816)
!2180 = !DILocalVariable(name: "target", arg: 3, scope: !2174, file: !813, line: 784, type: !922)
!2181 = !DILocalVariable(name: "fill", arg: 4, scope: !2174, file: !813, line: 785, type: !922)
!2182 = !DILocalVariable(name: "invert", arg: 5, scope: !2174, file: !813, line: 785, type: !925)
!2183 = !DILocalVariable(name: "image_view", scope: !2174, file: !813, line: 790, type: !935)
!2184 = !DILocalVariable(name: "exception", scope: !2174, file: !813, line: 793, type: !940)
!2185 = !DILocalVariable(name: "status", scope: !2174, file: !813, line: 796, type: !566)
!2186 = !DILocalVariable(name: "progress", scope: !2174, file: !813, line: 799, type: !679)
!2187 = !DILocalVariable(name: "zero", scope: !2174, file: !813, line: 802, type: !785)
!2188 = !DILocalVariable(name: "y", scope: !2174, file: !813, line: 805, type: !543)
!2189 = !DILocalVariable(name: "pixel", scope: !2190, file: !813, line: 835, type: !785)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !813, line: 833, column: 3)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !813, line: 832, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2174, file: !813, line: 832, column: 3)
!2193 = !DILocalVariable(name: "indexes", scope: !2190, file: !813, line: 838, type: !968)
!2194 = !DILocalVariable(name: "x", scope: !2190, file: !813, line: 841, type: !543)
!2195 = !DILocalVariable(name: "q", scope: !2190, file: !813, line: 844, type: !962)
!2196 = !DILocalVariable(name: "proceed", scope: !2197, file: !813, line: 880, type: !566)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !813, line: 878, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2190, file: !813, line: 877, column: 9)
!2199 = !DILocation(line: 0, scope: !2174)
!2200 = !DILocation(line: 801, column: 3, scope: !2174)
!2201 = !DILocation(line: 802, column: 5, scope: !2174)
!2202 = !DILocation(line: 811, column: 14, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2174, file: !813, line: 811, column: 7)
!2204 = !DILocation(line: 811, column: 20, scope: !2203)
!2205 = !DILocation(line: 811, column: 7, scope: !2174)
!2206 = !DILocation(line: 812, column: 68, scope: !2203)
!2207 = !DILocation(line: 812, column: 12, scope: !2203)
!2208 = !DILocation(line: 812, column: 5, scope: !2203)
!2209 = !DILocation(line: 813, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2174, file: !813, line: 813, column: 7)
!2211 = !DILocation(line: 813, column: 47, scope: !2210)
!2212 = !DILocation(line: 813, column: 7, scope: !2174)
!2213 = !DILocation(line: 815, column: 32, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2174, file: !813, line: 815, column: 7)
!2215 = !DILocation(line: 0, scope: !1023, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 815, column: 8, scope: !2214)
!2217 = !DILocation(line: 88, column: 38, scope: !1032, inlinedAt: !2216)
!2218 = !DILocalVariable(name: "pixel", arg: 1, scope: !2219, file: !2220, line: 76, type: !922)
!2219 = distinct !DISubprogram(name: "IsMagickGray", scope: !2220, file: !2220, line: 76, type: !2221, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2223)
!2220 = !DIFile(filename: "apps/538.imagick_r/src/magick/color-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1d5db1c576095b1d3349b678b2a970e8")
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!566, !922}
!2223 = !{!2218}
!2224 = !DILocation(line: 0, scope: !2219, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 816, column: 8, scope: !2214)
!2226 = !DILocation(line: 78, column: 15, scope: !2227, inlinedAt: !2225)
!2227 = distinct !DILexicalBlock(scope: !2219, file: !2220, line: 78, column: 7)
!2228 = !DILocation(line: 78, column: 45, scope: !2227, inlinedAt: !2225)
!2229 = !DILocation(line: 81, column: 20, scope: !2230, inlinedAt: !2225)
!2230 = distinct !DILexicalBlock(scope: !2219, file: !2220, line: 81, column: 7)
!2231 = !DILocation(line: 81, column: 31, scope: !2230, inlinedAt: !2225)
!2232 = !DILocation(line: 81, column: 23, scope: !2230, inlinedAt: !2225)
!2233 = !DILocation(line: 81, column: 8, scope: !2230, inlinedAt: !2225)
!2234 = !DILocation(line: 81, column: 38, scope: !2230, inlinedAt: !2225)
!2235 = !DILocation(line: 81, column: 55, scope: !2230, inlinedAt: !2225)
!2236 = !DILocation(line: 82, column: 33, scope: !2230, inlinedAt: !2225)
!2237 = !DILocation(line: 82, column: 25, scope: !2230, inlinedAt: !2225)
!2238 = !DILocation(line: 82, column: 8, scope: !2230, inlinedAt: !2225)
!2239 = !DILocation(line: 82, column: 39, scope: !2230, inlinedAt: !2225)
!2240 = !DILocation(line: 81, column: 7, scope: !2219, inlinedAt: !2225)
!2241 = !DILocation(line: 817, column: 12, scope: !2214)
!2242 = !DILocation(line: 817, column: 5, scope: !2214)
!2243 = !DILocation(line: 818, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2174, file: !813, line: 818, column: 7)
!2245 = !DILocation(line: 818, column: 22, scope: !2244)
!2246 = !DILocation(line: 818, column: 40, scope: !2244)
!2247 = !DILocation(line: 818, column: 51, scope: !2244)
!2248 = !DILocation(line: 818, column: 57, scope: !2244)
!2249 = !DILocation(line: 818, column: 7, scope: !2174)
!2250 = !DILocation(line: 819, column: 12, scope: !2244)
!2251 = !DILocation(line: 819, column: 5, scope: !2244)
!2252 = !DILocation(line: 825, column: 22, scope: !2174)
!2253 = !DILocation(line: 826, column: 3, scope: !2174)
!2254 = !DILocation(line: 827, column: 14, scope: !2174)
!2255 = !DILocation(line: 832, column: 34, scope: !2191)
!2256 = !DILocation(line: 832, column: 15, scope: !2191)
!2257 = !DILocation(line: 832, column: 3, scope: !2192)
!2258 = !DILocation(line: 834, column: 5, scope: !2190)
!2259 = !DILocation(line: 835, column: 7, scope: !2190)
!2260 = !DILocation(line: 846, column: 16, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2190, file: !813, line: 846, column: 9)
!2262 = !DILocation(line: 846, column: 9, scope: !2190)
!2263 = !DILocation(line: 848, column: 57, scope: !2190)
!2264 = !DILocation(line: 848, column: 7, scope: !2190)
!2265 = !DILocation(line: 0, scope: !2190)
!2266 = !DILocation(line: 849, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2190, file: !813, line: 849, column: 9)
!2268 = !DILocation(line: 849, column: 9, scope: !2190)
!2269 = !DILocation(line: 854, column: 13, scope: !2190)
!2270 = !DILocation(line: 855, column: 11, scope: !2190)
!2271 = !{i64 0, i64 4, !2272, i64 4, i64 4, !2272, i64 8, i64 4, !2272, i64 16, i64 8, !2273, i64 24, i64 8, !2072, i64 32, i64 4, !2274, i64 36, i64 4, !2274, i64 40, i64 4, !2274, i64 44, i64 4, !2274, i64 48, i64 4, !2274}
!2272 = !{!981, !981, i64 0}
!2273 = !{!987, !987, i64 0}
!2274 = !{!1047, !1047, i64 0}
!2275 = !DILocation(line: 856, column: 36, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !813, line: 856, column: 5)
!2277 = distinct !DILexicalBlock(scope: !2190, file: !813, line: 856, column: 5)
!2278 = !DILocation(line: 856, column: 17, scope: !2276)
!2279 = !DILocation(line: 856, column: 5, scope: !2277)
!2280 = !DILocation(line: 858, column: 43, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !813, line: 857, column: 5)
!2282 = !DILocation(line: 858, column: 7, scope: !2281)
!2283 = !DILocation(line: 0, scope: !1127, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 858, column: 7, scope: !2281)
!2285 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !2284)
!2286 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !2284)
!2287 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !2284)
!2288 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !2284)
!2289 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !2284)
!2290 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !2284)
!2291 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !2284)
!2292 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !2284)
!2293 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !2284)
!2294 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !2284)
!2295 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !2284)
!2296 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !2284)
!2297 = !DILocation(line: 99, column: 26, scope: !1161, inlinedAt: !2284)
!2298 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !2284)
!2299 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !2284)
!2300 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !2284)
!2301 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !2284)
!2302 = !DILocation(line: 101, column: 5, scope: !1161, inlinedAt: !2284)
!2303 = !DILocation(line: 859, column: 11, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2281, file: !813, line: 859, column: 11)
!2305 = !DILocation(line: 859, column: 47, scope: !2304)
!2306 = !DILocation(line: 859, column: 11, scope: !2281)
!2307 = !DILocation(line: 861, column: 15, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !813, line: 860, column: 9)
!2309 = !DILocation(line: 862, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2308, file: !813, line: 861, column: 15)
!2311 = !DILocation(line: 0, scope: !1525, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 862, column: 13, scope: !2310)
!2313 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2312)
!2314 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2312)
!2315 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2312)
!2316 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2312)
!2317 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2312)
!2318 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2312)
!2319 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2312)
!2320 = !DILocation(line: 863, column: 15, scope: !2308)
!2321 = !DILocation(line: 864, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2308, file: !813, line: 863, column: 15)
!2323 = !DILocation(line: 0, scope: !1525, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 864, column: 13, scope: !2322)
!2325 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2324)
!2326 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2324)
!2327 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2324)
!2328 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2324)
!2329 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2324)
!2330 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2324)
!2331 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2324)
!2332 = !DILocation(line: 865, column: 15, scope: !2308)
!2333 = !DILocation(line: 866, column: 13, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2308, file: !813, line: 865, column: 15)
!2335 = !DILocation(line: 0, scope: !1525, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 866, column: 13, scope: !2334)
!2337 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2336)
!2338 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2336)
!2339 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2336)
!2340 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2336)
!2341 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2336)
!2342 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2336)
!2343 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2336)
!2344 = !DILocation(line: 867, column: 15, scope: !2308)
!2345 = !DILocation(line: 868, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2308, file: !813, line: 867, column: 15)
!2347 = !DILocation(line: 0, scope: !1525, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 868, column: 13, scope: !2346)
!2349 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2348)
!2350 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2348)
!2351 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2348)
!2352 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2348)
!2353 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2348)
!2354 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2348)
!2355 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2348)
!2356 = !DILocation(line: 869, column: 47, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2308, file: !813, line: 869, column: 15)
!2358 = !DILocation(line: 870, column: 23, scope: !2357)
!2359 = !DILocation(line: 870, column: 34, scope: !2357)
!2360 = !DILocation(line: 869, column: 15, scope: !2308)
!2361 = !DILocation(line: 871, column: 13, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !813, line: 871, column: 13)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !813, line: 871, column: 13)
!2364 = !DILocation(line: 0, scope: !1525, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 871, column: 13, scope: !2362)
!2366 = !DILocation(line: 92, column: 13, scope: !1533, inlinedAt: !2365)
!2367 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !2365)
!2368 = !DILocation(line: 94, column: 13, scope: !1536, inlinedAt: !2365)
!2369 = !DILocation(line: 94, column: 7, scope: !1525, inlinedAt: !2365)
!2370 = !DILocation(line: 96, column: 26, scope: !1525, inlinedAt: !2365)
!2371 = !DILocation(line: 96, column: 10, scope: !1525, inlinedAt: !2365)
!2372 = !DILocation(line: 96, column: 3, scope: !1525, inlinedAt: !2365)
!2373 = !DILocation(line: 873, column: 8, scope: !2281)
!2374 = !DILocation(line: 856, column: 46, scope: !2276)
!2375 = distinct !{!2375, !2279, !2376, !1180, !1181}
!2376 = !DILocation(line: 874, column: 5, scope: !2277)
!2377 = !DILocation(line: 875, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2190, file: !813, line: 875, column: 9)
!2379 = !DILocation(line: 875, column: 60, scope: !2378)
!2380 = !DILocation(line: 875, column: 9, scope: !2190)
!2381 = !DILocation(line: 877, column: 16, scope: !2198)
!2382 = !DILocation(line: 877, column: 33, scope: !2198)
!2383 = !DILocation(line: 877, column: 9, scope: !2190)
!2384 = !DILocation(line: 885, column: 68, scope: !2197)
!2385 = !DILocation(line: 886, column: 18, scope: !2197)
!2386 = !DILocation(line: 0, scope: !2098, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 885, column: 17, scope: !2197)
!2388 = !DILocation(line: 30, column: 3, scope: !2098, inlinedAt: !2387)
!2389 = !DILocation(line: 31, column: 5, scope: !2098, inlinedAt: !2387)
!2390 = !DILocation(line: 35, column: 10, scope: !2098, inlinedAt: !2387)
!2391 = !DILocation(line: 36, column: 17, scope: !2098, inlinedAt: !2387)
!2392 = !DILocation(line: 36, column: 63, scope: !2098, inlinedAt: !2387)
!2393 = !DILocation(line: 36, column: 10, scope: !2098, inlinedAt: !2387)
!2394 = !DILocation(line: 37, column: 1, scope: !2098, inlinedAt: !2387)
!2395 = !DILocation(line: 0, scope: !2197)
!2396 = !DILocation(line: 887, column: 21, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2197, file: !813, line: 887, column: 13)
!2398 = !DILocation(line: 887, column: 13, scope: !2197)
!2399 = !DILocation(line: 889, column: 7, scope: !2197)
!2400 = !DILocation(line: 890, column: 3, scope: !2191)
!2401 = !DILocation(line: 832, column: 41, scope: !2191)
!2402 = distinct !{!2402, !2257, !2403, !1180, !1181}
!2403 = !DILocation(line: 890, column: 3, scope: !2192)
!2404 = !DILocation(line: 823, column: 9, scope: !2174)
!2405 = !DILocation(line: 891, column: 14, scope: !2174)
!2406 = !DILocation(line: 892, column: 3, scope: !2174)
!2407 = !DILocation(line: 893, column: 1, scope: !2174)
!2408 = distinct !DISubprogram(name: "TransparentPaintImage", scope: !813, file: !813, line: 932, type: !2409, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!566, !550, !922, !2060, !925}
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2426, !2427, !2428, !2429}
!2412 = !DILocalVariable(name: "image", arg: 1, scope: !2408, file: !813, line: 932, type: !550)
!2413 = !DILocalVariable(name: "target", arg: 2, scope: !2408, file: !813, line: 933, type: !922)
!2414 = !DILocalVariable(name: "opacity", arg: 3, scope: !2408, file: !813, line: 933, type: !2060)
!2415 = !DILocalVariable(name: "invert", arg: 4, scope: !2408, file: !813, line: 934, type: !925)
!2416 = !DILocalVariable(name: "image_view", scope: !2408, file: !813, line: 939, type: !935)
!2417 = !DILocalVariable(name: "exception", scope: !2408, file: !813, line: 942, type: !940)
!2418 = !DILocalVariable(name: "status", scope: !2408, file: !813, line: 945, type: !566)
!2419 = !DILocalVariable(name: "progress", scope: !2408, file: !813, line: 948, type: !679)
!2420 = !DILocalVariable(name: "zero", scope: !2408, file: !813, line: 951, type: !785)
!2421 = !DILocalVariable(name: "y", scope: !2408, file: !813, line: 954, type: !543)
!2422 = !DILocalVariable(name: "pixel", scope: !2423, file: !813, line: 980, type: !785)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !813, line: 978, column: 3)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !813, line: 977, column: 3)
!2425 = distinct !DILexicalBlock(scope: !2408, file: !813, line: 977, column: 3)
!2426 = !DILocalVariable(name: "indexes", scope: !2423, file: !813, line: 983, type: !968)
!2427 = !DILocalVariable(name: "x", scope: !2423, file: !813, line: 986, type: !543)
!2428 = !DILocalVariable(name: "q", scope: !2423, file: !813, line: 989, type: !962)
!2429 = !DILocalVariable(name: "proceed", scope: !2430, file: !813, line: 1013, type: !566)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !813, line: 1011, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !813, line: 1010, column: 9)
!2432 = !DILocation(line: 0, scope: !2408)
!2433 = !DILocation(line: 950, column: 3, scope: !2408)
!2434 = !DILocation(line: 951, column: 5, scope: !2408)
!2435 = !DILocation(line: 959, column: 14, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2408, file: !813, line: 959, column: 7)
!2437 = !DILocation(line: 959, column: 20, scope: !2436)
!2438 = !DILocation(line: 959, column: 7, scope: !2408)
!2439 = !DILocation(line: 960, column: 68, scope: !2436)
!2440 = !DILocation(line: 960, column: 12, scope: !2436)
!2441 = !DILocation(line: 960, column: 5, scope: !2436)
!2442 = !DILocation(line: 961, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2408, file: !813, line: 961, column: 7)
!2444 = !DILocation(line: 961, column: 47, scope: !2443)
!2445 = !DILocation(line: 961, column: 7, scope: !2408)
!2446 = !DILocation(line: 963, column: 14, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2408, file: !813, line: 963, column: 7)
!2448 = !DILocation(line: 963, column: 20, scope: !2447)
!2449 = !DILocation(line: 963, column: 7, scope: !2408)
!2450 = !DILocation(line: 964, column: 12, scope: !2447)
!2451 = !DILocation(line: 964, column: 5, scope: !2447)
!2452 = !DILocation(line: 970, column: 22, scope: !2408)
!2453 = !DILocation(line: 971, column: 3, scope: !2408)
!2454 = !DILocation(line: 972, column: 14, scope: !2408)
!2455 = !DILocation(line: 977, column: 34, scope: !2424)
!2456 = !DILocation(line: 977, column: 15, scope: !2424)
!2457 = !DILocation(line: 977, column: 3, scope: !2425)
!2458 = !DILocation(line: 979, column: 5, scope: !2423)
!2459 = !DILocation(line: 980, column: 7, scope: !2423)
!2460 = !DILocation(line: 991, column: 16, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2423, file: !813, line: 991, column: 9)
!2462 = !DILocation(line: 991, column: 9, scope: !2423)
!2463 = !DILocation(line: 993, column: 57, scope: !2423)
!2464 = !DILocation(line: 993, column: 7, scope: !2423)
!2465 = !DILocation(line: 0, scope: !2423)
!2466 = !DILocation(line: 994, column: 11, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2423, file: !813, line: 994, column: 9)
!2468 = !DILocation(line: 994, column: 9, scope: !2423)
!2469 = !DILocation(line: 999, column: 13, scope: !2423)
!2470 = !DILocation(line: 1000, column: 11, scope: !2423)
!2471 = !DILocation(line: 1001, column: 36, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !813, line: 1001, column: 5)
!2473 = distinct !DILexicalBlock(scope: !2423, file: !813, line: 1001, column: 5)
!2474 = !DILocation(line: 1001, column: 17, scope: !2472)
!2475 = !DILocation(line: 1001, column: 5, scope: !2473)
!2476 = !DILocation(line: 0, scope: !1127, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1003, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2472, file: !813, line: 1002, column: 5)
!2479 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !2477)
!2480 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !2477)
!2481 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !2477)
!2482 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !2477)
!2483 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !2477)
!2484 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !2477)
!2485 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !2477)
!2486 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !2477)
!2487 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !2477)
!2488 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !2477)
!2489 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !2477)
!2490 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !2477)
!2491 = !DILocation(line: 1004, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2478, file: !813, line: 1004, column: 11)
!2493 = !DILocation(line: 1004, column: 47, scope: !2492)
!2494 = !DILocation(line: 1004, column: 11, scope: !2478)
!2495 = !DILocation(line: 1005, column: 19, scope: !2492)
!2496 = !DILocation(line: 1005, column: 9, scope: !2492)
!2497 = !DILocation(line: 1006, column: 8, scope: !2478)
!2498 = !DILocation(line: 1001, column: 46, scope: !2472)
!2499 = distinct !{!2499, !2475, !2500, !1180, !1181}
!2500 = !DILocation(line: 1007, column: 5, scope: !2473)
!2501 = !DILocation(line: 1003, column: 7, scope: !2478)
!2502 = !DILocation(line: 99, column: 26, scope: !1161, inlinedAt: !2477)
!2503 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !2477)
!2504 = !DILocation(line: 1003, column: 43, scope: !2478)
!2505 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !2477)
!2506 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !2477)
!2507 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !2477)
!2508 = !DILocation(line: 101, column: 5, scope: !1161, inlinedAt: !2477)
!2509 = !DILocation(line: 1008, column: 9, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2423, file: !813, line: 1008, column: 9)
!2511 = !DILocation(line: 1008, column: 60, scope: !2510)
!2512 = !DILocation(line: 1008, column: 9, scope: !2423)
!2513 = !DILocation(line: 1010, column: 16, scope: !2431)
!2514 = !DILocation(line: 1010, column: 33, scope: !2431)
!2515 = !DILocation(line: 1010, column: 9, scope: !2423)
!2516 = !DILocation(line: 1018, column: 73, scope: !2430)
!2517 = !DILocation(line: 1019, column: 18, scope: !2430)
!2518 = !DILocation(line: 0, scope: !2098, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 1018, column: 17, scope: !2430)
!2520 = !DILocation(line: 30, column: 3, scope: !2098, inlinedAt: !2519)
!2521 = !DILocation(line: 31, column: 5, scope: !2098, inlinedAt: !2519)
!2522 = !DILocation(line: 35, column: 10, scope: !2098, inlinedAt: !2519)
!2523 = !DILocation(line: 36, column: 17, scope: !2098, inlinedAt: !2519)
!2524 = !DILocation(line: 36, column: 63, scope: !2098, inlinedAt: !2519)
!2525 = !DILocation(line: 36, column: 10, scope: !2098, inlinedAt: !2519)
!2526 = !DILocation(line: 37, column: 1, scope: !2098, inlinedAt: !2519)
!2527 = !DILocation(line: 0, scope: !2430)
!2528 = !DILocation(line: 1020, column: 21, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2430, file: !813, line: 1020, column: 13)
!2530 = !DILocation(line: 1020, column: 13, scope: !2430)
!2531 = !DILocation(line: 1022, column: 7, scope: !2430)
!2532 = !DILocation(line: 1023, column: 3, scope: !2424)
!2533 = !DILocation(line: 977, column: 41, scope: !2424)
!2534 = distinct !{!2534, !2457, !2535, !1180, !1181}
!2535 = !DILocation(line: 1023, column: 3, scope: !2425)
!2536 = !DILocation(line: 968, column: 9, scope: !2408)
!2537 = !DILocation(line: 1024, column: 14, scope: !2408)
!2538 = !DILocation(line: 1025, column: 3, scope: !2408)
!2539 = !DILocation(line: 1026, column: 1, scope: !2408)
!2540 = distinct !DISubprogram(name: "TransparentPaintImageChroma", scope: !813, file: !813, line: 1068, type: !2541, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!566, !550, !922, !922, !2060, !925}
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2558, !2559, !2560, !2561, !2562}
!2544 = !DILocalVariable(name: "image", arg: 1, scope: !2540, file: !813, line: 1068, type: !550)
!2545 = !DILocalVariable(name: "low", arg: 2, scope: !2540, file: !813, line: 1069, type: !922)
!2546 = !DILocalVariable(name: "high", arg: 3, scope: !2540, file: !813, line: 1069, type: !922)
!2547 = !DILocalVariable(name: "opacity", arg: 4, scope: !2540, file: !813, line: 1070, type: !2060)
!2548 = !DILocalVariable(name: "invert", arg: 5, scope: !2540, file: !813, line: 1070, type: !925)
!2549 = !DILocalVariable(name: "image_view", scope: !2540, file: !813, line: 1075, type: !935)
!2550 = !DILocalVariable(name: "exception", scope: !2540, file: !813, line: 1078, type: !940)
!2551 = !DILocalVariable(name: "status", scope: !2540, file: !813, line: 1081, type: !566)
!2552 = !DILocalVariable(name: "progress", scope: !2540, file: !813, line: 1084, type: !679)
!2553 = !DILocalVariable(name: "y", scope: !2540, file: !813, line: 1087, type: !543)
!2554 = !DILocalVariable(name: "match", scope: !2555, file: !813, line: 1113, type: !566)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !813, line: 1111, column: 3)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !813, line: 1110, column: 3)
!2557 = distinct !DILexicalBlock(scope: !2540, file: !813, line: 1110, column: 3)
!2558 = !DILocalVariable(name: "pixel", scope: !2555, file: !813, line: 1116, type: !785)
!2559 = !DILocalVariable(name: "indexes", scope: !2555, file: !813, line: 1119, type: !968)
!2560 = !DILocalVariable(name: "x", scope: !2555, file: !813, line: 1122, type: !543)
!2561 = !DILocalVariable(name: "q", scope: !2555, file: !813, line: 1125, type: !962)
!2562 = !DILocalVariable(name: "proceed", scope: !2563, file: !813, line: 1153, type: !566)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !813, line: 1151, column: 7)
!2564 = distinct !DILexicalBlock(scope: !2555, file: !813, line: 1150, column: 9)
!2565 = !DILocation(line: 0, scope: !2540)
!2566 = !DILocation(line: 1093, column: 14, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2540, file: !813, line: 1093, column: 7)
!2568 = !DILocation(line: 1093, column: 20, scope: !2567)
!2569 = !DILocation(line: 1093, column: 7, scope: !2540)
!2570 = !DILocation(line: 1094, column: 68, scope: !2567)
!2571 = !DILocation(line: 1094, column: 12, scope: !2567)
!2572 = !DILocation(line: 1094, column: 5, scope: !2567)
!2573 = !DILocation(line: 1095, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2540, file: !813, line: 1095, column: 7)
!2575 = !DILocation(line: 1095, column: 47, scope: !2574)
!2576 = !DILocation(line: 1095, column: 7, scope: !2540)
!2577 = !DILocation(line: 1097, column: 14, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2540, file: !813, line: 1097, column: 7)
!2579 = !DILocation(line: 1097, column: 20, scope: !2578)
!2580 = !DILocation(line: 1097, column: 7, scope: !2540)
!2581 = !DILocation(line: 1098, column: 12, scope: !2578)
!2582 = !DILocation(line: 1098, column: 5, scope: !2578)
!2583 = !DILocation(line: 1104, column: 22, scope: !2540)
!2584 = !DILocation(line: 1105, column: 14, scope: !2540)
!2585 = !DILocation(line: 1110, column: 34, scope: !2556)
!2586 = !DILocation(line: 1110, column: 15, scope: !2556)
!2587 = !DILocation(line: 1110, column: 3, scope: !2557)
!2588 = !DILocation(line: 1115, column: 5, scope: !2555)
!2589 = !DILocation(line: 1116, column: 7, scope: !2555)
!2590 = !DILocation(line: 1127, column: 16, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2555, file: !813, line: 1127, column: 9)
!2592 = !DILocation(line: 1127, column: 9, scope: !2555)
!2593 = !DILocation(line: 1129, column: 57, scope: !2555)
!2594 = !DILocation(line: 1129, column: 7, scope: !2555)
!2595 = !DILocation(line: 0, scope: !2555)
!2596 = !DILocation(line: 1130, column: 11, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2555, file: !813, line: 1130, column: 9)
!2598 = !DILocation(line: 1130, column: 9, scope: !2555)
!2599 = !DILocation(line: 1135, column: 13, scope: !2555)
!2600 = !DILocation(line: 1136, column: 5, scope: !2555)
!2601 = !DILocation(line: 1137, column: 17, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !813, line: 1137, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2555, file: !813, line: 1137, column: 5)
!2604 = !DILocation(line: 1137, column: 5, scope: !2603)
!2605 = !DILocation(line: 99, column: 45, scope: !1161, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1139, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !813, line: 1138, column: 5)
!2608 = !DILocation(line: 0, scope: !1127, inlinedAt: !2606)
!2609 = !DILocation(line: 95, column: 31, scope: !1127, inlinedAt: !2606)
!2610 = !DILocation(line: 95, column: 14, scope: !1127, inlinedAt: !2606)
!2611 = !DILocation(line: 96, column: 33, scope: !1127, inlinedAt: !2606)
!2612 = !DILocation(line: 96, column: 16, scope: !1127, inlinedAt: !2606)
!2613 = !DILocation(line: 97, column: 32, scope: !1127, inlinedAt: !2606)
!2614 = !DILocation(line: 97, column: 15, scope: !1127, inlinedAt: !2606)
!2615 = !DILocation(line: 98, column: 35, scope: !1127, inlinedAt: !2606)
!2616 = !DILocation(line: 1139, column: 43, scope: !2607)
!2617 = !DILocation(line: 101, column: 35, scope: !1161, inlinedAt: !2606)
!2618 = !DILocation(line: 1140, column: 25, scope: !2607)
!2619 = !DILocation(line: 1140, column: 38, scope: !2607)
!2620 = !DILocation(line: 1140, column: 61, scope: !2607)
!2621 = !DILocation(line: 1140, column: 52, scope: !2607)
!2622 = !DILocation(line: 1140, column: 66, scope: !2607)
!2623 = !DILocation(line: 1141, column: 30, scope: !2607)
!2624 = !DILocation(line: 1141, column: 22, scope: !2607)
!2625 = !DILocation(line: 1141, column: 37, scope: !2607)
!2626 = !DILocation(line: 1141, column: 62, scope: !2607)
!2627 = !DILocation(line: 1141, column: 53, scope: !2607)
!2628 = !DILocation(line: 1141, column: 69, scope: !2607)
!2629 = !DILocation(line: 1142, column: 30, scope: !2607)
!2630 = !DILocation(line: 1142, column: 22, scope: !2607)
!2631 = !DILocation(line: 1142, column: 36, scope: !2607)
!2632 = !DILocation(line: 1142, column: 60, scope: !2607)
!2633 = !DILocation(line: 1142, column: 51, scope: !2607)
!2634 = !DILocation(line: 0, scope: !2607)
!2635 = !DILocation(line: 1140, column: 13, scope: !2607)
!2636 = !DILocation(line: 1144, column: 17, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2607, file: !813, line: 1144, column: 11)
!2638 = !DILocation(line: 1144, column: 11, scope: !2607)
!2639 = !DILocation(line: 1145, column: 19, scope: !2637)
!2640 = !DILocation(line: 1145, column: 9, scope: !2637)
!2641 = !DILocation(line: 1146, column: 8, scope: !2607)
!2642 = !DILocation(line: 1137, column: 46, scope: !2602)
!2643 = distinct !{!2643, !2604, !2644, !1180, !1181}
!2644 = !DILocation(line: 1147, column: 5, scope: !2603)
!2645 = !DILocation(line: 101, column: 18, scope: !1161, inlinedAt: !2606)
!2646 = !DILocation(line: 101, column: 17, scope: !1161, inlinedAt: !2606)
!2647 = !DILocation(line: 95, column: 13, scope: !1127, inlinedAt: !2606)
!2648 = !DILocation(line: 98, column: 18, scope: !1127, inlinedAt: !2606)
!2649 = !DILocation(line: 96, column: 15, scope: !1127, inlinedAt: !2606)
!2650 = !DILocation(line: 97, column: 14, scope: !1127, inlinedAt: !2606)
!2651 = !DILocation(line: 98, column: 17, scope: !1127, inlinedAt: !2606)
!2652 = !DILocation(line: 1148, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2555, file: !813, line: 1148, column: 9)
!2654 = !DILocation(line: 1148, column: 60, scope: !2653)
!2655 = !DILocation(line: 1148, column: 9, scope: !2555)
!2656 = !DILocation(line: 1150, column: 16, scope: !2564)
!2657 = !DILocation(line: 1150, column: 33, scope: !2564)
!2658 = !DILocation(line: 1150, column: 9, scope: !2555)
!2659 = !DILocation(line: 1158, column: 73, scope: !2563)
!2660 = !DILocation(line: 1159, column: 18, scope: !2563)
!2661 = !DILocation(line: 0, scope: !2098, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 1158, column: 17, scope: !2563)
!2663 = !DILocation(line: 30, column: 3, scope: !2098, inlinedAt: !2662)
!2664 = !DILocation(line: 31, column: 5, scope: !2098, inlinedAt: !2662)
!2665 = !DILocation(line: 35, column: 10, scope: !2098, inlinedAt: !2662)
!2666 = !DILocation(line: 36, column: 17, scope: !2098, inlinedAt: !2662)
!2667 = !DILocation(line: 36, column: 63, scope: !2098, inlinedAt: !2662)
!2668 = !DILocation(line: 36, column: 10, scope: !2098, inlinedAt: !2662)
!2669 = !DILocation(line: 37, column: 1, scope: !2098, inlinedAt: !2662)
!2670 = !DILocation(line: 0, scope: !2563)
!2671 = !DILocation(line: 1160, column: 21, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2563, file: !813, line: 1160, column: 13)
!2673 = !DILocation(line: 1160, column: 13, scope: !2563)
!2674 = !DILocation(line: 1162, column: 7, scope: !2563)
!2675 = !DILocation(line: 1163, column: 3, scope: !2556)
!2676 = !DILocation(line: 1110, column: 41, scope: !2556)
!2677 = distinct !{!2677, !2587, !2678, !1180, !1181}
!2678 = !DILocation(line: 1163, column: 3, scope: !2557)
!2679 = !DILocation(line: 1102, column: 9, scope: !2540)
!2680 = !DILocation(line: 1164, column: 14, scope: !2540)
!2681 = !DILocation(line: 1165, column: 3, scope: !2540)
!2682 = !DILocation(line: 1166, column: 1, scope: !2540)
!2683 = !DISubprogram(name: "GetOneVirtualMethodPixel", scope: !2684, file: !2684, line: 60, type: !2685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2684 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!566, !1131, !2687, !924, !924, !573, !940}
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !509, line: 47, baseType: !508)
!2689 = !DISubprogram(name: "DecodePixelGamma", scope: !326, file: !326, line: 179, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!794, !1528}
!2692 = !DISubprogram(name: "GetMagickResourceLimit", scope: !530, file: !530, line: 53, type: !2693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!682, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !530, line: 36, baseType: !529)
!2697 = !DISubprogram(name: "FormatLocaleString", scope: !2698, file: !2698, line: 71, type: !2699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2698 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!543, !2701, !1624, !2702, null}
!2701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !607)
!2702 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !676)
!2703 = !DISubprogram(name: "RelinquishMagickMemory", scope: !766, file: !766, line: 51, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1625)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!603, !603}
