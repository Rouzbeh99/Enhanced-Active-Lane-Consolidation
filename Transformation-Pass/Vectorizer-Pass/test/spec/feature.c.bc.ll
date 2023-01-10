; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/feature.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CannyInfo = type { double, double, i32, i64, i64 }
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
%struct._ChannelStatistics = type { [4 x %struct._DoublePixelPacket] }
%struct._DoublePixelPacket = type { double, double, double, double, double }
%struct._LongPixelPacket = type { i32, i32, i32, i32, i32 }
%struct._ChannelFeatures = type { [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/feature.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"blur:%.20gx%.20g;blur:%.20gx%.20g+90\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@CannyEdgeImage.Gx = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double -1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double 1.000000e+00]], align 16, !dbg !0
@CannyEdgeImage.Gy = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double 1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double -1.000000e+00]], align 16, !dbg !949
@.str.6 = private unnamed_addr constant [16 x i8] c"CannyEdge/Image\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"HoughLine/Image\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"# Hough line transform: %.20gx%.20g%+.20g\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"viewbox 0 0 %.20g %.20g\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"line %g,%g %g,%g  # %g\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mvg:%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"strokewidth\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"hough-lines:accumulator\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"MeanShift/Image\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CannyEdgeImage(ptr noundef %image, double noundef %radius, double noundef %sigma, double noundef %lower_percent, double noundef %upper_percent, ptr noundef %exception) local_unnamed_addr #0 !dbg !2 {
entry:
  %edge.i = alloca %struct._CannyInfo, align 8
  %pixel.i = alloca %struct._CannyInfo, align 8
  %message.i = alloca [4096 x i8], align 16
  %pixel = alloca %struct._CannyInfo, align 8
  %geometry = alloca [4096 x i8], align 16
  %pixel41 = alloca %struct._CannyInfo, align 8
  %alpha_pixel = alloca %struct._CannyInfo, align 8
  %beta_pixel = alloca %struct._CannyInfo, align 8
  %pixel142 = alloca %struct._CannyInfo, align 8
  %pixel241 = alloca %struct._CannyInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !955, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %radius, metadata !956, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %sigma, metadata !957, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %lower_percent, metadata !958, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %upper_percent, metadata !959, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %exception, metadata !960, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pixel) #13, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !962, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry) #13, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !971, metadata !DIExpression()), !dbg !1041
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1042
  %0 = load i32, ptr %debug, align 8, !dbg !1042, !tbaa !1044
  %cmp.not = icmp eq i32 %0, 0, !dbg !1063
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1064

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1065
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 283, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1066
  br label %if.end, !dbg !1067

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %radius, double noundef %sigma, double noundef %radius, double noundef %sigma) #13, !dbg !1068
  %call4 = call ptr @AcquireKernelInfo(ptr noundef nonnull %geometry) #13, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call4, metadata !977, metadata !DIExpression()), !dbg !1037
  %cmp5 = icmp eq ptr %call4, null, !dbg !1070
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !1072

if.then6:                                         ; preds = %if.end
  %filename7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1073
  %call9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 293, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename7) #13, !dbg !1073
  br label %cleanup278, !dbg !1073

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @MorphologyApply(ptr noundef nonnull %image, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %call4, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %exception) #13, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %call11, metadata !976, metadata !DIExpression()), !dbg !1037
  %call12 = call ptr @DestroyKernelInfo(ptr noundef nonnull %call4) #13, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %call12, metadata !977, metadata !DIExpression()), !dbg !1037
  %cmp13 = icmp eq ptr %call11, null, !dbg !1077
  br i1 %cmp13, label %cleanup278, label %if.end15, !dbg !1079

if.end15:                                         ; preds = %if.end10
  %call16 = call i32 @SetImageColorspace(ptr noundef nonnull %call11, i32 noundef 2) #13, !dbg !1080
  %cmp17 = icmp eq i32 %call16, 0, !dbg !1082
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1083

if.then18:                                        ; preds = %if.end15
  %call19 = call ptr @DestroyImage(ptr noundef nonnull %call11) #13, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %call19, metadata !976, metadata !DIExpression()), !dbg !1037
  br label %cleanup278, !dbg !1086

if.end20:                                         ; preds = %if.end15
  %columns = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 7, !dbg !1087
  %1 = load i64, ptr %columns, align 8, !dbg !1087, !tbaa !1088
  %rows = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 8, !dbg !1089
  %2 = load i64, ptr %rows, align 8, !dbg !1089, !tbaa !1090
  %call21 = call ptr @AcquireMatrixInfo(i64 noundef %1, i64 noundef %2, i64 noundef 40, ptr noundef %exception) #13, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %call21, metadata !980, metadata !DIExpression()), !dbg !1037
  %cmp22 = icmp eq ptr %call21, null, !dbg !1092
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !1094

if.then23:                                        ; preds = %if.end20
  %call24 = call ptr @DestroyImage(ptr noundef nonnull %call11) #13, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %call24, metadata !976, metadata !DIExpression()), !dbg !1037
  br label %cleanup278, !dbg !1097

if.end25:                                         ; preds = %if.end20
  call void @llvm.dbg.value(metadata i32 1, metadata !978, metadata !DIExpression()), !dbg !1037
  %call26 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call11, ptr noundef %exception) #13, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call26, metadata !961, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 1, metadata !978, metadata !DIExpression()), !dbg !1037
  %3 = load i64, ptr %rows, align 8, !dbg !1099, !tbaa !1090
  %cmp28445 = icmp sgt i64 %3, 0, !dbg !1100
  br i1 %cmp28445, label %for.body.lr.ph, label %for.end115, !dbg !1101

for.body.lr.ph:                                   ; preds = %if.end25
  %orientation = getelementptr inbounds %struct._CannyInfo, ptr %pixel41, i64 0, i32 2
  br label %for.body, !dbg !1101

for.body:                                         ; preds = %for.body.lr.ph, %cleanup109
  %y.0447 = phi i64 [ 0, %for.body.lr.ph ], [ %inc114, %cleanup109 ]
  %status.0446 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup109 ]
  call void @llvm.dbg.value(metadata i64 %y.0447, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.0446, metadata !978, metadata !DIExpression()), !dbg !1037
  %cmp29 = icmp eq i32 %status.0446, 0, !dbg !1102
  br i1 %cmp29, label %cleanup109, label %if.end31, !dbg !1104

if.end31:                                         ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !1105, !tbaa !1088
  %add = add i64 %4, 1, !dbg !1106
  %call33 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call26, i64 noundef 0, i64 noundef %y.0447, i64 noundef %add, i64 noundef 2, ptr noundef %exception) #14, !dbg !1107
  call void @llvm.dbg.value(metadata ptr %call33, metadata !982, metadata !DIExpression()), !dbg !1108
  %cmp34 = icmp eq ptr %call33, null, !dbg !1109
  br i1 %cmp34, label %cleanup109, label %for.cond37.preheader, !dbg !1111

for.cond37.preheader:                             ; preds = %if.end31
  call void @llvm.dbg.value(metadata i64 0, metadata !986, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %call33, metadata !982, metadata !DIExpression()), !dbg !1108
  %5 = load i64, ptr %columns, align 8, !dbg !1112, !tbaa !1088
  %cmp39442 = icmp sgt i64 %5, 0, !dbg !1113
  br i1 %cmp39442, label %for.body40, label %cleanup109, !dbg !1114

for.body40:                                       ; preds = %for.cond37.preheader, %if.end96
  %x.0444 = phi i64 [ %inc107, %if.end96 ], [ 0, %for.cond37.preheader ]
  %p.0443 = phi ptr [ %spec.select430, %if.end96 ], [ %call33, %for.cond37.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0444, metadata !986, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %p.0443, metadata !982, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pixel41) #13, !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %pixel41, metadata !987, metadata !DIExpression()), !dbg !1116
  %call42 = call ptr @ResetMagickMemory(ptr noundef nonnull %pixel41, i32 noundef 0, i64 noundef 40) #13, !dbg !1117
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !991, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %p.0443, metadata !993, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !1118
  br label %for.cond46.preheader, !dbg !1119

for.cond46.preheader:                             ; preds = %for.body40, %for.end
  %cmp44 = phi i1 [ true, %for.body40 ], [ false, %for.end ]
  %v.0441 = phi i64 [ 0, %for.body40 ], [ 1, %for.end ]
  %kernel_pixels.0440 = phi ptr [ %p.0443, %for.body40 ], [ %add.ptr58, %for.end ]
  %dy.0439 = phi double [ 0.000000e+00, %for.body40 ], [ %9, %for.end ]
  %dx.0438 = phi double [ 0.000000e+00, %for.body40 ], [ %7, %for.end ]
  call void @llvm.dbg.value(metadata i64 %v.0441, metadata !994, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %kernel_pixels.0440, metadata !993, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double %dy.0439, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double %dx.0438, metadata !991, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata double %dy.0439, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double %dx.0438, metadata !991, metadata !DIExpression()), !dbg !1118
  br label %for.body48, !dbg !1121

for.body48:                                       ; preds = %for.cond46.preheader, %for.body48
  %cmp47 = phi i1 [ true, %for.cond46.preheader ], [ false, %for.body48 ]
  %u.0437 = phi i64 [ 0, %for.cond46.preheader ], [ 1, %for.body48 ]
  %dy.1436 = phi double [ %dy.0439, %for.cond46.preheader ], [ %9, %for.body48 ]
  %dx.1435 = phi double [ %dx.0438, %for.cond46.preheader ], [ %7, %for.body48 ]
  call void @llvm.dbg.value(metadata i64 %u.0437, metadata !995, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata double %dy.1436, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double %dx.1435, metadata !991, metadata !DIExpression()), !dbg !1118
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %kernel_pixels.0440, i64 %u.0437, !dbg !1122
  %call49 = call float @GetPixelIntensity(ptr noundef nonnull %call11, ptr noundef %add.ptr) #14, !dbg !1123
  %conv = fpext float %call49 to double, !dbg !1123
  call void @llvm.dbg.value(metadata double %conv, metadata !999, metadata !DIExpression()), !dbg !1124
  %arrayidx50 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gx, i64 0, i64 %v.0441, i64 %u.0437, !dbg !1125
  %6 = load double, ptr %arrayidx50, align 8, !dbg !1125, !tbaa !1126
  %mul = fmul double %6, 5.000000e-01, !dbg !1127
  %7 = call double @llvm.fmuladd.f64(double %mul, double %conv, double %dx.1435), !dbg !1128
  call void @llvm.dbg.value(metadata double %7, metadata !991, metadata !DIExpression()), !dbg !1118
  %arrayidx53 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gy, i64 0, i64 %v.0441, i64 %u.0437, !dbg !1129
  %8 = load double, ptr %arrayidx53, align 8, !dbg !1129, !tbaa !1126
  %mul54 = fmul double %8, 5.000000e-01, !dbg !1130
  %9 = call double @llvm.fmuladd.f64(double %mul54, double %conv, double %dy.1436), !dbg !1131
  call void @llvm.dbg.value(metadata double %9, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %u.0437, metadata !995, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1120
  br i1 %cmp47, label %for.body48, label %for.end, !dbg !1121, !llvm.loop !1132

for.end:                                          ; preds = %for.body48
  %10 = load i64, ptr %columns, align 8, !dbg !1136, !tbaa !1088
  %add57 = add i64 %10, 1, !dbg !1137
  %add.ptr58 = getelementptr inbounds %struct._PixelPacket, ptr %kernel_pixels.0440, i64 %add57, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %add.ptr58, metadata !993, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %v.0441, metadata !994, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1118
  call void @llvm.dbg.value(metadata double %9, metadata !992, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata double %7, metadata !991, metadata !DIExpression()), !dbg !1118
  br i1 %cmp44, label %for.cond46.preheader, label %for.end61, !dbg !1119, !llvm.loop !1139

for.end61:                                        ; preds = %for.end
  %call62 = call double @hypot(double noundef %7, double noundef %9) #13, !dbg !1141
  store double %call62, ptr %pixel41, align 8, !dbg !1142, !tbaa !1143
  store i32 0, ptr %orientation, align 8, !dbg !1145, !tbaa !1146
  %11 = call double @llvm.fabs.f64(double %7), !dbg !1147
  %cmp63 = fcmp ogt double %11, 1.000000e-15, !dbg !1148
  br i1 %cmp63, label %if.then65, label %if.end96, !dbg !1149

if.then65:                                        ; preds = %for.end61
  %div = fdiv double %9, %7, !dbg !1150
  call void @llvm.dbg.value(metadata double %div, metadata !1003, metadata !DIExpression()), !dbg !1151
  %cmp66 = fcmp olt double %div, 0.000000e+00, !dbg !1152
  br i1 %cmp66, label %if.then68, label %if.else81, !dbg !1154

if.then68:                                        ; preds = %if.then65
  %cmp69 = fcmp olt double %div, 0xC003504F333F82AD, !dbg !1155
  br i1 %cmp69, label %if.end96, label %if.else, !dbg !1158

if.else:                                          ; preds = %if.then68
  %cmp73 = fcmp olt double %div, 0xBFDA827999FCE882, !dbg !1159
  %. = select i1 %cmp73, i32 1, i32 2
  br label %if.end96.sink.split

if.else81:                                        ; preds = %if.then65
  %cmp82 = fcmp ogt double %div, 0x4003504F333F82AD, !dbg !1161
  br i1 %cmp82, label %if.end96, label %if.else86, !dbg !1164

if.else86:                                        ; preds = %if.else81
  %cmp87 = fcmp ogt double %div, 0x3FDA827999FCE882, !dbg !1165
  %.482 = select i1 %cmp87, i32 3, i32 2
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.else86, %if.else
  %.sink = phi i32 [ %., %if.else ], [ %.482, %if.else86 ]
  store i32 %.sink, ptr %orientation, align 8, !dbg !1167, !tbaa !1146
  br label %if.end96, !dbg !1168

if.end96:                                         ; preds = %if.end96.sink.split, %if.else81, %if.then68, %for.end61
  %call97 = call i32 @SetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x.0444, i64 noundef %y.0447, ptr noundef nonnull %pixel41) #13, !dbg !1168
  %cmp98 = icmp ne i32 %call97, 0, !dbg !1170
  %spec.select430.idx = zext i1 %cmp98 to i64, !dbg !1171
  %spec.select430 = getelementptr %struct._PixelPacket, ptr %p.0443, i64 %spec.select430.idx, !dbg !1171
  call void @llvm.dbg.value(metadata ptr %spec.select430, metadata !982, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pixel41) #13, !dbg !1172
  %inc107 = add nuw nsw i64 %x.0444, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %inc107, metadata !986, metadata !DIExpression()), !dbg !1108
  %12 = load i64, ptr %columns, align 8, !dbg !1112, !tbaa !1088
  %cmp39 = icmp slt i64 %inc107, %12, !dbg !1113
  br i1 %cmp39, label %for.body40, label %cleanup109, !dbg !1114, !llvm.loop !1174

cleanup109:                                       ; preds = %if.end96, %for.cond37.preheader, %if.end31, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end31 ], [ 1, %for.cond37.preheader ], [ 1, %if.end96 ], !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !978, metadata !DIExpression()), !dbg !1037
  %inc114 = add nuw nsw i64 %y.0447, 1, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %inc114, metadata !981, metadata !DIExpression()), !dbg !1037
  %13 = load i64, ptr %rows, align 8, !dbg !1099, !tbaa !1090
  %cmp28 = icmp slt i64 %inc114, %13, !dbg !1100
  br i1 %cmp28, label %for.body, label %for.end115, !dbg !1101, !llvm.loop !1177

for.end115:                                       ; preds = %cleanup109, %if.end25
  %status.0.lcssa = phi i32 [ 1, %if.end25 ], [ %status.1, %cleanup109 ], !dbg !1179
  %call116 = call ptr @DestroyCacheView(ptr noundef %call26) #13, !dbg !1180
  call void @llvm.dbg.value(metadata ptr %call116, metadata !961, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !979, metadata !DIExpression()), !dbg !1037
  %call117 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %pixel) #13, !dbg !1181
  %intensity118 = getelementptr inbounds %struct._CannyInfo, ptr %pixel, i64 0, i32 1, !dbg !1182
  %14 = load double, ptr %intensity118, align 8, !dbg !1182, !tbaa !1183
  call void @llvm.dbg.value(metadata double %14, metadata !973, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %14, metadata !974, metadata !DIExpression()), !dbg !1037
  %call120 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call11, ptr noundef %exception) #13, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %call120, metadata !961, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa, metadata !978, metadata !DIExpression()), !dbg !1037
  %15 = load i64, ptr %rows, align 8, !dbg !1185, !tbaa !1090
  %cmp123456 = icmp sgt i64 %15, 0, !dbg !1186
  br i1 %cmp123456, label %for.body125.lr.ph, label %for.end219, !dbg !1187

for.body125.lr.ph:                                ; preds = %for.end115
  %orientation144 = getelementptr inbounds %struct._CannyInfo, ptr %pixel142, i64 0, i32 2
  %intensity168 = getelementptr inbounds %struct._CannyInfo, ptr %pixel142, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %rows206 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body125, !dbg !1187

for.body125:                                      ; preds = %for.body125.lr.ph, %cleanup213
  %max.0463 = phi double [ %14, %for.body125.lr.ph ], [ %max.3, %cleanup213 ]
  %min.0462 = phi double [ %14, %for.body125.lr.ph ], [ %min.3, %cleanup213 ]
  %y.1459 = phi i64 [ 0, %for.body125.lr.ph ], [ %inc218, %cleanup213 ]
  %progress.0458 = phi i64 [ 0, %for.body125.lr.ph ], [ %progress.2, %cleanup213 ]
  %status.2457 = phi i32 [ %status.0.lcssa, %for.body125.lr.ph ], [ %status.6, %cleanup213 ]
  call void @llvm.dbg.value(metadata double %max.0463, metadata !973, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %min.0462, metadata !974, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %y.1459, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %progress.0458, metadata !979, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.2457, metadata !978, metadata !DIExpression()), !dbg !1037
  %cmp127 = icmp eq i32 %status.2457, 0, !dbg !1188
  br i1 %cmp127, label %cleanup213, label %if.end130, !dbg !1190

if.end130:                                        ; preds = %for.body125
  %16 = load i64, ptr %columns, align 8, !dbg !1191, !tbaa !1088
  %call132 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call120, i64 noundef 0, i64 noundef %y.1459, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #14, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %call132, metadata !1006, metadata !DIExpression()), !dbg !1193
  %cmp133 = icmp eq ptr %call132, null, !dbg !1194
  br i1 %cmp133, label %cleanup213, label %for.cond137.preheader, !dbg !1196

for.cond137.preheader:                            ; preds = %if.end130
  call void @llvm.dbg.value(metadata i64 0, metadata !1011, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call132, metadata !1006, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %max.0463, metadata !973, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %min.0462, metadata !974, metadata !DIExpression()), !dbg !1037
  %17 = load i64, ptr %columns, align 8, !dbg !1197, !tbaa !1088
  %cmp139448 = icmp sgt i64 %17, 0, !dbg !1198
  br i1 %cmp139448, label %for.body141.lr.ph, label %for.end196, !dbg !1199

for.body141.lr.ph:                                ; preds = %for.cond137.preheader
  %sub150 = add nsw i64 %y.1459, -1
  %add153 = add nuw nsw i64 %y.1459, 1
  br label %for.body141, !dbg !1199

for.body141:                                      ; preds = %for.body141.lr.ph, %if.end192
  %x126.0452 = phi i64 [ 0, %for.body141.lr.ph ], [ %inc195, %if.end192 ]
  %q.0451 = phi ptr [ %call132, %for.body141.lr.ph ], [ %incdec.ptr193, %if.end192 ]
  %max.1450 = phi double [ %max.0463, %for.body141.lr.ph ], [ %max.2, %if.end192 ]
  %min.1449 = phi double [ %min.0462, %for.body141.lr.ph ], [ %min.2, %if.end192 ]
  call void @llvm.dbg.value(metadata i64 %x126.0452, metadata !1011, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %q.0451, metadata !1006, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %max.1450, metadata !973, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %min.1449, metadata !974, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alpha_pixel) #13, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %alpha_pixel, metadata !1012, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %beta_pixel) #13, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %beta_pixel, metadata !1016, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pixel142) #13, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %pixel142, metadata !1017, metadata !DIExpression()), !dbg !1203
  %call143 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x126.0452, i64 noundef %y.1459, ptr noundef nonnull %pixel142) #13, !dbg !1204
  %18 = load i32, ptr %orientation144, align 8, !dbg !1205, !tbaa !1146
  switch i32 %18, label %sw.default [
    i32 3, label %sw.bb160
    i32 1, label %sw.bb148
    i32 2, label %sw.bb155
  ], !dbg !1206

sw.default:                                       ; preds = %for.body141
  %call145 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x126.0452, i64 noundef %sub150, ptr noundef nonnull %alpha_pixel) #13, !dbg !1207
  %call147 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x126.0452, i64 noundef %add153, ptr noundef nonnull %beta_pixel) #13, !dbg !1210
  br label %sw.epilog, !dbg !1211

sw.bb148:                                         ; preds = %for.body141
  %sub149 = add nsw i64 %x126.0452, -1, !dbg !1212
  %call151 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %sub149, i64 noundef %sub150, ptr noundef nonnull %alpha_pixel) #13, !dbg !1214
  %add152 = add nuw nsw i64 %x126.0452, 1, !dbg !1215
  %call154 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %add152, i64 noundef %add153, ptr noundef nonnull %beta_pixel) #13, !dbg !1216
  br label %sw.epilog, !dbg !1217

sw.bb155:                                         ; preds = %for.body141
  %sub156 = add nsw i64 %x126.0452, -1, !dbg !1218
  %call157 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %sub156, i64 noundef %y.1459, ptr noundef nonnull %alpha_pixel) #13, !dbg !1220
  %add158 = add nuw nsw i64 %x126.0452, 1, !dbg !1221
  %call159 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %add158, i64 noundef %y.1459, ptr noundef nonnull %beta_pixel) #13, !dbg !1222
  br label %sw.epilog, !dbg !1223

sw.bb160:                                         ; preds = %for.body141
  %add161 = add nuw nsw i64 %x126.0452, 1, !dbg !1224
  %call163 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %add161, i64 noundef %sub150, ptr noundef nonnull %beta_pixel) #13, !dbg !1226
  %sub164 = add nsw i64 %x126.0452, -1, !dbg !1227
  %call166 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %sub164, i64 noundef %add153, ptr noundef nonnull %alpha_pixel) #13, !dbg !1228
  br label %sw.epilog, !dbg !1229

sw.epilog:                                        ; preds = %sw.bb160, %sw.bb155, %sw.bb148, %sw.default
  %19 = load double, ptr %pixel142, align 8, !dbg !1230, !tbaa !1143
  %20 = load double, ptr %alpha_pixel, align 8, !dbg !1231, !tbaa !1143
  %cmp171 = fcmp olt double %19, %20, !dbg !1233
  %21 = load double, ptr %beta_pixel, align 8
  %cmp175 = fcmp olt double %19, %21
  %or.cond = select i1 %cmp171, i1 true, i1 %cmp175, !dbg !1234
  %spec.store.select = select i1 %or.cond, double 0.000000e+00, double %19, !dbg !1234
  store double %spec.store.select, ptr %intensity168, align 8, !dbg !1235
  %call180 = call i32 @SetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x126.0452, i64 noundef %y.1459, ptr noundef nonnull %pixel142) #13, !dbg !1236
  %22 = load double, ptr %intensity168, align 8, !dbg !1237, !tbaa !1183
  %cmp182 = fcmp olt double %22, %min.1449, !dbg !1240
  br i1 %cmp182, label %if.then184, label %if.end186, !dbg !1241

if.then184:                                       ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata double %22, metadata !974, metadata !DIExpression()), !dbg !1037
  br label %if.end186, !dbg !1242

if.end186:                                        ; preds = %if.then184, %sw.epilog
  %min.2 = phi double [ %22, %if.then184 ], [ %min.1449, %sw.epilog ], !dbg !1037
  call void @llvm.dbg.value(metadata double %min.2, metadata !974, metadata !DIExpression()), !dbg !1037
  %cmp188 = fcmp ogt double %22, %max.1450, !dbg !1243
  br i1 %cmp188, label %if.then190, label %if.end192, !dbg !1245

if.then190:                                       ; preds = %if.end186
  call void @llvm.dbg.value(metadata double %22, metadata !973, metadata !DIExpression()), !dbg !1037
  br label %if.end192, !dbg !1246

if.end192:                                        ; preds = %if.then190, %if.end186
  %max.2 = phi double [ %22, %if.then190 ], [ %max.1450, %if.end186 ], !dbg !1037
  call void @llvm.dbg.value(metadata double %max.2, metadata !973, metadata !DIExpression()), !dbg !1037
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0451, i64 0, i32 2, !dbg !1247
  store i16 0, ptr %red, align 2, !dbg !1248, !tbaa !1249
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0451, i64 0, i32 1, !dbg !1250
  store i16 0, ptr %green, align 2, !dbg !1251, !tbaa !1252
  store i16 0, ptr %q.0451, align 2, !dbg !1253, !tbaa !1254
  %incdec.ptr193 = getelementptr inbounds %struct._PixelPacket, ptr %q.0451, i64 1, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %incdec.ptr193, metadata !1006, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pixel142) #13, !dbg !1256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %beta_pixel) #13, !dbg !1256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alpha_pixel) #13, !dbg !1256
  %inc195 = add nuw nsw i64 %x126.0452, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %inc195, metadata !1011, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %min.2, metadata !974, metadata !DIExpression()), !dbg !1037
  %23 = load i64, ptr %columns, align 8, !dbg !1197, !tbaa !1088
  %cmp139 = icmp slt i64 %inc195, %23, !dbg !1198
  br i1 %cmp139, label %for.body141, label %for.end196, !dbg !1199, !llvm.loop !1258

for.end196:                                       ; preds = %if.end192, %for.cond137.preheader
  %min.1.lcssa = phi double [ %min.0462, %for.cond137.preheader ], [ %min.2, %if.end192 ], !dbg !1037
  %max.1.lcssa = phi double [ %max.0463, %for.cond137.preheader ], [ %max.2, %if.end192 ], !dbg !1037
  %call197 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call120, ptr noundef %exception) #14, !dbg !1260
  %cmp198 = icmp ne i32 %call197, 0, !dbg !1262
  %spec.select = zext i1 %cmp198 to i32, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !978, metadata !DIExpression()), !dbg !1037
  %24 = load ptr, ptr %progress_monitor, align 8, !dbg !1264, !tbaa !1265
  %cmp202.not = icmp eq ptr %24, null, !dbg !1266
  br i1 %cmp202.not, label %cleanup213, label %SetImageProgress.exit, !dbg !1267

SetImageProgress.exit:                            ; preds = %for.end196
  %inc205 = add nsw i64 %progress.0458, 1, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %inc205, metadata !979, metadata !DIExpression()), !dbg !1037
  %25 = load i64, ptr %rows206, align 8, !dbg !1269, !tbaa !1090
  call void @llvm.dbg.value(metadata ptr %image, metadata !1270, metadata !DIExpression()) #13, !dbg !1280
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !1276, metadata !DIExpression()) #13, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %progress.0458, metadata !1277, metadata !DIExpression()) #13, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %25, metadata !1278, metadata !DIExpression()) #13, !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1279, metadata !DIExpression()) #13, !dbg !1283
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename.i) #13, !dbg !1284
  %26 = load ptr, ptr %progress_monitor, align 8, !dbg !1285, !tbaa !1265
  %27 = load ptr, ptr %client_data.i, align 8, !dbg !1286, !tbaa !1287
  %call4.i = call i32 %26(ptr noundef nonnull %message.i, i64 noundef %progress.0458, i64 noundef %25, ptr noundef %27) #13, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1018, metadata !DIExpression()), !dbg !1290
  %cmp208 = icmp eq i32 %call4.i, 0, !dbg !1291
  %spec.select428 = select i1 %cmp208, i32 0, i32 %spec.select, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %spec.select428, metadata !978, metadata !DIExpression()), !dbg !1037
  br label %cleanup213, !dbg !1294

cleanup213:                                       ; preds = %for.end196, %SetImageProgress.exit, %if.end130, %for.body125
  %status.6 = phi i32 [ 0, %for.body125 ], [ 0, %if.end130 ], [ %spec.select428, %SetImageProgress.exit ], [ %spec.select, %for.end196 ], !dbg !1037
  %progress.2 = phi i64 [ %progress.0458, %for.body125 ], [ %progress.0458, %if.end130 ], [ %inc205, %SetImageProgress.exit ], [ %progress.0458, %for.end196 ], !dbg !1037
  %min.3 = phi double [ %min.0462, %for.body125 ], [ %min.0462, %if.end130 ], [ %min.1.lcssa, %SetImageProgress.exit ], [ %min.1.lcssa, %for.end196 ], !dbg !1295
  %max.3 = phi double [ %max.0463, %for.body125 ], [ %max.0463, %if.end130 ], [ %max.1.lcssa, %SetImageProgress.exit ], [ %max.1.lcssa, %for.end196 ], !dbg !1296
  call void @llvm.dbg.value(metadata double %max.3, metadata !973, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %min.3, metadata !974, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !979, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.6, metadata !978, metadata !DIExpression()), !dbg !1037
  %inc218 = add nuw nsw i64 %y.1459, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %inc218, metadata !981, metadata !DIExpression()), !dbg !1037
  %28 = load i64, ptr %rows, align 8, !dbg !1185, !tbaa !1090
  %cmp123 = icmp slt i64 %inc218, %28, !dbg !1186
  br i1 %cmp123, label %for.body125, label %for.end219, !dbg !1187, !llvm.loop !1298

for.end219:                                       ; preds = %cleanup213, %for.end115
  %status.2.lcssa = phi i32 [ %status.0.lcssa, %for.end115 ], [ %status.6, %cleanup213 ], !dbg !1179
  %min.0.lcssa = phi double [ %14, %for.end115 ], [ %min.3, %cleanup213 ], !dbg !1295
  %max.0.lcssa = phi double [ %14, %for.end115 ], [ %max.3, %cleanup213 ], !dbg !1296
  %call220 = call ptr @DestroyCacheView(ptr noundef %call120) #13, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %call220, metadata !961, metadata !DIExpression()), !dbg !1037
  %sub221 = fsub double %max.0.lcssa, %min.0.lcssa, !dbg !1301
  %29 = call double @llvm.fmuladd.f64(double %lower_percent, double %sub221, double %min.0.lcssa), !dbg !1302
  call void @llvm.dbg.value(metadata double %29, metadata !972, metadata !DIExpression()), !dbg !1037
  %30 = call double @llvm.fmuladd.f64(double %upper_percent, double %sub221, double %min.0.lcssa), !dbg !1303
  call void @llvm.dbg.value(metadata double %30, metadata !975, metadata !DIExpression()), !dbg !1037
  %call225 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call11, ptr noundef %exception) #13, !dbg !1304
  call void @llvm.dbg.value(metadata ptr %call225, metadata !961, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.2.lcssa, metadata !978, metadata !DIExpression()), !dbg !1037
  %31 = load i64, ptr %rows, align 8, !dbg !1305, !tbaa !1090
  %cmp228473 = icmp sgt i64 %31, 0, !dbg !1306
  br i1 %cmp228473, label %for.body230.lr.ph, label %for.end275, !dbg !1307

for.body230.lr.ph:                                ; preds = %for.end219
  %intensity257 = getelementptr inbounds %struct._CannyInfo, ptr %pixel241, i64 0, i32 1
  %x9.i = getelementptr inbounds %struct._CannyInfo, ptr %edge.i, i64 0, i32 3
  %y10.i = getelementptr inbounds %struct._CannyInfo, ptr %edge.i, i64 0, i32 4
  %intensity.i = getelementptr inbounds %struct._CannyInfo, ptr %pixel.i, i64 0, i32 1
  br label %for.body230, !dbg !1307

for.body230:                                      ; preds = %for.body230.lr.ph, %cleanup270
  %32 = phi i64 [ %31, %for.body230.lr.ph ], [ %45, %cleanup270 ]
  %y.2475 = phi i64 [ 0, %for.body230.lr.ph ], [ %inc274, %cleanup270 ]
  %status.7474 = phi i32 [ %status.2.lcssa, %for.body230.lr.ph ], [ %status.11, %cleanup270 ]
  call void @llvm.dbg.value(metadata i64 %y.2475, metadata !981, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.7474, metadata !978, metadata !DIExpression()), !dbg !1037
  %cmp232 = icmp eq i32 %status.7474, 0, !dbg !1308
  br i1 %cmp232, label %cleanup270, label %for.cond236.preheader, !dbg !1310

for.cond236.preheader:                            ; preds = %for.body230
  call void @llvm.dbg.value(metadata i64 0, metadata !1021, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %status.7474, metadata !978, metadata !DIExpression()), !dbg !1037
  %33 = load i64, ptr %columns, align 8, !dbg !1312, !tbaa !1088
  %cmp238467 = icmp sgt i64 %33, 0, !dbg !1313
  br i1 %cmp238467, label %for.body240, label %cleanup270, !dbg !1314

for.body240:                                      ; preds = %for.cond236.preheader, %cleanup263
  %x231.0469 = phi i64 [ %inc268, %cleanup263 ], [ 0, %for.cond236.preheader ]
  %status.8468 = phi i32 [ %status.10, %cleanup263 ], [ %status.7474, %for.cond236.preheader ]
  call void @llvm.dbg.value(metadata i64 %x231.0469, metadata !1021, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %status.8468, metadata !978, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pixel241) #13, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %pixel241, metadata !1025, metadata !DIExpression()), !dbg !1316
  %call243 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call225, i64 noundef %x231.0469, i64 noundef %y.2475, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #14, !dbg !1317
  call void @llvm.dbg.value(metadata ptr %call243, metadata !1029, metadata !DIExpression()), !dbg !1318
  %cmp244 = icmp eq ptr %call243, null, !dbg !1319
  br i1 %cmp244, label %cleanup263, label %if.end247, !dbg !1321

if.end247:                                        ; preds = %for.body240
  %call248 = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %x231.0469, i64 noundef %y.2475, ptr noundef nonnull %pixel241) #13, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %call248, metadata !978, metadata !DIExpression()), !dbg !1037
  %cmp249 = icmp eq i32 %call248, 0, !dbg !1323
  br i1 %cmp249, label %cleanup263, label %if.end252, !dbg !1325

if.end252:                                        ; preds = %if.end247
  %call253 = call float @GetPixelIntensity(ptr noundef nonnull %call11, ptr noundef nonnull %call243) #14, !dbg !1326
  %cmp255 = fcmp une float %call253, 0.000000e+00, !dbg !1328
  %34 = load double, ptr %intensity257, align 8
  %cmp258 = fcmp ult double %34, %30
  %or.cond429 = select i1 %cmp255, i1 true, i1 %cmp258, !dbg !1329
  br i1 %or.cond429, label %cleanup263, label %if.then260, !dbg !1329

if.then260:                                       ; preds = %if.end252
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1330, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %call225, metadata !1336, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1337, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %x231.0469, metadata !1338, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %y.2475, metadata !1339, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata double %29, metadata !1340, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1341, metadata !DIExpression()) #13, !dbg !1355
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %edge.i) #13, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %edge.i, metadata !1342, metadata !DIExpression()) #13, !dbg !1358
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pixel.i) #13, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %pixel.i, metadata !1343, metadata !DIExpression()) #13, !dbg !1359
  %call.i431 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call225, i64 noundef %x231.0469, i64 noundef %y.2475, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #14, !dbg !1360
  call void @llvm.dbg.value(metadata ptr %call.i431, metadata !1345, metadata !DIExpression()) #13, !dbg !1355
  %cmp.i432 = icmp eq ptr %call.i431, null, !dbg !1361
  br i1 %cmp.i432, label %TraceEdges.exit, label %if.end.i433, !dbg !1363

if.end.i433:                                      ; preds = %if.then260
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %call.i431, i64 0, i32 2, !dbg !1364
  store i16 -1, ptr %red.i, align 2, !dbg !1365, !tbaa !1249
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %call.i431, i64 0, i32 1, !dbg !1366
  store i16 -1, ptr %green.i, align 2, !dbg !1367, !tbaa !1252
  store i16 -1, ptr %call.i431, align 2, !dbg !1368, !tbaa !1254
  %call1.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call225, ptr noundef %exception) #14, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %call1.i, metadata !1344, metadata !DIExpression()) #13, !dbg !1355
  %cmp2.i = icmp eq i32 %call1.i, 0, !dbg !1370
  br i1 %cmp2.i, label %TraceEdges.exit, label %if.end4.i, !dbg !1372

if.end4.i:                                        ; preds = %if.end.i433
  %call5.i = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %edge.i) #13, !dbg !1373
  %cmp6.i = icmp eq i32 %call5.i, 0, !dbg !1375
  br i1 %cmp6.i, label %TraceEdges.exit, label %if.end8.i, !dbg !1376

if.end8.i:                                        ; preds = %if.end4.i
  store i64 %x231.0469, ptr %x9.i, align 8, !dbg !1377, !tbaa !1378
  store i64 %y.2475, ptr %y10.i, align 8, !dbg !1379, !tbaa !1380
  %call11.i = call i32 @SetMatrixElement(ptr noundef nonnull %call21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %edge.i) #13, !dbg !1381
  %cmp12.i = icmp eq i32 %call11.i, 0, !dbg !1383
  br i1 %cmp12.i, label %TraceEdges.exit, label %for.body.i, !dbg !1384

for.cond.loopexit.i:                              ; preds = %for.inc79.i
  call void @llvm.dbg.value(metadata i64 %i.3.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %cmp15.not.i = icmp eq i64 %i.3.i, 0, !dbg !1385
  br i1 %cmp15.not.i, label %TraceEdges.exit, label %for.body.i, !dbg !1386, !llvm.loop !1387

for.body.i:                                       ; preds = %if.end8.i, %for.cond.loopexit.i
  %i.0146.i = phi i64 [ %i.3.i, %for.cond.loopexit.i ], [ 1, %if.end8.i ]
  call void @llvm.dbg.value(metadata i64 %i.0146.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %dec.i = add nsw i64 %i.0146.i, -1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %call16.i = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %dec.i, i64 noundef 0, ptr noundef nonnull %edge.i) #13, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %call16.i, metadata !1344, metadata !DIExpression()) #13, !dbg !1355
  %cmp17.i = icmp eq i32 %call16.i, 0, !dbg !1391
  br i1 %cmp17.i, label %TraceEdges.exit, label %for.cond23.preheader.i, !dbg !1393

for.cond23.preheader.i:                           ; preds = %for.body.i, %for.inc79.i
  %v.0145.i = phi i64 [ %inc80.i, %for.inc79.i ], [ -1, %for.body.i ]
  %i.1144.i = phi i64 [ %i.3.i, %for.inc79.i ], [ %dec.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %v.0145.i, metadata !1347, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %i.1144.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %cmp27.i = icmp eq i64 %v.0145.i, 0
  call void @llvm.dbg.value(metadata i64 -1, metadata !1351, metadata !DIExpression()) #13, !dbg !1395
  br label %for.body25.i, !dbg !1396

for.body25.i:                                     ; preds = %for.inc.i, %for.cond23.preheader.i
  %u.0143.i = phi i64 [ -1, %for.cond23.preheader.i ], [ %inc78.i, %for.inc.i ]
  %i.2142.i = phi i64 [ %i.1144.i, %for.cond23.preheader.i ], [ %i.3.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %u.0143.i, metadata !1351, metadata !DIExpression()) #13, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %i.2142.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %cmp26.i = icmp eq i64 %u.0143.i, 0, !dbg !1398
  %or.cond.i = select i1 %cmp26.i, i1 %cmp27.i, i1 false, !dbg !1402
  br i1 %or.cond.i, label %for.inc.i, label %if.end29.i, !dbg !1402

if.end29.i:                                       ; preds = %for.body25.i
  %35 = load i64, ptr %x9.i, align 8, !dbg !1403, !tbaa !1378
  %add.i = add nsw i64 %35, %u.0143.i, !dbg !1405
  %36 = load i64, ptr %y10.i, align 8, !dbg !1406, !tbaa !1380
  %add32.i = add nsw i64 %36, %v.0145.i, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1408, metadata !DIExpression()) #13, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1413, metadata !DIExpression()) #13, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %add32.i, metadata !1414, metadata !DIExpression()) #13, !dbg !1415
  %cmp.i.i = icmp slt i64 %add.i, 0, !dbg !1417
  br i1 %cmp.i.i, label %for.inc.i, label %lor.lhs.false.i.i, !dbg !1419

lor.lhs.false.i.i:                                ; preds = %if.end29.i
  %37 = load i64, ptr %columns, align 8, !dbg !1420, !tbaa !1088
  %cmp1.not.i.i = icmp sle i64 %37, %add.i, !dbg !1421
  %cmp2.i.i = icmp slt i64 %add32.i, 0
  %or.cond.i.i = or i1 %cmp2.i.i, %cmp1.not.i.i, !dbg !1422
  br i1 %or.cond.i.i, label %for.inc.i, label %IsAuthenticPixel.exit.i, !dbg !1422

IsAuthenticPixel.exit.i:                          ; preds = %lor.lhs.false.i.i
  %38 = load i64, ptr %rows, align 8, !dbg !1423, !tbaa !1090
  %cmp4.not.i.not.i = icmp sgt i64 %38, %add32.i, !dbg !1425
  br i1 %cmp4.not.i.not.i, label %if.end36.i, label %for.inc.i, !dbg !1426

if.end36.i:                                       ; preds = %IsAuthenticPixel.exit.i
  %call41.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call225, i64 noundef %add.i, i64 noundef %add32.i, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #14, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %call41.i, metadata !1345, metadata !DIExpression()) #13, !dbg !1355
  %cmp42.i = icmp eq ptr %call41.i, null, !dbg !1428
  br i1 %cmp42.i, label %TraceEdges.exit, label %if.end44.i, !dbg !1430

if.end44.i:                                       ; preds = %if.end36.i
  %39 = load i64, ptr %x9.i, align 8, !dbg !1431, !tbaa !1378
  %add46.i = add nsw i64 %39, %u.0143.i, !dbg !1432
  %40 = load i64, ptr %y10.i, align 8, !dbg !1433, !tbaa !1380
  %add48.i = add nsw i64 %40, %v.0145.i, !dbg !1434
  %call49.i = call i32 @GetMatrixElement(ptr noundef nonnull %call21, i64 noundef %add46.i, i64 noundef %add48.i, ptr noundef nonnull %pixel.i) #13, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %call49.i, metadata !1344, metadata !DIExpression()) #13, !dbg !1355
  %cmp50.i = icmp eq i32 %call49.i, 0, !dbg !1436
  br i1 %cmp50.i, label %TraceEdges.exit, label %if.end52.i, !dbg !1438

if.end52.i:                                       ; preds = %if.end44.i
  %call53.i = call float @GetPixelIntensity(ptr noundef nonnull %call11, ptr noundef nonnull %call41.i) #14, !dbg !1439
  %cmp54.i = fcmp une float %call53.i, 0.000000e+00, !dbg !1441
  %41 = load double, ptr %intensity.i, align 8
  %cmp57.i = fcmp ult double %41, %29
  %or.cond134.i = select i1 %cmp54.i, i1 true, i1 %cmp57.i, !dbg !1442
  br i1 %or.cond134.i, label %for.inc.i, label %if.then59.i, !dbg !1442

if.then59.i:                                      ; preds = %if.end52.i
  %red60.i = getelementptr inbounds %struct._PixelPacket, ptr %call41.i, i64 0, i32 2, !dbg !1443
  store i16 -1, ptr %red60.i, align 2, !dbg !1445, !tbaa !1249
  %green61.i = getelementptr inbounds %struct._PixelPacket, ptr %call41.i, i64 0, i32 1, !dbg !1446
  store i16 -1, ptr %green61.i, align 2, !dbg !1447, !tbaa !1252
  store i16 -1, ptr %call41.i, align 2, !dbg !1448, !tbaa !1254
  %call63.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call225, ptr noundef %exception) #14, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %call63.i, metadata !1344, metadata !DIExpression()) #13, !dbg !1355
  %cmp64.i = icmp eq i32 %call63.i, 0, !dbg !1450
  br i1 %cmp64.i, label %TraceEdges.exit, label %if.end67.i, !dbg !1452

if.end67.i:                                       ; preds = %if.then59.i
  %42 = load i64, ptr %x9.i, align 8, !dbg !1453, !tbaa !1378
  %add69.i = add nsw i64 %42, %u.0143.i, !dbg !1453
  store i64 %add69.i, ptr %x9.i, align 8, !dbg !1453, !tbaa !1378
  %43 = load i64, ptr %y10.i, align 8, !dbg !1454, !tbaa !1380
  %add71.i = add nsw i64 %43, %v.0145.i, !dbg !1454
  store i64 %add71.i, ptr %y10.i, align 8, !dbg !1454, !tbaa !1380
  %call72.i = call i32 @SetMatrixElement(ptr noundef nonnull %call21, i64 noundef %i.2142.i, i64 noundef 0, ptr noundef nonnull %edge.i) #13, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %call72.i, metadata !1344, metadata !DIExpression()) #13, !dbg !1355
  %cmp73.i = icmp eq i32 %call72.i, 0, !dbg !1456
  br i1 %cmp73.i, label %TraceEdges.exit, label %if.end76.i, !dbg !1458

if.end76.i:                                       ; preds = %if.end67.i
  %inc.i = add nsw i64 %i.2142.i, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  br label %for.inc.i, !dbg !1460

for.inc.i:                                        ; preds = %if.end76.i, %if.end52.i, %IsAuthenticPixel.exit.i, %lor.lhs.false.i.i, %if.end29.i, %for.body25.i
  %i.3.i = phi i64 [ %i.2142.i, %for.body25.i ], [ %i.2142.i, %IsAuthenticPixel.exit.i ], [ %inc.i, %if.end76.i ], [ %i.2142.i, %if.end52.i ], [ %i.2142.i, %lor.lhs.false.i.i ], [ %i.2142.i, %if.end29.i ], !dbg !1394
  call void @llvm.dbg.value(metadata i64 %i.3.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %inc78.i = add nsw i64 %u.0143.i, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %inc78.i, metadata !1351, metadata !DIExpression()) #13, !dbg !1395
  %exitcond.not.i = icmp eq i64 %inc78.i, 2, !dbg !1462
  br i1 %exitcond.not.i, label %for.inc79.i, label %for.body25.i, !dbg !1396, !llvm.loop !1463

for.inc79.i:                                      ; preds = %for.inc.i
  %inc80.i = add nsw i64 %v.0145.i, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %inc80.i, metadata !1347, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %i.3.i, metadata !1346, metadata !DIExpression()) #13, !dbg !1355
  %exitcond148.not.i = icmp eq i64 %inc80.i, 2, !dbg !1466
  br i1 %exitcond148.not.i, label %for.cond.loopexit.i, label %for.cond23.preheader.i, !dbg !1467, !llvm.loop !1468

TraceEdges.exit:                                  ; preds = %for.cond.loopexit.i, %for.body.i, %if.end36.i, %if.end44.i, %if.then59.i, %if.end67.i, %if.then260, %if.end.i433, %if.end4.i, %if.end8.i
  %retval.4.i = phi i32 [ 0, %if.then260 ], [ 0, %if.end.i433 ], [ 0, %if.end4.i ], [ 0, %if.end8.i ], [ 0, %if.end67.i ], [ 0, %if.then59.i ], [ 0, %if.end44.i ], [ 0, %if.end36.i ], [ 1, %for.cond.loopexit.i ], [ 0, %for.body.i ], !dbg !1355
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pixel.i) #13, !dbg !1470
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %edge.i) #13, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %retval.4.i, metadata !978, metadata !DIExpression()), !dbg !1037
  br label %cleanup263, !dbg !1471

cleanup263:                                       ; preds = %if.end252, %TraceEdges.exit, %if.end247, %for.body240
  %status.10 = phi i32 [ %status.8468, %for.body240 ], [ 0, %if.end247 ], [ %retval.4.i, %TraceEdges.exit ], [ %call248, %if.end252 ], !dbg !1037
  call void @llvm.dbg.value(metadata i32 %status.10, metadata !978, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pixel241) #13, !dbg !1472
  %inc268 = add nuw nsw i64 %x231.0469, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %inc268, metadata !1021, metadata !DIExpression()), !dbg !1311
  %44 = load i64, ptr %columns, align 8, !dbg !1312, !tbaa !1088
  %cmp238 = icmp slt i64 %inc268, %44, !dbg !1313
  br i1 %cmp238, label %for.body240, label %cleanup270.loopexit, !dbg !1314, !llvm.loop !1474

cleanup270.loopexit:                              ; preds = %cleanup263
  %.pre = load i64, ptr %rows, align 8, !dbg !1305, !tbaa !1090
  br label %cleanup270, !dbg !1476

cleanup270:                                       ; preds = %cleanup270.loopexit, %for.cond236.preheader, %for.body230
  %45 = phi i64 [ %32, %for.body230 ], [ %32, %for.cond236.preheader ], [ %.pre, %cleanup270.loopexit ], !dbg !1305
  %status.11 = phi i32 [ 0, %for.body230 ], [ %status.7474, %for.cond236.preheader ], [ %status.10, %cleanup270.loopexit ], !dbg !1179
  call void @llvm.dbg.value(metadata i32 %status.11, metadata !978, metadata !DIExpression()), !dbg !1037
  %inc274 = add nuw nsw i64 %y.2475, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %inc274, metadata !981, metadata !DIExpression()), !dbg !1037
  %cmp228 = icmp slt i64 %inc274, %45, !dbg !1306
  br i1 %cmp228, label %for.body230, label %for.end275, !dbg !1307, !llvm.loop !1477

for.end275:                                       ; preds = %cleanup270, %for.end219
  %call276 = call ptr @DestroyCacheView(ptr noundef %call225) #13, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %call276, metadata !961, metadata !DIExpression()), !dbg !1037
  %call277 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %call21) #13, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %call277, metadata !980, metadata !DIExpression()), !dbg !1037
  br label %cleanup278, !dbg !1481

cleanup278:                                       ; preds = %if.end10, %for.end275, %if.then23, %if.then18, %if.then6
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %if.then18 ], [ null, %if.then23 ], [ %call11, %for.end275 ], [ null, %if.end10 ], !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry) #13, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pixel) #13, !dbg !1482
  ret ptr %retval.0, !dbg !1482
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1483 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1489 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1495 ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1498 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1502 ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1513 ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1516 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1520 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1523 ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1526 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1529 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1534 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1538 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare !dbg !1541 i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1548 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1551 i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1554 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1555 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1558 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1561 ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageChannelFeatures(ptr noundef %image, i64 noundef %distance, ptr noundef %exception) local_unnamed_addr #0 !dbg !831 {
entry:
  %sub = sub i64 0, %distance, !dbg !1564
  %correlation = alloca %struct._ChannelStatistics, align 8
  %entropy_x = alloca %struct._ChannelStatistics, align 8
  %entropy_xy = alloca %struct._ChannelStatistics, align 8
  %entropy_xy1 = alloca %struct._ChannelStatistics, align 8
  %entropy_xy2 = alloca %struct._ChannelStatistics, align 8
  %entropy_y = alloca %struct._ChannelStatistics, align 8
  %mean = alloca %struct._ChannelStatistics, align 8
  %sum_squares = alloca %struct._ChannelStatistics, align 8
  %variance = alloca %struct._ChannelStatistics, align 8
  %gray = alloca %struct._LongPixelPacket, align 4
  %exception9 = alloca %struct._ExceptionInfo, align 8
  %pixel = alloca %struct._ChannelStatistics, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !836, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %distance, metadata !837, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %exception, metadata !838, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %correlation) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %correlation, metadata !845, metadata !DIExpression()), !dbg !1567
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %entropy_x) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %entropy_x, metadata !849, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %entropy_xy) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %entropy_xy, metadata !850, metadata !DIExpression()), !dbg !1569
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %entropy_xy1) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %entropy_xy1, metadata !851, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %entropy_xy2) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %entropy_xy2, metadata !852, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %entropy_y) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %entropy_y, metadata !853, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mean) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %mean, metadata !854, metadata !DIExpression()), !dbg !1573
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %sum_squares) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %sum_squares, metadata !857, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %variance) #13, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %variance, metadata !858, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gray) #13, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %gray, metadata !859, metadata !DIExpression()), !dbg !1577
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1578
  %0 = load i32, ptr %debug, align 8, !dbg !1578, !tbaa !1044
  %cmp.not = icmp eq i32 %0, 0, !dbg !1580
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1581

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1582
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 689, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1583
  br label %if.end, !dbg !1584

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1585
  %1 = load i64, ptr %columns, align 8, !dbg !1585, !tbaa !1088
  %add = add i64 %distance, 1, !dbg !1587
  %cmp1 = icmp ult i64 %1, %add, !dbg !1588
  br i1 %cmp1, label %cleanup3656, label %lor.lhs.false, !dbg !1589

lor.lhs.false:                                    ; preds = %if.end
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1590
  %2 = load i64, ptr %rows, align 8, !dbg !1590, !tbaa !1090
  %cmp3 = icmp ult i64 %2, %add, !dbg !1591
  br i1 %cmp3, label %cleanup3656, label %if.end5, !dbg !1592

if.end5:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i64 48, metadata !863, metadata !DIExpression()), !dbg !1565
  %call6 = tail call ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 448) #15, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %call6, metadata !843, metadata !DIExpression()), !dbg !1565
  %cmp7 = icmp eq ptr %call6, null, !dbg !1594
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !1595

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception9) #13, !dbg !1596
  call void @llvm.dbg.declare(metadata ptr %exception9, metadata !869, metadata !DIExpression()), !dbg !1596
  call void @GetExceptionInfo(ptr noundef nonnull %exception9) #13, !dbg !1596
  %call10 = tail call ptr @__errno_location() #16, !dbg !1596
  %3 = load i32, ptr %call10, align 4, !dbg !1596, !tbaa !1597
  %call11 = call ptr @GetExceptionMessage(i32 noundef %3) #13, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %call11, metadata !866, metadata !DIExpression()), !dbg !1598
  %call12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 696, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %call11) #13, !dbg !1596
  %call13 = call ptr @DestroyString(ptr noundef %call11) #13, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %call13, metadata !866, metadata !DIExpression()), !dbg !1598
  call void @CatchException(ptr noundef nonnull %exception9) #13, !dbg !1596
  %call14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception9) #13, !dbg !1596
  call void @MagickCoreTerminus() #13, !dbg !1596
  call void @_exit(i32 noundef 1) #17, !dbg !1596
  unreachable, !dbg !1596

if.end15:                                         ; preds = %if.end5
  %call16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call6, i32 noundef 0, i64 noundef 21504) #13, !dbg !1599
  %call17 = tail call ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 20) #15, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %call17, metadata !860, metadata !DIExpression()), !dbg !1565
  %cmp18 = icmp eq ptr %call17, null, !dbg !1601
  br i1 %cmp18, label %if.then19, label %for.body.preheader, !dbg !1603

for.body.preheader:                               ; preds = %if.end15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1310720) %call17, i8 -1, i64 1310720, i1 false), !dbg !1604, !tbaa !1597
  call void @llvm.dbg.value(metadata i32 undef, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 undef, metadata !862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1565
  call void @llvm.dbg.value(metadata i32 1, metadata !861, metadata !DIExpression()), !dbg !1565
  %call30 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %call30, metadata !839, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !864, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 1, metadata !861, metadata !DIExpression()), !dbg !1565
  %4 = load i64, ptr %rows, align 8, !dbg !1609, !tbaa !1090
  %cmp335707 = icmp sgt i64 %4, 0, !dbg !1610
  br i1 %cmp335707, label %for.body34.lr.ph, label %for.end107.thread, !dbg !1611

for.end107.thread:                                ; preds = %for.body.preheader
  %call1085862 = tail call ptr @DestroyCacheView(ptr noundef %call30) #13, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call108, metadata !839, metadata !DIExpression()), !dbg !1565
  br label %if.end114, !dbg !1613

if.then19:                                        ; preds = %if.end15
  %call20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call6) #13, !dbg !1614
  call void @llvm.dbg.value(metadata ptr %call20, metadata !843, metadata !DIExpression()), !dbg !1565
  %filename21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1616
  %call23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename21) #13, !dbg !1617
  br label %cleanup3656, !dbg !1618

for.body34.lr.ph:                                 ; preds = %for.body.preheader
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  br label %for.body34, !dbg !1611

for.body34:                                       ; preds = %for.body34.lr.ph, %cleanup
  %y.05709 = phi i64 [ 0, %for.body34.lr.ph ], [ %inc106, %cleanup ]
  %status.05708 = phi i32 [ 1, %for.body34.lr.ph ], [ %status.1, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.05709, metadata !864, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %status.05708, metadata !861, metadata !DIExpression()), !dbg !1565
  %cmp35 = icmp eq i32 %status.05708, 0, !dbg !1619
  br i1 %cmp35, label %cleanup, label %if.end37, !dbg !1621

if.end37:                                         ; preds = %for.body34
  %5 = load i64, ptr %columns, align 8, !dbg !1622, !tbaa !1088
  %call39 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call30, i64 noundef 0, i64 noundef %y.05709, i64 noundef %5, i64 noundef 1, ptr noundef %exception) #14, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %call39, metadata !875, metadata !DIExpression()), !dbg !1624
  %cmp40 = icmp eq ptr %call39, null, !dbg !1625
  br i1 %cmp40, label %cleanup, label %if.end42, !dbg !1627

if.end42:                                         ; preds = %if.end37
  %call43 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call30) #13, !dbg !1628
  call void @llvm.dbg.value(metadata ptr %call43, metadata !870, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 0, metadata !877, metadata !DIExpression()), !dbg !1624
  %6 = load i64, ptr %columns, align 8, !tbaa !1088
  call void @llvm.dbg.value(metadata i64 0, metadata !877, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %call39, metadata !875, metadata !DIExpression()), !dbg !1624
  %cmp465684 = icmp sgt i64 %6, 0, !dbg !1629
  br i1 %cmp465684, label %for.body47.lr.ph, label %cleanup, !dbg !1632

for.body47.lr.ph:                                 ; preds = %if.end42
  %7 = load i32, ptr %colorspace, align 4, !tbaa !1633
  %cmp68 = icmp eq i32 %7, 12
  %cmp70 = icmp eq ptr %call43, null
  %8 = load i32, ptr %matte, align 8, !tbaa !1634
  %cmp89.not = icmp eq i32 %8, 0
  br i1 %cmp68, label %for.body47.us, label %for.body47.lr.ph.split, !dbg !1635

for.body47.us:                                    ; preds = %for.body47.lr.ph, %if.end99.us
  %x.05686.us = phi i64 [ %inc101.us, %if.end99.us ], [ 0, %for.body47.lr.ph ]
  %p.05685.us = phi ptr [ %incdec.ptr.us, %if.end99.us ], [ %call39, %for.body47.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.05686.us, metadata !877, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %p.05685.us, metadata !875, metadata !DIExpression()), !dbg !1624
  %red48.us = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us, i64 0, i32 2, !dbg !1637
  %9 = load i16, ptr %red48.us, align 2, !dbg !1637, !tbaa !1249
  %conv.i.us = zext i16 %9 to i32
  %idxprom.us = zext i16 %9 to i64, !dbg !1638
  %arrayidx52.us = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom.us, !dbg !1638
  store i32 %conv.i.us, ptr %arrayidx52.us, align 4, !dbg !1639, !tbaa !1640
  %green54.us = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us, i64 0, i32 1, !dbg !1642
  %10 = load i16, ptr %green54.us, align 2, !dbg !1642, !tbaa !1252
  %conv.i5464.us = zext i16 %10 to i32
  %idxprom58.us = zext i16 %10 to i64, !dbg !1643
  %green60.us = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom58.us, i32 1, !dbg !1644
  store i32 %conv.i5464.us, ptr %green60.us, align 4, !dbg !1645, !tbaa !1646
  %11 = load i16, ptr %p.05685.us, align 2, !dbg !1647, !tbaa !1254
  %conv.i5466.us = zext i16 %11 to i32
  %idxprom65.us = zext i16 %11 to i64, !dbg !1648
  %blue67.us = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom65.us, i32 2, !dbg !1649
  store i32 %conv.i5466.us, ptr %blue67.us, align 4, !dbg !1650, !tbaa !1651
  br i1 %cmp70, label %cond.end81.us, label %cond.false78.us, !dbg !1652

cond.false78.us:                                  ; preds = %for.body47.us
  %add.ptr.us = getelementptr inbounds i16, ptr %call43, i64 %x.05686.us, !dbg !1652
  %12 = load i16, ptr %add.ptr.us, align 2, !dbg !1652, !tbaa !1654
  %conv.i5468.us = zext i16 %12 to i32
  br label %cond.end81.us, !dbg !1655

cond.end81.us:                                    ; preds = %cond.false78.us, %for.body47.us
  %conv.i54685681.us = phi i32 [ %conv.i5468.us, %cond.false78.us ], [ 0, %for.body47.us ]
  %cond82.us = phi i16 [ %12, %cond.false78.us ], [ 0, %for.body47.us ], !dbg !1655
  %idxprom85.us = zext i16 %cond82.us to i64, !dbg !1656
  %index87.us = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom85.us, i32 4, !dbg !1657
  store i32 %conv.i54685681.us, ptr %index87.us, align 4, !dbg !1658, !tbaa !1659
  br i1 %cmp89.not, label %if.end99.us, label %if.then91.us, !dbg !1660

if.then91.us:                                     ; preds = %cond.end81.us
  %opacity92.us = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us, i64 0, i32 3, !dbg !1661
  %13 = load i16, ptr %opacity92.us, align 2, !dbg !1661, !tbaa !1663
  %conv.i5470.us = zext i16 %13 to i32
  %idxprom96.us = zext i16 %13 to i64, !dbg !1664
  %opacity98.us = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom96.us, i32 3, !dbg !1665
  store i32 %conv.i5470.us, ptr %opacity98.us, align 4, !dbg !1666, !tbaa !1667
  br label %if.end99.us, !dbg !1664

if.end99.us:                                      ; preds = %if.then91.us, %cond.end81.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !875, metadata !DIExpression()), !dbg !1624
  %inc101.us = add nuw nsw i64 %x.05686.us, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %inc101.us, metadata !877, metadata !DIExpression()), !dbg !1624
  %exitcond5817.not = icmp eq i64 %inc101.us, %6, !dbg !1629
  br i1 %exitcond5817.not, label %cleanup, label %for.body47.us, !dbg !1632, !llvm.loop !1670

for.body47.lr.ph.split:                           ; preds = %for.body47.lr.ph
  br i1 %cmp89.not, label %for.body47.us5689, label %for.body47, !dbg !1660

for.body47.us5689:                                ; preds = %for.body47.lr.ph.split, %for.body47.us5689
  %x.05686.us5690 = phi i64 [ %inc101.us5705, %for.body47.us5689 ], [ 0, %for.body47.lr.ph.split ]
  %p.05685.us5691 = phi ptr [ %incdec.ptr.us5704, %for.body47.us5689 ], [ %call39, %for.body47.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x.05686.us5690, metadata !877, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %p.05685.us5691, metadata !875, metadata !DIExpression()), !dbg !1624
  %red48.us5692 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us5691, i64 0, i32 2, !dbg !1637
  %14 = load i16, ptr %red48.us5692, align 2, !dbg !1637, !tbaa !1249
  %conv.i.us5693 = zext i16 %14 to i32
  %idxprom.us5694 = zext i16 %14 to i64, !dbg !1638
  %arrayidx52.us5695 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom.us5694, !dbg !1638
  store i32 %conv.i.us5693, ptr %arrayidx52.us5695, align 4, !dbg !1639, !tbaa !1640
  %green54.us5696 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us5691, i64 0, i32 1, !dbg !1642
  %15 = load i16, ptr %green54.us5696, align 2, !dbg !1642, !tbaa !1252
  %conv.i5464.us5697 = zext i16 %15 to i32
  %idxprom58.us5698 = zext i16 %15 to i64, !dbg !1643
  %green60.us5699 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom58.us5698, i32 1, !dbg !1644
  store i32 %conv.i5464.us5697, ptr %green60.us5699, align 4, !dbg !1645, !tbaa !1646
  %16 = load i16, ptr %p.05685.us5691, align 2, !dbg !1647, !tbaa !1254
  %conv.i5466.us5700 = zext i16 %16 to i32
  %idxprom65.us5701 = zext i16 %16 to i64, !dbg !1648
  %blue67.us5702 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom65.us5701, i32 2, !dbg !1649
  store i32 %conv.i5466.us5700, ptr %blue67.us5702, align 4, !dbg !1650, !tbaa !1651
  %incdec.ptr.us5704 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685.us5691, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us5704, metadata !875, metadata !DIExpression()), !dbg !1624
  %inc101.us5705 = add nuw nsw i64 %x.05686.us5690, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %inc101.us5705, metadata !877, metadata !DIExpression()), !dbg !1624
  %exitcond5816.not = icmp eq i64 %inc101.us5705, %6, !dbg !1629
  br i1 %exitcond5816.not, label %cleanup, label %for.body47.us5689, !dbg !1632, !llvm.loop !1670

for.body47:                                       ; preds = %for.body47.lr.ph.split, %for.body47
  %x.05686 = phi i64 [ %inc101, %for.body47 ], [ 0, %for.body47.lr.ph.split ]
  %p.05685 = phi ptr [ %incdec.ptr, %for.body47 ], [ %call39, %for.body47.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x.05686, metadata !877, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %p.05685, metadata !875, metadata !DIExpression()), !dbg !1624
  %red48 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685, i64 0, i32 2, !dbg !1637
  %17 = load i16, ptr %red48, align 2, !dbg !1637, !tbaa !1249
  %conv.i = zext i16 %17 to i32
  %idxprom = zext i16 %17 to i64, !dbg !1638
  %arrayidx52 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom, !dbg !1638
  store i32 %conv.i, ptr %arrayidx52, align 4, !dbg !1639, !tbaa !1640
  %green54 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685, i64 0, i32 1, !dbg !1642
  %18 = load i16, ptr %green54, align 2, !dbg !1642, !tbaa !1252
  %conv.i5464 = zext i16 %18 to i32
  %idxprom58 = zext i16 %18 to i64, !dbg !1643
  %green60 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom58, i32 1, !dbg !1644
  store i32 %conv.i5464, ptr %green60, align 4, !dbg !1645, !tbaa !1646
  %19 = load i16, ptr %p.05685, align 2, !dbg !1647, !tbaa !1254
  %conv.i5466 = zext i16 %19 to i32
  %idxprom65 = zext i16 %19 to i64, !dbg !1648
  %blue67 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom65, i32 2, !dbg !1649
  store i32 %conv.i5466, ptr %blue67, align 4, !dbg !1650, !tbaa !1651
  %opacity92 = getelementptr inbounds %struct._PixelPacket, ptr %p.05685, i64 0, i32 3, !dbg !1661
  %20 = load i16, ptr %opacity92, align 2, !dbg !1661, !tbaa !1663
  %conv.i5470 = zext i16 %20 to i32
  %idxprom96 = zext i16 %20 to i64, !dbg !1664
  %opacity98 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %idxprom96, i32 3, !dbg !1665
  store i32 %conv.i5470, ptr %opacity98, align 4, !dbg !1666, !tbaa !1667
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.05685, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !875, metadata !DIExpression()), !dbg !1624
  %inc101 = add nuw nsw i64 %x.05686, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %inc101, metadata !877, metadata !DIExpression()), !dbg !1624
  %exitcond.not = icmp eq i64 %inc101, %6, !dbg !1629
  br i1 %exitcond.not, label %cleanup, label %for.body47, !dbg !1632, !llvm.loop !1670

cleanup:                                          ; preds = %for.body47, %for.body47.us5689, %if.end99.us, %if.end42, %if.end37, %for.body34
  %cmp109 = phi i1 [ false, %if.end42 ], [ true, %if.end37 ], [ true, %for.body34 ], [ false, %if.end99.us ], [ false, %for.body47.us5689 ], [ false, %for.body47 ], !dbg !1565
  %status.1 = phi i32 [ 1, %if.end42 ], [ 0, %if.end37 ], [ 0, %for.body34 ], [ 1, %if.end99.us ], [ 1, %for.body47.us5689 ], [ 1, %for.body47 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !861, metadata !DIExpression()), !dbg !1565
  %inc106 = add nuw nsw i64 %y.05709, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %inc106, metadata !864, metadata !DIExpression()), !dbg !1565
  %21 = load i64, ptr %rows, align 8, !dbg !1609, !tbaa !1090
  %cmp33 = icmp slt i64 %inc106, %21, !dbg !1610
  br i1 %cmp33, label %for.body34, label %for.end107, !dbg !1611, !llvm.loop !1673

for.end107:                                       ; preds = %cleanup
  %call108 = tail call ptr @DestroyCacheView(ptr noundef %call30) #13, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call108, metadata !839, metadata !DIExpression()), !dbg !1565
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !1613

if.then111:                                       ; preds = %for.end107
  %call112 = tail call ptr @RelinquishMagickMemory(ptr noundef %call17) #13, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %call112, metadata !860, metadata !DIExpression()), !dbg !1565
  %call113 = tail call ptr @RelinquishMagickMemory(ptr noundef %call6) #13, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %call113, metadata !843, metadata !DIExpression()), !dbg !1565
  br label %cleanup3656, !dbg !1679

if.end114:                                        ; preds = %for.end107.thread, %for.end107
  %call115 = call ptr @ResetMagickMemory(ptr noundef nonnull %gray, i32 noundef 0, i64 noundef 20) #13, !dbg !1680
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %colorspace159 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %22 = load i32, ptr %colorspace159, align 4, !tbaa !1633
  %cmp160 = icmp eq i32 %22, 12
  %matte177 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %23 = load i32, ptr %matte177, align 8, !tbaa !1634
  %cmp178.not = icmp eq i32 %23, 0
  %green140 = getelementptr inbounds %struct._LongPixelPacket, ptr %gray, i64 0, i32 1
  %blue153 = getelementptr inbounds %struct._LongPixelPacket, ptr %gray, i64 0, i32 2
  %index170 = getelementptr inbounds %struct._LongPixelPacket, ptr %gray, i64 0, i32 4
  %opacity188 = getelementptr inbounds %struct._LongPixelPacket, ptr %gray, i64 0, i32 3
  br label %for.body119, !dbg !1681

for.body119:                                      ; preds = %if.end114, %for.inc195
  %i.15710 = phi i64 [ 0, %if.end114 ], [ %inc196, %for.inc195 ]
  call void @llvm.dbg.value(metadata i64 %i.15710, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx120 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %i.15710, !dbg !1683
  %24 = load i32, ptr %arrayidx120, align 4, !dbg !1687, !tbaa !1640
  %cmp122.not = icmp eq i32 %24, -1, !dbg !1688
  br i1 %cmp122.not, label %if.end132, label %if.then124, !dbg !1689

if.then124:                                       ; preds = %for.body119
  %25 = load i32, ptr %gray, align 4, !dbg !1690, !tbaa !1640
  %inc128 = add i32 %25, 1, !dbg !1690
  store i32 %inc128, ptr %gray, align 4, !dbg !1690, !tbaa !1640
  %conv129 = zext i32 %25 to i64, !dbg !1691
  %arrayidx130 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %conv129, !dbg !1692
  store i32 %24, ptr %arrayidx130, align 4, !dbg !1693, !tbaa !1640
  br label %if.end132, !dbg !1692

if.end132:                                        ; preds = %if.then124, %for.body119
  %green134 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %i.15710, i32 1, !dbg !1694
  %26 = load i32, ptr %green134, align 4, !dbg !1694, !tbaa !1646
  %cmp135.not = icmp eq i32 %26, -1, !dbg !1696
  br i1 %cmp135.not, label %if.end145, label %if.then137, !dbg !1697

if.then137:                                       ; preds = %if.end132
  %27 = load i32, ptr %green140, align 4, !dbg !1698, !tbaa !1646
  %inc141 = add i32 %27, 1, !dbg !1698
  store i32 %inc141, ptr %green140, align 4, !dbg !1698, !tbaa !1646
  %conv142 = zext i32 %27 to i64, !dbg !1699
  %green144 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %conv142, i32 1, !dbg !1700
  store i32 %26, ptr %green144, align 4, !dbg !1701, !tbaa !1646
  br label %if.end145, !dbg !1702

if.end145:                                        ; preds = %if.then137, %if.end132
  %blue147 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %i.15710, i32 2, !dbg !1703
  %28 = load i32, ptr %blue147, align 4, !dbg !1703, !tbaa !1651
  %cmp148.not = icmp eq i32 %28, -1, !dbg !1705
  br i1 %cmp148.not, label %if.end158, label %if.then150, !dbg !1706

if.then150:                                       ; preds = %if.end145
  %29 = load i32, ptr %blue153, align 4, !dbg !1707, !tbaa !1651
  %inc154 = add i32 %29, 1, !dbg !1707
  store i32 %inc154, ptr %blue153, align 4, !dbg !1707, !tbaa !1651
  %conv155 = zext i32 %29 to i64, !dbg !1708
  %blue157 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %conv155, i32 2, !dbg !1709
  store i32 %28, ptr %blue157, align 4, !dbg !1710, !tbaa !1651
  br label %if.end158, !dbg !1711

if.end158:                                        ; preds = %if.then150, %if.end145
  br i1 %cmp160, label %if.then162, label %if.end176, !dbg !1712

if.then162:                                       ; preds = %if.end158
  %index164 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %i.15710, i32 4, !dbg !1713
  %30 = load i32, ptr %index164, align 4, !dbg !1713, !tbaa !1659
  %cmp165.not = icmp eq i32 %30, -1, !dbg !1716
  br i1 %cmp165.not, label %if.end176, label %if.then167, !dbg !1717

if.then167:                                       ; preds = %if.then162
  %31 = load i32, ptr %index170, align 4, !dbg !1718, !tbaa !1659
  %inc171 = add i32 %31, 1, !dbg !1718
  store i32 %inc171, ptr %index170, align 4, !dbg !1718, !tbaa !1659
  %conv172 = zext i32 %31 to i64, !dbg !1719
  %index174 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %conv172, i32 4, !dbg !1720
  store i32 %30, ptr %index174, align 4, !dbg !1721, !tbaa !1659
  br label %if.end176, !dbg !1722

if.end176:                                        ; preds = %if.then162, %if.then167, %if.end158
  br i1 %cmp178.not, label %for.inc195, label %if.then180, !dbg !1723

if.then180:                                       ; preds = %if.end176
  %opacity182 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %i.15710, i32 3, !dbg !1724
  %32 = load i32, ptr %opacity182, align 4, !dbg !1724, !tbaa !1667
  %cmp183.not = icmp eq i32 %32, -1, !dbg !1727
  br i1 %cmp183.not, label %for.inc195, label %if.then185, !dbg !1728

if.then185:                                       ; preds = %if.then180
  %33 = load i32, ptr %opacity188, align 4, !dbg !1729, !tbaa !1667
  %inc189 = add i32 %33, 1, !dbg !1729
  store i32 %inc189, ptr %opacity188, align 4, !dbg !1729, !tbaa !1667
  %conv190 = zext i32 %33 to i64, !dbg !1730
  %opacity192 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %conv190, i32 3, !dbg !1731
  store i32 %32, ptr %opacity192, align 4, !dbg !1732, !tbaa !1667
  br label %for.inc195, !dbg !1733

for.inc195:                                       ; preds = %if.end176, %if.then185, %if.then180
  %inc196 = add nuw nsw i64 %i.15710, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %inc196, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5818.not = icmp eq i64 %inc196, 65536, !dbg !1735
  br i1 %exitcond5818.not, label %for.end197, label %for.body119, !dbg !1681, !llvm.loop !1736

for.end197:                                       ; preds = %for.inc195
  %34 = load i32, ptr %gray, align 4, !dbg !1738, !tbaa !1640
  call void @llvm.dbg.value(metadata i32 %34, metadata !865, metadata !DIExpression()), !dbg !1565
  %35 = load i32, ptr %green140, align 4, !dbg !1739, !tbaa !1646
  %36 = call i32 @llvm.umax.i32(i32 %35, i32 %34), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %36, metadata !865, metadata !DIExpression()), !dbg !1565
  %37 = load i32, ptr %blue153, align 4, !dbg !1742, !tbaa !1651
  %38 = call i32 @llvm.umax.i32(i32 %37, i32 %36), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %38, metadata !865, metadata !DIExpression()), !dbg !1565
  br i1 %cmp160, label %if.then214, label %if.end221, !dbg !1745

if.then214:                                       ; preds = %for.end197
  %39 = load i32, ptr %index170, align 4, !dbg !1746, !tbaa !1659
  %40 = call i32 @llvm.umax.i32(i32 %39, i32 %38), !dbg !1749
  br label %if.end221, !dbg !1749

if.end221:                                        ; preds = %if.then214, %for.end197
  %number_grays.2 = phi i32 [ %38, %for.end197 ], [ %40, %if.then214 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %number_grays.2, metadata !865, metadata !DIExpression()), !dbg !1565
  br i1 %cmp178.not, label %if.end232, label %if.then225, !dbg !1750

if.then225:                                       ; preds = %if.end221
  %41 = load i32, ptr %opacity188, align 4, !dbg !1751, !tbaa !1667
  %42 = call i32 @llvm.umax.i32(i32 %41, i32 %number_grays.2), !dbg !1754
  br label %if.end232, !dbg !1754

if.end232:                                        ; preds = %if.then225, %if.end221
  %number_grays.3 = phi i32 [ %number_grays.2, %if.end221 ], [ %42, %if.then225 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %number_grays.3, metadata !865, metadata !DIExpression()), !dbg !1565
  %conv233 = zext i32 %number_grays.3 to i64, !dbg !1755
  %call234 = call ptr @AcquireQuantumMemory(i64 noundef %conv233, i64 noundef 8) #15, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %call234, metadata !844, metadata !DIExpression()), !dbg !1565
  %add235 = shl i32 %number_grays.3, 1, !dbg !1757
  %mul236 = add i32 %add235, 2, !dbg !1757
  %conv237 = zext i32 %mul236 to i64, !dbg !1758
  %call238 = call ptr @AcquireQuantumMemory(i64 noundef %conv237, i64 noundef 160) #15, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %call238, metadata !846, metadata !DIExpression()), !dbg !1565
  %call242 = call ptr @AcquireQuantumMemory(i64 noundef %conv237, i64 noundef 160) #15, !dbg !1760
  call void @llvm.dbg.value(metadata ptr %call242, metadata !847, metadata !DIExpression()), !dbg !1565
  %call246 = call ptr @AcquireQuantumMemory(i64 noundef %conv237, i64 noundef 160) #15, !dbg !1761
  call void @llvm.dbg.value(metadata ptr %call246, metadata !848, metadata !DIExpression()), !dbg !1565
  %call248 = call ptr @AcquireQuantumMemory(i64 noundef %conv233, i64 noundef 8) #15, !dbg !1762
  call void @llvm.dbg.value(metadata ptr %call248, metadata !855, metadata !DIExpression()), !dbg !1565
  %call250 = call ptr @AcquireQuantumMemory(i64 noundef %conv233, i64 noundef 160) #15, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %call250, metadata !856, metadata !DIExpression()), !dbg !1565
  %cmp251 = icmp eq ptr %call234, null, !dbg !1764
  %cmp254 = icmp eq ptr %call238, null
  %or.cond = select i1 %cmp251, i1 true, i1 %cmp254, !dbg !1766
  %cmp257 = icmp eq ptr %call242, null
  %or.cond3680 = select i1 %or.cond, i1 true, i1 %cmp257, !dbg !1766
  %cmp260 = icmp eq ptr %call246, null
  %or.cond3681 = select i1 %or.cond3680, i1 true, i1 %cmp260, !dbg !1766
  %cmp263 = icmp eq ptr %call248, null
  %or.cond3682 = select i1 %or.cond3681, i1 true, i1 %cmp263, !dbg !1766
  %cmp266 = icmp eq ptr %call250, null
  %or.cond3683 = select i1 %or.cond3682, i1 true, i1 %cmp266, !dbg !1766
  br i1 %or.cond3683, label %if.then268, label %if.end326, !dbg !1766

if.then268:                                       ; preds = %if.end232
  br i1 %cmp263, label %if.end284, label %for.cond272.preheader, !dbg !1767

for.cond272.preheader:                            ; preds = %if.then268
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %cmp2745805.not = icmp eq i32 %number_grays.3, 0, !dbg !1769
  br i1 %cmp2745805.not, label %for.end282, label %for.body276, !dbg !1774

for.body276:                                      ; preds = %for.cond272.preheader, %for.body276
  %i.25806 = phi i64 [ %inc281, %for.body276 ], [ 0, %for.cond272.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.25806, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx277 = getelementptr inbounds ptr, ptr %call248, i64 %i.25806, !dbg !1775
  %43 = load ptr, ptr %arrayidx277, align 8, !dbg !1775, !tbaa !1776
  %call278 = call ptr @RelinquishMagickMemory(ptr noundef %43) #13, !dbg !1777
  store ptr %call278, ptr %arrayidx277, align 8, !dbg !1778, !tbaa !1776
  %inc281 = add nuw nsw i64 %i.25806, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %inc281, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5848.not = icmp eq i64 %inc281, %conv233, !dbg !1769
  br i1 %exitcond5848.not, label %for.end282, label %for.body276, !dbg !1774, !llvm.loop !1780

for.end282:                                       ; preds = %for.body276, %for.cond272.preheader
  %call283 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call248) #13, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %call283, metadata !855, metadata !DIExpression()), !dbg !1565
  br label %if.end284, !dbg !1783

if.end284:                                        ; preds = %for.end282, %if.then268
  br i1 %cmp266, label %if.end289, label %if.then287, !dbg !1784

if.then287:                                       ; preds = %if.end284
  %call288 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call250) #13, !dbg !1785
  call void @llvm.dbg.value(metadata ptr %call288, metadata !856, metadata !DIExpression()), !dbg !1565
  br label %if.end289, !dbg !1787

if.end289:                                        ; preds = %if.then287, %if.end284
  br i1 %cmp260, label %if.end294, label %if.then292, !dbg !1788

if.then292:                                       ; preds = %if.end289
  %call293 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call246) #13, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %call293, metadata !848, metadata !DIExpression()), !dbg !1565
  br label %if.end294, !dbg !1791

if.end294:                                        ; preds = %if.then292, %if.end289
  br i1 %cmp257, label %if.end299, label %if.then297, !dbg !1792

if.then297:                                       ; preds = %if.end294
  %call298 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call242) #13, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %call298, metadata !847, metadata !DIExpression()), !dbg !1565
  br label %if.end299, !dbg !1795

if.end299:                                        ; preds = %if.then297, %if.end294
  br i1 %cmp254, label %if.end304, label %if.then302, !dbg !1796

if.then302:                                       ; preds = %if.end299
  %call303 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call238) #13, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %call303, metadata !846, metadata !DIExpression()), !dbg !1565
  br label %if.end304, !dbg !1799

if.end304:                                        ; preds = %if.then302, %if.end299
  br i1 %cmp251, label %if.end320, label %for.cond308.preheader, !dbg !1800

for.cond308.preheader:                            ; preds = %if.end304
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %cmp3105807.not = icmp eq i32 %number_grays.3, 0, !dbg !1801
  br i1 %cmp3105807.not, label %for.end318, label %for.body312, !dbg !1806

for.body312:                                      ; preds = %for.cond308.preheader, %for.body312
  %i.35808 = phi i64 [ %inc317, %for.body312 ], [ 0, %for.cond308.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.35808, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx313 = getelementptr inbounds ptr, ptr %call234, i64 %i.35808, !dbg !1807
  %44 = load ptr, ptr %arrayidx313, align 8, !dbg !1807, !tbaa !1776
  %call314 = call ptr @RelinquishMagickMemory(ptr noundef %44) #13, !dbg !1808
  store ptr %call314, ptr %arrayidx313, align 8, !dbg !1809, !tbaa !1776
  %inc317 = add nuw nsw i64 %i.35808, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %inc317, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5849.not = icmp eq i64 %inc317, %conv233, !dbg !1801
  br i1 %exitcond5849.not, label %for.end318, label %for.body312, !dbg !1806, !llvm.loop !1811

for.end318:                                       ; preds = %for.body312, %for.cond308.preheader
  %call319 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call234) #13, !dbg !1813
  call void @llvm.dbg.value(metadata ptr %call319, metadata !844, metadata !DIExpression()), !dbg !1565
  br label %if.end320, !dbg !1814

if.end320:                                        ; preds = %for.end318, %if.end304
  %call321 = call ptr @RelinquishMagickMemory(ptr noundef %call17) #13, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %call321, metadata !860, metadata !DIExpression()), !dbg !1565
  %call322 = call ptr @RelinquishMagickMemory(ptr noundef %call6) #13, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %call322, metadata !843, metadata !DIExpression()), !dbg !1565
  %filename323 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1817
  %call325 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename323) #13, !dbg !1818
  br label %cleanup3656, !dbg !1819

if.end326:                                        ; preds = %if.end232
  %call327 = call ptr @ResetMagickMemory(ptr noundef nonnull %correlation, i32 noundef 0, i64 noundef 160) #13, !dbg !1820
  %mul331 = mul nuw nsw i64 %conv237, 160, !dbg !1821
  %call332 = call ptr @ResetMagickMemory(ptr noundef nonnull %call238, i32 noundef 0, i64 noundef %mul331) #13, !dbg !1822
  %call337 = call ptr @ResetMagickMemory(ptr noundef nonnull %call242, i32 noundef 0, i64 noundef %mul331) #13, !dbg !1823
  %call342 = call ptr @ResetMagickMemory(ptr noundef nonnull %call246, i32 noundef 0, i64 noundef %mul331) #13, !dbg !1824
  %call343 = call ptr @ResetMagickMemory(ptr noundef nonnull %mean, i32 noundef 0, i64 noundef 160) #13, !dbg !1825
  %mul345 = mul nuw nsw i64 %conv233, 160, !dbg !1826
  %call346 = call ptr @ResetMagickMemory(ptr noundef nonnull %call250, i32 noundef 0, i64 noundef %mul345) #13, !dbg !1827
  %call347 = call ptr @ResetMagickMemory(ptr noundef nonnull %sum_squares, i32 noundef 0, i64 noundef 160) #13, !dbg !1828
  %conv349 = zext i32 %add235 to i64, !dbg !1829
  %mul350 = mul nuw nsw i64 %conv349, 160, !dbg !1830
  %call351 = call ptr @ResetMagickMemory(ptr noundef nonnull %call242, i32 noundef 0, i64 noundef %mul350) #13, !dbg !1831
  %call352 = call ptr @ResetMagickMemory(ptr noundef nonnull %entropy_x, i32 noundef 0, i64 noundef 160) #13, !dbg !1832
  %call353 = call ptr @ResetMagickMemory(ptr noundef nonnull %entropy_xy, i32 noundef 0, i64 noundef 160) #13, !dbg !1833
  %call354 = call ptr @ResetMagickMemory(ptr noundef nonnull %entropy_xy1, i32 noundef 0, i64 noundef 160) #13, !dbg !1834
  %call355 = call ptr @ResetMagickMemory(ptr noundef nonnull %entropy_xy2, i32 noundef 0, i64 noundef 160) #13, !dbg !1835
  %call356 = call ptr @ResetMagickMemory(ptr noundef nonnull %entropy_y, i32 noundef 0, i64 noundef 160) #13, !dbg !1836
  %call357 = call ptr @ResetMagickMemory(ptr noundef nonnull %variance, i32 noundef 0, i64 noundef 160) #13, !dbg !1837
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %cmp3605713.not = icmp eq i32 %number_grays.3, 0, !dbg !1838
  br i1 %cmp3605713.not, label %if.end427, label %for.body362, !dbg !1841

for.body362:                                      ; preds = %if.end326, %if.end377
  %i.45714 = phi i64 [ %inc387, %if.end377 ], [ 0, %if.end326 ]
  call void @llvm.dbg.value(metadata i64 %i.45714, metadata !862, metadata !DIExpression()), !dbg !1565
  %call364 = call ptr @AcquireQuantumMemory(i64 noundef %conv233, i64 noundef 160) #15, !dbg !1842
  %arrayidx365 = getelementptr inbounds ptr, ptr %call234, i64 %i.45714, !dbg !1844
  store ptr %call364, ptr %arrayidx365, align 8, !dbg !1845, !tbaa !1776
  %call367 = call ptr @AcquireQuantumMemory(i64 noundef %conv233, i64 noundef 160) #15, !dbg !1846
  %arrayidx368 = getelementptr inbounds ptr, ptr %call248, i64 %i.45714, !dbg !1847
  store ptr %call367, ptr %arrayidx368, align 8, !dbg !1848, !tbaa !1776
  %45 = load ptr, ptr %arrayidx365, align 8, !dbg !1849, !tbaa !1776
  %cmp370 = icmp eq ptr %45, null, !dbg !1851
  %cmp374 = icmp eq ptr %call367, null
  %or.cond5457 = select i1 %cmp370, i1 true, i1 %cmp374, !dbg !1852
  br i1 %or.cond5457, label %for.cond393.preheader, label %if.end377, !dbg !1852

for.cond393.preheader:                            ; preds = %for.body362
  call void @llvm.dbg.value(metadata i64 %i.45714, metadata !862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1565
  %cmp3945803.not = icmp eq i64 %i.45714, 0, !dbg !1853
  br i1 %cmp3945803.not, label %for.end415, label %for.body396, !dbg !1858

if.end377:                                        ; preds = %for.body362
  %call381 = call ptr @ResetMagickMemory(ptr noundef nonnull %45, i32 noundef 0, i64 noundef %mul345) #13, !dbg !1859
  %46 = load ptr, ptr %arrayidx368, align 8, !dbg !1860, !tbaa !1776
  %call385 = call ptr @ResetMagickMemory(ptr noundef %46, i32 noundef 0, i64 noundef %mul345) #13, !dbg !1861
  %inc387 = add nuw nsw i64 %i.45714, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %inc387, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5819.not = icmp eq i64 %inc387, %conv233, !dbg !1838
  br i1 %exitcond5819.not, label %if.end427, label %for.body362, !dbg !1841, !llvm.loop !1863

for.body396:                                      ; preds = %for.cond393.preheader, %for.inc413
  %i.55804.in = phi i64 [ %i.55804, %for.inc413 ], [ %i.45714, %for.cond393.preheader ]
  %i.55804 = add nsw i64 %i.55804.in, -1, !dbg !1865
  %arrayidx397 = getelementptr inbounds ptr, ptr %call248, i64 %i.55804, !dbg !1866
  %47 = load ptr, ptr %arrayidx397, align 8, !dbg !1866, !tbaa !1776
  %cmp398.not = icmp eq ptr %47, null, !dbg !1869
  br i1 %cmp398.not, label %if.end404, label %if.then400, !dbg !1870

if.then400:                                       ; preds = %for.body396
  %call402 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %47) #13, !dbg !1871
  store ptr %call402, ptr %arrayidx397, align 8, !dbg !1872, !tbaa !1776
  br label %if.end404, !dbg !1873

if.end404:                                        ; preds = %if.then400, %for.body396
  %arrayidx405 = getelementptr inbounds ptr, ptr %call234, i64 %i.55804, !dbg !1874
  %48 = load ptr, ptr %arrayidx405, align 8, !dbg !1874, !tbaa !1776
  %cmp406.not = icmp eq ptr %48, null, !dbg !1876
  br i1 %cmp406.not, label %for.inc413, label %if.then408, !dbg !1877

if.then408:                                       ; preds = %if.end404
  %call410 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #13, !dbg !1878
  store ptr %call410, ptr %arrayidx405, align 8, !dbg !1879, !tbaa !1776
  br label %for.inc413, !dbg !1880

for.inc413:                                       ; preds = %if.end404, %if.then408
  call void @llvm.dbg.value(metadata i64 %i.55804, metadata !862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1565
  %cmp394 = icmp sgt i64 %i.55804.in, 1, !dbg !1853
  br i1 %cmp394, label %for.body396, label %for.end415, !dbg !1858, !llvm.loop !1881

for.end415:                                       ; preds = %for.inc413, %for.cond393.preheader
  %call416 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call248) #13, !dbg !1883
  call void @llvm.dbg.value(metadata ptr %call416, metadata !855, metadata !DIExpression()), !dbg !1565
  %call417 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call234) #13, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %call417, metadata !844, metadata !DIExpression()), !dbg !1565
  %call418 = call ptr @RelinquishMagickMemory(ptr noundef %call250) #13, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %call418, metadata !856, metadata !DIExpression()), !dbg !1565
  %call419 = call ptr @RelinquishMagickMemory(ptr noundef %call246) #13, !dbg !1886
  call void @llvm.dbg.value(metadata ptr %call419, metadata !848, metadata !DIExpression()), !dbg !1565
  %call420 = call ptr @RelinquishMagickMemory(ptr noundef %call242) #13, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %call420, metadata !847, metadata !DIExpression()), !dbg !1565
  %call421 = call ptr @RelinquishMagickMemory(ptr noundef %call238) #13, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %call421, metadata !846, metadata !DIExpression()), !dbg !1565
  %call422 = call ptr @RelinquishMagickMemory(ptr noundef %call17) #13, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %call422, metadata !860, metadata !DIExpression()), !dbg !1565
  %call423 = call ptr @RelinquishMagickMemory(ptr noundef %call6) #13, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %call423, metadata !843, metadata !DIExpression()), !dbg !1565
  %filename424 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1891
  %call426 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename424) #13, !dbg !1892
  br label %cleanup3656, !dbg !1893

if.end427:                                        ; preds = %if.end377, %if.end326
  call void @llvm.dbg.value(metadata i32 1, metadata !861, metadata !DIExpression()), !dbg !1565
  %call428 = call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #13, !dbg !1894
  call void @llvm.dbg.value(metadata ptr %call428, metadata !839, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !864, metadata !DIExpression()), !dbg !1565
  %49 = load i64, ptr %rows, align 8, !dbg !1895, !tbaa !1090
  %cmp4315721 = icmp sgt i64 %49, 0, !dbg !1896
  br i1 %cmp4315721, label %for.body433.lr.ph, label %for.end685, !dbg !1897

for.body433.lr.ph:                                ; preds = %if.end427
  %mul443 = shl i64 %distance, 1
  %add445 = add i64 %distance, 2
  br label %for.body433, !dbg !1897

for.body433:                                      ; preds = %for.body433.lr.ph, %cleanup674
  %y.15723 = phi i64 [ 0, %for.body433.lr.ph ], [ %inc684, %cleanup674 ]
  %status.25722 = phi i32 [ 1, %for.body433.lr.ph ], [ %status.3, %cleanup674 ]
  call void @llvm.dbg.value(metadata i64 %y.15723, metadata !864, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %status.25722, metadata !861, metadata !DIExpression()), !dbg !1565
  %cmp438 = icmp eq i32 %status.25722, 0, !dbg !1898
  br i1 %cmp438, label %cleanup674, label %if.end441, !dbg !1900

if.end441:                                        ; preds = %for.body433
  %50 = load i64, ptr %columns, align 8, !dbg !1901, !tbaa !1088
  %add444 = add i64 %50, %mul443, !dbg !1902
  %call446 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call428, i64 noundef %sub, i64 noundef %y.15723, i64 noundef %add444, i64 noundef %add445, ptr noundef %exception) #14, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %call446, metadata !882, metadata !DIExpression()), !dbg !1904
  %cmp447 = icmp eq ptr %call446, null, !dbg !1905
  br i1 %cmp447, label %cleanup674, label %if.end450, !dbg !1907

if.end450:                                        ; preds = %if.end441
  %call451 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call428) #13, !dbg !1908
  call void @llvm.dbg.value(metadata ptr %call451, metadata !878, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call446, i64 %distance), metadata !882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1904
  %add.ptr453 = getelementptr inbounds i16, ptr %call451, i64 %distance, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %add.ptr453, metadata !878, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !883, metadata !DIExpression()), !dbg !1904
  %51 = load i64, ptr %columns, align 8, !tbaa !1088
  %cmp4565718 = icmp sgt i64 %51, 0, !dbg !1910
  br i1 %cmp4565718, label %for.cond459.preheader.lr.ph, label %cleanup674, !dbg !1913

for.cond459.preheader.lr.ph:                      ; preds = %if.end450
  %add.ptr452 = getelementptr inbounds %struct._PixelPacket, ptr %call446, i64 %distance, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %add.ptr452, metadata !882, metadata !DIExpression()), !dbg !1904
  %52 = load i32, ptr %colorspace159, align 4, !tbaa !1633
  %cmp573 = icmp eq i32 %52, 12
  %53 = load i32, ptr %matte177, align 8, !tbaa !1634
  %cmp630.not = icmp eq i32 %53, 0
  %add470 = add i64 %51, %mul443
  %sub471 = sub i64 %add470, %distance
  %add476 = add i64 %add470, %distance
  %cmp580 = icmp eq ptr %call451, null
  br label %for.cond459.preheader, !dbg !1913

for.cond459.preheader:                            ; preds = %for.cond459.preheader.lr.ph, %for.end669
  %x436.05720 = phi i64 [ 0, %for.cond459.preheader.lr.ph ], [ %inc672, %for.end669 ]
  %p435.05719 = phi ptr [ %add.ptr452, %for.cond459.preheader.lr.ph ], [ %incdec.ptr670, %for.end669 ]
  call void @llvm.dbg.value(metadata i64 %x436.05720, metadata !883, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %p435.05719, metadata !882, metadata !DIExpression()), !dbg !1904
  %red479 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 0, i32 2
  %54 = load i16, ptr %red479, align 2, !tbaa !1249
  %conv.i5472 = zext i16 %54 to i32
  %green509 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 0, i32 1
  %55 = load i16, ptr %green509, align 2, !tbaa !1252
  %conv.i5474 = zext i16 %55 to i32
  %56 = load i16, ptr %p435.05719, align 2, !tbaa !1254
  %conv.i5476 = zext i16 %56 to i32
  call void @llvm.dbg.value(metadata i64 0, metadata !884, metadata !DIExpression()), !dbg !1904
  %add.ptr579 = getelementptr inbounds i16, ptr %add.ptr453, i64 %x436.05720
  %opacity636 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 0, i32 3
  br label %for.body462, !dbg !1915

for.body462:                                      ; preds = %for.cond459.preheader, %for.inc667
  %i437.05715 = phi i64 [ 0, %for.cond459.preheader ], [ %inc668, %for.inc667 ]
  call void @llvm.dbg.value(metadata i64 %i437.05715, metadata !884, metadata !DIExpression()), !dbg !1904
  switch i64 %i437.05715, label %sw.epilog [
    i64 3, label %sw.bb472
    i64 1, label %sw.bb463
    i64 2, label %sw.bb467
  ], !dbg !1918

sw.bb463:                                         ; preds = %for.body462
  call void @llvm.dbg.value(metadata i64 %add470, metadata !885, metadata !DIExpression()), !dbg !1904
  br label %sw.epilog, !dbg !1921

sw.bb467:                                         ; preds = %for.body462
  call void @llvm.dbg.value(metadata i64 %sub471, metadata !885, metadata !DIExpression()), !dbg !1904
  br label %sw.epilog, !dbg !1924

sw.bb472:                                         ; preds = %for.body462
  call void @llvm.dbg.value(metadata i64 %add476, metadata !885, metadata !DIExpression()), !dbg !1904
  br label %sw.epilog, !dbg !1926

sw.epilog:                                        ; preds = %for.body462, %sw.bb472, %sw.bb467, %sw.bb463
  %offset.0 = phi i64 [ %sub471, %sw.bb467 ], [ %add470, %sw.bb463 ], [ %add476, %sw.bb472 ], [ %distance, %for.body462 ], !dbg !1928
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !885, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !886, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()), !dbg !1904
  br label %while.cond, !dbg !1929

while.cond:                                       ; preds = %while.cond, %sw.epilog
  %u.0 = phi i64 [ 0, %sw.epilog ], [ %inc483, %while.cond ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %u.0, metadata !886, metadata !DIExpression()), !dbg !1904
  %arrayidx477 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %u.0, !dbg !1931
  %57 = load i32, ptr %arrayidx477, align 4, !dbg !1932, !tbaa !1640
  %cmp481.not = icmp eq i32 %57, %conv.i5472, !dbg !1933
  %inc483 = add nuw nsw i64 %u.0, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %inc483, metadata !886, metadata !DIExpression()), !dbg !1904
  br i1 %cmp481.not, label %while.cond484.preheader, label %while.cond, !dbg !1929, !llvm.loop !1935

while.cond484.preheader:                          ; preds = %while.cond
  %red488 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 %offset.0, i32 2
  %58 = load i16, ptr %red488, align 2, !tbaa !1249
  %conv.i5473 = zext i16 %58 to i32
  br label %while.cond484, !dbg !1936

while.cond484:                                    ; preds = %while.cond484, %while.cond484.preheader
  %v.0 = phi i64 [ %inc493, %while.cond484 ], [ 0, %while.cond484.preheader ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %v.0, metadata !887, metadata !DIExpression()), !dbg !1904
  %arrayidx485 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %v.0, !dbg !1937
  %59 = load i32, ptr %arrayidx485, align 4, !dbg !1938, !tbaa !1640
  %cmp490.not = icmp eq i32 %59, %conv.i5473, !dbg !1939
  %inc493 = add nuw nsw i64 %v.0, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %inc493, metadata !887, metadata !DIExpression()), !dbg !1904
  br i1 %cmp490.not, label %while.end494, label %while.cond484, !dbg !1936, !llvm.loop !1941

while.end494:                                     ; preds = %while.cond484
  %arrayidx495 = getelementptr inbounds ptr, ptr %call234, i64 %u.0, !dbg !1942
  %60 = load ptr, ptr %arrayidx495, align 8, !dbg !1942, !tbaa !1776
  %arrayidx496 = getelementptr inbounds %struct._ChannelStatistics, ptr %60, i64 %v.0, !dbg !1942
  %arrayidx497 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx496, i64 0, i64 %i437.05715, !dbg !1942
  %61 = load double, ptr %arrayidx497, align 8, !dbg !1943, !tbaa !1944
  %inc499 = fadd double %61, 1.000000e+00, !dbg !1943
  store double %inc499, ptr %arrayidx497, align 8, !dbg !1943, !tbaa !1944
  %arrayidx500 = getelementptr inbounds ptr, ptr %call234, i64 %v.0, !dbg !1946
  %62 = load ptr, ptr %arrayidx500, align 8, !dbg !1946, !tbaa !1776
  %arrayidx501 = getelementptr inbounds %struct._ChannelStatistics, ptr %62, i64 %u.0, !dbg !1946
  %arrayidx503 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx501, i64 0, i64 %i437.05715, !dbg !1946
  %63 = load double, ptr %arrayidx503, align 8, !dbg !1947, !tbaa !1944
  %inc505 = fadd double %63, 1.000000e+00, !dbg !1947
  store double %inc505, ptr %arrayidx503, align 8, !dbg !1947, !tbaa !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !886, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()), !dbg !1904
  br label %while.cond506, !dbg !1948

while.cond506:                                    ; preds = %while.cond506, %while.end494
  %u.1 = phi i64 [ 0, %while.end494 ], [ %inc514, %while.cond506 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %u.1, metadata !886, metadata !DIExpression()), !dbg !1904
  %green508 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %u.1, i32 1, !dbg !1949
  %64 = load i32, ptr %green508, align 4, !dbg !1949, !tbaa !1646
  %cmp511.not = icmp eq i32 %64, %conv.i5474, !dbg !1950
  %inc514 = add nuw nsw i64 %u.1, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %inc514, metadata !886, metadata !DIExpression()), !dbg !1904
  br i1 %cmp511.not, label %while.cond516.preheader, label %while.cond506, !dbg !1948, !llvm.loop !1952

while.cond516.preheader:                          ; preds = %while.cond506
  %green520 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 %offset.0, i32 1
  %65 = load i16, ptr %green520, align 2, !tbaa !1252
  %conv.i5475 = zext i16 %65 to i32
  br label %while.cond516, !dbg !1953

while.cond516:                                    ; preds = %while.cond516, %while.cond516.preheader
  %v.1 = phi i64 [ %inc525, %while.cond516 ], [ 0, %while.cond516.preheader ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %v.1, metadata !887, metadata !DIExpression()), !dbg !1904
  %green518 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %v.1, i32 1, !dbg !1954
  %66 = load i32, ptr %green518, align 4, !dbg !1954, !tbaa !1646
  %cmp522.not = icmp eq i32 %66, %conv.i5475, !dbg !1955
  %inc525 = add nuw nsw i64 %v.1, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %inc525, metadata !887, metadata !DIExpression()), !dbg !1904
  br i1 %cmp522.not, label %while.end526, label %while.cond516, !dbg !1953, !llvm.loop !1957

while.end526:                                     ; preds = %while.cond516
  %arrayidx527 = getelementptr inbounds ptr, ptr %call234, i64 %u.1, !dbg !1958
  %67 = load ptr, ptr %arrayidx527, align 8, !dbg !1958, !tbaa !1776
  %arrayidx528 = getelementptr inbounds %struct._ChannelStatistics, ptr %67, i64 %v.1, !dbg !1958
  %arrayidx530 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx528, i64 0, i64 %i437.05715, !dbg !1958
  %green531 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx530, i64 0, i32 1, !dbg !1959
  %68 = load double, ptr %green531, align 8, !dbg !1960, !tbaa !1961
  %inc532 = fadd double %68, 1.000000e+00, !dbg !1960
  store double %inc532, ptr %green531, align 8, !dbg !1960, !tbaa !1961
  %arrayidx533 = getelementptr inbounds ptr, ptr %call234, i64 %v.1, !dbg !1962
  %69 = load ptr, ptr %arrayidx533, align 8, !dbg !1962, !tbaa !1776
  %arrayidx534 = getelementptr inbounds %struct._ChannelStatistics, ptr %69, i64 %u.1, !dbg !1962
  %arrayidx536 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx534, i64 0, i64 %i437.05715, !dbg !1962
  %green537 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx536, i64 0, i32 1, !dbg !1963
  %70 = load double, ptr %green537, align 8, !dbg !1964, !tbaa !1961
  %inc538 = fadd double %70, 1.000000e+00, !dbg !1964
  store double %inc538, ptr %green537, align 8, !dbg !1964, !tbaa !1961
  call void @llvm.dbg.value(metadata i64 0, metadata !886, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()), !dbg !1904
  br label %while.cond539, !dbg !1965

while.cond539:                                    ; preds = %while.cond539, %while.end526
  %u.2 = phi i64 [ 0, %while.end526 ], [ %inc547, %while.cond539 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %u.2, metadata !886, metadata !DIExpression()), !dbg !1904
  %blue541 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %u.2, i32 2, !dbg !1966
  %71 = load i32, ptr %blue541, align 4, !dbg !1966, !tbaa !1651
  %cmp544.not = icmp eq i32 %71, %conv.i5476, !dbg !1967
  %inc547 = add nuw nsw i64 %u.2, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %inc547, metadata !886, metadata !DIExpression()), !dbg !1904
  br i1 %cmp544.not, label %while.cond549.preheader, label %while.cond539, !dbg !1965, !llvm.loop !1969

while.cond549.preheader:                          ; preds = %while.cond539
  %add.ptr487.le = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 %offset.0, !dbg !1970
  %72 = load i16, ptr %add.ptr487.le, align 2, !tbaa !1254
  %conv.i5477 = zext i16 %72 to i32
  br label %while.cond549, !dbg !1971

while.cond549:                                    ; preds = %while.cond549, %while.cond549.preheader
  %v.2 = phi i64 [ %inc558, %while.cond549 ], [ 0, %while.cond549.preheader ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %v.2, metadata !887, metadata !DIExpression()), !dbg !1904
  %blue551 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %v.2, i32 2, !dbg !1972
  %73 = load i32, ptr %blue551, align 4, !dbg !1972, !tbaa !1651
  %cmp555.not = icmp eq i32 %73, %conv.i5477, !dbg !1973
  %inc558 = add nuw nsw i64 %v.2, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %inc558, metadata !887, metadata !DIExpression()), !dbg !1904
  br i1 %cmp555.not, label %while.end559, label %while.cond549, !dbg !1971, !llvm.loop !1975

while.end559:                                     ; preds = %while.cond549
  %arrayidx560 = getelementptr inbounds ptr, ptr %call234, i64 %u.2, !dbg !1976
  %74 = load ptr, ptr %arrayidx560, align 8, !dbg !1976, !tbaa !1776
  %arrayidx561 = getelementptr inbounds %struct._ChannelStatistics, ptr %74, i64 %v.2, !dbg !1976
  %arrayidx563 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx561, i64 0, i64 %i437.05715, !dbg !1976
  %blue564 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx563, i64 0, i32 2, !dbg !1977
  %75 = load double, ptr %blue564, align 8, !dbg !1978, !tbaa !1979
  %inc565 = fadd double %75, 1.000000e+00, !dbg !1978
  store double %inc565, ptr %blue564, align 8, !dbg !1978, !tbaa !1979
  %arrayidx566 = getelementptr inbounds ptr, ptr %call234, i64 %v.2, !dbg !1980
  %76 = load ptr, ptr %arrayidx566, align 8, !dbg !1980, !tbaa !1776
  %arrayidx567 = getelementptr inbounds %struct._ChannelStatistics, ptr %76, i64 %u.2, !dbg !1980
  %arrayidx569 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx567, i64 0, i64 %i437.05715, !dbg !1980
  %blue570 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx569, i64 0, i32 2, !dbg !1981
  %77 = load double, ptr %blue570, align 8, !dbg !1982, !tbaa !1979
  %inc571 = fadd double %77, 1.000000e+00, !dbg !1982
  store double %inc571, ptr %blue570, align 8, !dbg !1982, !tbaa !1979
  br i1 %cmp573, label %while.cond576, label %if.end628, !dbg !1983

while.cond576:                                    ; preds = %while.end559, %cond.end586
  %u.3 = phi i64 [ %inc593, %cond.end586 ], [ 0, %while.end559 ], !dbg !1984
  call void @llvm.dbg.value(metadata i64 %u.3, metadata !886, metadata !DIExpression()), !dbg !1904
  %index578 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %u.3, i32 4, !dbg !1987
  %78 = load i32, ptr %index578, align 4, !dbg !1987, !tbaa !1659
  br i1 %cmp580, label %cond.end586, label %cond.false583, !dbg !1988

cond.false583:                                    ; preds = %while.cond576
  %79 = load i16, ptr %add.ptr579, align 2, !dbg !1988, !tbaa !1654
  br label %cond.end586, !dbg !1988

cond.end586:                                      ; preds = %while.cond576, %cond.false583
  %cond587 = phi i16 [ %79, %cond.false583 ], [ 0, %while.cond576 ], !dbg !1988
  %conv.i5478 = zext i16 %cond587 to i32
  %cmp590.not = icmp eq i32 %78, %conv.i5478, !dbg !1989
  %inc593 = add nuw nsw i64 %u.3, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %inc593, metadata !886, metadata !DIExpression()), !dbg !1904
  br i1 %cmp590.not, label %while.cond595.preheader, label %while.cond576, !dbg !1991, !llvm.loop !1992

while.cond595.preheader:                          ; preds = %cond.end586
  %add.ptr599 = getelementptr inbounds i16, ptr %add.ptr579, i64 %offset.0
  br label %while.cond595, !dbg !1993

while.cond595:                                    ; preds = %cond.end607, %while.cond595.preheader
  %v.3 = phi i64 [ %inc614, %cond.end607 ], [ 0, %while.cond595.preheader ], !dbg !1984
  call void @llvm.dbg.value(metadata i64 %v.3, metadata !887, metadata !DIExpression()), !dbg !1904
  %index597 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %v.3, i32 4, !dbg !1994
  %80 = load i32, ptr %index597, align 4, !dbg !1994, !tbaa !1659
  br i1 %cmp580, label %cond.end607, label %cond.false603, !dbg !1995

cond.false603:                                    ; preds = %while.cond595
  %81 = load i16, ptr %add.ptr599, align 2, !dbg !1995, !tbaa !1654
  br label %cond.end607, !dbg !1995

cond.end607:                                      ; preds = %while.cond595, %cond.false603
  %cond608 = phi i16 [ %81, %cond.false603 ], [ 0, %while.cond595 ], !dbg !1995
  %conv.i5479 = zext i16 %cond608 to i32
  %cmp611.not = icmp eq i32 %80, %conv.i5479, !dbg !1996
  %inc614 = add nuw nsw i64 %v.3, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %inc614, metadata !887, metadata !DIExpression()), !dbg !1904
  br i1 %cmp611.not, label %while.end615, label %while.cond595, !dbg !1993, !llvm.loop !1998

while.end615:                                     ; preds = %cond.end607
  %arrayidx616 = getelementptr inbounds ptr, ptr %call234, i64 %u.3, !dbg !1999
  %82 = load ptr, ptr %arrayidx616, align 8, !dbg !1999, !tbaa !1776
  %arrayidx617 = getelementptr inbounds %struct._ChannelStatistics, ptr %82, i64 %v.3, !dbg !1999
  %arrayidx619 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx617, i64 0, i64 %i437.05715, !dbg !1999
  %index620 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx619, i64 0, i32 4, !dbg !2000
  %83 = load double, ptr %index620, align 8, !dbg !2001, !tbaa !2002
  %inc621 = fadd double %83, 1.000000e+00, !dbg !2001
  store double %inc621, ptr %index620, align 8, !dbg !2001, !tbaa !2002
  %arrayidx622 = getelementptr inbounds ptr, ptr %call234, i64 %v.3, !dbg !2003
  %84 = load ptr, ptr %arrayidx622, align 8, !dbg !2003, !tbaa !1776
  %arrayidx623 = getelementptr inbounds %struct._ChannelStatistics, ptr %84, i64 %u.3, !dbg !2003
  %arrayidx625 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx623, i64 0, i64 %i437.05715, !dbg !2003
  %index626 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx625, i64 0, i32 4, !dbg !2004
  %85 = load double, ptr %index626, align 8, !dbg !2005, !tbaa !2002
  %inc627 = fadd double %85, 1.000000e+00, !dbg !2005
  store double %inc627, ptr %index626, align 8, !dbg !2005, !tbaa !2002
  br label %if.end628, !dbg !2006

if.end628:                                        ; preds = %while.end615, %while.end559
  br i1 %cmp630.not, label %for.inc667, label %while.cond633.preheader, !dbg !2007

while.cond633.preheader:                          ; preds = %if.end628
  %86 = load i16, ptr %opacity636, align 2, !tbaa !1663
  %conv.i5480 = zext i16 %86 to i32
  br label %while.cond633, !dbg !2008

while.cond633:                                    ; preds = %while.cond633, %while.cond633.preheader
  %u.4 = phi i64 [ %inc641, %while.cond633 ], [ 0, %while.cond633.preheader ], !dbg !2011
  call void @llvm.dbg.value(metadata i64 %u.4, metadata !886, metadata !DIExpression()), !dbg !1904
  %opacity635 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %u.4, i32 3, !dbg !2012
  %87 = load i32, ptr %opacity635, align 4, !dbg !2012, !tbaa !1667
  %cmp638.not = icmp eq i32 %87, %conv.i5480, !dbg !2013
  %inc641 = add nuw nsw i64 %u.4, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %inc641, metadata !886, metadata !DIExpression()), !dbg !1904
  br i1 %cmp638.not, label %while.cond643.preheader, label %while.cond633, !dbg !2008, !llvm.loop !2015

while.cond643.preheader:                          ; preds = %while.cond633
  %opacity647 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 %offset.0, i32 3
  %88 = load i16, ptr %opacity647, align 2, !tbaa !1663
  %conv.i5481 = zext i16 %88 to i32
  br label %while.cond643, !dbg !2016

while.cond643:                                    ; preds = %while.cond643, %while.cond643.preheader
  %v.4 = phi i64 [ %inc652, %while.cond643 ], [ 0, %while.cond643.preheader ], !dbg !2011
  call void @llvm.dbg.value(metadata i64 %v.4, metadata !887, metadata !DIExpression()), !dbg !1904
  %opacity645 = getelementptr inbounds %struct._LongPixelPacket, ptr %call17, i64 %v.4, i32 3, !dbg !2017
  %89 = load i32, ptr %opacity645, align 4, !dbg !2017, !tbaa !1667
  %cmp649.not = icmp eq i32 %89, %conv.i5481, !dbg !2018
  %inc652 = add nuw nsw i64 %v.4, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %inc652, metadata !887, metadata !DIExpression()), !dbg !1904
  br i1 %cmp649.not, label %while.end653, label %while.cond643, !dbg !2016, !llvm.loop !2020

while.end653:                                     ; preds = %while.cond643
  %arrayidx654 = getelementptr inbounds ptr, ptr %call234, i64 %u.4, !dbg !2021
  %90 = load ptr, ptr %arrayidx654, align 8, !dbg !2021, !tbaa !1776
  %arrayidx655 = getelementptr inbounds %struct._ChannelStatistics, ptr %90, i64 %v.4, !dbg !2021
  %arrayidx657 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx655, i64 0, i64 %i437.05715, !dbg !2021
  %opacity658 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx657, i64 0, i32 3, !dbg !2022
  %91 = load double, ptr %opacity658, align 8, !dbg !2023, !tbaa !2024
  %inc659 = fadd double %91, 1.000000e+00, !dbg !2023
  store double %inc659, ptr %opacity658, align 8, !dbg !2023, !tbaa !2024
  %arrayidx660 = getelementptr inbounds ptr, ptr %call234, i64 %v.4, !dbg !2025
  %92 = load ptr, ptr %arrayidx660, align 8, !dbg !2025, !tbaa !1776
  %arrayidx661 = getelementptr inbounds %struct._ChannelStatistics, ptr %92, i64 %u.4, !dbg !2025
  %arrayidx663 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx661, i64 0, i64 %i437.05715, !dbg !2025
  %opacity664 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx663, i64 0, i32 3, !dbg !2026
  %93 = load double, ptr %opacity664, align 8, !dbg !2027, !tbaa !2024
  %inc665 = fadd double %93, 1.000000e+00, !dbg !2027
  store double %inc665, ptr %opacity664, align 8, !dbg !2027, !tbaa !2024
  br label %for.inc667, !dbg !2028

for.inc667:                                       ; preds = %if.end628, %while.end653
  %inc668 = add nuw nsw i64 %i437.05715, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %inc668, metadata !884, metadata !DIExpression()), !dbg !1904
  %exitcond5820.not = icmp eq i64 %inc668, 4, !dbg !2030
  br i1 %exitcond5820.not, label %for.end669, label %for.body462, !dbg !1915, !llvm.loop !2031

for.end669:                                       ; preds = %for.inc667
  %incdec.ptr670 = getelementptr inbounds %struct._PixelPacket, ptr %p435.05719, i64 1, !dbg !2033
  call void @llvm.dbg.value(metadata ptr %incdec.ptr670, metadata !882, metadata !DIExpression()), !dbg !1904
  %inc672 = add nuw nsw i64 %x436.05720, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %inc672, metadata !883, metadata !DIExpression()), !dbg !1904
  %exitcond5821.not = icmp eq i64 %inc672, %51, !dbg !1910
  br i1 %exitcond5821.not, label %cleanup674, label %for.cond459.preheader, !dbg !1913, !llvm.loop !2035

cleanup674:                                       ; preds = %for.end669, %if.end450, %if.end441, %for.body433
  %status.3 = phi i32 [ 0, %for.body433 ], [ 0, %if.end441 ], [ 1, %if.end450 ], [ 1, %for.end669 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !861, metadata !DIExpression()), !dbg !1565
  %inc684 = add nuw nsw i64 %y.15723, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %inc684, metadata !864, metadata !DIExpression()), !dbg !1565
  %94 = load i64, ptr %rows, align 8, !dbg !1895, !tbaa !1090
  %cmp431 = icmp slt i64 %inc684, %94, !dbg !1896
  br i1 %cmp431, label %for.body433, label %for.end685, !dbg !1897, !llvm.loop !2038

for.end685:                                       ; preds = %cleanup674, %if.end427
  %status.2.lcssa = phi i32 [ 1, %if.end427 ], [ %status.3, %cleanup674 ], !dbg !2040
  %call686 = call ptr @RelinquishMagickMemory(ptr noundef %call17) #13, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %call686, metadata !860, metadata !DIExpression()), !dbg !1565
  %call687 = call ptr @DestroyCacheView(ptr noundef %call428) #13, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %call687, metadata !839, metadata !DIExpression()), !dbg !1565
  %cmp688 = icmp eq i32 %status.2.lcssa, 0, !dbg !2043
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  br i1 %cmp688, label %for.cond691.preheader, label %for.body711, !dbg !2045

for.cond691.preheader:                            ; preds = %for.end685
  br i1 %cmp3605713.not, label %for.end701, label %for.body695, !dbg !2046

for.body695:                                      ; preds = %for.cond691.preheader, %for.body695
  %i.65801 = phi i64 [ %inc700, %for.body695 ], [ 0, %for.cond691.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.65801, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx696 = getelementptr inbounds ptr, ptr %call234, i64 %i.65801, !dbg !2049
  %95 = load ptr, ptr %arrayidx696, align 8, !dbg !2049, !tbaa !1776
  %call697 = call ptr @RelinquishMagickMemory(ptr noundef %95) #13, !dbg !2051
  store ptr %call697, ptr %arrayidx696, align 8, !dbg !2052, !tbaa !1776
  %inc700 = add nuw nsw i64 %i.65801, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %inc700, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5847.not = icmp eq i64 %inc700, %conv233, !dbg !2054
  br i1 %exitcond5847.not, label %for.end701, label %for.body695, !dbg !2046, !llvm.loop !2055

for.end701:                                       ; preds = %for.body695, %for.cond691.preheader
  %call702 = call ptr @RelinquishMagickMemory(ptr noundef %call234) #13, !dbg !2057
  call void @llvm.dbg.value(metadata ptr %call702, metadata !844, metadata !DIExpression()), !dbg !1565
  %call703 = call ptr @RelinquishMagickMemory(ptr noundef %call6) #13, !dbg !2058
  call void @llvm.dbg.value(metadata ptr %call703, metadata !843, metadata !DIExpression()), !dbg !1565
  %filename704 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2059
  %call706 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename704) #13, !dbg !2060
  br label %cleanup3656, !dbg !2061

for.cond810.preheader:                            ; preds = %for.end806
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx837 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1
  %arrayidx850 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2
  %arrayidx864 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4
  %arrayidx882 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32
  %arrayidx901 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8
  br label %for.cond815.preheader, !dbg !2062

for.body711:                                      ; preds = %for.end685, %for.end806
  %i.75748 = phi i64 [ %inc808, %for.end806 ], [ 0, %for.end685 ]
  call void @llvm.dbg.value(metadata i64 %i.75748, metadata !862, metadata !DIExpression()), !dbg !1565
  switch i64 %i.75748, label %sw.default714 [
    i64 3, label %sw.bb739
    i64 1, label %sw.bb722
    i64 2, label %sw.bb730
  ], !dbg !2063

sw.default714:                                    ; preds = %for.body711
  %96 = load i64, ptr %rows, align 8, !dbg !2064, !tbaa !1090
  %97 = load i64, ptr %columns, align 8, !dbg !2067, !tbaa !1088
  %sub719 = sub i64 %97, %distance, !dbg !2068
  call void @llvm.dbg.value(metadata double undef, metadata !888, metadata !DIExpression()), !dbg !2069
  br label %sw.epilog748, !dbg !2070

sw.bb722:                                         ; preds = %for.body711
  %98 = load i64, ptr %rows, align 8, !dbg !2071, !tbaa !1090
  %sub724 = sub i64 %98, %distance, !dbg !2073
  %99 = load i64, ptr %columns, align 8, !dbg !2074, !tbaa !1088
  call void @llvm.dbg.value(metadata double undef, metadata !888, metadata !DIExpression()), !dbg !2069
  br label %sw.epilog748, !dbg !2075

sw.bb730:                                         ; preds = %for.body711
  %100 = load i64, ptr %rows, align 8, !dbg !2076, !tbaa !1090
  %sub732 = sub i64 %100, %distance, !dbg !2078
  %101 = load i64, ptr %columns, align 8, !dbg !2079, !tbaa !1088
  %sub736 = sub i64 %101, %distance, !dbg !2080
  call void @llvm.dbg.value(metadata double undef, metadata !888, metadata !DIExpression()), !dbg !2069
  br label %sw.epilog748, !dbg !2081

sw.bb739:                                         ; preds = %for.body711
  %102 = load i64, ptr %rows, align 8, !dbg !2082, !tbaa !1090
  %sub741 = sub i64 %102, %distance, !dbg !2084
  %103 = load i64, ptr %columns, align 8, !dbg !2085, !tbaa !1088
  %sub745 = sub i64 %103, %distance, !dbg !2086
  call void @llvm.dbg.value(metadata double %mul747, metadata !888, metadata !DIExpression()), !dbg !2069
  br label %sw.epilog748, !dbg !2087

sw.epilog748:                                     ; preds = %sw.bb739, %sw.bb730, %sw.bb722, %sw.default714
  %sub745.sink = phi i64 [ %sub745, %sw.bb739 ], [ %sub736, %sw.bb730 ], [ %99, %sw.bb722 ], [ %sub719, %sw.default714 ]
  %mul743.sink.in.in = phi i64 [ %sub741, %sw.bb739 ], [ %sub732, %sw.bb730 ], [ %sub724, %sw.bb722 ], [ %96, %sw.default714 ]
  %mul743.sink.in = uitofp i64 %mul743.sink.in.in to double, !dbg !2088
  %mul743.sink = fmul double %mul743.sink.in, 2.000000e+00, !dbg !2088
  %conv746 = uitofp i64 %sub745.sink to double, !dbg !2088
  %mul747 = fmul double %mul743.sink, %conv746, !dbg !2088
  call void @llvm.dbg.value(metadata double %mul747, metadata !888, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata double %mul747, metadata !2089, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2095, metadata !DIExpression()), !dbg !2096
  %cmp1.i = fcmp ult double %mul747, 1.000000e-15, !dbg !2098
  br i1 %cmp1.i, label %PerceptibleReciprocal.exit, label %if.then.i, !dbg !2100

if.then.i:                                        ; preds = %sw.epilog748
  %div.i = fdiv double 1.000000e+00, %mul747, !dbg !2101
  br label %PerceptibleReciprocal.exit, !dbg !2102

PerceptibleReciprocal.exit:                       ; preds = %sw.epilog748, %if.then.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ 0x430C6BF52633FFFF, %sw.epilog748 ], !dbg !2096
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !888, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !892, metadata !DIExpression()), !dbg !2069
  br i1 %cmp3605713.not, label %for.end806, label %for.cond756.preheader.lr.ph, !dbg !2103

for.cond756.preheader.lr.ph:                      ; preds = %PerceptibleReciprocal.exit
  %104 = load i32, ptr %colorspace159, align 4, !tbaa !1633
  %cmp780 = icmp eq i32 %104, 12
  %105 = load i32, ptr %matte177, align 8, !tbaa !1634
  %cmp791.not = icmp eq i32 %105, 0
  br i1 %cmp780, label %for.cond756.preheader.lr.ph.split.us, label %for.cond756.preheader.lr.ph.split, !dbg !2104

for.cond756.preheader.lr.ph.split.us:             ; preds = %for.cond756.preheader.lr.ph
  br i1 %cmp791.not, label %for.cond756.preheader.us.us, label %for.cond756.preheader.us, !dbg !2108

for.cond756.preheader.us.us:                      ; preds = %for.cond756.preheader.lr.ph.split.us, %for.cond756.for.end803_crit_edge.split.us.us.split.us.us
  %y712.05741.us.us = phi i64 [ %inc805.us.us, %for.cond756.for.end803_crit_edge.split.us.us.split.us.us ], [ 0, %for.cond756.preheader.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %y712.05741.us.us, metadata !892, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !2109
  br label %for.body760.us.us.us.us, !dbg !2110

for.body760.us.us.us.us:                          ; preds = %for.body760.us.us.us.us, %for.cond756.preheader.us.us
  %x755.05726.us.us.us.us = phi i64 [ 0, %for.cond756.preheader.us.us ], [ %inc802.us.us.us.us, %for.body760.us.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %x755.05726.us.us.us.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %arrayidx761.us.us.us.us = getelementptr inbounds ptr, ptr %call234, i64 %x755.05726.us.us.us.us, !dbg !2111
  %106 = load ptr, ptr %arrayidx761.us.us.us.us, align 8, !dbg !2111, !tbaa !1776
  %arrayidx762.us.us.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %106, i64 %y712.05741.us.us, !dbg !2111
  %arrayidx764.us.us.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx762.us.us.us.us, i64 0, i64 %i.75748, !dbg !2111
  %107 = load double, ptr %arrayidx764.us.us.us.us, align 8, !dbg !2112, !tbaa !1944
  %mul766.us.us.us.us = fmul double %retval.0.i, %107, !dbg !2112
  store double %mul766.us.us.us.us, ptr %arrayidx764.us.us.us.us, align 8, !dbg !2112, !tbaa !1944
  %green771.us.us.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us.us.us, i64 0, i32 1, !dbg !2113
  %108 = load double, ptr %green771.us.us.us.us, align 8, !dbg !2114, !tbaa !1961
  %mul772.us.us.us.us = fmul double %retval.0.i, %108, !dbg !2114
  store double %mul772.us.us.us.us, ptr %green771.us.us.us.us, align 8, !dbg !2114, !tbaa !1961
  %blue777.us.us.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us.us.us, i64 0, i32 2, !dbg !2115
  %109 = load double, ptr %blue777.us.us.us.us, align 8, !dbg !2116, !tbaa !1979
  %mul778.us.us.us.us = fmul double %retval.0.i, %109, !dbg !2116
  store double %mul778.us.us.us.us, ptr %blue777.us.us.us.us, align 8, !dbg !2116, !tbaa !1979
  %index787.us.us.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us.us.us, i64 0, i32 4, !dbg !2117
  %110 = load double, ptr %index787.us.us.us.us, align 8, !dbg !2119, !tbaa !2002
  %mul788.us.us.us.us = fmul double %retval.0.i, %110, !dbg !2119
  store double %mul788.us.us.us.us, ptr %index787.us.us.us.us, align 8, !dbg !2119, !tbaa !2002
  %inc802.us.us.us.us = add nuw nsw i64 %x755.05726.us.us.us.us, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %inc802.us.us.us.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %exitcond5828.not = icmp eq i64 %inc802.us.us.us.us, %conv233, !dbg !2121
  br i1 %exitcond5828.not, label %for.cond756.for.end803_crit_edge.split.us.us.split.us.us, label %for.body760.us.us.us.us, !dbg !2110, !llvm.loop !2122

for.cond756.for.end803_crit_edge.split.us.us.split.us.us: ; preds = %for.body760.us.us.us.us
  %inc805.us.us = add nuw nsw i64 %y712.05741.us.us, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %inc805.us.us, metadata !892, metadata !DIExpression()), !dbg !2069
  %exitcond5829.not = icmp eq i64 %inc805.us.us, %conv233, !dbg !2125
  br i1 %exitcond5829.not, label %for.end806, label %for.cond756.preheader.us.us, !dbg !2103, !llvm.loop !2126

for.cond756.preheader.us:                         ; preds = %for.cond756.preheader.lr.ph.split.us, %for.cond756.for.end803_crit_edge.split.us.us.split
  %y712.05741.us = phi i64 [ %inc805.us, %for.cond756.for.end803_crit_edge.split.us.us.split ], [ 0, %for.cond756.preheader.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %y712.05741.us, metadata !892, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !2109
  br label %for.body760.us.us, !dbg !2110

for.body760.us.us:                                ; preds = %for.body760.us.us, %for.cond756.preheader.us
  %x755.05726.us.us = phi i64 [ 0, %for.cond756.preheader.us ], [ %inc802.us.us, %for.body760.us.us ]
  call void @llvm.dbg.value(metadata i64 %x755.05726.us.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %arrayidx761.us.us = getelementptr inbounds ptr, ptr %call234, i64 %x755.05726.us.us, !dbg !2111
  %111 = load ptr, ptr %arrayidx761.us.us, align 8, !dbg !2111, !tbaa !1776
  %arrayidx762.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %111, i64 %y712.05741.us, !dbg !2111
  %arrayidx764.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx762.us.us, i64 0, i64 %i.75748, !dbg !2111
  %112 = load double, ptr %arrayidx764.us.us, align 8, !dbg !2112, !tbaa !1944
  %mul766.us.us = fmul double %retval.0.i, %112, !dbg !2112
  store double %mul766.us.us, ptr %arrayidx764.us.us, align 8, !dbg !2112, !tbaa !1944
  %green771.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us, i64 0, i32 1, !dbg !2113
  %113 = load double, ptr %green771.us.us, align 8, !dbg !2114, !tbaa !1961
  %mul772.us.us = fmul double %retval.0.i, %113, !dbg !2114
  store double %mul772.us.us, ptr %green771.us.us, align 8, !dbg !2114, !tbaa !1961
  %blue777.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us, i64 0, i32 2, !dbg !2115
  %114 = load double, ptr %blue777.us.us, align 8, !dbg !2116, !tbaa !1979
  %mul778.us.us = fmul double %retval.0.i, %114, !dbg !2116
  store double %mul778.us.us, ptr %blue777.us.us, align 8, !dbg !2116, !tbaa !1979
  %index787.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us, i64 0, i32 4, !dbg !2117
  %115 = load double, ptr %index787.us.us, align 8, !dbg !2119, !tbaa !2002
  %mul788.us.us = fmul double %retval.0.i, %115, !dbg !2119
  store double %mul788.us.us, ptr %index787.us.us, align 8, !dbg !2119, !tbaa !2002
  %opacity798.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us.us, i64 0, i32 3, !dbg !2128
  %116 = load double, ptr %opacity798.us.us, align 8, !dbg !2130, !tbaa !2024
  %mul799.us.us = fmul double %retval.0.i, %116, !dbg !2130
  store double %mul799.us.us, ptr %opacity798.us.us, align 8, !dbg !2130, !tbaa !2024
  %inc802.us.us = add nuw nsw i64 %x755.05726.us.us, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %inc802.us.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %exitcond5826.not = icmp eq i64 %inc802.us.us, %conv233, !dbg !2121
  br i1 %exitcond5826.not, label %for.cond756.for.end803_crit_edge.split.us.us.split, label %for.body760.us.us, !dbg !2110, !llvm.loop !2122

for.cond756.for.end803_crit_edge.split.us.us.split: ; preds = %for.body760.us.us
  %inc805.us = add nuw nsw i64 %y712.05741.us, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %inc805.us, metadata !892, metadata !DIExpression()), !dbg !2069
  %exitcond5827.not = icmp eq i64 %inc805.us, %conv233, !dbg !2125
  br i1 %exitcond5827.not, label %for.end806, label %for.cond756.preheader.us, !dbg !2103, !llvm.loop !2126

for.cond756.preheader.lr.ph.split:                ; preds = %for.cond756.preheader.lr.ph
  br i1 %cmp791.not, label %for.cond756.preheader.us5744, label %for.cond756.preheader, !dbg !2108

for.cond756.preheader.us5744:                     ; preds = %for.cond756.preheader.lr.ph.split, %for.cond756.for.end803_crit_edge.split.split.us.us
  %y712.05741.us5745 = phi i64 [ %inc805.us5746, %for.cond756.for.end803_crit_edge.split.split.us.us ], [ 0, %for.cond756.preheader.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %y712.05741.us5745, metadata !892, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !2109
  br label %for.body760.us5727.us, !dbg !2110

for.body760.us5727.us:                            ; preds = %for.body760.us5727.us, %for.cond756.preheader.us5744
  %x755.05726.us5728.us = phi i64 [ 0, %for.cond756.preheader.us5744 ], [ %inc802.us5738.us, %for.body760.us5727.us ]
  call void @llvm.dbg.value(metadata i64 %x755.05726.us5728.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %arrayidx761.us5729.us = getelementptr inbounds ptr, ptr %call234, i64 %x755.05726.us5728.us, !dbg !2111
  %117 = load ptr, ptr %arrayidx761.us5729.us, align 8, !dbg !2111, !tbaa !1776
  %arrayidx762.us5730.us = getelementptr inbounds %struct._ChannelStatistics, ptr %117, i64 %y712.05741.us5745, !dbg !2111
  %arrayidx764.us5731.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx762.us5730.us, i64 0, i64 %i.75748, !dbg !2111
  %118 = load double, ptr %arrayidx764.us5731.us, align 8, !dbg !2112, !tbaa !1944
  %mul766.us5732.us = fmul double %retval.0.i, %118, !dbg !2112
  store double %mul766.us5732.us, ptr %arrayidx764.us5731.us, align 8, !dbg !2112, !tbaa !1944
  %green771.us5733.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us5731.us, i64 0, i32 1, !dbg !2113
  %119 = load double, ptr %green771.us5733.us, align 8, !dbg !2114, !tbaa !1961
  %mul772.us5734.us = fmul double %retval.0.i, %119, !dbg !2114
  store double %mul772.us5734.us, ptr %green771.us5733.us, align 8, !dbg !2114, !tbaa !1961
  %blue777.us5735.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764.us5731.us, i64 0, i32 2, !dbg !2115
  %120 = load double, ptr %blue777.us5735.us, align 8, !dbg !2116, !tbaa !1979
  %mul778.us5736.us = fmul double %retval.0.i, %120, !dbg !2116
  store double %mul778.us5736.us, ptr %blue777.us5735.us, align 8, !dbg !2116, !tbaa !1979
  %inc802.us5738.us = add nuw nsw i64 %x755.05726.us5728.us, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %inc802.us5738.us, metadata !893, metadata !DIExpression()), !dbg !2109
  %exitcond5824.not = icmp eq i64 %inc802.us5738.us, %conv233, !dbg !2121
  br i1 %exitcond5824.not, label %for.cond756.for.end803_crit_edge.split.split.us.us, label %for.body760.us5727.us, !dbg !2110, !llvm.loop !2122

for.cond756.for.end803_crit_edge.split.split.us.us: ; preds = %for.body760.us5727.us
  %inc805.us5746 = add nuw nsw i64 %y712.05741.us5745, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %inc805.us5746, metadata !892, metadata !DIExpression()), !dbg !2069
  %exitcond5825.not = icmp eq i64 %inc805.us5746, %conv233, !dbg !2125
  br i1 %exitcond5825.not, label %for.end806, label %for.cond756.preheader.us5744, !dbg !2103, !llvm.loop !2126

for.cond756.preheader:                            ; preds = %for.cond756.preheader.lr.ph.split, %for.cond756.for.end803_crit_edge.split.split
  %y712.05741 = phi i64 [ %inc805, %for.cond756.for.end803_crit_edge.split.split ], [ 0, %for.cond756.preheader.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %y712.05741, metadata !892, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !2109
  br label %for.body760, !dbg !2110

for.body760:                                      ; preds = %for.cond756.preheader, %for.body760
  %x755.05726 = phi i64 [ 0, %for.cond756.preheader ], [ %inc802, %for.body760 ]
  call void @llvm.dbg.value(metadata i64 %x755.05726, metadata !893, metadata !DIExpression()), !dbg !2109
  %arrayidx761 = getelementptr inbounds ptr, ptr %call234, i64 %x755.05726, !dbg !2111
  %121 = load ptr, ptr %arrayidx761, align 8, !dbg !2111, !tbaa !1776
  %arrayidx762 = getelementptr inbounds %struct._ChannelStatistics, ptr %121, i64 %y712.05741, !dbg !2111
  %arrayidx764 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx762, i64 0, i64 %i.75748, !dbg !2111
  %122 = load double, ptr %arrayidx764, align 8, !dbg !2112, !tbaa !1944
  %mul766 = fmul double %retval.0.i, %122, !dbg !2112
  store double %mul766, ptr %arrayidx764, align 8, !dbg !2112, !tbaa !1944
  %green771 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764, i64 0, i32 1, !dbg !2113
  %123 = load double, ptr %green771, align 8, !dbg !2114, !tbaa !1961
  %mul772 = fmul double %retval.0.i, %123, !dbg !2114
  store double %mul772, ptr %green771, align 8, !dbg !2114, !tbaa !1961
  %blue777 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764, i64 0, i32 2, !dbg !2115
  %124 = load double, ptr %blue777, align 8, !dbg !2116, !tbaa !1979
  %mul778 = fmul double %retval.0.i, %124, !dbg !2116
  store double %mul778, ptr %blue777, align 8, !dbg !2116, !tbaa !1979
  %opacity798 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx764, i64 0, i32 3, !dbg !2128
  %125 = load double, ptr %opacity798, align 8, !dbg !2130, !tbaa !2024
  %mul799 = fmul double %retval.0.i, %125, !dbg !2130
  store double %mul799, ptr %opacity798, align 8, !dbg !2130, !tbaa !2024
  %inc802 = add nuw nsw i64 %x755.05726, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %inc802, metadata !893, metadata !DIExpression()), !dbg !2109
  %exitcond5822.not = icmp eq i64 %inc802, %conv233, !dbg !2121
  br i1 %exitcond5822.not, label %for.cond756.for.end803_crit_edge.split.split, label %for.body760, !dbg !2110, !llvm.loop !2122

for.cond756.for.end803_crit_edge.split.split:     ; preds = %for.body760
  %inc805 = add nuw nsw i64 %y712.05741, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %inc805, metadata !892, metadata !DIExpression()), !dbg !2069
  %exitcond5823.not = icmp eq i64 %inc805, %conv233, !dbg !2125
  br i1 %exitcond5823.not, label %for.end806, label %for.cond756.preheader, !dbg !2103, !llvm.loop !2126

for.end806:                                       ; preds = %for.cond756.for.end803_crit_edge.split.split, %for.cond756.for.end803_crit_edge.split.split.us.us, %for.cond756.for.end803_crit_edge.split.us.us.split, %for.cond756.for.end803_crit_edge.split.us.us.split.us.us, %PerceptibleReciprocal.exit
  %inc808 = add nuw nsw i64 %i.75748, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %inc808, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5830.not = icmp eq i64 %inc808, 4, !dbg !2132
  br i1 %exitcond5830.not, label %for.cond810.preheader, label %for.body711, !dbg !2133, !llvm.loop !2134

for.cond815.preheader:                            ; preds = %for.cond810.preheader, %if.end1711
  %i.85757 = phi i64 [ 0, %for.cond810.preheader ], [ %inc1713, %if.end1711 ]
  call void @llvm.dbg.value(metadata i64 %i.85757, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !897, metadata !DIExpression()), !dbg !2136
  br i1 %cmp3605713.not, label %for.cond815.preheader.for.end1501_crit_edge, label %for.cond821.preheader.lr.ph, !dbg !2137

for.cond815.preheader.for.end1501_crit_edge:      ; preds = %for.cond815.preheader
  %arrayidx1506.phi.trans.insert = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757
  %.pre5852 = load double, ptr %arrayidx1506.phi.trans.insert, align 8, !dbg !2138, !tbaa !1944
  %arrayidx1514.phi.trans.insert = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757
  %.pre5853 = load double, ptr %arrayidx1514.phi.trans.insert, align 8, !dbg !2139, !tbaa !1944
  br label %for.end1501, !dbg !2137

for.cond821.preheader.lr.ph:                      ; preds = %for.cond815.preheader
  %arrayidx838 = getelementptr inbounds [4 x double], ptr %arrayidx837, i64 0, i64 %i.85757
  %arrayidx852 = getelementptr inbounds [4 x double], ptr %arrayidx850, i64 0, i64 %i.85757
  %arrayidx866 = getelementptr inbounds [4 x double], ptr %arrayidx864, i64 0, i64 %i.85757
  %arrayidx974 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757
  %green986 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 1
  %blue997 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 2
  %arrayidx1041 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 4, i64 %i.85757
  %arrayidx1056 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 4, i64 %i.85757
  %arrayidx1071 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 4, i64 %i.85757
  %arrayidx1196 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 8, i64 %i.85757
  %arrayidx1211 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 8, i64 %i.85757
  %arrayidx1227 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 8, i64 %i.85757
  %arrayidx884 = getelementptr inbounds [4 x double], ptr %arrayidx882, i64 0, i64 %i.85757
  %arrayidx903 = getelementptr inbounds [4 x double], ptr %arrayidx901, i64 0, i64 %i.85757
  %index1012 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 4
  %opacity1028 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 3
  %arrayidx1090 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 4, i64 %i.85757
  %arrayidx1110 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 4, i64 %i.85757
  %arrayidx1247 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 8, i64 %i.85757
  %arrayidx1268 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 8, i64 %i.85757
  %arrayidx1401 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757
  %arrayidx1411 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757
  %green1421 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 1
  %green1431 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 1
  %blue1440 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 2
  %blue1450 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 2
  %index1463 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 4
  %index1473 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 4
  %opacity1487 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 3
  %opacity1497 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 3
  %.pre.pre = load i32, ptr %colorspace159, align 4, !dbg !2140, !tbaa !1633
  br label %for.cond821.preheader, !dbg !2137

for.cond1715.preheader:                           ; preds = %if.end1711
  %cmp17235761 = icmp ugt i32 %add235, 2
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  br i1 %cmp17235761, label %for.cond1720.preheader.us.preheader, label %for.cond1974.preheader.preheader, !dbg !2145

for.cond1974.preheader.preheader:                 ; preds = %for.cond1720.for.end1965_crit_edge.us, %for.cond1715.preheader
  br label %for.cond1974.preheader, !dbg !2147

for.cond1720.preheader.us.preheader:              ; preds = %for.cond1715.preheader
  %.pre5854.pre = load i32, ptr %colorspace159, align 4, !dbg !2148, !tbaa !1633
  br label %for.cond1720.preheader.us, !dbg !2152

for.cond1720.preheader.us:                        ; preds = %for.cond1720.preheader.us.preheader, %for.cond1720.for.end1965_crit_edge.us
  %.pre5854 = phi i32 [ %177, %for.cond1720.for.end1965_crit_edge.us ], [ %.pre5854.pre, %for.cond1720.preheader.us.preheader ], !dbg !2148
  %i.95763.us = phi i64 [ %inc1967.us, %for.cond1720.for.end1965_crit_edge.us ], [ 0, %for.cond1720.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.95763.us, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 2, metadata !905, metadata !DIExpression()), !dbg !2153
  %arrayidx1733.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 5, i64 %i.95763.us
  %arrayidx1742.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 5, i64 %i.95763.us
  %arrayidx1751.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 5, i64 %i.95763.us
  %arrayidx1764.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 5, i64 %i.95763.us
  %arrayidx1778.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 5, i64 %i.95763.us
  %arrayidx1791.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 7, i64 %i.95763.us
  %arrayidx1805.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 7, i64 %i.95763.us
  %arrayidx1819.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 7, i64 %i.95763.us
  %arrayidx1837.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 7, i64 %i.95763.us
  %arrayidx1856.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 7, i64 %i.95763.us
  %arrayidx1876.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 6, i64 %i.95763.us
  %arrayidx1895.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 6, i64 %i.95763.us
  %arrayidx1914.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 6, i64 %i.95763.us
  %arrayidx1937.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 6, i64 %i.95763.us
  %arrayidx1961.us = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 6, i64 %i.95763.us
  br label %for.body1725.us, !dbg !2145

for.body1725.us:                                  ; preds = %for.cond1720.preheader.us, %for.inc1963.us
  %126 = phi i32 [ %.pre5854, %for.cond1720.preheader.us ], [ %177, %for.inc1963.us ], !dbg !2148
  %x1719.05762.us = phi i64 [ 2, %for.cond1720.preheader.us ], [ %inc1964.us, %for.inc1963.us ]
  call void @llvm.dbg.value(metadata i64 %x1719.05762.us, metadata !905, metadata !DIExpression()), !dbg !2153
  %conv1726.us = sitofp i64 %x1719.05762.us to double, !dbg !2154
  %arrayidx1727.us = getelementptr inbounds %struct._ChannelStatistics, ptr %call242, i64 %x1719.05762.us, !dbg !2155
  %arrayidx1729.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1727.us, i64 0, i64 %i.95763.us, !dbg !2155
  %127 = load double, ptr %arrayidx1729.us, align 8, !dbg !2156, !tbaa !1944
  %128 = load double, ptr %arrayidx1733.us, align 8, !dbg !2157, !tbaa !1126
  %129 = call double @llvm.fmuladd.f64(double %conv1726.us, double %127, double %128), !dbg !2157
  store double %129, ptr %arrayidx1733.us, align 8, !dbg !2157, !tbaa !1126
  %green1738.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 1, !dbg !2158
  %130 = load double, ptr %green1738.us, align 8, !dbg !2158, !tbaa !1961
  %131 = load double, ptr %arrayidx1742.us, align 8, !dbg !2159, !tbaa !1126
  %132 = call double @llvm.fmuladd.f64(double %conv1726.us, double %130, double %131), !dbg !2159
  store double %132, ptr %arrayidx1742.us, align 8, !dbg !2159, !tbaa !1126
  %blue1747.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 2, !dbg !2160
  %133 = load double, ptr %blue1747.us, align 8, !dbg !2160, !tbaa !1979
  %134 = load double, ptr %arrayidx1751.us, align 8, !dbg !2161, !tbaa !1126
  %135 = call double @llvm.fmuladd.f64(double %conv1726.us, double %133, double %134), !dbg !2161
  store double %135, ptr %arrayidx1751.us, align 8, !dbg !2161, !tbaa !1126
  %cmp1753.us = icmp eq i32 %126, 12, !dbg !2162
  br i1 %cmp1753.us, label %if.then1755.us, label %if.end1765.us, !dbg !2163

if.then1755.us:                                   ; preds = %for.body1725.us
  %index1760.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 4, !dbg !2164
  %136 = load double, ptr %index1760.us, align 8, !dbg !2164, !tbaa !2002
  %137 = load double, ptr %arrayidx1764.us, align 8, !dbg !2165, !tbaa !1126
  %138 = call double @llvm.fmuladd.f64(double %conv1726.us, double %136, double %137), !dbg !2165
  store double %138, ptr %arrayidx1764.us, align 8, !dbg !2165, !tbaa !1126
  br label %if.end1765.us, !dbg !2166

if.end1765.us:                                    ; preds = %if.then1755.us, %for.body1725.us
  %139 = load i32, ptr %matte177, align 8, !dbg !2167, !tbaa !1634
  %cmp1767.not.us = icmp eq i32 %139, 0, !dbg !2169
  br i1 %cmp1767.not.us, label %if.end1779.us, label %if.then1769.us, !dbg !2170

if.then1769.us:                                   ; preds = %if.end1765.us
  %opacity1774.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 3, !dbg !2171
  %140 = load double, ptr %opacity1774.us, align 8, !dbg !2171, !tbaa !2024
  %141 = load double, ptr %arrayidx1778.us, align 8, !dbg !2172, !tbaa !1126
  %142 = call double @llvm.fmuladd.f64(double %conv1726.us, double %140, double %141), !dbg !2172
  store double %142, ptr %arrayidx1778.us, align 8, !dbg !2172, !tbaa !1126
  br label %if.end1779.us, !dbg !2173

if.end1779.us:                                    ; preds = %if.then1769.us, %if.end1765.us
  %143 = load double, ptr %arrayidx1729.us, align 8, !dbg !2174, !tbaa !1944
  call void @llvm.dbg.value(metadata double %143, metadata !2175, metadata !DIExpression()) #13, !dbg !2178
  %144 = call double @llvm.fabs.f64(double %143) #13, !dbg !2180
  %cmp.i5504.us = fcmp olt double %144, 0x3DA5FD7FE1796495, !dbg !2182
  br i1 %cmp.i5504.us, label %MagickLog10.exit5508.us, label %if.end.i5506.us, !dbg !2183

if.end.i5506.us:                                  ; preds = %if.end1779.us
  %call1.i5505.us = call double @log10(double noundef %144) #13, !dbg !2184
  br label %MagickLog10.exit5508.us, !dbg !2185

MagickLog10.exit5508.us:                          ; preds = %if.end.i5506.us, %if.end1779.us
  %retval.0.i5507.us = phi double [ %call1.i5505.us, %if.end.i5506.us ], [ -1.100000e+01, %if.end1779.us ], !dbg !2178
  %145 = load double, ptr %arrayidx1791.us, align 8, !dbg !2186, !tbaa !1126
  %neg1792.us = fneg double %143, !dbg !2186
  %146 = call double @llvm.fmuladd.f64(double %neg1792.us, double %retval.0.i5507.us, double %145), !dbg !2186
  store double %146, ptr %arrayidx1791.us, align 8, !dbg !2186, !tbaa !1126
  %147 = load double, ptr %green1738.us, align 8, !dbg !2187, !tbaa !1961
  call void @llvm.dbg.value(metadata double %147, metadata !2175, metadata !DIExpression()) #13, !dbg !2188
  %148 = call double @llvm.fabs.f64(double %147) #13, !dbg !2190
  %cmp.i5509.us = fcmp olt double %148, 0x3DA5FD7FE1796495, !dbg !2191
  br i1 %cmp.i5509.us, label %MagickLog10.exit5513.us, label %if.end.i5511.us, !dbg !2192

if.end.i5511.us:                                  ; preds = %MagickLog10.exit5508.us
  %call1.i5510.us = call double @log10(double noundef %148) #13, !dbg !2193
  br label %MagickLog10.exit5513.us, !dbg !2194

MagickLog10.exit5513.us:                          ; preds = %if.end.i5511.us, %MagickLog10.exit5508.us
  %retval.0.i5512.us = phi double [ %call1.i5510.us, %if.end.i5511.us ], [ -1.100000e+01, %MagickLog10.exit5508.us ], !dbg !2188
  %149 = load double, ptr %arrayidx1805.us, align 8, !dbg !2195, !tbaa !1126
  %neg1806.us = fneg double %147, !dbg !2195
  %150 = call double @llvm.fmuladd.f64(double %neg1806.us, double %retval.0.i5512.us, double %149), !dbg !2195
  store double %150, ptr %arrayidx1805.us, align 8, !dbg !2195, !tbaa !1126
  %151 = load double, ptr %blue1747.us, align 8, !dbg !2196, !tbaa !1979
  call void @llvm.dbg.value(metadata double %151, metadata !2175, metadata !DIExpression()) #13, !dbg !2197
  %152 = call double @llvm.fabs.f64(double %151) #13, !dbg !2199
  %cmp.i5514.us = fcmp olt double %152, 0x3DA5FD7FE1796495, !dbg !2200
  br i1 %cmp.i5514.us, label %MagickLog10.exit5518.us, label %if.end.i5516.us, !dbg !2201

if.end.i5516.us:                                  ; preds = %MagickLog10.exit5513.us
  %call1.i5515.us = call double @log10(double noundef %152) #13, !dbg !2202
  br label %MagickLog10.exit5518.us, !dbg !2203

MagickLog10.exit5518.us:                          ; preds = %if.end.i5516.us, %MagickLog10.exit5513.us
  %retval.0.i5517.us = phi double [ %call1.i5515.us, %if.end.i5516.us ], [ -1.100000e+01, %MagickLog10.exit5513.us ], !dbg !2197
  %153 = load double, ptr %arrayidx1819.us, align 8, !dbg !2204, !tbaa !1126
  %neg1820.us = fneg double %151, !dbg !2204
  %154 = call double @llvm.fmuladd.f64(double %neg1820.us, double %retval.0.i5517.us, double %153), !dbg !2204
  store double %154, ptr %arrayidx1819.us, align 8, !dbg !2204, !tbaa !1126
  %155 = load i32, ptr %colorspace159, align 4, !dbg !2205, !tbaa !1633
  %cmp1822.us = icmp eq i32 %155, 12, !dbg !2207
  br i1 %cmp1822.us, label %if.then1824.us, label %if.end1839.us, !dbg !2208

if.then1824.us:                                   ; preds = %MagickLog10.exit5518.us
  %index1828.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 4, !dbg !2209
  %156 = load double, ptr %index1828.us, align 8, !dbg !2209, !tbaa !2002
  call void @llvm.dbg.value(metadata double %156, metadata !2175, metadata !DIExpression()) #13, !dbg !2210
  %157 = call double @llvm.fabs.f64(double %156) #13, !dbg !2212
  %cmp.i5519.us = fcmp olt double %157, 0x3DA5FD7FE1796495, !dbg !2213
  br i1 %cmp.i5519.us, label %MagickLog10.exit5523.us, label %if.end.i5521.us, !dbg !2214

if.end.i5521.us:                                  ; preds = %if.then1824.us
  %call1.i5520.us = call double @log10(double noundef %157) #13, !dbg !2215
  br label %MagickLog10.exit5523.us, !dbg !2216

MagickLog10.exit5523.us:                          ; preds = %if.end.i5521.us, %if.then1824.us
  %retval.0.i5522.us = phi double [ %call1.i5520.us, %if.end.i5521.us ], [ -1.100000e+01, %if.then1824.us ], !dbg !2210
  %158 = load double, ptr %arrayidx1837.us, align 8, !dbg !2217, !tbaa !1126
  %neg1838.us = fneg double %156, !dbg !2217
  %159 = call double @llvm.fmuladd.f64(double %neg1838.us, double %retval.0.i5522.us, double %158), !dbg !2217
  store double %159, ptr %arrayidx1837.us, align 8, !dbg !2217, !tbaa !1126
  br label %if.end1839.us, !dbg !2218

if.end1839.us:                                    ; preds = %MagickLog10.exit5523.us, %MagickLog10.exit5518.us
  %160 = load i32, ptr %matte177, align 8, !dbg !2219, !tbaa !1634
  %cmp1841.not.us = icmp eq i32 %160, 0, !dbg !2221
  br i1 %cmp1841.not.us, label %if.end1858.us, label %if.then1843.us, !dbg !2222

if.then1843.us:                                   ; preds = %if.end1839.us
  %opacity1847.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 3, !dbg !2223
  %161 = load double, ptr %opacity1847.us, align 8, !dbg !2223, !tbaa !2024
  call void @llvm.dbg.value(metadata double %161, metadata !2175, metadata !DIExpression()) #13, !dbg !2224
  %162 = call double @llvm.fabs.f64(double %161) #13, !dbg !2226
  %cmp.i5524.us = fcmp olt double %162, 0x3DA5FD7FE1796495, !dbg !2227
  br i1 %cmp.i5524.us, label %MagickLog10.exit5528.us, label %if.end.i5526.us, !dbg !2228

if.end.i5526.us:                                  ; preds = %if.then1843.us
  %call1.i5525.us = call double @log10(double noundef %162) #13, !dbg !2229
  br label %MagickLog10.exit5528.us, !dbg !2230

MagickLog10.exit5528.us:                          ; preds = %if.end.i5526.us, %if.then1843.us
  %retval.0.i5527.us = phi double [ %call1.i5525.us, %if.end.i5526.us ], [ -1.100000e+01, %if.then1843.us ], !dbg !2224
  %163 = load double, ptr %arrayidx1856.us, align 8, !dbg !2231, !tbaa !1126
  %neg1857.us = fneg double %161, !dbg !2231
  %164 = call double @llvm.fmuladd.f64(double %neg1857.us, double %retval.0.i5527.us, double %163), !dbg !2231
  store double %164, ptr %arrayidx1856.us, align 8, !dbg !2231, !tbaa !1126
  br label %if.end1858.us, !dbg !2232

if.end1858.us:                                    ; preds = %MagickLog10.exit5528.us, %if.end1839.us
  %165 = load double, ptr %arrayidx1791.us, align 8, !dbg !2233, !tbaa !1126
  %sub1863.us = fsub double %conv1726.us, %165, !dbg !2234
  %mul1869.us = fmul double %sub1863.us, %sub1863.us, !dbg !2235
  %166 = load double, ptr %arrayidx1729.us, align 8, !dbg !2236, !tbaa !1944
  %167 = load double, ptr %arrayidx1876.us, align 8, !dbg !2237, !tbaa !1126
  %168 = call double @llvm.fmuladd.f64(double %mul1869.us, double %166, double %167), !dbg !2237
  store double %168, ptr %arrayidx1876.us, align 8, !dbg !2237, !tbaa !1126
  %169 = load double, ptr %arrayidx1805.us, align 8, !dbg !2238, !tbaa !1126
  %sub1881.us = fsub double %conv1726.us, %169, !dbg !2239
  %mul1887.us = fmul double %sub1881.us, %sub1881.us, !dbg !2240
  %170 = load double, ptr %green1738.us, align 8, !dbg !2241, !tbaa !1961
  %171 = load double, ptr %arrayidx1895.us, align 8, !dbg !2242, !tbaa !1126
  %172 = call double @llvm.fmuladd.f64(double %mul1887.us, double %170, double %171), !dbg !2242
  store double %172, ptr %arrayidx1895.us, align 8, !dbg !2242, !tbaa !1126
  %173 = load double, ptr %arrayidx1819.us, align 8, !dbg !2243, !tbaa !1126
  %sub1900.us = fsub double %conv1726.us, %173, !dbg !2244
  %mul1906.us = fmul double %sub1900.us, %sub1900.us, !dbg !2245
  %174 = load double, ptr %blue1747.us, align 8, !dbg !2246, !tbaa !1979
  %175 = load double, ptr %arrayidx1914.us, align 8, !dbg !2247, !tbaa !1126
  %176 = call double @llvm.fmuladd.f64(double %mul1906.us, double %174, double %175), !dbg !2247
  store double %176, ptr %arrayidx1914.us, align 8, !dbg !2247, !tbaa !1126
  %177 = load i32, ptr %colorspace159, align 4, !dbg !2248, !tbaa !1633
  %cmp1916.us = icmp eq i32 %177, 12, !dbg !2250
  br i1 %cmp1916.us, label %if.then1918.us, label %if.end1938.us, !dbg !2251

if.then1918.us:                                   ; preds = %if.end1858.us
  %178 = load double, ptr %arrayidx1837.us, align 8, !dbg !2252, !tbaa !1126
  %sub1923.us = fsub double %conv1726.us, %178, !dbg !2253
  %mul1929.us = fmul double %sub1923.us, %sub1923.us, !dbg !2254
  %index1933.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 4, !dbg !2255
  %179 = load double, ptr %index1933.us, align 8, !dbg !2255, !tbaa !2002
  %180 = load double, ptr %arrayidx1937.us, align 8, !dbg !2256, !tbaa !1126
  %181 = call double @llvm.fmuladd.f64(double %mul1929.us, double %179, double %180), !dbg !2256
  store double %181, ptr %arrayidx1937.us, align 8, !dbg !2256, !tbaa !1126
  br label %if.end1938.us, !dbg !2257

if.end1938.us:                                    ; preds = %if.then1918.us, %if.end1858.us
  %182 = load i32, ptr %matte177, align 8, !dbg !2258, !tbaa !1634
  %cmp1940.not.us = icmp eq i32 %182, 0, !dbg !2260
  br i1 %cmp1940.not.us, label %for.inc1963.us, label %if.then1942.us, !dbg !2261

if.then1942.us:                                   ; preds = %if.end1938.us
  %183 = load double, ptr %arrayidx1856.us, align 8, !dbg !2262, !tbaa !1126
  %sub1947.us = fsub double %conv1726.us, %183, !dbg !2263
  %mul1953.us = fmul double %sub1947.us, %sub1947.us, !dbg !2264
  %opacity1957.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1729.us, i64 0, i32 3, !dbg !2265
  %184 = load double, ptr %opacity1957.us, align 8, !dbg !2265, !tbaa !2024
  %185 = load double, ptr %arrayidx1961.us, align 8, !dbg !2266, !tbaa !1126
  %186 = call double @llvm.fmuladd.f64(double %mul1953.us, double %184, double %185), !dbg !2266
  store double %186, ptr %arrayidx1961.us, align 8, !dbg !2266, !tbaa !1126
  br label %for.inc1963.us, !dbg !2267

for.inc1963.us:                                   ; preds = %if.then1942.us, %if.end1938.us
  %inc1964.us = add nuw nsw i64 %x1719.05762.us, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %inc1964.us, metadata !905, metadata !DIExpression()), !dbg !2153
  %exitcond5834.not = icmp eq i64 %inc1964.us, %conv349, !dbg !2269
  br i1 %exitcond5834.not, label %for.cond1720.for.end1965_crit_edge.us, label %for.body1725.us, !dbg !2145, !llvm.loop !2270

for.cond1720.for.end1965_crit_edge.us:            ; preds = %for.inc1963.us
  %inc1967.us = add nuw nsw i64 %i.95763.us, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %inc1967.us, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5835.not = icmp eq i64 %inc1967.us, 4, !dbg !2273
  br i1 %exitcond5835.not, label %for.cond1974.preheader.preheader, label %for.cond1720.preheader.us, !dbg !2152, !llvm.loop !2274

for.cond821.preheader:                            ; preds = %for.cond821.preheader.lr.ph, %if.end1498
  %.pre = phi i32 [ %.pre.pre, %for.cond821.preheader.lr.ph ], [ %283, %if.end1498 ], !dbg !2140
  %y814.05756 = phi i64 [ 0, %for.cond821.preheader.lr.ph ], [ %inc1500, %if.end1498 ]
  call void @llvm.dbg.value(metadata i64 %y814.05756, metadata !897, metadata !DIExpression()), !dbg !2136
  %arrayidx910 = getelementptr inbounds %struct._ChannelStatistics, ptr %call250, i64 %y814.05756
  %arrayidx912 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx910, i64 0, i64 %i.85757
  %green923 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx912, i64 0, i32 1
  %blue933 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx912, i64 0, i32 2
  %add1118 = add nuw nsw i64 %y814.05756, 2
  %arrayidx1336 = getelementptr inbounds %struct._ChannelStatistics, ptr %call246, i64 %y814.05756
  %arrayidx1338 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1336, i64 0, i64 %i.85757
  %green1349 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1338, i64 0, i32 1
  %blue1359 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1338, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !901, metadata !DIExpression()), !dbg !2276
  %index947 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx912, i64 0, i32 4
  %opacity962 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx912, i64 0, i32 3
  %index1373 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1338, i64 0, i32 4
  %opacity1388 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1338, i64 0, i32 3
  br label %for.body825, !dbg !2277

for.body825:                                      ; preds = %for.cond821.preheader, %for.inc1391
  %187 = phi i32 [ %.pre, %for.cond821.preheader ], [ %283, %for.inc1391 ], !dbg !2140
  %x820.05754 = phi i64 [ 0, %for.cond821.preheader ], [ %inc1392, %for.inc1391 ]
  call void @llvm.dbg.value(metadata i64 %x820.05754, metadata !901, metadata !DIExpression()), !dbg !2276
  %arrayidx826 = getelementptr inbounds ptr, ptr %call234, i64 %x820.05754, !dbg !2278
  %188 = load ptr, ptr %arrayidx826, align 8, !dbg !2278, !tbaa !1776
  %arrayidx827 = getelementptr inbounds %struct._ChannelStatistics, ptr %188, i64 %y814.05756, !dbg !2278
  %arrayidx829 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx827, i64 0, i64 %i.85757, !dbg !2278
  %189 = load double, ptr %arrayidx829, align 8, !dbg !2279, !tbaa !1944
  %190 = load double, ptr %arrayidx838, align 8, !dbg !2280, !tbaa !1126
  %191 = call double @llvm.fmuladd.f64(double %189, double %189, double %190), !dbg !2280
  store double %191, ptr %arrayidx838, align 8, !dbg !2280, !tbaa !1126
  %green843 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 1, !dbg !2281
  %192 = load double, ptr %green843, align 8, !dbg !2281, !tbaa !1961
  %193 = load double, ptr %arrayidx852, align 8, !dbg !2282, !tbaa !1126
  %194 = call double @llvm.fmuladd.f64(double %192, double %192, double %193), !dbg !2282
  store double %194, ptr %arrayidx852, align 8, !dbg !2282, !tbaa !1126
  %blue857 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 2, !dbg !2283
  %195 = load double, ptr %blue857, align 8, !dbg !2283, !tbaa !1979
  %196 = load double, ptr %arrayidx866, align 8, !dbg !2284, !tbaa !1126
  %197 = call double @llvm.fmuladd.f64(double %195, double %195, double %196), !dbg !2284
  store double %197, ptr %arrayidx866, align 8, !dbg !2284, !tbaa !1126
  %cmp868 = icmp eq i32 %187, 12, !dbg !2285
  br i1 %cmp868, label %if.then870, label %if.end885, !dbg !2286

if.then870:                                       ; preds = %for.body825
  %index875 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 4, !dbg !2287
  %198 = load double, ptr %index875, align 8, !dbg !2287, !tbaa !2002
  %199 = load double, ptr %arrayidx884, align 8, !dbg !2288, !tbaa !1126
  %200 = call double @llvm.fmuladd.f64(double %198, double %198, double %199), !dbg !2288
  store double %200, ptr %arrayidx884, align 8, !dbg !2288, !tbaa !1126
  br label %if.end885, !dbg !2289

if.end885:                                        ; preds = %if.then870, %for.body825
  %201 = load i32, ptr %matte177, align 8, !dbg !2290, !tbaa !1634
  %cmp887.not = icmp eq i32 %201, 0, !dbg !2292
  br i1 %cmp887.not, label %if.end904, label %if.then889, !dbg !2293

if.then889:                                       ; preds = %if.end885
  %opacity894 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 3, !dbg !2294
  %202 = load double, ptr %opacity894, align 8, !dbg !2294, !tbaa !2024
  %203 = load double, ptr %arrayidx903, align 8, !dbg !2295, !tbaa !1126
  %204 = call double @llvm.fmuladd.f64(double %202, double %202, double %203), !dbg !2295
  store double %204, ptr %arrayidx903, align 8, !dbg !2295, !tbaa !1126
  br label %if.end904, !dbg !2296

if.end904:                                        ; preds = %if.then889, %if.end885
  %205 = load double, ptr %arrayidx829, align 8, !dbg !2297, !tbaa !1944
  %206 = load double, ptr %arrayidx912, align 8, !dbg !2298, !tbaa !1944
  %add914 = fadd double %205, %206, !dbg !2298
  store double %add914, ptr %arrayidx912, align 8, !dbg !2298, !tbaa !1944
  %207 = load double, ptr %green843, align 8, !dbg !2299, !tbaa !1961
  %208 = load double, ptr %green923, align 8, !dbg !2300, !tbaa !1961
  %add924 = fadd double %207, %208, !dbg !2300
  store double %add924, ptr %green923, align 8, !dbg !2300, !tbaa !1961
  %209 = load double, ptr %blue857, align 8, !dbg !2301, !tbaa !1979
  %210 = load double, ptr %blue933, align 8, !dbg !2302, !tbaa !1979
  %add934 = fadd double %209, %210, !dbg !2302
  store double %add934, ptr %blue933, align 8, !dbg !2302, !tbaa !1979
  br i1 %cmp868, label %if.then938, label %if.end949, !dbg !2303

if.then938:                                       ; preds = %if.end904
  %index943 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 4, !dbg !2304
  %211 = load double, ptr %index943, align 8, !dbg !2304, !tbaa !2002
  %212 = load double, ptr %index947, align 8, !dbg !2306, !tbaa !2002
  %add948 = fadd double %211, %212, !dbg !2306
  store double %add948, ptr %index947, align 8, !dbg !2306, !tbaa !2002
  br label %if.end949, !dbg !2307

if.end949:                                        ; preds = %if.then938, %if.end904
  br i1 %cmp887.not, label %if.end964, label %if.then953, !dbg !2308

if.then953:                                       ; preds = %if.end949
  %opacity958 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 3, !dbg !2309
  %213 = load double, ptr %opacity958, align 8, !dbg !2309, !tbaa !2024
  %214 = load double, ptr %opacity962, align 8, !dbg !2311, !tbaa !2024
  %add963 = fadd double %213, %214, !dbg !2311
  store double %add963, ptr %opacity962, align 8, !dbg !2311, !tbaa !2024
  br label %if.end964, !dbg !2312

if.end964:                                        ; preds = %if.then953, %if.end949
  %mul965 = mul nuw nsw i64 %x820.05754, %y814.05756, !dbg !2313
  %conv966 = sitofp i64 %mul965 to double, !dbg !2314
  %215 = load double, ptr %arrayidx829, align 8, !dbg !2315, !tbaa !1944
  %216 = load double, ptr %arrayidx974, align 8, !dbg !2316, !tbaa !1944
  %217 = call double @llvm.fmuladd.f64(double %conv966, double %215, double %216), !dbg !2316
  store double %217, ptr %arrayidx974, align 8, !dbg !2316, !tbaa !1944
  %218 = load double, ptr %green843, align 8, !dbg !2317, !tbaa !1961
  %219 = load double, ptr %green986, align 8, !dbg !2318, !tbaa !1961
  %220 = call double @llvm.fmuladd.f64(double %conv966, double %218, double %219), !dbg !2318
  store double %220, ptr %green986, align 8, !dbg !2318, !tbaa !1961
  %221 = load double, ptr %blue857, align 8, !dbg !2319, !tbaa !1979
  %222 = load double, ptr %blue997, align 8, !dbg !2320, !tbaa !1979
  %223 = call double @llvm.fmuladd.f64(double %conv966, double %221, double %222), !dbg !2320
  store double %223, ptr %blue997, align 8, !dbg !2320, !tbaa !1979
  br i1 %cmp868, label %if.then1001, label %if.end1013, !dbg !2321

if.then1001:                                      ; preds = %if.end964
  %index1008 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 4, !dbg !2322
  %224 = load double, ptr %index1008, align 8, !dbg !2322, !tbaa !2002
  %225 = load double, ptr %index1012, align 8, !dbg !2324, !tbaa !2002
  %226 = call double @llvm.fmuladd.f64(double %conv966, double %224, double %225), !dbg !2324
  store double %226, ptr %index1012, align 8, !dbg !2324, !tbaa !2002
  br label %if.end1013, !dbg !2325

if.end1013:                                       ; preds = %if.then1001, %if.end964
  br i1 %cmp887.not, label %if.end1029, label %if.then1017, !dbg !2326

if.then1017:                                      ; preds = %if.end1013
  %opacity1024 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 3, !dbg !2327
  %227 = load double, ptr %opacity1024, align 8, !dbg !2327, !tbaa !2024
  %228 = load double, ptr %opacity1028, align 8, !dbg !2329, !tbaa !2024
  %229 = call double @llvm.fmuladd.f64(double %conv966, double %227, double %228), !dbg !2329
  store double %229, ptr %opacity1028, align 8, !dbg !2329, !tbaa !2024
  br label %if.end1029, !dbg !2330

if.end1029:                                       ; preds = %if.then1017, %if.end1013
  %230 = load double, ptr %arrayidx829, align 8, !dbg !2331, !tbaa !1944
  %sub1035 = sub nsw i64 %y814.05756, %x820.05754, !dbg !2332
  %mul1037 = mul nsw i64 %sub1035, %sub1035, !dbg !2333
  %add1038 = add nuw nsw i64 %mul1037, 1, !dbg !2334
  %conv1039 = sitofp i64 %add1038 to double, !dbg !2335
  %div = fdiv double %230, %conv1039, !dbg !2336
  %231 = load double, ptr %arrayidx1041, align 8, !dbg !2337, !tbaa !1126
  %add1042 = fadd double %231, %div, !dbg !2337
  store double %add1042, ptr %arrayidx1041, align 8, !dbg !2337, !tbaa !1126
  %232 = load double, ptr %green843, align 8, !dbg !2338, !tbaa !1961
  %div1053 = fdiv double %232, %conv1039, !dbg !2339
  %233 = load double, ptr %arrayidx1056, align 8, !dbg !2340, !tbaa !1126
  %add1057 = fadd double %233, %div1053, !dbg !2340
  store double %add1057, ptr %arrayidx1056, align 8, !dbg !2340, !tbaa !1126
  %234 = load double, ptr %blue857, align 8, !dbg !2341, !tbaa !1979
  %div1068 = fdiv double %234, %conv1039, !dbg !2342
  %235 = load double, ptr %arrayidx1071, align 8, !dbg !2343, !tbaa !1126
  %add1072 = fadd double %235, %div1068, !dbg !2343
  store double %add1072, ptr %arrayidx1071, align 8, !dbg !2343, !tbaa !1126
  br i1 %cmp868, label %if.then1076, label %if.end1092, !dbg !2344

if.then1076:                                      ; preds = %if.end1029
  %index1081 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 4, !dbg !2345
  %236 = load double, ptr %index1081, align 8, !dbg !2345, !tbaa !2002
  %div1087 = fdiv double %236, %conv1039, !dbg !2347
  %237 = load double, ptr %arrayidx1090, align 8, !dbg !2348, !tbaa !1126
  %add1091 = fadd double %237, %div1087, !dbg !2348
  store double %add1091, ptr %arrayidx1090, align 8, !dbg !2348, !tbaa !1126
  br label %if.end1092, !dbg !2349

if.end1092:                                       ; preds = %if.then1076, %if.end1029
  br i1 %cmp887.not, label %if.end1112, label %if.then1096, !dbg !2350

if.then1096:                                      ; preds = %if.end1092
  %opacity1101 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 3, !dbg !2351
  %238 = load double, ptr %opacity1101, align 8, !dbg !2351, !tbaa !2024
  %div1107 = fdiv double %238, %conv1039, !dbg !2353
  %239 = load double, ptr %arrayidx1110, align 8, !dbg !2354, !tbaa !1126
  %add1111 = fadd double %239, %div1107, !dbg !2354
  store double %add1111, ptr %arrayidx1110, align 8, !dbg !2354, !tbaa !1126
  br label %if.end1112, !dbg !2355

if.end1112:                                       ; preds = %if.then1096, %if.end1092
  %240 = load double, ptr %arrayidx829, align 8, !dbg !2356, !tbaa !1944
  %add1119 = add nuw nsw i64 %add1118, %x820.05754, !dbg !2357
  %arrayidx1120 = getelementptr inbounds %struct._ChannelStatistics, ptr %call242, i64 %add1119, !dbg !2358
  %arrayidx1122 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1120, i64 0, i64 %i.85757, !dbg !2358
  %241 = load double, ptr %arrayidx1122, align 8, !dbg !2359, !tbaa !1944
  %add1124 = fadd double %240, %241, !dbg !2359
  store double %add1124, ptr %arrayidx1122, align 8, !dbg !2359, !tbaa !1944
  %242 = load double, ptr %green843, align 8, !dbg !2360, !tbaa !1961
  %green1135 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1122, i64 0, i32 1, !dbg !2361
  %243 = load double, ptr %green1135, align 8, !dbg !2362, !tbaa !1961
  %add1136 = fadd double %242, %243, !dbg !2362
  store double %add1136, ptr %green1135, align 8, !dbg !2362, !tbaa !1961
  %244 = load double, ptr %blue857, align 8, !dbg !2363, !tbaa !1979
  %blue1147 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1122, i64 0, i32 2, !dbg !2364
  %245 = load double, ptr %blue1147, align 8, !dbg !2365, !tbaa !1979
  %add1148 = fadd double %244, %245, !dbg !2365
  store double %add1148, ptr %blue1147, align 8, !dbg !2365, !tbaa !1979
  br i1 %cmp868, label %if.then1152, label %if.end1165, !dbg !2366

if.then1152:                                      ; preds = %if.end1112
  %index1157 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 4, !dbg !2367
  %246 = load double, ptr %index1157, align 8, !dbg !2367, !tbaa !2002
  %index1163 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1122, i64 0, i32 4, !dbg !2369
  %247 = load double, ptr %index1163, align 8, !dbg !2370, !tbaa !2002
  %add1164 = fadd double %246, %247, !dbg !2370
  store double %add1164, ptr %index1163, align 8, !dbg !2370, !tbaa !2002
  br label %if.end1165, !dbg !2371

if.end1165:                                       ; preds = %if.then1152, %if.end1112
  br i1 %cmp887.not, label %if.end1182, label %if.then1169, !dbg !2372

if.then1169:                                      ; preds = %if.end1165
  %opacity1174 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx829, i64 0, i32 3, !dbg !2373
  %248 = load double, ptr %opacity1174, align 8, !dbg !2373, !tbaa !2024
  %opacity1180 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1122, i64 0, i32 3, !dbg !2375
  %249 = load double, ptr %opacity1180, align 8, !dbg !2376, !tbaa !2024
  %add1181 = fadd double %248, %249, !dbg !2376
  store double %add1181, ptr %opacity1180, align 8, !dbg !2376, !tbaa !2024
  br label %if.end1182, !dbg !2377

if.end1182:                                       ; preds = %if.then1169, %if.end1165
  %250 = load double, ptr %arrayidx829, align 8, !dbg !2378, !tbaa !1944
  call void @llvm.dbg.value(metadata double %250, metadata !2175, metadata !DIExpression()) #13, !dbg !2379
  %251 = call double @llvm.fabs.f64(double %250) #13, !dbg !2381
  %cmp.i = fcmp olt double %251, 0x3DA5FD7FE1796495, !dbg !2382
  br i1 %cmp.i, label %MagickLog10.exit, label %if.end.i5482, !dbg !2383

if.end.i5482:                                     ; preds = %if.end1182
  %call1.i = call double @log10(double noundef %251) #13, !dbg !2384
  %.pre5850 = load ptr, ptr %arrayidx826, align 8, !dbg !2385, !tbaa !1776
  br label %MagickLog10.exit, !dbg !2386

MagickLog10.exit:                                 ; preds = %if.end1182, %if.end.i5482
  %252 = phi ptr [ %.pre5850, %if.end.i5482 ], [ %188, %if.end1182 ], !dbg !2385
  %retval.0.i5483 = phi double [ %call1.i, %if.end.i5482 ], [ -1.100000e+01, %if.end1182 ], !dbg !2379
  %253 = load double, ptr %arrayidx1196, align 8, !dbg !2387, !tbaa !1126
  %neg = fneg double %250, !dbg !2387
  %254 = call double @llvm.fmuladd.f64(double %neg, double %retval.0.i5483, double %253), !dbg !2387
  store double %254, ptr %arrayidx1196, align 8, !dbg !2387, !tbaa !1126
  %arrayidx1198 = getelementptr inbounds %struct._ChannelStatistics, ptr %252, i64 %y814.05756, !dbg !2385
  %arrayidx1200 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1198, i64 0, i64 %i.85757, !dbg !2385
  %green1201 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1200, i64 0, i32 1, !dbg !2388
  %255 = load double, ptr %green1201, align 8, !dbg !2388, !tbaa !1961
  call void @llvm.dbg.value(metadata double %255, metadata !2175, metadata !DIExpression()) #13, !dbg !2389
  %256 = call double @llvm.fabs.f64(double %255) #13, !dbg !2391
  %cmp.i5484 = fcmp olt double %256, 0x3DA5FD7FE1796495, !dbg !2392
  br i1 %cmp.i5484, label %MagickLog10.exit5488, label %if.end.i5486, !dbg !2393

if.end.i5486:                                     ; preds = %MagickLog10.exit
  %call1.i5485 = call double @log10(double noundef %256) #13, !dbg !2394
  %.pre5851 = load ptr, ptr %arrayidx826, align 8, !dbg !2395, !tbaa !1776
  br label %MagickLog10.exit5488, !dbg !2396

MagickLog10.exit5488:                             ; preds = %MagickLog10.exit, %if.end.i5486
  %257 = phi ptr [ %.pre5851, %if.end.i5486 ], [ %252, %MagickLog10.exit ], !dbg !2395
  %retval.0.i5487 = phi double [ %call1.i5485, %if.end.i5486 ], [ -1.100000e+01, %MagickLog10.exit ], !dbg !2389
  %258 = load double, ptr %arrayidx1211, align 8, !dbg !2397, !tbaa !1126
  %neg1212 = fneg double %255, !dbg !2397
  %259 = call double @llvm.fmuladd.f64(double %neg1212, double %retval.0.i5487, double %258), !dbg !2397
  store double %259, ptr %arrayidx1211, align 8, !dbg !2397, !tbaa !1126
  %arrayidx1214 = getelementptr inbounds %struct._ChannelStatistics, ptr %257, i64 %y814.05756, !dbg !2395
  %arrayidx1216 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1214, i64 0, i64 %i.85757, !dbg !2395
  %blue1217 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1216, i64 0, i32 2, !dbg !2398
  %260 = load double, ptr %blue1217, align 8, !dbg !2398, !tbaa !1979
  call void @llvm.dbg.value(metadata double %260, metadata !2175, metadata !DIExpression()) #13, !dbg !2399
  %261 = call double @llvm.fabs.f64(double %260) #13, !dbg !2401
  %cmp.i5489 = fcmp olt double %261, 0x3DA5FD7FE1796495, !dbg !2402
  br i1 %cmp.i5489, label %MagickLog10.exit5493, label %if.end.i5491, !dbg !2403

if.end.i5491:                                     ; preds = %MagickLog10.exit5488
  %call1.i5490 = call double @log10(double noundef %261) #13, !dbg !2404
  br label %MagickLog10.exit5493, !dbg !2405

MagickLog10.exit5493:                             ; preds = %MagickLog10.exit5488, %if.end.i5491
  %retval.0.i5492 = phi double [ %call1.i5490, %if.end.i5491 ], [ -1.100000e+01, %MagickLog10.exit5488 ], !dbg !2399
  %262 = load double, ptr %arrayidx1227, align 8, !dbg !2406, !tbaa !1126
  %neg1228 = fneg double %260, !dbg !2406
  %263 = call double @llvm.fmuladd.f64(double %neg1228, double %retval.0.i5492, double %262), !dbg !2406
  store double %263, ptr %arrayidx1227, align 8, !dbg !2406, !tbaa !1126
  %264 = load i32, ptr %colorspace159, align 4, !dbg !2407, !tbaa !1633
  %cmp1230 = icmp eq i32 %264, 12, !dbg !2409
  br i1 %cmp1230, label %if.then1232, label %if.end1249, !dbg !2410

if.then1232:                                      ; preds = %MagickLog10.exit5493
  %265 = load ptr, ptr %arrayidx826, align 8, !dbg !2411, !tbaa !1776
  %arrayidx1234 = getelementptr inbounds %struct._ChannelStatistics, ptr %265, i64 %y814.05756, !dbg !2411
  %arrayidx1236 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1234, i64 0, i64 %i.85757, !dbg !2411
  %index1237 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1236, i64 0, i32 4, !dbg !2412
  %266 = load double, ptr %index1237, align 8, !dbg !2412, !tbaa !2002
  call void @llvm.dbg.value(metadata double %266, metadata !2175, metadata !DIExpression()) #13, !dbg !2413
  %267 = call double @llvm.fabs.f64(double %266) #13, !dbg !2415
  %cmp.i5494 = fcmp olt double %267, 0x3DA5FD7FE1796495, !dbg !2416
  br i1 %cmp.i5494, label %MagickLog10.exit5498, label %if.end.i5496, !dbg !2417

if.end.i5496:                                     ; preds = %if.then1232
  %call1.i5495 = call double @log10(double noundef %267) #13, !dbg !2418
  br label %MagickLog10.exit5498, !dbg !2419

MagickLog10.exit5498:                             ; preds = %if.then1232, %if.end.i5496
  %retval.0.i5497 = phi double [ %call1.i5495, %if.end.i5496 ], [ -1.100000e+01, %if.then1232 ], !dbg !2413
  %268 = load double, ptr %arrayidx1247, align 8, !dbg !2420, !tbaa !1126
  %neg1248 = fneg double %266, !dbg !2420
  %269 = call double @llvm.fmuladd.f64(double %neg1248, double %retval.0.i5497, double %268), !dbg !2420
  store double %269, ptr %arrayidx1247, align 8, !dbg !2420, !tbaa !1126
  br label %if.end1249, !dbg !2421

if.end1249:                                       ; preds = %MagickLog10.exit5498, %MagickLog10.exit5493
  %270 = load i32, ptr %matte177, align 8, !dbg !2422, !tbaa !1634
  %cmp1251.not = icmp eq i32 %270, 0, !dbg !2424
  br i1 %cmp1251.not, label %if.end1270, label %if.then1253, !dbg !2425

if.then1253:                                      ; preds = %if.end1249
  %271 = load ptr, ptr %arrayidx826, align 8, !dbg !2426, !tbaa !1776
  %arrayidx1255 = getelementptr inbounds %struct._ChannelStatistics, ptr %271, i64 %y814.05756, !dbg !2426
  %arrayidx1257 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1255, i64 0, i64 %i.85757, !dbg !2426
  %opacity1258 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1257, i64 0, i32 3, !dbg !2427
  %272 = load double, ptr %opacity1258, align 8, !dbg !2427, !tbaa !2024
  call void @llvm.dbg.value(metadata double %272, metadata !2175, metadata !DIExpression()) #13, !dbg !2428
  %273 = call double @llvm.fabs.f64(double %272) #13, !dbg !2430
  %cmp.i5499 = fcmp olt double %273, 0x3DA5FD7FE1796495, !dbg !2431
  br i1 %cmp.i5499, label %MagickLog10.exit5503, label %if.end.i5501, !dbg !2432

if.end.i5501:                                     ; preds = %if.then1253
  %call1.i5500 = call double @log10(double noundef %273) #13, !dbg !2433
  br label %MagickLog10.exit5503, !dbg !2434

MagickLog10.exit5503:                             ; preds = %if.then1253, %if.end.i5501
  %retval.0.i5502 = phi double [ %call1.i5500, %if.end.i5501 ], [ -1.100000e+01, %if.then1253 ], !dbg !2428
  %274 = load double, ptr %arrayidx1268, align 8, !dbg !2435, !tbaa !1126
  %neg1269 = fneg double %272, !dbg !2435
  %275 = call double @llvm.fmuladd.f64(double %neg1269, double %retval.0.i5502, double %274), !dbg !2435
  store double %275, ptr %arrayidx1268, align 8, !dbg !2435, !tbaa !1126
  br label %if.end1270, !dbg !2436

if.end1270:                                       ; preds = %MagickLog10.exit5503, %if.end1249
  %276 = load ptr, ptr %arrayidx826, align 8, !dbg !2437, !tbaa !1776
  %arrayidx1272 = getelementptr inbounds %struct._ChannelStatistics, ptr %276, i64 %y814.05756, !dbg !2437
  %arrayidx1274 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1272, i64 0, i64 %i.85757, !dbg !2437
  %277 = load double, ptr %arrayidx1274, align 8, !dbg !2438, !tbaa !1944
  %arrayidx1276 = getelementptr inbounds %struct._ChannelStatistics, ptr %call238, i64 %x820.05754, !dbg !2439
  %arrayidx1278 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1276, i64 0, i64 %i.85757, !dbg !2439
  %278 = load double, ptr %arrayidx1278, align 8, !dbg !2440, !tbaa !1944
  %add1280 = fadd double %277, %278, !dbg !2440
  store double %add1280, ptr %arrayidx1278, align 8, !dbg !2440, !tbaa !1944
  %green1285 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 1, !dbg !2441
  %279 = load double, ptr %green1285, align 8, !dbg !2441, !tbaa !1961
  %green1289 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1278, i64 0, i32 1, !dbg !2442
  %280 = load double, ptr %green1289, align 8, !dbg !2443, !tbaa !1961
  %add1290 = fadd double %279, %280, !dbg !2443
  store double %add1290, ptr %green1289, align 8, !dbg !2443, !tbaa !1961
  %blue1295 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 2, !dbg !2444
  %281 = load double, ptr %blue1295, align 8, !dbg !2444, !tbaa !1979
  %blue1299 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1278, i64 0, i32 2, !dbg !2445
  %282 = load double, ptr %blue1299, align 8, !dbg !2446, !tbaa !1979
  %add1300 = fadd double %281, %282, !dbg !2446
  store double %add1300, ptr %blue1299, align 8, !dbg !2446, !tbaa !1979
  %283 = load i32, ptr %colorspace159, align 4, !dbg !2447, !tbaa !1633
  %cmp1302 = icmp eq i32 %283, 12, !dbg !2449
  br i1 %cmp1302, label %if.then1304, label %if.end1315, !dbg !2450

if.then1304:                                      ; preds = %if.end1270
  %index1309 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 4, !dbg !2451
  %284 = load double, ptr %index1309, align 8, !dbg !2451, !tbaa !2002
  %index1313 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1278, i64 0, i32 4, !dbg !2452
  %285 = load double, ptr %index1313, align 8, !dbg !2453, !tbaa !2002
  %add1314 = fadd double %284, %285, !dbg !2453
  store double %add1314, ptr %index1313, align 8, !dbg !2453, !tbaa !2002
  br label %if.end1315, !dbg !2454

if.end1315:                                       ; preds = %if.then1304, %if.end1270
  %286 = load i32, ptr %matte177, align 8, !dbg !2455, !tbaa !1634
  %cmp1317.not = icmp eq i32 %286, 0, !dbg !2457
  br i1 %cmp1317.not, label %if.end1330, label %if.then1319, !dbg !2458

if.then1319:                                      ; preds = %if.end1315
  %opacity1324 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 3, !dbg !2459
  %287 = load double, ptr %opacity1324, align 8, !dbg !2459, !tbaa !2024
  %opacity1328 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1278, i64 0, i32 3, !dbg !2460
  %288 = load double, ptr %opacity1328, align 8, !dbg !2461, !tbaa !2024
  %add1329 = fadd double %287, %288, !dbg !2461
  store double %add1329, ptr %opacity1328, align 8, !dbg !2461, !tbaa !2024
  br label %if.end1330, !dbg !2462

if.end1330:                                       ; preds = %if.then1319, %if.end1315
  %289 = load double, ptr %arrayidx1274, align 8, !dbg !2463, !tbaa !1944
  %290 = load double, ptr %arrayidx1338, align 8, !dbg !2464, !tbaa !1944
  %add1340 = fadd double %289, %290, !dbg !2464
  store double %add1340, ptr %arrayidx1338, align 8, !dbg !2464, !tbaa !1944
  %291 = load double, ptr %green1285, align 8, !dbg !2465, !tbaa !1961
  %292 = load double, ptr %green1349, align 8, !dbg !2466, !tbaa !1961
  %add1350 = fadd double %291, %292, !dbg !2466
  store double %add1350, ptr %green1349, align 8, !dbg !2466, !tbaa !1961
  %293 = load double, ptr %blue1295, align 8, !dbg !2467, !tbaa !1979
  %294 = load double, ptr %blue1359, align 8, !dbg !2468, !tbaa !1979
  %add1360 = fadd double %293, %294, !dbg !2468
  store double %add1360, ptr %blue1359, align 8, !dbg !2468, !tbaa !1979
  br i1 %cmp1302, label %if.then1364, label %if.end1375, !dbg !2469

if.then1364:                                      ; preds = %if.end1330
  %index1369 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 4, !dbg !2470
  %295 = load double, ptr %index1369, align 8, !dbg !2470, !tbaa !2002
  %296 = load double, ptr %index1373, align 8, !dbg !2472, !tbaa !2002
  %add1374 = fadd double %295, %296, !dbg !2472
  store double %add1374, ptr %index1373, align 8, !dbg !2472, !tbaa !2002
  br label %if.end1375, !dbg !2473

if.end1375:                                       ; preds = %if.then1364, %if.end1330
  br i1 %cmp1317.not, label %for.inc1391, label %if.then1379, !dbg !2474

if.then1379:                                      ; preds = %if.end1375
  %opacity1384 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx1274, i64 0, i32 3, !dbg !2475
  %297 = load double, ptr %opacity1384, align 8, !dbg !2475, !tbaa !2024
  %298 = load double, ptr %opacity1388, align 8, !dbg !2477, !tbaa !2024
  %add1389 = fadd double %297, %298, !dbg !2477
  store double %add1389, ptr %opacity1388, align 8, !dbg !2477, !tbaa !2024
  br label %for.inc1391, !dbg !2478

for.inc1391:                                      ; preds = %if.end1375, %if.then1379
  %inc1392 = add nuw nsw i64 %x820.05754, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %inc1392, metadata !901, metadata !DIExpression()), !dbg !2276
  %exitcond5831.not = icmp eq i64 %inc1392, %conv233, !dbg !2480
  br i1 %exitcond5831.not, label %for.cond821.for.end1393_crit_edge, label %for.body825, !dbg !2277, !llvm.loop !2481

for.cond821.for.end1393_crit_edge:                ; preds = %for.inc1391
  %conv1394 = sitofp i64 %y814.05756 to double, !dbg !2483
  %299 = load double, ptr %arrayidx912, align 8, !dbg !2484, !tbaa !1944
  %300 = load double, ptr %arrayidx1401, align 8, !dbg !2485, !tbaa !1944
  %301 = call double @llvm.fmuladd.f64(double %conv1394, double %299, double %300), !dbg !2485
  store double %301, ptr %arrayidx1401, align 8, !dbg !2485, !tbaa !1944
  %mul1403 = mul nsw i64 %y814.05756, %y814.05756, !dbg !2486
  %conv1404 = sitofp i64 %mul1403 to double, !dbg !2487
  %302 = load double, ptr %arrayidx912, align 8, !dbg !2488, !tbaa !1944
  %303 = load double, ptr %arrayidx1411, align 8, !dbg !2489, !tbaa !1944
  %304 = call double @llvm.fmuladd.f64(double %conv1404, double %302, double %303), !dbg !2489
  store double %304, ptr %arrayidx1411, align 8, !dbg !2489, !tbaa !1944
  %305 = load double, ptr %green923, align 8, !dbg !2490, !tbaa !1961
  %306 = load double, ptr %green1421, align 8, !dbg !2491, !tbaa !1961
  %307 = call double @llvm.fmuladd.f64(double %conv1394, double %305, double %306), !dbg !2491
  store double %307, ptr %green1421, align 8, !dbg !2491, !tbaa !1961
  %308 = load double, ptr %green923, align 8, !dbg !2492, !tbaa !1961
  %309 = load double, ptr %green1431, align 8, !dbg !2493, !tbaa !1961
  %310 = call double @llvm.fmuladd.f64(double %conv1404, double %308, double %309), !dbg !2493
  store double %310, ptr %green1431, align 8, !dbg !2493, !tbaa !1961
  %311 = load double, ptr %blue933, align 8, !dbg !2494, !tbaa !1979
  %312 = load double, ptr %blue1440, align 8, !dbg !2495, !tbaa !1979
  %313 = call double @llvm.fmuladd.f64(double %conv1394, double %311, double %312), !dbg !2495
  store double %313, ptr %blue1440, align 8, !dbg !2495, !tbaa !1979
  %314 = load double, ptr %blue933, align 8, !dbg !2496, !tbaa !1979
  %315 = load double, ptr %blue1450, align 8, !dbg !2497, !tbaa !1979
  %316 = call double @llvm.fmuladd.f64(double %conv1404, double %314, double %315), !dbg !2497
  store double %316, ptr %blue1450, align 8, !dbg !2497, !tbaa !1979
  br i1 %cmp1302, label %if.then1454, label %if.end1474, !dbg !2498

if.then1454:                                      ; preds = %for.cond821.for.end1393_crit_edge
  %317 = load double, ptr %index947, align 8, !dbg !2499, !tbaa !2002
  %318 = load double, ptr %index1463, align 8, !dbg !2502, !tbaa !2002
  %319 = call double @llvm.fmuladd.f64(double %conv1394, double %317, double %318), !dbg !2502
  store double %319, ptr %index1463, align 8, !dbg !2502, !tbaa !2002
  %320 = load double, ptr %index947, align 8, !dbg !2503, !tbaa !2002
  %321 = load double, ptr %index1473, align 8, !dbg !2504, !tbaa !2002
  %322 = call double @llvm.fmuladd.f64(double %conv1404, double %320, double %321), !dbg !2504
  store double %322, ptr %index1473, align 8, !dbg !2504, !tbaa !2002
  br label %if.end1474, !dbg !2505

if.end1474:                                       ; preds = %if.then1454, %for.cond821.for.end1393_crit_edge
  br i1 %cmp1317.not, label %if.end1498, label %if.then1478, !dbg !2506

if.then1478:                                      ; preds = %if.end1474
  %323 = load double, ptr %opacity962, align 8, !dbg !2507, !tbaa !2024
  %324 = load double, ptr %opacity1487, align 8, !dbg !2510, !tbaa !2024
  %325 = call double @llvm.fmuladd.f64(double %conv1394, double %323, double %324), !dbg !2510
  store double %325, ptr %opacity1487, align 8, !dbg !2510, !tbaa !2024
  %326 = load double, ptr %opacity962, align 8, !dbg !2511, !tbaa !2024
  %327 = load double, ptr %opacity1497, align 8, !dbg !2512, !tbaa !2024
  %328 = call double @llvm.fmuladd.f64(double %conv1404, double %326, double %327), !dbg !2512
  store double %328, ptr %opacity1497, align 8, !dbg !2512, !tbaa !2024
  br label %if.end1498, !dbg !2513

if.end1498:                                       ; preds = %if.then1478, %if.end1474
  %inc1500 = add nuw nsw i64 %y814.05756, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %inc1500, metadata !897, metadata !DIExpression()), !dbg !2136
  %exitcond5832.not = icmp eq i64 %inc1500, %conv233, !dbg !2515
  br i1 %exitcond5832.not, label %for.end1501, label %for.cond821.preheader, !dbg !2137, !llvm.loop !2516

for.end1501:                                      ; preds = %if.end1498, %for.cond815.preheader.for.end1501_crit_edge
  %329 = phi double [ %.pre5853, %for.cond815.preheader.for.end1501_crit_edge ], [ %304, %if.end1498 ], !dbg !2139
  %330 = phi double [ %.pre5852, %for.cond815.preheader.for.end1501_crit_edge ], [ %301, %if.end1498 ], !dbg !2138
  %arrayidx1503 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, !dbg !2518
  %331 = load double, ptr %arrayidx1503, align 8, !dbg !2519, !tbaa !1944
  %arrayidx1506 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, !dbg !2520
  %neg1512 = fneg double %330, !dbg !2521
  %332 = call double @llvm.fmuladd.f64(double %neg1512, double %330, double %331), !dbg !2521
  %arrayidx1514 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, !dbg !2522
  %333 = call double @llvm.fmuladd.f64(double %neg1512, double %330, double %329), !dbg !2523
  %call1524 = call double @sqrt(double noundef %333) #13, !dbg !2524
  %334 = load double, ptr %arrayidx1514, align 8, !dbg !2525, !tbaa !1944
  %335 = load double, ptr %arrayidx1506, align 8, !dbg !2526, !tbaa !1944
  %neg1535 = fneg double %335, !dbg !2527
  %336 = call double @llvm.fmuladd.f64(double %neg1535, double %335, double %334), !dbg !2527
  %call1536 = call double @sqrt(double noundef %336) #13, !dbg !2528
  %mul1537 = fmul double %call1524, %call1536, !dbg !2529
  %div1538 = fdiv double %332, %mul1537, !dbg !2530
  %arrayidx1541 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 2, i64 %i.85757, !dbg !2531
  store double %div1538, ptr %arrayidx1541, align 8, !dbg !2532, !tbaa !1126
  %green1544 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 1, !dbg !2533
  %337 = load double, ptr %green1544, align 8, !dbg !2533, !tbaa !1961
  %green1547 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 1, !dbg !2534
  %338 = load double, ptr %green1547, align 8, !dbg !2534, !tbaa !1961
  %neg1552 = fneg double %338, !dbg !2535
  %339 = call double @llvm.fmuladd.f64(double %neg1552, double %338, double %337), !dbg !2535
  %green1555 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 1, !dbg !2536
  %340 = load double, ptr %green1555, align 8, !dbg !2536, !tbaa !1961
  %341 = call double @llvm.fmuladd.f64(double %neg1552, double %338, double %340), !dbg !2537
  %call1564 = call double @sqrt(double noundef %341) #13, !dbg !2538
  %342 = load double, ptr %green1555, align 8, !dbg !2539, !tbaa !1961
  %343 = load double, ptr %green1547, align 8, !dbg !2540, !tbaa !1961
  %neg1575 = fneg double %343, !dbg !2541
  %344 = call double @llvm.fmuladd.f64(double %neg1575, double %343, double %342), !dbg !2541
  %call1576 = call double @sqrt(double noundef %344) #13, !dbg !2542
  %mul1577 = fmul double %call1564, %call1576, !dbg !2543
  %div1578 = fdiv double %339, %mul1577, !dbg !2544
  %arrayidx1581 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 2, i64 %i.85757, !dbg !2545
  store double %div1578, ptr %arrayidx1581, align 8, !dbg !2546, !tbaa !1126
  %blue1584 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 2, !dbg !2547
  %345 = load double, ptr %blue1584, align 8, !dbg !2547, !tbaa !1979
  %blue1587 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 2, !dbg !2548
  %346 = load double, ptr %blue1587, align 8, !dbg !2548, !tbaa !1979
  %neg1592 = fneg double %346, !dbg !2549
  %347 = call double @llvm.fmuladd.f64(double %neg1592, double %346, double %345), !dbg !2549
  %blue1595 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 2, !dbg !2550
  %348 = load double, ptr %blue1595, align 8, !dbg !2550, !tbaa !1979
  %349 = call double @llvm.fmuladd.f64(double %neg1592, double %346, double %348), !dbg !2551
  %call1604 = call double @sqrt(double noundef %349) #13, !dbg !2552
  %350 = load double, ptr %blue1595, align 8, !dbg !2553, !tbaa !1979
  %351 = load double, ptr %blue1587, align 8, !dbg !2554, !tbaa !1979
  %neg1615 = fneg double %351, !dbg !2555
  %352 = call double @llvm.fmuladd.f64(double %neg1615, double %351, double %350), !dbg !2555
  %call1616 = call double @sqrt(double noundef %352) #13, !dbg !2556
  %mul1617 = fmul double %call1604, %call1616, !dbg !2557
  %div1618 = fdiv double %347, %mul1617, !dbg !2558
  %arrayidx1621 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 2, i64 %i.85757, !dbg !2559
  store double %div1618, ptr %arrayidx1621, align 8, !dbg !2560, !tbaa !1126
  %353 = load i32, ptr %colorspace159, align 4, !dbg !2561, !tbaa !1633
  %cmp1623 = icmp eq i32 %353, 12, !dbg !2563
  br i1 %cmp1623, label %if.then1625, label %if.end1666, !dbg !2564

if.then1625:                                      ; preds = %for.end1501
  %index1628 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 4, !dbg !2565
  %354 = load double, ptr %index1628, align 8, !dbg !2565, !tbaa !2002
  %index1631 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 4, !dbg !2566
  %355 = load double, ptr %index1631, align 8, !dbg !2566, !tbaa !2002
  %neg1636 = fneg double %355, !dbg !2567
  %356 = call double @llvm.fmuladd.f64(double %neg1636, double %355, double %354), !dbg !2567
  %index1639 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 4, !dbg !2568
  %357 = load double, ptr %index1639, align 8, !dbg !2568, !tbaa !2002
  %358 = call double @llvm.fmuladd.f64(double %neg1636, double %355, double %357), !dbg !2569
  %call1648 = call double @sqrt(double noundef %358) #13, !dbg !2570
  %359 = load double, ptr %index1639, align 8, !dbg !2571, !tbaa !2002
  %360 = load double, ptr %index1631, align 8, !dbg !2572, !tbaa !2002
  %neg1659 = fneg double %360, !dbg !2573
  %361 = call double @llvm.fmuladd.f64(double %neg1659, double %360, double %359), !dbg !2573
  %call1660 = call double @sqrt(double noundef %361) #13, !dbg !2574
  %mul1661 = fmul double %call1648, %call1660, !dbg !2575
  %div1662 = fdiv double %356, %mul1661, !dbg !2576
  %arrayidx1665 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 2, i64 %i.85757, !dbg !2577
  store double %div1662, ptr %arrayidx1665, align 8, !dbg !2578, !tbaa !1126
  br label %if.end1666, !dbg !2577

if.end1666:                                       ; preds = %if.then1625, %for.end1501
  %362 = load i32, ptr %matte177, align 8, !dbg !2579, !tbaa !1634
  %cmp1668.not = icmp eq i32 %362, 0, !dbg !2581
  br i1 %cmp1668.not, label %if.end1711, label %if.then1670, !dbg !2582

if.then1670:                                      ; preds = %if.end1666
  %opacity1673 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %correlation, i64 0, i64 %i.85757, i32 3, !dbg !2583
  %363 = load double, ptr %opacity1673, align 8, !dbg !2583, !tbaa !2024
  %opacity1676 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.85757, i32 3, !dbg !2584
  %364 = load double, ptr %opacity1676, align 8, !dbg !2584, !tbaa !2024
  %neg1681 = fneg double %364, !dbg !2585
  %365 = call double @llvm.fmuladd.f64(double %neg1681, double %364, double %363), !dbg !2585
  %opacity1684 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.85757, i32 3, !dbg !2586
  %366 = load double, ptr %opacity1684, align 8, !dbg !2586, !tbaa !2024
  %367 = call double @llvm.fmuladd.f64(double %neg1681, double %364, double %366), !dbg !2587
  %call1693 = call double @sqrt(double noundef %367) #13, !dbg !2588
  %368 = load double, ptr %opacity1684, align 8, !dbg !2589, !tbaa !2024
  %369 = load double, ptr %opacity1676, align 8, !dbg !2590, !tbaa !2024
  %neg1704 = fneg double %369, !dbg !2591
  %370 = call double @llvm.fmuladd.f64(double %neg1704, double %369, double %368), !dbg !2591
  %call1705 = call double @sqrt(double noundef %370) #13, !dbg !2592
  %mul1706 = fmul double %call1693, %call1705, !dbg !2593
  %div1707 = fdiv double %365, %mul1706, !dbg !2594
  %arrayidx1710 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 2, i64 %i.85757, !dbg !2595
  store double %div1707, ptr %arrayidx1710, align 8, !dbg !2596, !tbaa !1126
  br label %if.end1711, !dbg !2595

if.end1711:                                       ; preds = %if.then1670, %if.end1666
  %inc1713 = add nuw nsw i64 %i.85757, 1, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %inc1713, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5833.not = icmp eq i64 %inc1713, 4, !dbg !2598
  br i1 %exitcond5833.not, label %for.cond1715.preheader, label %for.cond815.preheader, !dbg !2062, !llvm.loop !2599

for.cond1974.preheader:                           ; preds = %for.cond1974.preheader.preheader, %if.end2549
  %i.105769 = phi i64 [ %inc2551, %if.end2549 ], [ 0, %for.cond1974.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.105769, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !909, metadata !DIExpression()), !dbg !2601
  br i1 %cmp3605713.not, label %for.end2510, label %for.cond1980.preheader.lr.ph, !dbg !2602

for.cond1980.preheader.lr.ph:                     ; preds = %for.cond1974.preheader
  %arrayidx1987 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.105769
  %arrayidx2005 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769
  %green2010 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.105769, i32 1
  %green2028 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 1
  %blue2032 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.105769, i32 2
  %blue2050 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 2
  %arrayidx2188 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.105769
  %green2205 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.105769, i32 1
  %blue2221 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.105769, i32 2
  %arrayidx2282 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.105769
  %green2303 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.105769, i32 1
  %blue2323 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.105769, i32 2
  %arrayidx2396 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.105769
  %green2421 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.105769, i32 1
  %blue2445 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.105769, i32 2
  %index2058 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.105769, i32 4
  %index2076 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 4
  %opacity2085 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %mean, i64 0, i64 %i.105769, i32 3
  %opacity2103 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 3
  %index2241 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.105769, i32 4
  %opacity2262 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.105769, i32 3
  %index2347 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.105769, i32 4
  %opacity2372 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.105769, i32 3
  %index2473 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.105769, i32 4
  %opacity2502 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.105769, i32 3
  br label %for.cond1980.preheader, !dbg !2602

for.cond1980.preheader:                           ; preds = %for.cond1980.preheader.lr.ph, %for.cond1980.for.end2507_crit_edge
  %y1973.05768 = phi i64 [ 0, %for.cond1980.preheader.lr.ph ], [ %inc2509, %for.cond1980.for.end2507_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %y1973.05768, metadata !909, metadata !DIExpression()), !dbg !2601
  %conv1985 = sitofp i64 %y1973.05768 to double
  %arrayidx2274 = getelementptr inbounds %struct._ChannelStatistics, ptr %call246, i64 %y1973.05768
  %arrayidx2276 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2274, i64 0, i64 %i.105769
  %green2297 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2276, i64 0, i32 1
  %blue2317 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2276, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !913, metadata !DIExpression()), !dbg !2603
  %index2341 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2276, i64 0, i32 4
  %opacity2366 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2276, i64 0, i32 3
  br label %for.body1984, !dbg !2604

for.body1984:                                     ; preds = %for.cond1980.preheader, %for.inc2505
  %x1979.05766 = phi i64 [ 0, %for.cond1980.preheader ], [ %inc2506, %for.inc2505 ]
  call void @llvm.dbg.value(metadata i64 %x1979.05766, metadata !913, metadata !DIExpression()), !dbg !2603
  %371 = load double, ptr %arrayidx1987, align 8, !dbg !2606, !tbaa !1944
  %sub1989 = fsub double %conv1985, %371, !dbg !2609
  %add1990 = fadd double %sub1989, 1.000000e+00, !dbg !2610
  %mul1997 = fmul double %add1990, %add1990, !dbg !2611
  %arrayidx1998 = getelementptr inbounds ptr, ptr %call234, i64 %x1979.05766, !dbg !2612
  %372 = load ptr, ptr %arrayidx1998, align 8, !dbg !2612, !tbaa !1776
  %arrayidx1999 = getelementptr inbounds %struct._ChannelStatistics, ptr %372, i64 %y1973.05768, !dbg !2612
  %arrayidx2001 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx1999, i64 0, i64 %i.105769, !dbg !2612
  %373 = load double, ptr %arrayidx2001, align 8, !dbg !2613, !tbaa !1944
  %374 = load double, ptr %arrayidx2005, align 8, !dbg !2614, !tbaa !1944
  %375 = call double @llvm.fmuladd.f64(double %mul1997, double %373, double %374), !dbg !2614
  store double %375, ptr %arrayidx2005, align 8, !dbg !2614, !tbaa !1944
  %376 = load double, ptr %green2010, align 8, !dbg !2615, !tbaa !1961
  %sub2011 = fsub double %conv1985, %376, !dbg !2616
  %add2012 = fadd double %sub2011, 1.000000e+00, !dbg !2617
  %mul2019 = fmul double %add2012, %add2012, !dbg !2618
  %green2024 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 1, !dbg !2619
  %377 = load double, ptr %green2024, align 8, !dbg !2619, !tbaa !1961
  %378 = load double, ptr %green2028, align 8, !dbg !2620, !tbaa !1961
  %379 = call double @llvm.fmuladd.f64(double %mul2019, double %377, double %378), !dbg !2620
  store double %379, ptr %green2028, align 8, !dbg !2620, !tbaa !1961
  %380 = load double, ptr %blue2032, align 8, !dbg !2621, !tbaa !1979
  %sub2033 = fsub double %conv1985, %380, !dbg !2622
  %add2034 = fadd double %sub2033, 1.000000e+00, !dbg !2623
  %mul2041 = fmul double %add2034, %add2034, !dbg !2624
  %blue2046 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 2, !dbg !2625
  %381 = load double, ptr %blue2046, align 8, !dbg !2625, !tbaa !1979
  %382 = load double, ptr %blue2050, align 8, !dbg !2626, !tbaa !1979
  %383 = call double @llvm.fmuladd.f64(double %mul2041, double %381, double %382), !dbg !2626
  store double %383, ptr %blue2050, align 8, !dbg !2626, !tbaa !1979
  %384 = load i32, ptr %colorspace159, align 4, !dbg !2627, !tbaa !1633
  %cmp2052 = icmp eq i32 %384, 12, !dbg !2629
  br i1 %cmp2052, label %if.then2054, label %if.end2077, !dbg !2630

if.then2054:                                      ; preds = %for.body1984
  %385 = load double, ptr %index2058, align 8, !dbg !2631, !tbaa !2002
  %sub2059 = fsub double %conv1985, %385, !dbg !2632
  %add2060 = fadd double %sub2059, 1.000000e+00, !dbg !2633
  %mul2067 = fmul double %add2060, %add2060, !dbg !2634
  %index2072 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 4, !dbg !2635
  %386 = load double, ptr %index2072, align 8, !dbg !2635, !tbaa !2002
  %387 = load double, ptr %index2076, align 8, !dbg !2636, !tbaa !2002
  %388 = call double @llvm.fmuladd.f64(double %mul2067, double %386, double %387), !dbg !2636
  store double %388, ptr %index2076, align 8, !dbg !2636, !tbaa !2002
  br label %if.end2077, !dbg !2637

if.end2077:                                       ; preds = %if.then2054, %for.body1984
  %389 = load i32, ptr %matte177, align 8, !dbg !2638, !tbaa !1634
  %cmp2079.not = icmp eq i32 %389, 0, !dbg !2640
  br i1 %cmp2079.not, label %if.end2104, label %if.then2081, !dbg !2641

if.then2081:                                      ; preds = %if.end2077
  %390 = load double, ptr %opacity2085, align 8, !dbg !2642, !tbaa !2024
  %sub2086 = fsub double %conv1985, %390, !dbg !2643
  %add2087 = fadd double %sub2086, 1.000000e+00, !dbg !2644
  %mul2094 = fmul double %add2087, %add2087, !dbg !2645
  %opacity2099 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 3, !dbg !2646
  %391 = load double, ptr %opacity2099, align 8, !dbg !2646, !tbaa !2024
  %392 = load double, ptr %opacity2103, align 8, !dbg !2647, !tbaa !2024
  %393 = call double @llvm.fmuladd.f64(double %mul2094, double %391, double %392), !dbg !2647
  store double %393, ptr %opacity2103, align 8, !dbg !2647, !tbaa !2024
  br label %if.end2104, !dbg !2648

if.end2104:                                       ; preds = %if.then2081, %if.end2077
  %394 = load double, ptr %arrayidx2001, align 8, !dbg !2649, !tbaa !1944
  %sub2110 = sub nsw i64 %y1973.05768, %x1979.05766, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %sub2110, metadata !2651, metadata !DIExpression()) #13, !dbg !2656
  %395 = call i64 @llvm.abs.i64(i64 %sub2110, i1 true) #13, !dbg !2658
  %arrayidx2112 = getelementptr inbounds %struct._ChannelStatistics, ptr %call242, i64 %395, !dbg !2659
  %arrayidx2114 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2112, i64 0, i64 %i.105769, !dbg !2659
  %396 = load double, ptr %arrayidx2114, align 8, !dbg !2660, !tbaa !1944
  %add2116 = fadd double %394, %396, !dbg !2660
  store double %add2116, ptr %arrayidx2114, align 8, !dbg !2660, !tbaa !1944
  %397 = load double, ptr %green2024, align 8, !dbg !2661, !tbaa !1961
  call void @llvm.dbg.value(metadata i64 %sub2110, metadata !2651, metadata !DIExpression()) #13, !dbg !2662
  %green2127 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2114, i64 0, i32 1, !dbg !2664
  %398 = load double, ptr %green2127, align 8, !dbg !2665, !tbaa !1961
  %add2128 = fadd double %397, %398, !dbg !2665
  store double %add2128, ptr %green2127, align 8, !dbg !2665, !tbaa !1961
  %399 = load double, ptr %blue2046, align 8, !dbg !2666, !tbaa !1979
  call void @llvm.dbg.value(metadata i64 %sub2110, metadata !2651, metadata !DIExpression()) #13, !dbg !2667
  %blue2139 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2114, i64 0, i32 2, !dbg !2669
  %400 = load double, ptr %blue2139, align 8, !dbg !2670, !tbaa !1979
  %add2140 = fadd double %399, %400, !dbg !2670
  store double %add2140, ptr %blue2139, align 8, !dbg !2670, !tbaa !1979
  br i1 %cmp2052, label %if.then2144, label %if.end2157, !dbg !2671

if.then2144:                                      ; preds = %if.end2104
  %index2149 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 4, !dbg !2672
  %401 = load double, ptr %index2149, align 8, !dbg !2672, !tbaa !2002
  call void @llvm.dbg.value(metadata i64 %sub2110, metadata !2651, metadata !DIExpression()) #13, !dbg !2674
  %index2155 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2114, i64 0, i32 4, !dbg !2676
  %402 = load double, ptr %index2155, align 8, !dbg !2677, !tbaa !2002
  %add2156 = fadd double %401, %402, !dbg !2677
  store double %add2156, ptr %index2155, align 8, !dbg !2677, !tbaa !2002
  br label %if.end2157, !dbg !2678

if.end2157:                                       ; preds = %if.then2144, %if.end2104
  br i1 %cmp2079.not, label %if.end2174, label %if.then2161, !dbg !2679

if.then2161:                                      ; preds = %if.end2157
  %opacity2166 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2001, i64 0, i32 3, !dbg !2680
  %403 = load double, ptr %opacity2166, align 8, !dbg !2680, !tbaa !2024
  call void @llvm.dbg.value(metadata i64 %sub2110, metadata !2651, metadata !DIExpression()) #13, !dbg !2682
  %opacity2172 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2114, i64 0, i32 3, !dbg !2684
  %404 = load double, ptr %opacity2172, align 8, !dbg !2685, !tbaa !2024
  %add2173 = fadd double %403, %404, !dbg !2685
  store double %add2173, ptr %opacity2172, align 8, !dbg !2685, !tbaa !2024
  br label %if.end2174, !dbg !2686

if.end2174:                                       ; preds = %if.then2161, %if.end2157
  %405 = load double, ptr %arrayidx2001, align 8, !dbg !2687, !tbaa !1944
  call void @llvm.dbg.value(metadata double %405, metadata !2175, metadata !DIExpression()) #13, !dbg !2688
  %406 = call double @llvm.fabs.f64(double %405) #13, !dbg !2690
  %cmp.i5529 = fcmp olt double %406, 0x3DA5FD7FE1796495, !dbg !2691
  br i1 %cmp.i5529, label %MagickLog10.exit5533, label %if.end.i5531, !dbg !2692

if.end.i5531:                                     ; preds = %if.end2174
  %call1.i5530 = call double @log10(double noundef %406) #13, !dbg !2693
  %.pre5855 = load ptr, ptr %arrayidx1998, align 8, !dbg !2694, !tbaa !1776
  br label %MagickLog10.exit5533, !dbg !2695

MagickLog10.exit5533:                             ; preds = %if.end2174, %if.end.i5531
  %407 = phi ptr [ %.pre5855, %if.end.i5531 ], [ %372, %if.end2174 ], !dbg !2694
  %retval.0.i5532 = phi double [ %call1.i5530, %if.end.i5531 ], [ -1.100000e+01, %if.end2174 ], !dbg !2688
  %408 = load double, ptr %arrayidx2188, align 8, !dbg !2696, !tbaa !1944
  %neg2190 = fneg double %405, !dbg !2696
  %409 = call double @llvm.fmuladd.f64(double %neg2190, double %retval.0.i5532, double %408), !dbg !2696
  store double %409, ptr %arrayidx2188, align 8, !dbg !2696, !tbaa !1944
  %arrayidx2192 = getelementptr inbounds %struct._ChannelStatistics, ptr %407, i64 %y1973.05768, !dbg !2694
  %arrayidx2194 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2192, i64 0, i64 %i.105769, !dbg !2694
  %green2195 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2194, i64 0, i32 1, !dbg !2697
  %410 = load double, ptr %green2195, align 8, !dbg !2697, !tbaa !1961
  call void @llvm.dbg.value(metadata double %410, metadata !2175, metadata !DIExpression()) #13, !dbg !2698
  %411 = call double @llvm.fabs.f64(double %410) #13, !dbg !2700
  %cmp.i5534 = fcmp olt double %411, 0x3DA5FD7FE1796495, !dbg !2701
  br i1 %cmp.i5534, label %MagickLog10.exit5538, label %if.end.i5536, !dbg !2702

if.end.i5536:                                     ; preds = %MagickLog10.exit5533
  %call1.i5535 = call double @log10(double noundef %411) #13, !dbg !2703
  %.pre5856 = load ptr, ptr %arrayidx1998, align 8, !dbg !2704, !tbaa !1776
  br label %MagickLog10.exit5538, !dbg !2705

MagickLog10.exit5538:                             ; preds = %MagickLog10.exit5533, %if.end.i5536
  %412 = phi ptr [ %.pre5856, %if.end.i5536 ], [ %407, %MagickLog10.exit5533 ], !dbg !2704
  %retval.0.i5537 = phi double [ %call1.i5535, %if.end.i5536 ], [ -1.100000e+01, %MagickLog10.exit5533 ], !dbg !2698
  %413 = load double, ptr %green2205, align 8, !dbg !2706, !tbaa !1961
  %neg2206 = fneg double %410, !dbg !2706
  %414 = call double @llvm.fmuladd.f64(double %neg2206, double %retval.0.i5537, double %413), !dbg !2706
  store double %414, ptr %green2205, align 8, !dbg !2706, !tbaa !1961
  %arrayidx2208 = getelementptr inbounds %struct._ChannelStatistics, ptr %412, i64 %y1973.05768, !dbg !2704
  %arrayidx2210 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2208, i64 0, i64 %i.105769, !dbg !2704
  %blue2211 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2210, i64 0, i32 2, !dbg !2707
  %415 = load double, ptr %blue2211, align 8, !dbg !2707, !tbaa !1979
  call void @llvm.dbg.value(metadata double %415, metadata !2175, metadata !DIExpression()) #13, !dbg !2708
  %416 = call double @llvm.fabs.f64(double %415) #13, !dbg !2710
  %cmp.i5539 = fcmp olt double %416, 0x3DA5FD7FE1796495, !dbg !2711
  br i1 %cmp.i5539, label %MagickLog10.exit5543, label %if.end.i5541, !dbg !2712

if.end.i5541:                                     ; preds = %MagickLog10.exit5538
  %call1.i5540 = call double @log10(double noundef %416) #13, !dbg !2713
  br label %MagickLog10.exit5543, !dbg !2714

MagickLog10.exit5543:                             ; preds = %MagickLog10.exit5538, %if.end.i5541
  %retval.0.i5542 = phi double [ %call1.i5540, %if.end.i5541 ], [ -1.100000e+01, %MagickLog10.exit5538 ], !dbg !2708
  %417 = load double, ptr %blue2221, align 8, !dbg !2715, !tbaa !1979
  %neg2222 = fneg double %415, !dbg !2715
  %418 = call double @llvm.fmuladd.f64(double %neg2222, double %retval.0.i5542, double %417), !dbg !2715
  store double %418, ptr %blue2221, align 8, !dbg !2715, !tbaa !1979
  %419 = load i32, ptr %colorspace159, align 4, !dbg !2716, !tbaa !1633
  %cmp2224 = icmp eq i32 %419, 12, !dbg !2718
  br i1 %cmp2224, label %if.then2226, label %if.end2243, !dbg !2719

if.then2226:                                      ; preds = %MagickLog10.exit5543
  %420 = load ptr, ptr %arrayidx1998, align 8, !dbg !2720, !tbaa !1776
  %arrayidx2228 = getelementptr inbounds %struct._ChannelStatistics, ptr %420, i64 %y1973.05768, !dbg !2720
  %arrayidx2230 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2228, i64 0, i64 %i.105769, !dbg !2720
  %index2231 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2230, i64 0, i32 4, !dbg !2721
  %421 = load double, ptr %index2231, align 8, !dbg !2721, !tbaa !2002
  call void @llvm.dbg.value(metadata double %421, metadata !2175, metadata !DIExpression()) #13, !dbg !2722
  %422 = call double @llvm.fabs.f64(double %421) #13, !dbg !2724
  %cmp.i5544 = fcmp olt double %422, 0x3DA5FD7FE1796495, !dbg !2725
  br i1 %cmp.i5544, label %MagickLog10.exit5548, label %if.end.i5546, !dbg !2726

if.end.i5546:                                     ; preds = %if.then2226
  %call1.i5545 = call double @log10(double noundef %422) #13, !dbg !2727
  br label %MagickLog10.exit5548, !dbg !2728

MagickLog10.exit5548:                             ; preds = %if.then2226, %if.end.i5546
  %retval.0.i5547 = phi double [ %call1.i5545, %if.end.i5546 ], [ -1.100000e+01, %if.then2226 ], !dbg !2722
  %423 = load double, ptr %index2241, align 8, !dbg !2729, !tbaa !2002
  %neg2242 = fneg double %421, !dbg !2729
  %424 = call double @llvm.fmuladd.f64(double %neg2242, double %retval.0.i5547, double %423), !dbg !2729
  store double %424, ptr %index2241, align 8, !dbg !2729, !tbaa !2002
  br label %if.end2243, !dbg !2730

if.end2243:                                       ; preds = %MagickLog10.exit5548, %MagickLog10.exit5543
  %425 = load i32, ptr %matte177, align 8, !dbg !2731, !tbaa !1634
  %cmp2245.not = icmp eq i32 %425, 0, !dbg !2733
  br i1 %cmp2245.not, label %if.end2264, label %if.then2247, !dbg !2734

if.then2247:                                      ; preds = %if.end2243
  %426 = load ptr, ptr %arrayidx1998, align 8, !dbg !2735, !tbaa !1776
  %arrayidx2249 = getelementptr inbounds %struct._ChannelStatistics, ptr %426, i64 %y1973.05768, !dbg !2735
  %arrayidx2251 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2249, i64 0, i64 %i.105769, !dbg !2735
  %opacity2252 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2251, i64 0, i32 3, !dbg !2736
  %427 = load double, ptr %opacity2252, align 8, !dbg !2736, !tbaa !2024
  call void @llvm.dbg.value(metadata double %427, metadata !2175, metadata !DIExpression()) #13, !dbg !2737
  %428 = call double @llvm.fabs.f64(double %427) #13, !dbg !2739
  %cmp.i5549 = fcmp olt double %428, 0x3DA5FD7FE1796495, !dbg !2740
  br i1 %cmp.i5549, label %MagickLog10.exit5553, label %if.end.i5551, !dbg !2741

if.end.i5551:                                     ; preds = %if.then2247
  %call1.i5550 = call double @log10(double noundef %428) #13, !dbg !2742
  br label %MagickLog10.exit5553, !dbg !2743

MagickLog10.exit5553:                             ; preds = %if.then2247, %if.end.i5551
  %retval.0.i5552 = phi double [ %call1.i5550, %if.end.i5551 ], [ -1.100000e+01, %if.then2247 ], !dbg !2737
  %429 = load double, ptr %opacity2262, align 8, !dbg !2744, !tbaa !2024
  %neg2263 = fneg double %427, !dbg !2744
  %430 = call double @llvm.fmuladd.f64(double %neg2263, double %retval.0.i5552, double %429), !dbg !2744
  store double %430, ptr %opacity2262, align 8, !dbg !2744, !tbaa !2024
  br label %if.end2264, !dbg !2745

if.end2264:                                       ; preds = %MagickLog10.exit5553, %if.end2243
  %431 = load ptr, ptr %arrayidx1998, align 8, !dbg !2746, !tbaa !1776
  %arrayidx2266 = getelementptr inbounds %struct._ChannelStatistics, ptr %431, i64 %y1973.05768, !dbg !2746
  %arrayidx2268 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2266, i64 0, i64 %i.105769, !dbg !2746
  %432 = load double, ptr %arrayidx2268, align 8, !dbg !2747, !tbaa !1944
  %arrayidx2270 = getelementptr inbounds %struct._ChannelStatistics, ptr %call238, i64 %x1979.05766, !dbg !2748
  %arrayidx2272 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2270, i64 0, i64 %i.105769, !dbg !2748
  %433 = load double, ptr %arrayidx2272, align 8, !dbg !2749, !tbaa !1944
  %434 = load double, ptr %arrayidx2276, align 8, !dbg !2750, !tbaa !1944
  %mul2278 = fmul double %433, %434, !dbg !2751
  call void @llvm.dbg.value(metadata double %mul2278, metadata !2175, metadata !DIExpression()) #13, !dbg !2752
  %435 = call double @llvm.fabs.f64(double %mul2278) #13, !dbg !2754
  %cmp.i5554 = fcmp olt double %435, 0x3DA5FD7FE1796495, !dbg !2755
  br i1 %cmp.i5554, label %MagickLog10.exit5558, label %if.end.i5556, !dbg !2756

if.end.i5556:                                     ; preds = %if.end2264
  %call1.i5555 = call double @log10(double noundef %435) #13, !dbg !2757
  %.pre5857 = load ptr, ptr %arrayidx1998, align 8, !dbg !2758, !tbaa !1776
  br label %MagickLog10.exit5558, !dbg !2759

MagickLog10.exit5558:                             ; preds = %if.end2264, %if.end.i5556
  %436 = phi ptr [ %.pre5857, %if.end.i5556 ], [ %431, %if.end2264 ], !dbg !2758
  %retval.0.i5557 = phi double [ %call1.i5555, %if.end.i5556 ], [ -1.100000e+01, %if.end2264 ], !dbg !2752
  %437 = load double, ptr %arrayidx2282, align 8, !dbg !2760, !tbaa !1944
  %neg2284 = fneg double %432, !dbg !2760
  %438 = call double @llvm.fmuladd.f64(double %neg2284, double %retval.0.i5557, double %437), !dbg !2760
  store double %438, ptr %arrayidx2282, align 8, !dbg !2760, !tbaa !1944
  %arrayidx2286 = getelementptr inbounds %struct._ChannelStatistics, ptr %436, i64 %y1973.05768, !dbg !2758
  %arrayidx2288 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2286, i64 0, i64 %i.105769, !dbg !2758
  %green2289 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2288, i64 0, i32 1, !dbg !2761
  %439 = load double, ptr %green2289, align 8, !dbg !2761, !tbaa !1961
  %green2293 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 1, !dbg !2762
  %440 = load double, ptr %green2293, align 8, !dbg !2762, !tbaa !1961
  %441 = load double, ptr %green2297, align 8, !dbg !2763, !tbaa !1961
  %mul2298 = fmul double %440, %441, !dbg !2764
  call void @llvm.dbg.value(metadata double %mul2298, metadata !2175, metadata !DIExpression()) #13, !dbg !2765
  %442 = call double @llvm.fabs.f64(double %mul2298) #13, !dbg !2767
  %cmp.i5559 = fcmp olt double %442, 0x3DA5FD7FE1796495, !dbg !2768
  br i1 %cmp.i5559, label %MagickLog10.exit5563, label %if.end.i5561, !dbg !2769

if.end.i5561:                                     ; preds = %MagickLog10.exit5558
  %call1.i5560 = call double @log10(double noundef %442) #13, !dbg !2770
  %.pre5858 = load ptr, ptr %arrayidx1998, align 8, !dbg !2771, !tbaa !1776
  br label %MagickLog10.exit5563, !dbg !2772

MagickLog10.exit5563:                             ; preds = %MagickLog10.exit5558, %if.end.i5561
  %443 = phi ptr [ %.pre5858, %if.end.i5561 ], [ %436, %MagickLog10.exit5558 ], !dbg !2771
  %retval.0.i5562 = phi double [ %call1.i5560, %if.end.i5561 ], [ -1.100000e+01, %MagickLog10.exit5558 ], !dbg !2765
  %444 = load double, ptr %green2303, align 8, !dbg !2773, !tbaa !1961
  %neg2304 = fneg double %439, !dbg !2773
  %445 = call double @llvm.fmuladd.f64(double %neg2304, double %retval.0.i5562, double %444), !dbg !2773
  store double %445, ptr %green2303, align 8, !dbg !2773, !tbaa !1961
  %arrayidx2306 = getelementptr inbounds %struct._ChannelStatistics, ptr %443, i64 %y1973.05768, !dbg !2771
  %arrayidx2308 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2306, i64 0, i64 %i.105769, !dbg !2771
  %blue2309 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2308, i64 0, i32 2, !dbg !2774
  %446 = load double, ptr %blue2309, align 8, !dbg !2774, !tbaa !1979
  %blue2313 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 2, !dbg !2775
  %447 = load double, ptr %blue2313, align 8, !dbg !2775, !tbaa !1979
  %448 = load double, ptr %blue2317, align 8, !dbg !2776, !tbaa !1979
  %mul2318 = fmul double %447, %448, !dbg !2777
  call void @llvm.dbg.value(metadata double %mul2318, metadata !2175, metadata !DIExpression()) #13, !dbg !2778
  %449 = call double @llvm.fabs.f64(double %mul2318) #13, !dbg !2780
  %cmp.i5564 = fcmp olt double %449, 0x3DA5FD7FE1796495, !dbg !2781
  br i1 %cmp.i5564, label %MagickLog10.exit5568, label %if.end.i5566, !dbg !2782

if.end.i5566:                                     ; preds = %MagickLog10.exit5563
  %call1.i5565 = call double @log10(double noundef %449) #13, !dbg !2783
  br label %MagickLog10.exit5568, !dbg !2784

MagickLog10.exit5568:                             ; preds = %MagickLog10.exit5563, %if.end.i5566
  %retval.0.i5567 = phi double [ %call1.i5565, %if.end.i5566 ], [ -1.100000e+01, %MagickLog10.exit5563 ], !dbg !2778
  %450 = load double, ptr %blue2323, align 8, !dbg !2785, !tbaa !1979
  %neg2324 = fneg double %446, !dbg !2785
  %451 = call double @llvm.fmuladd.f64(double %neg2324, double %retval.0.i5567, double %450), !dbg !2785
  store double %451, ptr %blue2323, align 8, !dbg !2785, !tbaa !1979
  %452 = load i32, ptr %colorspace159, align 4, !dbg !2786, !tbaa !1633
  %cmp2326 = icmp eq i32 %452, 12, !dbg !2788
  br i1 %cmp2326, label %if.then2328, label %if.end2349, !dbg !2789

if.then2328:                                      ; preds = %MagickLog10.exit5568
  %453 = load ptr, ptr %arrayidx1998, align 8, !dbg !2790, !tbaa !1776
  %arrayidx2330 = getelementptr inbounds %struct._ChannelStatistics, ptr %453, i64 %y1973.05768, !dbg !2790
  %arrayidx2332 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2330, i64 0, i64 %i.105769, !dbg !2790
  %index2333 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2332, i64 0, i32 4, !dbg !2791
  %454 = load double, ptr %index2333, align 8, !dbg !2791, !tbaa !2002
  %index2337 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 4, !dbg !2792
  %455 = load double, ptr %index2337, align 8, !dbg !2792, !tbaa !2002
  %456 = load double, ptr %index2341, align 8, !dbg !2793, !tbaa !2002
  %mul2342 = fmul double %455, %456, !dbg !2794
  call void @llvm.dbg.value(metadata double %mul2342, metadata !2175, metadata !DIExpression()) #13, !dbg !2795
  %457 = call double @llvm.fabs.f64(double %mul2342) #13, !dbg !2797
  %cmp.i5569 = fcmp olt double %457, 0x3DA5FD7FE1796495, !dbg !2798
  br i1 %cmp.i5569, label %MagickLog10.exit5573, label %if.end.i5571, !dbg !2799

if.end.i5571:                                     ; preds = %if.then2328
  %call1.i5570 = call double @log10(double noundef %457) #13, !dbg !2800
  br label %MagickLog10.exit5573, !dbg !2801

MagickLog10.exit5573:                             ; preds = %if.then2328, %if.end.i5571
  %retval.0.i5572 = phi double [ %call1.i5570, %if.end.i5571 ], [ -1.100000e+01, %if.then2328 ], !dbg !2795
  %458 = load double, ptr %index2347, align 8, !dbg !2802, !tbaa !2002
  %neg2348 = fneg double %454, !dbg !2802
  %459 = call double @llvm.fmuladd.f64(double %neg2348, double %retval.0.i5572, double %458), !dbg !2802
  store double %459, ptr %index2347, align 8, !dbg !2802, !tbaa !2002
  br label %if.end2349, !dbg !2803

if.end2349:                                       ; preds = %MagickLog10.exit5573, %MagickLog10.exit5568
  %460 = load i32, ptr %matte177, align 8, !dbg !2804, !tbaa !1634
  %cmp2351.not = icmp eq i32 %460, 0, !dbg !2806
  br i1 %cmp2351.not, label %if.end2374, label %if.then2353, !dbg !2807

if.then2353:                                      ; preds = %if.end2349
  %461 = load ptr, ptr %arrayidx1998, align 8, !dbg !2808, !tbaa !1776
  %arrayidx2355 = getelementptr inbounds %struct._ChannelStatistics, ptr %461, i64 %y1973.05768, !dbg !2808
  %arrayidx2357 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2355, i64 0, i64 %i.105769, !dbg !2808
  %opacity2358 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2357, i64 0, i32 3, !dbg !2809
  %462 = load double, ptr %opacity2358, align 8, !dbg !2809, !tbaa !2024
  %opacity2362 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 3, !dbg !2810
  %463 = load double, ptr %opacity2362, align 8, !dbg !2810, !tbaa !2024
  %464 = load double, ptr %opacity2366, align 8, !dbg !2811, !tbaa !2024
  %mul2367 = fmul double %463, %464, !dbg !2812
  call void @llvm.dbg.value(metadata double %mul2367, metadata !2175, metadata !DIExpression()) #13, !dbg !2813
  %465 = call double @llvm.fabs.f64(double %mul2367) #13, !dbg !2815
  %cmp.i5574 = fcmp olt double %465, 0x3DA5FD7FE1796495, !dbg !2816
  br i1 %cmp.i5574, label %MagickLog10.exit5578, label %if.end.i5576, !dbg !2817

if.end.i5576:                                     ; preds = %if.then2353
  %call1.i5575 = call double @log10(double noundef %465) #13, !dbg !2818
  br label %MagickLog10.exit5578, !dbg !2819

MagickLog10.exit5578:                             ; preds = %if.then2353, %if.end.i5576
  %retval.0.i5577 = phi double [ %call1.i5575, %if.end.i5576 ], [ -1.100000e+01, %if.then2353 ], !dbg !2813
  %466 = load double, ptr %opacity2372, align 8, !dbg !2820, !tbaa !2024
  %neg2373 = fneg double %462, !dbg !2820
  %467 = call double @llvm.fmuladd.f64(double %neg2373, double %retval.0.i5577, double %466), !dbg !2820
  store double %467, ptr %opacity2372, align 8, !dbg !2820, !tbaa !2024
  br label %if.end2374, !dbg !2821

if.end2374:                                       ; preds = %MagickLog10.exit5578, %if.end2349
  %468 = load double, ptr %arrayidx2272, align 8, !dbg !2822, !tbaa !1944
  %469 = load double, ptr %arrayidx2276, align 8, !dbg !2823, !tbaa !1944
  %mul2383 = fmul double %468, %469, !dbg !2824
  call void @llvm.dbg.value(metadata double %mul2383, metadata !2175, metadata !DIExpression()) #13, !dbg !2825
  %470 = call double @llvm.fabs.f64(double %mul2383) #13, !dbg !2827
  %cmp.i5579 = fcmp olt double %470, 0x3DA5FD7FE1796495, !dbg !2828
  br i1 %cmp.i5579, label %MagickLog10.exit5583, label %if.end.i5581, !dbg !2829

if.end.i5581:                                     ; preds = %if.end2374
  %call1.i5580 = call double @log10(double noundef %470) #13, !dbg !2830
  br label %MagickLog10.exit5583, !dbg !2831

MagickLog10.exit5583:                             ; preds = %if.end2374, %if.end.i5581
  %retval.0.i5582 = phi double [ %call1.i5580, %if.end.i5581 ], [ -1.100000e+01, %if.end2374 ], !dbg !2825
  %471 = load double, ptr %arrayidx2396, align 8, !dbg !2832, !tbaa !1944
  %neg2398 = fneg double %mul2383, !dbg !2832
  %472 = call double @llvm.fmuladd.f64(double %neg2398, double %retval.0.i5582, double %471), !dbg !2832
  store double %472, ptr %arrayidx2396, align 8, !dbg !2832, !tbaa !1944
  %473 = load double, ptr %green2293, align 8, !dbg !2833, !tbaa !1961
  %474 = load double, ptr %green2297, align 8, !dbg !2834, !tbaa !1961
  %mul2407 = fmul double %473, %474, !dbg !2835
  call void @llvm.dbg.value(metadata double %mul2407, metadata !2175, metadata !DIExpression()) #13, !dbg !2836
  %475 = call double @llvm.fabs.f64(double %mul2407) #13, !dbg !2838
  %cmp.i5584 = fcmp olt double %475, 0x3DA5FD7FE1796495, !dbg !2839
  br i1 %cmp.i5584, label %MagickLog10.exit5588, label %if.end.i5586, !dbg !2840

if.end.i5586:                                     ; preds = %MagickLog10.exit5583
  %call1.i5585 = call double @log10(double noundef %475) #13, !dbg !2841
  br label %MagickLog10.exit5588, !dbg !2842

MagickLog10.exit5588:                             ; preds = %MagickLog10.exit5583, %if.end.i5586
  %retval.0.i5587 = phi double [ %call1.i5585, %if.end.i5586 ], [ -1.100000e+01, %MagickLog10.exit5583 ], !dbg !2836
  %476 = load double, ptr %green2421, align 8, !dbg !2843, !tbaa !1961
  %neg2422 = fneg double %mul2407, !dbg !2843
  %477 = call double @llvm.fmuladd.f64(double %neg2422, double %retval.0.i5587, double %476), !dbg !2843
  store double %477, ptr %green2421, align 8, !dbg !2843, !tbaa !1961
  %478 = load double, ptr %blue2313, align 8, !dbg !2844, !tbaa !1979
  %479 = load double, ptr %blue2317, align 8, !dbg !2845, !tbaa !1979
  %mul2431 = fmul double %478, %479, !dbg !2846
  call void @llvm.dbg.value(metadata double %mul2431, metadata !2175, metadata !DIExpression()) #13, !dbg !2847
  %480 = call double @llvm.fabs.f64(double %mul2431) #13, !dbg !2849
  %cmp.i5589 = fcmp olt double %480, 0x3DA5FD7FE1796495, !dbg !2850
  br i1 %cmp.i5589, label %MagickLog10.exit5593, label %if.end.i5591, !dbg !2851

if.end.i5591:                                     ; preds = %MagickLog10.exit5588
  %call1.i5590 = call double @log10(double noundef %480) #13, !dbg !2852
  br label %MagickLog10.exit5593, !dbg !2853

MagickLog10.exit5593:                             ; preds = %MagickLog10.exit5588, %if.end.i5591
  %retval.0.i5592 = phi double [ %call1.i5590, %if.end.i5591 ], [ -1.100000e+01, %MagickLog10.exit5588 ], !dbg !2847
  %481 = load double, ptr %blue2445, align 8, !dbg !2854, !tbaa !1979
  %neg2446 = fneg double %mul2431, !dbg !2854
  %482 = call double @llvm.fmuladd.f64(double %neg2446, double %retval.0.i5592, double %481), !dbg !2854
  store double %482, ptr %blue2445, align 8, !dbg !2854, !tbaa !1979
  %483 = load i32, ptr %colorspace159, align 4, !dbg !2855, !tbaa !1633
  %cmp2448 = icmp eq i32 %483, 12, !dbg !2857
  br i1 %cmp2448, label %if.then2450, label %if.end2475, !dbg !2858

if.then2450:                                      ; preds = %MagickLog10.exit5593
  %index2454 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 4, !dbg !2859
  %484 = load double, ptr %index2454, align 8, !dbg !2859, !tbaa !2002
  %485 = load double, ptr %index2341, align 8, !dbg !2860, !tbaa !2002
  %mul2459 = fmul double %484, %485, !dbg !2861
  call void @llvm.dbg.value(metadata double %mul2459, metadata !2175, metadata !DIExpression()) #13, !dbg !2862
  %486 = call double @llvm.fabs.f64(double %mul2459) #13, !dbg !2864
  %cmp.i5594 = fcmp olt double %486, 0x3DA5FD7FE1796495, !dbg !2865
  br i1 %cmp.i5594, label %MagickLog10.exit5598, label %if.end.i5596, !dbg !2866

if.end.i5596:                                     ; preds = %if.then2450
  %call1.i5595 = call double @log10(double noundef %486) #13, !dbg !2867
  br label %MagickLog10.exit5598, !dbg !2868

MagickLog10.exit5598:                             ; preds = %if.then2450, %if.end.i5596
  %retval.0.i5597 = phi double [ %call1.i5595, %if.end.i5596 ], [ -1.100000e+01, %if.then2450 ], !dbg !2862
  %487 = load double, ptr %index2473, align 8, !dbg !2869, !tbaa !2002
  %neg2474 = fneg double %mul2459, !dbg !2869
  %488 = call double @llvm.fmuladd.f64(double %neg2474, double %retval.0.i5597, double %487), !dbg !2869
  store double %488, ptr %index2473, align 8, !dbg !2869, !tbaa !2002
  br label %if.end2475, !dbg !2870

if.end2475:                                       ; preds = %MagickLog10.exit5598, %MagickLog10.exit5593
  %489 = load i32, ptr %matte177, align 8, !dbg !2871, !tbaa !1634
  %cmp2477.not = icmp eq i32 %489, 0, !dbg !2873
  br i1 %cmp2477.not, label %for.inc2505, label %if.then2479, !dbg !2874

if.then2479:                                      ; preds = %if.end2475
  %opacity2483 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2272, i64 0, i32 3, !dbg !2875
  %490 = load double, ptr %opacity2483, align 8, !dbg !2875, !tbaa !2024
  %491 = load double, ptr %opacity2366, align 8, !dbg !2876, !tbaa !2024
  %mul2488 = fmul double %490, %491, !dbg !2877
  call void @llvm.dbg.value(metadata double %mul2488, metadata !2175, metadata !DIExpression()) #13, !dbg !2878
  %492 = call double @llvm.fabs.f64(double %mul2488) #13, !dbg !2880
  %cmp.i5599 = fcmp olt double %492, 0x3DA5FD7FE1796495, !dbg !2881
  br i1 %cmp.i5599, label %MagickLog10.exit5603, label %if.end.i5601, !dbg !2882

if.end.i5601:                                     ; preds = %if.then2479
  %call1.i5600 = call double @log10(double noundef %492) #13, !dbg !2883
  br label %MagickLog10.exit5603, !dbg !2884

MagickLog10.exit5603:                             ; preds = %if.then2479, %if.end.i5601
  %retval.0.i5602 = phi double [ %call1.i5600, %if.end.i5601 ], [ -1.100000e+01, %if.then2479 ], !dbg !2878
  %493 = load double, ptr %opacity2502, align 8, !dbg !2885, !tbaa !2024
  %neg2503 = fneg double %mul2488, !dbg !2885
  %494 = call double @llvm.fmuladd.f64(double %neg2503, double %retval.0.i5602, double %493), !dbg !2885
  store double %494, ptr %opacity2502, align 8, !dbg !2885, !tbaa !2024
  br label %for.inc2505, !dbg !2886

for.inc2505:                                      ; preds = %if.end2475, %MagickLog10.exit5603
  %inc2506 = add nuw nsw i64 %x1979.05766, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %inc2506, metadata !913, metadata !DIExpression()), !dbg !2603
  %exitcond5836.not = icmp eq i64 %inc2506, %conv233, !dbg !2888
  br i1 %exitcond5836.not, label %for.cond1980.for.end2507_crit_edge, label %for.body1984, !dbg !2604, !llvm.loop !2889

for.cond1980.for.end2507_crit_edge:               ; preds = %for.inc2505
  %inc2509 = add nuw nsw i64 %y1973.05768, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %inc2509, metadata !909, metadata !DIExpression()), !dbg !2601
  %exitcond5837.not = icmp eq i64 %inc2509, %conv233, !dbg !2892
  br i1 %exitcond5837.not, label %for.end2510, label %for.cond1980.preheader, !dbg !2602, !llvm.loop !2893

for.end2510:                                      ; preds = %for.cond1980.for.end2507_crit_edge, %for.cond1974.preheader
  %arrayidx2512 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, !dbg !2895
  %495 = load double, ptr %arrayidx2512, align 8, !dbg !2896, !tbaa !1944
  %arrayidx2515 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 3, i64 %i.105769, !dbg !2897
  store double %495, ptr %arrayidx2515, align 8, !dbg !2898, !tbaa !1126
  %green2518 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 1, !dbg !2899
  %496 = load double, ptr %green2518, align 8, !dbg !2899, !tbaa !1961
  %arrayidx2521 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 3, i64 %i.105769, !dbg !2900
  store double %496, ptr %arrayidx2521, align 8, !dbg !2901, !tbaa !1126
  %blue2524 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 2, !dbg !2902
  %497 = load double, ptr %blue2524, align 8, !dbg !2902, !tbaa !1979
  %arrayidx2527 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 3, i64 %i.105769, !dbg !2903
  store double %497, ptr %arrayidx2527, align 8, !dbg !2904, !tbaa !1126
  %498 = load i32, ptr %colorspace159, align 4, !dbg !2905, !tbaa !1633
  %cmp2529 = icmp eq i32 %498, 12, !dbg !2907
  br i1 %cmp2529, label %if.then2531, label %if.end2538, !dbg !2908

if.then2531:                                      ; preds = %for.end2510
  %index2534 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 4, !dbg !2909
  %499 = load double, ptr %index2534, align 8, !dbg !2909, !tbaa !2002
  store double %499, ptr %arrayidx2515, align 8, !dbg !2910, !tbaa !1126
  br label %if.end2538, !dbg !2911

if.end2538:                                       ; preds = %if.then2531, %for.end2510
  %500 = load i32, ptr %matte177, align 8, !dbg !2912, !tbaa !1634
  %cmp2540.not = icmp eq i32 %500, 0, !dbg !2914
  br i1 %cmp2540.not, label %if.end2549, label %if.then2542, !dbg !2915

if.then2542:                                      ; preds = %if.end2538
  %opacity2545 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.105769, i32 3, !dbg !2916
  %501 = load double, ptr %opacity2545, align 8, !dbg !2916, !tbaa !2024
  store double %501, ptr %arrayidx2515, align 8, !dbg !2917, !tbaa !1126
  br label %if.end2549, !dbg !2918

if.end2549:                                       ; preds = %if.then2542, %if.end2538
  %inc2551 = add nuw nsw i64 %i.105769, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %inc2551, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5838.not = icmp eq i64 %inc2551, 4, !dbg !2920
  br i1 %exitcond5838.not, label %for.end2552, label %for.cond1974.preheader, !dbg !2147, !llvm.loop !2921

for.end2552:                                      ; preds = %if.end2549
  %call2553 = call ptr @ResetMagickMemory(ptr noundef nonnull %variance, i32 noundef 0, i64 noundef 160) #13, !dbg !2923
  %call2554 = call ptr @ResetMagickMemory(ptr noundef nonnull %sum_squares, i32 noundef 0, i64 noundef 160) #13, !dbg !2924
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  %conv2927 = uitofp i32 %number_grays.3 to double
  %mul2929 = fmul double %conv2927, %conv2927
  %mul2946 = fmul double %mul2929, %conv2927
  %mul2948 = fmul double %mul2946, %conv2927
  br label %for.cond2560.preheader, !dbg !2925

for.cond2560.preheader:                           ; preds = %for.end2552, %if.end3298
  %i.115775 = phi i64 [ 0, %for.end2552 ], [ %inc3300, %if.end3298 ]
  call void @llvm.dbg.value(metadata i64 %i.115775, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !2926
  br i1 %cmp3605713.not, label %for.end2926, label %for.body2564.lr.ph, !dbg !2927

for.body2564.lr.ph:                               ; preds = %for.cond2560.preheader
  %arrayidx2570 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775
  %green2579 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 1
  %blue2587 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 2
  %index2599 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 4
  %opacity2612 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 3
  %arrayidx2625 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775
  %green2638 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 1
  %blue2650 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 2
  %index2666 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 4
  %opacity2683 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 3
  %arrayidx2696 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 10, i64 %i.115775
  %arrayidx2710 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 10, i64 %i.115775
  %arrayidx2724 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 10, i64 %i.115775
  %arrayidx2742 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 10, i64 %i.115775
  %arrayidx2761 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 10, i64 %i.115775
  %arrayidx2775 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775
  %green2790 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 1
  %blue2804 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 2
  %index2822 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 4
  %opacity2841 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 3
  %arrayidx2855 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775
  %green2870 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 1
  %blue2884 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 2
  %index2902 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 4
  %opacity2921 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 3
  br label %for.body2564, !dbg !2927

for.body2564:                                     ; preds = %for.body2564.lr.ph, %for.inc2924
  %x2559.05774 = phi i64 [ 0, %for.body2564.lr.ph ], [ %inc2925, %for.inc2924 ]
  call void @llvm.dbg.value(metadata i64 %x2559.05774, metadata !917, metadata !DIExpression()), !dbg !2926
  %arrayidx2565 = getelementptr inbounds %struct._ChannelStatistics, ptr %call242, i64 %x2559.05774, !dbg !2929
  %arrayidx2567 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2565, i64 0, i64 %i.115775, !dbg !2929
  %502 = load double, ptr %arrayidx2567, align 8, !dbg !2932, !tbaa !1944
  %503 = load double, ptr %arrayidx2570, align 8, !dbg !2933, !tbaa !1944
  %add2572 = fadd double %502, %503, !dbg !2933
  store double %add2572, ptr %arrayidx2570, align 8, !dbg !2933, !tbaa !1944
  %green2576 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 1, !dbg !2934
  %504 = load double, ptr %green2576, align 8, !dbg !2934, !tbaa !1961
  %505 = load double, ptr %green2579, align 8, !dbg !2935, !tbaa !1961
  %add2580 = fadd double %504, %505, !dbg !2935
  store double %add2580, ptr %green2579, align 8, !dbg !2935, !tbaa !1961
  %blue2584 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 2, !dbg !2936
  %506 = load double, ptr %blue2584, align 8, !dbg !2936, !tbaa !1979
  %507 = load double, ptr %blue2587, align 8, !dbg !2937, !tbaa !1979
  %add2588 = fadd double %506, %507, !dbg !2937
  store double %add2588, ptr %blue2587, align 8, !dbg !2937, !tbaa !1979
  %508 = load i32, ptr %colorspace159, align 4, !dbg !2938, !tbaa !1633
  %cmp2590 = icmp eq i32 %508, 12, !dbg !2940
  br i1 %cmp2590, label %if.then2592, label %if.end2601, !dbg !2941

if.then2592:                                      ; preds = %for.body2564
  %index2596 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 4, !dbg !2942
  %509 = load double, ptr %index2596, align 8, !dbg !2942, !tbaa !2002
  %510 = load double, ptr %index2599, align 8, !dbg !2943, !tbaa !2002
  %add2600 = fadd double %509, %510, !dbg !2943
  store double %add2600, ptr %index2599, align 8, !dbg !2943, !tbaa !2002
  br label %if.end2601, !dbg !2944

if.end2601:                                       ; preds = %if.then2592, %for.body2564
  %511 = load i32, ptr %matte177, align 8, !dbg !2945, !tbaa !1634
  %cmp2603.not = icmp eq i32 %511, 0, !dbg !2947
  br i1 %cmp2603.not, label %if.end2614, label %if.then2605, !dbg !2948

if.then2605:                                      ; preds = %if.end2601
  %opacity2609 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 3, !dbg !2949
  %512 = load double, ptr %opacity2609, align 8, !dbg !2949, !tbaa !2024
  %513 = load double, ptr %opacity2612, align 8, !dbg !2950, !tbaa !2024
  %add2613 = fadd double %512, %513, !dbg !2950
  store double %add2613, ptr %opacity2612, align 8, !dbg !2950, !tbaa !2024
  br label %if.end2614, !dbg !2951

if.end2614:                                       ; preds = %if.then2605, %if.end2601
  %514 = load double, ptr %arrayidx2567, align 8, !dbg !2952, !tbaa !1944
  %515 = load double, ptr %arrayidx2625, align 8, !dbg !2953, !tbaa !1944
  %516 = call double @llvm.fmuladd.f64(double %514, double %514, double %515), !dbg !2953
  store double %516, ptr %arrayidx2625, align 8, !dbg !2953, !tbaa !1944
  %517 = load double, ptr %green2576, align 8, !dbg !2954, !tbaa !1961
  %518 = load double, ptr %green2638, align 8, !dbg !2955, !tbaa !1961
  %519 = call double @llvm.fmuladd.f64(double %517, double %517, double %518), !dbg !2955
  store double %519, ptr %green2638, align 8, !dbg !2955, !tbaa !1961
  %520 = load double, ptr %blue2584, align 8, !dbg !2956, !tbaa !1979
  %521 = load double, ptr %blue2650, align 8, !dbg !2957, !tbaa !1979
  %522 = call double @llvm.fmuladd.f64(double %520, double %520, double %521), !dbg !2957
  store double %522, ptr %blue2650, align 8, !dbg !2957, !tbaa !1979
  br i1 %cmp2590, label %if.then2654, label %if.end2667, !dbg !2958

if.then2654:                                      ; preds = %if.end2614
  %index2658 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 4, !dbg !2959
  %523 = load double, ptr %index2658, align 8, !dbg !2959, !tbaa !2002
  %524 = load double, ptr %index2666, align 8, !dbg !2961, !tbaa !2002
  %525 = call double @llvm.fmuladd.f64(double %523, double %523, double %524), !dbg !2961
  store double %525, ptr %index2666, align 8, !dbg !2961, !tbaa !2002
  br label %if.end2667, !dbg !2962

if.end2667:                                       ; preds = %if.then2654, %if.end2614
  br i1 %cmp2603.not, label %if.end2684, label %if.then2671, !dbg !2963

if.then2671:                                      ; preds = %if.end2667
  %opacity2675 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 3, !dbg !2964
  %526 = load double, ptr %opacity2675, align 8, !dbg !2964, !tbaa !2024
  %527 = load double, ptr %opacity2683, align 8, !dbg !2966, !tbaa !2024
  %528 = call double @llvm.fmuladd.f64(double %526, double %526, double %527), !dbg !2966
  store double %528, ptr %opacity2683, align 8, !dbg !2966, !tbaa !2024
  br label %if.end2684, !dbg !2967

if.end2684:                                       ; preds = %if.then2671, %if.end2667
  %529 = load double, ptr %arrayidx2567, align 8, !dbg !2968, !tbaa !1944
  call void @llvm.dbg.value(metadata double %529, metadata !2175, metadata !DIExpression()) #13, !dbg !2969
  %530 = call double @llvm.fabs.f64(double %529) #13, !dbg !2971
  %cmp.i5604 = fcmp olt double %530, 0x3DA5FD7FE1796495, !dbg !2972
  br i1 %cmp.i5604, label %MagickLog10.exit5608, label %if.end.i5606, !dbg !2973

if.end.i5606:                                     ; preds = %if.end2684
  %call1.i5605 = call double @log10(double noundef %530) #13, !dbg !2974
  br label %MagickLog10.exit5608, !dbg !2975

MagickLog10.exit5608:                             ; preds = %if.end2684, %if.end.i5606
  %retval.0.i5607 = phi double [ %call1.i5605, %if.end.i5606 ], [ -1.100000e+01, %if.end2684 ], !dbg !2969
  %531 = load double, ptr %arrayidx2696, align 8, !dbg !2976, !tbaa !1126
  %neg2697 = fneg double %529, !dbg !2976
  %532 = call double @llvm.fmuladd.f64(double %neg2697, double %retval.0.i5607, double %531), !dbg !2976
  store double %532, ptr %arrayidx2696, align 8, !dbg !2976, !tbaa !1126
  %533 = load double, ptr %green2576, align 8, !dbg !2977, !tbaa !1961
  call void @llvm.dbg.value(metadata double %533, metadata !2175, metadata !DIExpression()) #13, !dbg !2978
  %534 = call double @llvm.fabs.f64(double %533) #13, !dbg !2980
  %cmp.i5609 = fcmp olt double %534, 0x3DA5FD7FE1796495, !dbg !2981
  br i1 %cmp.i5609, label %MagickLog10.exit5613, label %if.end.i5611, !dbg !2982

if.end.i5611:                                     ; preds = %MagickLog10.exit5608
  %call1.i5610 = call double @log10(double noundef %534) #13, !dbg !2983
  br label %MagickLog10.exit5613, !dbg !2984

MagickLog10.exit5613:                             ; preds = %MagickLog10.exit5608, %if.end.i5611
  %retval.0.i5612 = phi double [ %call1.i5610, %if.end.i5611 ], [ -1.100000e+01, %MagickLog10.exit5608 ], !dbg !2978
  %535 = load double, ptr %arrayidx2710, align 8, !dbg !2985, !tbaa !1126
  %neg2711 = fneg double %533, !dbg !2985
  %536 = call double @llvm.fmuladd.f64(double %neg2711, double %retval.0.i5612, double %535), !dbg !2985
  store double %536, ptr %arrayidx2710, align 8, !dbg !2985, !tbaa !1126
  %537 = load double, ptr %blue2584, align 8, !dbg !2986, !tbaa !1979
  call void @llvm.dbg.value(metadata double %537, metadata !2175, metadata !DIExpression()) #13, !dbg !2987
  %538 = call double @llvm.fabs.f64(double %537) #13, !dbg !2989
  %cmp.i5614 = fcmp olt double %538, 0x3DA5FD7FE1796495, !dbg !2990
  br i1 %cmp.i5614, label %MagickLog10.exit5618, label %if.end.i5616, !dbg !2991

if.end.i5616:                                     ; preds = %MagickLog10.exit5613
  %call1.i5615 = call double @log10(double noundef %538) #13, !dbg !2992
  br label %MagickLog10.exit5618, !dbg !2993

MagickLog10.exit5618:                             ; preds = %MagickLog10.exit5613, %if.end.i5616
  %retval.0.i5617 = phi double [ %call1.i5615, %if.end.i5616 ], [ -1.100000e+01, %MagickLog10.exit5613 ], !dbg !2987
  %539 = load double, ptr %arrayidx2724, align 8, !dbg !2994, !tbaa !1126
  %neg2725 = fneg double %537, !dbg !2994
  %540 = call double @llvm.fmuladd.f64(double %neg2725, double %retval.0.i5617, double %539), !dbg !2994
  store double %540, ptr %arrayidx2724, align 8, !dbg !2994, !tbaa !1126
  %541 = load i32, ptr %colorspace159, align 4, !dbg !2995, !tbaa !1633
  %cmp2727 = icmp eq i32 %541, 12, !dbg !2997
  br i1 %cmp2727, label %if.then2729, label %if.end2744, !dbg !2998

if.then2729:                                      ; preds = %MagickLog10.exit5618
  %index2733 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 4, !dbg !2999
  %542 = load double, ptr %index2733, align 8, !dbg !2999, !tbaa !2002
  call void @llvm.dbg.value(metadata double %542, metadata !2175, metadata !DIExpression()) #13, !dbg !3000
  %543 = call double @llvm.fabs.f64(double %542) #13, !dbg !3002
  %cmp.i5619 = fcmp olt double %543, 0x3DA5FD7FE1796495, !dbg !3003
  br i1 %cmp.i5619, label %MagickLog10.exit5623, label %if.end.i5621, !dbg !3004

if.end.i5621:                                     ; preds = %if.then2729
  %call1.i5620 = call double @log10(double noundef %543) #13, !dbg !3005
  br label %MagickLog10.exit5623, !dbg !3006

MagickLog10.exit5623:                             ; preds = %if.then2729, %if.end.i5621
  %retval.0.i5622 = phi double [ %call1.i5620, %if.end.i5621 ], [ -1.100000e+01, %if.then2729 ], !dbg !3000
  %544 = load double, ptr %arrayidx2742, align 8, !dbg !3007, !tbaa !1126
  %neg2743 = fneg double %542, !dbg !3007
  %545 = call double @llvm.fmuladd.f64(double %neg2743, double %retval.0.i5622, double %544), !dbg !3007
  store double %545, ptr %arrayidx2742, align 8, !dbg !3007, !tbaa !1126
  br label %if.end2744, !dbg !3008

if.end2744:                                       ; preds = %MagickLog10.exit5623, %MagickLog10.exit5618
  %546 = load i32, ptr %matte177, align 8, !dbg !3009, !tbaa !1634
  %cmp2746.not = icmp eq i32 %546, 0, !dbg !3011
  br i1 %cmp2746.not, label %if.end2763, label %if.then2748, !dbg !3012

if.then2748:                                      ; preds = %if.end2744
  %opacity2752 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2567, i64 0, i32 3, !dbg !3013
  %547 = load double, ptr %opacity2752, align 8, !dbg !3013, !tbaa !2024
  call void @llvm.dbg.value(metadata double %547, metadata !2175, metadata !DIExpression()) #13, !dbg !3014
  %548 = call double @llvm.fabs.f64(double %547) #13, !dbg !3016
  %cmp.i5624 = fcmp olt double %548, 0x3DA5FD7FE1796495, !dbg !3017
  br i1 %cmp.i5624, label %MagickLog10.exit5628, label %if.end.i5626, !dbg !3018

if.end.i5626:                                     ; preds = %if.then2748
  %call1.i5625 = call double @log10(double noundef %548) #13, !dbg !3019
  br label %MagickLog10.exit5628, !dbg !3020

MagickLog10.exit5628:                             ; preds = %if.then2748, %if.end.i5626
  %retval.0.i5627 = phi double [ %call1.i5625, %if.end.i5626 ], [ -1.100000e+01, %if.then2748 ], !dbg !3014
  %549 = load double, ptr %arrayidx2761, align 8, !dbg !3021, !tbaa !1126
  %neg2762 = fneg double %547, !dbg !3021
  %550 = call double @llvm.fmuladd.f64(double %neg2762, double %retval.0.i5627, double %549), !dbg !3021
  store double %550, ptr %arrayidx2761, align 8, !dbg !3021, !tbaa !1126
  br label %if.end2763, !dbg !3022

if.end2763:                                       ; preds = %MagickLog10.exit5628, %if.end2744
  %arrayidx2764 = getelementptr inbounds %struct._ChannelStatistics, ptr %call238, i64 %x2559.05774, !dbg !3023
  %arrayidx2766 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2764, i64 0, i64 %i.115775, !dbg !3023
  %551 = load double, ptr %arrayidx2766, align 8, !dbg !3024, !tbaa !1944
  call void @llvm.dbg.value(metadata double %551, metadata !2175, metadata !DIExpression()) #13, !dbg !3025
  %552 = call double @llvm.fabs.f64(double %551) #13, !dbg !3027
  %cmp.i5629 = fcmp olt double %552, 0x3DA5FD7FE1796495, !dbg !3028
  br i1 %cmp.i5629, label %MagickLog10.exit5633, label %if.end.i5631, !dbg !3029

if.end.i5631:                                     ; preds = %if.end2763
  %call1.i5630 = call double @log10(double noundef %552) #13, !dbg !3030
  br label %MagickLog10.exit5633, !dbg !3031

MagickLog10.exit5633:                             ; preds = %if.end2763, %if.end.i5631
  %retval.0.i5632 = phi double [ %call1.i5630, %if.end.i5631 ], [ -1.100000e+01, %if.end2763 ], !dbg !3025
  %553 = load double, ptr %arrayidx2775, align 8, !dbg !3032, !tbaa !1944
  %neg2777 = fneg double %551, !dbg !3032
  %554 = call double @llvm.fmuladd.f64(double %neg2777, double %retval.0.i5632, double %553), !dbg !3032
  store double %554, ptr %arrayidx2775, align 8, !dbg !3032, !tbaa !1944
  %green2781 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2766, i64 0, i32 1, !dbg !3033
  %555 = load double, ptr %green2781, align 8, !dbg !3033, !tbaa !1961
  call void @llvm.dbg.value(metadata double %555, metadata !2175, metadata !DIExpression()) #13, !dbg !3034
  %556 = call double @llvm.fabs.f64(double %555) #13, !dbg !3036
  %cmp.i5634 = fcmp olt double %556, 0x3DA5FD7FE1796495, !dbg !3037
  br i1 %cmp.i5634, label %MagickLog10.exit5638, label %if.end.i5636, !dbg !3038

if.end.i5636:                                     ; preds = %MagickLog10.exit5633
  %call1.i5635 = call double @log10(double noundef %556) #13, !dbg !3039
  br label %MagickLog10.exit5638, !dbg !3040

MagickLog10.exit5638:                             ; preds = %MagickLog10.exit5633, %if.end.i5636
  %retval.0.i5637 = phi double [ %call1.i5635, %if.end.i5636 ], [ -1.100000e+01, %MagickLog10.exit5633 ], !dbg !3034
  %557 = load double, ptr %green2790, align 8, !dbg !3041, !tbaa !1961
  %neg2791 = fneg double %555, !dbg !3041
  %558 = call double @llvm.fmuladd.f64(double %neg2791, double %retval.0.i5637, double %557), !dbg !3041
  store double %558, ptr %green2790, align 8, !dbg !3041, !tbaa !1961
  %blue2795 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2766, i64 0, i32 2, !dbg !3042
  %559 = load double, ptr %blue2795, align 8, !dbg !3042, !tbaa !1979
  call void @llvm.dbg.value(metadata double %559, metadata !2175, metadata !DIExpression()) #13, !dbg !3043
  %560 = call double @llvm.fabs.f64(double %559) #13, !dbg !3045
  %cmp.i5639 = fcmp olt double %560, 0x3DA5FD7FE1796495, !dbg !3046
  br i1 %cmp.i5639, label %MagickLog10.exit5643, label %if.end.i5641, !dbg !3047

if.end.i5641:                                     ; preds = %MagickLog10.exit5638
  %call1.i5640 = call double @log10(double noundef %560) #13, !dbg !3048
  br label %MagickLog10.exit5643, !dbg !3049

MagickLog10.exit5643:                             ; preds = %MagickLog10.exit5638, %if.end.i5641
  %retval.0.i5642 = phi double [ %call1.i5640, %if.end.i5641 ], [ -1.100000e+01, %MagickLog10.exit5638 ], !dbg !3043
  %561 = load double, ptr %blue2804, align 8, !dbg !3050, !tbaa !1979
  %neg2805 = fneg double %559, !dbg !3050
  %562 = call double @llvm.fmuladd.f64(double %neg2805, double %retval.0.i5642, double %561), !dbg !3050
  store double %562, ptr %blue2804, align 8, !dbg !3050, !tbaa !1979
  %563 = load i32, ptr %colorspace159, align 4, !dbg !3051, !tbaa !1633
  %cmp2807 = icmp eq i32 %563, 12, !dbg !3053
  br i1 %cmp2807, label %if.then2809, label %if.end2824, !dbg !3054

if.then2809:                                      ; preds = %MagickLog10.exit5643
  %index2813 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2766, i64 0, i32 4, !dbg !3055
  %564 = load double, ptr %index2813, align 8, !dbg !3055, !tbaa !2002
  call void @llvm.dbg.value(metadata double %564, metadata !2175, metadata !DIExpression()) #13, !dbg !3056
  %565 = call double @llvm.fabs.f64(double %564) #13, !dbg !3058
  %cmp.i5644 = fcmp olt double %565, 0x3DA5FD7FE1796495, !dbg !3059
  br i1 %cmp.i5644, label %MagickLog10.exit5648, label %if.end.i5646, !dbg !3060

if.end.i5646:                                     ; preds = %if.then2809
  %call1.i5645 = call double @log10(double noundef %565) #13, !dbg !3061
  br label %MagickLog10.exit5648, !dbg !3062

MagickLog10.exit5648:                             ; preds = %if.then2809, %if.end.i5646
  %retval.0.i5647 = phi double [ %call1.i5645, %if.end.i5646 ], [ -1.100000e+01, %if.then2809 ], !dbg !3056
  %566 = load double, ptr %index2822, align 8, !dbg !3063, !tbaa !2002
  %neg2823 = fneg double %564, !dbg !3063
  %567 = call double @llvm.fmuladd.f64(double %neg2823, double %retval.0.i5647, double %566), !dbg !3063
  store double %567, ptr %index2822, align 8, !dbg !3063, !tbaa !2002
  br label %if.end2824, !dbg !3064

if.end2824:                                       ; preds = %MagickLog10.exit5648, %MagickLog10.exit5643
  %568 = load i32, ptr %matte177, align 8, !dbg !3065, !tbaa !1634
  %cmp2826.not = icmp eq i32 %568, 0, !dbg !3067
  br i1 %cmp2826.not, label %if.end2843, label %if.then2828, !dbg !3068

if.then2828:                                      ; preds = %if.end2824
  %opacity2832 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2766, i64 0, i32 3, !dbg !3069
  %569 = load double, ptr %opacity2832, align 8, !dbg !3069, !tbaa !2024
  call void @llvm.dbg.value(metadata double %569, metadata !2175, metadata !DIExpression()) #13, !dbg !3070
  %570 = call double @llvm.fabs.f64(double %569) #13, !dbg !3072
  %cmp.i5649 = fcmp olt double %570, 0x3DA5FD7FE1796495, !dbg !3073
  br i1 %cmp.i5649, label %MagickLog10.exit5653, label %if.end.i5651, !dbg !3074

if.end.i5651:                                     ; preds = %if.then2828
  %call1.i5650 = call double @log10(double noundef %570) #13, !dbg !3075
  br label %MagickLog10.exit5653, !dbg !3076

MagickLog10.exit5653:                             ; preds = %if.then2828, %if.end.i5651
  %retval.0.i5652 = phi double [ %call1.i5650, %if.end.i5651 ], [ -1.100000e+01, %if.then2828 ], !dbg !3070
  %571 = load double, ptr %opacity2841, align 8, !dbg !3077, !tbaa !2024
  %neg2842 = fneg double %569, !dbg !3077
  %572 = call double @llvm.fmuladd.f64(double %neg2842, double %retval.0.i5652, double %571), !dbg !3077
  store double %572, ptr %opacity2841, align 8, !dbg !3077, !tbaa !2024
  br label %if.end2843, !dbg !3078

if.end2843:                                       ; preds = %MagickLog10.exit5653, %if.end2824
  %arrayidx2844 = getelementptr inbounds %struct._ChannelStatistics, ptr %call246, i64 %x2559.05774, !dbg !3079
  %arrayidx2846 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx2844, i64 0, i64 %i.115775, !dbg !3079
  %573 = load double, ptr %arrayidx2846, align 8, !dbg !3080, !tbaa !1944
  call void @llvm.dbg.value(metadata double %573, metadata !2175, metadata !DIExpression()) #13, !dbg !3081
  %574 = call double @llvm.fabs.f64(double %573) #13, !dbg !3083
  %cmp.i5654 = fcmp olt double %574, 0x3DA5FD7FE1796495, !dbg !3084
  br i1 %cmp.i5654, label %MagickLog10.exit5658, label %if.end.i5656, !dbg !3085

if.end.i5656:                                     ; preds = %if.end2843
  %call1.i5655 = call double @log10(double noundef %574) #13, !dbg !3086
  br label %MagickLog10.exit5658, !dbg !3087

MagickLog10.exit5658:                             ; preds = %if.end2843, %if.end.i5656
  %retval.0.i5657 = phi double [ %call1.i5655, %if.end.i5656 ], [ -1.100000e+01, %if.end2843 ], !dbg !3081
  %575 = load double, ptr %arrayidx2855, align 8, !dbg !3088, !tbaa !1944
  %neg2857 = fneg double %573, !dbg !3088
  %576 = call double @llvm.fmuladd.f64(double %neg2857, double %retval.0.i5657, double %575), !dbg !3088
  store double %576, ptr %arrayidx2855, align 8, !dbg !3088, !tbaa !1944
  %green2861 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2846, i64 0, i32 1, !dbg !3089
  %577 = load double, ptr %green2861, align 8, !dbg !3089, !tbaa !1961
  call void @llvm.dbg.value(metadata double %577, metadata !2175, metadata !DIExpression()) #13, !dbg !3090
  %578 = call double @llvm.fabs.f64(double %577) #13, !dbg !3092
  %cmp.i5659 = fcmp olt double %578, 0x3DA5FD7FE1796495, !dbg !3093
  br i1 %cmp.i5659, label %MagickLog10.exit5663, label %if.end.i5661, !dbg !3094

if.end.i5661:                                     ; preds = %MagickLog10.exit5658
  %call1.i5660 = call double @log10(double noundef %578) #13, !dbg !3095
  br label %MagickLog10.exit5663, !dbg !3096

MagickLog10.exit5663:                             ; preds = %MagickLog10.exit5658, %if.end.i5661
  %retval.0.i5662 = phi double [ %call1.i5660, %if.end.i5661 ], [ -1.100000e+01, %MagickLog10.exit5658 ], !dbg !3090
  %579 = load double, ptr %green2870, align 8, !dbg !3097, !tbaa !1961
  %neg2871 = fneg double %577, !dbg !3097
  %580 = call double @llvm.fmuladd.f64(double %neg2871, double %retval.0.i5662, double %579), !dbg !3097
  store double %580, ptr %green2870, align 8, !dbg !3097, !tbaa !1961
  %blue2875 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2846, i64 0, i32 2, !dbg !3098
  %581 = load double, ptr %blue2875, align 8, !dbg !3098, !tbaa !1979
  call void @llvm.dbg.value(metadata double %581, metadata !2175, metadata !DIExpression()) #13, !dbg !3099
  %582 = call double @llvm.fabs.f64(double %581) #13, !dbg !3101
  %cmp.i5664 = fcmp olt double %582, 0x3DA5FD7FE1796495, !dbg !3102
  br i1 %cmp.i5664, label %MagickLog10.exit5668, label %if.end.i5666, !dbg !3103

if.end.i5666:                                     ; preds = %MagickLog10.exit5663
  %call1.i5665 = call double @log10(double noundef %582) #13, !dbg !3104
  br label %MagickLog10.exit5668, !dbg !3105

MagickLog10.exit5668:                             ; preds = %MagickLog10.exit5663, %if.end.i5666
  %retval.0.i5667 = phi double [ %call1.i5665, %if.end.i5666 ], [ -1.100000e+01, %MagickLog10.exit5663 ], !dbg !3099
  %583 = load double, ptr %blue2884, align 8, !dbg !3106, !tbaa !1979
  %neg2885 = fneg double %581, !dbg !3106
  %584 = call double @llvm.fmuladd.f64(double %neg2885, double %retval.0.i5667, double %583), !dbg !3106
  store double %584, ptr %blue2884, align 8, !dbg !3106, !tbaa !1979
  %585 = load i32, ptr %colorspace159, align 4, !dbg !3107, !tbaa !1633
  %cmp2887 = icmp eq i32 %585, 12, !dbg !3109
  br i1 %cmp2887, label %if.then2889, label %if.end2904, !dbg !3110

if.then2889:                                      ; preds = %MagickLog10.exit5668
  %index2893 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2846, i64 0, i32 4, !dbg !3111
  %586 = load double, ptr %index2893, align 8, !dbg !3111, !tbaa !2002
  call void @llvm.dbg.value(metadata double %586, metadata !2175, metadata !DIExpression()) #13, !dbg !3112
  %587 = call double @llvm.fabs.f64(double %586) #13, !dbg !3114
  %cmp.i5669 = fcmp olt double %587, 0x3DA5FD7FE1796495, !dbg !3115
  br i1 %cmp.i5669, label %MagickLog10.exit5673, label %if.end.i5671, !dbg !3116

if.end.i5671:                                     ; preds = %if.then2889
  %call1.i5670 = call double @log10(double noundef %587) #13, !dbg !3117
  br label %MagickLog10.exit5673, !dbg !3118

MagickLog10.exit5673:                             ; preds = %if.then2889, %if.end.i5671
  %retval.0.i5672 = phi double [ %call1.i5670, %if.end.i5671 ], [ -1.100000e+01, %if.then2889 ], !dbg !3112
  %588 = load double, ptr %index2902, align 8, !dbg !3119, !tbaa !2002
  %neg2903 = fneg double %586, !dbg !3119
  %589 = call double @llvm.fmuladd.f64(double %neg2903, double %retval.0.i5672, double %588), !dbg !3119
  store double %589, ptr %index2902, align 8, !dbg !3119, !tbaa !2002
  br label %if.end2904, !dbg !3120

if.end2904:                                       ; preds = %MagickLog10.exit5673, %MagickLog10.exit5668
  %590 = load i32, ptr %matte177, align 8, !dbg !3121, !tbaa !1634
  %cmp2906.not = icmp eq i32 %590, 0, !dbg !3123
  br i1 %cmp2906.not, label %for.inc2924, label %if.then2908, !dbg !3124

if.then2908:                                      ; preds = %if.end2904
  %opacity2912 = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx2846, i64 0, i32 3, !dbg !3125
  %591 = load double, ptr %opacity2912, align 8, !dbg !3125, !tbaa !2024
  call void @llvm.dbg.value(metadata double %591, metadata !2175, metadata !DIExpression()) #13, !dbg !3126
  %592 = call double @llvm.fabs.f64(double %591) #13, !dbg !3128
  %cmp.i5674 = fcmp olt double %592, 0x3DA5FD7FE1796495, !dbg !3129
  br i1 %cmp.i5674, label %MagickLog10.exit5678, label %if.end.i5676, !dbg !3130

if.end.i5676:                                     ; preds = %if.then2908
  %call1.i5675 = call double @log10(double noundef %592) #13, !dbg !3131
  br label %MagickLog10.exit5678, !dbg !3132

MagickLog10.exit5678:                             ; preds = %if.then2908, %if.end.i5676
  %retval.0.i5677 = phi double [ %call1.i5675, %if.end.i5676 ], [ -1.100000e+01, %if.then2908 ], !dbg !3126
  %593 = load double, ptr %opacity2921, align 8, !dbg !3133, !tbaa !2024
  %neg2922 = fneg double %591, !dbg !3133
  %594 = call double @llvm.fmuladd.f64(double %neg2922, double %retval.0.i5677, double %593), !dbg !3133
  store double %594, ptr %opacity2921, align 8, !dbg !3133, !tbaa !2024
  br label %for.inc2924, !dbg !3134

for.inc2924:                                      ; preds = %if.end2904, %MagickLog10.exit5678
  %inc2925 = add nuw nsw i64 %x2559.05774, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %inc2925, metadata !917, metadata !DIExpression()), !dbg !2926
  %exitcond5839.not = icmp eq i64 %inc2925, %conv233, !dbg !3136
  br i1 %exitcond5839.not, label %for.end2926, label %for.body2564, !dbg !2927, !llvm.loop !3137

for.end2926:                                      ; preds = %for.inc2924, %for.cond2560.preheader
  %arrayidx2931 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, !dbg !3139
  %595 = load double, ptr %arrayidx2931, align 8, !dbg !3140, !tbaa !1944
  %arrayidx2935 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, !dbg !3141
  %596 = load double, ptr %arrayidx2935, align 8, !dbg !3142, !tbaa !1944
  %597 = fneg double %596, !dbg !3143
  %neg2941 = fmul double %596, %597, !dbg !3143
  %598 = call double @llvm.fmuladd.f64(double %mul2929, double %595, double %neg2941), !dbg !3143
  %div2949 = fdiv double %598, %mul2948, !dbg !3144
  %arrayidx2951 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 9, i64 %i.115775, !dbg !3145
  store double %div2949, ptr %arrayidx2951, align 8, !dbg !3146, !tbaa !1126
  %green2957 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 1, !dbg !3147
  %599 = load double, ptr %green2957, align 8, !dbg !3147, !tbaa !1961
  %green2961 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 1, !dbg !3148
  %600 = load double, ptr %green2961, align 8, !dbg !3148, !tbaa !1961
  %601 = fneg double %600, !dbg !3149
  %neg2966 = fmul double %600, %601, !dbg !3149
  %602 = call double @llvm.fmuladd.f64(double %mul2929, double %599, double %neg2966), !dbg !3149
  %div2974 = fdiv double %602, %mul2948, !dbg !3150
  %arrayidx2977 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 9, i64 %i.115775, !dbg !3151
  store double %div2974, ptr %arrayidx2977, align 8, !dbg !3152, !tbaa !1126
  %blue2983 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 2, !dbg !3153
  %603 = load double, ptr %blue2983, align 8, !dbg !3153, !tbaa !1979
  %blue2987 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 2, !dbg !3154
  %604 = load double, ptr %blue2987, align 8, !dbg !3154, !tbaa !1979
  %605 = fneg double %604, !dbg !3155
  %neg2992 = fmul double %604, %605, !dbg !3155
  %606 = call double @llvm.fmuladd.f64(double %mul2929, double %603, double %neg2992), !dbg !3155
  %div3000 = fdiv double %606, %mul2948, !dbg !3156
  %arrayidx3003 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 9, i64 %i.115775, !dbg !3157
  store double %div3000, ptr %arrayidx3003, align 8, !dbg !3158, !tbaa !1126
  %607 = load i32, ptr %matte177, align 8, !dbg !3159, !tbaa !1634
  %cmp3005.not = icmp eq i32 %607, 0, !dbg !3161
  br i1 %cmp3005.not, label %if.end3034, label %if.then3007, !dbg !3162

if.then3007:                                      ; preds = %for.end2926
  %opacity3013 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 3, !dbg !3163
  %608 = load double, ptr %opacity3013, align 8, !dbg !3163, !tbaa !2024
  %opacity3017 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 3, !dbg !3164
  %609 = load double, ptr %opacity3017, align 8, !dbg !3164, !tbaa !2024
  %610 = fneg double %609, !dbg !3165
  %neg3022 = fmul double %609, %610, !dbg !3165
  %611 = call double @llvm.fmuladd.f64(double %mul2929, double %608, double %neg3022), !dbg !3165
  %div3030 = fdiv double %611, %mul2948, !dbg !3166
  %arrayidx3033 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 9, i64 %i.115775, !dbg !3167
  store double %div3030, ptr %arrayidx3033, align 8, !dbg !3168, !tbaa !1126
  br label %if.end3034, !dbg !3167

if.end3034:                                       ; preds = %if.then3007, %for.end2926
  %612 = load i32, ptr %colorspace159, align 4, !dbg !3169, !tbaa !1633
  %cmp3036 = icmp eq i32 %612, 12, !dbg !3171
  br i1 %cmp3036, label %if.then3038, label %if.end3065, !dbg !3172

if.then3038:                                      ; preds = %if.end3034
  %index3044 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %sum_squares, i64 0, i64 %i.115775, i32 4, !dbg !3173
  %613 = load double, ptr %index3044, align 8, !dbg !3173, !tbaa !2002
  %index3048 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %variance, i64 0, i64 %i.115775, i32 4, !dbg !3174
  %614 = load double, ptr %index3048, align 8, !dbg !3174, !tbaa !2002
  %615 = fneg double %614, !dbg !3175
  %neg3053 = fmul double %614, %615, !dbg !3175
  %616 = call double @llvm.fmuladd.f64(double %mul2929, double %613, double %neg3053), !dbg !3175
  %div3061 = fdiv double %616, %mul2948, !dbg !3176
  %arrayidx3064 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 9, i64 %i.115775, !dbg !3177
  store double %div3061, ptr %arrayidx3064, align 8, !dbg !3178, !tbaa !1126
  br label %if.end3065, !dbg !3177

if.end3065:                                       ; preds = %if.then3038, %if.end3034
  %arrayidx3067 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, !dbg !3179
  %617 = load double, ptr %arrayidx3067, align 8, !dbg !3180, !tbaa !1944
  %arrayidx3070 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.115775, !dbg !3181
  %618 = load double, ptr %arrayidx3070, align 8, !dbg !3182, !tbaa !1944
  %sub3072 = fsub double %617, %618, !dbg !3183
  %arrayidx3074 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, !dbg !3184
  %619 = load double, ptr %arrayidx3074, align 8, !dbg !3185, !tbaa !1944
  %arrayidx3077 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, !dbg !3186
  %620 = load double, ptr %arrayidx3077, align 8, !dbg !3187, !tbaa !1944
  %cmp3079 = fcmp ogt double %619, %620, !dbg !3188
  %. = select i1 %cmp3079, double %619, double %620, !dbg !3184
  %div3091 = fdiv double %sub3072, %., !dbg !3189
  %arrayidx3093 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 11, i64 %i.115775, !dbg !3190
  store double %div3091, ptr %arrayidx3093, align 8, !dbg !3191, !tbaa !1126
  %green3096 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 1, !dbg !3192
  %621 = load double, ptr %green3096, align 8, !dbg !3192, !tbaa !1961
  %green3099 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.115775, i32 1, !dbg !3193
  %622 = load double, ptr %green3099, align 8, !dbg !3193, !tbaa !1961
  %sub3100 = fsub double %621, %622, !dbg !3194
  %green3103 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 1, !dbg !3195
  %623 = load double, ptr %green3103, align 8, !dbg !3195, !tbaa !1961
  %green3106 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 1, !dbg !3196
  %624 = load double, ptr %green3106, align 8, !dbg !3196, !tbaa !1961
  %cmp3107 = fcmp ogt double %623, %624, !dbg !3197
  br i1 %cmp3107, label %cond.end3117, label %cond.false3113, !dbg !3198

cond.false3113:                                   ; preds = %if.end3065
  br label %cond.end3117, !dbg !3198

cond.end3117:                                     ; preds = %if.end3065, %cond.false3113
  %cond3118 = phi double [ %624, %cond.false3113 ], [ %623, %if.end3065 ], !dbg !3198
  %div3119 = fdiv double %sub3100, %cond3118, !dbg !3199
  %arrayidx3122 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 11, i64 %i.115775, !dbg !3200
  store double %div3119, ptr %arrayidx3122, align 8, !dbg !3201, !tbaa !1126
  %blue3125 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 2, !dbg !3202
  %625 = load double, ptr %blue3125, align 8, !dbg !3202, !tbaa !1979
  %blue3128 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.115775, i32 2, !dbg !3203
  %626 = load double, ptr %blue3128, align 8, !dbg !3203, !tbaa !1979
  %sub3129 = fsub double %625, %626, !dbg !3204
  %blue3132 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 2, !dbg !3205
  %627 = load double, ptr %blue3132, align 8, !dbg !3205, !tbaa !1979
  %blue3135 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 2, !dbg !3206
  %628 = load double, ptr %blue3135, align 8, !dbg !3206, !tbaa !1979
  %cmp3136 = fcmp ogt double %627, %628, !dbg !3207
  %.5458 = select i1 %cmp3136, double %627, double %628, !dbg !3208
  %div3148 = fdiv double %sub3129, %.5458, !dbg !3209
  %arrayidx3151 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 11, i64 %i.115775, !dbg !3210
  store double %div3148, ptr %arrayidx3151, align 8, !dbg !3211, !tbaa !1126
  br i1 %cmp3036, label %if.then3155, label %if.end3185, !dbg !3212

if.then3155:                                      ; preds = %cond.end3117
  %index3158 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 4, !dbg !3213
  %629 = load double, ptr %index3158, align 8, !dbg !3213, !tbaa !2002
  %index3161 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.115775, i32 4, !dbg !3215
  %630 = load double, ptr %index3161, align 8, !dbg !3215, !tbaa !2002
  %sub3162 = fsub double %629, %630, !dbg !3216
  %index3165 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 4, !dbg !3217
  %631 = load double, ptr %index3165, align 8, !dbg !3217, !tbaa !2002
  %index3168 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 4, !dbg !3218
  %632 = load double, ptr %index3168, align 8, !dbg !3218, !tbaa !2002
  %cmp3169 = fcmp ogt double %631, %632, !dbg !3219
  %.5459 = select i1 %cmp3169, double %631, double %632, !dbg !3220
  %div3181 = fdiv double %sub3162, %.5459, !dbg !3221
  %arrayidx3184 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 11, i64 %i.115775, !dbg !3222
  store double %div3181, ptr %arrayidx3184, align 8, !dbg !3223, !tbaa !1126
  br label %if.end3185, !dbg !3222

if.end3185:                                       ; preds = %if.then3155, %cond.end3117
  br i1 %cmp3005.not, label %if.end3219, label %if.then3189, !dbg !3224

if.then3189:                                      ; preds = %if.end3185
  %opacity3192 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 3, !dbg !3225
  %633 = load double, ptr %opacity3192, align 8, !dbg !3225, !tbaa !2024
  %opacity3195 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy1, i64 0, i64 %i.115775, i32 3, !dbg !3227
  %634 = load double, ptr %opacity3195, align 8, !dbg !3227, !tbaa !2024
  %sub3196 = fsub double %633, %634, !dbg !3228
  %opacity3199 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_x, i64 0, i64 %i.115775, i32 3, !dbg !3229
  %635 = load double, ptr %opacity3199, align 8, !dbg !3229, !tbaa !2024
  %opacity3202 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_y, i64 0, i64 %i.115775, i32 3, !dbg !3230
  %636 = load double, ptr %opacity3202, align 8, !dbg !3230, !tbaa !2024
  %cmp3203 = fcmp ogt double %635, %636, !dbg !3231
  %.5460 = select i1 %cmp3203, double %635, double %636, !dbg !3232
  %div3215 = fdiv double %sub3196, %.5460, !dbg !3233
  %arrayidx3218 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 11, i64 %i.115775, !dbg !3234
  store double %div3215, ptr %arrayidx3218, align 8, !dbg !3235, !tbaa !1126
  br label %if.end3219, !dbg !3234

if.end3219:                                       ; preds = %if.then3189, %if.end3185
  %arrayidx3221 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.115775, !dbg !3236
  %637 = load double, ptr %arrayidx3221, align 8, !dbg !3237, !tbaa !1944
  %638 = load double, ptr %arrayidx3067, align 8, !dbg !3238, !tbaa !1944
  %sub3226 = fsub double %637, %638, !dbg !3239
  %mul3227 = fmul double %sub3226, -2.000000e+00, !dbg !3240
  %call3228 = call double @exp(double noundef %mul3227) #13, !dbg !3241
  %sub3229 = fsub double 1.000000e+00, %call3228, !dbg !3242
  %639 = call double @llvm.fabs.f64(double %sub3229), !dbg !3243
  %call3230 = call double @sqrt(double noundef %639) #13, !dbg !3244
  %arrayidx3232 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 12, i64 %i.115775, !dbg !3245
  store double %call3230, ptr %arrayidx3232, align 8, !dbg !3246, !tbaa !1126
  %green3235 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.115775, i32 1, !dbg !3247
  %640 = load double, ptr %green3235, align 8, !dbg !3247, !tbaa !1961
  %641 = load double, ptr %green3096, align 8, !dbg !3248, !tbaa !1961
  %sub3239 = fsub double %640, %641, !dbg !3249
  %mul3240 = fmul double %sub3239, -2.000000e+00, !dbg !3250
  %call3241 = call double @exp(double noundef %mul3240) #13, !dbg !3251
  %sub3242 = fsub double 1.000000e+00, %call3241, !dbg !3252
  %642 = call double @llvm.fabs.f64(double %sub3242), !dbg !3253
  %call3243 = call double @sqrt(double noundef %642) #13, !dbg !3254
  %arrayidx3246 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 12, i64 %i.115775, !dbg !3255
  store double %call3243, ptr %arrayidx3246, align 8, !dbg !3256, !tbaa !1126
  %blue3249 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.115775, i32 2, !dbg !3257
  %643 = load double, ptr %blue3249, align 8, !dbg !3257, !tbaa !1979
  %644 = load double, ptr %blue3125, align 8, !dbg !3258, !tbaa !1979
  %sub3253 = fsub double %643, %644, !dbg !3259
  %mul3254 = fmul double %sub3253, -2.000000e+00, !dbg !3260
  %call3255 = call double @exp(double noundef %mul3254) #13, !dbg !3261
  %sub3256 = fsub double 1.000000e+00, %call3255, !dbg !3262
  %645 = call double @llvm.fabs.f64(double %sub3256), !dbg !3263
  %call3257 = call double @sqrt(double noundef %645) #13, !dbg !3264
  %arrayidx3260 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 12, i64 %i.115775, !dbg !3265
  store double %call3257, ptr %arrayidx3260, align 8, !dbg !3266, !tbaa !1126
  %646 = load i32, ptr %colorspace159, align 4, !dbg !3267, !tbaa !1633
  %cmp3262 = icmp eq i32 %646, 12, !dbg !3269
  br i1 %cmp3262, label %if.then3264, label %if.end3279, !dbg !3270

if.then3264:                                      ; preds = %if.end3219
  %index3267 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.115775, i32 4, !dbg !3271
  %647 = load double, ptr %index3267, align 8, !dbg !3271, !tbaa !2002
  %index3270 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 4, !dbg !3272
  %648 = load double, ptr %index3270, align 8, !dbg !3272, !tbaa !2002
  %sub3271 = fsub double %647, %648, !dbg !3273
  %mul3272 = fmul double %sub3271, -2.000000e+00, !dbg !3274
  %call3273 = call double @exp(double noundef %mul3272) #13, !dbg !3275
  %sub3274 = fsub double 1.000000e+00, %call3273, !dbg !3276
  %649 = call double @llvm.fabs.f64(double %sub3274), !dbg !3277
  %call3275 = call double @sqrt(double noundef %649) #13, !dbg !3278
  %arrayidx3278 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 12, i64 %i.115775, !dbg !3279
  store double %call3275, ptr %arrayidx3278, align 8, !dbg !3280, !tbaa !1126
  br label %if.end3279, !dbg !3279

if.end3279:                                       ; preds = %if.then3264, %if.end3219
  %650 = load i32, ptr %matte177, align 8, !dbg !3281, !tbaa !1634
  %cmp3281.not = icmp eq i32 %650, 0, !dbg !3283
  br i1 %cmp3281.not, label %if.end3298, label %if.then3283, !dbg !3284

if.then3283:                                      ; preds = %if.end3279
  %opacity3286 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy2, i64 0, i64 %i.115775, i32 3, !dbg !3285
  %651 = load double, ptr %opacity3286, align 8, !dbg !3285, !tbaa !2024
  %opacity3289 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %entropy_xy, i64 0, i64 %i.115775, i32 3, !dbg !3286
  %652 = load double, ptr %opacity3289, align 8, !dbg !3286, !tbaa !2024
  %sub3290 = fsub double %651, %652, !dbg !3287
  %mul3291 = fmul double %sub3290, -2.000000e+00, !dbg !3288
  %call3292 = call double @exp(double noundef %mul3291) #13, !dbg !3289
  %sub3293 = fsub double 1.000000e+00, %call3292, !dbg !3290
  %653 = call double @llvm.fabs.f64(double %sub3293), !dbg !3291
  %call3294 = call double @sqrt(double noundef %653) #13, !dbg !3292
  %arrayidx3297 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 12, i64 %i.115775, !dbg !3293
  store double %call3294, ptr %arrayidx3297, align 8, !dbg !3294, !tbaa !1126
  br label %if.end3298, !dbg !3293

if.end3298:                                       ; preds = %if.then3283, %if.end3279
  %inc3300 = add nuw nsw i64 %i.115775, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %inc3300, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5840.not = icmp eq i64 %inc3300, 4, !dbg !3296
  br i1 %exitcond5840.not, label %for.cond3306.preheader, label %for.cond2560.preheader, !dbg !2925, !llvm.loop !3297

for.cond3306.preheader:                           ; preds = %if.end3298, %if.end3624
  %i.125792 = phi i64 [ %inc3626, %if.end3624 ], [ 0, %if.end3298 ]
  call void @llvm.dbg.value(metadata i64 %i.125792, metadata !862, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !921, metadata !DIExpression()), !dbg !3299
  br i1 %cmp3605713.not, label %for.end3595, label %for.body3310.lr.ph, !dbg !3300

for.body3310.lr.ph:                               ; preds = %for.cond3306.preheader
  %arrayidx3338 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %pixel, i64 0, i64 %i.125792
  %green3348 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %pixel, i64 0, i64 %i.125792, i32 1
  %blue3357 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %pixel, i64 0, i64 %i.125792, i32 2
  %index3370 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %pixel, i64 0, i64 %i.125792, i32 4
  %opacity3384 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %pixel, i64 0, i64 %i.125792, i32 3
  %arrayidx3546 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 1, i64 %i.125792
  %arrayidx3555 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 1, i64 %i.125792
  %arrayidx3564 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 1, i64 %i.125792
  %arrayidx3577 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 1, i64 %i.125792
  %arrayidx3591 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 1, i64 %i.125792
  br label %for.body3310.us, !dbg !3300

for.body3310.us:                                  ; preds = %if.end3592.us, %for.body3310.lr.ph
  %z.05790.us = phi i64 [ 0, %for.body3310.lr.ph ], [ %inc3594.us, %if.end3592.us ]
  call void @llvm.dbg.value(metadata i64 %z.05790.us, metadata !921, metadata !DIExpression()), !dbg !3299
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %pixel) #13, !dbg !3301
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !929, metadata !DIExpression()), !dbg !3302
  %call3312.us = call ptr @ResetMagickMemory(ptr noundef nonnull %pixel, i32 noundef 0, i64 noundef 160) #13, !dbg !3303
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()), !dbg !3304
  %arrayidx3388.us = getelementptr inbounds ptr, ptr %call234, i64 %z.05790.us
  %arrayidx3399.us = getelementptr inbounds %struct._ChannelStatistics, ptr %call238, i64 %z.05790.us
  %arrayidx3401.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3399.us, i64 0, i64 %i.125792
  %arrayidx3409.us = getelementptr inbounds ptr, ptr %call248, i64 %z.05790.us
  %green3429.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3401.us, i64 0, i32 1
  %blue3456.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3401.us, i64 0, i32 2
  %index3487.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3401.us, i64 0, i32 4
  %opacity3519.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3401.us, i64 0, i32 3
  %654 = load ptr, ptr %arrayidx3388.us, align 8, !tbaa !1776
  %655 = load ptr, ptr %arrayidx3409.us, align 8, !tbaa !1776
  %656 = load i32, ptr %colorspace159, align 4, !tbaa !1633
  %cmp3470.us.us = icmp eq i32 %656, 12
  %657 = load i32, ptr %matte177, align 8, !tbaa !1634
  %cmp3502.not.us.us = icmp eq i32 %657, 0
  br label %for.cond3319.preheader.us.us, !dbg !3305

if.then3568.us:                                   ; preds = %for.cond3313.for.end3538_crit_edge.split.us.us
  %658 = load double, ptr %index3370, align 8, !dbg !3306, !tbaa !2002
  %659 = load double, ptr %arrayidx3577, align 8, !dbg !3308, !tbaa !1126
  %660 = call double @llvm.fmuladd.f64(double %conv3540.us, double %658, double %659), !dbg !3308
  store double %660, ptr %arrayidx3577, align 8, !dbg !3308, !tbaa !1126
  br label %if.end3578.us, !dbg !3309

if.end3578.us:                                    ; preds = %if.then3568.us, %for.cond3313.for.end3538_crit_edge.split.us.us
  br i1 %cmp3502.not.us.us, label %if.end3592.us, label %if.then3582.us, !dbg !3310

if.then3582.us:                                   ; preds = %if.end3578.us
  %661 = load double, ptr %opacity3384, align 8, !dbg !3311, !tbaa !2024
  %662 = load double, ptr %arrayidx3591, align 8, !dbg !3313, !tbaa !1126
  %663 = call double @llvm.fmuladd.f64(double %conv3540.us, double %661, double %662), !dbg !3313
  store double %663, ptr %arrayidx3591, align 8, !dbg !3313, !tbaa !1126
  br label %if.end3592.us, !dbg !3314

if.end3592.us:                                    ; preds = %if.then3582.us, %if.end3578.us
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %pixel) #13, !dbg !3315
  %inc3594.us = add nuw nsw i64 %z.05790.us, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %inc3594.us, metadata !921, metadata !DIExpression()), !dbg !3299
  %exitcond5843.not = icmp eq i64 %inc3594.us, %conv233, !dbg !3317
  br i1 %exitcond5843.not, label %for.end3595, label %for.body3310.us, !dbg !3300, !llvm.loop !3318

for.cond3319.preheader.us.us:                     ; preds = %for.cond3319.for.end3535_crit_edge.us.us, %for.body3310.us
  %y3311.05787.us.us = phi i64 [ 0, %for.body3310.us ], [ %inc3537.us.us, %for.cond3319.for.end3535_crit_edge.us.us ]
  call void @llvm.dbg.value(metadata i64 %y3311.05787.us.us, metadata !925, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 0, metadata !930, metadata !DIExpression()), !dbg !3320
  %arrayidx3393.us.us = getelementptr inbounds ptr, ptr %call234, i64 %y3311.05787.us.us
  %664 = load ptr, ptr %arrayidx3393.us.us, align 8, !tbaa !1776
  %arrayidx3410.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %655, i64 %y3311.05787.us.us
  %arrayidx3412.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3410.us.us, i64 0, i64 %i.125792
  %green3440.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3412.us.us, i64 0, i32 1
  %blue3467.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3412.us.us, i64 0, i32 2
  %index3498.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3412.us.us, i64 0, i32 4
  %opacity3530.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3412.us.us, i64 0, i32 3
  br label %for.body3323.us.us, !dbg !3321

for.body3323.us.us:                               ; preds = %for.inc3533.us.us, %for.cond3319.preheader.us.us
  %x3318.05784.us.us = phi i64 [ 0, %for.cond3319.preheader.us.us ], [ %inc3534.us.us, %for.inc3533.us.us ]
  call void @llvm.dbg.value(metadata i64 %x3318.05784.us.us, metadata !930, metadata !DIExpression()), !dbg !3320
  %sub3324.us.us = sub nsw i64 %y3311.05787.us.us, %x3318.05784.us.us, !dbg !3323
  %cmp3325.us.us = icmp eq i64 %sub3324.us.us, %z.05790.us, !dbg !3327
  %sub3328.us.us = sub nsw i64 %x3318.05784.us.us, %y3311.05787.us.us
  %cmp3329.us.us = icmp eq i64 %sub3328.us.us, %z.05790.us
  %or.cond5461.us.us = select i1 %cmp3325.us.us, i1 true, i1 %cmp3329.us.us, !dbg !3328
  br i1 %or.cond5461.us.us, label %if.then3331.us.us, label %if.end3387.us.us, !dbg !3328

if.then3331.us.us:                                ; preds = %for.body3323.us.us
  %arrayidx3332.us.us = getelementptr inbounds ptr, ptr %call234, i64 %x3318.05784.us.us, !dbg !3329
  %665 = load ptr, ptr %arrayidx3332.us.us, align 8, !dbg !3329, !tbaa !1776
  %arrayidx3333.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %665, i64 %y3311.05787.us.us, !dbg !3329
  %arrayidx3335.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3333.us.us, i64 0, i64 %i.125792, !dbg !3329
  %666 = load double, ptr %arrayidx3335.us.us, align 8, !dbg !3331, !tbaa !1944
  %667 = load double, ptr %arrayidx3338, align 8, !dbg !3332, !tbaa !1944
  %add3340.us.us = fadd double %666, %667, !dbg !3332
  store double %add3340.us.us, ptr %arrayidx3338, align 8, !dbg !3332, !tbaa !1944
  %green3345.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3335.us.us, i64 0, i32 1, !dbg !3333
  %668 = load double, ptr %green3345.us.us, align 8, !dbg !3333, !tbaa !1961
  %669 = load double, ptr %green3348, align 8, !dbg !3334, !tbaa !1961
  %add3349.us.us = fadd double %668, %669, !dbg !3334
  store double %add3349.us.us, ptr %green3348, align 8, !dbg !3334, !tbaa !1961
  %blue3354.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3335.us.us, i64 0, i32 2, !dbg !3335
  %670 = load double, ptr %blue3354.us.us, align 8, !dbg !3335, !tbaa !1979
  %671 = load double, ptr %blue3357, align 8, !dbg !3336, !tbaa !1979
  %add3358.us.us = fadd double %670, %671, !dbg !3336
  store double %add3358.us.us, ptr %blue3357, align 8, !dbg !3336, !tbaa !1979
  br i1 %cmp3470.us.us, label %if.then3362.us.us, label %if.end3372.us.us, !dbg !3337

if.then3362.us.us:                                ; preds = %if.then3331.us.us
  %index3367.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3335.us.us, i64 0, i32 4, !dbg !3338
  %672 = load double, ptr %index3367.us.us, align 8, !dbg !3338, !tbaa !2002
  %673 = load double, ptr %index3370, align 8, !dbg !3340, !tbaa !2002
  %add3371.us.us = fadd double %672, %673, !dbg !3340
  store double %add3371.us.us, ptr %index3370, align 8, !dbg !3340, !tbaa !2002
  br label %if.end3372.us.us, !dbg !3341

if.end3372.us.us:                                 ; preds = %if.then3362.us.us, %if.then3331.us.us
  br i1 %cmp3502.not.us.us, label %if.end3387.us.us, label %if.then3376.us.us, !dbg !3342

if.then3376.us.us:                                ; preds = %if.end3372.us.us
  %opacity3381.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3335.us.us, i64 0, i32 3, !dbg !3343
  %674 = load double, ptr %opacity3381.us.us, align 8, !dbg !3343, !tbaa !2024
  %675 = load double, ptr %opacity3384, align 8, !dbg !3345, !tbaa !2024
  %add3385.us.us = fadd double %674, %675, !dbg !3345
  store double %add3385.us.us, ptr %opacity3384, align 8, !dbg !3345, !tbaa !2024
  br label %if.end3387.us.us, !dbg !3346

if.end3387.us.us:                                 ; preds = %if.then3376.us.us, %if.end3372.us.us, %for.body3323.us.us
  %arrayidx3389.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %654, i64 %x3318.05784.us.us, !dbg !3347
  %arrayidx3391.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3389.us.us, i64 0, i64 %i.125792, !dbg !3347
  %676 = load double, ptr %arrayidx3391.us.us, align 8, !dbg !3348, !tbaa !1944
  %arrayidx3394.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %664, i64 %x3318.05784.us.us, !dbg !3349
  %arrayidx3396.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3394.us.us, i64 0, i64 %i.125792, !dbg !3349
  %677 = load double, ptr %arrayidx3396.us.us, align 8, !dbg !3350, !tbaa !1944
  %mul3398.us.us = fmul double %676, %677, !dbg !3351
  %678 = load double, ptr %arrayidx3401.us, align 8, !dbg !3352, !tbaa !1944
  %div3403.us.us = fdiv double %mul3398.us.us, %678, !dbg !3353
  %arrayidx3404.us.us = getelementptr inbounds %struct._ChannelStatistics, ptr %call246, i64 %x3318.05784.us.us, !dbg !3354
  %arrayidx3406.us.us = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %arrayidx3404.us.us, i64 0, i64 %i.125792, !dbg !3354
  %679 = load double, ptr %arrayidx3406.us.us, align 8, !dbg !3355, !tbaa !1944
  %div3408.us.us = fdiv double %div3403.us.us, %679, !dbg !3356
  %680 = load double, ptr %arrayidx3412.us.us, align 8, !dbg !3357, !tbaa !1944
  %add3414.us.us = fadd double %div3408.us.us, %680, !dbg !3357
  store double %add3414.us.us, ptr %arrayidx3412.us.us, align 8, !dbg !3357, !tbaa !1944
  %green3419.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3391.us.us, i64 0, i32 1, !dbg !3358
  %681 = load double, ptr %green3419.us.us, align 8, !dbg !3358, !tbaa !1961
  %green3424.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3396.us.us, i64 0, i32 1, !dbg !3359
  %682 = load double, ptr %green3424.us.us, align 8, !dbg !3359, !tbaa !1961
  %mul3425.us.us = fmul double %681, %682, !dbg !3360
  %683 = load double, ptr %green3429.us, align 8, !dbg !3361, !tbaa !1961
  %div3430.us.us = fdiv double %mul3425.us.us, %683, !dbg !3362
  %684 = load double, ptr %arrayidx3406.us.us, align 8, !dbg !3363, !tbaa !1944
  %div3435.us.us = fdiv double %div3430.us.us, %684, !dbg !3364
  %685 = load double, ptr %green3440.us.us, align 8, !dbg !3365, !tbaa !1961
  %add3441.us.us = fadd double %685, %div3435.us.us, !dbg !3365
  store double %add3441.us.us, ptr %green3440.us.us, align 8, !dbg !3365, !tbaa !1961
  %blue3446.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3391.us.us, i64 0, i32 2, !dbg !3366
  %686 = load double, ptr %blue3446.us.us, align 8, !dbg !3366, !tbaa !1979
  %blue3451.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3396.us.us, i64 0, i32 2, !dbg !3367
  %687 = load double, ptr %blue3451.us.us, align 8, !dbg !3367, !tbaa !1979
  %mul3452.us.us = fmul double %686, %687, !dbg !3368
  %688 = load double, ptr %blue3456.us, align 8, !dbg !3369, !tbaa !1979
  %div3457.us.us = fdiv double %mul3452.us.us, %688, !dbg !3370
  %blue3461.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3406.us.us, i64 0, i32 2, !dbg !3371
  %689 = load double, ptr %blue3461.us.us, align 8, !dbg !3371, !tbaa !1979
  %div3462.us.us = fdiv double %div3457.us.us, %689, !dbg !3372
  %690 = load double, ptr %blue3467.us.us, align 8, !dbg !3373, !tbaa !1979
  %add3468.us.us = fadd double %690, %div3462.us.us, !dbg !3373
  store double %add3468.us.us, ptr %blue3467.us.us, align 8, !dbg !3373, !tbaa !1979
  br i1 %cmp3470.us.us, label %if.then3472.us.us, label %if.end3500.us.us, !dbg !3374

if.then3472.us.us:                                ; preds = %if.end3387.us.us
  %index3477.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3391.us.us, i64 0, i32 4, !dbg !3375
  %691 = load double, ptr %index3477.us.us, align 8, !dbg !3375, !tbaa !2002
  %index3482.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3396.us.us, i64 0, i32 4, !dbg !3377
  %692 = load double, ptr %index3482.us.us, align 8, !dbg !3377, !tbaa !2002
  %mul3483.us.us = fmul double %691, %692, !dbg !3378
  %693 = load double, ptr %index3487.us, align 8, !dbg !3379, !tbaa !2002
  %div3488.us.us = fdiv double %mul3483.us.us, %693, !dbg !3380
  %index3492.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3406.us.us, i64 0, i32 4, !dbg !3381
  %694 = load double, ptr %index3492.us.us, align 8, !dbg !3381, !tbaa !2002
  %div3493.us.us = fdiv double %div3488.us.us, %694, !dbg !3382
  %695 = load double, ptr %index3498.us.us, align 8, !dbg !3383, !tbaa !2002
  %add3499.us.us = fadd double %695, %div3493.us.us, !dbg !3383
  store double %add3499.us.us, ptr %index3498.us.us, align 8, !dbg !3383, !tbaa !2002
  br label %if.end3500.us.us, !dbg !3384

if.end3500.us.us:                                 ; preds = %if.then3472.us.us, %if.end3387.us.us
  br i1 %cmp3502.not.us.us, label %for.inc3533.us.us, label %if.then3504.us.us, !dbg !3385

if.then3504.us.us:                                ; preds = %if.end3500.us.us
  %opacity3509.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3391.us.us, i64 0, i32 3, !dbg !3386
  %696 = load double, ptr %opacity3509.us.us, align 8, !dbg !3386, !tbaa !2024
  %opacity3514.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3396.us.us, i64 0, i32 3, !dbg !3388
  %697 = load double, ptr %opacity3514.us.us, align 8, !dbg !3388, !tbaa !2024
  %mul3515.us.us = fmul double %696, %697, !dbg !3389
  %698 = load double, ptr %opacity3519.us, align 8, !dbg !3390, !tbaa !2024
  %div3520.us.us = fdiv double %mul3515.us.us, %698, !dbg !3391
  %opacity3524.us.us = getelementptr inbounds %struct._DoublePixelPacket, ptr %arrayidx3406.us.us, i64 0, i32 3, !dbg !3392
  %699 = load double, ptr %opacity3524.us.us, align 8, !dbg !3392, !tbaa !2024
  %div3525.us.us = fdiv double %div3520.us.us, %699, !dbg !3393
  %700 = load double, ptr %opacity3530.us.us, align 8, !dbg !3394, !tbaa !2024
  %add3531.us.us = fadd double %700, %div3525.us.us, !dbg !3394
  store double %add3531.us.us, ptr %opacity3530.us.us, align 8, !dbg !3394, !tbaa !2024
  br label %for.inc3533.us.us, !dbg !3395

for.inc3533.us.us:                                ; preds = %if.then3504.us.us, %if.end3500.us.us
  %inc3534.us.us = add nuw nsw i64 %x3318.05784.us.us, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %inc3534.us.us, metadata !930, metadata !DIExpression()), !dbg !3320
  %exitcond5841.not = icmp eq i64 %inc3534.us.us, %conv233, !dbg !3397
  br i1 %exitcond5841.not, label %for.cond3319.for.end3535_crit_edge.us.us, label %for.body3323.us.us, !dbg !3321, !llvm.loop !3398

for.cond3319.for.end3535_crit_edge.us.us:         ; preds = %for.inc3533.us.us
  %inc3537.us.us = add nuw nsw i64 %y3311.05787.us.us, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %inc3537.us.us, metadata !925, metadata !DIExpression()), !dbg !3304
  %exitcond5842.not = icmp eq i64 %inc3537.us.us, %conv233, !dbg !3401
  br i1 %exitcond5842.not, label %for.cond3313.for.end3538_crit_edge.split.us.us, label %for.cond3319.preheader.us.us, !dbg !3305, !llvm.loop !3402

for.cond3313.for.end3538_crit_edge.split.us.us:   ; preds = %for.cond3319.for.end3535_crit_edge.us.us
  %mul3539.us = mul nsw i64 %z.05790.us, %z.05790.us, !dbg !3404
  %conv3540.us = sitofp i64 %mul3539.us to double, !dbg !3405
  %701 = load double, ptr %arrayidx3338, align 8, !dbg !3406, !tbaa !1944
  %702 = load double, ptr %arrayidx3546, align 8, !dbg !3407, !tbaa !1126
  %703 = call double @llvm.fmuladd.f64(double %conv3540.us, double %701, double %702), !dbg !3407
  store double %703, ptr %arrayidx3546, align 8, !dbg !3407, !tbaa !1126
  %704 = load double, ptr %green3348, align 8, !dbg !3408, !tbaa !1961
  %705 = load double, ptr %arrayidx3555, align 8, !dbg !3409, !tbaa !1126
  %706 = call double @llvm.fmuladd.f64(double %conv3540.us, double %704, double %705), !dbg !3409
  store double %706, ptr %arrayidx3555, align 8, !dbg !3409, !tbaa !1126
  %707 = load double, ptr %blue3357, align 8, !dbg !3410, !tbaa !1979
  %708 = load double, ptr %arrayidx3564, align 8, !dbg !3411, !tbaa !1126
  %709 = call double @llvm.fmuladd.f64(double %conv3540.us, double %707, double %708), !dbg !3411
  store double %709, ptr %arrayidx3564, align 8, !dbg !3411, !tbaa !1126
  br i1 %cmp3470.us.us, label %if.then3568.us, label %if.end3578.us, !dbg !3412

for.end3595:                                      ; preds = %if.end3592.us, %for.cond3306.preheader
  %call3596 = call double @sqrt(double noundef -1.000000e+00) #13, !dbg !3413
  %arrayidx3598 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 1, i32 13, i64 %i.125792, !dbg !3414
  store double %call3596, ptr %arrayidx3598, align 8, !dbg !3415, !tbaa !1126
  %call3599 = call double @sqrt(double noundef -1.000000e+00) #13, !dbg !3416
  %arrayidx3602 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 2, i32 13, i64 %i.125792, !dbg !3417
  store double %call3599, ptr %arrayidx3602, align 8, !dbg !3418, !tbaa !1126
  %call3603 = call double @sqrt(double noundef -1.000000e+00) #13, !dbg !3419
  %arrayidx3606 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 4, i32 13, i64 %i.125792, !dbg !3420
  store double %call3603, ptr %arrayidx3606, align 8, !dbg !3421, !tbaa !1126
  %710 = load i32, ptr %colorspace159, align 4, !dbg !3422, !tbaa !1633
  %cmp3608 = icmp eq i32 %710, 12, !dbg !3424
  br i1 %cmp3608, label %if.then3610, label %if.end3615, !dbg !3425

if.then3610:                                      ; preds = %for.end3595
  %call3611 = call double @sqrt(double noundef -1.000000e+00) #13, !dbg !3426
  %arrayidx3614 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 32, i32 13, i64 %i.125792, !dbg !3427
  store double %call3611, ptr %arrayidx3614, align 8, !dbg !3428, !tbaa !1126
  br label %if.end3615, !dbg !3427

if.end3615:                                       ; preds = %if.then3610, %for.end3595
  %711 = load i32, ptr %matte177, align 8, !dbg !3429, !tbaa !1634
  %cmp3617.not = icmp eq i32 %711, 0, !dbg !3431
  br i1 %cmp3617.not, label %if.end3624, label %if.then3619, !dbg !3432

if.then3619:                                      ; preds = %if.end3615
  %call3620 = call double @sqrt(double noundef -1.000000e+00) #13, !dbg !3433
  %arrayidx3623 = getelementptr inbounds %struct._ChannelFeatures, ptr %call6, i64 8, i32 13, i64 %i.125792, !dbg !3434
  store double %call3620, ptr %arrayidx3623, align 8, !dbg !3435, !tbaa !1126
  br label %if.end3624, !dbg !3434

if.end3624:                                       ; preds = %if.then3619, %if.end3615
  %inc3626 = add nuw nsw i64 %i.125792, 1, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %inc3626, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5844.not = icmp eq i64 %inc3626, 4, !dbg !3437
  br i1 %exitcond5844.not, label %for.end3627, label %for.cond3306.preheader, !dbg !3438, !llvm.loop !3439

for.end3627:                                      ; preds = %if.end3624
  %call3628 = call ptr @RelinquishMagickMemory(ptr noundef %call250) #13, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %call3628, metadata !856, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  br i1 %cmp3605713.not, label %for.end3654.critedge, label %for.body3633, !dbg !3442

for.body3633:                                     ; preds = %for.end3627, %for.body3633
  %i.135797 = phi i64 [ %inc3638, %for.body3633 ], [ 0, %for.end3627 ]
  call void @llvm.dbg.value(metadata i64 %i.135797, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx3634 = getelementptr inbounds ptr, ptr %call248, i64 %i.135797, !dbg !3444
  %712 = load ptr, ptr %arrayidx3634, align 8, !dbg !3444, !tbaa !1776
  %call3635 = call ptr @RelinquishMagickMemory(ptr noundef %712) #13, !dbg !3446
  store ptr %call3635, ptr %arrayidx3634, align 8, !dbg !3447, !tbaa !1776
  %inc3638 = add nuw nsw i64 %i.135797, 1, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %inc3638, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5845.not = icmp eq i64 %inc3638, %conv233, !dbg !3449
  br i1 %exitcond5845.not, label %for.end3639, label %for.body3633, !dbg !3442, !llvm.loop !3450

for.end3639:                                      ; preds = %for.body3633
  %call3640 = call ptr @RelinquishMagickMemory(ptr noundef %call248) #13, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %call3640, metadata !855, metadata !DIExpression()), !dbg !1565
  %call3641 = call ptr @RelinquishMagickMemory(ptr noundef %call246) #13, !dbg !3453
  call void @llvm.dbg.value(metadata ptr %call3641, metadata !848, metadata !DIExpression()), !dbg !1565
  %call3642 = call ptr @RelinquishMagickMemory(ptr noundef %call242) #13, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %call3642, metadata !847, metadata !DIExpression()), !dbg !1565
  %call3643 = call ptr @RelinquishMagickMemory(ptr noundef %call238) #13, !dbg !3455
  call void @llvm.dbg.value(metadata ptr %call3643, metadata !846, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  br i1 %cmp3605713.not, label %for.end3654, label %for.body3648, !dbg !3456

for.body3648:                                     ; preds = %for.end3639, %for.body3648
  %i.145799 = phi i64 [ %inc3653, %for.body3648 ], [ 0, %for.end3639 ]
  call void @llvm.dbg.value(metadata i64 %i.145799, metadata !862, metadata !DIExpression()), !dbg !1565
  %arrayidx3649 = getelementptr inbounds ptr, ptr %call234, i64 %i.145799, !dbg !3458
  %713 = load ptr, ptr %arrayidx3649, align 8, !dbg !3458, !tbaa !1776
  %call3650 = call ptr @RelinquishMagickMemory(ptr noundef %713) #13, !dbg !3460
  store ptr %call3650, ptr %arrayidx3649, align 8, !dbg !3461, !tbaa !1776
  %inc3653 = add nuw nsw i64 %i.145799, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %inc3653, metadata !862, metadata !DIExpression()), !dbg !1565
  %exitcond5846.not = icmp eq i64 %inc3653, %conv233, !dbg !3463
  br i1 %exitcond5846.not, label %for.end3654, label %for.body3648, !dbg !3456, !llvm.loop !3464

for.end3654.critedge:                             ; preds = %for.end3627
  %call3640.c = call ptr @RelinquishMagickMemory(ptr noundef %call248) #13, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %call3640, metadata !855, metadata !DIExpression()), !dbg !1565
  %call3641.c = call ptr @RelinquishMagickMemory(ptr noundef %call246) #13, !dbg !3453
  call void @llvm.dbg.value(metadata ptr %call3641, metadata !848, metadata !DIExpression()), !dbg !1565
  %call3642.c = call ptr @RelinquishMagickMemory(ptr noundef %call242) #13, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %call3642, metadata !847, metadata !DIExpression()), !dbg !1565
  %call3643.c = call ptr @RelinquishMagickMemory(ptr noundef %call238) #13, !dbg !3455
  call void @llvm.dbg.value(metadata ptr %call3643, metadata !846, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !862, metadata !DIExpression()), !dbg !1565
  br label %for.end3654, !dbg !3456

for.end3654:                                      ; preds = %for.body3648, %for.end3654.critedge, %for.end3639
  %call3655 = call ptr @RelinquishMagickMemory(ptr noundef %call234) #13, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %call3655, metadata !844, metadata !DIExpression()), !dbg !1565
  br label %cleanup3656, !dbg !3467

cleanup3656:                                      ; preds = %if.end, %lor.lhs.false, %for.end3654, %for.end701, %for.end415, %if.end320, %if.then111, %if.then19
  %retval.0 = phi ptr [ %call20, %if.then19 ], [ %call113, %if.then111 ], [ %call322, %if.end320 ], [ %call423, %for.end415 ], [ %call703, %for.end701 ], [ %call6, %for.end3654 ], [ null, %lor.lhs.false ], [ null, %if.end ], !dbg !1565
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gray) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %variance) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %sum_squares) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mean) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %entropy_y) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %entropy_xy2) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %entropy_xy1) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %entropy_xy) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %entropy_x) #13, !dbg !3468
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %correlation) #13, !dbg !3468
  ret ptr %retval.0, !dbg !3468
}

; Function Attrs: allocsize(0,1)
declare !dbg !3469 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !3472 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3475 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !3479 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !3483 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !3484 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3487 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !3491 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare !dbg !3494 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @HoughLineImage(ptr noundef %image, i64 noundef %width, i64 noundef %height, i64 noundef %threshold, ptr noundef %exception) local_unnamed_addr #0 !dbg !3497 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %message = alloca [4096 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %lines_image = alloca ptr, align 8
  %count = alloca double, align 8
  %count156 = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3501, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %width, metadata !3502, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %height, metadata !3503, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %threshold, metadata !3504, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3505, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #13, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %message, metadata !3507, metadata !DIExpression()), !dbg !3702
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #13, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3508, metadata !DIExpression()), !dbg !3703
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lines_image) #13, !dbg !3704
  call void @llvm.dbg.value(metadata ptr null, metadata !3511, metadata !DIExpression()), !dbg !3700
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3705
  %0 = load i32, ptr %debug, align 8, !dbg !3705, !tbaa !1044
  %cmp.not = icmp eq i32 %0, 0, !dbg !3707
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3708

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3709
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !3710
  br label %if.end, !dbg !3711

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 180, metadata !3652, metadata !DIExpression()), !dbg !3700
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3712
  %1 = load i64, ptr %rows, align 8, !dbg !3712, !tbaa !1090
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3713
  %2 = load i64, ptr %columns, align 8, !dbg !3713, !tbaa !1088
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2), !dbg !3714
  %conv = uitofp i64 %3 to double, !dbg !3715
  %mul = fmul double %conv, 0x3FF6A09E667F3BCD, !dbg !3716
  %div = fmul double %mul, 5.000000e-01, !dbg !3717
  call void @llvm.dbg.value(metadata double %div, metadata !3510, metadata !DIExpression()), !dbg !3700
  %mul5 = fmul double %div, 2.000000e+00, !dbg !3718
  %conv6 = fptoui double %mul5 to i64, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %conv6, metadata !3651, metadata !DIExpression()), !dbg !3700
  %call7 = tail call ptr @AcquireMatrixInfo(i64 noundef 180, i64 noundef %conv6, i64 noundef 8, ptr noundef %exception) #13, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %call7, metadata !3642, metadata !DIExpression()), !dbg !3700
  %cmp8 = icmp eq ptr %call7, null, !dbg !3721
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !3723

if.then10:                                        ; preds = %if.end
  %filename11 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3724
  %call13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1852, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename11) #13, !dbg !3724
  br label %cleanup385, !dbg !3724

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @NullMatrix(ptr noundef nonnull %call7) #13, !dbg !3726
  %cmp16 = icmp eq i32 %call15, 0, !dbg !3728
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !3729

if.then18:                                        ; preds = %if.end14
  %call19 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call7) #13, !dbg !3730
  call void @llvm.dbg.value(metadata ptr %call19, metadata !3642, metadata !DIExpression()), !dbg !3700
  %filename20 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3732
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1856, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename20) #13, !dbg !3732
  br label %cleanup385, !dbg !3732

if.end23:                                         ; preds = %if.end14
  call void @llvm.dbg.value(metadata i32 1, metadata !3640, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3641, metadata !DIExpression()), !dbg !3700
  %4 = load i64, ptr %columns, align 8, !dbg !3734, !tbaa !1088
  %conv25 = uitofp i64 %4 to double, !dbg !3735
  %div26 = fmul double %conv25, 5.000000e-01, !dbg !3736
  call void @llvm.dbg.value(metadata double %div26, metadata !3643, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3700
  %5 = load i64, ptr %rows, align 8, !dbg !3737, !tbaa !1090
  %conv28 = uitofp i64 %5 to double, !dbg !3738
  %div29 = fmul double %conv28, 5.000000e-01, !dbg !3739
  call void @llvm.dbg.value(metadata double %div29, metadata !3643, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3700
  %call31 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %call31, metadata !3506, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3650, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 1, metadata !3640, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3641, metadata !DIExpression()), !dbg !3700
  %6 = load i64, ptr %rows, align 8, !dbg !3741, !tbaa !1090
  %cmp33585 = icmp sgt i64 %6, 0, !dbg !3742
  br i1 %cmp33585, label %for.body.lr.ph, label %for.end98.thread, !dbg !3743

for.end98.thread:                                 ; preds = %if.end23
  %call99625 = call ptr @DestroyCacheView(ptr noundef %call31) #13, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %call99, metadata !3506, metadata !DIExpression()), !dbg !3700
  br label %if.end104, !dbg !3745

for.body.lr.ph:                                   ; preds = %if.end23
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3743

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0588 = phi i32 [ 1, %for.body.lr.ph ], [ %status.3, %cleanup ]
  %y.0587 = phi i64 [ 0, %for.body.lr.ph ], [ %inc97, %cleanup ]
  %progress.0586 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0588, metadata !3640, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %y.0587, metadata !3650, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %progress.0586, metadata !3641, metadata !DIExpression()), !dbg !3700
  %cmp36 = icmp eq i32 %status.0588, 0, !dbg !3746
  br i1 %cmp36, label %cleanup, label %if.end39, !dbg !3748

if.end39:                                         ; preds = %for.body
  %7 = load i64, ptr %columns, align 8, !dbg !3749, !tbaa !1088
  %call41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call31, i64 noundef 0, i64 noundef %y.0587, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #14, !dbg !3750
  call void @llvm.dbg.value(metadata ptr %call41, metadata !3654, metadata !DIExpression()), !dbg !3751
  %cmp42 = icmp eq ptr %call41, null, !dbg !3752
  br i1 %cmp42, label %cleanup, label %for.cond46.preheader, !dbg !3754

for.cond46.preheader:                             ; preds = %if.end39
  call void @llvm.dbg.value(metadata i64 0, metadata !3658, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %call41, metadata !3654, metadata !DIExpression()), !dbg !3751
  %8 = load i64, ptr %columns, align 8, !dbg !3755, !tbaa !1088
  %cmp48581 = icmp sgt i64 %8, 0, !dbg !3756
  br i1 %cmp48581, label %for.body50.lr.ph, label %for.end83, !dbg !3757

for.body50.lr.ph:                                 ; preds = %for.cond46.preheader
  %conv65 = sitofp i64 %y.0587 to double
  %sub67 = fsub double %conv65, %div29
  br label %for.body50, !dbg !3757

for.body50:                                       ; preds = %for.body50.lr.ph, %if.end80
  %x35.0583 = phi i64 [ 0, %for.body50.lr.ph ], [ %inc82, %if.end80 ]
  %p.0582 = phi ptr [ %call41, %for.body50.lr.ph ], [ %incdec.ptr, %if.end80 ]
  call void @llvm.dbg.value(metadata i64 %x35.0583, metadata !3658, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %p.0582, metadata !3654, metadata !DIExpression()), !dbg !3751
  %call51 = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %p.0582) #14, !dbg !3758
  %cmp52 = fcmp ogt float %call51, 3.276700e+04, !dbg !3759
  br i1 %cmp52, label %for.cond55.preheader, label %if.end80, !dbg !3760

for.cond55.preheader:                             ; preds = %for.body50
  %conv59 = sitofp i64 %x35.0583 to double
  %sub = fsub double %conv59, %div26
  call void @llvm.dbg.value(metadata i64 0, metadata !3659, metadata !DIExpression()), !dbg !3761
  br label %for.body58, !dbg !3762

for.body58:                                       ; preds = %for.cond55.preheader, %for.body58
  %i.0580 = phi i64 [ 0, %for.cond55.preheader ], [ %inc79, %for.body58 ]
  call void @llvm.dbg.value(metadata i64 %i.0580, metadata !3659, metadata !DIExpression()), !dbg !3761
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #13, !dbg !3763
  %conv61 = sitofp i64 %i.0580 to double, !dbg !3764
  call void @llvm.dbg.value(metadata double %conv61, metadata !3765, metadata !DIExpression()), !dbg !3769
  %mul.i = fmul double %conv61, 0x400921FB54442D18, !dbg !3771
  %div.i = fdiv double %mul.i, 1.800000e+02, !dbg !3772
  %call63 = call double @cos(double noundef %div.i) #13, !dbg !3773
  call void @llvm.dbg.value(metadata double %conv61, metadata !3765, metadata !DIExpression()), !dbg !3774
  %call70 = call double @sin(double noundef %div.i) #13, !dbg !3776
  %mul71 = fmul double %sub67, %call70, !dbg !3777
  %9 = call double @llvm.fmuladd.f64(double %sub, double %call63, double %mul71), !dbg !3778
  call void @llvm.dbg.value(metadata double %9, metadata !3669, metadata !DIExpression()), !dbg !3779
  %add = fadd double %div, %9, !dbg !3780
  call void @llvm.dbg.value(metadata double %add, metadata !3781, metadata !DIExpression()) #13, !dbg !3786
  %10 = call double @llvm.floor.f64(double %add) #13, !dbg !3788
  %sub.i = fsub double %add, %10, !dbg !3790
  %11 = call double @llvm.ceil.f64(double %add) #13, !dbg !3791
  %sub1.i = fsub double %11, %add, !dbg !3792
  %cmp.i = fcmp olt double %sub.i, %sub1.i, !dbg !3793
  %..i = select i1 %cmp.i, double %10, double %11, !dbg !3786
  %conv73 = fptosi double %..i to i64, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %count, metadata !3665, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  %call74 = call i32 @GetMatrixElement(ptr noundef nonnull %call7, i64 noundef %i.0580, i64 noundef %conv73, ptr noundef nonnull %count) #13, !dbg !3795
  %12 = load double, ptr %count, align 8, !dbg !3796, !tbaa !1126
  call void @llvm.dbg.value(metadata double %12, metadata !3665, metadata !DIExpression()), !dbg !3779
  %inc = fadd double %12, 1.000000e+00, !dbg !3796
  call void @llvm.dbg.value(metadata double %inc, metadata !3665, metadata !DIExpression()), !dbg !3779
  store double %inc, ptr %count, align 8, !dbg !3796, !tbaa !1126
  call void @llvm.dbg.value(metadata double %add, metadata !3781, metadata !DIExpression()) #13, !dbg !3797
  call void @llvm.dbg.value(metadata ptr %count, metadata !3665, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  %call78 = call i32 @SetMatrixElement(ptr noundef nonnull %call7, i64 noundef %i.0580, i64 noundef %conv73, ptr noundef nonnull %count) #13, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #13, !dbg !3800
  %inc79 = add nuw nsw i64 %i.0580, 1, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %inc79, metadata !3659, metadata !DIExpression()), !dbg !3761
  %exitcond.not = icmp eq i64 %inc79, 180, !dbg !3802
  br i1 %exitcond.not, label %if.end80, label %for.body58, !dbg !3762, !llvm.loop !3803

if.end80:                                         ; preds = %for.body58, %for.body50
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0582, i64 1, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3654, metadata !DIExpression()), !dbg !3751
  %inc82 = add nuw nsw i64 %x35.0583, 1, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %inc82, metadata !3658, metadata !DIExpression()), !dbg !3751
  %13 = load i64, ptr %columns, align 8, !dbg !3755, !tbaa !1088
  %cmp48 = icmp slt i64 %inc82, %13, !dbg !3756
  br i1 %cmp48, label %for.body50, label %for.end83, !dbg !3757, !llvm.loop !3807

for.end83:                                        ; preds = %if.end80, %for.cond46.preheader
  %14 = load ptr, ptr %progress_monitor, align 8, !dbg !3809, !tbaa !1265
  %cmp84.not = icmp eq ptr %14, null, !dbg !3810
  br i1 %cmp84.not, label %cleanup, label %SetImageProgress.exit, !dbg !3811

SetImageProgress.exit:                            ; preds = %for.end83
  %inc87 = add nsw i64 %progress.0586, 1, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %inc87, metadata !3641, metadata !DIExpression()), !dbg !3700
  %15 = load i64, ptr %rows, align 8, !dbg !3813, !tbaa !1090
  call void @llvm.dbg.value(metadata ptr %image, metadata !1270, metadata !DIExpression()) #13, !dbg !3814
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1276, metadata !DIExpression()) #13, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %progress.0586, metadata !1277, metadata !DIExpression()) #13, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %15, metadata !1278, metadata !DIExpression()) #13, !dbg !3814
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !3816
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1279, metadata !DIExpression()) #13, !dbg !3817
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #13, !dbg !3818
  %16 = load ptr, ptr %progress_monitor, align 8, !dbg !3819, !tbaa !1265
  %17 = load ptr, ptr %client_data.i, align 8, !dbg !3820, !tbaa !1287
  %call4.i = call i32 %16(ptr noundef nonnull %message.i, i64 noundef %progress.0586, i64 noundef %15, ptr noundef %17) #13, !dbg !3821
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3670, metadata !DIExpression()), !dbg !3823
  %cmp90 = icmp ne i32 %call4.i, 0, !dbg !3824
  %spec.select = zext i1 %cmp90 to i32, !dbg !3826
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3640, metadata !DIExpression()), !dbg !3700
  br label %cleanup, !dbg !3827

cleanup:                                          ; preds = %for.end83, %SetImageProgress.exit, %if.end39, %for.body
  %progress.2 = phi i64 [ %progress.0586, %for.body ], [ %progress.0586, %if.end39 ], [ %inc87, %SetImageProgress.exit ], [ %progress.0586, %for.end83 ], !dbg !3700
  %status.3 = phi i32 [ 0, %for.body ], [ 0, %if.end39 ], [ %spec.select, %SetImageProgress.exit ], [ 1, %for.end83 ], !dbg !3700
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !3640, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !3641, metadata !DIExpression()), !dbg !3700
  %inc97 = add nuw nsw i64 %y.0587, 1, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %inc97, metadata !3650, metadata !DIExpression()), !dbg !3700
  %18 = load i64, ptr %rows, align 8, !dbg !3741, !tbaa !1090
  %cmp33 = icmp slt i64 %inc97, %18, !dbg !3742
  br i1 %cmp33, label %for.body, label %for.end98, !dbg !3743, !llvm.loop !3829

for.end98:                                        ; preds = %cleanup
  %call99 = call ptr @DestroyCacheView(ptr noundef %call31) #13, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %call99, metadata !3506, metadata !DIExpression()), !dbg !3700
  %cmp100 = icmp eq i32 %status.3, 0, !dbg !3831
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !3745

if.then102:                                       ; preds = %for.end98
  %call103 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %call7) #13, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %call103, metadata !3642, metadata !DIExpression()), !dbg !3700
  br label %cleanup385, !dbg !3835

if.end104:                                        ; preds = %for.end98.thread, %for.end98
  %call106 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %path) #13, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %call106, metadata !3639, metadata !DIExpression()), !dbg !3700
  %cmp107 = icmp eq i32 %call106, -1, !dbg !3837
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !3839

if.then109:                                       ; preds = %if.end104
  %call110 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %call7) #13, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %call110, metadata !3642, metadata !DIExpression()), !dbg !3700
  br label %cleanup385, !dbg !3842

if.end111:                                        ; preds = %if.end104
  %conv113 = uitofp i64 %width to double, !dbg !3843
  %conv114 = uitofp i64 %height to double, !dbg !3844
  %conv115 = uitofp i64 %threshold to double, !dbg !3845
  %call116 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %conv113, double noundef %conv114, double noundef %conv115) #13, !dbg !3846
  %call119 = call i64 @strlen(ptr noundef nonnull %message) #18, !dbg !3847
  %call120 = call i64 @write(i32 noundef %call106, ptr noundef nonnull %message, i64 noundef %call119) #13, !dbg !3848
  %19 = load i64, ptr %columns, align 8, !dbg !3849, !tbaa !1088
  %conv123 = uitofp i64 %19 to double, !dbg !3850
  %20 = load i64, ptr %rows, align 8, !dbg !3851, !tbaa !1090
  %conv125 = uitofp i64 %20 to double, !dbg !3852
  %call126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %conv123, double noundef %conv125) #13, !dbg !3853
  %call129 = call i64 @strlen(ptr noundef nonnull %message) #18, !dbg !3854
  %call130 = call i64 @write(i32 noundef %call106, ptr noundef nonnull %message, i64 noundef %call129) #13, !dbg !3855
  call void @llvm.dbg.value(metadata i64 undef, metadata !3653, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3650, metadata !DIExpression()), !dbg !3700
  %cmp148613 = icmp sgt i64 %conv6, 0, !dbg !3856
  br i1 %cmp148613, label %for.cond152.preheader.lr.ph, label %for.end333, !dbg !3857

for.cond152.preheader.lr.ph:                      ; preds = %if.end111
  %cmp143.not = icmp eq i64 %threshold, 0, !dbg !3858
  %21 = load i64, ptr %columns, align 8, !dbg !3860, !tbaa !1088
  %22 = load i64, ptr %rows, align 8, !dbg !3861, !tbaa !1090
  %23 = call i64 @llvm.umax.i64(i64 %21, i64 %22), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %23, metadata !3653, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !3700
  %cond142 = lshr i64 %23, 2, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %cond142, metadata !3653, metadata !DIExpression()), !dbg !3700
  %spec.select556 = select i1 %cmp143.not, i64 %cond142, i64 %threshold, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %spec.select556, metadata !3653, metadata !DIExpression()), !dbg !3700
  %conv158 = uitofp i64 %spec.select556 to double
  %div162 = sdiv i64 %height, 2
  %sub163 = sub nsw i64 0, %div162
  %cmp166.not599 = icmp slt i64 %height, -1
  %div169 = sdiv i64 %width, 2
  %sub170 = sub nsw i64 0, %div169
  %cmp173.not589 = icmp slt i64 %width, -1
  %div192552 = lshr i64 %width, 1
  %conv260 = uitofp i64 %conv6 to double
  %div261 = fmul double %conv260, 5.000000e-01
  %24 = call i64 @llvm.abs.i64(i64 %div169, i1 true), !dbg !3857
  %25 = add nuw nsw i64 %24, 1, !dbg !3857
  %brmerge = or i1 %cmp166.not599, %cmp173.not589
  br label %for.cond152.preheader, !dbg !3857

for.cond152.preheader:                            ; preds = %for.cond152.preheader.lr.ph, %for.end330
  %y.1614 = phi i64 [ 0, %for.cond152.preheader.lr.ph ], [ %inc332, %for.end330 ]
  call void @llvm.dbg.value(metadata i64 %y.1614, metadata !3650, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3673, metadata !DIExpression()), !dbg !3864
  %conv259 = sitofp i64 %y.1614 to double
  %sub262 = fsub double %conv259, %div261
  br label %for.body155, !dbg !3865

for.body155:                                      ; preds = %for.cond152.preheader, %cleanup325
  %x151.0607 = phi i64 [ 0, %for.cond152.preheader ], [ %inc329, %cleanup325 ]
  call void @llvm.dbg.value(metadata i64 %x151.0607, metadata !3673, metadata !DIExpression()), !dbg !3864
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count156) #13, !dbg !3866
  call void @llvm.dbg.value(metadata ptr %count156, metadata !3677, metadata !DIExpression(DW_OP_deref)), !dbg !3867
  %call157 = call i32 @GetMatrixElement(ptr noundef nonnull %call7, i64 noundef %x151.0607, i64 noundef %y.1614, ptr noundef nonnull %count156) #13, !dbg !3868
  %26 = load double, ptr %count156, align 8, !dbg !3869, !tbaa !1126
  call void @llvm.dbg.value(metadata double %26, metadata !3677, metadata !DIExpression()), !dbg !3867
  %cmp159 = fcmp ult double %26, %conv158, !dbg !3870
  br i1 %cmp159, label %cleanup325, label %if.then161, !dbg !3871

if.then161:                                       ; preds = %for.body155
  call void @llvm.dbg.value(metadata i64 %sub163, metadata !3692, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata double %26, metadata !3681, metadata !DIExpression()), !dbg !3872
  br i1 %brmerge, label %for.end202, label %for.body168, !dbg !3873

for.body168:                                      ; preds = %if.then161, %for.end191
  %v.0601 = phi i64 [ %inc201, %for.end191 ], [ %sub163, %if.then161 ]
  %maxima.0600 = phi double [ %maxima.1, %for.end191 ], [ %26, %if.then161 ]
  call void @llvm.dbg.value(metadata i64 %v.0601, metadata !3692, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata double %maxima.0600, metadata !3681, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %sub170, metadata !3693, metadata !DIExpression()), !dbg !3874
  %cmp178.not = icmp eq i64 %v.0601, 0
  %add182 = add nsw i64 %v.0601, %y.1614
  br i1 %cmp178.not, label %for.body175, label %for.body175.us

for.body175.us:                                   ; preds = %for.body168, %for.inc189.us
  %u.0590.us = phi i64 [ %inc190.us, %for.inc189.us ], [ %sub170, %for.body168 ]
  call void @llvm.dbg.value(metadata i64 %u.0590.us, metadata !3693, metadata !DIExpression()), !dbg !3874
  %add181.us = add nsw i64 %u.0590.us, %x151.0607, !dbg !3875
  call void @llvm.dbg.value(metadata ptr %count156, metadata !3677, metadata !DIExpression(DW_OP_deref)), !dbg !3867
  %call183.us = call i32 @GetMatrixElement(ptr noundef nonnull %call7, i64 noundef %add181.us, i64 noundef %add182, ptr noundef nonnull %count156) #13, !dbg !3881
  %27 = load double, ptr %count156, align 8, !dbg !3882, !tbaa !1126
  call void @llvm.dbg.value(metadata double %27, metadata !3677, metadata !DIExpression()), !dbg !3867
  %cmp184.us = fcmp ogt double %27, %maxima.0600, !dbg !3884
  br i1 %cmp184.us, label %for.end191, label %for.inc189.us, !dbg !3885

for.inc189.us:                                    ; preds = %for.body175.us
  %inc190.us = add i64 %u.0590.us, 1, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %inc190.us, metadata !3693, metadata !DIExpression()), !dbg !3874
  %exitcond619.not = icmp eq i64 %u.0590.us, %24, !dbg !3887
  br i1 %exitcond619.not, label %for.end191, label %for.body175.us, !dbg !3888, !llvm.loop !3889

for.body175:                                      ; preds = %for.body168, %for.inc189
  %u.0590 = phi i64 [ %inc190, %for.inc189 ], [ %sub170, %for.body168 ]
  call void @llvm.dbg.value(metadata i64 %u.0590, metadata !3693, metadata !DIExpression()), !dbg !3874
  %cmp176.not = icmp eq i64 %u.0590, 0, !dbg !3891
  br i1 %cmp176.not, label %for.inc189, label %if.then180, !dbg !3892

if.then180:                                       ; preds = %for.body175
  %add181 = add nsw i64 %u.0590, %x151.0607, !dbg !3875
  call void @llvm.dbg.value(metadata ptr %count156, metadata !3677, metadata !DIExpression(DW_OP_deref)), !dbg !3867
  %call183 = call i32 @GetMatrixElement(ptr noundef nonnull %call7, i64 noundef %add181, i64 noundef %add182, ptr noundef nonnull %count156) #13, !dbg !3881
  %28 = load double, ptr %count156, align 8, !dbg !3882, !tbaa !1126
  call void @llvm.dbg.value(metadata double %28, metadata !3677, metadata !DIExpression()), !dbg !3867
  %cmp184 = fcmp ogt double %28, %maxima.0600, !dbg !3884
  br i1 %cmp184, label %for.end191, label %for.inc189, !dbg !3885

for.inc189:                                       ; preds = %for.body175, %if.then180
  %inc190 = add i64 %u.0590, 1, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !3693, metadata !DIExpression()), !dbg !3874
  %exitcond621.not = icmp eq i64 %u.0590, %24, !dbg !3887
  br i1 %exitcond621.not, label %for.end191, label %for.body175, !dbg !3888, !llvm.loop !3889

for.end191:                                       ; preds = %for.inc189.us, %for.body175.us, %for.inc189, %if.then180
  %u.0.lcssa = phi i64 [ %u.0590, %if.then180 ], [ %25, %for.inc189 ], [ %u.0590.us, %for.body175.us ], [ %25, %for.inc189.us ], !dbg !3893
  %maxima.1 = phi double [ %28, %if.then180 ], [ %maxima.0600, %for.inc189 ], [ %27, %for.body175.us ], [ %maxima.0600, %for.inc189.us ], !dbg !3872
  call void @llvm.dbg.value(metadata double %maxima.1, metadata !3681, metadata !DIExpression()), !dbg !3872
  %cmp193 = icmp slt i64 %u.0.lcssa, %div192552, !dbg !3894
  %inc201 = add nsw i64 %v.0601, 1, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %inc201, metadata !3692, metadata !DIExpression()), !dbg !3872
  %cmp166.not = icmp sge i64 %v.0601, %div162
  %or.cond = select i1 %cmp193, i1 true, i1 %cmp166.not
  call void @llvm.dbg.value(metadata i64 undef, metadata !3692, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata double undef, metadata !3681, metadata !DIExpression()), !dbg !3872
  br i1 %or.cond, label %for.end202, label %for.body168, !llvm.loop !3897

for.end202:                                       ; preds = %for.end191, %if.then161
  %maxima.2 = phi double [ %26, %if.then161 ], [ %maxima.1, %for.end191 ], !dbg !3872
  call void @llvm.dbg.value(metadata double %maxima.2, metadata !3681, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %count156, metadata !3677, metadata !DIExpression(DW_OP_deref)), !dbg !3867
  %call203 = call i32 @GetMatrixElement(ptr noundef nonnull %call7, i64 noundef %x151.0607, i64 noundef %y.1614, ptr noundef nonnull %count156) #13, !dbg !3899
  %29 = load double, ptr %count156, align 8, !dbg !3900, !tbaa !1126
  call void @llvm.dbg.value(metadata double %29, metadata !3677, metadata !DIExpression()), !dbg !3867
  %cmp204 = fcmp ogt double %maxima.2, %29, !dbg !3902
  br i1 %cmp204, label %cleanup325, label %if.end207, !dbg !3903

if.end207:                                        ; preds = %for.end202
  %30 = add nsw i64 %x151.0607, -45, !dbg !3904
  %31 = icmp ult i64 %30, 91, !dbg !3904
  br i1 %31, label %if.then212, label %if.else, !dbg !3904

if.then212:                                       ; preds = %if.end207
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3872
  %32 = load i64, ptr %columns, align 8, !dbg !3906, !tbaa !1088
  %conv219 = uitofp i64 %32 to double, !dbg !3908
  %div220 = fmul double %conv219, 5.000000e-01, !dbg !3909
  %sub221 = fsub double 0.000000e+00, %div220, !dbg !3910
  %conv222 = sitofp i64 %x151.0607 to double, !dbg !3911
  call void @llvm.dbg.value(metadata double %conv222, metadata !3765, metadata !DIExpression()), !dbg !3912
  %mul.i564 = fmul double %conv222, 0x400921FB54442D18, !dbg !3914
  %div.i565 = fdiv double %mul.i564, 1.800000e+02, !dbg !3915
  %call224 = call double @cos(double noundef %div.i565) #13, !dbg !3916
  %neg = fneg double %sub221, !dbg !3917
  %33 = call double @llvm.fmuladd.f64(double %neg, double %call224, double %sub262), !dbg !3917
  call void @llvm.dbg.value(metadata double %conv222, metadata !3765, metadata !DIExpression()), !dbg !3918
  %call228 = call double @sin(double noundef %div.i565) #13, !dbg !3920
  %div229 = fdiv double %33, %call228, !dbg !3921
  %34 = load i64, ptr %rows, align 8, !dbg !3922, !tbaa !1090
  %conv231 = uitofp i64 %34 to double, !dbg !3923
  %div232 = fmul double %conv231, 5.000000e-01, !dbg !3924
  %add233 = fadd double %div229, %div232, !dbg !3925
  call void @llvm.dbg.value(metadata double %add233, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3872
  %35 = load i64, ptr %columns, align 8, !dbg !3926, !tbaa !1088
  %conv235 = uitofp i64 %35 to double, !dbg !3927
  call void @llvm.dbg.value(metadata double %conv235, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3872
  %div243 = fmul double %conv235, 5.000000e-01, !dbg !3928
  %sub244 = fsub double %conv235, %div243, !dbg !3929
  call void @llvm.dbg.value(metadata double %conv222, metadata !3765, metadata !DIExpression()), !dbg !3930
  %call247 = call double @cos(double noundef %div.i565) #13, !dbg !3932
  %neg249 = fneg double %sub244, !dbg !3933
  %36 = call double @llvm.fmuladd.f64(double %neg249, double %call247, double %sub262), !dbg !3933
  call void @llvm.dbg.value(metadata double %conv222, metadata !3765, metadata !DIExpression()), !dbg !3934
  %call252 = call double @sin(double noundef %div.i565) #13, !dbg !3936
  %div253 = fdiv double %36, %call252, !dbg !3937
  %37 = load i64, ptr %rows, align 8, !dbg !3938, !tbaa !1090
  %conv255 = uitofp i64 %37 to double, !dbg !3939
  %div256 = fmul double %conv255, 5.000000e-01, !dbg !3940
  %add257 = fadd double %div253, %div256, !dbg !3941
  call void @llvm.dbg.value(metadata double %add257, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3872
  br label %if.end308, !dbg !3942

if.else:                                          ; preds = %if.end207
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3872
  %38 = load i64, ptr %rows, align 8, !dbg !3943, !tbaa !1090
  %conv265 = uitofp i64 %38 to double, !dbg !3945
  %div266 = fmul double %conv265, 5.000000e-01, !dbg !3946
  %sub267 = fsub double 0.000000e+00, %div266, !dbg !3947
  %conv268 = sitofp i64 %x151.0607 to double, !dbg !3948
  call void @llvm.dbg.value(metadata double %conv268, metadata !3765, metadata !DIExpression()), !dbg !3949
  %mul.i572 = fmul double %conv268, 0x400921FB54442D18, !dbg !3951
  %div.i573 = fdiv double %mul.i572, 1.800000e+02, !dbg !3952
  %call270 = call double @sin(double noundef %div.i573) #13, !dbg !3953
  %neg272 = fneg double %sub267, !dbg !3954
  %39 = call double @llvm.fmuladd.f64(double %neg272, double %call270, double %sub262), !dbg !3954
  call void @llvm.dbg.value(metadata double %conv268, metadata !3765, metadata !DIExpression()), !dbg !3955
  %call275 = call double @cos(double noundef %div.i573) #13, !dbg !3957
  %div276 = fdiv double %39, %call275, !dbg !3958
  %40 = load i64, ptr %columns, align 8, !dbg !3959, !tbaa !1088
  %conv278 = uitofp i64 %40 to double, !dbg !3960
  %div279 = fmul double %conv278, 5.000000e-01, !dbg !3961
  %add280 = fadd double %div276, %div279, !dbg !3962
  call void @llvm.dbg.value(metadata double %add280, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3872
  %41 = load i64, ptr %rows, align 8, !dbg !3963, !tbaa !1090
  %conv283 = uitofp i64 %41 to double, !dbg !3964
  call void @llvm.dbg.value(metadata double %conv283, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3872
  %div292 = fmul double %conv283, 5.000000e-01, !dbg !3965
  %sub293 = fsub double %conv283, %div292, !dbg !3966
  call void @llvm.dbg.value(metadata double %conv268, metadata !3765, metadata !DIExpression()), !dbg !3967
  %call296 = call double @sin(double noundef %div.i573) #13, !dbg !3969
  %neg298 = fneg double %sub293, !dbg !3970
  %42 = call double @llvm.fmuladd.f64(double %neg298, double %call296, double %sub262), !dbg !3970
  call void @llvm.dbg.value(metadata double %conv268, metadata !3765, metadata !DIExpression()), !dbg !3971
  %call301 = call double @cos(double noundef %div.i573) #13, !dbg !3973
  %div302 = fdiv double %42, %call301, !dbg !3974
  %43 = load i64, ptr %columns, align 8, !dbg !3975, !tbaa !1088
  %conv304 = uitofp i64 %43 to double, !dbg !3976
  %div305 = fmul double %conv304, 5.000000e-01, !dbg !3977
  %add306 = fadd double %div302, %div305, !dbg !3978
  call void @llvm.dbg.value(metadata double %add306, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3872
  br label %if.end308

if.end308:                                        ; preds = %if.else, %if.then212
  %line.sroa.14.0 = phi double [ %add257, %if.then212 ], [ %conv283, %if.else ], !dbg !3979
  %line.sroa.10.0 = phi double [ %conv235, %if.then212 ], [ %add306, %if.else ], !dbg !3979
  %line.sroa.6.0 = phi double [ %add233, %if.then212 ], [ 0.000000e+00, %if.else ], !dbg !3979
  %line.sroa.0.0 = phi double [ 0.000000e+00, %if.then212 ], [ %add280, %if.else ], !dbg !3979
  call void @llvm.dbg.value(metadata double %line.sroa.0.0, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3872
  call void @llvm.dbg.value(metadata double %line.sroa.6.0, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3872
  call void @llvm.dbg.value(metadata double %line.sroa.10.0, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3872
  call void @llvm.dbg.value(metadata double %line.sroa.14.0, metadata !3684, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3872
  %call314 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %line.sroa.0.0, double noundef %line.sroa.6.0, double noundef %line.sroa.10.0, double noundef %line.sroa.14.0, double noundef %maxima.2) #13, !dbg !3980
  %call317 = call i64 @strlen(ptr noundef nonnull %message) #18, !dbg !3981
  %call318 = call i64 @write(i32 noundef %call106, ptr noundef nonnull %message, i64 noundef %call317) #13, !dbg !3982
  br label %cleanup325

cleanup325:                                       ; preds = %if.end308, %for.end202, %for.body155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count156) #13, !dbg !3983
  %inc329 = add nuw nsw i64 %x151.0607, 1, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %inc329, metadata !3673, metadata !DIExpression()), !dbg !3864
  %exitcond622.not = icmp eq i64 %inc329, 180, !dbg !3985
  br i1 %exitcond622.not, label %for.end330, label %for.body155, !dbg !3865, !llvm.loop !3986

for.end330:                                       ; preds = %cleanup325
  %inc332 = add nuw nsw i64 %y.1614, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %inc332, metadata !3650, metadata !DIExpression()), !dbg !3700
  %exitcond623.not = icmp eq i64 %inc332, %conv6, !dbg !3856
  br i1 %exitcond623.not, label %for.end333, label %for.cond152.preheader, !dbg !3857, !llvm.loop !3989

for.end333:                                       ; preds = %for.end330, %if.end111
  %call334 = call i32 @close(i32 noundef %call106) #13, !dbg !3991
  %call335 = call ptr @AcquireImageInfo() #13, !dbg !3992
  call void @llvm.dbg.value(metadata ptr %call335, metadata !3512, metadata !DIExpression()), !dbg !3700
  %background_color = getelementptr inbounds %struct._ImageInfo, ptr %call335, i64 0, i32 24, !dbg !3993
  %background_color336 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !3994
  %44 = load i64, ptr %background_color336, align 8, !dbg !3994
  store i64 %44, ptr %background_color, align 8, !dbg !3994
  %filename337 = getelementptr inbounds %struct._ImageInfo, ptr %call335, i64 0, i32 51, !dbg !3995
  %call340 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename337, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %path) #13, !dbg !3996
  %call341 = call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.12) #13, !dbg !3997
  call void @llvm.dbg.value(metadata ptr %call341, metadata !3509, metadata !DIExpression()), !dbg !3700
  %cmp342.not = icmp eq ptr %call341, null, !dbg !3998
  br i1 %cmp342.not, label %if.end346, label %if.then344, !dbg !4000

if.then344:                                       ; preds = %for.end333
  %call345 = call i32 @SetImageOption(ptr noundef nonnull %call335, ptr noundef nonnull @.str.12, ptr noundef nonnull %call341) #13, !dbg !4001
  br label %if.end346, !dbg !4002

if.end346:                                        ; preds = %if.then344, %for.end333
  %call347 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.13) #13, !dbg !4003
  call void @llvm.dbg.value(metadata ptr %call347, metadata !3509, metadata !DIExpression()), !dbg !3700
  %cmp348.not = icmp eq ptr %call347, null, !dbg !4004
  br i1 %cmp348.not, label %if.end352, label %if.then350, !dbg !4006

if.then350:                                       ; preds = %if.end346
  %call351 = call i32 @SetImageOption(ptr noundef nonnull %call335, ptr noundef nonnull @.str.13, ptr noundef nonnull %call347) #13, !dbg !4007
  br label %if.end352, !dbg !4008

if.end352:                                        ; preds = %if.then350, %if.end346
  %call353 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.14) #13, !dbg !4009
  call void @llvm.dbg.value(metadata ptr %call353, metadata !3509, metadata !DIExpression()), !dbg !3700
  %cmp354.not = icmp eq ptr %call353, null, !dbg !4010
  br i1 %cmp354.not, label %if.end358, label %if.then356, !dbg !4012

if.then356:                                       ; preds = %if.end352
  %call357 = call i32 @SetImageOption(ptr noundef nonnull %call335, ptr noundef nonnull @.str.14, ptr noundef nonnull %call353) #13, !dbg !4013
  br label %if.end358, !dbg !4014

if.end358:                                        ; preds = %if.then356, %if.end352
  %call359 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.15) #13, !dbg !4015
  call void @llvm.dbg.value(metadata ptr %call359, metadata !3509, metadata !DIExpression()), !dbg !3700
  %cmp360.not = icmp eq ptr %call359, null, !dbg !4016
  br i1 %cmp360.not, label %if.end364, label %if.then362, !dbg !4018

if.then362:                                       ; preds = %if.end358
  %call363 = call i32 @SetImageOption(ptr noundef nonnull %call335, ptr noundef nonnull @.str.15, ptr noundef nonnull %call359) #13, !dbg !4019
  br label %if.end364, !dbg !4020

if.end364:                                        ; preds = %if.then362, %if.end358
  %call365 = call ptr @ReadImage(ptr noundef nonnull %call335, ptr noundef %exception) #13, !dbg !4021
  call void @llvm.dbg.value(metadata ptr %call365, metadata !3511, metadata !DIExpression()), !dbg !3700
  store ptr %call365, ptr %lines_image, align 8, !dbg !4022, !tbaa !1776
  %call366 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.16) #13, !dbg !4023
  call void @llvm.dbg.value(metadata ptr %call366, metadata !3509, metadata !DIExpression()), !dbg !3700
  %cmp367.not = icmp eq ptr %call365, null, !dbg !4024
  br i1 %cmp367.not, label %if.end379, label %land.lhs.true369, !dbg !4025

land.lhs.true369:                                 ; preds = %if.end364
  %call370 = call i32 @IsMagickTrue(ptr noundef %call366) #13, !dbg !4026
  %cmp371.not = icmp eq i32 %call370, 0, !dbg !4027
  br i1 %cmp371.not, label %if.end379, label %if.then373, !dbg !4028

if.then373:                                       ; preds = %land.lhs.true369
  %call374 = call ptr @MatrixToImage(ptr noundef nonnull %call7, ptr noundef %exception) #13, !dbg !4029
  call void @llvm.dbg.value(metadata ptr %call374, metadata !3697, metadata !DIExpression()), !dbg !4030
  %cmp375.not = icmp eq ptr %call374, null, !dbg !4031
  br i1 %cmp375.not, label %if.end379, label %if.then377, !dbg !4033

if.then377:                                       ; preds = %if.then373
  call void @llvm.dbg.value(metadata ptr %lines_image, metadata !3511, metadata !DIExpression(DW_OP_deref)), !dbg !3700
  call void @AppendImageToList(ptr noundef nonnull %lines_image, ptr noundef nonnull %call374) #13, !dbg !4034
  br label %if.end379, !dbg !4034

if.end379:                                        ; preds = %if.then373, %if.then377, %land.lhs.true369, %if.end364
  %call380 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %call7) #13, !dbg !4035
  call void @llvm.dbg.value(metadata ptr %call380, metadata !3642, metadata !DIExpression()), !dbg !3700
  %call381 = call ptr @DestroyImageInfo(ptr noundef nonnull %call335) #13, !dbg !4036
  call void @llvm.dbg.value(metadata ptr %call381, metadata !3512, metadata !DIExpression()), !dbg !3700
  %call383 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %path) #13, !dbg !4037
  %45 = load ptr, ptr %lines_image, align 8, !dbg !4038, !tbaa !1776
  call void @llvm.dbg.value(metadata ptr %45, metadata !3511, metadata !DIExpression()), !dbg !3700
  %call384 = call ptr @GetFirstImageInList(ptr noundef %45) #13, !dbg !4039
  br label %cleanup385, !dbg !4040

cleanup385:                                       ; preds = %if.end379, %if.then109, %if.then102, %if.then18, %if.then10
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %if.then18 ], [ null, %if.then102 ], [ null, %if.then109 ], [ %call384, %if.end379 ], !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lines_image) #13, !dbg !4041
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #13, !dbg !4041
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #13, !dbg !4041
  ret ptr %retval.0, !dbg !4041
}

declare !dbg !4042 i32 @NullMatrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #9

declare !dbg !4045 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !4049 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare !dbg !4053 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !4056 ptr @AcquireImageInfo() local_unnamed_addr #3

declare !dbg !4059 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4063 i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4067 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4073 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !4077 ptr @MatrixToImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4080 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4085 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !4088 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

declare !dbg !4089 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MeanShiftImage(ptr noundef %image, i64 noundef %width, i64 noundef %height, double noundef %color_distance, ptr noundef %exception) local_unnamed_addr #0 !dbg !4092 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %mean_pixel = alloca %struct._MagickPixelPacket, align 8
  %sum_pixel = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._PixelPacket, align 2
  call void @llvm.dbg.value(metadata ptr %image, metadata !4096, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %width, metadata !4097, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %height, metadata !4098, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata double %color_distance, metadata !4099, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4100, metadata !DIExpression()), !dbg !4158
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4159
  %0 = load i32, ptr %debug, align 8, !dbg !4159, !tbaa !1044
  %cmp.not = icmp eq i32 %0, 0, !dbg !4161
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4162

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4163
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2134, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !4164
  br label %if.end, !dbg !4165

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4166
  %1 = load i64, ptr %columns, align 8, !dbg !4166, !tbaa !1088
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4167
  %2 = load i64, ptr %rows, align 8, !dbg !4167, !tbaa !1090
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %exception) #13, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %call1, metadata !4104, metadata !DIExpression()), !dbg !4158
  %cmp2 = icmp eq ptr %call1, null, !dbg !4169
  br i1 %cmp2, label %cleanup275, label %if.end4, !dbg !4171

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call1, i32 noundef 1) #13, !dbg !4172
  %cmp6 = icmp eq i32 %call5, 0, !dbg !4174
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !4175

if.then7:                                         ; preds = %if.end4
  %exception8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !4176
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception8) #13, !dbg !4178
  %call9 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #13, !dbg !4179
  call void @llvm.dbg.value(metadata ptr %call9, metadata !4104, metadata !DIExpression()), !dbg !4158
  br label %cleanup275, !dbg !4180

if.end10:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 0, metadata !4106, metadata !DIExpression()), !dbg !4158
  %call11 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !4181
  call void @llvm.dbg.value(metadata ptr %call11, metadata !4101, metadata !DIExpression()), !dbg !4158
  %call12 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !4182
  call void @llvm.dbg.value(metadata ptr %call12, metadata !4103, metadata !DIExpression()), !dbg !4158
  %call13 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #13, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %call13, metadata !4102, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 0, metadata !4107, metadata !DIExpression()), !dbg !4158
  %rows14 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 0, metadata !4106, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 0, metadata !4107, metadata !DIExpression()), !dbg !4158
  %3 = load i64, ptr %rows14, align 8, !dbg !4184, !tbaa !1090
  %cmp15442 = icmp sgt i64 %3, 0, !dbg !4185
  br i1 %cmp15442, label %for.body.lr.ph, label %for.end271, !dbg !4186

for.body.lr.ph:                                   ; preds = %if.end10
  %columns21 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7
  %4 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %mean_pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %mean_pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %mean_pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %mean_pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %mean_pixel, i64 0, i32 9
  %previous_pixel.sroa.3.0.mean_pixel.sroa_idx = getelementptr inbounds i8, ptr %mean_pixel, i64 32
  %previous_pixel.sroa.5.0.mean_pixel.sroa_idx = getelementptr inbounds i8, ptr %mean_pixel, i64 36
  %previous_pixel.sroa.7.0.mean_pixel.sroa_idx = getelementptr inbounds i8, ptr %mean_pixel, i64 40
  %div = sdiv i64 %height, 2
  %sub = sub nsw i64 0, %div
  %cmp43.not413 = icmp slt i64 %height, -1
  %div46 = sdiv i64 %width, 2
  %sub47 = sub nsw i64 0, %div46
  %cmp50.not403 = icmp slt i64 %width, -1
  %div54366 = lshr i64 %width, 1
  %div55367 = lshr i64 %height, 1
  %mul56 = mul i64 %div55367, %div54366
  %red71 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 2
  %green81 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 1
  %mul102 = fmul double %color_distance, %color_distance
  %red119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %sum_pixel, i64 0, i32 5
  %green124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %sum_pixel, i64 0, i32 6
  %blue129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %sum_pixel, i64 0, i32 7
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 3
  %opacity133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %sum_pixel, i64 0, i32 8
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  %5 = call i64 @llvm.abs.i64(i64 %div46, i1 true), !dbg !4186
  %6 = call i64 @llvm.abs.i64(i64 %div, i1 true), !dbg !4186
  br label %for.body, !dbg !4186

for.body:                                         ; preds = %for.body.lr.ph, %cleanup263
  %status.0445 = phi i32 [ 1, %for.body.lr.ph ], [ %status.10, %cleanup263 ]
  %progress.0444 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup263 ]
  %y.0443 = phi i64 [ 0, %for.body.lr.ph ], [ %inc270, %cleanup263 ]
  call void @llvm.dbg.value(metadata i32 %status.0445, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %progress.0444, metadata !4106, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %y.0443, metadata !4107, metadata !DIExpression()), !dbg !4158
  %cmp16 = icmp eq i32 %status.0445, 0, !dbg !4187
  br i1 %cmp16, label %cleanup263, label %if.end18, !dbg !4189

if.end18:                                         ; preds = %for.body
  %7 = load i64, ptr %columns, align 8, !dbg !4190, !tbaa !1088
  %call20 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0443, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #14, !dbg !4191
  call void @llvm.dbg.value(metadata ptr %call20, metadata !4112, metadata !DIExpression()), !dbg !4192
  %8 = load i64, ptr %columns21, align 8, !dbg !4193, !tbaa !1088
  %call22 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call13, i64 noundef 0, i64 noundef %y.0443, i64 noundef %8, i64 noundef 1, ptr noundef %exception) #14, !dbg !4194
  call void @llvm.dbg.value(metadata ptr %call22, metadata !4113, metadata !DIExpression()), !dbg !4192
  %cmp23 = icmp eq ptr %call20, null, !dbg !4195
  %cmp24 = icmp eq ptr %call22, null
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp24, !dbg !4197
  br i1 %or.cond, label %cleanup263, label %if.end26, !dbg !4197

if.end26:                                         ; preds = %if.end18
  %call27 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call11) #13, !dbg !4198
  call void @llvm.dbg.value(metadata ptr %call27, metadata !4108, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 0, metadata !4114, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i32 %status.0445, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %call22, metadata !4113, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %call20, metadata !4112, metadata !DIExpression()), !dbg !4192
  %9 = load i64, ptr %columns21, align 8, !dbg !4199, !tbaa !1088
  %cmp30435 = icmp sgt i64 %9, 0, !dbg !4200
  br i1 %cmp30435, label %for.body31.lr.ph, label %for.end246, !dbg !4201

for.body31.lr.ph:                                 ; preds = %if.end26
  %cmp9.i = icmp ne ptr %call27, null
  %conv33 = sitofp i64 %y.0443 to double
  br label %for.body31, !dbg !4201

for.body31:                                       ; preds = %for.body31.lr.ph, %ClampToQuantum.exit399
  %status.1440 = phi i32 [ %status.0445, %for.body31.lr.ph ], [ %status.3.lcssa, %ClampToQuantum.exit399 ]
  %x.0438 = phi i64 [ 0, %for.body31.lr.ph ], [ %inc245, %ClampToQuantum.exit399 ]
  %q.0437 = phi ptr [ %call22, %for.body31.lr.ph ], [ %incdec.ptr243, %ClampToQuantum.exit399 ]
  %p.0436 = phi ptr [ %call20, %for.body31.lr.ph ], [ %incdec.ptr, %ClampToQuantum.exit399 ]
  call void @llvm.dbg.value(metadata i32 %status.1440, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %x.0438, metadata !4114, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %q.0437, metadata !4113, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %p.0436, metadata !4112, metadata !DIExpression()), !dbg !4192
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mean_pixel) #13, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %mean_pixel, metadata !4115, metadata !DIExpression()), !dbg !4203
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %mean_pixel) #13, !dbg !4204
  %image.val = load i32, ptr %4, align 4, !dbg !4205, !tbaa !1633
  call void @llvm.dbg.value(metadata ptr undef, metadata !4206, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata ptr %p.0436, metadata !4212, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call27, i64 %x.0438), metadata !4213, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4215
  call void @llvm.dbg.value(metadata ptr %mean_pixel, metadata !4214, metadata !DIExpression()), !dbg !4215
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0436, i64 0, i32 2, !dbg !4217
  %10 = load i16, ptr %red.i, align 2, !dbg !4217, !tbaa !1249
  %conv.i = uitofp i16 %10 to float, !dbg !4218
  store float %conv.i, ptr %red1.i, align 8, !dbg !4219, !tbaa !4220
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0436, i64 0, i32 1, !dbg !4223
  %11 = load i16, ptr %green.i, align 2, !dbg !4223, !tbaa !1252
  %conv2.i = uitofp i16 %11 to float, !dbg !4224
  store float %conv2.i, ptr %green3.i, align 4, !dbg !4225, !tbaa !4226
  %12 = load i16, ptr %p.0436, align 2, !dbg !4227, !tbaa !1254
  %conv4.i = uitofp i16 %12 to float, !dbg !4228
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !4229, !tbaa !4230
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0436, i64 0, i32 3, !dbg !4231
  %13 = load i16, ptr %opacity.i, align 2, !dbg !4231, !tbaa !1663
  %conv6.i = uitofp i16 %13 to float, !dbg !4232
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !4233, !tbaa !4234
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !4235
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !4237
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !4237

cond.end.i:                                       ; preds = %for.body31
  %add.ptr = getelementptr inbounds i16, ptr %call27, i64 %x.0438, !dbg !4238
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4213, metadata !DIExpression()), !dbg !4215
  %14 = load i16, ptr %add.ptr, align 2, !dbg !4239, !tbaa !1654
  %conv14.i = uitofp i16 %14 to float, !dbg !4240
  store float %conv14.i, ptr %index15.i, align 8, !dbg !4241, !tbaa !4242
  br label %SetMagickPixelPacket.exit, !dbg !4243

SetMagickPixelPacket.exit:                        ; preds = %for.body31, %cond.end.i
  %conv = sitofp i64 %x.0438 to double, !dbg !4244
  call void @llvm.dbg.value(metadata double %conv, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata double %conv33, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata i64 0, metadata !4135, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata double %conv, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata i32 %status.1440, metadata !4105, metadata !DIExpression()), !dbg !4158
  br label %for.body38, !dbg !4246

for.body38:                                       ; preds = %for.end140, %SetMagickPixelPacket.exit
  %i.0434 = phi i64 [ 0, %SetMagickPixelPacket.exit ], [ %inc229, %for.end140 ]
  %mean_location.sroa.0.0431 = phi double [ %conv, %SetMagickPixelPacket.exit ], [ %mul144, %for.end140 ]
  %mean_location.sroa.9.0428 = phi double [ %conv33, %SetMagickPixelPacket.exit ], [ %mul147, %for.end140 ]
  %status.2427 = phi i32 [ %status.1440, %SetMagickPixelPacket.exit ], [ %status.3.lcssa, %for.end140 ]
  call void @llvm.dbg.value(metadata i64 %i.0434, metadata !4135, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata double %mean_location.sroa.0.0431, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata double %mean_location.sroa.9.0428, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata i32 %status.2427, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sum_pixel) #13, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %sum_pixel, metadata !4141, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %sum_pixel) #13, !dbg !4250
  call void @llvm.dbg.value(metadata double %mean_location.sroa.0.0431, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata double %mean_location.sroa.9.0428, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4245
  %previous_pixel.sroa.3.0.copyload = load float, ptr %previous_pixel.sroa.3.0.mean_pixel.sroa_idx, align 8, !dbg !4251, !tbaa.struct !4252
  call void @llvm.dbg.value(metadata float %previous_pixel.sroa.3.0.copyload, metadata !4132, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !4245
  %previous_pixel.sroa.5.0.copyload = load float, ptr %previous_pixel.sroa.5.0.mean_pixel.sroa_idx, align 4, !dbg !4251, !tbaa.struct !4254
  call void @llvm.dbg.value(metadata float %previous_pixel.sroa.5.0.copyload, metadata !4132, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !4245
  %previous_pixel.sroa.7.0.copyload = load float, ptr %previous_pixel.sroa.7.0.mean_pixel.sroa_idx, align 8, !dbg !4251, !tbaa.struct !4255
  call void @llvm.dbg.value(metadata float %previous_pixel.sroa.7.0.copyload, metadata !4132, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !4245
  call void @llvm.dbg.value(metadata i64 0, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %sub, metadata !4144, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 0, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata i32 %status.2427, metadata !4105, metadata !DIExpression()), !dbg !4158
  br i1 %cmp43.not413, label %for.end140, label %for.body45.lr.ph, !dbg !4256

for.body45.lr.ph:                                 ; preds = %for.body38
  br i1 %cmp50.not403, label %for.end140, label %for.body45, !dbg !4257

for.body45:                                       ; preds = %for.body45.lr.ph, %for.cond48.for.end_crit_edge
  %v.0418 = phi i64 [ %inc139, %for.cond48.for.end_crit_edge ], [ %sub, %for.body45.lr.ph ]
  %count.0417 = phi i64 [ %count.3, %for.cond48.for.end_crit_edge ], [ 0, %for.body45.lr.ph ]
  %sum_location.sroa.0.0416 = phi double [ %sum_location.sroa.0.3, %for.cond48.for.end_crit_edge ], [ 0.000000e+00, %for.body45.lr.ph ]
  %sum_location.sroa.6.0415 = phi double [ %sum_location.sroa.6.3, %for.cond48.for.end_crit_edge ], [ 0.000000e+00, %for.body45.lr.ph ]
  %status.3414 = phi i32 [ %status.5, %for.cond48.for.end_crit_edge ], [ %status.2427, %for.body45.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %v.0418, metadata !4144, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %sub47, metadata !4145, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %count.0417, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.0.0416, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.6.0415, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata i32 %status.3414, metadata !4105, metadata !DIExpression()), !dbg !4158
  %mul = mul nsw i64 %v.0418, %v.0418
  %conv66 = sitofp i64 %v.0418 to double
  %add67 = fadd double %mean_location.sroa.9.0428, %conv66
  %15 = call double @llvm.floor.f64(double %add67) #13, !dbg !4158
  %sub.i370 = fsub double %add67, %15
  %16 = call double @llvm.ceil.f64(double %add67) #13, !dbg !4158
  %sub1.i371 = fsub double %16, %add67
  %cmp.i372 = fcmp olt double %sub.i370, %sub1.i371
  %..i373 = select i1 %cmp.i372, double %15, double %16
  %conv69 = fptosi double %..i373 to i64
  br label %for.body52, !dbg !4257

for.body52:                                       ; preds = %for.body45, %for.inc
  %u.0408 = phi i64 [ %sub47, %for.body45 ], [ %inc137, %for.inc ]
  %count.1407 = phi i64 [ %count.0417, %for.body45 ], [ %count.3, %for.inc ]
  %sum_location.sroa.0.1406 = phi double [ %sum_location.sroa.0.0416, %for.body45 ], [ %sum_location.sroa.0.3, %for.inc ]
  %sum_location.sroa.6.1405 = phi double [ %sum_location.sroa.6.0415, %for.body45 ], [ %sum_location.sroa.6.3, %for.inc ]
  %status.4404 = phi i32 [ %status.3414, %for.body45 ], [ %status.5, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %u.0408, metadata !4145, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %count.1407, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.0.1406, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.6.1405, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata i32 %status.4404, metadata !4105, metadata !DIExpression()), !dbg !4158
  %mul53 = mul nsw i64 %u.0408, %u.0408, !dbg !4259
  %add = add nuw nsw i64 %mul53, %mul, !dbg !4260
  %cmp57.not = icmp sgt i64 %add, %mul56, !dbg !4261
  br i1 %cmp57.not, label %for.inc, label %if.then59, !dbg !4262

if.then59:                                        ; preds = %for.body52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pixel) #13, !dbg !4263
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !4149, metadata !DIExpression()), !dbg !4264
  %conv61 = sitofp i64 %u.0408 to double, !dbg !4265
  %add62 = fadd double %mean_location.sroa.0.0431, %conv61, !dbg !4266
  call void @llvm.dbg.value(metadata double %add62, metadata !3781, metadata !DIExpression()) #13, !dbg !4267
  %17 = call double @llvm.floor.f64(double %add62) #13, !dbg !4269
  %sub.i = fsub double %add62, %17, !dbg !4270
  %18 = call double @llvm.ceil.f64(double %add62) #13, !dbg !4271
  %sub1.i = fsub double %18, %add62, !dbg !4272
  %cmp.i369 = fcmp olt double %sub.i, %sub1.i, !dbg !4273
  %..i = select i1 %cmp.i369, double %17, double %18, !dbg !4267
  %conv64 = fptosi double %..i to i64, !dbg !4274
  call void @llvm.dbg.value(metadata double %add67, metadata !3781, metadata !DIExpression()) #13, !dbg !4275
  %call70 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %call12, i64 noundef %conv64, i64 noundef %conv69, ptr noundef nonnull %pixel, ptr noundef %exception) #13, !dbg !4277
  call void @llvm.dbg.value(metadata i32 %call70, metadata !4105, metadata !DIExpression()), !dbg !4158
  %19 = load float, ptr %red1.i, align 8, !dbg !4278, !tbaa !4220
  %20 = load i16, ptr %red71, align 2, !dbg !4279, !tbaa !1249
  %conv73 = uitofp i16 %20 to float, !dbg !4280
  %sub74 = fsub float %19, %conv73, !dbg !4281
  %21 = load float, ptr %green3.i, align 4, !dbg !4282, !tbaa !4226
  %22 = load i16, ptr %green81, align 2, !dbg !4283, !tbaa !1252
  %conv83 = uitofp i16 %22 to float, !dbg !4284
  %sub84 = fsub float %21, %conv83, !dbg !4285
  %mul90 = fmul float %sub84, %sub84, !dbg !4286
  %23 = call float @llvm.fmuladd.f32(float %sub74, float %sub74, float %mul90), !dbg !4287
  %24 = load float, ptr %blue5.i, align 8, !dbg !4288, !tbaa !4230
  %25 = load i16, ptr %pixel, align 2, !dbg !4289, !tbaa !1254
  %conv93 = uitofp i16 %25 to float, !dbg !4290
  %sub94 = fsub float %24, %conv93, !dbg !4291
  %26 = call float @llvm.fmuladd.f32(float %sub94, float %sub94, float %23), !dbg !4292
  %conv101 = fpext float %26 to double, !dbg !4293
  call void @llvm.dbg.value(metadata double %conv101, metadata !4136, metadata !DIExpression()), !dbg !4249
  %cmp103 = fcmp ult double %mul102, %conv101, !dbg !4294
  br i1 %cmp103, label %if.end135, label %if.then105, !dbg !4296

if.then105:                                       ; preds = %if.then59
  %add110 = fadd double %sum_location.sroa.0.1406, %add62, !dbg !4297
  call void @llvm.dbg.value(metadata double %add110, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  %add115 = fadd double %add67, %sum_location.sroa.6.1405, !dbg !4299
  call void @llvm.dbg.value(metadata double %add115, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  %27 = load float, ptr %red119, align 8, !dbg !4300, !tbaa !4220
  %add120 = fadd float %27, %conv73, !dbg !4300
  store float %add120, ptr %red119, align 8, !dbg !4300, !tbaa !4220
  %28 = load float, ptr %green124, align 4, !dbg !4301, !tbaa !4226
  %add125 = fadd float %28, %conv83, !dbg !4301
  store float %add125, ptr %green124, align 4, !dbg !4301, !tbaa !4226
  %29 = load float, ptr %blue129, align 8, !dbg !4302, !tbaa !4230
  %add130 = fadd float %29, %conv93, !dbg !4302
  store float %add130, ptr %blue129, align 8, !dbg !4302, !tbaa !4230
  %30 = load i16, ptr %opacity, align 2, !dbg !4303, !tbaa !1663
  %conv132 = uitofp i16 %30 to float, !dbg !4304
  %31 = load float, ptr %opacity133, align 4, !dbg !4305, !tbaa !4234
  %add134 = fadd float %31, %conv132, !dbg !4305
  store float %add134, ptr %opacity133, align 4, !dbg !4305, !tbaa !4234
  %inc = add nsw i64 %count.1407, 1, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4143, metadata !DIExpression()), !dbg !4249
  br label %if.end135, !dbg !4307

if.end135:                                        ; preds = %if.then105, %if.then59
  %sum_location.sroa.6.2 = phi double [ %add115, %if.then105 ], [ %sum_location.sroa.6.1405, %if.then59 ], !dbg !4249
  %sum_location.sroa.0.2 = phi double [ %add110, %if.then105 ], [ %sum_location.sroa.0.1406, %if.then59 ], !dbg !4249
  %count.2 = phi i64 [ %inc, %if.then105 ], [ %count.1407, %if.then59 ], !dbg !4249
  call void @llvm.dbg.value(metadata i64 %count.2, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.0.2, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.6.2, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pixel) #13, !dbg !4308
  br label %for.inc, !dbg !4309

for.inc:                                          ; preds = %for.body52, %if.end135
  %status.5 = phi i32 [ %call70, %if.end135 ], [ %status.4404, %for.body52 ], !dbg !4158
  %sum_location.sroa.6.3 = phi double [ %sum_location.sroa.6.2, %if.end135 ], [ %sum_location.sroa.6.1405, %for.body52 ], !dbg !4249
  %sum_location.sroa.0.3 = phi double [ %sum_location.sroa.0.2, %if.end135 ], [ %sum_location.sroa.0.1406, %for.body52 ], !dbg !4249
  %count.3 = phi i64 [ %count.2, %if.end135 ], [ %count.1407, %for.body52 ], !dbg !4249
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.0.3, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.6.3, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !4105, metadata !DIExpression()), !dbg !4158
  %inc137 = add i64 %u.0408, 1, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %inc137, metadata !4145, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata double %sum_location.sroa.0.3, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double %sum_location.sroa.6.3, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  %exitcond.not = icmp eq i64 %u.0408, %5, !dbg !4311
  br i1 %exitcond.not, label %for.cond48.for.end_crit_edge, label %for.body52, !dbg !4257, !llvm.loop !4312

for.cond48.for.end_crit_edge:                     ; preds = %for.inc
  %inc139 = add i64 %v.0418, 1, !dbg !4314
  call void @llvm.dbg.value(metadata i64 %inc139, metadata !4144, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 undef, metadata !4143, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata double undef, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata double undef, metadata !4142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4249
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4158
  %exitcond449.not = icmp eq i64 %v.0418, %6, !dbg !4315
  br i1 %exitcond449.not, label %for.end140, label %for.body45, !dbg !4256, !llvm.loop !4316

for.end140:                                       ; preds = %for.cond48.for.end_crit_edge, %for.body45.lr.ph, %for.body38
  %status.3.lcssa = phi i32 [ %status.2427, %for.body38 ], [ %status.2427, %for.body45.lr.ph ], [ %status.5, %for.cond48.for.end_crit_edge ], !dbg !4318
  %sum_location.sroa.6.0.lcssa = phi double [ 0.000000e+00, %for.body38 ], [ 0.000000e+00, %for.body45.lr.ph ], [ %sum_location.sroa.6.3, %for.cond48.for.end_crit_edge ], !dbg !4319
  %sum_location.sroa.0.0.lcssa = phi double [ 0.000000e+00, %for.body38 ], [ 0.000000e+00, %for.body45.lr.ph ], [ %sum_location.sroa.0.3, %for.cond48.for.end_crit_edge ], !dbg !4320
  %count.0.lcssa = phi i64 [ 0, %for.body38 ], [ 0, %for.body45.lr.ph ], [ %count.3, %for.cond48.for.end_crit_edge ], !dbg !4321
  %conv141 = sitofp i64 %count.0.lcssa to double, !dbg !4322
  %div142 = fdiv double 1.000000e+00, %conv141, !dbg !4323
  call void @llvm.dbg.value(metadata double %div142, metadata !4140, metadata !DIExpression()), !dbg !4249
  %mul144 = fmul double %sum_location.sroa.0.0.lcssa, %div142, !dbg !4324
  call void @llvm.dbg.value(metadata double %mul144, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  %mul147 = fmul double %sum_location.sroa.6.0.lcssa, %div142, !dbg !4325
  call void @llvm.dbg.value(metadata double %mul147, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4245
  %32 = load float, ptr %red119, align 8, !dbg !4326, !tbaa !4220
  %conv150 = fpext float %32 to double, !dbg !4327
  %mul151 = fmul double %div142, %conv150, !dbg !4328
  %conv152 = fptrunc double %mul151 to float, !dbg !4329
  store float %conv152, ptr %red1.i, align 8, !dbg !4330, !tbaa !4220
  %33 = load float, ptr %green124, align 4, !dbg !4331, !tbaa !4226
  %conv155 = fpext float %33 to double, !dbg !4332
  %mul156 = fmul double %div142, %conv155, !dbg !4333
  %conv157 = fptrunc double %mul156 to float, !dbg !4334
  store float %conv157, ptr %green3.i, align 4, !dbg !4335, !tbaa !4226
  %34 = load float, ptr %blue129, align 8, !dbg !4336, !tbaa !4230
  %conv160 = fpext float %34 to double, !dbg !4337
  %mul161 = fmul double %div142, %conv160, !dbg !4338
  %conv162 = fptrunc double %mul161 to float, !dbg !4339
  store float %conv162, ptr %blue5.i, align 8, !dbg !4340, !tbaa !4230
  %35 = load float, ptr %opacity133, align 4, !dbg !4341, !tbaa !4234
  %conv165 = fpext float %35 to double, !dbg !4342
  %mul166 = fmul double %div142, %conv165, !dbg !4343
  %conv167 = fptrunc double %mul166 to float, !dbg !4344
  store float %conv167, ptr %opacity7.i, align 4, !dbg !4345, !tbaa !4234
  %sub171 = fsub double %mul144, %mean_location.sroa.0.0431, !dbg !4346
  %sub178 = fsub double %mul147, %mean_location.sroa.9.0428, !dbg !4347
  %mul182 = fmul double %sub178, %sub178, !dbg !4348
  %36 = call double @llvm.fmuladd.f64(double %sub171, double %sub171, double %mul182), !dbg !4349
  %sub185 = fsub float %conv152, %previous_pixel.sroa.3.0.copyload, !dbg !4350
  %conv186 = fpext float %sub185 to double, !dbg !4351
  %mul187 = fmul double %conv186, 0x3F6FE01FE01FE020, !dbg !4352
  %mul188 = fmul double %mul187, 2.550000e+02, !dbg !4353
  %mul189 = fmul double %mul188, 0x3EF0001000100010, !dbg !4354
  %37 = call double @llvm.fmuladd.f64(double %mul189, double %conv186, double %36), !dbg !4355
  %sub197 = fsub float %conv157, %previous_pixel.sroa.5.0.copyload, !dbg !4356
  %conv198 = fpext float %sub197 to double, !dbg !4357
  %mul199 = fmul double %conv198, 0x3F6FE01FE01FE020, !dbg !4358
  %mul200 = fmul double %mul199, 2.550000e+02, !dbg !4359
  %mul201 = fmul double %mul200, 0x3EF0001000100010, !dbg !4360
  %38 = call double @llvm.fmuladd.f64(double %mul201, double %conv198, double %37), !dbg !4361
  %sub209 = fsub float %conv162, %previous_pixel.sroa.7.0.copyload, !dbg !4362
  %conv210 = fpext float %sub209 to double, !dbg !4363
  %mul211 = fmul double %conv210, 0x3F6FE01FE01FE020, !dbg !4364
  %mul212 = fmul double %mul211, 2.550000e+02, !dbg !4365
  %mul213 = fmul double %mul212, 0x3EF0001000100010, !dbg !4366
  %39 = call double @llvm.fmuladd.f64(double %mul213, double %conv210, double %38), !dbg !4367
  call void @llvm.dbg.value(metadata double %39, metadata !4136, metadata !DIExpression()), !dbg !4249
  %cmp219 = fcmp ugt double %39, 3.000000e+00, !dbg !4368
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sum_pixel) #13, !dbg !4370
  %inc229 = add nuw nsw i64 %i.0434, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %inc229, metadata !4135, metadata !DIExpression()), !dbg !4245
  %cmp36 = icmp ult i64 %i.0434, 99
  %or.cond446 = select i1 %cmp219, i1 %cmp36, i1 false
  call void @llvm.dbg.value(metadata i64 undef, metadata !4135, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata double undef, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata double undef, metadata !4133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4245
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4158
  br i1 %or.cond446, label %for.body38, label %for.end230, !llvm.loop !4372

for.end230:                                       ; preds = %for.end140
  call void @llvm.dbg.value(metadata i32 %status.3.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata float %conv152, metadata !4374, metadata !DIExpression()), !dbg !4380
  %cmp.i374 = fcmp ugt float %conv152, 0.000000e+00, !dbg !4382
  br i1 %cmp.i374, label %if.end.i, label %ClampToQuantum.exit, !dbg !4384

if.end.i:                                         ; preds = %for.end230
  %cmp1.i = fcmp ult float %conv152, 6.553500e+04, !dbg !4385
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !4387

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv152, 5.000000e-01, !dbg !4388
  %conv.i375 = fptoui float %add.i to i16, !dbg !4389
  br label %ClampToQuantum.exit, !dbg !4390

ClampToQuantum.exit:                              ; preds = %for.end230, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i375, %if.end3.i ], [ 0, %for.end230 ], [ -1, %if.end.i ], !dbg !4380
  %red233 = getelementptr inbounds %struct._PixelPacket, ptr %q.0437, i64 0, i32 2, !dbg !4391
  store i16 %retval.0.i, ptr %red233, align 2, !dbg !4392, !tbaa !1249
  call void @llvm.dbg.value(metadata float %conv157, metadata !4374, metadata !DIExpression()), !dbg !4393
  %cmp.i376 = fcmp ugt float %conv157, 0.000000e+00, !dbg !4395
  br i1 %cmp.i376, label %if.end.i378, label %ClampToQuantum.exit383, !dbg !4396

if.end.i378:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i377 = fcmp ult float %conv157, 6.553500e+04, !dbg !4397
  br i1 %cmp1.i377, label %if.end3.i381, label %ClampToQuantum.exit383, !dbg !4398

if.end3.i381:                                     ; preds = %if.end.i378
  %add.i379 = fadd float %conv157, 5.000000e-01, !dbg !4399
  %conv.i380 = fptoui float %add.i379 to i16, !dbg !4400
  br label %ClampToQuantum.exit383, !dbg !4401

ClampToQuantum.exit383:                           ; preds = %ClampToQuantum.exit, %if.end.i378, %if.end3.i381
  %retval.0.i382 = phi i16 [ %conv.i380, %if.end3.i381 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i378 ], !dbg !4393
  %green236 = getelementptr inbounds %struct._PixelPacket, ptr %q.0437, i64 0, i32 1, !dbg !4402
  store i16 %retval.0.i382, ptr %green236, align 2, !dbg !4403, !tbaa !1252
  call void @llvm.dbg.value(metadata float %conv162, metadata !4374, metadata !DIExpression()), !dbg !4404
  %cmp.i384 = fcmp ugt float %conv162, 0.000000e+00, !dbg !4406
  br i1 %cmp.i384, label %if.end.i386, label %ClampToQuantum.exit391, !dbg !4407

if.end.i386:                                      ; preds = %ClampToQuantum.exit383
  %cmp1.i385 = fcmp ult float %conv162, 6.553500e+04, !dbg !4408
  br i1 %cmp1.i385, label %if.end3.i389, label %ClampToQuantum.exit391, !dbg !4409

if.end3.i389:                                     ; preds = %if.end.i386
  %add.i387 = fadd float %conv162, 5.000000e-01, !dbg !4410
  %conv.i388 = fptoui float %add.i387 to i16, !dbg !4411
  br label %ClampToQuantum.exit391, !dbg !4412

ClampToQuantum.exit391:                           ; preds = %ClampToQuantum.exit383, %if.end.i386, %if.end3.i389
  %retval.0.i390 = phi i16 [ %conv.i388, %if.end3.i389 ], [ 0, %ClampToQuantum.exit383 ], [ -1, %if.end.i386 ], !dbg !4404
  store i16 %retval.0.i390, ptr %q.0437, align 2, !dbg !4413, !tbaa !1254
  call void @llvm.dbg.value(metadata float %conv167, metadata !4374, metadata !DIExpression()), !dbg !4414
  %cmp.i392 = fcmp ugt float %conv167, 0.000000e+00, !dbg !4416
  br i1 %cmp.i392, label %if.end.i394, label %ClampToQuantum.exit399, !dbg !4417

if.end.i394:                                      ; preds = %ClampToQuantum.exit391
  %cmp1.i393 = fcmp ult float %conv167, 6.553500e+04, !dbg !4418
  br i1 %cmp1.i393, label %if.end3.i397, label %ClampToQuantum.exit399, !dbg !4419

if.end3.i397:                                     ; preds = %if.end.i394
  %add.i395 = fadd float %conv167, 5.000000e-01, !dbg !4420
  %conv.i396 = fptoui float %add.i395 to i16, !dbg !4421
  br label %ClampToQuantum.exit399, !dbg !4422

ClampToQuantum.exit399:                           ; preds = %ClampToQuantum.exit391, %if.end.i394, %if.end3.i397
  %retval.0.i398 = phi i16 [ %conv.i396, %if.end3.i397 ], [ 0, %ClampToQuantum.exit391 ], [ -1, %if.end.i394 ], !dbg !4414
  %opacity242 = getelementptr inbounds %struct._PixelPacket, ptr %q.0437, i64 0, i32 3, !dbg !4423
  store i16 %retval.0.i398, ptr %opacity242, align 2, !dbg !4424, !tbaa !1663
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0436, i64 1, !dbg !4425
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4112, metadata !DIExpression()), !dbg !4192
  %incdec.ptr243 = getelementptr inbounds %struct._PixelPacket, ptr %q.0437, i64 1, !dbg !4426
  call void @llvm.dbg.value(metadata ptr %incdec.ptr243, metadata !4113, metadata !DIExpression()), !dbg !4192
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mean_pixel) #13, !dbg !4427
  %inc245 = add nuw nsw i64 %x.0438, 1, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %status.3.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %inc245, metadata !4114, metadata !DIExpression()), !dbg !4192
  %40 = load i64, ptr %columns21, align 8, !dbg !4199, !tbaa !1088
  %cmp30 = icmp slt i64 %inc245, %40, !dbg !4200
  br i1 %cmp30, label %for.body31, label %for.end246, !dbg !4201, !llvm.loop !4429

for.end246:                                       ; preds = %ClampToQuantum.exit399, %if.end26
  %status.1.lcssa = phi i32 [ %status.0445, %if.end26 ], [ %status.3.lcssa, %ClampToQuantum.exit399 ], !dbg !4318
  %call247 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call13, ptr noundef %exception) #14, !dbg !4431
  %cmp248 = icmp eq i32 %call247, 0, !dbg !4433
  %spec.select = select i1 %cmp248, i32 0, i32 %status.1.lcssa, !dbg !4434
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4105, metadata !DIExpression()), !dbg !4158
  %41 = load ptr, ptr %progress_monitor, align 8, !dbg !4435, !tbaa !1265
  %cmp252.not = icmp eq ptr %41, null, !dbg !4436
  br i1 %cmp252.not, label %cleanup263, label %SetImageProgress.exit, !dbg !4437

SetImageProgress.exit:                            ; preds = %for.end246
  %inc255 = add nsw i64 %progress.0444, 1, !dbg !4438
  call void @llvm.dbg.value(metadata i64 %inc255, metadata !4106, metadata !DIExpression()), !dbg !4158
  %42 = load i64, ptr %rows, align 8, !dbg !4439, !tbaa !1090
  call void @llvm.dbg.value(metadata ptr %image, metadata !1270, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !1276, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %progress.0444, metadata !1277, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %42, metadata !1278, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !4442
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1279, metadata !DIExpression()) #13, !dbg !4443
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull %filename.i) #13, !dbg !4444
  %43 = load ptr, ptr %progress_monitor, align 8, !dbg !4445, !tbaa !1265
  %44 = load ptr, ptr %client_data.i, align 8, !dbg !4446, !tbaa !1287
  %call4.i = call i32 %43(ptr noundef nonnull %message.i, i64 noundef %progress.0444, i64 noundef %42, ptr noundef %44) #13, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #13, !dbg !4448
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4155, metadata !DIExpression()), !dbg !4449
  %cmp258 = icmp eq i32 %call4.i, 0, !dbg !4450
  %spec.select368 = select i1 %cmp258, i32 0, i32 %spec.select, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %spec.select368, metadata !4105, metadata !DIExpression()), !dbg !4158
  br label %cleanup263, !dbg !4453

cleanup263:                                       ; preds = %for.end246, %SetImageProgress.exit, %if.end18, %for.body
  %progress.2 = phi i64 [ %progress.0444, %for.body ], [ %progress.0444, %if.end18 ], [ %inc255, %SetImageProgress.exit ], [ %progress.0444, %for.end246 ], !dbg !4158
  %status.10 = phi i32 [ 0, %for.body ], [ 0, %if.end18 ], [ %spec.select368, %SetImageProgress.exit ], [ %spec.select, %for.end246 ], !dbg !4158
  call void @llvm.dbg.value(metadata i32 %status.10, metadata !4105, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !4106, metadata !DIExpression()), !dbg !4158
  %inc270 = add nuw nsw i64 %y.0443, 1, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %inc270, metadata !4107, metadata !DIExpression()), !dbg !4158
  %45 = load i64, ptr %rows14, align 8, !dbg !4184, !tbaa !1090
  %cmp15 = icmp slt i64 %inc270, %45, !dbg !4185
  br i1 %cmp15, label %for.body, label %for.end271, !dbg !4186, !llvm.loop !4455

for.end271:                                       ; preds = %cleanup263, %if.end10
  %call272 = call ptr @DestroyCacheView(ptr noundef %call13) #13, !dbg !4457
  call void @llvm.dbg.value(metadata ptr %call272, metadata !4102, metadata !DIExpression()), !dbg !4158
  %call273 = call ptr @DestroyCacheView(ptr noundef %call12) #13, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %call273, metadata !4103, metadata !DIExpression()), !dbg !4158
  %call274 = call ptr @DestroyCacheView(ptr noundef %call11) #13, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %call274, metadata !4101, metadata !DIExpression()), !dbg !4158
  br label %cleanup275, !dbg !4460

cleanup275:                                       ; preds = %if.end, %for.end271, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call1, %for.end271 ], [ null, %if.end ], !dbg !4158
  ret ptr %retval.0, !dbg !4461
}

declare !dbg !4462 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4466 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4470 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4475 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4478 i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { hot nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!597}
!llvm.module.flags = !{!1030, !1031, !1032, !1033, !1034, !1035}
!llvm.ident = !{!1036}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Gx", scope: !2, file: !3, line: 353, type: !951, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "CannyEdgeImage", scope: !3, file: !3, line: 241, type: !4, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !954)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/feature.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8eef5e07433f798bbf5319ab0084c861")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !593, !595, !595, !595, !595, !596}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !8, line: 221, baseType: !9)
!8 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !10, line: 150, size: 105920, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!11 = !{!12, !20, !59, !86, !90, !103, !109, !110, !111, !112, !113, !114, !126, !127, !128, !129, !131, !145, !155, !157, !164, !167, !168, !169, !175, !176, !177, !186, !187, !188, !189, !190, !191, !228, !240, !248, !264, !337, !347, !349, !350, !351, !352, !353, !354, !355, !363, !384, !398, !399, !400, !401, !405, !409, !413, !414, !415, !416, !417, !508, !509, !511, !512, !522, !523, !525, !526, !527, !528, !529, !530, !548, !549, !550, !551, !552, !553, !554, !570, !571, !572, !573, !574, !578, !592}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !9, file: !10, line: 153, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !8, line: 209, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 204, baseType: !15, size: 32, elements: !16)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "UndefinedClass", value: 0)
!18 = !DIEnumerator(name: "DirectClass", value: 1)
!19 = !DIEnumerator(name: "PseudoClass", value: 2)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !9, file: !10, line: 156, baseType: !21, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !22, line: 61, baseType: !23)
!22 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 25, baseType: !15, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!25 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!26 = !DIEnumerator(name: "RGBColorspace", value: 1)
!27 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!28 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!29 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!30 = !DIEnumerator(name: "LabColorspace", value: 5)
!31 = !DIEnumerator(name: "XYZColorspace", value: 6)
!32 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!33 = !DIEnumerator(name: "YCCColorspace", value: 8)
!34 = !DIEnumerator(name: "YIQColorspace", value: 9)
!35 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!36 = !DIEnumerator(name: "YUVColorspace", value: 11)
!37 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!38 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!39 = !DIEnumerator(name: "HSBColorspace", value: 14)
!40 = !DIEnumerator(name: "HSLColorspace", value: 15)
!41 = !DIEnumerator(name: "HWBColorspace", value: 16)
!42 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!43 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!44 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!45 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!46 = !DIEnumerator(name: "LogColorspace", value: 21)
!47 = !DIEnumerator(name: "CMYColorspace", value: 22)
!48 = !DIEnumerator(name: "LuvColorspace", value: 23)
!49 = !DIEnumerator(name: "HCLColorspace", value: 24)
!50 = !DIEnumerator(name: "LCHColorspace", value: 25)
!51 = !DIEnumerator(name: "LMSColorspace", value: 26)
!52 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!53 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!54 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!55 = !DIEnumerator(name: "HSIColorspace", value: 30)
!56 = !DIEnumerator(name: "HSVColorspace", value: 31)
!57 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!58 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !9, file: !10, line: 159, baseType: !60, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !61, line: 49, baseType: !62)
!61 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 25, baseType: !15, size: 32, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!64 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!65 = !DIEnumerator(name: "NoCompression", value: 1)
!66 = !DIEnumerator(name: "BZipCompression", value: 2)
!67 = !DIEnumerator(name: "DXT1Compression", value: 3)
!68 = !DIEnumerator(name: "DXT3Compression", value: 4)
!69 = !DIEnumerator(name: "DXT5Compression", value: 5)
!70 = !DIEnumerator(name: "FaxCompression", value: 6)
!71 = !DIEnumerator(name: "Group4Compression", value: 7)
!72 = !DIEnumerator(name: "JPEGCompression", value: 8)
!73 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!74 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!75 = !DIEnumerator(name: "LZWCompression", value: 11)
!76 = !DIEnumerator(name: "RLECompression", value: 12)
!77 = !DIEnumerator(name: "ZipCompression", value: 13)
!78 = !DIEnumerator(name: "ZipSCompression", value: 14)
!79 = !DIEnumerator(name: "PizCompression", value: 15)
!80 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!81 = !DIEnumerator(name: "B44Compression", value: 17)
!82 = !DIEnumerator(name: "B44ACompression", value: 18)
!83 = !DIEnumerator(name: "LZMACompression", value: 19)
!84 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!85 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !9, file: !10, line: 162, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !9, file: !10, line: 165, baseType: !91, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !10, line: 86, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 75, baseType: !15, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!95 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!96 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!97 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!98 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!99 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!100 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!101 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!102 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !9, file: !10, line: 168, baseType: !104, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !8, line: 215, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 211, baseType: !15, size: 32, elements: !106)
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "MagickFalse", value: 0)
!108 = !DIEnumerator(name: "MagickTrue", value: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !9, file: !10, line: 169, baseType: !104, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !9, file: !10, line: 172, baseType: !87, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !9, file: !10, line: 173, baseType: !87, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !9, file: !10, line: 174, baseType: !87, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !9, file: !10, line: 175, baseType: !87, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !9, file: !10, line: 178, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !117, line: 148, baseType: !118)
!117 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !117, line: 131, size: 64, elements: !119)
!119 = !{!120, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !118, file: !117, line: 143, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !8, line: 93, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !118, file: !117, line: 144, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !118, file: !117, line: 145, baseType: !121, size: 16, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !118, file: !117, line: 146, baseType: !121, size: 16, offset: 48)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !9, file: !10, line: 179, baseType: !116, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !9, file: !10, line: 180, baseType: !116, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !9, file: !10, line: 181, baseType: !116, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !9, file: !10, line: 184, baseType: !130, size: 64, offset: 832)
!130 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !9, file: !10, line: 187, baseType: !132, size: 768, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !10, line: 128, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !10, line: 121, size: 768, elements: !134)
!134 = !{!135, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !133, file: !10, line: 124, baseType: !136, size: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !10, line: 101, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !10, line: 95, size: 192, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !137, file: !10, line: 98, baseType: !130, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !137, file: !10, line: 99, baseType: !130, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !137, file: !10, line: 100, baseType: !130, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !133, file: !10, line: 125, baseType: !136, size: 192, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !133, file: !10, line: 126, baseType: !136, size: 192, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !133, file: !10, line: 127, baseType: !136, size: 192, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !9, file: !10, line: 190, baseType: !146, size: 32, offset: 1664)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !147, line: 49, baseType: !148)
!147 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 42, baseType: !15, size: 32, elements: !149)
!149 = !{!150, !151, !152, !153, !154}
!150 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!151 = !DIEnumerator(name: "SaturationIntent", value: 1)
!152 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!153 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!154 = !DIEnumerator(name: "RelativeIntent", value: 4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !9, file: !10, line: 193, baseType: !156, size: 64, offset: 1728)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !9, file: !10, line: 196, baseType: !158, size: 32, offset: 1792)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !10, line: 93, baseType: !159)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 88, baseType: !15, size: 32, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!162 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!163 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !9, file: !10, line: 199, baseType: !165, size: 64, offset: 1856)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !9, file: !10, line: 200, baseType: !165, size: 64, offset: 1920)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !9, file: !10, line: 201, baseType: !165, size: 64, offset: 1984)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !9, file: !10, line: 204, baseType: !170, size: 64, offset: 2048)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 77, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !173, line: 193, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!174 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !9, file: !10, line: 207, baseType: !130, size: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !9, file: !10, line: 208, baseType: !130, size: 64, offset: 2176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !9, file: !10, line: 211, baseType: !178, size: 256, offset: 2240)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !179, line: 130, baseType: !180)
!179 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !179, line: 121, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !180, file: !179, line: 124, baseType: !87, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !180, file: !179, line: 125, baseType: !87, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !180, file: !179, line: 128, baseType: !170, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !180, file: !179, line: 129, baseType: !170, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !9, file: !10, line: 212, baseType: !178, size: 256, offset: 2496)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !9, file: !10, line: 213, baseType: !178, size: 256, offset: 2752)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !9, file: !10, line: 216, baseType: !130, size: 64, offset: 3008)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !9, file: !10, line: 217, baseType: !130, size: 64, offset: 3072)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !9, file: !10, line: 218, baseType: !130, size: 64, offset: 3136)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !9, file: !10, line: 221, baseType: !192, size: 32, offset: 3200)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !193, line: 66, baseType: !194)
!193 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 32, baseType: !15, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!196 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!197 = !DIEnumerator(name: "PointFilter", value: 1)
!198 = !DIEnumerator(name: "BoxFilter", value: 2)
!199 = !DIEnumerator(name: "TriangleFilter", value: 3)
!200 = !DIEnumerator(name: "HermiteFilter", value: 4)
!201 = !DIEnumerator(name: "HanningFilter", value: 5)
!202 = !DIEnumerator(name: "HammingFilter", value: 6)
!203 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!204 = !DIEnumerator(name: "GaussianFilter", value: 8)
!205 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!206 = !DIEnumerator(name: "CubicFilter", value: 10)
!207 = !DIEnumerator(name: "CatromFilter", value: 11)
!208 = !DIEnumerator(name: "MitchellFilter", value: 12)
!209 = !DIEnumerator(name: "JincFilter", value: 13)
!210 = !DIEnumerator(name: "SincFilter", value: 14)
!211 = !DIEnumerator(name: "SincFastFilter", value: 15)
!212 = !DIEnumerator(name: "KaiserFilter", value: 16)
!213 = !DIEnumerator(name: "WelshFilter", value: 17)
!214 = !DIEnumerator(name: "ParzenFilter", value: 18)
!215 = !DIEnumerator(name: "BohmanFilter", value: 19)
!216 = !DIEnumerator(name: "BartlettFilter", value: 20)
!217 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!218 = !DIEnumerator(name: "LanczosFilter", value: 22)
!219 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!220 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!221 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!222 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!223 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!224 = !DIEnumerator(name: "CosineFilter", value: 28)
!225 = !DIEnumerator(name: "SplineFilter", value: 29)
!226 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!227 = !DIEnumerator(name: "SentinelFilter", value: 31)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !9, file: !10, line: 224, baseType: !229, size: 32, offset: 3232)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !10, line: 73, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 63, baseType: !15, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239}
!232 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!233 = !DIEnumerator(name: "NoInterlace", value: 1)
!234 = !DIEnumerator(name: "LineInterlace", value: 2)
!235 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!236 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!237 = !DIEnumerator(name: "GIFInterlace", value: 5)
!238 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!239 = !DIEnumerator(name: "PNGInterlace", value: 7)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !9, file: !10, line: 227, baseType: !241, size: 32, offset: 3264)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !242, line: 35, baseType: !243)
!242 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 30, baseType: !15, size: 32, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!246 = !DIEnumerator(name: "LSBEndian", value: 1)
!247 = !DIEnumerator(name: "MSBEndian", value: 2)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !9, file: !10, line: 230, baseType: !249, size: 32, offset: 3296)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !179, line: 91, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 77, baseType: !15, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!252 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!253 = !DIEnumerator(name: "ForgetGravity", value: 0)
!254 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!255 = !DIEnumerator(name: "NorthGravity", value: 2)
!256 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!257 = !DIEnumerator(name: "WestGravity", value: 4)
!258 = !DIEnumerator(name: "CenterGravity", value: 5)
!259 = !DIEnumerator(name: "EastGravity", value: 6)
!260 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!261 = !DIEnumerator(name: "SouthGravity", value: 8)
!262 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!263 = !DIEnumerator(name: "StaticGravity", value: 10)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !9, file: !10, line: 233, baseType: !265, size: 32, offset: 3328)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !266, line: 99, baseType: !267)
!266 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 25, baseType: !15, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!269 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!270 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!271 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!272 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!273 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!274 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!275 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!276 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!277 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!278 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!279 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!280 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!281 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!282 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!283 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!284 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!285 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!286 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!287 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!288 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!289 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!290 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!291 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!292 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!293 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!294 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!295 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!296 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!297 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!298 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!299 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!300 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!301 = !DIEnumerator(name: "InCompositeOp", value: 32)
!302 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!303 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!304 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!305 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!306 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!307 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!308 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!309 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!310 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!311 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!312 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!313 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!314 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!315 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!316 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!317 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!318 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!319 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!320 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!321 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!322 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!323 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!324 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!325 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!326 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!327 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!328 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!329 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!330 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!331 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!332 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!333 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!334 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!335 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!336 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !9, file: !10, line: 236, baseType: !338, size: 32, offset: 3360)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !339, line: 32, baseType: !340)
!339 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 25, baseType: !15, size: 32, elements: !341)
!341 = !{!342, !343, !344, !345, !346}
!342 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!343 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!344 = !DIEnumerator(name: "NoneDispose", value: 1)
!345 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!346 = !DIEnumerator(name: "PreviousDispose", value: 3)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !9, file: !10, line: 239, baseType: !348, size: 64, offset: 3392)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !9, file: !10, line: 242, baseType: !87, size: 64, offset: 3456)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !9, file: !10, line: 243, baseType: !87, size: 64, offset: 3520)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !9, file: !10, line: 246, baseType: !170, size: 64, offset: 3584)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !9, file: !10, line: 249, baseType: !87, size: 64, offset: 3648)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !9, file: !10, line: 250, baseType: !87, size: 64, offset: 3712)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !9, file: !10, line: 253, baseType: !170, size: 64, offset: 3776)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !9, file: !10, line: 256, baseType: !356, size: 192, offset: 3840)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !357, line: 68, baseType: !358)
!357 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !357, line: 62, size: 192, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !358, file: !357, line: 65, baseType: !130, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !358, file: !357, line: 66, baseType: !130, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !358, file: !357, line: 67, baseType: !130, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !9, file: !10, line: 259, baseType: !364, size: 512, offset: 4032)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !365, line: 51, baseType: !366)
!365 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !365, line: 40, size: 512, elements: !367)
!367 = !{!368, !375, !376, !383}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !366, file: !365, line: 43, baseType: !369, size: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !365, line: 38, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !365, line: 32, size: 192, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !370, file: !365, line: 35, baseType: !130, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !370, file: !365, line: 36, baseType: !130, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !370, file: !365, line: 37, baseType: !130, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !366, file: !365, line: 44, baseType: !369, size: 192, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !365, line: 47, baseType: !377, size: 32, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !365, line: 30, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 25, baseType: !15, size: 32, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!381 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!382 = !DIEnumerator(name: "RunningTimerState", value: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !366, file: !365, line: 50, baseType: !87, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !9, file: !10, line: 262, baseType: !385, size: 64, offset: 4544)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !386, line: 26, baseType: !387)
!386 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!104, !390, !392, !395, !156}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !8, line: 150, baseType: !394)
!394 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !8, line: 151, baseType: !397)
!397 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !9, file: !10, line: 265, baseType: !156, size: 64, offset: 4608)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !9, file: !10, line: 266, baseType: !156, size: 64, offset: 4672)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !9, file: !10, line: 267, baseType: !156, size: 64, offset: 4736)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !9, file: !10, line: 270, baseType: !402, size: 64, offset: 4800)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !61, line: 52, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !61, line: 51, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !9, file: !10, line: 273, baseType: !406, size: 64, offset: 4864)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !8, line: 217, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !8, line: 217, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !9, file: !10, line: 276, baseType: !410, size: 32768, offset: 4928)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 32768, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 4096)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !9, file: !10, line: 277, baseType: !410, size: 32768, offset: 37696)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !9, file: !10, line: 278, baseType: !410, size: 32768, offset: 70464)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !9, file: !10, line: 281, baseType: !87, size: 64, offset: 103232)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !9, file: !10, line: 282, baseType: !87, size: 64, offset: 103296)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !9, file: !10, line: 285, baseType: !418, size: 448, offset: 103360)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !8, line: 219, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !420, line: 102, size: 448, elements: !421)
!420 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!421 = !{!422, !496, !498, !499, !500, !501, !502, !507}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !419, file: !420, line: 105, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !420, line: 100, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !420, line: 28, baseType: !15, size: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!426 = !DIEnumerator(name: "UndefinedException", value: 0)
!427 = !DIEnumerator(name: "WarningException", value: 300)
!428 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!429 = !DIEnumerator(name: "TypeWarning", value: 305)
!430 = !DIEnumerator(name: "OptionWarning", value: 310)
!431 = !DIEnumerator(name: "DelegateWarning", value: 315)
!432 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!433 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!434 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!435 = !DIEnumerator(name: "BlobWarning", value: 335)
!436 = !DIEnumerator(name: "StreamWarning", value: 340)
!437 = !DIEnumerator(name: "CacheWarning", value: 345)
!438 = !DIEnumerator(name: "CoderWarning", value: 350)
!439 = !DIEnumerator(name: "FilterWarning", value: 352)
!440 = !DIEnumerator(name: "ModuleWarning", value: 355)
!441 = !DIEnumerator(name: "DrawWarning", value: 360)
!442 = !DIEnumerator(name: "ImageWarning", value: 365)
!443 = !DIEnumerator(name: "WandWarning", value: 370)
!444 = !DIEnumerator(name: "RandomWarning", value: 375)
!445 = !DIEnumerator(name: "XServerWarning", value: 380)
!446 = !DIEnumerator(name: "MonitorWarning", value: 385)
!447 = !DIEnumerator(name: "RegistryWarning", value: 390)
!448 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!449 = !DIEnumerator(name: "PolicyWarning", value: 399)
!450 = !DIEnumerator(name: "ErrorException", value: 400)
!451 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!452 = !DIEnumerator(name: "TypeError", value: 405)
!453 = !DIEnumerator(name: "OptionError", value: 410)
!454 = !DIEnumerator(name: "DelegateError", value: 415)
!455 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!456 = !DIEnumerator(name: "CorruptImageError", value: 425)
!457 = !DIEnumerator(name: "FileOpenError", value: 430)
!458 = !DIEnumerator(name: "BlobError", value: 435)
!459 = !DIEnumerator(name: "StreamError", value: 440)
!460 = !DIEnumerator(name: "CacheError", value: 445)
!461 = !DIEnumerator(name: "CoderError", value: 450)
!462 = !DIEnumerator(name: "FilterError", value: 452)
!463 = !DIEnumerator(name: "ModuleError", value: 455)
!464 = !DIEnumerator(name: "DrawError", value: 460)
!465 = !DIEnumerator(name: "ImageError", value: 465)
!466 = !DIEnumerator(name: "WandError", value: 470)
!467 = !DIEnumerator(name: "RandomError", value: 475)
!468 = !DIEnumerator(name: "XServerError", value: 480)
!469 = !DIEnumerator(name: "MonitorError", value: 485)
!470 = !DIEnumerator(name: "RegistryError", value: 490)
!471 = !DIEnumerator(name: "ConfigureError", value: 495)
!472 = !DIEnumerator(name: "PolicyError", value: 499)
!473 = !DIEnumerator(name: "FatalErrorException", value: 700)
!474 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!475 = !DIEnumerator(name: "TypeFatalError", value: 705)
!476 = !DIEnumerator(name: "OptionFatalError", value: 710)
!477 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!478 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!479 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!480 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!481 = !DIEnumerator(name: "BlobFatalError", value: 735)
!482 = !DIEnumerator(name: "StreamFatalError", value: 740)
!483 = !DIEnumerator(name: "CacheFatalError", value: 745)
!484 = !DIEnumerator(name: "CoderFatalError", value: 750)
!485 = !DIEnumerator(name: "FilterFatalError", value: 752)
!486 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!487 = !DIEnumerator(name: "DrawFatalError", value: 760)
!488 = !DIEnumerator(name: "ImageFatalError", value: 765)
!489 = !DIEnumerator(name: "WandFatalError", value: 770)
!490 = !DIEnumerator(name: "RandomFatalError", value: 775)
!491 = !DIEnumerator(name: "XServerFatalError", value: 780)
!492 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!493 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!494 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!495 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !419, file: !420, line: 108, baseType: !497, size: 32, offset: 32)
!497 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !419, file: !420, line: 111, baseType: !165, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !419, file: !420, line: 112, baseType: !165, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !419, file: !420, line: 115, baseType: !156, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !419, file: !420, line: 118, baseType: !104, size: 32, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !419, file: !420, line: 121, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !505, line: 26, baseType: !506)
!505 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !505, line: 25, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !419, file: !420, line: 124, baseType: !87, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !9, file: !10, line: 288, baseType: !104, size: 32, offset: 103808)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !9, file: !10, line: 291, baseType: !510, size: 64, offset: 103872)
!510 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !9, file: !10, line: 294, baseType: !503, size: 64, offset: 103936)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !9, file: !10, line: 297, baseType: !513, size: 256, offset: 104000)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !147, line: 40, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !147, line: 27, size: 256, elements: !515)
!515 = !{!516, !517, !518, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !147, line: 30, baseType: !165, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !514, file: !147, line: 33, baseType: !87, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !514, file: !147, line: 36, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !514, file: !147, line: 39, baseType: !87, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !9, file: !10, line: 298, baseType: !513, size: 256, offset: 104256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !9, file: !10, line: 299, baseType: !524, size: 64, offset: 104512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !9, file: !10, line: 302, baseType: !87, size: 64, offset: 104576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !9, file: !10, line: 305, baseType: !87, size: 64, offset: 104640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !9, file: !10, line: 308, baseType: !348, size: 64, offset: 104704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !9, file: !10, line: 309, baseType: !348, size: 64, offset: 104768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !10, line: 310, baseType: !348, size: 64, offset: 104832)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !9, file: !10, line: 313, baseType: !531, size: 32, offset: 104896)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !117, line: 47, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 31, baseType: !15, size: 32, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!534 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!535 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!536 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!537 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!538 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!539 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!540 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!541 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!542 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!543 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!544 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!545 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!546 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!547 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !9, file: !10, line: 316, baseType: !104, size: 32, offset: 104928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !9, file: !10, line: 319, baseType: !116, size: 64, offset: 104960)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !9, file: !10, line: 322, baseType: !348, size: 64, offset: 105024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !9, file: !10, line: 325, baseType: !178, size: 256, offset: 105088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !9, file: !10, line: 328, baseType: !156, size: 64, offset: 105344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !9, file: !10, line: 329, baseType: !156, size: 64, offset: 105408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !10, line: 332, baseType: !555, size: 32, offset: 105472)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !10, line: 61, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 47, baseType: !15, size: 32, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!558 = !DIEnumerator(name: "UndefinedType", value: 0)
!559 = !DIEnumerator(name: "BilevelType", value: 1)
!560 = !DIEnumerator(name: "GrayscaleType", value: 2)
!561 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!562 = !DIEnumerator(name: "PaletteType", value: 4)
!563 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!564 = !DIEnumerator(name: "TrueColorType", value: 6)
!565 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!566 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!567 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!568 = !DIEnumerator(name: "OptimizeType", value: 10)
!569 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !9, file: !10, line: 335, baseType: !104, size: 32, offset: 105504)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !9, file: !10, line: 338, baseType: !396, size: 64, offset: 105536)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !9, file: !10, line: 341, baseType: !104, size: 32, offset: 105600)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !9, file: !10, line: 344, baseType: !87, size: 64, offset: 105664)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !9, file: !10, line: 347, baseType: !575, size: 64, offset: 105728)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !576, line: 7, baseType: !577)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !173, line: 160, baseType: !174)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !9, file: !10, line: 350, baseType: !579, size: 32, offset: 105792)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !117, line: 79, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 67, baseType: !15, size: 32, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!582 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!583 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!584 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!585 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!586 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!587 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!588 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!589 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!590 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!591 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !9, file: !10, line: 353, baseType: !87, size: 64, offset: 105856)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !767, globals: !948, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/feature.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "8eef5e07433f798bbf5319ab0084c861")
!599 = !{!14, !23, !62, !92, !105, !148, !159, !194, !230, !243, !250, !267, !340, !378, !424, !532, !556, !580, !600, !641, !666, !688, !713, !746}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !601, line: 27, baseType: !15, size: 32, elements: !602)
!601 = !DIFile(filename: "apps/538.imagick_r/src/magick/morphology.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c6a894945ec2a897d86b4fa1dd783082")
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!603 = !DIEnumerator(name: "UndefinedKernel", value: 0)
!604 = !DIEnumerator(name: "UnityKernel", value: 1)
!605 = !DIEnumerator(name: "GaussianKernel", value: 2)
!606 = !DIEnumerator(name: "DoGKernel", value: 3)
!607 = !DIEnumerator(name: "LoGKernel", value: 4)
!608 = !DIEnumerator(name: "BlurKernel", value: 5)
!609 = !DIEnumerator(name: "CometKernel", value: 6)
!610 = !DIEnumerator(name: "LaplacianKernel", value: 7)
!611 = !DIEnumerator(name: "SobelKernel", value: 8)
!612 = !DIEnumerator(name: "FreiChenKernel", value: 9)
!613 = !DIEnumerator(name: "RobertsKernel", value: 10)
!614 = !DIEnumerator(name: "PrewittKernel", value: 11)
!615 = !DIEnumerator(name: "CompassKernel", value: 12)
!616 = !DIEnumerator(name: "KirschKernel", value: 13)
!617 = !DIEnumerator(name: "DiamondKernel", value: 14)
!618 = !DIEnumerator(name: "SquareKernel", value: 15)
!619 = !DIEnumerator(name: "RectangleKernel", value: 16)
!620 = !DIEnumerator(name: "OctagonKernel", value: 17)
!621 = !DIEnumerator(name: "DiskKernel", value: 18)
!622 = !DIEnumerator(name: "PlusKernel", value: 19)
!623 = !DIEnumerator(name: "CrossKernel", value: 20)
!624 = !DIEnumerator(name: "RingKernel", value: 21)
!625 = !DIEnumerator(name: "PeaksKernel", value: 22)
!626 = !DIEnumerator(name: "EdgesKernel", value: 23)
!627 = !DIEnumerator(name: "CornersKernel", value: 24)
!628 = !DIEnumerator(name: "DiagonalsKernel", value: 25)
!629 = !DIEnumerator(name: "LineEndsKernel", value: 26)
!630 = !DIEnumerator(name: "LineJunctionsKernel", value: 27)
!631 = !DIEnumerator(name: "RidgesKernel", value: 28)
!632 = !DIEnumerator(name: "ConvexHullKernel", value: 29)
!633 = !DIEnumerator(name: "ThinSEKernel", value: 30)
!634 = !DIEnumerator(name: "SkeletonKernel", value: 31)
!635 = !DIEnumerator(name: "ChebyshevKernel", value: 32)
!636 = !DIEnumerator(name: "ManhattanKernel", value: 33)
!637 = !DIEnumerator(name: "OctagonalKernel", value: 34)
!638 = !DIEnumerator(name: "EuclideanKernel", value: 35)
!639 = !DIEnumerator(name: "UserDefinedKernel", value: 36)
!640 = !DIEnumerator(name: "BinomialKernel", value: 37)
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !642, line: 34, baseType: !15, size: 32, elements: !643)
!642 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!644 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!645 = !DIEnumerator(name: "NoEvents", value: 0)
!646 = !DIEnumerator(name: "TraceEvent", value: 1)
!647 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!648 = !DIEnumerator(name: "BlobEvent", value: 4)
!649 = !DIEnumerator(name: "CacheEvent", value: 8)
!650 = !DIEnumerator(name: "CoderEvent", value: 16)
!651 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!652 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!653 = !DIEnumerator(name: "DrawEvent", value: 128)
!654 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!655 = !DIEnumerator(name: "ImageEvent", value: 512)
!656 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!657 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!658 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!659 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!660 = !DIEnumerator(name: "TransformEvent", value: 16384)
!661 = !DIEnumerator(name: "UserEvent", value: 36864)
!662 = !DIEnumerator(name: "WandEvent", value: 65536)
!663 = !DIEnumerator(name: "X11Event", value: 131072)
!664 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!665 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!666 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 177, baseType: !15, size: 32, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!668 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!669 = !DIEnumerator(name: "RedChannel", value: 1)
!670 = !DIEnumerator(name: "GrayChannel", value: 1)
!671 = !DIEnumerator(name: "CyanChannel", value: 1)
!672 = !DIEnumerator(name: "GreenChannel", value: 2)
!673 = !DIEnumerator(name: "MagentaChannel", value: 2)
!674 = !DIEnumerator(name: "BlueChannel", value: 4)
!675 = !DIEnumerator(name: "YellowChannel", value: 4)
!676 = !DIEnumerator(name: "AlphaChannel", value: 8)
!677 = !DIEnumerator(name: "OpacityChannel", value: 8)
!678 = !DIEnumerator(name: "MatteChannel", value: 8)
!679 = !DIEnumerator(name: "BlackChannel", value: 32)
!680 = !DIEnumerator(name: "IndexChannel", value: 32)
!681 = !DIEnumerator(name: "CompositeChannels", value: 47)
!682 = !DIEnumerator(name: "AllChannels", value: 134217727)
!683 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!684 = !DIEnumerator(name: "RGBChannels", value: 128)
!685 = !DIEnumerator(name: "GrayChannels", value: 128)
!686 = !DIEnumerator(name: "SyncChannels", value: 256)
!687 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!688 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !601, line: 69, baseType: !15, size: 32, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!690 = !DIEnumerator(name: "UndefinedMorphology", value: 0)
!691 = !DIEnumerator(name: "ConvolveMorphology", value: 1)
!692 = !DIEnumerator(name: "CorrelateMorphology", value: 2)
!693 = !DIEnumerator(name: "ErodeMorphology", value: 3)
!694 = !DIEnumerator(name: "DilateMorphology", value: 4)
!695 = !DIEnumerator(name: "ErodeIntensityMorphology", value: 5)
!696 = !DIEnumerator(name: "DilateIntensityMorphology", value: 6)
!697 = !DIEnumerator(name: "DistanceMorphology", value: 7)
!698 = !DIEnumerator(name: "OpenMorphology", value: 8)
!699 = !DIEnumerator(name: "CloseMorphology", value: 9)
!700 = !DIEnumerator(name: "OpenIntensityMorphology", value: 10)
!701 = !DIEnumerator(name: "CloseIntensityMorphology", value: 11)
!702 = !DIEnumerator(name: "SmoothMorphology", value: 12)
!703 = !DIEnumerator(name: "EdgeInMorphology", value: 13)
!704 = !DIEnumerator(name: "EdgeOutMorphology", value: 14)
!705 = !DIEnumerator(name: "EdgeMorphology", value: 15)
!706 = !DIEnumerator(name: "TopHatMorphology", value: 16)
!707 = !DIEnumerator(name: "BottomHatMorphology", value: 17)
!708 = !DIEnumerator(name: "HitAndMissMorphology", value: 18)
!709 = !DIEnumerator(name: "ThinningMorphology", value: 19)
!710 = !DIEnumerator(name: "ThickenMorphology", value: 20)
!711 = !DIEnumerator(name: "VoronoiMorphology", value: 21)
!712 = !DIEnumerator(name: "IterativeDistanceMorphology", value: 22)
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !714, line: 27, baseType: !15, size: 32, elements: !715)
!714 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!716 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!717 = !DIEnumerator(name: "RotatePreview", value: 1)
!718 = !DIEnumerator(name: "ShearPreview", value: 2)
!719 = !DIEnumerator(name: "RollPreview", value: 3)
!720 = !DIEnumerator(name: "HuePreview", value: 4)
!721 = !DIEnumerator(name: "SaturationPreview", value: 5)
!722 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!723 = !DIEnumerator(name: "GammaPreview", value: 7)
!724 = !DIEnumerator(name: "SpiffPreview", value: 8)
!725 = !DIEnumerator(name: "DullPreview", value: 9)
!726 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!727 = !DIEnumerator(name: "QuantizePreview", value: 11)
!728 = !DIEnumerator(name: "DespecklePreview", value: 12)
!729 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!730 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!731 = !DIEnumerator(name: "SharpenPreview", value: 15)
!732 = !DIEnumerator(name: "BlurPreview", value: 16)
!733 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!734 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!735 = !DIEnumerator(name: "SpreadPreview", value: 19)
!736 = !DIEnumerator(name: "SolarizePreview", value: 20)
!737 = !DIEnumerator(name: "ShadePreview", value: 21)
!738 = !DIEnumerator(name: "RaisePreview", value: 22)
!739 = !DIEnumerator(name: "SegmentPreview", value: 23)
!740 = !DIEnumerator(name: "SwirlPreview", value: 24)
!741 = !DIEnumerator(name: "ImplodePreview", value: 25)
!742 = !DIEnumerator(name: "WavePreview", value: 26)
!743 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!744 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!745 = !DIEnumerator(name: "JPEGPreview", value: 29)
!746 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !747, line: 27, baseType: !15, size: 32, elements: !748)
!747 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!749 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!750 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!751 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!752 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!753 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!754 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!755 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!756 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!757 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!758 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!759 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!760 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!761 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!762 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!763 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!764 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!765 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!766 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!767 = !{!89, !768, !156, !6, !788, !170, !792, !115, !385, !794, !497, !816, !825, !828, !829, !130, !87, !121, !390, !15, !946}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "KernelInfo", file: !601, line: 128, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "KernelInfo", file: !601, line: 102, size: 832, elements: !771)
!771 = !{!772, !774, !775, !776, !777, !778, !780, !781, !782, !783, !784, !785, !787}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !601, line: 105, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "KernelInfoType", file: !601, line: 67, baseType: !600)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !770, file: !601, line: 108, baseType: !87, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !770, file: !601, line: 109, baseType: !87, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !770, file: !601, line: 112, baseType: !170, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !770, file: !601, line: 113, baseType: !170, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !770, file: !601, line: 116, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !770, file: !601, line: 117, baseType: !130, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !770, file: !601, line: 118, baseType: !130, size: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "negative_range", scope: !770, file: !601, line: 119, baseType: !130, size: 64, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "positive_range", scope: !770, file: !601, line: 120, baseType: !130, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "angle", scope: !770, file: !601, line: 121, baseType: !130, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !601, line: 124, baseType: !786, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !770, file: !601, line: 127, baseType: !87, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatrixInfo", file: !790, line: 26, baseType: !791)
!790 = !DIFile(filename: "apps/538.imagick_r/src/magick/matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "eb3e46c8fbd61488836928d66ca395c0")
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MatrixInfo", file: !790, line: 25, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelFeatures", file: !796, line: 45, baseType: !797)
!796 = !DIFile(filename: "apps/538.imagick_r/src/magick/feature.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "dbe73de8fac9b3b50939c7a0dc145cd9")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelFeatures", file: !796, line: 28, size: 3584, elements: !798)
!798 = !{!799, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "angular_second_moment", scope: !797, file: !796, line: 31, baseType: !800, size: 256)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 4)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !797, file: !796, line: 32, baseType: !800, size: 256, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "correlation", scope: !797, file: !796, line: 33, baseType: !800, size: 256, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "variance_sum_of_squares", scope: !797, file: !796, line: 34, baseType: !800, size: 256, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_difference_moment", scope: !797, file: !796, line: 35, baseType: !800, size: 256, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_average", scope: !797, file: !796, line: 36, baseType: !800, size: 256, offset: 1280)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sum_variance", scope: !797, file: !796, line: 37, baseType: !800, size: 256, offset: 1536)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sum_entropy", scope: !797, file: !796, line: 38, baseType: !800, size: 256, offset: 1792)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !797, file: !796, line: 39, baseType: !800, size: 256, offset: 2048)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "difference_variance", scope: !797, file: !796, line: 40, baseType: !800, size: 256, offset: 2304)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "difference_entropy", scope: !797, file: !796, line: 41, baseType: !800, size: 256, offset: 2560)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "measure_of_correlation_1", scope: !797, file: !796, line: 42, baseType: !800, size: 256, offset: 2816)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "measure_of_correlation_2", scope: !797, file: !796, line: 43, baseType: !800, size: 256, offset: 3072)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_correlation_coefficient", scope: !797, file: !796, line: 44, baseType: !800, size: 256, offset: 3328)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "LongPixelPacket", file: !117, line: 102, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LongPixelPacket", file: !117, line: 94, size: 160, elements: !819)
!819 = !{!820, !821, !822, !823, !824}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !818, file: !117, line: 97, baseType: !15, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !818, file: !117, line: 98, baseType: !15, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !818, file: !117, line: 99, baseType: !15, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !818, file: !117, line: 100, baseType: !15, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !818, file: !117, line: 101, baseType: !15, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !117, line: 129, baseType: !121)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelStatistics", scope: !831, file: !3, line: 642, baseType: !934)
!831 = distinct !DISubprogram(name: "GetImageChannelFeatures", scope: !3, file: !3, line: 635, type: !832, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !835)
!832 = !DISubroutineType(types: !833)
!833 = !{!794, !593, !834, !596}
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!835 = !{!836, !837, !838, !839, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !869, !870, !875, !877, !878, !882, !883, !884, !885, !886, !887, !888, !892, !893, !897, !901, !905, !909, !913, !917, !921, !925, !929, !930}
!836 = !DILocalVariable(name: "image", arg: 1, scope: !831, file: !3, line: 635, type: !593)
!837 = !DILocalVariable(name: "distance", arg: 2, scope: !831, file: !3, line: 636, type: !834)
!838 = !DILocalVariable(name: "exception", arg: 3, scope: !831, file: !3, line: 636, type: !596)
!839 = !DILocalVariable(name: "image_view", scope: !831, file: !3, line: 645, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !747, line: 50, baseType: !842)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !117, line: 160, flags: DIFlagFwdDecl)
!843 = !DILocalVariable(name: "channel_features", scope: !831, file: !3, line: 648, type: !794)
!844 = !DILocalVariable(name: "cooccurrence", scope: !831, file: !3, line: 651, type: !828)
!845 = !DILocalVariable(name: "correlation", scope: !831, file: !3, line: 652, type: !830)
!846 = !DILocalVariable(name: "density_x", scope: !831, file: !3, line: 653, type: !829)
!847 = !DILocalVariable(name: "density_xy", scope: !831, file: !3, line: 654, type: !829)
!848 = !DILocalVariable(name: "density_y", scope: !831, file: !3, line: 655, type: !829)
!849 = !DILocalVariable(name: "entropy_x", scope: !831, file: !3, line: 656, type: !830)
!850 = !DILocalVariable(name: "entropy_xy", scope: !831, file: !3, line: 657, type: !830)
!851 = !DILocalVariable(name: "entropy_xy1", scope: !831, file: !3, line: 658, type: !830)
!852 = !DILocalVariable(name: "entropy_xy2", scope: !831, file: !3, line: 659, type: !830)
!853 = !DILocalVariable(name: "entropy_y", scope: !831, file: !3, line: 660, type: !830)
!854 = !DILocalVariable(name: "mean", scope: !831, file: !3, line: 661, type: !830)
!855 = !DILocalVariable(name: "Q", scope: !831, file: !3, line: 662, type: !828)
!856 = !DILocalVariable(name: "sum", scope: !831, file: !3, line: 663, type: !829)
!857 = !DILocalVariable(name: "sum_squares", scope: !831, file: !3, line: 664, type: !830)
!858 = !DILocalVariable(name: "variance", scope: !831, file: !3, line: 665, type: !830)
!859 = !DILocalVariable(name: "gray", scope: !831, file: !3, line: 668, type: !817)
!860 = !DILocalVariable(name: "grays", scope: !831, file: !3, line: 669, type: !816)
!861 = !DILocalVariable(name: "status", scope: !831, file: !3, line: 672, type: !104)
!862 = !DILocalVariable(name: "i", scope: !831, file: !3, line: 675, type: !170)
!863 = !DILocalVariable(name: "length", scope: !831, file: !3, line: 678, type: !87)
!864 = !DILocalVariable(name: "y", scope: !831, file: !3, line: 681, type: !170)
!865 = !DILocalVariable(name: "number_grays", scope: !831, file: !3, line: 684, type: !15)
!866 = !DILocalVariable(name: "message", scope: !867, file: !3, line: 696, type: !165)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 696, column: 5)
!868 = distinct !DILexicalBlock(scope: !831, file: !3, line: 695, column: 7)
!869 = !DILocalVariable(name: "exception", scope: !867, file: !3, line: 696, type: !418)
!870 = !DILocalVariable(name: "indexes", scope: !871, file: !3, line: 728, type: !874)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 726, column: 3)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 725, column: 3)
!873 = distinct !DILexicalBlock(scope: !831, file: !3, line: 725, column: 3)
!874 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !825)
!875 = !DILocalVariable(name: "p", scope: !871, file: !3, line: 731, type: !876)
!876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !792)
!877 = !DILocalVariable(name: "x", scope: !871, file: !3, line: 734, type: !170)
!878 = !DILocalVariable(name: "indexes", scope: !879, file: !3, line: 903, type: !874)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 901, column: 3)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 900, column: 3)
!881 = distinct !DILexicalBlock(scope: !831, file: !3, line: 900, column: 3)
!882 = !DILocalVariable(name: "p", scope: !879, file: !3, line: 906, type: !876)
!883 = !DILocalVariable(name: "x", scope: !879, file: !3, line: 909, type: !170)
!884 = !DILocalVariable(name: "i", scope: !879, file: !3, line: 912, type: !170)
!885 = !DILocalVariable(name: "offset", scope: !879, file: !3, line: 913, type: !170)
!886 = !DILocalVariable(name: "u", scope: !879, file: !3, line: 914, type: !170)
!887 = !DILocalVariable(name: "v", scope: !879, file: !3, line: 915, type: !170)
!888 = !DILocalVariable(name: "normalize", scope: !889, file: !3, line: 1039, type: !130)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 1037, column: 3)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1036, column: 3)
!891 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1036, column: 3)
!892 = !DILocalVariable(name: "y", scope: !889, file: !3, line: 1042, type: !170)
!893 = !DILocalVariable(name: "x", scope: !894, file: !3, line: 1084, type: !170)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1082, column: 5)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1081, column: 5)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1081, column: 5)
!897 = !DILocalVariable(name: "y", scope: !898, file: !3, line: 1108, type: !170)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1106, column: 3)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1105, column: 3)
!900 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1105, column: 3)
!901 = !DILocalVariable(name: "x", scope: !902, file: !3, line: 1113, type: !170)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1111, column: 5)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1110, column: 5)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1110, column: 5)
!905 = !DILocalVariable(name: "x", scope: !906, file: !3, line: 1293, type: !170)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 1291, column: 3)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 1290, column: 3)
!908 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1290, column: 3)
!909 = !DILocalVariable(name: "y", scope: !910, file: !3, line: 1369, type: !170)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1367, column: 3)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1366, column: 3)
!912 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1366, column: 3)
!913 = !DILocalVariable(name: "x", scope: !914, file: !3, line: 1374, type: !170)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1372, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 1371, column: 5)
!916 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1371, column: 5)
!917 = !DILocalVariable(name: "x", scope: !918, file: !3, line: 1488, type: !170)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1486, column: 3)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1485, column: 3)
!920 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1485, column: 3)
!921 = !DILocalVariable(name: "z", scope: !922, file: !3, line: 1640, type: !170)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1638, column: 3)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1637, column: 3)
!924 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1637, column: 3)
!925 = !DILocalVariable(name: "y", scope: !926, file: !3, line: 1645, type: !170)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1643, column: 5)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1642, column: 5)
!928 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1642, column: 5)
!929 = !DILocalVariable(name: "pixel", scope: !926, file: !3, line: 1648, type: !830)
!930 = !DILocalVariable(name: "x", scope: !931, file: !3, line: 1654, type: !170)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 1652, column: 7)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1651, column: 7)
!933 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1651, column: 7)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelStatistics", scope: !831, file: !3, line: 638, size: 1280, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !934, file: !3, line: 641, baseType: !937, size: 1280)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 1280, elements: !801)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "DoublePixelPacket", file: !117, line: 92, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DoublePixelPacket", file: !117, line: 84, size: 320, elements: !940)
!940 = !{!941, !942, !943, !944, !945}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !939, file: !117, line: 87, baseType: !130, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !939, file: !117, line: 88, baseType: !130, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !939, file: !117, line: 89, baseType: !130, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !939, file: !117, line: 90, baseType: !130, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !939, file: !117, line: 91, baseType: !130, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !8, line: 78, baseType: !947)
!947 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!948 = !{!0, !949}
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(name: "Gy", scope: !2, file: !3, line: 358, type: !951, isLocal: true, isDefinition: true)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !952)
!952 = !{!953, !953}
!953 = !DISubrange(count: 2)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !986, !987, !991, !992, !993, !994, !995, !999, !1003, !1006, !1011, !1012, !1016, !1017, !1018, !1021, !1025, !1029}
!955 = !DILocalVariable(name: "image", arg: 1, scope: !2, file: !3, line: 241, type: !593)
!956 = !DILocalVariable(name: "radius", arg: 2, scope: !2, file: !3, line: 241, type: !595)
!957 = !DILocalVariable(name: "sigma", arg: 3, scope: !2, file: !3, line: 242, type: !595)
!958 = !DILocalVariable(name: "lower_percent", arg: 4, scope: !2, file: !3, line: 242, type: !595)
!959 = !DILocalVariable(name: "upper_percent", arg: 5, scope: !2, file: !3, line: 242, type: !595)
!960 = !DILocalVariable(name: "exception", arg: 6, scope: !2, file: !3, line: 243, type: !596)
!961 = !DILocalVariable(name: "edge_view", scope: !2, file: !3, line: 248, type: !840)
!962 = !DILocalVariable(name: "pixel", scope: !2, file: !3, line: 251, type: !963)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "CannyInfo", file: !3, line: 145, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CannyInfo", file: !3, line: 133, size: 320, elements: !965)
!965 = !{!966, !967, !968, !969, !970}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !964, file: !3, line: 136, baseType: !130, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !964, file: !3, line: 137, baseType: !130, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !964, file: !3, line: 140, baseType: !497, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !964, file: !3, line: 143, baseType: !170, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !964, file: !3, line: 144, baseType: !170, size: 64, offset: 256)
!971 = !DILocalVariable(name: "geometry", scope: !2, file: !3, line: 254, type: !410)
!972 = !DILocalVariable(name: "lower_threshold", scope: !2, file: !3, line: 257, type: !130)
!973 = !DILocalVariable(name: "max", scope: !2, file: !3, line: 258, type: !130)
!974 = !DILocalVariable(name: "min", scope: !2, file: !3, line: 259, type: !130)
!975 = !DILocalVariable(name: "upper_threshold", scope: !2, file: !3, line: 260, type: !130)
!976 = !DILocalVariable(name: "edge_image", scope: !2, file: !3, line: 263, type: !6)
!977 = !DILocalVariable(name: "kernel_info", scope: !2, file: !3, line: 266, type: !768)
!978 = !DILocalVariable(name: "status", scope: !2, file: !3, line: 269, type: !104)
!979 = !DILocalVariable(name: "progress", scope: !2, file: !3, line: 272, type: !393)
!980 = !DILocalVariable(name: "canny_cache", scope: !2, file: !3, line: 275, type: !788)
!981 = !DILocalVariable(name: "y", scope: !2, file: !3, line: 278, type: !170)
!982 = !DILocalVariable(name: "p", scope: !983, file: !3, line: 323, type: !876)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 321, column: 3)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 320, column: 3)
!985 = distinct !DILexicalBlock(scope: !2, file: !3, line: 320, column: 3)
!986 = !DILocalVariable(name: "x", scope: !983, file: !3, line: 326, type: !170)
!987 = !DILocalVariable(name: "pixel", scope: !988, file: !3, line: 340, type: !963)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 338, column: 5)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 337, column: 5)
!990 = distinct !DILexicalBlock(scope: !983, file: !3, line: 337, column: 5)
!991 = !DILocalVariable(name: "dx", scope: !988, file: !3, line: 343, type: !130)
!992 = !DILocalVariable(name: "dy", scope: !988, file: !3, line: 344, type: !130)
!993 = !DILocalVariable(name: "kernel_pixels", scope: !988, file: !3, line: 347, type: !876)
!994 = !DILocalVariable(name: "v", scope: !988, file: !3, line: 350, type: !170)
!995 = !DILocalVariable(name: "u", scope: !996, file: !3, line: 371, type: !170)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 369, column: 7)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 368, column: 7)
!998 = distinct !DILexicalBlock(scope: !988, file: !3, line: 368, column: 7)
!999 = !DILocalVariable(name: "intensity", scope: !1000, file: !3, line: 376, type: !130)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 374, column: 9)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 373, column: 9)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 373, column: 9)
!1003 = !DILocalVariable(name: "slope", scope: !1004, file: !3, line: 389, type: !130)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 387, column: 9)
!1005 = distinct !DILexicalBlock(scope: !988, file: !3, line: 386, column: 11)
!1006 = !DILocalVariable(name: "q", scope: !1007, file: !3, line: 435, type: !1010)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 433, column: 3)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 432, column: 3)
!1009 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 3)
!1010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!1011 = !DILocalVariable(name: "x", scope: !1007, file: !3, line: 438, type: !170)
!1012 = !DILocalVariable(name: "alpha_pixel", scope: !1013, file: !3, line: 452, type: !963)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 450, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 449, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 449, column: 5)
!1016 = !DILocalVariable(name: "beta_pixel", scope: !1013, file: !3, line: 453, type: !963)
!1017 = !DILocalVariable(name: "pixel", scope: !1013, file: !3, line: 454, type: !963)
!1018 = !DILocalVariable(name: "proceed", scope: !1019, file: !3, line: 521, type: !104)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 519, column: 7)
!1020 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 518, column: 9)
!1021 = !DILocalVariable(name: "x", scope: !1022, file: !3, line: 545, type: !170)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 543, column: 3)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 542, column: 3)
!1024 = distinct !DILexicalBlock(scope: !2, file: !3, line: 542, column: 3)
!1025 = !DILocalVariable(name: "pixel", scope: !1026, file: !3, line: 552, type: !963)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 550, column: 5)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 549, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 549, column: 5)
!1029 = !DILocalVariable(name: "p", scope: !1026, file: !3, line: 555, type: !876)
!1030 = !{i32 7, !"Dwarf Version", i32 5}
!1031 = !{i32 2, !"Debug Info Version", i32 3}
!1032 = !{i32 1, !"wchar_size", i32 4}
!1033 = !{i32 7, !"PIC Level", i32 2}
!1034 = !{i32 7, !"PIE Level", i32 2}
!1035 = !{i32 7, !"uwtable", i32 2}
!1036 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1037 = !DILocation(line: 0, scope: !2)
!1038 = !DILocation(line: 250, column: 3, scope: !2)
!1039 = !DILocation(line: 251, column: 5, scope: !2)
!1040 = !DILocation(line: 253, column: 3, scope: !2)
!1041 = !DILocation(line: 254, column: 5, scope: !2)
!1042 = !DILocation(line: 282, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !2, file: !3, line: 282, column: 7)
!1044 = !{!1045, !1046, i64 12976}
!1045 = !{!"_Image", !1046, i64 0, !1046, i64 4, !1046, i64 8, !1048, i64 16, !1046, i64 24, !1046, i64 28, !1046, i64 32, !1048, i64 40, !1048, i64 48, !1048, i64 56, !1048, i64 64, !1049, i64 72, !1050, i64 80, !1050, i64 88, !1050, i64 96, !1052, i64 104, !1053, i64 112, !1046, i64 208, !1049, i64 216, !1046, i64 224, !1049, i64 232, !1049, i64 240, !1049, i64 248, !1048, i64 256, !1052, i64 264, !1052, i64 272, !1055, i64 280, !1055, i64 312, !1055, i64 344, !1052, i64 376, !1052, i64 384, !1052, i64 392, !1046, i64 400, !1046, i64 404, !1046, i64 408, !1046, i64 412, !1046, i64 416, !1046, i64 420, !1049, i64 424, !1048, i64 432, !1048, i64 440, !1048, i64 448, !1048, i64 456, !1048, i64 464, !1048, i64 472, !1056, i64 480, !1057, i64 504, !1049, i64 568, !1049, i64 576, !1049, i64 584, !1049, i64 592, !1049, i64 600, !1049, i64 608, !1046, i64 616, !1046, i64 4712, !1046, i64 8808, !1048, i64 12904, !1048, i64 12912, !1059, i64 12920, !1046, i64 12976, !1048, i64 12984, !1049, i64 12992, !1061, i64 13000, !1061, i64 13032, !1049, i64 13064, !1048, i64 13072, !1048, i64 13080, !1049, i64 13088, !1049, i64 13096, !1049, i64 13104, !1046, i64 13112, !1046, i64 13116, !1050, i64 13120, !1049, i64 13128, !1055, i64 13136, !1049, i64 13168, !1049, i64 13176, !1046, i64 13184, !1046, i64 13188, !1062, i64 13192, !1046, i64 13200, !1048, i64 13208, !1048, i64 13216, !1046, i64 13224, !1048, i64 13232}
!1046 = !{!"omnipotent char", !1047, i64 0}
!1047 = !{!"Simple C/C++ TBAA"}
!1048 = !{!"long", !1046, i64 0}
!1049 = !{!"any pointer", !1046, i64 0}
!1050 = !{!"_PixelPacket", !1051, i64 0, !1051, i64 2, !1051, i64 4, !1051, i64 6}
!1051 = !{!"short", !1046, i64 0}
!1052 = !{!"double", !1046, i64 0}
!1053 = !{!"_ChromaticityInfo", !1054, i64 0, !1054, i64 24, !1054, i64 48, !1054, i64 72}
!1054 = !{!"_PrimaryInfo", !1052, i64 0, !1052, i64 8, !1052, i64 16}
!1055 = !{!"_RectangleInfo", !1048, i64 0, !1048, i64 8, !1048, i64 16, !1048, i64 24}
!1056 = !{!"_ErrorInfo", !1052, i64 0, !1052, i64 8, !1052, i64 16}
!1057 = !{!"_TimerInfo", !1058, i64 0, !1058, i64 24, !1046, i64 48, !1048, i64 56}
!1058 = !{!"_Timer", !1052, i64 0, !1052, i64 8, !1052, i64 16}
!1059 = !{!"_ExceptionInfo", !1046, i64 0, !1060, i64 4, !1049, i64 8, !1049, i64 16, !1049, i64 24, !1046, i64 32, !1049, i64 40, !1048, i64 48}
!1060 = !{!"int", !1046, i64 0}
!1061 = !{!"_ProfileInfo", !1049, i64 0, !1048, i64 8, !1049, i64 16, !1048, i64 24}
!1062 = !{!"long long", !1046, i64 0}
!1063 = !DILocation(line: 282, column: 20, scope: !1043)
!1064 = !DILocation(line: 282, column: 7, scope: !2)
!1065 = !DILocation(line: 283, column: 68, scope: !1043)
!1066 = !DILocation(line: 283, column: 12, scope: !1043)
!1067 = !DILocation(line: 283, column: 5, scope: !1043)
!1068 = !DILocation(line: 289, column: 10, scope: !2)
!1069 = !DILocation(line: 291, column: 15, scope: !2)
!1070 = !DILocation(line: 292, column: 19, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !2, file: !3, line: 292, column: 7)
!1072 = !DILocation(line: 292, column: 7, scope: !2)
!1073 = !DILocation(line: 293, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 293, column: 5)
!1075 = !DILocation(line: 294, column: 14, scope: !2)
!1076 = !DILocation(line: 296, column: 15, scope: !2)
!1077 = !DILocation(line: 297, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !2, file: !3, line: 297, column: 7)
!1079 = !DILocation(line: 297, column: 7, scope: !2)
!1080 = !DILocation(line: 299, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !2, file: !3, line: 299, column: 7)
!1082 = !DILocation(line: 299, column: 53, scope: !1081)
!1083 = !DILocation(line: 299, column: 7, scope: !2)
!1084 = !DILocation(line: 301, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 300, column: 5)
!1086 = !DILocation(line: 302, column: 7, scope: !1085)
!1087 = !DILocation(line: 307, column: 45, scope: !2)
!1088 = !{!1045, !1048, i64 40}
!1089 = !DILocation(line: 307, column: 65, scope: !2)
!1090 = !{!1045, !1048, i64 48}
!1091 = !DILocation(line: 307, column: 15, scope: !2)
!1092 = !DILocation(line: 309, column: 19, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !2, file: !3, line: 309, column: 7)
!1094 = !DILocation(line: 309, column: 7, scope: !2)
!1095 = !DILocation(line: 311, column: 18, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 310, column: 5)
!1097 = !DILocation(line: 312, column: 7, scope: !1096)
!1098 = !DILocation(line: 315, column: 13, scope: !2)
!1099 = !DILocation(line: 320, column: 39, scope: !984)
!1100 = !DILocation(line: 320, column: 15, scope: !984)
!1101 = !DILocation(line: 320, column: 3, scope: !985)
!1102 = !DILocation(line: 328, column: 16, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !983, file: !3, line: 328, column: 9)
!1104 = !DILocation(line: 328, column: 9, scope: !983)
!1105 = !DILocation(line: 330, column: 59, scope: !983)
!1106 = !DILocation(line: 330, column: 66, scope: !983)
!1107 = !DILocation(line: 330, column: 7, scope: !983)
!1108 = !DILocation(line: 0, scope: !983)
!1109 = !DILocation(line: 332, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !983, file: !3, line: 332, column: 9)
!1111 = !DILocation(line: 332, column: 9, scope: !983)
!1112 = !DILocation(line: 337, column: 41, scope: !989)
!1113 = !DILocation(line: 337, column: 17, scope: !989)
!1114 = !DILocation(line: 337, column: 5, scope: !990)
!1115 = !DILocation(line: 339, column: 7, scope: !988)
!1116 = !DILocation(line: 340, column: 9, scope: !988)
!1117 = !DILocation(line: 364, column: 14, scope: !988)
!1118 = !DILocation(line: 0, scope: !988)
!1119 = !DILocation(line: 368, column: 7, scope: !998)
!1120 = !DILocation(line: 0, scope: !996)
!1121 = !DILocation(line: 373, column: 9, scope: !1002)
!1122 = !DILocation(line: 378, column: 63, scope: !1000)
!1123 = !DILocation(line: 378, column: 21, scope: !1000)
!1124 = !DILocation(line: 0, scope: !1000)
!1125 = !DILocation(line: 379, column: 19, scope: !1000)
!1126 = !{!1052, !1052, i64 0}
!1127 = !DILocation(line: 379, column: 18, scope: !1000)
!1128 = !DILocation(line: 379, column: 13, scope: !1000)
!1129 = !DILocation(line: 380, column: 19, scope: !1000)
!1130 = !DILocation(line: 380, column: 18, scope: !1000)
!1131 = !DILocation(line: 380, column: 13, scope: !1000)
!1132 = distinct !{!1132, !1121, !1133, !1134, !1135}
!1133 = !DILocation(line: 381, column: 9, scope: !1002)
!1134 = !{!"llvm.loop.mustprogress"}
!1135 = !{!"llvm.loop.unroll.disable"}
!1136 = !DILocation(line: 382, column: 36, scope: !996)
!1137 = !DILocation(line: 382, column: 43, scope: !996)
!1138 = !DILocation(line: 382, column: 22, scope: !996)
!1139 = distinct !{!1139, !1119, !1140, !1134, !1135}
!1140 = !DILocation(line: 383, column: 7, scope: !998)
!1141 = !DILocation(line: 384, column: 23, scope: !988)
!1142 = !DILocation(line: 384, column: 22, scope: !988)
!1143 = !{!1144, !1052, i64 0}
!1144 = !{!"_CannyInfo", !1052, i64 0, !1052, i64 8, !1060, i64 16, !1048, i64 24, !1048, i64 32}
!1145 = !DILocation(line: 385, column: 24, scope: !988)
!1146 = !{!1144, !1060, i64 16}
!1147 = !DILocation(line: 386, column: 11, scope: !1005)
!1148 = !DILocation(line: 386, column: 20, scope: !1005)
!1149 = !DILocation(line: 386, column: 11, scope: !988)
!1150 = !DILocation(line: 391, column: 19, scope: !1004)
!1151 = !DILocation(line: 0, scope: !1004)
!1152 = !DILocation(line: 392, column: 21, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 392, column: 15)
!1154 = !DILocation(line: 392, column: 15, scope: !1004)
!1155 = !DILocation(line: 394, column: 25, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 394, column: 19)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 393, column: 13)
!1158 = !DILocation(line: 394, column: 19, scope: !1157)
!1159 = !DILocation(line: 397, column: 27, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 397, column: 21)
!1161 = !DILocation(line: 404, column: 25, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 404, column: 19)
!1163 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 403, column: 13)
!1164 = !DILocation(line: 404, column: 19, scope: !1163)
!1165 = !DILocation(line: 407, column: 27, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 407, column: 21)
!1167 = !DILocation(line: 0, scope: !1153)
!1168 = !DILocation(line: 413, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !988, file: !3, line: 413, column: 11)
!1170 = !DILocation(line: 413, column: 52, scope: !1169)
!1171 = !DILocation(line: 413, column: 11, scope: !988)
!1172 = !DILocation(line: 416, column: 5, scope: !989)
!1173 = !DILocation(line: 337, column: 51, scope: !989)
!1174 = distinct !{!1174, !1114, !1175, !1134, !1135}
!1175 = !DILocation(line: 416, column: 5, scope: !990)
!1176 = !DILocation(line: 320, column: 46, scope: !984)
!1177 = distinct !{!1177, !1101, !1178, !1134, !1135}
!1178 = !DILocation(line: 417, column: 3, scope: !985)
!1179 = !DILocation(line: 314, column: 9, scope: !2)
!1180 = !DILocation(line: 418, column: 13, scope: !2)
!1181 = !DILocation(line: 424, column: 10, scope: !2)
!1182 = !DILocation(line: 425, column: 13, scope: !2)
!1183 = !{!1144, !1052, i64 8}
!1184 = !DILocation(line: 427, column: 13, scope: !2)
!1185 = !DILocation(line: 432, column: 39, scope: !1008)
!1186 = !DILocation(line: 432, column: 15, scope: !1008)
!1187 = !DILocation(line: 432, column: 3, scope: !1009)
!1188 = !DILocation(line: 440, column: 16, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 440, column: 9)
!1190 = !DILocation(line: 440, column: 9, scope: !1007)
!1191 = !DILocation(line: 442, column: 61, scope: !1007)
!1192 = !DILocation(line: 442, column: 7, scope: !1007)
!1193 = !DILocation(line: 0, scope: !1007)
!1194 = !DILocation(line: 444, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 444, column: 9)
!1196 = !DILocation(line: 444, column: 9, scope: !1007)
!1197 = !DILocation(line: 449, column: 41, scope: !1014)
!1198 = !DILocation(line: 449, column: 17, scope: !1014)
!1199 = !DILocation(line: 449, column: 5, scope: !1015)
!1200 = !DILocation(line: 451, column: 7, scope: !1013)
!1201 = !DILocation(line: 452, column: 9, scope: !1013)
!1202 = !DILocation(line: 453, column: 9, scope: !1013)
!1203 = !DILocation(line: 454, column: 9, scope: !1013)
!1204 = !DILocation(line: 456, column: 14, scope: !1013)
!1205 = !DILocation(line: 457, column: 21, scope: !1013)
!1206 = !DILocation(line: 457, column: 7, scope: !1013)
!1207 = !DILocation(line: 465, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 461, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 458, column: 7)
!1210 = !DILocation(line: 466, column: 18, scope: !1208)
!1211 = !DILocation(line: 467, column: 11, scope: !1208)
!1212 = !DILocation(line: 474, column: 48, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 470, column: 9)
!1214 = !DILocation(line: 474, column: 18, scope: !1213)
!1215 = !DILocation(line: 475, column: 48, scope: !1213)
!1216 = !DILocation(line: 475, column: 18, scope: !1213)
!1217 = !DILocation(line: 476, column: 11, scope: !1213)
!1218 = !DILocation(line: 483, column: 48, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 479, column: 9)
!1220 = !DILocation(line: 483, column: 18, scope: !1219)
!1221 = !DILocation(line: 484, column: 48, scope: !1219)
!1222 = !DILocation(line: 484, column: 18, scope: !1219)
!1223 = !DILocation(line: 485, column: 11, scope: !1219)
!1224 = !DILocation(line: 492, column: 48, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 488, column: 9)
!1226 = !DILocation(line: 492, column: 18, scope: !1225)
!1227 = !DILocation(line: 493, column: 48, scope: !1225)
!1228 = !DILocation(line: 493, column: 18, scope: !1225)
!1229 = !DILocation(line: 494, column: 11, scope: !1225)
!1230 = !DILocation(line: 497, column: 29, scope: !1013)
!1231 = !DILocation(line: 498, column: 42, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 498, column: 11)
!1233 = !DILocation(line: 498, column: 28, scope: !1232)
!1234 = !DILocation(line: 498, column: 53, scope: !1232)
!1235 = !DILocation(line: 0, scope: !1232)
!1236 = !DILocation(line: 501, column: 14, scope: !1013)
!1237 = !DILocation(line: 506, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 506, column: 13)
!1239 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 505, column: 7)
!1240 = !DILocation(line: 506, column: 29, scope: !1238)
!1241 = !DILocation(line: 506, column: 13, scope: !1239)
!1242 = !DILocation(line: 507, column: 11, scope: !1238)
!1243 = !DILocation(line: 508, column: 29, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 508, column: 13)
!1245 = !DILocation(line: 508, column: 13, scope: !1239)
!1246 = !DILocation(line: 509, column: 11, scope: !1244)
!1247 = !DILocation(line: 511, column: 10, scope: !1013)
!1248 = !DILocation(line: 511, column: 13, scope: !1013)
!1249 = !{!1050, !1051, i64 4}
!1250 = !DILocation(line: 512, column: 10, scope: !1013)
!1251 = !DILocation(line: 512, column: 15, scope: !1013)
!1252 = !{!1050, !1051, i64 2}
!1253 = !DILocation(line: 513, column: 14, scope: !1013)
!1254 = !{!1050, !1051, i64 0}
!1255 = !DILocation(line: 514, column: 8, scope: !1013)
!1256 = !DILocation(line: 515, column: 5, scope: !1014)
!1257 = !DILocation(line: 449, column: 51, scope: !1014)
!1258 = distinct !{!1258, !1199, !1259, !1134, !1135}
!1259 = !DILocation(line: 515, column: 5, scope: !1015)
!1260 = !DILocation(line: 516, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 516, column: 9)
!1262 = !DILocation(line: 516, column: 59, scope: !1261)
!1263 = !DILocation(line: 516, column: 9, scope: !1007)
!1264 = !DILocation(line: 518, column: 16, scope: !1020)
!1265 = !{!1045, !1049, i64 568}
!1266 = !DILocation(line: 518, column: 33, scope: !1020)
!1267 = !DILocation(line: 518, column: 9, scope: !1007)
!1268 = !DILocation(line: 526, column: 66, scope: !1019)
!1269 = !DILocation(line: 527, column: 18, scope: !1019)
!1270 = !DILocalVariable(name: "image", arg: 1, scope: !1271, file: !1272, line: 27, type: !593)
!1271 = distinct !DISubprogram(name: "SetImageProgress", scope: !1272, file: !1272, line: 27, type: !1273, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1275)
!1272 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!104, !593, !390, !392, !395}
!1275 = !{!1270, !1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "tag", arg: 2, scope: !1271, file: !1272, line: 28, type: !390)
!1277 = !DILocalVariable(name: "offset", arg: 3, scope: !1271, file: !1272, line: 28, type: !392)
!1278 = !DILocalVariable(name: "extent", arg: 4, scope: !1271, file: !1272, line: 28, type: !395)
!1279 = !DILocalVariable(name: "message", scope: !1271, file: !1272, line: 31, type: !410)
!1280 = !DILocation(line: 0, scope: !1271, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 526, column: 17, scope: !1019)
!1282 = !DILocation(line: 30, column: 3, scope: !1271, inlinedAt: !1281)
!1283 = !DILocation(line: 31, column: 5, scope: !1271, inlinedAt: !1281)
!1284 = !DILocation(line: 35, column: 10, scope: !1271, inlinedAt: !1281)
!1285 = !DILocation(line: 36, column: 17, scope: !1271, inlinedAt: !1281)
!1286 = !DILocation(line: 36, column: 63, scope: !1271, inlinedAt: !1281)
!1287 = !{!1045, !1049, i64 576}
!1288 = !DILocation(line: 36, column: 10, scope: !1271, inlinedAt: !1281)
!1289 = !DILocation(line: 37, column: 1, scope: !1271, inlinedAt: !1281)
!1290 = !DILocation(line: 0, scope: !1019)
!1291 = !DILocation(line: 528, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 528, column: 13)
!1293 = !DILocation(line: 528, column: 13, scope: !1019)
!1294 = !DILocation(line: 530, column: 7, scope: !1019)
!1295 = !DILocation(line: 426, column: 6, scope: !2)
!1296 = !DILocation(line: 425, column: 6, scope: !2)
!1297 = !DILocation(line: 432, column: 46, scope: !1008)
!1298 = distinct !{!1298, !1187, !1299, !1134, !1135}
!1299 = !DILocation(line: 531, column: 3, scope: !1009)
!1300 = !DILocation(line: 532, column: 13, scope: !2)
!1301 = !DILocation(line: 536, column: 37, scope: !2)
!1302 = !DILocation(line: 536, column: 42, scope: !2)
!1303 = !DILocation(line: 537, column: 42, scope: !2)
!1304 = !DILocation(line: 541, column: 13, scope: !2)
!1305 = !DILocation(line: 542, column: 39, scope: !1023)
!1306 = !DILocation(line: 542, column: 15, scope: !1023)
!1307 = !DILocation(line: 542, column: 3, scope: !1024)
!1308 = !DILocation(line: 547, column: 16, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 547, column: 9)
!1310 = !DILocation(line: 547, column: 9, scope: !1022)
!1311 = !DILocation(line: 0, scope: !1022)
!1312 = !DILocation(line: 549, column: 41, scope: !1027)
!1313 = !DILocation(line: 549, column: 17, scope: !1027)
!1314 = !DILocation(line: 549, column: 5, scope: !1028)
!1315 = !DILocation(line: 551, column: 7, scope: !1026)
!1316 = !DILocation(line: 552, column: 9, scope: !1026)
!1317 = !DILocation(line: 560, column: 9, scope: !1026)
!1318 = !DILocation(line: 0, scope: !1026)
!1319 = !DILocation(line: 561, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 561, column: 11)
!1321 = !DILocation(line: 561, column: 11, scope: !1026)
!1322 = !DILocation(line: 563, column: 14, scope: !1026)
!1323 = !DILocation(line: 564, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 564, column: 11)
!1325 = !DILocation(line: 564, column: 11, scope: !1026)
!1326 = !DILocation(line: 566, column: 12, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 566, column: 11)
!1328 = !DILocation(line: 566, column: 44, scope: !1327)
!1329 = !DILocation(line: 566, column: 52, scope: !1327)
!1330 = !DILocalVariable(name: "edge_image", arg: 1, scope: !1331, file: !3, line: 157, type: !6)
!1331 = distinct !DISubprogram(name: "TraceEdges", scope: !3, file: !3, line: 157, type: !1332, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1335)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!104, !6, !840, !788, !1334, !1334, !595, !596}
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!1335 = !{!1330, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1351}
!1336 = !DILocalVariable(name: "edge_view", arg: 2, scope: !1331, file: !3, line: 157, type: !840)
!1337 = !DILocalVariable(name: "canny_cache", arg: 3, scope: !1331, file: !3, line: 158, type: !788)
!1338 = !DILocalVariable(name: "x", arg: 4, scope: !1331, file: !3, line: 158, type: !1334)
!1339 = !DILocalVariable(name: "y", arg: 5, scope: !1331, file: !3, line: 158, type: !1334)
!1340 = !DILocalVariable(name: "lower_threshold", arg: 6, scope: !1331, file: !3, line: 159, type: !595)
!1341 = !DILocalVariable(name: "exception", arg: 7, scope: !1331, file: !3, line: 159, type: !596)
!1342 = !DILocalVariable(name: "edge", scope: !1331, file: !3, line: 162, type: !963)
!1343 = !DILocalVariable(name: "pixel", scope: !1331, file: !3, line: 163, type: !963)
!1344 = !DILocalVariable(name: "status", scope: !1331, file: !3, line: 166, type: !104)
!1345 = !DILocalVariable(name: "q", scope: !1331, file: !3, line: 169, type: !115)
!1346 = !DILocalVariable(name: "i", scope: !1331, file: !3, line: 172, type: !170)
!1347 = !DILocalVariable(name: "v", scope: !1348, file: !3, line: 192, type: !170)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 190, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 189, column: 3)
!1350 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 189, column: 3)
!1351 = !DILocalVariable(name: "u", scope: !1352, file: !3, line: 201, type: !170)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 199, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 198, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 198, column: 5)
!1355 = !DILocation(line: 0, scope: !1331, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 568, column: 16, scope: !1327)
!1357 = !DILocation(line: 161, column: 3, scope: !1331, inlinedAt: !1356)
!1358 = !DILocation(line: 162, column: 5, scope: !1331, inlinedAt: !1356)
!1359 = !DILocation(line: 163, column: 5, scope: !1331, inlinedAt: !1356)
!1360 = !DILocation(line: 174, column: 5, scope: !1331, inlinedAt: !1356)
!1361 = !DILocation(line: 175, column: 9, scope: !1362, inlinedAt: !1356)
!1362 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 175, column: 7)
!1363 = !DILocation(line: 175, column: 7, scope: !1331, inlinedAt: !1356)
!1364 = !DILocation(line: 177, column: 6, scope: !1331, inlinedAt: !1356)
!1365 = !DILocation(line: 177, column: 9, scope: !1331, inlinedAt: !1356)
!1366 = !DILocation(line: 178, column: 6, scope: !1331, inlinedAt: !1356)
!1367 = !DILocation(line: 178, column: 11, scope: !1331, inlinedAt: !1356)
!1368 = !DILocation(line: 179, column: 10, scope: !1331, inlinedAt: !1356)
!1369 = !DILocation(line: 180, column: 10, scope: !1331, inlinedAt: !1356)
!1370 = !DILocation(line: 181, column: 14, scope: !1371, inlinedAt: !1356)
!1371 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 181, column: 7)
!1372 = !DILocation(line: 181, column: 7, scope: !1331, inlinedAt: !1356)
!1373 = !DILocation(line: 183, column: 7, scope: !1374, inlinedAt: !1356)
!1374 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 183, column: 7)
!1375 = !DILocation(line: 183, column: 47, scope: !1374, inlinedAt: !1356)
!1376 = !DILocation(line: 183, column: 7, scope: !1331, inlinedAt: !1356)
!1377 = !DILocation(line: 185, column: 9, scope: !1331, inlinedAt: !1356)
!1378 = !{!1144, !1048, i64 24}
!1379 = !DILocation(line: 186, column: 9, scope: !1331, inlinedAt: !1356)
!1380 = !{!1144, !1048, i64 32}
!1381 = !DILocation(line: 187, column: 7, scope: !1382, inlinedAt: !1356)
!1382 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 187, column: 7)
!1383 = !DILocation(line: 187, column: 47, scope: !1382, inlinedAt: !1356)
!1384 = !DILocation(line: 187, column: 7, scope: !1331, inlinedAt: !1356)
!1385 = !DILocation(line: 189, column: 15, scope: !1349, inlinedAt: !1356)
!1386 = !DILocation(line: 189, column: 3, scope: !1350, inlinedAt: !1356)
!1387 = distinct !{!1387, !1386, !1388, !1134, !1135}
!1388 = !DILocation(line: 237, column: 3, scope: !1350, inlinedAt: !1356)
!1389 = !DILocation(line: 194, column: 6, scope: !1348, inlinedAt: !1356)
!1390 = !DILocation(line: 195, column: 12, scope: !1348, inlinedAt: !1356)
!1391 = !DILocation(line: 196, column: 16, scope: !1392, inlinedAt: !1356)
!1392 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 196, column: 9)
!1393 = !DILocation(line: 196, column: 9, scope: !1348, inlinedAt: !1356)
!1394 = !DILocation(line: 0, scope: !1348, inlinedAt: !1356)
!1395 = !DILocation(line: 0, scope: !1352, inlinedAt: !1356)
!1396 = !DILocation(line: 203, column: 7, scope: !1397, inlinedAt: !1356)
!1397 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 203, column: 7)
!1398 = !DILocation(line: 205, column: 16, scope: !1399, inlinedAt: !1356)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 205, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 204, column: 7)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 203, column: 7)
!1402 = !DILocation(line: 205, column: 22, scope: !1399, inlinedAt: !1356)
!1403 = !DILocation(line: 207, column: 46, scope: !1404, inlinedAt: !1356)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 207, column: 13)
!1405 = !DILocation(line: 207, column: 47, scope: !1404, inlinedAt: !1356)
!1406 = !DILocation(line: 207, column: 55, scope: !1404, inlinedAt: !1356)
!1407 = !DILocation(line: 207, column: 56, scope: !1404, inlinedAt: !1356)
!1408 = !DILocalVariable(name: "image", arg: 1, scope: !1409, file: !3, line: 147, type: !593)
!1409 = distinct !DISubprogram(name: "IsAuthenticPixel", scope: !3, file: !3, line: 147, type: !1410, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!104, !593, !1334, !1334}
!1412 = !{!1408, !1413, !1414}
!1413 = !DILocalVariable(name: "x", arg: 2, scope: !1409, file: !3, line: 148, type: !1334)
!1414 = !DILocalVariable(name: "y", arg: 3, scope: !1409, file: !3, line: 148, type: !1334)
!1415 = !DILocation(line: 0, scope: !1409, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 207, column: 13, scope: !1404, inlinedAt: !1356)
!1417 = !DILocation(line: 150, column: 10, scope: !1418, inlinedAt: !1416)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 150, column: 7)
!1419 = !DILocation(line: 150, column: 15, scope: !1418, inlinedAt: !1416)
!1420 = !DILocation(line: 150, column: 41, scope: !1418, inlinedAt: !1416)
!1421 = !DILocation(line: 150, column: 21, scope: !1418, inlinedAt: !1416)
!1422 = !DILocation(line: 150, column: 7, scope: !1409, inlinedAt: !1416)
!1423 = !DILocation(line: 152, column: 41, scope: !1424, inlinedAt: !1416)
!1424 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 152, column: 7)
!1425 = !DILocation(line: 152, column: 21, scope: !1424, inlinedAt: !1416)
!1426 = !DILocation(line: 207, column: 13, scope: !1400, inlinedAt: !1356)
!1427 = !DILocation(line: 212, column: 11, scope: !1400, inlinedAt: !1356)
!1428 = !DILocation(line: 214, column: 15, scope: !1429, inlinedAt: !1356)
!1429 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 214, column: 13)
!1430 = !DILocation(line: 214, column: 13, scope: !1400, inlinedAt: !1356)
!1431 = !DILocation(line: 216, column: 50, scope: !1400, inlinedAt: !1356)
!1432 = !DILocation(line: 216, column: 51, scope: !1400, inlinedAt: !1356)
!1433 = !DILocation(line: 216, column: 59, scope: !1400, inlinedAt: !1356)
!1434 = !DILocation(line: 216, column: 60, scope: !1400, inlinedAt: !1356)
!1435 = !DILocation(line: 216, column: 16, scope: !1400, inlinedAt: !1356)
!1436 = !DILocation(line: 217, column: 20, scope: !1437, inlinedAt: !1356)
!1437 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 217, column: 13)
!1438 = !DILocation(line: 217, column: 13, scope: !1400, inlinedAt: !1356)
!1439 = !DILocation(line: 219, column: 14, scope: !1440, inlinedAt: !1356)
!1440 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 219, column: 13)
!1441 = !DILocation(line: 219, column: 46, scope: !1440, inlinedAt: !1356)
!1442 = !DILocation(line: 219, column: 54, scope: !1440, inlinedAt: !1356)
!1443 = !DILocation(line: 222, column: 16, scope: !1444, inlinedAt: !1356)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 221, column: 11)
!1445 = !DILocation(line: 222, column: 19, scope: !1444, inlinedAt: !1356)
!1446 = !DILocation(line: 223, column: 16, scope: !1444, inlinedAt: !1356)
!1447 = !DILocation(line: 223, column: 21, scope: !1444, inlinedAt: !1356)
!1448 = !DILocation(line: 224, column: 20, scope: !1444, inlinedAt: !1356)
!1449 = !DILocation(line: 225, column: 20, scope: !1444, inlinedAt: !1356)
!1450 = !DILocation(line: 226, column: 24, scope: !1451, inlinedAt: !1356)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 226, column: 17)
!1452 = !DILocation(line: 226, column: 17, scope: !1444, inlinedAt: !1356)
!1453 = !DILocation(line: 228, column: 19, scope: !1444, inlinedAt: !1356)
!1454 = !DILocation(line: 229, column: 19, scope: !1444, inlinedAt: !1356)
!1455 = !DILocation(line: 230, column: 20, scope: !1444, inlinedAt: !1356)
!1456 = !DILocation(line: 231, column: 24, scope: !1457, inlinedAt: !1356)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 231, column: 17)
!1458 = !DILocation(line: 231, column: 17, scope: !1444, inlinedAt: !1356)
!1459 = !DILocation(line: 233, column: 14, scope: !1444, inlinedAt: !1356)
!1460 = !DILocation(line: 234, column: 11, scope: !1444, inlinedAt: !1356)
!1461 = !DILocation(line: 203, column: 29, scope: !1401, inlinedAt: !1356)
!1462 = !DILocation(line: 203, column: 22, scope: !1401, inlinedAt: !1356)
!1463 = distinct !{!1463, !1396, !1464, !1134, !1135}
!1464 = !DILocation(line: 235, column: 7, scope: !1397, inlinedAt: !1356)
!1465 = !DILocation(line: 198, column: 27, scope: !1353, inlinedAt: !1356)
!1466 = !DILocation(line: 198, column: 20, scope: !1353, inlinedAt: !1356)
!1467 = !DILocation(line: 198, column: 5, scope: !1354, inlinedAt: !1356)
!1468 = distinct !{!1468, !1467, !1469, !1134, !1135}
!1469 = !DILocation(line: 236, column: 5, scope: !1354, inlinedAt: !1356)
!1470 = !DILocation(line: 239, column: 1, scope: !1331, inlinedAt: !1356)
!1471 = !DILocation(line: 568, column: 9, scope: !1327)
!1472 = !DILocation(line: 570, column: 5, scope: !1027)
!1473 = !DILocation(line: 549, column: 51, scope: !1027)
!1474 = distinct !{!1474, !1314, !1475, !1134, !1135}
!1475 = !DILocation(line: 570, column: 5, scope: !1028)
!1476 = !DILocation(line: 542, column: 46, scope: !1023)
!1477 = distinct !{!1477, !1307, !1478, !1134, !1135}
!1478 = !DILocation(line: 571, column: 3, scope: !1024)
!1479 = !DILocation(line: 572, column: 13, scope: !2)
!1480 = !DILocation(line: 576, column: 15, scope: !2)
!1481 = !DILocation(line: 577, column: 3, scope: !2)
!1482 = !DILocation(line: 578, column: 1, scope: !2)
!1483 = !DISubprogram(name: "LogMagickEvent", scope: !642, file: !642, line: 83, type: !1484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!104, !1486, !390, !390, !834, !390, null}
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !642, line: 58, baseType: !641)
!1488 = !{}
!1489 = !DISubprogram(name: "FormatLocaleString", scope: !1490, file: !1490, line: 71, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1490 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!170, !1493, !834, !1494, null}
!1493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!1494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
!1495 = !DISubprogram(name: "AcquireKernelInfo", scope: !601, file: !601, line: 131, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!768, !390}
!1498 = !DISubprogram(name: "ThrowMagickException", scope: !420, file: !420, line: 156, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!104, !596, !390, !390, !834, !1501, !390, !390, null}
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!1502 = !DISubprogram(name: "MorphologyApply", scope: !1503, file: !1503, line: 28, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1503 = !DIFile(filename: "apps/538.imagick_r/src/magick/morphology-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2c39b78af649540713d42d04b47e6fd5")
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!6, !593, !1506, !1508, !1334, !1510, !1512, !595, !596}
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !8, line: 202, baseType: !666)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "MorphologyMethod", file: !601, line: 100, baseType: !688)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1513 = !DISubprogram(name: "DestroyKernelInfo", scope: !601, file: !601, line: 134, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!768, !768}
!1516 = !DISubprogram(name: "SetImageColorspace", scope: !22, file: !22, line: 65, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!104, !6, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1520 = !DISubprogram(name: "DestroyImage", scope: !10, file: !10, line: 510, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!6, !6}
!1523 = !DISubprogram(name: "AcquireMatrixInfo", scope: !790, file: !790, line: 42, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!788, !834, !834, !834, !596}
!1526 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !747, file: !747, line: 55, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!840, !593, !596}
!1529 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !747, file: !747, line: 69, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!792, !1532, !1334, !1334, !834, !834, !596}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!1534 = !DISubprogram(name: "ResetMagickMemory", scope: !1535, file: !1535, line: 52, type: !1536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1535 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!156, !156, !497, !834}
!1538 = !DISubprogram(name: "GetPixelIntensity", scope: !117, file: !117, line: 181, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!946, !593, !876}
!1541 = !DISubprogram(name: "SetMatrixElement", scope: !790, file: !790, line: 39, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!104, !1544, !1334, !1334, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1548 = !DISubprogram(name: "DestroyCacheView", scope: !747, file: !747, line: 57, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!840, !840}
!1551 = !DISubprogram(name: "GetMatrixElement", scope: !790, file: !790, line: 37, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!104, !1544, !1334, !1334, !156}
!1554 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !747, file: !747, line: 53, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1555 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !747, file: !747, line: 99, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!115, !840, !1334, !1334, !834, !834, !596}
!1558 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !747, file: !747, line: 89, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!104, !840, !596}
!1561 = !DISubprogram(name: "DestroyMatrixInfo", scope: !790, file: !790, line: 43, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!788, !788}
!1564 = !DILocation(line: 919, column: 44, scope: !879)
!1565 = !DILocation(line: 0, scope: !831)
!1566 = !DILocation(line: 650, column: 3, scope: !831)
!1567 = !DILocation(line: 652, column: 5, scope: !831)
!1568 = !DILocation(line: 656, column: 5, scope: !831)
!1569 = !DILocation(line: 657, column: 5, scope: !831)
!1570 = !DILocation(line: 658, column: 5, scope: !831)
!1571 = !DILocation(line: 659, column: 5, scope: !831)
!1572 = !DILocation(line: 660, column: 5, scope: !831)
!1573 = !DILocation(line: 661, column: 5, scope: !831)
!1574 = !DILocation(line: 664, column: 5, scope: !831)
!1575 = !DILocation(line: 665, column: 5, scope: !831)
!1576 = !DILocation(line: 667, column: 3, scope: !831)
!1577 = !DILocation(line: 668, column: 5, scope: !831)
!1578 = !DILocation(line: 688, column: 14, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !831, file: !3, line: 688, column: 7)
!1580 = !DILocation(line: 688, column: 20, scope: !1579)
!1581 = !DILocation(line: 688, column: 7, scope: !831)
!1582 = !DILocation(line: 689, column: 68, scope: !1579)
!1583 = !DILocation(line: 689, column: 12, scope: !1579)
!1584 = !DILocation(line: 689, column: 5, scope: !1579)
!1585 = !DILocation(line: 690, column: 15, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !831, file: !3, line: 690, column: 7)
!1587 = !DILocation(line: 690, column: 34, scope: !1586)
!1588 = !DILocation(line: 690, column: 23, scope: !1586)
!1589 = !DILocation(line: 690, column: 39, scope: !1586)
!1590 = !DILocation(line: 690, column: 50, scope: !1586)
!1591 = !DILocation(line: 690, column: 55, scope: !1586)
!1592 = !DILocation(line: 690, column: 7, scope: !831)
!1593 = !DILocation(line: 693, column: 40, scope: !831)
!1594 = !DILocation(line: 695, column: 24, scope: !868)
!1595 = !DILocation(line: 695, column: 7, scope: !831)
!1596 = !DILocation(line: 696, column: 5, scope: !867)
!1597 = !{!1060, !1060, i64 0}
!1598 = !DILocation(line: 0, scope: !867)
!1599 = !DILocation(line: 697, column: 10, scope: !831)
!1600 = !DILocation(line: 702, column: 29, scope: !831)
!1601 = !DILocation(line: 703, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !831, file: !3, line: 703, column: 7)
!1603 = !DILocation(line: 703, column: 7, scope: !831)
!1604 = !DILocation(line: 713, column: 17, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 712, column: 3)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 711, column: 3)
!1607 = distinct !DILexicalBlock(scope: !831, file: !3, line: 711, column: 3)
!1608 = !DILocation(line: 720, column: 14, scope: !831)
!1609 = !DILocation(line: 725, column: 34, scope: !872)
!1610 = !DILocation(line: 725, column: 15, scope: !872)
!1611 = !DILocation(line: 725, column: 3, scope: !873)
!1612 = !DILocation(line: 762, column: 14, scope: !831)
!1613 = !DILocation(line: 763, column: 7, scope: !831)
!1614 = !DILocation(line: 705, column: 44, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 704, column: 5)
!1616 = !DILocation(line: 708, column: 67, scope: !1615)
!1617 = !DILocation(line: 707, column: 14, scope: !1615)
!1618 = !DILocation(line: 709, column: 7, scope: !1615)
!1619 = !DILocation(line: 736, column: 16, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !871, file: !3, line: 736, column: 9)
!1621 = !DILocation(line: 736, column: 9, scope: !871)
!1622 = !DILocation(line: 738, column: 55, scope: !871)
!1623 = !DILocation(line: 738, column: 7, scope: !871)
!1624 = !DILocation(line: 0, scope: !871)
!1625 = !DILocation(line: 739, column: 11, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !871, file: !3, line: 739, column: 9)
!1627 = !DILocation(line: 739, column: 9, scope: !871)
!1628 = !DILocation(line: 744, column: 13, scope: !871)
!1629 = !DILocation(line: 745, column: 17, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 745, column: 5)
!1631 = distinct !DILexicalBlock(scope: !871, file: !3, line: 745, column: 5)
!1632 = !DILocation(line: 745, column: 5, scope: !1631)
!1633 = !{!1045, !1046, i64 4}
!1634 = !{!1045, !1046, i64 32}
!1635 = !DILocation(line: 753, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 746, column: 5)
!1637 = !DILocation(line: 748, column: 27, scope: !1636)
!1638 = !DILocation(line: 747, column: 7, scope: !1636)
!1639 = !DILocation(line: 747, column: 51, scope: !1636)
!1640 = !{!1641, !1060, i64 0}
!1641 = !{!"_LongPixelPacket", !1060, i64 0, !1060, i64 4, !1060, i64 8, !1060, i64 12, !1060, i64 16}
!1642 = !DILocation(line: 750, column: 27, scope: !1636)
!1643 = !DILocation(line: 749, column: 7, scope: !1636)
!1644 = !DILocation(line: 749, column: 50, scope: !1636)
!1645 = !DILocation(line: 749, column: 55, scope: !1636)
!1646 = !{!1641, !1060, i64 4}
!1647 = !DILocation(line: 752, column: 27, scope: !1636)
!1648 = !DILocation(line: 751, column: 7, scope: !1636)
!1649 = !DILocation(line: 751, column: 49, scope: !1636)
!1650 = !DILocation(line: 751, column: 53, scope: !1636)
!1651 = !{!1641, !1060, i64 8}
!1652 = !DILocation(line: 755, column: 29, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 753, column: 11)
!1654 = !{!1051, !1051, i64 0}
!1655 = !DILocation(line: 754, column: 33, scope: !1653)
!1656 = !DILocation(line: 754, column: 9, scope: !1653)
!1657 = !DILocation(line: 754, column: 60, scope: !1653)
!1658 = !DILocation(line: 754, column: 65, scope: !1653)
!1659 = !{!1641, !1060, i64 16}
!1660 = !DILocation(line: 756, column: 11, scope: !1636)
!1661 = !DILocation(line: 758, column: 29, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 756, column: 11)
!1663 = !{!1050, !1051, i64 6}
!1664 = !DILocation(line: 757, column: 9, scope: !1662)
!1665 = !DILocation(line: 757, column: 54, scope: !1662)
!1666 = !DILocation(line: 757, column: 61, scope: !1662)
!1667 = !{!1641, !1060, i64 12}
!1668 = !DILocation(line: 759, column: 8, scope: !1636)
!1669 = !DILocation(line: 745, column: 46, scope: !1630)
!1670 = distinct !{!1670, !1632, !1671, !1134, !1135}
!1671 = !DILocation(line: 760, column: 5, scope: !1631)
!1672 = !DILocation(line: 725, column: 41, scope: !872)
!1673 = distinct !{!1673, !1611, !1674, !1134, !1135}
!1674 = !DILocation(line: 761, column: 3, scope: !873)
!1675 = !DILocation(line: 765, column: 33, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 764, column: 5)
!1677 = distinct !DILexicalBlock(scope: !831, file: !3, line: 763, column: 7)
!1678 = !DILocation(line: 766, column: 44, scope: !1676)
!1679 = !DILocation(line: 768, column: 7, scope: !1676)
!1680 = !DILocation(line: 770, column: 10, scope: !831)
!1681 = !DILocation(line: 771, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !831, file: !3, line: 771, column: 3)
!1683 = !DILocation(line: 773, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 773, column: 9)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 772, column: 3)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 771, column: 3)
!1687 = !DILocation(line: 773, column: 18, scope: !1684)
!1688 = !DILocation(line: 773, column: 22, scope: !1684)
!1689 = !DILocation(line: 773, column: 9, scope: !1685)
!1690 = !DILocation(line: 774, column: 31, scope: !1684)
!1691 = !DILocation(line: 774, column: 13, scope: !1684)
!1692 = !DILocation(line: 774, column: 7, scope: !1684)
!1693 = !DILocation(line: 774, column: 38, scope: !1684)
!1694 = !DILocation(line: 775, column: 18, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 775, column: 9)
!1696 = !DILocation(line: 775, column: 24, scope: !1695)
!1697 = !DILocation(line: 775, column: 9, scope: !1685)
!1698 = !DILocation(line: 776, column: 33, scope: !1695)
!1699 = !DILocation(line: 776, column: 13, scope: !1695)
!1700 = !DILocation(line: 776, column: 37, scope: !1695)
!1701 = !DILocation(line: 776, column: 42, scope: !1695)
!1702 = !DILocation(line: 776, column: 7, scope: !1695)
!1703 = !DILocation(line: 777, column: 18, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 777, column: 9)
!1705 = !DILocation(line: 777, column: 23, scope: !1704)
!1706 = !DILocation(line: 777, column: 9, scope: !1685)
!1707 = !DILocation(line: 778, column: 32, scope: !1704)
!1708 = !DILocation(line: 778, column: 13, scope: !1704)
!1709 = !DILocation(line: 778, column: 36, scope: !1704)
!1710 = !DILocation(line: 778, column: 40, scope: !1704)
!1711 = !DILocation(line: 778, column: 7, scope: !1704)
!1712 = !DILocation(line: 779, column: 9, scope: !1685)
!1713 = !DILocation(line: 780, column: 20, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 780, column: 11)
!1715 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 779, column: 9)
!1716 = !DILocation(line: 780, column: 26, scope: !1714)
!1717 = !DILocation(line: 780, column: 11, scope: !1715)
!1718 = !DILocation(line: 781, column: 35, scope: !1714)
!1719 = !DILocation(line: 781, column: 15, scope: !1714)
!1720 = !DILocation(line: 781, column: 39, scope: !1714)
!1721 = !DILocation(line: 781, column: 44, scope: !1714)
!1722 = !DILocation(line: 781, column: 9, scope: !1714)
!1723 = !DILocation(line: 782, column: 9, scope: !1685)
!1724 = !DILocation(line: 783, column: 20, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 783, column: 11)
!1726 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 782, column: 9)
!1727 = !DILocation(line: 783, column: 28, scope: !1725)
!1728 = !DILocation(line: 783, column: 11, scope: !1726)
!1729 = !DILocation(line: 784, column: 37, scope: !1725)
!1730 = !DILocation(line: 784, column: 15, scope: !1725)
!1731 = !DILocation(line: 784, column: 41, scope: !1725)
!1732 = !DILocation(line: 784, column: 48, scope: !1725)
!1733 = !DILocation(line: 784, column: 9, scope: !1725)
!1734 = !DILocation(line: 771, column: 37, scope: !1686)
!1735 = !DILocation(line: 771, column: 15, scope: !1686)
!1736 = distinct !{!1736, !1681, !1737, !1134, !1135}
!1737 = !DILocation(line: 785, column: 3, scope: !1682)
!1738 = !DILocation(line: 789, column: 21, scope: !831)
!1739 = !DILocation(line: 790, column: 12, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !831, file: !3, line: 790, column: 7)
!1741 = !DILocation(line: 790, column: 7, scope: !831)
!1742 = !DILocation(line: 792, column: 12, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !831, file: !3, line: 792, column: 7)
!1744 = !DILocation(line: 792, column: 7, scope: !831)
!1745 = !DILocation(line: 794, column: 7, scope: !831)
!1746 = !DILocation(line: 795, column: 14, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 795, column: 9)
!1748 = distinct !DILexicalBlock(scope: !831, file: !3, line: 794, column: 7)
!1749 = !DILocation(line: 795, column: 9, scope: !1748)
!1750 = !DILocation(line: 797, column: 7, scope: !831)
!1751 = !DILocation(line: 798, column: 14, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 798, column: 9)
!1753 = distinct !DILexicalBlock(scope: !831, file: !3, line: 797, column: 7)
!1754 = !DILocation(line: 798, column: 9, scope: !1753)
!1755 = !DILocation(line: 800, column: 60, scope: !831)
!1756 = !DILocation(line: 800, column: 39, scope: !831)
!1757 = !DILocation(line: 802, column: 57, scope: !831)
!1758 = !DILocation(line: 802, column: 56, scope: !831)
!1759 = !DILocation(line: 802, column: 35, scope: !831)
!1760 = !DILocation(line: 804, column: 36, scope: !831)
!1761 = !DILocation(line: 806, column: 35, scope: !831)
!1762 = !DILocation(line: 808, column: 28, scope: !831)
!1763 = !DILocation(line: 809, column: 29, scope: !831)
!1764 = !DILocation(line: 810, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !831, file: !3, line: 810, column: 7)
!1766 = !DILocation(line: 810, column: 53, scope: !1765)
!1767 = !DILocation(line: 817, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 816, column: 5)
!1769 = !DILocation(line: 819, column: 23, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 819, column: 11)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 819, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 818, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 817, column: 11)
!1774 = !DILocation(line: 819, column: 11, scope: !1771)
!1775 = !DILocation(line: 820, column: 63, scope: !1770)
!1776 = !{!1049, !1049, i64 0}
!1777 = !DILocation(line: 820, column: 40, scope: !1770)
!1778 = !DILocation(line: 820, column: 17, scope: !1770)
!1779 = !DILocation(line: 819, column: 50, scope: !1770)
!1780 = distinct !{!1780, !1774, !1781, !1134, !1135}
!1781 = !DILocation(line: 820, column: 67, scope: !1771)
!1782 = !DILocation(line: 821, column: 36, scope: !1772)
!1783 = !DILocation(line: 822, column: 9, scope: !1772)
!1784 = !DILocation(line: 823, column: 11, scope: !1768)
!1785 = !DILocation(line: 824, column: 35, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 823, column: 11)
!1787 = !DILocation(line: 824, column: 9, scope: !1786)
!1788 = !DILocation(line: 825, column: 11, scope: !1768)
!1789 = !DILocation(line: 826, column: 41, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 825, column: 11)
!1791 = !DILocation(line: 826, column: 9, scope: !1790)
!1792 = !DILocation(line: 827, column: 11, scope: !1768)
!1793 = !DILocation(line: 828, column: 42, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 827, column: 11)
!1795 = !DILocation(line: 828, column: 9, scope: !1794)
!1796 = !DILocation(line: 829, column: 11, scope: !1768)
!1797 = !DILocation(line: 830, column: 41, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 829, column: 11)
!1799 = !DILocation(line: 830, column: 9, scope: !1798)
!1800 = !DILocation(line: 831, column: 11, scope: !1768)
!1801 = !DILocation(line: 833, column: 23, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 833, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 833, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 832, column: 9)
!1805 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 831, column: 11)
!1806 = !DILocation(line: 833, column: 11, scope: !1803)
!1807 = !DILocation(line: 835, column: 38, scope: !1802)
!1808 = !DILocation(line: 835, column: 15, scope: !1802)
!1809 = !DILocation(line: 834, column: 28, scope: !1802)
!1810 = !DILocation(line: 833, column: 50, scope: !1802)
!1811 = distinct !{!1811, !1806, !1812, !1134, !1135}
!1812 = !DILocation(line: 835, column: 53, scope: !1803)
!1813 = !DILocation(line: 836, column: 47, scope: !1804)
!1814 = !DILocation(line: 838, column: 9, scope: !1804)
!1815 = !DILocation(line: 839, column: 33, scope: !1768)
!1816 = !DILocation(line: 840, column: 44, scope: !1768)
!1817 = !DILocation(line: 843, column: 67, scope: !1768)
!1818 = !DILocation(line: 842, column: 14, scope: !1768)
!1819 = !DILocation(line: 844, column: 7, scope: !1768)
!1820 = !DILocation(line: 846, column: 10, scope: !831)
!1821 = !DILocation(line: 847, column: 58, scope: !831)
!1822 = !DILocation(line: 847, column: 10, scope: !831)
!1823 = !DILocation(line: 848, column: 10, scope: !831)
!1824 = !DILocation(line: 849, column: 10, scope: !831)
!1825 = !DILocation(line: 850, column: 10, scope: !831)
!1826 = !DILocation(line: 851, column: 46, scope: !831)
!1827 = !DILocation(line: 851, column: 10, scope: !831)
!1828 = !DILocation(line: 852, column: 10, scope: !831)
!1829 = !DILocation(line: 853, column: 41, scope: !831)
!1830 = !DILocation(line: 853, column: 55, scope: !831)
!1831 = !DILocation(line: 853, column: 10, scope: !831)
!1832 = !DILocation(line: 854, column: 10, scope: !831)
!1833 = !DILocation(line: 855, column: 10, scope: !831)
!1834 = !DILocation(line: 856, column: 10, scope: !831)
!1835 = !DILocation(line: 857, column: 10, scope: !831)
!1836 = !DILocation(line: 858, column: 10, scope: !831)
!1837 = !DILocation(line: 859, column: 10, scope: !831)
!1838 = !DILocation(line: 860, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 860, column: 3)
!1840 = distinct !DILexicalBlock(scope: !831, file: !3, line: 860, column: 3)
!1841 = !DILocation(line: 860, column: 3, scope: !1840)
!1842 = !DILocation(line: 862, column: 43, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 861, column: 3)
!1844 = !DILocation(line: 862, column: 5, scope: !1843)
!1845 = !DILocation(line: 862, column: 20, scope: !1843)
!1846 = !DILocation(line: 864, column: 32, scope: !1843)
!1847 = !DILocation(line: 864, column: 5, scope: !1843)
!1848 = !DILocation(line: 864, column: 9, scope: !1843)
!1849 = !DILocation(line: 865, column: 10, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 865, column: 9)
!1851 = !DILocation(line: 865, column: 26, scope: !1850)
!1852 = !DILocation(line: 865, column: 57, scope: !1850)
!1853 = !DILocation(line: 874, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 874, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 874, column: 7)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 873, column: 5)
!1857 = distinct !DILexicalBlock(scope: !831, file: !3, line: 872, column: 7)
!1858 = !DILocation(line: 874, column: 7, scope: !1855)
!1859 = !DILocation(line: 868, column: 12, scope: !1843)
!1860 = !DILocation(line: 870, column: 30, scope: !1843)
!1861 = !DILocation(line: 870, column: 12, scope: !1843)
!1862 = !DILocation(line: 860, column: 42, scope: !1839)
!1863 = distinct !{!1863, !1841, !1864, !1134, !1135}
!1864 = !DILocation(line: 871, column: 3, scope: !1840)
!1865 = !DILocation(line: 0, scope: !1855)
!1866 = !DILocation(line: 876, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 876, column: 13)
!1868 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 875, column: 7)
!1869 = !DILocation(line: 876, column: 18, scope: !1867)
!1870 = !DILocation(line: 876, column: 13, scope: !1868)
!1871 = !DILocation(line: 877, column: 38, scope: !1867)
!1872 = !DILocation(line: 877, column: 15, scope: !1867)
!1873 = !DILocation(line: 877, column: 11, scope: !1867)
!1874 = !DILocation(line: 878, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 878, column: 13)
!1876 = !DILocation(line: 878, column: 29, scope: !1875)
!1877 = !DILocation(line: 878, column: 13, scope: !1868)
!1878 = !DILocation(line: 880, column: 13, scope: !1875)
!1879 = !DILocation(line: 879, column: 26, scope: !1875)
!1880 = !DILocation(line: 879, column: 11, scope: !1875)
!1881 = distinct !{!1881, !1858, !1882, !1134, !1135}
!1882 = !DILocation(line: 881, column: 7, scope: !1855)
!1883 = !DILocation(line: 882, column: 32, scope: !1856)
!1884 = !DILocation(line: 883, column: 43, scope: !1856)
!1885 = !DILocation(line: 884, column: 33, scope: !1856)
!1886 = !DILocation(line: 885, column: 39, scope: !1856)
!1887 = !DILocation(line: 886, column: 40, scope: !1856)
!1888 = !DILocation(line: 887, column: 39, scope: !1856)
!1889 = !DILocation(line: 888, column: 33, scope: !1856)
!1890 = !DILocation(line: 889, column: 44, scope: !1856)
!1891 = !DILocation(line: 892, column: 67, scope: !1856)
!1892 = !DILocation(line: 891, column: 14, scope: !1856)
!1893 = !DILocation(line: 893, column: 7, scope: !1856)
!1894 = !DILocation(line: 899, column: 14, scope: !831)
!1895 = !DILocation(line: 900, column: 34, scope: !880)
!1896 = !DILocation(line: 900, column: 15, scope: !880)
!1897 = !DILocation(line: 900, column: 3, scope: !881)
!1898 = !DILocation(line: 917, column: 16, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !879, file: !3, line: 917, column: 9)
!1900 = !DILocation(line: 917, column: 9, scope: !879)
!1901 = !DILocation(line: 919, column: 73, scope: !879)
!1902 = !DILocation(line: 919, column: 80, scope: !879)
!1903 = !DILocation(line: 919, column: 7, scope: !879)
!1904 = !DILocation(line: 0, scope: !879)
!1905 = !DILocation(line: 921, column: 11, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !879, file: !3, line: 921, column: 9)
!1907 = !DILocation(line: 921, column: 9, scope: !879)
!1908 = !DILocation(line: 926, column: 13, scope: !879)
!1909 = !DILocation(line: 928, column: 12, scope: !879)
!1910 = !DILocation(line: 929, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 929, column: 5)
!1912 = distinct !DILexicalBlock(scope: !879, file: !3, line: 929, column: 5)
!1913 = !DILocation(line: 929, column: 5, scope: !1912)
!1914 = !DILocation(line: 927, column: 6, scope: !879)
!1915 = !DILocation(line: 931, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 931, column: 7)
!1917 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 930, column: 5)
!1918 = !DILocation(line: 933, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 932, column: 7)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 931, column: 7)
!1921 = !DILocation(line: 950, column: 13, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 945, column: 11)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 934, column: 9)
!1924 = !DILocation(line: 958, column: 13, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 953, column: 11)
!1926 = !DILocation(line: 966, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 961, column: 11)
!1928 = !DILocation(line: 0, scope: !1923)
!1929 = !DILocation(line: 971, column: 9, scope: !1919)
!1930 = !DILocation(line: 0, scope: !1919)
!1931 = !DILocation(line: 971, column: 16, scope: !1919)
!1932 = !DILocation(line: 971, column: 25, scope: !1919)
!1933 = !DILocation(line: 971, column: 29, scope: !1919)
!1934 = !DILocation(line: 972, column: 12, scope: !1919)
!1935 = distinct !{!1935, !1929, !1934, !1134, !1135}
!1936 = !DILocation(line: 973, column: 9, scope: !1919)
!1937 = !DILocation(line: 973, column: 16, scope: !1919)
!1938 = !DILocation(line: 973, column: 25, scope: !1919)
!1939 = !DILocation(line: 973, column: 29, scope: !1919)
!1940 = !DILocation(line: 974, column: 12, scope: !1919)
!1941 = distinct !{!1941, !1936, !1940, !1134, !1135}
!1942 = !DILocation(line: 975, column: 9, scope: !1919)
!1943 = !DILocation(line: 975, column: 44, scope: !1919)
!1944 = !{!1945, !1052, i64 0}
!1945 = !{!"_DoublePixelPacket", !1052, i64 0, !1052, i64 8, !1052, i64 16, !1052, i64 24, !1052, i64 32}
!1946 = !DILocation(line: 976, column: 9, scope: !1919)
!1947 = !DILocation(line: 976, column: 44, scope: !1919)
!1948 = !DILocation(line: 979, column: 9, scope: !1919)
!1949 = !DILocation(line: 979, column: 25, scope: !1919)
!1950 = !DILocation(line: 979, column: 31, scope: !1919)
!1951 = !DILocation(line: 980, column: 12, scope: !1919)
!1952 = distinct !{!1952, !1948, !1951, !1134, !1135}
!1953 = !DILocation(line: 981, column: 9, scope: !1919)
!1954 = !DILocation(line: 981, column: 25, scope: !1919)
!1955 = !DILocation(line: 981, column: 31, scope: !1919)
!1956 = !DILocation(line: 982, column: 12, scope: !1919)
!1957 = distinct !{!1957, !1953, !1956, !1134, !1135}
!1958 = !DILocation(line: 983, column: 9, scope: !1919)
!1959 = !DILocation(line: 983, column: 41, scope: !1919)
!1960 = !DILocation(line: 983, column: 46, scope: !1919)
!1961 = !{!1945, !1052, i64 8}
!1962 = !DILocation(line: 984, column: 9, scope: !1919)
!1963 = !DILocation(line: 984, column: 41, scope: !1919)
!1964 = !DILocation(line: 984, column: 46, scope: !1919)
!1965 = !DILocation(line: 987, column: 9, scope: !1919)
!1966 = !DILocation(line: 987, column: 25, scope: !1919)
!1967 = !DILocation(line: 987, column: 30, scope: !1919)
!1968 = !DILocation(line: 988, column: 12, scope: !1919)
!1969 = distinct !{!1969, !1965, !1968, !1134, !1135}
!1970 = !DILocation(line: 973, column: 50, scope: !1919)
!1971 = !DILocation(line: 989, column: 9, scope: !1919)
!1972 = !DILocation(line: 989, column: 25, scope: !1919)
!1973 = !DILocation(line: 989, column: 30, scope: !1919)
!1974 = !DILocation(line: 990, column: 12, scope: !1919)
!1975 = distinct !{!1975, !1971, !1974, !1134, !1135}
!1976 = !DILocation(line: 991, column: 9, scope: !1919)
!1977 = !DILocation(line: 991, column: 41, scope: !1919)
!1978 = !DILocation(line: 991, column: 45, scope: !1919)
!1979 = !{!1945, !1052, i64 16}
!1980 = !DILocation(line: 992, column: 9, scope: !1919)
!1981 = !DILocation(line: 992, column: 41, scope: !1919)
!1982 = !DILocation(line: 992, column: 45, scope: !1919)
!1983 = !DILocation(line: 993, column: 13, scope: !1919)
!1984 = !DILocation(line: 0, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 994, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 993, column: 13)
!1987 = !DILocation(line: 997, column: 29, scope: !1985)
!1988 = !DILocation(line: 997, column: 56, scope: !1985)
!1989 = !DILocation(line: 997, column: 35, scope: !1985)
!1990 = !DILocation(line: 998, column: 16, scope: !1985)
!1991 = !DILocation(line: 997, column: 13, scope: !1985)
!1992 = distinct !{!1992, !1991, !1990, !1134, !1135}
!1993 = !DILocation(line: 999, column: 13, scope: !1985)
!1994 = !DILocation(line: 999, column: 29, scope: !1985)
!1995 = !DILocation(line: 999, column: 56, scope: !1985)
!1996 = !DILocation(line: 999, column: 35, scope: !1985)
!1997 = !DILocation(line: 1000, column: 16, scope: !1985)
!1998 = distinct !{!1998, !1993, !1997, !1134, !1135}
!1999 = !DILocation(line: 1001, column: 13, scope: !1985)
!2000 = !DILocation(line: 1001, column: 45, scope: !1985)
!2001 = !DILocation(line: 1001, column: 50, scope: !1985)
!2002 = !{!1945, !1052, i64 32}
!2003 = !DILocation(line: 1002, column: 13, scope: !1985)
!2004 = !DILocation(line: 1002, column: 45, scope: !1985)
!2005 = !DILocation(line: 1002, column: 50, scope: !1985)
!2006 = !DILocation(line: 1003, column: 11, scope: !1985)
!2007 = !DILocation(line: 1004, column: 13, scope: !1919)
!2008 = !DILocation(line: 1008, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 1005, column: 11)
!2010 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 1004, column: 13)
!2011 = !DILocation(line: 0, scope: !2009)
!2012 = !DILocation(line: 1008, column: 29, scope: !2009)
!2013 = !DILocation(line: 1008, column: 37, scope: !2009)
!2014 = !DILocation(line: 1009, column: 16, scope: !2009)
!2015 = distinct !{!2015, !2008, !2014, !1134, !1135}
!2016 = !DILocation(line: 1010, column: 13, scope: !2009)
!2017 = !DILocation(line: 1010, column: 29, scope: !2009)
!2018 = !DILocation(line: 1010, column: 37, scope: !2009)
!2019 = !DILocation(line: 1011, column: 16, scope: !2009)
!2020 = distinct !{!2020, !2016, !2019, !1134, !1135}
!2021 = !DILocation(line: 1012, column: 13, scope: !2009)
!2022 = !DILocation(line: 1012, column: 45, scope: !2009)
!2023 = !DILocation(line: 1012, column: 52, scope: !2009)
!2024 = !{!1945, !1052, i64 24}
!2025 = !DILocation(line: 1013, column: 13, scope: !2009)
!2026 = !DILocation(line: 1013, column: 45, scope: !2009)
!2027 = !DILocation(line: 1013, column: 52, scope: !2009)
!2028 = !DILocation(line: 1014, column: 11, scope: !2009)
!2029 = !DILocation(line: 931, column: 25, scope: !1920)
!2030 = !DILocation(line: 931, column: 19, scope: !1920)
!2031 = distinct !{!2031, !1915, !2032, !1134, !1135}
!2032 = !DILocation(line: 1015, column: 7, scope: !1916)
!2033 = !DILocation(line: 1016, column: 8, scope: !1917)
!2034 = !DILocation(line: 929, column: 46, scope: !1911)
!2035 = distinct !{!2035, !1913, !2036, !1134, !1135}
!2036 = !DILocation(line: 1017, column: 5, scope: !1912)
!2037 = !DILocation(line: 900, column: 41, scope: !880)
!2038 = distinct !{!2038, !1897, !2039, !1134, !1135}
!2039 = !DILocation(line: 1018, column: 3, scope: !881)
!2040 = !DILocation(line: 898, column: 9, scope: !831)
!2041 = !DILocation(line: 1019, column: 29, scope: !831)
!2042 = !DILocation(line: 1020, column: 14, scope: !831)
!2043 = !DILocation(line: 1021, column: 14, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1021, column: 7)
!2045 = !DILocation(line: 1021, column: 7, scope: !831)
!2046 = !DILocation(line: 1023, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1023, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1022, column: 5)
!2049 = !DILocation(line: 1025, column: 34, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1023, column: 7)
!2051 = !DILocation(line: 1025, column: 11, scope: !2050)
!2052 = !DILocation(line: 1024, column: 24, scope: !2050)
!2053 = !DILocation(line: 1023, column: 46, scope: !2050)
!2054 = !DILocation(line: 1023, column: 19, scope: !2050)
!2055 = distinct !{!2055, !2046, !2056, !1134, !1135}
!2056 = !DILocation(line: 1025, column: 49, scope: !2047)
!2057 = !DILocation(line: 1026, column: 43, scope: !2048)
!2058 = !DILocation(line: 1027, column: 44, scope: !2048)
!2059 = !DILocation(line: 1030, column: 67, scope: !2048)
!2060 = !DILocation(line: 1029, column: 14, scope: !2048)
!2061 = !DILocation(line: 1031, column: 7, scope: !2048)
!2062 = !DILocation(line: 1105, column: 3, scope: !900)
!2063 = !DILocation(line: 1044, column: 5, scope: !889)
!2064 = !DILocation(line: 1052, column: 30, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1048, column: 7)
!2066 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1045, column: 5)
!2067 = !DILocation(line: 1052, column: 43, scope: !2065)
!2068 = !DILocation(line: 1052, column: 50, scope: !2065)
!2069 = !DILocation(line: 0, scope: !889)
!2070 = !DILocation(line: 1053, column: 9, scope: !2065)
!2071 = !DILocation(line: 1060, column: 31, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1056, column: 7)
!2073 = !DILocation(line: 1060, column: 35, scope: !2072)
!2074 = !DILocation(line: 1060, column: 53, scope: !2072)
!2075 = !DILocation(line: 1061, column: 9, scope: !2072)
!2076 = !DILocation(line: 1068, column: 31, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1064, column: 7)
!2078 = !DILocation(line: 1068, column: 35, scope: !2077)
!2079 = !DILocation(line: 1068, column: 54, scope: !2077)
!2080 = !DILocation(line: 1068, column: 61, scope: !2077)
!2081 = !DILocation(line: 1069, column: 9, scope: !2077)
!2082 = !DILocation(line: 1076, column: 31, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1072, column: 7)
!2084 = !DILocation(line: 1076, column: 35, scope: !2083)
!2085 = !DILocation(line: 1076, column: 54, scope: !2083)
!2086 = !DILocation(line: 1076, column: 61, scope: !2083)
!2087 = !DILocation(line: 1077, column: 9, scope: !2083)
!2088 = !DILocation(line: 0, scope: !2066)
!2089 = !DILocalVariable(name: "x", arg: 1, scope: !2090, file: !2091, line: 78, type: !595)
!2090 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !2091, file: !2091, line: 78, type: !2092, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2094)
!2091 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!130, !595}
!2094 = !{!2089, !2095}
!2095 = !DILocalVariable(name: "sign", scope: !2090, file: !2091, line: 81, type: !130)
!2096 = !DILocation(line: 0, scope: !2090, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1080, column: 15, scope: !889)
!2098 = !DILocation(line: 87, column: 16, scope: !2099, inlinedAt: !2097)
!2099 = distinct !DILexicalBlock(scope: !2090, file: !2091, line: 87, column: 7)
!2100 = !DILocation(line: 87, column: 7, scope: !2090, inlinedAt: !2097)
!2101 = !DILocation(line: 88, column: 15, scope: !2099, inlinedAt: !2097)
!2102 = !DILocation(line: 88, column: 5, scope: !2099, inlinedAt: !2097)
!2103 = !DILocation(line: 1081, column: 5, scope: !896)
!2104 = !DILocation(line: 1091, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1087, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1086, column: 7)
!2107 = distinct !DILexicalBlock(scope: !894, file: !3, line: 1086, column: 7)
!2108 = !DILocation(line: 1093, column: 13, scope: !2105)
!2109 = !DILocation(line: 0, scope: !894)
!2110 = !DILocation(line: 1086, column: 7, scope: !2107)
!2111 = !DILocation(line: 1088, column: 9, scope: !2105)
!2112 = !DILocation(line: 1088, column: 44, scope: !2105)
!2113 = !DILocation(line: 1089, column: 41, scope: !2105)
!2114 = !DILocation(line: 1089, column: 46, scope: !2105)
!2115 = !DILocation(line: 1090, column: 41, scope: !2105)
!2116 = !DILocation(line: 1090, column: 45, scope: !2105)
!2117 = !DILocation(line: 1092, column: 43, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1091, column: 13)
!2119 = !DILocation(line: 1092, column: 48, scope: !2118)
!2120 = !DILocation(line: 1086, column: 46, scope: !2106)
!2121 = !DILocation(line: 1086, column: 19, scope: !2106)
!2122 = distinct !{!2122, !2110, !2123, !1134, !1135}
!2123 = !DILocation(line: 1095, column: 7, scope: !2107)
!2124 = !DILocation(line: 1081, column: 44, scope: !895)
!2125 = !DILocation(line: 1081, column: 17, scope: !895)
!2126 = distinct !{!2126, !2103, !2127, !1134, !1135}
!2127 = !DILocation(line: 1096, column: 5, scope: !896)
!2128 = !DILocation(line: 1094, column: 43, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1093, column: 13)
!2130 = !DILocation(line: 1094, column: 50, scope: !2129)
!2131 = !DILocation(line: 1036, column: 21, scope: !890)
!2132 = !DILocation(line: 1036, column: 15, scope: !890)
!2133 = !DILocation(line: 1036, column: 3, scope: !891)
!2134 = distinct !{!2134, !2133, !2135, !1134, !1135}
!2135 = !DILocation(line: 1097, column: 3, scope: !891)
!2136 = !DILocation(line: 0, scope: !898)
!2137 = !DILocation(line: 1110, column: 5, scope: !904)
!2138 = !DILocation(line: 1251, column: 55, scope: !898)
!2139 = !DILocation(line: 1252, column: 61, scope: !898)
!2140 = !DILocation(line: 1129, column: 20, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1129, column: 13)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 1116, column: 7)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 1115, column: 7)
!2144 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1115, column: 7)
!2145 = !DILocation(line: 1295, column: 5, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1295, column: 5)
!2147 = !DILocation(line: 1366, column: 3, scope: !912)
!2148 = !DILocation(line: 1306, column: 18, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1306, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1296, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 1295, column: 5)
!2152 = !DILocation(line: 1290, column: 3, scope: !908)
!2153 = !DILocation(line: 0, scope: !906)
!2154 = !DILocation(line: 1301, column: 9, scope: !2150)
!2155 = !DILocation(line: 1301, column: 11, scope: !2150)
!2156 = !DILocation(line: 1301, column: 38, scope: !2150)
!2157 = !DILocation(line: 1300, column: 50, scope: !2150)
!2158 = !DILocation(line: 1303, column: 38, scope: !2150)
!2159 = !DILocation(line: 1302, column: 52, scope: !2150)
!2160 = !DILocation(line: 1305, column: 38, scope: !2150)
!2161 = !DILocation(line: 1304, column: 51, scope: !2150)
!2162 = !DILocation(line: 1306, column: 29, scope: !2149)
!2163 = !DILocation(line: 1306, column: 11, scope: !2150)
!2164 = !DILocation(line: 1308, column: 40, scope: !2149)
!2165 = !DILocation(line: 1307, column: 54, scope: !2149)
!2166 = !DILocation(line: 1307, column: 9, scope: !2149)
!2167 = !DILocation(line: 1309, column: 18, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1309, column: 11)
!2169 = !DILocation(line: 1309, column: 24, scope: !2168)
!2170 = !DILocation(line: 1309, column: 11, scope: !2150)
!2171 = !DILocation(line: 1311, column: 40, scope: !2168)
!2172 = !DILocation(line: 1310, column: 56, scope: !2168)
!2173 = !DILocation(line: 1310, column: 9, scope: !2168)
!2174 = !DILocation(line: 1316, column: 36, scope: !2150)
!2175 = !DILocalVariable(name: "x", arg: 1, scope: !2176, file: !3, line: 626, type: !595)
!2176 = distinct !DISubprogram(name: "MagickLog10", scope: !3, file: !3, line: 626, type: !2092, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2177)
!2177 = !{!2175}
!2178 = !DILocation(line: 0, scope: !2176, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 1317, column: 9, scope: !2150)
!2180 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2179)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 630, column: 6)
!2182 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2179)
!2183 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2179)
!2184 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2179)
!2185 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2179)
!2186 = !DILocation(line: 1315, column: 50, scope: !2150)
!2187 = !DILocation(line: 1319, column: 36, scope: !2150)
!2188 = !DILocation(line: 0, scope: !2176, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 1320, column: 9, scope: !2150)
!2190 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2189)
!2191 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2189)
!2192 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2189)
!2193 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2189)
!2194 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2189)
!2195 = !DILocation(line: 1318, column: 52, scope: !2150)
!2196 = !DILocation(line: 1322, column: 36, scope: !2150)
!2197 = !DILocation(line: 0, scope: !2176, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1323, column: 9, scope: !2150)
!2199 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2198)
!2200 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2198)
!2201 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2198)
!2202 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2198)
!2203 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2198)
!2204 = !DILocation(line: 1321, column: 51, scope: !2150)
!2205 = !DILocation(line: 1324, column: 18, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1324, column: 11)
!2207 = !DILocation(line: 1324, column: 29, scope: !2206)
!2208 = !DILocation(line: 1324, column: 11, scope: !2150)
!2209 = !DILocation(line: 1326, column: 38, scope: !2206)
!2210 = !DILocation(line: 0, scope: !2176, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 1327, column: 11, scope: !2206)
!2212 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2211)
!2213 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2211)
!2214 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2211)
!2215 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2211)
!2216 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2211)
!2217 = !DILocation(line: 1325, column: 54, scope: !2206)
!2218 = !DILocation(line: 1325, column: 9, scope: !2206)
!2219 = !DILocation(line: 1328, column: 18, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1328, column: 11)
!2221 = !DILocation(line: 1328, column: 24, scope: !2220)
!2222 = !DILocation(line: 1328, column: 11, scope: !2150)
!2223 = !DILocation(line: 1330, column: 38, scope: !2220)
!2224 = !DILocation(line: 0, scope: !2176, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 1331, column: 11, scope: !2220)
!2226 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2225)
!2227 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2225)
!2228 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2225)
!2229 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2225)
!2230 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2225)
!2231 = !DILocation(line: 1329, column: 56, scope: !2220)
!2232 = !DILocation(line: 1329, column: 9, scope: !2220)
!2233 = !DILocation(line: 1336, column: 12, scope: !2150)
!2234 = !DILocation(line: 1336, column: 11, scope: !2150)
!2235 = !DILocation(line: 1336, column: 56, scope: !2150)
!2236 = !DILocation(line: 1338, column: 36, scope: !2150)
!2237 = !DILocation(line: 1335, column: 51, scope: !2150)
!2238 = !DILocation(line: 1340, column: 12, scope: !2150)
!2239 = !DILocation(line: 1340, column: 11, scope: !2150)
!2240 = !DILocation(line: 1340, column: 58, scope: !2150)
!2241 = !DILocation(line: 1342, column: 36, scope: !2150)
!2242 = !DILocation(line: 1339, column: 53, scope: !2150)
!2243 = !DILocation(line: 1344, column: 12, scope: !2150)
!2244 = !DILocation(line: 1344, column: 11, scope: !2150)
!2245 = !DILocation(line: 1344, column: 57, scope: !2150)
!2246 = !DILocation(line: 1346, column: 36, scope: !2150)
!2247 = !DILocation(line: 1343, column: 52, scope: !2150)
!2248 = !DILocation(line: 1347, column: 18, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1347, column: 11)
!2250 = !DILocation(line: 1347, column: 29, scope: !2249)
!2251 = !DILocation(line: 1347, column: 11, scope: !2150)
!2252 = !DILocation(line: 1349, column: 14, scope: !2249)
!2253 = !DILocation(line: 1349, column: 13, scope: !2249)
!2254 = !DILocation(line: 1349, column: 60, scope: !2249)
!2255 = !DILocation(line: 1351, column: 38, scope: !2249)
!2256 = !DILocation(line: 1348, column: 55, scope: !2249)
!2257 = !DILocation(line: 1348, column: 9, scope: !2249)
!2258 = !DILocation(line: 1352, column: 18, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1352, column: 11)
!2260 = !DILocation(line: 1352, column: 24, scope: !2259)
!2261 = !DILocation(line: 1352, column: 11, scope: !2150)
!2262 = !DILocation(line: 1354, column: 14, scope: !2259)
!2263 = !DILocation(line: 1354, column: 13, scope: !2259)
!2264 = !DILocation(line: 1354, column: 62, scope: !2259)
!2265 = !DILocation(line: 1356, column: 38, scope: !2259)
!2266 = !DILocation(line: 1353, column: 57, scope: !2259)
!2267 = !DILocation(line: 1353, column: 9, scope: !2259)
!2268 = !DILocation(line: 1295, column: 48, scope: !2151)
!2269 = !DILocation(line: 1295, column: 17, scope: !2151)
!2270 = distinct !{!2270, !2145, !2271, !1134, !1135}
!2271 = !DILocation(line: 1357, column: 5, scope: !2146)
!2272 = !DILocation(line: 1290, column: 21, scope: !907)
!2273 = !DILocation(line: 1290, column: 15, scope: !907)
!2274 = distinct !{!2274, !2152, !2275, !1134, !1135}
!2275 = !DILocation(line: 1358, column: 3, scope: !908)
!2276 = !DILocation(line: 0, scope: !902)
!2277 = !DILocation(line: 1115, column: 7, scope: !2144)
!2278 = !DILocation(line: 1121, column: 11, scope: !2142)
!2279 = !DILocation(line: 1121, column: 43, scope: !2142)
!2280 = !DILocation(line: 1120, column: 62, scope: !2142)
!2281 = !DILocation(line: 1124, column: 43, scope: !2142)
!2282 = !DILocation(line: 1123, column: 64, scope: !2142)
!2283 = !DILocation(line: 1127, column: 43, scope: !2142)
!2284 = !DILocation(line: 1126, column: 63, scope: !2142)
!2285 = !DILocation(line: 1129, column: 31, scope: !2141)
!2286 = !DILocation(line: 1129, column: 13, scope: !2142)
!2287 = !DILocation(line: 1131, column: 45, scope: !2141)
!2288 = !DILocation(line: 1130, column: 66, scope: !2141)
!2289 = !DILocation(line: 1130, column: 11, scope: !2141)
!2290 = !DILocation(line: 1133, column: 20, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1133, column: 13)
!2292 = !DILocation(line: 1133, column: 26, scope: !2291)
!2293 = !DILocation(line: 1133, column: 13, scope: !2142)
!2294 = !DILocation(line: 1135, column: 45, scope: !2291)
!2295 = !DILocation(line: 1134, column: 68, scope: !2291)
!2296 = !DILocation(line: 1134, column: 11, scope: !2291)
!2297 = !DILocation(line: 1140, column: 66, scope: !2142)
!2298 = !DILocation(line: 1140, column: 32, scope: !2142)
!2299 = !DILocation(line: 1141, column: 68, scope: !2142)
!2300 = !DILocation(line: 1141, column: 34, scope: !2142)
!2301 = !DILocation(line: 1142, column: 67, scope: !2142)
!2302 = !DILocation(line: 1142, column: 33, scope: !2142)
!2303 = !DILocation(line: 1143, column: 13, scope: !2142)
!2304 = !DILocation(line: 1144, column: 70, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1143, column: 13)
!2306 = !DILocation(line: 1144, column: 36, scope: !2305)
!2307 = !DILocation(line: 1144, column: 11, scope: !2305)
!2308 = !DILocation(line: 1145, column: 13, scope: !2142)
!2309 = !DILocation(line: 1146, column: 72, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1145, column: 13)
!2311 = !DILocation(line: 1146, column: 38, scope: !2310)
!2312 = !DILocation(line: 1146, column: 11, scope: !2310)
!2313 = !DILocation(line: 1147, column: 40, scope: !2142)
!2314 = !DILocation(line: 1147, column: 39, scope: !2142)
!2315 = !DILocation(line: 1147, column: 75, scope: !2142)
!2316 = !DILocation(line: 1147, column: 37, scope: !2142)
!2317 = !DILocation(line: 1149, column: 43, scope: !2142)
!2318 = !DILocation(line: 1148, column: 39, scope: !2142)
!2319 = !DILocation(line: 1151, column: 43, scope: !2142)
!2320 = !DILocation(line: 1150, column: 38, scope: !2142)
!2321 = !DILocation(line: 1152, column: 13, scope: !2142)
!2322 = !DILocation(line: 1154, column: 45, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1152, column: 13)
!2324 = !DILocation(line: 1153, column: 41, scope: !2323)
!2325 = !DILocation(line: 1153, column: 11, scope: !2323)
!2326 = !DILocation(line: 1155, column: 13, scope: !2142)
!2327 = !DILocation(line: 1157, column: 45, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1155, column: 13)
!2329 = !DILocation(line: 1156, column: 43, scope: !2328)
!2330 = !DILocation(line: 1156, column: 11, scope: !2328)
!2331 = !DILocation(line: 1162, column: 43, scope: !2142)
!2332 = !DILocation(line: 1162, column: 50, scope: !2142)
!2333 = !DILocation(line: 1162, column: 53, scope: !2142)
!2334 = !DILocation(line: 1162, column: 59, scope: !2142)
!2335 = !DILocation(line: 1162, column: 47, scope: !2142)
!2336 = !DILocation(line: 1162, column: 46, scope: !2142)
!2337 = !DILocation(line: 1161, column: 66, scope: !2142)
!2338 = !DILocation(line: 1164, column: 43, scope: !2142)
!2339 = !DILocation(line: 1164, column: 48, scope: !2142)
!2340 = !DILocation(line: 1163, column: 68, scope: !2142)
!2341 = !DILocation(line: 1166, column: 43, scope: !2142)
!2342 = !DILocation(line: 1166, column: 47, scope: !2142)
!2343 = !DILocation(line: 1165, column: 67, scope: !2142)
!2344 = !DILocation(line: 1167, column: 13, scope: !2142)
!2345 = !DILocation(line: 1169, column: 45, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1167, column: 13)
!2347 = !DILocation(line: 1169, column: 50, scope: !2346)
!2348 = !DILocation(line: 1168, column: 70, scope: !2346)
!2349 = !DILocation(line: 1168, column: 11, scope: !2346)
!2350 = !DILocation(line: 1170, column: 13, scope: !2142)
!2351 = !DILocation(line: 1172, column: 45, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1170, column: 13)
!2353 = !DILocation(line: 1172, column: 52, scope: !2352)
!2354 = !DILocation(line: 1171, column: 72, scope: !2352)
!2355 = !DILocation(line: 1171, column: 11, scope: !2352)
!2356 = !DILocation(line: 1177, column: 43, scope: !2142)
!2357 = !DILocation(line: 1176, column: 23, scope: !2142)
!2358 = !DILocation(line: 1176, column: 9, scope: !2142)
!2359 = !DILocation(line: 1176, column: 43, scope: !2142)
!2360 = !DILocation(line: 1179, column: 43, scope: !2142)
!2361 = !DILocation(line: 1178, column: 40, scope: !2142)
!2362 = !DILocation(line: 1178, column: 45, scope: !2142)
!2363 = !DILocation(line: 1181, column: 43, scope: !2142)
!2364 = !DILocation(line: 1180, column: 40, scope: !2142)
!2365 = !DILocation(line: 1180, column: 44, scope: !2142)
!2366 = !DILocation(line: 1182, column: 13, scope: !2142)
!2367 = !DILocation(line: 1184, column: 45, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1182, column: 13)
!2369 = !DILocation(line: 1183, column: 42, scope: !2368)
!2370 = !DILocation(line: 1183, column: 47, scope: !2368)
!2371 = !DILocation(line: 1183, column: 11, scope: !2368)
!2372 = !DILocation(line: 1185, column: 13, scope: !2142)
!2373 = !DILocation(line: 1187, column: 45, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1185, column: 13)
!2375 = !DILocation(line: 1186, column: 42, scope: !2374)
!2376 = !DILocation(line: 1186, column: 49, scope: !2374)
!2377 = !DILocation(line: 1186, column: 11, scope: !2374)
!2378 = !DILocation(line: 1192, column: 43, scope: !2142)
!2379 = !DILocation(line: 0, scope: !2176, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 1193, column: 11, scope: !2142)
!2381 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2380)
!2382 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2380)
!2383 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2380)
!2384 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2380)
!2385 = !DILocation(line: 1195, column: 11, scope: !2142)
!2386 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2380)
!2387 = !DILocation(line: 1191, column: 48, scope: !2142)
!2388 = !DILocation(line: 1195, column: 43, scope: !2142)
!2389 = !DILocation(line: 0, scope: !2176, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1196, column: 11, scope: !2142)
!2391 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2390)
!2392 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2390)
!2393 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2390)
!2394 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2390)
!2395 = !DILocation(line: 1198, column: 11, scope: !2142)
!2396 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2390)
!2397 = !DILocation(line: 1194, column: 50, scope: !2142)
!2398 = !DILocation(line: 1198, column: 43, scope: !2142)
!2399 = !DILocation(line: 0, scope: !2176, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1199, column: 11, scope: !2142)
!2401 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2400)
!2402 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2400)
!2403 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2400)
!2404 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2400)
!2405 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2400)
!2406 = !DILocation(line: 1197, column: 49, scope: !2142)
!2407 = !DILocation(line: 1200, column: 20, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1200, column: 13)
!2409 = !DILocation(line: 1200, column: 31, scope: !2408)
!2410 = !DILocation(line: 1200, column: 13, scope: !2142)
!2411 = !DILocation(line: 1202, column: 13, scope: !2408)
!2412 = !DILocation(line: 1202, column: 45, scope: !2408)
!2413 = !DILocation(line: 0, scope: !2176, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1203, column: 13, scope: !2408)
!2415 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2414)
!2416 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2414)
!2417 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2414)
!2418 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2414)
!2419 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2414)
!2420 = !DILocation(line: 1201, column: 52, scope: !2408)
!2421 = !DILocation(line: 1201, column: 11, scope: !2408)
!2422 = !DILocation(line: 1204, column: 20, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1204, column: 13)
!2424 = !DILocation(line: 1204, column: 26, scope: !2423)
!2425 = !DILocation(line: 1204, column: 13, scope: !2142)
!2426 = !DILocation(line: 1206, column: 13, scope: !2423)
!2427 = !DILocation(line: 1206, column: 45, scope: !2423)
!2428 = !DILocation(line: 0, scope: !2176, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1207, column: 13, scope: !2423)
!2430 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2429)
!2431 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2429)
!2432 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2429)
!2433 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2429)
!2434 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2429)
!2435 = !DILocation(line: 1205, column: 54, scope: !2423)
!2436 = !DILocation(line: 1205, column: 11, scope: !2423)
!2437 = !DILocation(line: 1211, column: 40, scope: !2142)
!2438 = !DILocation(line: 1211, column: 72, scope: !2142)
!2439 = !DILocation(line: 1211, column: 9, scope: !2142)
!2440 = !DILocation(line: 1211, column: 38, scope: !2142)
!2441 = !DILocation(line: 1212, column: 74, scope: !2142)
!2442 = !DILocation(line: 1212, column: 35, scope: !2142)
!2443 = !DILocation(line: 1212, column: 40, scope: !2142)
!2444 = !DILocation(line: 1213, column: 73, scope: !2142)
!2445 = !DILocation(line: 1213, column: 35, scope: !2142)
!2446 = !DILocation(line: 1213, column: 39, scope: !2142)
!2447 = !DILocation(line: 1214, column: 20, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1214, column: 13)
!2449 = !DILocation(line: 1214, column: 31, scope: !2448)
!2450 = !DILocation(line: 1214, column: 13, scope: !2142)
!2451 = !DILocation(line: 1216, column: 45, scope: !2448)
!2452 = !DILocation(line: 1215, column: 37, scope: !2448)
!2453 = !DILocation(line: 1215, column: 42, scope: !2448)
!2454 = !DILocation(line: 1215, column: 11, scope: !2448)
!2455 = !DILocation(line: 1217, column: 20, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1217, column: 13)
!2457 = !DILocation(line: 1217, column: 26, scope: !2456)
!2458 = !DILocation(line: 1217, column: 13, scope: !2142)
!2459 = !DILocation(line: 1219, column: 45, scope: !2456)
!2460 = !DILocation(line: 1218, column: 37, scope: !2456)
!2461 = !DILocation(line: 1218, column: 44, scope: !2456)
!2462 = !DILocation(line: 1218, column: 11, scope: !2456)
!2463 = !DILocation(line: 1220, column: 72, scope: !2142)
!2464 = !DILocation(line: 1220, column: 38, scope: !2142)
!2465 = !DILocation(line: 1221, column: 74, scope: !2142)
!2466 = !DILocation(line: 1221, column: 40, scope: !2142)
!2467 = !DILocation(line: 1222, column: 73, scope: !2142)
!2468 = !DILocation(line: 1222, column: 39, scope: !2142)
!2469 = !DILocation(line: 1223, column: 13, scope: !2142)
!2470 = !DILocation(line: 1225, column: 45, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1223, column: 13)
!2472 = !DILocation(line: 1224, column: 42, scope: !2471)
!2473 = !DILocation(line: 1224, column: 11, scope: !2471)
!2474 = !DILocation(line: 1226, column: 13, scope: !2142)
!2475 = !DILocation(line: 1228, column: 45, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1226, column: 13)
!2477 = !DILocation(line: 1227, column: 44, scope: !2476)
!2478 = !DILocation(line: 1227, column: 11, scope: !2476)
!2479 = !DILocation(line: 1115, column: 46, scope: !2143)
!2480 = !DILocation(line: 1115, column: 19, scope: !2143)
!2481 = distinct !{!2481, !2277, !2482, !1134, !1135}
!2482 = !DILocation(line: 1229, column: 7, scope: !2144)
!2483 = !DILocation(line: 1230, column: 30, scope: !902)
!2484 = !DILocation(line: 1230, column: 52, scope: !902)
!2485 = !DILocation(line: 1230, column: 28, scope: !902)
!2486 = !DILocation(line: 1231, column: 38, scope: !902)
!2487 = !DILocation(line: 1231, column: 37, scope: !902)
!2488 = !DILocation(line: 1231, column: 61, scope: !902)
!2489 = !DILocation(line: 1231, column: 35, scope: !902)
!2490 = !DILocation(line: 1232, column: 54, scope: !902)
!2491 = !DILocation(line: 1232, column: 30, scope: !902)
!2492 = !DILocation(line: 1233, column: 63, scope: !902)
!2493 = !DILocation(line: 1233, column: 37, scope: !902)
!2494 = !DILocation(line: 1234, column: 53, scope: !902)
!2495 = !DILocation(line: 1234, column: 29, scope: !902)
!2496 = !DILocation(line: 1235, column: 62, scope: !902)
!2497 = !DILocation(line: 1235, column: 36, scope: !902)
!2498 = !DILocation(line: 1236, column: 11, scope: !902)
!2499 = !DILocation(line: 1238, column: 58, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1237, column: 9)
!2501 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1236, column: 11)
!2502 = !DILocation(line: 1238, column: 34, scope: !2500)
!2503 = !DILocation(line: 1239, column: 67, scope: !2500)
!2504 = !DILocation(line: 1239, column: 41, scope: !2500)
!2505 = !DILocation(line: 1240, column: 9, scope: !2500)
!2506 = !DILocation(line: 1241, column: 11, scope: !902)
!2507 = !DILocation(line: 1243, column: 60, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1242, column: 9)
!2509 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1241, column: 11)
!2510 = !DILocation(line: 1243, column: 36, scope: !2508)
!2511 = !DILocation(line: 1244, column: 69, scope: !2508)
!2512 = !DILocation(line: 1244, column: 43, scope: !2508)
!2513 = !DILocation(line: 1245, column: 9, scope: !2508)
!2514 = !DILocation(line: 1110, column: 44, scope: !903)
!2515 = !DILocation(line: 1110, column: 17, scope: !903)
!2516 = distinct !{!2516, !2137, !2517, !1134, !1135}
!2517 = !DILocation(line: 1246, column: 5, scope: !904)
!2518 = !DILocation(line: 1251, column: 8, scope: !898)
!2519 = !DILocation(line: 1251, column: 33, scope: !898)
!2520 = !DILocation(line: 1251, column: 37, scope: !898)
!2521 = !DILocation(line: 1251, column: 36, scope: !898)
!2522 = !DILocation(line: 1252, column: 36, scope: !898)
!2523 = !DILocation(line: 1252, column: 64, scope: !898)
!2524 = !DILocation(line: 1252, column: 31, scope: !898)
!2525 = !DILocation(line: 1254, column: 32, scope: !898)
!2526 = !DILocation(line: 1254, column: 55, scope: !898)
!2527 = !DILocation(line: 1254, column: 35, scope: !898)
!2528 = !DILocation(line: 1253, column: 54, scope: !898)
!2529 = !DILocation(line: 1253, column: 53, scope: !898)
!2530 = !DILocation(line: 1252, column: 29, scope: !898)
!2531 = !DILocation(line: 1250, column: 5, scope: !898)
!2532 = !DILocation(line: 1250, column: 48, scope: !898)
!2533 = !DILocation(line: 1257, column: 33, scope: !898)
!2534 = !DILocation(line: 1257, column: 57, scope: !898)
!2535 = !DILocation(line: 1257, column: 38, scope: !898)
!2536 = !DILocation(line: 1258, column: 63, scope: !898)
!2537 = !DILocation(line: 1258, column: 68, scope: !898)
!2538 = !DILocation(line: 1258, column: 33, scope: !898)
!2539 = !DILocation(line: 1260, column: 32, scope: !898)
!2540 = !DILocation(line: 1260, column: 57, scope: !898)
!2541 = !DILocation(line: 1260, column: 37, scope: !898)
!2542 = !DILocation(line: 1259, column: 58, scope: !898)
!2543 = !DILocation(line: 1259, column: 57, scope: !898)
!2544 = !DILocation(line: 1258, column: 31, scope: !898)
!2545 = !DILocation(line: 1256, column: 5, scope: !898)
!2546 = !DILocation(line: 1256, column: 50, scope: !898)
!2547 = !DILocation(line: 1263, column: 33, scope: !898)
!2548 = !DILocation(line: 1263, column: 56, scope: !898)
!2549 = !DILocation(line: 1263, column: 37, scope: !898)
!2550 = !DILocation(line: 1264, column: 62, scope: !898)
!2551 = !DILocation(line: 1264, column: 66, scope: !898)
!2552 = !DILocation(line: 1264, column: 32, scope: !898)
!2553 = !DILocation(line: 1266, column: 32, scope: !898)
!2554 = !DILocation(line: 1266, column: 56, scope: !898)
!2555 = !DILocation(line: 1266, column: 36, scope: !898)
!2556 = !DILocation(line: 1265, column: 56, scope: !898)
!2557 = !DILocation(line: 1265, column: 55, scope: !898)
!2558 = !DILocation(line: 1264, column: 30, scope: !898)
!2559 = !DILocation(line: 1262, column: 5, scope: !898)
!2560 = !DILocation(line: 1262, column: 49, scope: !898)
!2561 = !DILocation(line: 1268, column: 16, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1268, column: 9)
!2563 = !DILocation(line: 1268, column: 27, scope: !2562)
!2564 = !DILocation(line: 1268, column: 9, scope: !898)
!2565 = !DILocation(line: 1270, column: 35, scope: !2562)
!2566 = !DILocation(line: 1270, column: 59, scope: !2562)
!2567 = !DILocation(line: 1270, column: 40, scope: !2562)
!2568 = !DILocation(line: 1271, column: 65, scope: !2562)
!2569 = !DILocation(line: 1271, column: 70, scope: !2562)
!2570 = !DILocation(line: 1271, column: 35, scope: !2562)
!2571 = !DILocation(line: 1273, column: 34, scope: !2562)
!2572 = !DILocation(line: 1273, column: 59, scope: !2562)
!2573 = !DILocation(line: 1273, column: 39, scope: !2562)
!2574 = !DILocation(line: 1272, column: 60, scope: !2562)
!2575 = !DILocation(line: 1272, column: 59, scope: !2562)
!2576 = !DILocation(line: 1271, column: 33, scope: !2562)
!2577 = !DILocation(line: 1269, column: 7, scope: !2562)
!2578 = !DILocation(line: 1269, column: 52, scope: !2562)
!2579 = !DILocation(line: 1275, column: 16, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1275, column: 9)
!2581 = !DILocation(line: 1275, column: 22, scope: !2580)
!2582 = !DILocation(line: 1275, column: 9, scope: !898)
!2583 = !DILocation(line: 1277, column: 35, scope: !2580)
!2584 = !DILocation(line: 1277, column: 61, scope: !2580)
!2585 = !DILocation(line: 1277, column: 42, scope: !2580)
!2586 = !DILocation(line: 1278, column: 67, scope: !2580)
!2587 = !DILocation(line: 1278, column: 74, scope: !2580)
!2588 = !DILocation(line: 1278, column: 37, scope: !2580)
!2589 = !DILocation(line: 1280, column: 34, scope: !2580)
!2590 = !DILocation(line: 1280, column: 61, scope: !2580)
!2591 = !DILocation(line: 1280, column: 41, scope: !2580)
!2592 = !DILocation(line: 1279, column: 64, scope: !2580)
!2593 = !DILocation(line: 1279, column: 63, scope: !2580)
!2594 = !DILocation(line: 1278, column: 35, scope: !2580)
!2595 = !DILocation(line: 1276, column: 7, scope: !2580)
!2596 = !DILocation(line: 1276, column: 54, scope: !2580)
!2597 = !DILocation(line: 1105, column: 21, scope: !899)
!2598 = !DILocation(line: 1105, column: 15, scope: !899)
!2599 = distinct !{!2599, !2062, !2600, !1134, !1135}
!2600 = !DILocation(line: 1282, column: 3, scope: !900)
!2601 = !DILocation(line: 0, scope: !910)
!2602 = !DILocation(line: 1371, column: 5, scope: !916)
!2603 = !DILocation(line: 0, scope: !914)
!2604 = !DILocation(line: 1376, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1376, column: 7)
!2606 = !DILocation(line: 1381, column: 57, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1377, column: 7)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 1376, column: 7)
!2609 = !DILocation(line: 1381, column: 38, scope: !2607)
!2610 = !DILocation(line: 1381, column: 60, scope: !2607)
!2611 = !DILocation(line: 1381, column: 63, scope: !2607)
!2612 = !DILocation(line: 1382, column: 39, scope: !2607)
!2613 = !DILocation(line: 1382, column: 71, scope: !2607)
!2614 = !DILocation(line: 1381, column: 34, scope: !2607)
!2615 = !DILocation(line: 1383, column: 59, scope: !2607)
!2616 = !DILocation(line: 1383, column: 40, scope: !2607)
!2617 = !DILocation(line: 1383, column: 64, scope: !2607)
!2618 = !DILocation(line: 1383, column: 67, scope: !2607)
!2619 = !DILocation(line: 1384, column: 73, scope: !2607)
!2620 = !DILocation(line: 1383, column: 36, scope: !2607)
!2621 = !DILocation(line: 1385, column: 58, scope: !2607)
!2622 = !DILocation(line: 1385, column: 39, scope: !2607)
!2623 = !DILocation(line: 1385, column: 62, scope: !2607)
!2624 = !DILocation(line: 1385, column: 65, scope: !2607)
!2625 = !DILocation(line: 1386, column: 72, scope: !2607)
!2626 = !DILocation(line: 1385, column: 35, scope: !2607)
!2627 = !DILocation(line: 1387, column: 20, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1387, column: 13)
!2629 = !DILocation(line: 1387, column: 31, scope: !2628)
!2630 = !DILocation(line: 1387, column: 13, scope: !2607)
!2631 = !DILocation(line: 1388, column: 61, scope: !2628)
!2632 = !DILocation(line: 1388, column: 42, scope: !2628)
!2633 = !DILocation(line: 1388, column: 66, scope: !2628)
!2634 = !DILocation(line: 1388, column: 69, scope: !2628)
!2635 = !DILocation(line: 1389, column: 75, scope: !2628)
!2636 = !DILocation(line: 1388, column: 38, scope: !2628)
!2637 = !DILocation(line: 1388, column: 11, scope: !2628)
!2638 = !DILocation(line: 1390, column: 20, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1390, column: 13)
!2640 = !DILocation(line: 1390, column: 26, scope: !2639)
!2641 = !DILocation(line: 1390, column: 13, scope: !2607)
!2642 = !DILocation(line: 1391, column: 63, scope: !2639)
!2643 = !DILocation(line: 1391, column: 44, scope: !2639)
!2644 = !DILocation(line: 1391, column: 70, scope: !2639)
!2645 = !DILocation(line: 1391, column: 73, scope: !2639)
!2646 = !DILocation(line: 1393, column: 45, scope: !2639)
!2647 = !DILocation(line: 1391, column: 40, scope: !2639)
!2648 = !DILocation(line: 1391, column: 11, scope: !2639)
!2649 = !DILocation(line: 1398, column: 43, scope: !2607)
!2650 = !DILocation(line: 1397, column: 41, scope: !2607)
!2651 = !DILocalVariable(name: "x", arg: 1, scope: !2652, file: !3, line: 619, type: !1334)
!2652 = distinct !DISubprogram(name: "MagickAbsoluteValue", scope: !3, file: !3, line: 619, type: !2653, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!170, !1334}
!2655 = !{!2651}
!2656 = !DILocation(line: 0, scope: !2652, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1397, column: 20, scope: !2607)
!2658 = !DILocation(line: 621, column: 7, scope: !2652, inlinedAt: !2657)
!2659 = !DILocation(line: 1397, column: 9, scope: !2607)
!2660 = !DILocation(line: 1397, column: 62, scope: !2607)
!2661 = !DILocation(line: 1400, column: 43, scope: !2607)
!2662 = !DILocation(line: 0, scope: !2652, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1399, column: 20, scope: !2607)
!2664 = !DILocation(line: 1399, column: 59, scope: !2607)
!2665 = !DILocation(line: 1399, column: 64, scope: !2607)
!2666 = !DILocation(line: 1402, column: 43, scope: !2607)
!2667 = !DILocation(line: 0, scope: !2652, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1401, column: 20, scope: !2607)
!2669 = !DILocation(line: 1401, column: 59, scope: !2607)
!2670 = !DILocation(line: 1401, column: 63, scope: !2607)
!2671 = !DILocation(line: 1403, column: 13, scope: !2607)
!2672 = !DILocation(line: 1405, column: 45, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1403, column: 13)
!2674 = !DILocation(line: 0, scope: !2652, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1404, column: 22, scope: !2673)
!2676 = !DILocation(line: 1404, column: 61, scope: !2673)
!2677 = !DILocation(line: 1404, column: 66, scope: !2673)
!2678 = !DILocation(line: 1404, column: 11, scope: !2673)
!2679 = !DILocation(line: 1406, column: 13, scope: !2607)
!2680 = !DILocation(line: 1408, column: 45, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1406, column: 13)
!2682 = !DILocation(line: 0, scope: !2652, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1407, column: 22, scope: !2681)
!2684 = !DILocation(line: 1407, column: 61, scope: !2681)
!2685 = !DILocation(line: 1407, column: 68, scope: !2681)
!2686 = !DILocation(line: 1407, column: 11, scope: !2681)
!2687 = !DILocation(line: 1412, column: 70, scope: !2607)
!2688 = !DILocation(line: 0, scope: !2176, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1413, column: 11, scope: !2607)
!2690 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2689)
!2691 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2689)
!2692 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2689)
!2693 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2689)
!2694 = !DILocation(line: 1414, column: 40, scope: !2607)
!2695 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2689)
!2696 = !DILocation(line: 1412, column: 36, scope: !2607)
!2697 = !DILocation(line: 1414, column: 72, scope: !2607)
!2698 = !DILocation(line: 0, scope: !2176, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1415, column: 11, scope: !2607)
!2700 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2699)
!2701 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2699)
!2702 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2699)
!2703 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2699)
!2704 = !DILocation(line: 1416, column: 39, scope: !2607)
!2705 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2699)
!2706 = !DILocation(line: 1414, column: 38, scope: !2607)
!2707 = !DILocation(line: 1416, column: 71, scope: !2607)
!2708 = !DILocation(line: 0, scope: !2176, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1417, column: 11, scope: !2607)
!2710 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2709)
!2711 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2709)
!2712 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2709)
!2713 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2709)
!2714 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2709)
!2715 = !DILocation(line: 1416, column: 37, scope: !2607)
!2716 = !DILocation(line: 1418, column: 20, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1418, column: 13)
!2718 = !DILocation(line: 1418, column: 31, scope: !2717)
!2719 = !DILocation(line: 1418, column: 13, scope: !2607)
!2720 = !DILocation(line: 1419, column: 42, scope: !2717)
!2721 = !DILocation(line: 1419, column: 74, scope: !2717)
!2722 = !DILocation(line: 0, scope: !2176, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1420, column: 13, scope: !2717)
!2724 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2723)
!2725 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2723)
!2726 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2723)
!2727 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2723)
!2728 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2723)
!2729 = !DILocation(line: 1419, column: 40, scope: !2717)
!2730 = !DILocation(line: 1419, column: 11, scope: !2717)
!2731 = !DILocation(line: 1421, column: 20, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1421, column: 13)
!2733 = !DILocation(line: 1421, column: 26, scope: !2732)
!2734 = !DILocation(line: 1421, column: 13, scope: !2607)
!2735 = !DILocation(line: 1423, column: 13, scope: !2732)
!2736 = !DILocation(line: 1423, column: 45, scope: !2732)
!2737 = !DILocation(line: 0, scope: !2176, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1423, column: 53, scope: !2732)
!2739 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2738)
!2740 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2738)
!2741 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2738)
!2742 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2738)
!2743 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2738)
!2744 = !DILocation(line: 1422, column: 42, scope: !2732)
!2745 = !DILocation(line: 1422, column: 11, scope: !2732)
!2746 = !DILocation(line: 1425, column: 40, scope: !2607)
!2747 = !DILocation(line: 1425, column: 72, scope: !2607)
!2748 = !DILocation(line: 1426, column: 23, scope: !2607)
!2749 = !DILocation(line: 1426, column: 49, scope: !2607)
!2750 = !DILocation(line: 1427, column: 37, scope: !2607)
!2751 = !DILocation(line: 1426, column: 52, scope: !2607)
!2752 = !DILocation(line: 0, scope: !2176, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1426, column: 11, scope: !2607)
!2754 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2753)
!2755 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2753)
!2756 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2753)
!2757 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2753)
!2758 = !DILocation(line: 1428, column: 42, scope: !2607)
!2759 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2753)
!2760 = !DILocation(line: 1425, column: 37, scope: !2607)
!2761 = !DILocation(line: 1428, column: 74, scope: !2607)
!2762 = !DILocation(line: 1429, column: 49, scope: !2607)
!2763 = !DILocation(line: 1430, column: 37, scope: !2607)
!2764 = !DILocation(line: 1429, column: 54, scope: !2607)
!2765 = !DILocation(line: 0, scope: !2176, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1429, column: 11, scope: !2607)
!2767 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2766)
!2768 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2766)
!2769 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2766)
!2770 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2766)
!2771 = !DILocation(line: 1431, column: 41, scope: !2607)
!2772 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2766)
!2773 = !DILocation(line: 1428, column: 39, scope: !2607)
!2774 = !DILocation(line: 1431, column: 73, scope: !2607)
!2775 = !DILocation(line: 1432, column: 49, scope: !2607)
!2776 = !DILocation(line: 1433, column: 37, scope: !2607)
!2777 = !DILocation(line: 1432, column: 53, scope: !2607)
!2778 = !DILocation(line: 0, scope: !2176, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 1432, column: 11, scope: !2607)
!2780 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2779)
!2781 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2779)
!2782 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2779)
!2783 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2779)
!2784 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2779)
!2785 = !DILocation(line: 1431, column: 38, scope: !2607)
!2786 = !DILocation(line: 1434, column: 20, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1434, column: 13)
!2788 = !DILocation(line: 1434, column: 31, scope: !2787)
!2789 = !DILocation(line: 1434, column: 13, scope: !2607)
!2790 = !DILocation(line: 1436, column: 13, scope: !2787)
!2791 = !DILocation(line: 1436, column: 45, scope: !2787)
!2792 = !DILocation(line: 1437, column: 39, scope: !2787)
!2793 = !DILocation(line: 1437, column: 71, scope: !2787)
!2794 = !DILocation(line: 1437, column: 44, scope: !2787)
!2795 = !DILocation(line: 0, scope: !2176, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 1436, column: 51, scope: !2787)
!2797 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2796)
!2798 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2796)
!2799 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2796)
!2800 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2796)
!2801 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2796)
!2802 = !DILocation(line: 1435, column: 41, scope: !2787)
!2803 = !DILocation(line: 1435, column: 11, scope: !2787)
!2804 = !DILocation(line: 1438, column: 20, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1438, column: 13)
!2806 = !DILocation(line: 1438, column: 26, scope: !2805)
!2807 = !DILocation(line: 1438, column: 13, scope: !2607)
!2808 = !DILocation(line: 1440, column: 13, scope: !2805)
!2809 = !DILocation(line: 1440, column: 45, scope: !2805)
!2810 = !DILocation(line: 1441, column: 39, scope: !2805)
!2811 = !DILocation(line: 1442, column: 39, scope: !2805)
!2812 = !DILocation(line: 1441, column: 46, scope: !2805)
!2813 = !DILocation(line: 0, scope: !2176, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1440, column: 53, scope: !2805)
!2815 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2814)
!2816 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2814)
!2817 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2814)
!2818 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2814)
!2819 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2814)
!2820 = !DILocation(line: 1439, column: 43, scope: !2805)
!2821 = !DILocation(line: 1439, column: 11, scope: !2805)
!2822 = !DILocation(line: 1443, column: 66, scope: !2607)
!2823 = !DILocation(line: 1444, column: 37, scope: !2607)
!2824 = !DILocation(line: 1443, column: 69, scope: !2607)
!2825 = !DILocation(line: 0, scope: !2176, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1444, column: 41, scope: !2607)
!2827 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2826)
!2828 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2826)
!2829 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2826)
!2830 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2826)
!2831 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2826)
!2832 = !DILocation(line: 1443, column: 37, scope: !2607)
!2833 = !DILocation(line: 1446, column: 68, scope: !2607)
!2834 = !DILocation(line: 1447, column: 37, scope: !2607)
!2835 = !DILocation(line: 1446, column: 73, scope: !2607)
!2836 = !DILocation(line: 0, scope: !2176, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1447, column: 43, scope: !2607)
!2838 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2837)
!2839 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2837)
!2840 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2837)
!2841 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2837)
!2842 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2837)
!2843 = !DILocation(line: 1446, column: 39, scope: !2607)
!2844 = !DILocation(line: 1449, column: 67, scope: !2607)
!2845 = !DILocation(line: 1450, column: 37, scope: !2607)
!2846 = !DILocation(line: 1449, column: 71, scope: !2607)
!2847 = !DILocation(line: 0, scope: !2176, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1450, column: 42, scope: !2607)
!2849 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2848)
!2850 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2848)
!2851 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2848)
!2852 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2848)
!2853 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2848)
!2854 = !DILocation(line: 1449, column: 38, scope: !2607)
!2855 = !DILocation(line: 1452, column: 20, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1452, column: 13)
!2857 = !DILocation(line: 1452, column: 31, scope: !2856)
!2858 = !DILocation(line: 1452, column: 13, scope: !2607)
!2859 = !DILocation(line: 1453, column: 70, scope: !2856)
!2860 = !DILocation(line: 1454, column: 39, scope: !2856)
!2861 = !DILocation(line: 1453, column: 75, scope: !2856)
!2862 = !DILocation(line: 0, scope: !2176, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1454, column: 45, scope: !2856)
!2864 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2863)
!2865 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2863)
!2866 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2863)
!2867 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2863)
!2868 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2863)
!2869 = !DILocation(line: 1453, column: 41, scope: !2856)
!2870 = !DILocation(line: 1453, column: 11, scope: !2856)
!2871 = !DILocation(line: 1456, column: 20, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1456, column: 13)
!2873 = !DILocation(line: 1456, column: 26, scope: !2872)
!2874 = !DILocation(line: 1456, column: 13, scope: !2607)
!2875 = !DILocation(line: 1457, column: 72, scope: !2872)
!2876 = !DILocation(line: 1458, column: 39, scope: !2872)
!2877 = !DILocation(line: 1457, column: 79, scope: !2872)
!2878 = !DILocation(line: 0, scope: !2176, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1458, column: 47, scope: !2872)
!2880 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2879)
!2881 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2879)
!2882 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2879)
!2883 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2879)
!2884 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2879)
!2885 = !DILocation(line: 1457, column: 43, scope: !2872)
!2886 = !DILocation(line: 1457, column: 11, scope: !2872)
!2887 = !DILocation(line: 1376, column: 46, scope: !2608)
!2888 = !DILocation(line: 1376, column: 19, scope: !2608)
!2889 = distinct !{!2889, !2604, !2890, !1134, !1135}
!2890 = !DILocation(line: 1461, column: 7, scope: !2605)
!2891 = !DILocation(line: 1371, column: 44, scope: !915)
!2892 = !DILocation(line: 1371, column: 17, scope: !915)
!2893 = distinct !{!2893, !2602, !2894, !1134, !1135}
!2894 = !DILocation(line: 1462, column: 5, scope: !916)
!2895 = !DILocation(line: 1464, column: 7, scope: !910)
!2896 = !DILocation(line: 1464, column: 29, scope: !910)
!2897 = !DILocation(line: 1463, column: 5, scope: !910)
!2898 = !DILocation(line: 1463, column: 60, scope: !910)
!2899 = !DILocation(line: 1466, column: 29, scope: !910)
!2900 = !DILocation(line: 1465, column: 5, scope: !910)
!2901 = !DILocation(line: 1465, column: 62, scope: !910)
!2902 = !DILocation(line: 1468, column: 29, scope: !910)
!2903 = !DILocation(line: 1467, column: 5, scope: !910)
!2904 = !DILocation(line: 1467, column: 61, scope: !910)
!2905 = !DILocation(line: 1469, column: 16, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1469, column: 9)
!2907 = !DILocation(line: 1469, column: 27, scope: !2906)
!2908 = !DILocation(line: 1469, column: 9, scope: !910)
!2909 = !DILocation(line: 1471, column: 31, scope: !2906)
!2910 = !DILocation(line: 1470, column: 62, scope: !2906)
!2911 = !DILocation(line: 1470, column: 7, scope: !2906)
!2912 = !DILocation(line: 1472, column: 16, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1472, column: 9)
!2914 = !DILocation(line: 1472, column: 22, scope: !2913)
!2915 = !DILocation(line: 1472, column: 9, scope: !910)
!2916 = !DILocation(line: 1474, column: 31, scope: !2913)
!2917 = !DILocation(line: 1473, column: 62, scope: !2913)
!2918 = !DILocation(line: 1473, column: 7, scope: !2913)
!2919 = !DILocation(line: 1366, column: 21, scope: !911)
!2920 = !DILocation(line: 1366, column: 15, scope: !911)
!2921 = distinct !{!2921, !2147, !2922, !1134, !1135}
!2922 = !DILocation(line: 1475, column: 3, scope: !912)
!2923 = !DILocation(line: 1479, column: 10, scope: !831)
!2924 = !DILocation(line: 1480, column: 10, scope: !831)
!2925 = !DILocation(line: 1485, column: 3, scope: !920)
!2926 = !DILocation(line: 0, scope: !918)
!2927 = !DILocation(line: 1490, column: 5, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1490, column: 5)
!2929 = !DILocation(line: 1495, column: 34, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1491, column: 5)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1490, column: 5)
!2932 = !DILocation(line: 1495, column: 61, scope: !2930)
!2933 = !DILocation(line: 1495, column: 32, scope: !2930)
!2934 = !DILocation(line: 1496, column: 63, scope: !2930)
!2935 = !DILocation(line: 1496, column: 34, scope: !2930)
!2936 = !DILocation(line: 1497, column: 62, scope: !2930)
!2937 = !DILocation(line: 1497, column: 33, scope: !2930)
!2938 = !DILocation(line: 1498, column: 18, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1498, column: 11)
!2940 = !DILocation(line: 1498, column: 29, scope: !2939)
!2941 = !DILocation(line: 1498, column: 11, scope: !2930)
!2942 = !DILocation(line: 1499, column: 65, scope: !2939)
!2943 = !DILocation(line: 1499, column: 36, scope: !2939)
!2944 = !DILocation(line: 1499, column: 9, scope: !2939)
!2945 = !DILocation(line: 1500, column: 18, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1500, column: 11)
!2947 = !DILocation(line: 1500, column: 24, scope: !2946)
!2948 = !DILocation(line: 1500, column: 11, scope: !2930)
!2949 = !DILocation(line: 1501, column: 67, scope: !2946)
!2950 = !DILocation(line: 1501, column: 38, scope: !2946)
!2951 = !DILocation(line: 1501, column: 9, scope: !2946)
!2952 = !DILocation(line: 1502, column: 64, scope: !2930)
!2953 = !DILocation(line: 1502, column: 35, scope: !2930)
!2954 = !DILocation(line: 1504, column: 66, scope: !2930)
!2955 = !DILocation(line: 1504, column: 37, scope: !2930)
!2956 = !DILocation(line: 1506, column: 65, scope: !2930)
!2957 = !DILocation(line: 1506, column: 36, scope: !2930)
!2958 = !DILocation(line: 1508, column: 11, scope: !2930)
!2959 = !DILocation(line: 1509, column: 68, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1508, column: 11)
!2961 = !DILocation(line: 1509, column: 39, scope: !2960)
!2962 = !DILocation(line: 1509, column: 9, scope: !2960)
!2963 = !DILocation(line: 1511, column: 11, scope: !2930)
!2964 = !DILocation(line: 1512, column: 70, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1511, column: 11)
!2966 = !DILocation(line: 1512, column: 41, scope: !2965)
!2967 = !DILocation(line: 1512, column: 9, scope: !2965)
!2968 = !DILocation(line: 1518, column: 36, scope: !2930)
!2969 = !DILocation(line: 0, scope: !2176, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1519, column: 9, scope: !2930)
!2971 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2970)
!2972 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2970)
!2973 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2970)
!2974 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2970)
!2975 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2970)
!2976 = !DILocation(line: 1517, column: 57, scope: !2930)
!2977 = !DILocation(line: 1521, column: 36, scope: !2930)
!2978 = !DILocation(line: 0, scope: !2176, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 1522, column: 9, scope: !2930)
!2980 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2979)
!2981 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2979)
!2982 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2979)
!2983 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2979)
!2984 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2979)
!2985 = !DILocation(line: 1520, column: 59, scope: !2930)
!2986 = !DILocation(line: 1524, column: 36, scope: !2930)
!2987 = !DILocation(line: 0, scope: !2176, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1525, column: 9, scope: !2930)
!2989 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !2988)
!2990 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !2988)
!2991 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !2988)
!2992 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !2988)
!2993 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !2988)
!2994 = !DILocation(line: 1523, column: 58, scope: !2930)
!2995 = !DILocation(line: 1526, column: 18, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1526, column: 11)
!2997 = !DILocation(line: 1526, column: 29, scope: !2996)
!2998 = !DILocation(line: 1526, column: 11, scope: !2930)
!2999 = !DILocation(line: 1528, column: 38, scope: !2996)
!3000 = !DILocation(line: 0, scope: !2176, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1529, column: 11, scope: !2996)
!3002 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3001)
!3003 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3001)
!3004 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3001)
!3005 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3001)
!3006 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3001)
!3007 = !DILocation(line: 1527, column: 61, scope: !2996)
!3008 = !DILocation(line: 1527, column: 9, scope: !2996)
!3009 = !DILocation(line: 1530, column: 18, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1530, column: 11)
!3011 = !DILocation(line: 1530, column: 24, scope: !3010)
!3012 = !DILocation(line: 1530, column: 11, scope: !2930)
!3013 = !DILocation(line: 1532, column: 38, scope: !3010)
!3014 = !DILocation(line: 0, scope: !2176, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1533, column: 11, scope: !3010)
!3016 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3015)
!3017 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3015)
!3018 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3015)
!3019 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3015)
!3020 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3015)
!3021 = !DILocation(line: 1531, column: 63, scope: !3010)
!3022 = !DILocation(line: 1531, column: 9, scope: !3010)
!3023 = !DILocation(line: 1537, column: 36, scope: !2930)
!3024 = !DILocation(line: 1537, column: 62, scope: !2930)
!3025 = !DILocation(line: 0, scope: !2176, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1538, column: 9, scope: !2930)
!3027 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3026)
!3028 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3026)
!3029 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3026)
!3030 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3026)
!3031 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3026)
!3032 = !DILocation(line: 1537, column: 33, scope: !2930)
!3033 = !DILocation(line: 1539, column: 64, scope: !2930)
!3034 = !DILocation(line: 0, scope: !2176, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1540, column: 9, scope: !2930)
!3036 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3035)
!3037 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3035)
!3038 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3035)
!3039 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3035)
!3040 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3035)
!3041 = !DILocation(line: 1539, column: 35, scope: !2930)
!3042 = !DILocation(line: 1541, column: 63, scope: !2930)
!3043 = !DILocation(line: 0, scope: !2176, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1542, column: 9, scope: !2930)
!3045 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3044)
!3046 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3044)
!3047 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3044)
!3048 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3044)
!3049 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3044)
!3050 = !DILocation(line: 1541, column: 34, scope: !2930)
!3051 = !DILocation(line: 1543, column: 18, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1543, column: 11)
!3053 = !DILocation(line: 1543, column: 29, scope: !3052)
!3054 = !DILocation(line: 1543, column: 11, scope: !2930)
!3055 = !DILocation(line: 1544, column: 66, scope: !3052)
!3056 = !DILocation(line: 0, scope: !2176, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 1545, column: 11, scope: !3052)
!3058 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3057)
!3059 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3057)
!3060 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3057)
!3061 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3057)
!3062 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3057)
!3063 = !DILocation(line: 1544, column: 37, scope: !3052)
!3064 = !DILocation(line: 1544, column: 9, scope: !3052)
!3065 = !DILocation(line: 1546, column: 18, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1546, column: 11)
!3067 = !DILocation(line: 1546, column: 24, scope: !3066)
!3068 = !DILocation(line: 1546, column: 11, scope: !2930)
!3069 = !DILocation(line: 1547, column: 68, scope: !3066)
!3070 = !DILocation(line: 0, scope: !2176, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 1548, column: 11, scope: !3066)
!3072 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3071)
!3073 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3071)
!3074 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3071)
!3075 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3071)
!3076 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3071)
!3077 = !DILocation(line: 1547, column: 39, scope: !3066)
!3078 = !DILocation(line: 1547, column: 9, scope: !3066)
!3079 = !DILocation(line: 1549, column: 36, scope: !2930)
!3080 = !DILocation(line: 1549, column: 62, scope: !2930)
!3081 = !DILocation(line: 0, scope: !2176, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1550, column: 9, scope: !2930)
!3083 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3082)
!3084 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3082)
!3085 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3082)
!3086 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3082)
!3087 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3082)
!3088 = !DILocation(line: 1549, column: 33, scope: !2930)
!3089 = !DILocation(line: 1551, column: 64, scope: !2930)
!3090 = !DILocation(line: 0, scope: !2176, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1552, column: 9, scope: !2930)
!3092 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3091)
!3093 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3091)
!3094 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3091)
!3095 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3091)
!3096 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3091)
!3097 = !DILocation(line: 1551, column: 35, scope: !2930)
!3098 = !DILocation(line: 1553, column: 63, scope: !2930)
!3099 = !DILocation(line: 0, scope: !2176, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1554, column: 9, scope: !2930)
!3101 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3100)
!3102 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3100)
!3103 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3100)
!3104 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3100)
!3105 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3100)
!3106 = !DILocation(line: 1553, column: 34, scope: !2930)
!3107 = !DILocation(line: 1555, column: 18, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1555, column: 11)
!3109 = !DILocation(line: 1555, column: 29, scope: !3108)
!3110 = !DILocation(line: 1555, column: 11, scope: !2930)
!3111 = !DILocation(line: 1556, column: 66, scope: !3108)
!3112 = !DILocation(line: 0, scope: !2176, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 1557, column: 11, scope: !3108)
!3114 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3113)
!3115 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3113)
!3116 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3113)
!3117 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3113)
!3118 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3113)
!3119 = !DILocation(line: 1556, column: 37, scope: !3108)
!3120 = !DILocation(line: 1556, column: 9, scope: !3108)
!3121 = !DILocation(line: 1558, column: 18, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1558, column: 11)
!3123 = !DILocation(line: 1558, column: 24, scope: !3122)
!3124 = !DILocation(line: 1558, column: 11, scope: !2930)
!3125 = !DILocation(line: 1559, column: 68, scope: !3122)
!3126 = !DILocation(line: 0, scope: !2176, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 1560, column: 11, scope: !3122)
!3128 = !DILocation(line: 630, column: 6, scope: !2181, inlinedAt: !3127)
!3129 = !DILocation(line: 630, column: 14, scope: !2181, inlinedAt: !3127)
!3130 = !DILocation(line: 630, column: 6, scope: !2176, inlinedAt: !3127)
!3131 = !DILocation(line: 632, column: 9, scope: !2176, inlinedAt: !3127)
!3132 = !DILocation(line: 632, column: 2, scope: !2176, inlinedAt: !3127)
!3133 = !DILocation(line: 1559, column: 39, scope: !3122)
!3134 = !DILocation(line: 1559, column: 9, scope: !3122)
!3135 = !DILocation(line: 1490, column: 44, scope: !2931)
!3136 = !DILocation(line: 1490, column: 17, scope: !2931)
!3137 = distinct !{!3137, !2927, !3138, !1134, !1135}
!3138 = !DILocation(line: 1561, column: 5, scope: !2928)
!3139 = !DILocation(line: 1566, column: 44, scope: !918)
!3140 = !DILocation(line: 1566, column: 69, scope: !918)
!3141 = !DILocation(line: 1567, column: 8, scope: !918)
!3142 = !DILocation(line: 1567, column: 30, scope: !918)
!3143 = !DILocation(line: 1566, column: 73, scope: !918)
!3144 = !DILocation(line: 1567, column: 61, scope: !918)
!3145 = !DILocation(line: 1565, column: 5, scope: !918)
!3146 = !DILocation(line: 1565, column: 56, scope: !918)
!3147 = !DILocation(line: 1570, column: 69, scope: !918)
!3148 = !DILocation(line: 1571, column: 30, scope: !918)
!3149 = !DILocation(line: 1570, column: 75, scope: !918)
!3150 = !DILocation(line: 1571, column: 65, scope: !918)
!3151 = !DILocation(line: 1569, column: 5, scope: !918)
!3152 = !DILocation(line: 1569, column: 58, scope: !918)
!3153 = !DILocation(line: 1574, column: 69, scope: !918)
!3154 = !DILocation(line: 1575, column: 30, scope: !918)
!3155 = !DILocation(line: 1574, column: 74, scope: !918)
!3156 = !DILocation(line: 1575, column: 63, scope: !918)
!3157 = !DILocation(line: 1573, column: 5, scope: !918)
!3158 = !DILocation(line: 1573, column: 57, scope: !918)
!3159 = !DILocation(line: 1577, column: 16, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1577, column: 9)
!3161 = !DILocation(line: 1577, column: 22, scope: !3160)
!3162 = !DILocation(line: 1577, column: 9, scope: !918)
!3163 = !DILocation(line: 1579, column: 71, scope: !3160)
!3164 = !DILocation(line: 1580, column: 32, scope: !3160)
!3165 = !DILocation(line: 1579, column: 79, scope: !3160)
!3166 = !DILocation(line: 1580, column: 71, scope: !3160)
!3167 = !DILocation(line: 1578, column: 7, scope: !3160)
!3168 = !DILocation(line: 1578, column: 62, scope: !3160)
!3169 = !DILocation(line: 1582, column: 16, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1582, column: 9)
!3171 = !DILocation(line: 1582, column: 27, scope: !3170)
!3172 = !DILocation(line: 1582, column: 9, scope: !918)
!3173 = !DILocation(line: 1584, column: 71, scope: !3170)
!3174 = !DILocation(line: 1585, column: 32, scope: !3170)
!3175 = !DILocation(line: 1584, column: 77, scope: !3170)
!3176 = !DILocation(line: 1585, column: 67, scope: !3170)
!3177 = !DILocation(line: 1583, column: 7, scope: !3170)
!3178 = !DILocation(line: 1583, column: 60, scope: !3170)
!3179 = !DILocation(line: 1591, column: 8, scope: !918)
!3180 = !DILocation(line: 1591, column: 32, scope: !918)
!3181 = !DILocation(line: 1591, column: 36, scope: !918)
!3182 = !DILocation(line: 1591, column: 61, scope: !918)
!3183 = !DILocation(line: 1591, column: 35, scope: !918)
!3184 = !DILocation(line: 1592, column: 8, scope: !918)
!3185 = !DILocation(line: 1592, column: 31, scope: !918)
!3186 = !DILocation(line: 1592, column: 37, scope: !918)
!3187 = !DILocation(line: 1592, column: 60, scope: !918)
!3188 = !DILocation(line: 1592, column: 35, scope: !918)
!3189 = !DILocation(line: 1591, column: 65, scope: !918)
!3190 = !DILocation(line: 1590, column: 5, scope: !918)
!3191 = !DILocation(line: 1590, column: 61, scope: !918)
!3192 = !DILocation(line: 1595, column: 32, scope: !918)
!3193 = !DILocation(line: 1595, column: 63, scope: !918)
!3194 = !DILocation(line: 1595, column: 37, scope: !918)
!3195 = !DILocation(line: 1596, column: 31, scope: !918)
!3196 = !DILocation(line: 1596, column: 62, scope: !918)
!3197 = !DILocation(line: 1596, column: 37, scope: !918)
!3198 = !DILocation(line: 1596, column: 8, scope: !918)
!3199 = !DILocation(line: 1595, column: 69, scope: !918)
!3200 = !DILocation(line: 1594, column: 5, scope: !918)
!3201 = !DILocation(line: 1594, column: 63, scope: !918)
!3202 = !DILocation(line: 1599, column: 32, scope: !918)
!3203 = !DILocation(line: 1599, column: 62, scope: !918)
!3204 = !DILocation(line: 1599, column: 36, scope: !918)
!3205 = !DILocation(line: 1600, column: 31, scope: !918)
!3206 = !DILocation(line: 1600, column: 61, scope: !918)
!3207 = !DILocation(line: 1600, column: 36, scope: !918)
!3208 = !DILocation(line: 1600, column: 8, scope: !918)
!3209 = !DILocation(line: 1599, column: 67, scope: !918)
!3210 = !DILocation(line: 1598, column: 5, scope: !918)
!3211 = !DILocation(line: 1598, column: 62, scope: !918)
!3212 = !DILocation(line: 1602, column: 9, scope: !918)
!3213 = !DILocation(line: 1604, column: 34, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1602, column: 9)
!3215 = !DILocation(line: 1604, column: 65, scope: !3214)
!3216 = !DILocation(line: 1604, column: 39, scope: !3214)
!3217 = !DILocation(line: 1605, column: 33, scope: !3214)
!3218 = !DILocation(line: 1605, column: 64, scope: !3214)
!3219 = !DILocation(line: 1605, column: 39, scope: !3214)
!3220 = !DILocation(line: 1605, column: 10, scope: !3214)
!3221 = !DILocation(line: 1604, column: 71, scope: !3214)
!3222 = !DILocation(line: 1603, column: 7, scope: !3214)
!3223 = !DILocation(line: 1603, column: 65, scope: !3214)
!3224 = !DILocation(line: 1607, column: 9, scope: !918)
!3225 = !DILocation(line: 1609, column: 34, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1607, column: 9)
!3227 = !DILocation(line: 1609, column: 67, scope: !3226)
!3228 = !DILocation(line: 1609, column: 41, scope: !3226)
!3229 = !DILocation(line: 1610, column: 33, scope: !3226)
!3230 = !DILocation(line: 1610, column: 66, scope: !3226)
!3231 = !DILocation(line: 1610, column: 41, scope: !3226)
!3232 = !DILocation(line: 1610, column: 10, scope: !3226)
!3233 = !DILocation(line: 1609, column: 75, scope: !3226)
!3234 = !DILocation(line: 1608, column: 7, scope: !3226)
!3235 = !DILocation(line: 1608, column: 67, scope: !3226)
!3236 = !DILocation(line: 1613, column: 32, scope: !918)
!3237 = !DILocation(line: 1613, column: 57, scope: !918)
!3238 = !DILocation(line: 1614, column: 31, scope: !918)
!3239 = !DILocation(line: 1613, column: 60, scope: !918)
!3240 = !DILocation(line: 1613, column: 30, scope: !918)
!3241 = !DILocation(line: 1613, column: 22, scope: !918)
!3242 = !DILocation(line: 1613, column: 21, scope: !918)
!3243 = !DILocation(line: 1613, column: 13, scope: !918)
!3244 = !DILocation(line: 1613, column: 8, scope: !918)
!3245 = !DILocation(line: 1612, column: 5, scope: !918)
!3246 = !DILocation(line: 1612, column: 61, scope: !918)
!3247 = !DILocation(line: 1616, column: 57, scope: !918)
!3248 = !DILocation(line: 1617, column: 31, scope: !918)
!3249 = !DILocation(line: 1616, column: 62, scope: !918)
!3250 = !DILocation(line: 1616, column: 30, scope: !918)
!3251 = !DILocation(line: 1616, column: 22, scope: !918)
!3252 = !DILocation(line: 1616, column: 21, scope: !918)
!3253 = !DILocation(line: 1616, column: 13, scope: !918)
!3254 = !DILocation(line: 1616, column: 8, scope: !918)
!3255 = !DILocation(line: 1615, column: 5, scope: !918)
!3256 = !DILocation(line: 1615, column: 63, scope: !918)
!3257 = !DILocation(line: 1619, column: 57, scope: !918)
!3258 = !DILocation(line: 1620, column: 31, scope: !918)
!3259 = !DILocation(line: 1619, column: 61, scope: !918)
!3260 = !DILocation(line: 1619, column: 30, scope: !918)
!3261 = !DILocation(line: 1619, column: 22, scope: !918)
!3262 = !DILocation(line: 1619, column: 21, scope: !918)
!3263 = !DILocation(line: 1619, column: 13, scope: !918)
!3264 = !DILocation(line: 1619, column: 8, scope: !918)
!3265 = !DILocation(line: 1618, column: 5, scope: !918)
!3266 = !DILocation(line: 1618, column: 62, scope: !918)
!3267 = !DILocation(line: 1621, column: 16, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1621, column: 9)
!3269 = !DILocation(line: 1621, column: 27, scope: !3268)
!3270 = !DILocation(line: 1621, column: 9, scope: !918)
!3271 = !DILocation(line: 1623, column: 59, scope: !3268)
!3272 = !DILocation(line: 1624, column: 33, scope: !3268)
!3273 = !DILocation(line: 1623, column: 64, scope: !3268)
!3274 = !DILocation(line: 1623, column: 32, scope: !3268)
!3275 = !DILocation(line: 1623, column: 24, scope: !3268)
!3276 = !DILocation(line: 1623, column: 23, scope: !3268)
!3277 = !DILocation(line: 1623, column: 15, scope: !3268)
!3278 = !DILocation(line: 1623, column: 10, scope: !3268)
!3279 = !DILocation(line: 1622, column: 7, scope: !3268)
!3280 = !DILocation(line: 1622, column: 65, scope: !3268)
!3281 = !DILocation(line: 1625, column: 16, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1625, column: 9)
!3283 = !DILocation(line: 1625, column: 22, scope: !3282)
!3284 = !DILocation(line: 1625, column: 9, scope: !918)
!3285 = !DILocation(line: 1627, column: 59, scope: !3282)
!3286 = !DILocation(line: 1628, column: 33, scope: !3282)
!3287 = !DILocation(line: 1627, column: 66, scope: !3282)
!3288 = !DILocation(line: 1627, column: 32, scope: !3282)
!3289 = !DILocation(line: 1627, column: 24, scope: !3282)
!3290 = !DILocation(line: 1627, column: 23, scope: !3282)
!3291 = !DILocation(line: 1627, column: 15, scope: !3282)
!3292 = !DILocation(line: 1627, column: 10, scope: !3282)
!3293 = !DILocation(line: 1626, column: 7, scope: !3282)
!3294 = !DILocation(line: 1626, column: 67, scope: !3282)
!3295 = !DILocation(line: 1485, column: 21, scope: !919)
!3296 = !DILocation(line: 1485, column: 15, scope: !919)
!3297 = distinct !{!3297, !2925, !3298, !1134, !1135}
!3298 = !DILocation(line: 1629, column: 3, scope: !920)
!3299 = !DILocation(line: 0, scope: !922)
!3300 = !DILocation(line: 1642, column: 5, scope: !928)
!3301 = !DILocation(line: 1647, column: 7, scope: !926)
!3302 = !DILocation(line: 1648, column: 9, scope: !926)
!3303 = !DILocation(line: 1650, column: 14, scope: !926)
!3304 = !DILocation(line: 0, scope: !926)
!3305 = !DILocation(line: 1651, column: 7, scope: !933)
!3306 = !DILocation(line: 1701, column: 30, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1699, column: 11)
!3308 = !DILocation(line: 1700, column: 51, scope: !3307)
!3309 = !DILocation(line: 1700, column: 9, scope: !3307)
!3310 = !DILocation(line: 1702, column: 11, scope: !926)
!3311 = !DILocation(line: 1704, column: 30, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1702, column: 11)
!3313 = !DILocation(line: 1703, column: 53, scope: !3312)
!3314 = !DILocation(line: 1703, column: 9, scope: !3312)
!3315 = !DILocation(line: 1705, column: 5, scope: !927)
!3316 = !DILocation(line: 1642, column: 44, scope: !927)
!3317 = !DILocation(line: 1642, column: 17, scope: !927)
!3318 = distinct !{!3318, !3300, !3319, !1134, !1135}
!3319 = !DILocation(line: 1705, column: 5, scope: !928)
!3320 = !DILocation(line: 0, scope: !931)
!3321 = !DILocation(line: 1656, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1656, column: 9)
!3323 = !DILocation(line: 1661, column: 18, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1661, column: 15)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1657, column: 9)
!3326 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 1656, column: 9)
!3327 = !DILocation(line: 1661, column: 22, scope: !3324)
!3328 = !DILocation(line: 1661, column: 28, scope: !3324)
!3329 = !DILocation(line: 1663, column: 39, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 1662, column: 13)
!3331 = !DILocation(line: 1663, column: 71, scope: !3330)
!3332 = !DILocation(line: 1663, column: 37, scope: !3330)
!3333 = !DILocation(line: 1664, column: 73, scope: !3330)
!3334 = !DILocation(line: 1664, column: 39, scope: !3330)
!3335 = !DILocation(line: 1665, column: 72, scope: !3330)
!3336 = !DILocation(line: 1665, column: 38, scope: !3330)
!3337 = !DILocation(line: 1666, column: 19, scope: !3330)
!3338 = !DILocation(line: 1667, column: 75, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1666, column: 19)
!3340 = !DILocation(line: 1667, column: 41, scope: !3339)
!3341 = !DILocation(line: 1667, column: 17, scope: !3339)
!3342 = !DILocation(line: 1668, column: 19, scope: !3330)
!3343 = !DILocation(line: 1670, column: 51, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1668, column: 19)
!3345 = !DILocation(line: 1669, column: 43, scope: !3344)
!3346 = !DILocation(line: 1669, column: 17, scope: !3344)
!3347 = !DILocation(line: 1675, column: 37, scope: !3325)
!3348 = !DILocation(line: 1675, column: 69, scope: !3325)
!3349 = !DILocation(line: 1676, column: 13, scope: !3325)
!3350 = !DILocation(line: 1676, column: 45, scope: !3325)
!3351 = !DILocation(line: 1675, column: 72, scope: !3325)
!3352 = !DILocation(line: 1676, column: 75, scope: !3325)
!3353 = !DILocation(line: 1676, column: 48, scope: !3325)
!3354 = !DILocation(line: 1677, column: 13, scope: !3325)
!3355 = !DILocation(line: 1677, column: 39, scope: !3325)
!3356 = !DILocation(line: 1676, column: 78, scope: !3325)
!3357 = !DILocation(line: 1675, column: 35, scope: !3325)
!3358 = !DILocation(line: 1678, column: 71, scope: !3325)
!3359 = !DILocation(line: 1679, column: 45, scope: !3325)
!3360 = !DILocation(line: 1678, column: 76, scope: !3325)
!3361 = !DILocation(line: 1680, column: 39, scope: !3325)
!3362 = !DILocation(line: 1679, column: 50, scope: !3325)
!3363 = !DILocation(line: 1680, column: 71, scope: !3325)
!3364 = !DILocation(line: 1680, column: 44, scope: !3325)
!3365 = !DILocation(line: 1678, column: 37, scope: !3325)
!3366 = !DILocation(line: 1681, column: 70, scope: !3325)
!3367 = !DILocation(line: 1682, column: 45, scope: !3325)
!3368 = !DILocation(line: 1681, column: 74, scope: !3325)
!3369 = !DILocation(line: 1682, column: 76, scope: !3325)
!3370 = !DILocation(line: 1682, column: 49, scope: !3325)
!3371 = !DILocation(line: 1683, column: 39, scope: !3325)
!3372 = !DILocation(line: 1682, column: 80, scope: !3325)
!3373 = !DILocation(line: 1681, column: 36, scope: !3325)
!3374 = !DILocation(line: 1684, column: 15, scope: !3325)
!3375 = !DILocation(line: 1685, column: 73, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1684, column: 15)
!3377 = !DILocation(line: 1686, column: 47, scope: !3376)
!3378 = !DILocation(line: 1685, column: 78, scope: !3376)
!3379 = !DILocation(line: 1687, column: 41, scope: !3376)
!3380 = !DILocation(line: 1686, column: 52, scope: !3376)
!3381 = !DILocation(line: 1687, column: 73, scope: !3376)
!3382 = !DILocation(line: 1687, column: 46, scope: !3376)
!3383 = !DILocation(line: 1685, column: 39, scope: !3376)
!3384 = !DILocation(line: 1685, column: 13, scope: !3376)
!3385 = !DILocation(line: 1688, column: 15, scope: !3325)
!3386 = !DILocation(line: 1690, column: 47, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1688, column: 15)
!3388 = !DILocation(line: 1691, column: 47, scope: !3387)
!3389 = !DILocation(line: 1690, column: 54, scope: !3387)
!3390 = !DILocation(line: 1692, column: 41, scope: !3387)
!3391 = !DILocation(line: 1691, column: 54, scope: !3387)
!3392 = !DILocation(line: 1693, column: 41, scope: !3387)
!3393 = !DILocation(line: 1692, column: 48, scope: !3387)
!3394 = !DILocation(line: 1689, column: 41, scope: !3387)
!3395 = !DILocation(line: 1689, column: 13, scope: !3387)
!3396 = !DILocation(line: 1656, column: 48, scope: !3326)
!3397 = !DILocation(line: 1656, column: 21, scope: !3326)
!3398 = distinct !{!3398, !3321, !3399, !1134, !1135}
!3399 = !DILocation(line: 1694, column: 9, scope: !3322)
!3400 = !DILocation(line: 1651, column: 46, scope: !932)
!3401 = !DILocation(line: 1651, column: 19, scope: !932)
!3402 = distinct !{!3402, !3305, !3403, !1134, !1135}
!3403 = !DILocation(line: 1695, column: 7, scope: !933)
!3404 = !DILocation(line: 1696, column: 50, scope: !926)
!3405 = !DILocation(line: 1696, column: 49, scope: !926)
!3406 = !DILocation(line: 1696, column: 72, scope: !926)
!3407 = !DILocation(line: 1696, column: 47, scope: !926)
!3408 = !DILocation(line: 1697, column: 74, scope: !926)
!3409 = !DILocation(line: 1697, column: 49, scope: !926)
!3410 = !DILocation(line: 1698, column: 73, scope: !926)
!3411 = !DILocation(line: 1698, column: 48, scope: !926)
!3412 = !DILocation(line: 1699, column: 11, scope: !926)
!3413 = !DILocation(line: 1711, column: 7, scope: !922)
!3414 = !DILocation(line: 1710, column: 5, scope: !922)
!3415 = !DILocation(line: 1710, column: 68, scope: !922)
!3416 = !DILocation(line: 1713, column: 7, scope: !922)
!3417 = !DILocation(line: 1712, column: 5, scope: !922)
!3418 = !DILocation(line: 1712, column: 70, scope: !922)
!3419 = !DILocation(line: 1715, column: 7, scope: !922)
!3420 = !DILocation(line: 1714, column: 5, scope: !922)
!3421 = !DILocation(line: 1714, column: 69, scope: !922)
!3422 = !DILocation(line: 1716, column: 16, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1716, column: 9)
!3424 = !DILocation(line: 1716, column: 27, scope: !3423)
!3425 = !DILocation(line: 1716, column: 9, scope: !922)
!3426 = !DILocation(line: 1718, column: 9, scope: !3423)
!3427 = !DILocation(line: 1717, column: 7, scope: !3423)
!3428 = !DILocation(line: 1717, column: 72, scope: !3423)
!3429 = !DILocation(line: 1719, column: 16, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1719, column: 9)
!3431 = !DILocation(line: 1719, column: 22, scope: !3430)
!3432 = !DILocation(line: 1719, column: 9, scope: !922)
!3433 = !DILocation(line: 1721, column: 9, scope: !3430)
!3434 = !DILocation(line: 1720, column: 7, scope: !3430)
!3435 = !DILocation(line: 1720, column: 74, scope: !3430)
!3436 = !DILocation(line: 1637, column: 21, scope: !923)
!3437 = !DILocation(line: 1637, column: 15, scope: !923)
!3438 = !DILocation(line: 1637, column: 3, scope: !924)
!3439 = distinct !{!3439, !3438, !3440, !1134, !1135}
!3440 = !DILocation(line: 1722, column: 3, scope: !924)
!3441 = !DILocation(line: 1726, column: 29, scope: !831)
!3442 = !DILocation(line: 1727, column: 3, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1727, column: 3)
!3444 = !DILocation(line: 1728, column: 55, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 1727, column: 3)
!3446 = !DILocation(line: 1728, column: 32, scope: !3445)
!3447 = !DILocation(line: 1728, column: 9, scope: !3445)
!3448 = !DILocation(line: 1727, column: 42, scope: !3445)
!3449 = !DILocation(line: 1727, column: 15, scope: !3445)
!3450 = distinct !{!3450, !3442, !3451, !1134, !1135}
!3451 = !DILocation(line: 1728, column: 59, scope: !3443)
!3452 = !DILocation(line: 1729, column: 28, scope: !831)
!3453 = !DILocation(line: 1730, column: 35, scope: !831)
!3454 = !DILocation(line: 1731, column: 36, scope: !831)
!3455 = !DILocation(line: 1732, column: 35, scope: !831)
!3456 = !DILocation(line: 1733, column: 3, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1733, column: 3)
!3458 = !DILocation(line: 1735, column: 30, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1733, column: 3)
!3460 = !DILocation(line: 1735, column: 7, scope: !3459)
!3461 = !DILocation(line: 1734, column: 20, scope: !3459)
!3462 = !DILocation(line: 1733, column: 42, scope: !3459)
!3463 = !DILocation(line: 1733, column: 15, scope: !3459)
!3464 = distinct !{!3464, !3456, !3465, !1134, !1135}
!3465 = !DILocation(line: 1735, column: 45, scope: !3457)
!3466 = !DILocation(line: 1736, column: 39, scope: !831)
!3467 = !DILocation(line: 1737, column: 3, scope: !831)
!3468 = !DILocation(line: 1738, column: 1, scope: !831)
!3469 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1535, file: !1535, line: 42, type: !3470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!156, !834, !834}
!3472 = !DISubprogram(name: "GetExceptionInfo", scope: !420, file: !420, line: 166, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !596}
!3475 = !DISubprogram(name: "GetExceptionMessage", scope: !420, file: !420, line: 137, type: !3476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!165, !3478}
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!3479 = !DISubprogram(name: "DestroyString", scope: !3480, file: !3480, line: 46, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3480 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!165, !165}
!3483 = !DISubprogram(name: "CatchException", scope: !420, file: !420, line: 164, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3484 = !DISubprogram(name: "DestroyExceptionInfo", scope: !420, file: !420, line: 148, type: !3485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!596, !596}
!3487 = !DISubprogram(name: "MagickCoreTerminus", scope: !3488, file: !3488, line: 147, type: !3489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3488 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null}
!3491 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1535, file: !1535, line: 51, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!156, !156}
!3494 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !747, file: !747, line: 66, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!825, !1532}
!3497 = distinct !DISubprogram(name: "HoughLineImage", scope: !3, file: !3, line: 1789, type: !3498, scopeLine: 1791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!6, !593, !834, !834, !834, !596}
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3639, !3640, !3641, !3642, !3643, !3650, !3651, !3652, !3653, !3654, !3658, !3659, !3665, !3669, !3670, !3673, !3677, !3681, !3684, !3692, !3693, !3697}
!3501 = !DILocalVariable(name: "image", arg: 1, scope: !3497, file: !3, line: 1789, type: !593)
!3502 = !DILocalVariable(name: "width", arg: 2, scope: !3497, file: !3, line: 1789, type: !834)
!3503 = !DILocalVariable(name: "height", arg: 3, scope: !3497, file: !3, line: 1790, type: !834)
!3504 = !DILocalVariable(name: "threshold", arg: 4, scope: !3497, file: !3, line: 1790, type: !834)
!3505 = !DILocalVariable(name: "exception", arg: 5, scope: !3497, file: !3, line: 1790, type: !596)
!3506 = !DILocalVariable(name: "image_view", scope: !3497, file: !3, line: 1795, type: !840)
!3507 = !DILocalVariable(name: "message", scope: !3497, file: !3, line: 1798, type: !410)
!3508 = !DILocalVariable(name: "path", scope: !3497, file: !3, line: 1799, type: !410)
!3509 = !DILocalVariable(name: "artifact", scope: !3497, file: !3, line: 1802, type: !390)
!3510 = !DILocalVariable(name: "hough_height", scope: !3497, file: !3, line: 1805, type: !130)
!3511 = !DILocalVariable(name: "lines_image", scope: !3497, file: !3, line: 1808, type: !6)
!3512 = !DILocalVariable(name: "image_info", scope: !3497, file: !3, line: 1811, type: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !8, line: 223, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !10, line: 356, size: 134336, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3568, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3636, !3637, !3638}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !3515, file: !10, line: 359, baseType: !60, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !3515, file: !10, line: 362, baseType: !91, size: 32, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !3515, file: !10, line: 365, baseType: !104, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !3515, file: !10, line: 366, baseType: !104, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !3515, file: !10, line: 367, baseType: !104, size: 32, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !3515, file: !10, line: 368, baseType: !104, size: 32, offset: 160)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3515, file: !10, line: 371, baseType: !165, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !3515, file: !10, line: 372, baseType: !165, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3515, file: !10, line: 373, baseType: !165, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !3515, file: !10, line: 374, baseType: !165, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !3515, file: !10, line: 377, baseType: !87, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !3515, file: !10, line: 378, baseType: !87, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3515, file: !10, line: 379, baseType: !87, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !3515, file: !10, line: 382, baseType: !229, size: 32, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !3515, file: !10, line: 385, baseType: !241, size: 32, offset: 672)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3515, file: !10, line: 388, baseType: !158, size: 32, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !3515, file: !10, line: 391, baseType: !87, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !3515, file: !10, line: 394, baseType: !165, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !3515, file: !10, line: 395, baseType: !165, size: 64, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !3515, file: !10, line: 396, baseType: !165, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !3515, file: !10, line: 397, baseType: !165, size: 64, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !3515, file: !10, line: 398, baseType: !165, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !3515, file: !10, line: 401, baseType: !130, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3515, file: !10, line: 402, baseType: !130, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !3515, file: !10, line: 405, baseType: !116, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !3515, file: !10, line: 406, baseType: !116, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !3515, file: !10, line: 407, baseType: !116, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !3515, file: !10, line: 410, baseType: !104, size: 32, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !3515, file: !10, line: 411, baseType: !104, size: 32, offset: 1504)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !3515, file: !10, line: 414, baseType: !87, size: 64, offset: 1536)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !3515, file: !10, line: 417, baseType: !21, size: 32, offset: 1600)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3515, file: !10, line: 420, baseType: !555, size: 32, offset: 1632)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !3515, file: !10, line: 423, baseType: !3550, size: 32, offset: 1664)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !714, line: 59, baseType: !713)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3515, file: !10, line: 426, baseType: !170, size: 64, offset: 1728)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !3515, file: !10, line: 429, baseType: !104, size: 32, offset: 1792)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !3515, file: !10, line: 430, baseType: !104, size: 32, offset: 1824)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !3515, file: !10, line: 433, baseType: !165, size: 64, offset: 1856)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !3515, file: !10, line: 434, baseType: !165, size: 64, offset: 1920)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !3515, file: !10, line: 437, baseType: !1507, size: 32, offset: 1984)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3515, file: !10, line: 440, baseType: !6, size: 64, offset: 2048)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3515, file: !10, line: 443, baseType: !156, size: 64, offset: 2112)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !3515, file: !10, line: 446, baseType: !385, size: 64, offset: 2176)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3515, file: !10, line: 449, baseType: !156, size: 64, offset: 2240)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3515, file: !10, line: 450, baseType: !156, size: 64, offset: 2304)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3515, file: !10, line: 453, baseType: !3563, size: 64, offset: 2368)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !3564, line: 26, baseType: !3565)
!3564 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!87, !593, !1546, !834}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3515, file: !10, line: 456, baseType: !3569, size: 64, offset: 2432)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3571, line: 7, baseType: !3572)
!3571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3573, line: 49, size: 1728, elements: !3574)
!3573 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3590, !3592, !3593, !3594, !3596, !3597, !3599, !3603, !3606, !3608, !3611, !3614, !3615, !3616, !3617, !3618}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3572, file: !3573, line: 51, baseType: !497, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3572, file: !3573, line: 54, baseType: !165, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3572, file: !3573, line: 55, baseType: !165, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3572, file: !3573, line: 56, baseType: !165, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3572, file: !3573, line: 57, baseType: !165, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3572, file: !3573, line: 58, baseType: !165, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3572, file: !3573, line: 59, baseType: !165, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3572, file: !3573, line: 60, baseType: !165, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3572, file: !3573, line: 61, baseType: !165, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3572, file: !3573, line: 64, baseType: !165, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3572, file: !3573, line: 65, baseType: !165, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3572, file: !3573, line: 66, baseType: !165, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3572, file: !3573, line: 68, baseType: !3588, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3573, line: 36, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3572, file: !3573, line: 70, baseType: !3591, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3572, file: !3573, line: 72, baseType: !497, size: 32, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3572, file: !3573, line: 73, baseType: !497, size: 32, offset: 928)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3572, file: !3573, line: 74, baseType: !3595, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !173, line: 152, baseType: !174)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3572, file: !3573, line: 77, baseType: !122, size: 16, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3572, file: !3573, line: 78, baseType: !3598, size: 8, offset: 1040)
!3598 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3572, file: !3573, line: 79, baseType: !3600, size: 8, offset: 1048)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 8, elements: !3601)
!3601 = !{!3602}
!3602 = !DISubrange(count: 1)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3572, file: !3573, line: 81, baseType: !3604, size: 64, offset: 1088)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3573, line: 43, baseType: null)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3572, file: !3573, line: 89, baseType: !3607, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !173, line: 153, baseType: !174)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3572, file: !3573, line: 91, baseType: !3609, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3573, line: 37, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3572, file: !3573, line: 92, baseType: !3612, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3573, line: 38, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3572, file: !3573, line: 93, baseType: !3591, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3572, file: !3573, line: 94, baseType: !156, size: 64, offset: 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3572, file: !3573, line: 95, baseType: !87, size: 64, offset: 1472)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3572, file: !3573, line: 96, baseType: !497, size: 32, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3572, file: !3573, line: 98, baseType: !3619, size: 160, offset: 1568)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 160, elements: !3620)
!3620 = !{!3621}
!3621 = !DISubrange(count: 20)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !3515, file: !10, line: 459, baseType: !156, size: 64, offset: 2496)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3515, file: !10, line: 462, baseType: !87, size: 64, offset: 2560)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !3515, file: !10, line: 465, baseType: !410, size: 32768, offset: 2624)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !3515, file: !10, line: 466, baseType: !410, size: 32768, offset: 35392)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !3515, file: !10, line: 467, baseType: !410, size: 32768, offset: 68160)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !3515, file: !10, line: 468, baseType: !410, size: 32768, offset: 100928)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !3515, file: !10, line: 471, baseType: !104, size: 32, offset: 133696)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !3515, file: !10, line: 474, baseType: !165, size: 64, offset: 133760)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !3515, file: !10, line: 477, baseType: !87, size: 64, offset: 133824)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !3515, file: !10, line: 478, baseType: !87, size: 64, offset: 133888)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !3515, file: !10, line: 481, baseType: !116, size: 64, offset: 133952)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !3515, file: !10, line: 484, baseType: !87, size: 64, offset: 134016)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !3515, file: !10, line: 487, baseType: !3635, size: 32, offset: 134080)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !747, line: 47, baseType: !746)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !3515, file: !10, line: 490, baseType: !116, size: 64, offset: 134112)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !3515, file: !10, line: 493, baseType: !156, size: 64, offset: 134208)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !3515, file: !10, line: 496, baseType: !104, size: 32, offset: 134272)
!3639 = !DILocalVariable(name: "file", scope: !3497, file: !3, line: 1814, type: !497)
!3640 = !DILocalVariable(name: "status", scope: !3497, file: !3, line: 1817, type: !104)
!3641 = !DILocalVariable(name: "progress", scope: !3497, file: !3, line: 1820, type: !393)
!3642 = !DILocalVariable(name: "accumulator", scope: !3497, file: !3, line: 1823, type: !788)
!3643 = !DILocalVariable(name: "center", scope: !3497, file: !3, line: 1826, type: !3644)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !3645, line: 142, baseType: !3646)
!3645 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !3645, line: 137, size: 128, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3646, file: !3645, line: 140, baseType: !130, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3646, file: !3645, line: 141, baseType: !130, size: 64, offset: 64)
!3650 = !DILocalVariable(name: "y", scope: !3497, file: !3, line: 1829, type: !170)
!3651 = !DILocalVariable(name: "accumulator_height", scope: !3497, file: !3, line: 1832, type: !87)
!3652 = !DILocalVariable(name: "accumulator_width", scope: !3497, file: !3, line: 1833, type: !87)
!3653 = !DILocalVariable(name: "line_count", scope: !3497, file: !3, line: 1834, type: !87)
!3654 = !DILocalVariable(name: "p", scope: !3655, file: !3, line: 1869, type: !876)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1867, column: 3)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1866, column: 3)
!3657 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1866, column: 3)
!3658 = !DILocalVariable(name: "x", scope: !3655, file: !3, line: 1872, type: !170)
!3659 = !DILocalVariable(name: "i", scope: !3660, file: !3, line: 1887, type: !170)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 1885, column: 9)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1884, column: 11)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 1883, column: 5)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1882, column: 5)
!3664 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1882, column: 5)
!3665 = !DILocalVariable(name: "count", scope: !3666, file: !3, line: 1892, type: !130)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 1890, column: 11)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1889, column: 11)
!3668 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 1889, column: 11)
!3669 = !DILocalVariable(name: "radius", scope: !3666, file: !3, line: 1893, type: !130)
!3670 = !DILocalVariable(name: "proceed", scope: !3671, file: !3, line: 1909, type: !104)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1907, column: 7)
!3672 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1906, column: 9)
!3673 = !DILocalVariable(name: "x", scope: !3674, file: !3, line: 1948, type: !170)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1946, column: 3)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1945, column: 3)
!3676 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1945, column: 3)
!3677 = !DILocalVariable(name: "count", scope: !3678, file: !3, line: 1953, type: !130)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 1951, column: 5)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 1950, column: 5)
!3680 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 1950, column: 5)
!3681 = !DILocalVariable(name: "maxima", scope: !3682, file: !3, line: 1959, type: !130)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1957, column: 9)
!3683 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1956, column: 11)
!3684 = !DILocalVariable(name: "line", scope: !3682, file: !3, line: 1962, type: !3685)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "SegmentInfo", file: !10, line: 110, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SegmentInfo", file: !10, line: 103, size: 256, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !3686, file: !10, line: 106, baseType: !130, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !3686, file: !10, line: 107, baseType: !130, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !3686, file: !10, line: 108, baseType: !130, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !3686, file: !10, line: 109, baseType: !130, size: 64, offset: 192)
!3692 = !DILocalVariable(name: "v", scope: !3682, file: !3, line: 1965, type: !170)
!3693 = !DILocalVariable(name: "u", scope: !3694, file: !3, line: 1974, type: !170)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 1972, column: 11)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 1971, column: 11)
!3696 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1971, column: 11)
!3697 = !DILocalVariable(name: "accumulator_image", scope: !3698, file: !3, line: 2053, type: !6)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 2051, column: 5)
!3699 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 2049, column: 7)
!3700 = !DILocation(line: 0, scope: !3497)
!3701 = !DILocation(line: 1797, column: 3, scope: !3497)
!3702 = !DILocation(line: 1798, column: 5, scope: !3497)
!3703 = !DILocation(line: 1799, column: 5, scope: !3497)
!3704 = !DILocation(line: 1807, column: 3, scope: !3497)
!3705 = !DILocation(line: 1841, column: 14, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1841, column: 7)
!3707 = !DILocation(line: 1841, column: 20, scope: !3706)
!3708 = !DILocation(line: 1841, column: 7, scope: !3497)
!3709 = !DILocation(line: 1842, column: 68, scope: !3706)
!3710 = !DILocation(line: 1842, column: 12, scope: !3706)
!3711 = !DILocation(line: 1842, column: 5, scope: !3706)
!3712 = !DILocation(line: 1846, column: 45, scope: !3497)
!3713 = !DILocation(line: 1846, column: 59, scope: !3497)
!3714 = !DILocation(line: 1846, column: 38, scope: !3497)
!3715 = !DILocation(line: 1846, column: 28, scope: !3497)
!3716 = !DILocation(line: 1846, column: 27, scope: !3497)
!3717 = !DILocation(line: 1847, column: 35, scope: !3497)
!3718 = !DILocation(line: 1848, column: 35, scope: !3497)
!3719 = !DILocation(line: 1848, column: 22, scope: !3497)
!3720 = !DILocation(line: 1849, column: 15, scope: !3497)
!3721 = !DILocation(line: 1851, column: 19, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1851, column: 7)
!3723 = !DILocation(line: 1851, column: 7, scope: !3497)
!3724 = !DILocation(line: 1852, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 1852, column: 5)
!3726 = !DILocation(line: 1853, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1853, column: 7)
!3728 = !DILocation(line: 1853, column: 31, scope: !3727)
!3729 = !DILocation(line: 1853, column: 7, scope: !3497)
!3730 = !DILocation(line: 1855, column: 19, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1854, column: 5)
!3732 = !DILocation(line: 1856, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 1856, column: 7)
!3734 = !DILocation(line: 1863, column: 28, scope: !3497)
!3735 = !DILocation(line: 1863, column: 12, scope: !3497)
!3736 = !DILocation(line: 1863, column: 35, scope: !3497)
!3737 = !DILocation(line: 1864, column: 28, scope: !3497)
!3738 = !DILocation(line: 1864, column: 12, scope: !3497)
!3739 = !DILocation(line: 1864, column: 32, scope: !3497)
!3740 = !DILocation(line: 1865, column: 14, scope: !3497)
!3741 = !DILocation(line: 1866, column: 34, scope: !3656)
!3742 = !DILocation(line: 1866, column: 15, scope: !3656)
!3743 = !DILocation(line: 1866, column: 3, scope: !3657)
!3744 = !DILocation(line: 1920, column: 14, scope: !3497)
!3745 = !DILocation(line: 1921, column: 7, scope: !3497)
!3746 = !DILocation(line: 1874, column: 16, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1874, column: 9)
!3748 = !DILocation(line: 1874, column: 9, scope: !3655)
!3749 = !DILocation(line: 1876, column: 55, scope: !3655)
!3750 = !DILocation(line: 1876, column: 7, scope: !3655)
!3751 = !DILocation(line: 0, scope: !3655)
!3752 = !DILocation(line: 1877, column: 11, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1877, column: 9)
!3754 = !DILocation(line: 1877, column: 9, scope: !3655)
!3755 = !DILocation(line: 1882, column: 36, scope: !3663)
!3756 = !DILocation(line: 1882, column: 17, scope: !3663)
!3757 = !DILocation(line: 1882, column: 5, scope: !3664)
!3758 = !DILocation(line: 1884, column: 11, scope: !3661)
!3759 = !DILocation(line: 1884, column: 38, scope: !3661)
!3760 = !DILocation(line: 1884, column: 11, scope: !3662)
!3761 = !DILocation(line: 0, scope: !3660)
!3762 = !DILocation(line: 1889, column: 11, scope: !3668)
!3763 = !DILocation(line: 1891, column: 13, scope: !3666)
!3764 = !DILocation(line: 1895, column: 64, scope: !3666)
!3765 = !DILocalVariable(name: "degrees", arg: 1, scope: !3766, file: !3767, line: 54, type: !595)
!3766 = distinct !DISubprogram(name: "DegreesToRadians", scope: !3767, file: !3767, line: 54, type: !2092, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3768)
!3767 = !DIFile(filename: "apps/538.imagick_r/src/magick/image-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "35ccb704e07ae6f7e4c200a043674ce8")
!3768 = !{!3765}
!3769 = !DILocation(line: 0, scope: !3766, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 1895, column: 47, scope: !3666)
!3771 = !DILocation(line: 56, column: 28, scope: !3766, inlinedAt: !3770)
!3772 = !DILocation(line: 56, column: 36, scope: !3766, inlinedAt: !3770)
!3773 = !DILocation(line: 1895, column: 43, scope: !3666)
!3774 = !DILocation(line: 0, scope: !3766, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1896, column: 42, scope: !3666)
!3776 = !DILocation(line: 1896, column: 38, scope: !3666)
!3777 = !DILocation(line: 1896, column: 37, scope: !3666)
!3778 = !DILocation(line: 1895, column: 77, scope: !3666)
!3779 = !DILocation(line: 0, scope: !3666)
!3780 = !DILocation(line: 1898, column: 33, scope: !3666)
!3781 = !DILocalVariable(name: "x", arg: 1, scope: !3782, file: !3, line: 1779, type: !130)
!3782 = distinct !DISubprogram(name: "MagickRound", scope: !3, file: !3, line: 1779, type: !3783, scopeLine: 1780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!130, !130}
!3785 = !{!3781}
!3786 = !DILocation(line: 0, scope: !3782, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 1898, column: 15, scope: !3666)
!3788 = !DILocation(line: 1784, column: 10, scope: !3789, inlinedAt: !3787)
!3789 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 1784, column: 7)
!3790 = !DILocation(line: 1784, column: 9, scope: !3789, inlinedAt: !3787)
!3791 = !DILocation(line: 1784, column: 23, scope: !3789, inlinedAt: !3787)
!3792 = !DILocation(line: 1784, column: 30, scope: !3789, inlinedAt: !3787)
!3793 = !DILocation(line: 1784, column: 20, scope: !3789, inlinedAt: !3787)
!3794 = !DILocation(line: 1897, column: 51, scope: !3666)
!3795 = !DILocation(line: 1897, column: 20, scope: !3666)
!3796 = !DILocation(line: 1899, column: 18, scope: !3666)
!3797 = !DILocation(line: 0, scope: !3782, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 1901, column: 15, scope: !3666)
!3799 = !DILocation(line: 1900, column: 20, scope: !3666)
!3800 = !DILocation(line: 1902, column: 11, scope: !3667)
!3801 = !DILocation(line: 1889, column: 31, scope: !3667)
!3802 = !DILocation(line: 1889, column: 23, scope: !3667)
!3803 = distinct !{!3803, !3762, !3804, !1134, !1135}
!3804 = !DILocation(line: 1902, column: 11, scope: !3668)
!3805 = !DILocation(line: 1904, column: 8, scope: !3662)
!3806 = !DILocation(line: 1882, column: 46, scope: !3663)
!3807 = distinct !{!3807, !3757, !3808, !1134, !1135}
!3808 = !DILocation(line: 1905, column: 5, scope: !3664)
!3809 = !DILocation(line: 1906, column: 16, scope: !3672)
!3810 = !DILocation(line: 1906, column: 33, scope: !3672)
!3811 = !DILocation(line: 1906, column: 9, scope: !3655)
!3812 = !DILocation(line: 1914, column: 66, scope: !3671)
!3813 = !DILocation(line: 1915, column: 18, scope: !3671)
!3814 = !DILocation(line: 0, scope: !1271, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 1914, column: 17, scope: !3671)
!3816 = !DILocation(line: 30, column: 3, scope: !1271, inlinedAt: !3815)
!3817 = !DILocation(line: 31, column: 5, scope: !1271, inlinedAt: !3815)
!3818 = !DILocation(line: 35, column: 10, scope: !1271, inlinedAt: !3815)
!3819 = !DILocation(line: 36, column: 17, scope: !1271, inlinedAt: !3815)
!3820 = !DILocation(line: 36, column: 63, scope: !1271, inlinedAt: !3815)
!3821 = !DILocation(line: 36, column: 10, scope: !1271, inlinedAt: !3815)
!3822 = !DILocation(line: 37, column: 1, scope: !1271, inlinedAt: !3815)
!3823 = !DILocation(line: 0, scope: !3671)
!3824 = !DILocation(line: 1916, column: 21, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1916, column: 13)
!3826 = !DILocation(line: 1916, column: 13, scope: !3671)
!3827 = !DILocation(line: 1918, column: 7, scope: !3671)
!3828 = !DILocation(line: 1866, column: 41, scope: !3656)
!3829 = distinct !{!3829, !3743, !3830, !1134, !1135}
!3830 = !DILocation(line: 1919, column: 3, scope: !3657)
!3831 = !DILocation(line: 1921, column: 14, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1921, column: 7)
!3833 = !DILocation(line: 1923, column: 19, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1922, column: 5)
!3835 = !DILocation(line: 1924, column: 7, scope: !3834)
!3836 = !DILocation(line: 1929, column: 8, scope: !3497)
!3837 = !DILocation(line: 1930, column: 12, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1930, column: 7)
!3839 = !DILocation(line: 1930, column: 7, scope: !3497)
!3840 = !DILocation(line: 1932, column: 19, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 1931, column: 5)
!3842 = !DILocation(line: 1933, column: 7, scope: !3841)
!3843 = !DILocation(line: 1936, column: 51, scope: !3497)
!3844 = !DILocation(line: 1937, column: 5, scope: !3497)
!3845 = !DILocation(line: 1937, column: 21, scope: !3497)
!3846 = !DILocation(line: 1935, column: 10, scope: !3497)
!3847 = !DILocation(line: 1938, column: 29, scope: !3497)
!3848 = !DILocation(line: 1938, column: 10, scope: !3497)
!3849 = !DILocation(line: 1940, column: 21, scope: !3497)
!3850 = !DILocation(line: 1940, column: 5, scope: !3497)
!3851 = !DILocation(line: 1940, column: 45, scope: !3497)
!3852 = !DILocation(line: 1940, column: 29, scope: !3497)
!3853 = !DILocation(line: 1939, column: 10, scope: !3497)
!3854 = !DILocation(line: 1941, column: 29, scope: !3497)
!3855 = !DILocation(line: 1941, column: 10, scope: !3497)
!3856 = !DILocation(line: 1945, column: 15, scope: !3675)
!3857 = !DILocation(line: 1945, column: 3, scope: !3676)
!3858 = !DILocation(line: 1943, column: 17, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1943, column: 7)
!3860 = !DILocation(line: 1942, column: 21, scope: !3497)
!3861 = !DILocation(line: 1942, column: 38, scope: !3497)
!3862 = !DILocation(line: 1942, column: 14, scope: !3497)
!3863 = !DILocation(line: 1943, column: 7, scope: !3497)
!3864 = !DILocation(line: 0, scope: !3674)
!3865 = !DILocation(line: 1950, column: 5, scope: !3680)
!3866 = !DILocation(line: 1952, column: 7, scope: !3678)
!3867 = !DILocation(line: 0, scope: !3678)
!3868 = !DILocation(line: 1955, column: 14, scope: !3678)
!3869 = !DILocation(line: 1956, column: 11, scope: !3683)
!3870 = !DILocation(line: 1956, column: 17, scope: !3683)
!3871 = !DILocation(line: 1956, column: 11, scope: !3678)
!3872 = !DILocation(line: 0, scope: !3682)
!3873 = !DILocation(line: 1971, column: 11, scope: !3696)
!3874 = !DILocation(line: 0, scope: !3694)
!3875 = !DILocation(line: 1980, column: 56, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 1979, column: 17)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1978, column: 19)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 1977, column: 13)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 1976, column: 13)
!3880 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 1976, column: 13)
!3881 = !DILocation(line: 1980, column: 26, scope: !3876)
!3882 = !DILocation(line: 1981, column: 23, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 1981, column: 23)
!3884 = !DILocation(line: 1981, column: 29, scope: !3883)
!3885 = !DILocation(line: 1981, column: 23, scope: !3876)
!3886 = !DILocation(line: 1976, column: 73, scope: !3879)
!3887 = !DILocation(line: 1976, column: 46, scope: !3879)
!3888 = !DILocation(line: 1976, column: 13, scope: !3880)
!3889 = distinct !{!3889, !3888, !3890, !1134, !1135}
!3890 = !DILocation(line: 1987, column: 13, scope: !3880)
!3891 = !DILocation(line: 1978, column: 22, scope: !3877)
!3892 = !DILocation(line: 1978, column: 28, scope: !3877)
!3893 = !DILocation(line: 0, scope: !3880)
!3894 = !DILocation(line: 1988, column: 19, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 1988, column: 17)
!3896 = !DILocation(line: 1971, column: 73, scope: !3695)
!3897 = distinct !{!3897, !3873, !3898, !1134, !1135}
!3898 = !DILocation(line: 1990, column: 11, scope: !3696)
!3899 = !DILocation(line: 1991, column: 18, scope: !3682)
!3900 = !DILocation(line: 1992, column: 24, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1992, column: 15)
!3902 = !DILocation(line: 1992, column: 22, scope: !3901)
!3903 = !DILocation(line: 1992, column: 15, scope: !3682)
!3904 = !DILocation(line: 1994, column: 25, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1994, column: 15)
!3906 = !DILocation(line: 2001, column: 25, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1995, column: 13)
!3908 = !DILocation(line: 2001, column: 18, scope: !3907)
!3909 = !DILocation(line: 2001, column: 32, scope: !3907)
!3910 = !DILocation(line: 2000, column: 71, scope: !3907)
!3911 = !DILocation(line: 2001, column: 60, scope: !3907)
!3912 = !DILocation(line: 0, scope: !3766, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 2001, column: 43, scope: !3907)
!3914 = !DILocation(line: 56, column: 28, scope: !3766, inlinedAt: !3913)
!3915 = !DILocation(line: 56, column: 36, scope: !3766, inlinedAt: !3913)
!3916 = !DILocation(line: 2001, column: 39, scope: !3907)
!3917 = !DILocation(line: 2000, column: 61, scope: !3907)
!3918 = !DILocation(line: 0, scope: !3766, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 2002, column: 21, scope: !3907)
!3920 = !DILocation(line: 2002, column: 17, scope: !3907)
!3921 = !DILocation(line: 2001, column: 74, scope: !3907)
!3922 = !DILocation(line: 2002, column: 59, scope: !3907)
!3923 = !DILocation(line: 2002, column: 52, scope: !3907)
!3924 = !DILocation(line: 2002, column: 63, scope: !3907)
!3925 = !DILocation(line: 2002, column: 50, scope: !3907)
!3926 = !DILocation(line: 2003, column: 39, scope: !3907)
!3927 = !DILocation(line: 2003, column: 23, scope: !3907)
!3928 = !DILocation(line: 2005, column: 32, scope: !3907)
!3929 = !DILocation(line: 2004, column: 71, scope: !3907)
!3930 = !DILocation(line: 0, scope: !3766, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 2005, column: 43, scope: !3907)
!3932 = !DILocation(line: 2005, column: 39, scope: !3907)
!3933 = !DILocation(line: 2004, column: 61, scope: !3907)
!3934 = !DILocation(line: 0, scope: !3766, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 2006, column: 21, scope: !3907)
!3936 = !DILocation(line: 2006, column: 17, scope: !3907)
!3937 = !DILocation(line: 2005, column: 74, scope: !3907)
!3938 = !DILocation(line: 2006, column: 59, scope: !3907)
!3939 = !DILocation(line: 2006, column: 52, scope: !3907)
!3940 = !DILocation(line: 2006, column: 63, scope: !3907)
!3941 = !DILocation(line: 2006, column: 50, scope: !3907)
!3942 = !DILocation(line: 2007, column: 13, scope: !3907)
!3943 = !DILocation(line: 2015, column: 25, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 2009, column: 13)
!3945 = !DILocation(line: 2015, column: 18, scope: !3944)
!3946 = !DILocation(line: 2015, column: 29, scope: !3944)
!3947 = !DILocation(line: 2014, column: 71, scope: !3944)
!3948 = !DILocation(line: 2015, column: 57, scope: !3944)
!3949 = !DILocation(line: 0, scope: !3766, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 2015, column: 40, scope: !3944)
!3951 = !DILocation(line: 56, column: 28, scope: !3766, inlinedAt: !3950)
!3952 = !DILocation(line: 56, column: 36, scope: !3766, inlinedAt: !3950)
!3953 = !DILocation(line: 2015, column: 36, scope: !3944)
!3954 = !DILocation(line: 2014, column: 61, scope: !3944)
!3955 = !DILocation(line: 0, scope: !3766, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 2016, column: 21, scope: !3944)
!3957 = !DILocation(line: 2016, column: 17, scope: !3944)
!3958 = !DILocation(line: 2015, column: 71, scope: !3944)
!3959 = !DILocation(line: 2016, column: 59, scope: !3944)
!3960 = !DILocation(line: 2016, column: 52, scope: !3944)
!3961 = !DILocation(line: 2016, column: 66, scope: !3944)
!3962 = !DILocation(line: 2016, column: 50, scope: !3944)
!3963 = !DILocation(line: 2017, column: 39, scope: !3944)
!3964 = !DILocation(line: 2017, column: 23, scope: !3944)
!3965 = !DILocation(line: 2019, column: 29, scope: !3944)
!3966 = !DILocation(line: 2018, column: 71, scope: !3944)
!3967 = !DILocation(line: 0, scope: !3766, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 2019, column: 40, scope: !3944)
!3969 = !DILocation(line: 2019, column: 36, scope: !3944)
!3970 = !DILocation(line: 2018, column: 61, scope: !3944)
!3971 = !DILocation(line: 0, scope: !3766, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 2020, column: 21, scope: !3944)
!3973 = !DILocation(line: 2020, column: 17, scope: !3944)
!3974 = !DILocation(line: 2019, column: 71, scope: !3944)
!3975 = !DILocation(line: 2020, column: 59, scope: !3944)
!3976 = !DILocation(line: 2020, column: 52, scope: !3944)
!3977 = !DILocation(line: 2020, column: 66, scope: !3944)
!3978 = !DILocation(line: 2020, column: 50, scope: !3944)
!3979 = !DILocation(line: 0, scope: !3905)
!3980 = !DILocation(line: 2022, column: 18, scope: !3682)
!3981 = !DILocation(line: 2024, column: 37, scope: !3682)
!3982 = !DILocation(line: 2024, column: 18, scope: !3682)
!3983 = !DILocation(line: 2026, column: 5, scope: !3679)
!3984 = !DILocation(line: 1950, column: 49, scope: !3679)
!3985 = !DILocation(line: 1950, column: 17, scope: !3679)
!3986 = distinct !{!3986, !3865, !3987, !1134, !1135}
!3987 = !DILocation(line: 2026, column: 5, scope: !3680)
!3988 = !DILocation(line: 1945, column: 48, scope: !3675)
!3989 = distinct !{!3989, !3857, !3990, !1134, !1135}
!3990 = !DILocation(line: 2027, column: 3, scope: !3676)
!3991 = !DILocation(line: 2028, column: 10, scope: !3497)
!3992 = !DILocation(line: 2032, column: 14, scope: !3497)
!3993 = !DILocation(line: 2033, column: 15, scope: !3497)
!3994 = !DILocation(line: 2033, column: 39, scope: !3497)
!3995 = !DILocation(line: 2034, column: 41, scope: !3497)
!3996 = !DILocation(line: 2034, column: 10, scope: !3497)
!3997 = !DILocation(line: 2035, column: 12, scope: !3497)
!3998 = !DILocation(line: 2036, column: 16, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 2036, column: 7)
!4000 = !DILocation(line: 2036, column: 7, scope: !3497)
!4001 = !DILocation(line: 2037, column: 12, scope: !3999)
!4002 = !DILocation(line: 2037, column: 5, scope: !3999)
!4003 = !DILocation(line: 2038, column: 12, scope: !3497)
!4004 = !DILocation(line: 2039, column: 16, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 2039, column: 7)
!4006 = !DILocation(line: 2039, column: 7, scope: !3497)
!4007 = !DILocation(line: 2040, column: 12, scope: !4005)
!4008 = !DILocation(line: 2040, column: 5, scope: !4005)
!4009 = !DILocation(line: 2041, column: 12, scope: !3497)
!4010 = !DILocation(line: 2042, column: 16, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 2042, column: 7)
!4012 = !DILocation(line: 2042, column: 7, scope: !3497)
!4013 = !DILocation(line: 2043, column: 12, scope: !4011)
!4014 = !DILocation(line: 2043, column: 5, scope: !4011)
!4015 = !DILocation(line: 2044, column: 12, scope: !3497)
!4016 = !DILocation(line: 2045, column: 16, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 2045, column: 7)
!4018 = !DILocation(line: 2045, column: 7, scope: !3497)
!4019 = !DILocation(line: 2046, column: 12, scope: !4017)
!4020 = !DILocation(line: 2046, column: 5, scope: !4017)
!4021 = !DILocation(line: 2047, column: 15, scope: !3497)
!4022 = !DILocation(line: 2047, column: 14, scope: !3497)
!4023 = !DILocation(line: 2048, column: 12, scope: !3497)
!4024 = !DILocation(line: 2049, column: 20, scope: !3699)
!4025 = !DILocation(line: 2049, column: 39, scope: !3699)
!4026 = !DILocation(line: 2050, column: 8, scope: !3699)
!4027 = !DILocation(line: 2050, column: 31, scope: !3699)
!4028 = !DILocation(line: 2049, column: 7, scope: !3497)
!4029 = !DILocation(line: 2055, column: 25, scope: !3698)
!4030 = !DILocation(line: 0, scope: !3698)
!4031 = !DILocation(line: 2056, column: 29, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2056, column: 11)
!4033 = !DILocation(line: 2056, column: 11, scope: !3698)
!4034 = !DILocation(line: 2057, column: 9, scope: !4032)
!4035 = !DILocation(line: 2062, column: 15, scope: !3497)
!4036 = !DILocation(line: 2063, column: 14, scope: !3497)
!4037 = !DILocation(line: 2064, column: 10, scope: !3497)
!4038 = !DILocation(line: 2065, column: 30, scope: !3497)
!4039 = !DILocation(line: 2065, column: 10, scope: !3497)
!4040 = !DILocation(line: 2065, column: 3, scope: !3497)
!4041 = !DILocation(line: 2066, column: 1, scope: !3497)
!4042 = !DISubprogram(name: "NullMatrix", scope: !790, file: !790, line: 38, type: !4043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!104, !788}
!4045 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !4046, file: !4046, line: 41, type: !4047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4046 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!497, !165}
!4049 = !DISubprogram(name: "write", scope: !4050, file: !4050, line: 366, type: !4051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4050 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!170, !497, !1546, !87}
!4053 = !DISubprogram(name: "close", scope: !4050, file: !4050, line: 353, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!497, !497}
!4056 = !DISubprogram(name: "AcquireImageInfo", scope: !10, file: !10, line: 520, type: !4057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!3513}
!4059 = !DISubprogram(name: "GetImageArtifact", scope: !4060, file: !4060, line: 30, type: !4061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4060 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!390, !593, !390}
!4063 = !DISubprogram(name: "SetImageOption", scope: !4064, file: !4064, line: 166, type: !4065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4064 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!104, !3513, !390, !390}
!4067 = !DISubprogram(name: "ReadImage", scope: !4068, file: !4068, line: 42, type: !4069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4068 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!6, !4071, !596}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!4073 = !DISubprogram(name: "IsMagickTrue", scope: !4074, file: !4074, line: 38, type: !4075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4074 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!104, !390}
!4077 = !DISubprogram(name: "MatrixToImage", scope: !790, file: !790, line: 33, type: !4078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!6, !1544, !596}
!4080 = !DISubprogram(name: "AppendImageToList", scope: !4081, file: !4081, line: 51, type: !4082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4081 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !4084, !593}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4085 = !DISubprogram(name: "DestroyImageInfo", scope: !10, file: !10, line: 522, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!3513, !3513}
!4088 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !4046, file: !4046, line: 47, type: !4075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4089 = !DISubprogram(name: "GetFirstImageInList", scope: !4081, file: !4081, line: 30, type: !4090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!6, !593}
!4092 = distinct !DISubprogram(name: "MeanShiftImage", scope: !3, file: !3, line: 2108, type: !4093, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!6, !593, !834, !834, !595, !596}
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4112, !4113, !4114, !4115, !4132, !4133, !4134, !4135, !4136, !4140, !4141, !4142, !4143, !4144, !4145, !4149, !4155}
!4096 = !DILocalVariable(name: "image", arg: 1, scope: !4092, file: !3, line: 2108, type: !593)
!4097 = !DILocalVariable(name: "width", arg: 2, scope: !4092, file: !3, line: 2108, type: !834)
!4098 = !DILocalVariable(name: "height", arg: 3, scope: !4092, file: !3, line: 2109, type: !834)
!4099 = !DILocalVariable(name: "color_distance", arg: 4, scope: !4092, file: !3, line: 2109, type: !595)
!4100 = !DILocalVariable(name: "exception", arg: 5, scope: !4092, file: !3, line: 2109, type: !596)
!4101 = !DILocalVariable(name: "image_view", scope: !4092, file: !3, line: 2115, type: !840)
!4102 = !DILocalVariable(name: "mean_view", scope: !4092, file: !3, line: 2116, type: !840)
!4103 = !DILocalVariable(name: "pixel_view", scope: !4092, file: !3, line: 2117, type: !840)
!4104 = !DILocalVariable(name: "mean_image", scope: !4092, file: !3, line: 2120, type: !6)
!4105 = !DILocalVariable(name: "status", scope: !4092, file: !3, line: 2123, type: !104)
!4106 = !DILocalVariable(name: "progress", scope: !4092, file: !3, line: 2126, type: !393)
!4107 = !DILocalVariable(name: "y", scope: !4092, file: !3, line: 2129, type: !170)
!4108 = !DILocalVariable(name: "indexes", scope: !4109, file: !3, line: 2158, type: !874)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 2156, column: 3)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 2155, column: 3)
!4111 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 2155, column: 3)
!4112 = !DILocalVariable(name: "p", scope: !4109, file: !3, line: 2161, type: !876)
!4113 = !DILocalVariable(name: "q", scope: !4109, file: !3, line: 2164, type: !1010)
!4114 = !DILocalVariable(name: "x", scope: !4109, file: !3, line: 2167, type: !170)
!4115 = !DILocalVariable(name: "mean_pixel", scope: !4116, file: !3, line: 2183, type: !4119)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 2181, column: 5)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 2180, column: 5)
!4118 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2180, column: 5)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !117, line: 127, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !117, line: 104, size: 448, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !4120, file: !117, line: 107, baseType: !13, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4120, file: !117, line: 110, baseType: !21, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !4120, file: !117, line: 113, baseType: !104, size: 32, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4120, file: !117, line: 116, baseType: !130, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4120, file: !117, line: 119, baseType: !87, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4120, file: !117, line: 122, baseType: !946, size: 32, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4120, file: !117, line: 123, baseType: !946, size: 32, offset: 288)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4120, file: !117, line: 124, baseType: !946, size: 32, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !4120, file: !117, line: 125, baseType: !946, size: 32, offset: 352)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4120, file: !117, line: 126, baseType: !946, size: 32, offset: 384)
!4132 = !DILocalVariable(name: "previous_pixel", scope: !4116, file: !3, line: 2184, type: !4119)
!4133 = !DILocalVariable(name: "mean_location", scope: !4116, file: !3, line: 2187, type: !3644)
!4134 = !DILocalVariable(name: "previous_location", scope: !4116, file: !3, line: 2188, type: !3644)
!4135 = !DILocalVariable(name: "i", scope: !4116, file: !3, line: 2191, type: !170)
!4136 = !DILocalVariable(name: "distance", scope: !4137, file: !3, line: 2200, type: !130)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 2198, column: 7)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 2197, column: 7)
!4139 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 2197, column: 7)
!4140 = !DILocalVariable(name: "gamma", scope: !4137, file: !3, line: 2201, type: !130)
!4141 = !DILocalVariable(name: "sum_pixel", scope: !4137, file: !3, line: 2204, type: !4119)
!4142 = !DILocalVariable(name: "sum_location", scope: !4137, file: !3, line: 2207, type: !3644)
!4143 = !DILocalVariable(name: "count", scope: !4137, file: !3, line: 2210, type: !170)
!4144 = !DILocalVariable(name: "v", scope: !4137, file: !3, line: 2211, type: !170)
!4145 = !DILocalVariable(name: "u", scope: !4146, file: !3, line: 2222, type: !170)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 2220, column: 9)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 2219, column: 9)
!4148 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 2219, column: 9)
!4149 = !DILocalVariable(name: "pixel", scope: !4150, file: !3, line: 2229, type: !116)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 2227, column: 15)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 2226, column: 17)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 2225, column: 11)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 2224, column: 11)
!4154 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 2224, column: 11)
!4155 = !DILocalVariable(name: "proceed", scope: !4156, file: !3, line: 2282, type: !104)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 2280, column: 7)
!4157 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2279, column: 9)
!4158 = !DILocation(line: 0, scope: !4092)
!4159 = !DILocation(line: 2133, column: 14, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 2133, column: 7)
!4161 = !DILocation(line: 2133, column: 20, scope: !4160)
!4162 = !DILocation(line: 2133, column: 7, scope: !4092)
!4163 = !DILocation(line: 2134, column: 68, scope: !4160)
!4164 = !DILocation(line: 2134, column: 12, scope: !4160)
!4165 = !DILocation(line: 2134, column: 5, scope: !4160)
!4166 = !DILocation(line: 2137, column: 38, scope: !4092)
!4167 = !DILocation(line: 2137, column: 53, scope: !4092)
!4168 = !DILocation(line: 2137, column: 14, scope: !4092)
!4169 = !DILocation(line: 2138, column: 18, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 2138, column: 7)
!4171 = !DILocation(line: 2138, column: 7, scope: !4092)
!4172 = !DILocation(line: 2140, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 2140, column: 7)
!4174 = !DILocation(line: 2140, column: 52, scope: !4173)
!4175 = !DILocation(line: 2140, column: 7, scope: !4092)
!4176 = !DILocation(line: 2142, column: 47, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 2141, column: 5)
!4178 = !DILocation(line: 2142, column: 7, scope: !4177)
!4179 = !DILocation(line: 2143, column: 18, scope: !4177)
!4180 = !DILocation(line: 2144, column: 7, scope: !4177)
!4181 = !DILocation(line: 2148, column: 14, scope: !4092)
!4182 = !DILocation(line: 2149, column: 14, scope: !4092)
!4183 = !DILocation(line: 2150, column: 13, scope: !4092)
!4184 = !DILocation(line: 2155, column: 39, scope: !4110)
!4185 = !DILocation(line: 2155, column: 15, scope: !4110)
!4186 = !DILocation(line: 2155, column: 3, scope: !4111)
!4187 = !DILocation(line: 2169, column: 16, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2169, column: 9)
!4189 = !DILocation(line: 2169, column: 9, scope: !4109)
!4190 = !DILocation(line: 2171, column: 55, scope: !4109)
!4191 = !DILocation(line: 2171, column: 7, scope: !4109)
!4192 = !DILocation(line: 0, scope: !4109)
!4193 = !DILocation(line: 2172, column: 61, scope: !4109)
!4194 = !DILocation(line: 2172, column: 7, scope: !4109)
!4195 = !DILocation(line: 2174, column: 12, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2174, column: 9)
!4197 = !DILocation(line: 2174, column: 43, scope: !4196)
!4198 = !DILocation(line: 2179, column: 13, scope: !4109)
!4199 = !DILocation(line: 2180, column: 41, scope: !4117)
!4200 = !DILocation(line: 2180, column: 17, scope: !4117)
!4201 = !DILocation(line: 2180, column: 5, scope: !4118)
!4202 = !DILocation(line: 2182, column: 7, scope: !4116)
!4203 = !DILocation(line: 2183, column: 9, scope: !4116)
!4204 = !DILocation(line: 2193, column: 7, scope: !4116)
!4205 = !DILocation(line: 2194, column: 7, scope: !4116)
!4206 = !DILocalVariable(name: "image", arg: 1, scope: !4207, file: !2091, line: 92, type: !593)
!4207 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !2091, file: !2091, line: 92, type: !4208, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !4211)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !593, !792, !825, !4210}
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4211 = !{!4206, !4212, !4213, !4214}
!4212 = !DILocalVariable(name: "color", arg: 2, scope: !4207, file: !2091, line: 93, type: !792)
!4213 = !DILocalVariable(name: "index", arg: 3, scope: !4207, file: !2091, line: 93, type: !825)
!4214 = !DILocalVariable(name: "pixel", arg: 4, scope: !4207, file: !2091, line: 93, type: !4210)
!4215 = !DILocation(line: 0, scope: !4207, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 2194, column: 7, scope: !4116)
!4217 = !DILocation(line: 95, column: 31, scope: !4207, inlinedAt: !4216)
!4218 = !DILocation(line: 95, column: 14, scope: !4207, inlinedAt: !4216)
!4219 = !DILocation(line: 95, column: 13, scope: !4207, inlinedAt: !4216)
!4220 = !{!4221, !4222, i64 32}
!4221 = !{!"_MagickPixelPacket", !1046, i64 0, !1046, i64 4, !1046, i64 8, !1052, i64 16, !1048, i64 24, !4222, i64 32, !4222, i64 36, !4222, i64 40, !4222, i64 44, !4222, i64 48}
!4222 = !{!"float", !1046, i64 0}
!4223 = !DILocation(line: 96, column: 33, scope: !4207, inlinedAt: !4216)
!4224 = !DILocation(line: 96, column: 16, scope: !4207, inlinedAt: !4216)
!4225 = !DILocation(line: 96, column: 15, scope: !4207, inlinedAt: !4216)
!4226 = !{!4221, !4222, i64 36}
!4227 = !DILocation(line: 97, column: 32, scope: !4207, inlinedAt: !4216)
!4228 = !DILocation(line: 97, column: 15, scope: !4207, inlinedAt: !4216)
!4229 = !DILocation(line: 97, column: 14, scope: !4207, inlinedAt: !4216)
!4230 = !{!4221, !4222, i64 40}
!4231 = !DILocation(line: 98, column: 35, scope: !4207, inlinedAt: !4216)
!4232 = !DILocation(line: 98, column: 18, scope: !4207, inlinedAt: !4216)
!4233 = !DILocation(line: 98, column: 17, scope: !4207, inlinedAt: !4216)
!4234 = !{!4221, !4222, i64 44}
!4235 = !DILocation(line: 99, column: 26, scope: !4236, inlinedAt: !4216)
!4236 = distinct !DILexicalBlock(scope: !4207, file: !2091, line: 99, column: 7)
!4237 = !DILocation(line: 99, column: 45, scope: !4236, inlinedAt: !4216)
!4238 = !DILocation(line: 2194, column: 43, scope: !4116)
!4239 = !DILocation(line: 101, column: 35, scope: !4236, inlinedAt: !4216)
!4240 = !DILocation(line: 101, column: 18, scope: !4236, inlinedAt: !4216)
!4241 = !DILocation(line: 101, column: 17, scope: !4236, inlinedAt: !4216)
!4242 = !{!4221, !4222, i64 48}
!4243 = !DILocation(line: 101, column: 5, scope: !4236, inlinedAt: !4216)
!4244 = !DILocation(line: 2195, column: 23, scope: !4116)
!4245 = !DILocation(line: 0, scope: !4116)
!4246 = !DILocation(line: 2197, column: 7, scope: !4139)
!4247 = !DILocation(line: 2203, column: 9, scope: !4137)
!4248 = !DILocation(line: 2204, column: 11, scope: !4137)
!4249 = !DILocation(line: 0, scope: !4137)
!4250 = !DILocation(line: 2215, column: 9, scope: !4137)
!4251 = !DILocation(line: 2217, column: 24, scope: !4137)
!4252 = !{i64 0, i64 4, !4253, i64 4, i64 4, !4253, i64 8, i64 4, !4253, i64 12, i64 4, !4253, i64 16, i64 4, !4253}
!4253 = !{!4222, !4222, i64 0}
!4254 = !{i64 0, i64 4, !4253, i64 4, i64 4, !4253, i64 8, i64 4, !4253, i64 12, i64 4, !4253}
!4255 = !{i64 0, i64 4, !4253, i64 4, i64 4, !4253, i64 8, i64 4, !4253}
!4256 = !DILocation(line: 2219, column: 9, scope: !4148)
!4257 = !DILocation(line: 2224, column: 11, scope: !4154)
!4258 = !DILocation(line: 0, scope: !4146)
!4259 = !DILocation(line: 2226, column: 23, scope: !4151)
!4260 = !DILocation(line: 2226, column: 21, scope: !4151)
!4261 = !DILocation(line: 2226, column: 27, scope: !4151)
!4262 = !DILocation(line: 2226, column: 17, scope: !4152)
!4263 = !DILocation(line: 2228, column: 17, scope: !4150)
!4264 = !DILocation(line: 2229, column: 19, scope: !4150)
!4265 = !DILocation(line: 2232, column: 47, scope: !4150)
!4266 = !DILocation(line: 2232, column: 46, scope: !4150)
!4267 = !DILocation(line: 0, scope: !3782, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 2232, column: 19, scope: !4150)
!4269 = !DILocation(line: 1784, column: 10, scope: !3789, inlinedAt: !4268)
!4270 = !DILocation(line: 1784, column: 9, scope: !3789, inlinedAt: !4268)
!4271 = !DILocation(line: 1784, column: 23, scope: !3789, inlinedAt: !4268)
!4272 = !DILocation(line: 1784, column: 30, scope: !3789, inlinedAt: !4268)
!4273 = !DILocation(line: 1784, column: 20, scope: !3789, inlinedAt: !4268)
!4274 = !DILocation(line: 2231, column: 63, scope: !4150)
!4275 = !DILocation(line: 0, scope: !3782, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 2232, column: 60, scope: !4150)
!4277 = !DILocation(line: 2231, column: 24, scope: !4150)
!4278 = !DILocation(line: 2234, column: 38, scope: !4150)
!4279 = !DILocation(line: 2234, column: 48, scope: !4150)
!4280 = !DILocation(line: 2234, column: 42, scope: !4150)
!4281 = !DILocation(line: 2234, column: 41, scope: !4150)
!4282 = !DILocation(line: 2235, column: 31, scope: !4150)
!4283 = !DILocation(line: 2235, column: 43, scope: !4150)
!4284 = !DILocation(line: 2235, column: 37, scope: !4150)
!4285 = !DILocation(line: 2235, column: 36, scope: !4150)
!4286 = !DILocation(line: 2235, column: 49, scope: !4150)
!4287 = !DILocation(line: 2234, column: 79, scope: !4150)
!4288 = !DILocation(line: 2236, column: 31, scope: !4150)
!4289 = !DILocation(line: 2236, column: 42, scope: !4150)
!4290 = !DILocation(line: 2236, column: 36, scope: !4150)
!4291 = !DILocation(line: 2236, column: 35, scope: !4150)
!4292 = !DILocation(line: 2235, column: 80, scope: !4150)
!4293 = !DILocation(line: 2234, column: 26, scope: !4150)
!4294 = !DILocation(line: 2237, column: 30, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 2237, column: 21)
!4296 = !DILocation(line: 2237, column: 21, scope: !4150)
!4297 = !DILocation(line: 2239, column: 35, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 2238, column: 19)
!4299 = !DILocation(line: 2240, column: 35, scope: !4298)
!4300 = !DILocation(line: 2241, column: 34, scope: !4298)
!4301 = !DILocation(line: 2242, column: 36, scope: !4298)
!4302 = !DILocation(line: 2243, column: 35, scope: !4298)
!4303 = !DILocation(line: 2244, column: 46, scope: !4298)
!4304 = !DILocation(line: 2244, column: 40, scope: !4298)
!4305 = !DILocation(line: 2244, column: 38, scope: !4298)
!4306 = !DILocation(line: 2245, column: 26, scope: !4298)
!4307 = !DILocation(line: 2246, column: 19, scope: !4298)
!4308 = !DILocation(line: 2247, column: 15, scope: !4151)
!4309 = !DILocation(line: 2247, column: 15, scope: !4150)
!4310 = !DILocation(line: 2224, column: 71, scope: !4153)
!4311 = !DILocation(line: 2224, column: 44, scope: !4153)
!4312 = distinct !{!4312, !4257, !4313, !1134, !1135}
!4313 = !DILocation(line: 2248, column: 11, scope: !4154)
!4314 = !DILocation(line: 2219, column: 71, scope: !4147)
!4315 = !DILocation(line: 2219, column: 43, scope: !4147)
!4316 = distinct !{!4316, !4256, !4317, !1134, !1135}
!4317 = !DILocation(line: 2249, column: 9, scope: !4148)
!4318 = !DILocation(line: 2146, column: 9, scope: !4092)
!4319 = !DILocation(line: 2214, column: 23, scope: !4137)
!4320 = !DILocation(line: 2213, column: 23, scope: !4137)
!4321 = !DILocation(line: 2218, column: 14, scope: !4137)
!4322 = !DILocation(line: 2250, column: 19, scope: !4137)
!4323 = !DILocation(line: 2250, column: 18, scope: !4137)
!4324 = !DILocation(line: 2251, column: 30, scope: !4137)
!4325 = !DILocation(line: 2252, column: 30, scope: !4137)
!4326 = !DILocation(line: 2253, column: 40, scope: !4137)
!4327 = !DILocation(line: 2253, column: 30, scope: !4137)
!4328 = !DILocation(line: 2253, column: 29, scope: !4137)
!4329 = !DILocation(line: 2253, column: 24, scope: !4137)
!4330 = !DILocation(line: 2253, column: 23, scope: !4137)
!4331 = !DILocation(line: 2254, column: 42, scope: !4137)
!4332 = !DILocation(line: 2254, column: 32, scope: !4137)
!4333 = !DILocation(line: 2254, column: 31, scope: !4137)
!4334 = !DILocation(line: 2254, column: 26, scope: !4137)
!4335 = !DILocation(line: 2254, column: 25, scope: !4137)
!4336 = !DILocation(line: 2255, column: 41, scope: !4137)
!4337 = !DILocation(line: 2255, column: 31, scope: !4137)
!4338 = !DILocation(line: 2255, column: 30, scope: !4137)
!4339 = !DILocation(line: 2255, column: 25, scope: !4137)
!4340 = !DILocation(line: 2255, column: 24, scope: !4137)
!4341 = !DILocation(line: 2256, column: 44, scope: !4137)
!4342 = !DILocation(line: 2256, column: 34, scope: !4137)
!4343 = !DILocation(line: 2256, column: 33, scope: !4137)
!4344 = !DILocation(line: 2256, column: 28, scope: !4137)
!4345 = !DILocation(line: 2256, column: 27, scope: !4137)
!4346 = !DILocation(line: 2257, column: 34, scope: !4137)
!4347 = !DILocation(line: 2259, column: 27, scope: !4137)
!4348 = !DILocation(line: 2259, column: 48, scope: !4137)
!4349 = !DILocation(line: 2258, column: 48, scope: !4137)
!4350 = !DILocation(line: 2261, column: 45, scope: !4137)
!4351 = !DILocation(line: 2261, column: 30, scope: !4137)
!4352 = !DILocation(line: 2261, column: 29, scope: !4137)
!4353 = !DILocation(line: 2261, column: 65, scope: !4137)
!4354 = !DILocation(line: 2262, column: 16, scope: !4137)
!4355 = !DILocation(line: 2260, column: 48, scope: !4137)
!4356 = !DILocation(line: 2263, column: 47, scope: !4137)
!4357 = !DILocation(line: 2263, column: 30, scope: !4137)
!4358 = !DILocation(line: 2263, column: 29, scope: !4137)
!4359 = !DILocation(line: 2263, column: 69, scope: !4137)
!4360 = !DILocation(line: 2264, column: 16, scope: !4137)
!4361 = !DILocation(line: 2262, column: 65, scope: !4137)
!4362 = !DILocation(line: 2265, column: 46, scope: !4137)
!4363 = !DILocation(line: 2265, column: 30, scope: !4137)
!4364 = !DILocation(line: 2265, column: 29, scope: !4137)
!4365 = !DILocation(line: 2265, column: 67, scope: !4137)
!4366 = !DILocation(line: 2266, column: 16, scope: !4137)
!4367 = !DILocation(line: 2264, column: 69, scope: !4137)
!4368 = !DILocation(line: 2267, column: 22, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 2267, column: 13)
!4370 = !DILocation(line: 2269, column: 7, scope: !4138)
!4371 = !DILocation(line: 2197, column: 46, scope: !4138)
!4372 = distinct !{!4372, !4246, !4373, !1134, !1135}
!4373 = !DILocation(line: 2269, column: 7, scope: !4139)
!4374 = !DILocalVariable(name: "value", arg: 1, scope: !4375, file: !242, line: 87, type: !4378)
!4375 = distinct !DISubprogram(name: "ClampToQuantum", scope: !242, file: !242, line: 87, type: !4376, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !4379)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!121, !4378}
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!4379 = !{!4374}
!4380 = !DILocation(line: 0, scope: !4375, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 2270, column: 14, scope: !4116)
!4382 = !DILocation(line: 92, column: 13, scope: !4383, inlinedAt: !4381)
!4383 = distinct !DILexicalBlock(scope: !4375, file: !242, line: 92, column: 7)
!4384 = !DILocation(line: 92, column: 7, scope: !4375, inlinedAt: !4381)
!4385 = !DILocation(line: 94, column: 13, scope: !4386, inlinedAt: !4381)
!4386 = distinct !DILexicalBlock(scope: !4375, file: !242, line: 94, column: 7)
!4387 = !DILocation(line: 94, column: 7, scope: !4375, inlinedAt: !4381)
!4388 = !DILocation(line: 96, column: 26, scope: !4375, inlinedAt: !4381)
!4389 = !DILocation(line: 96, column: 10, scope: !4375, inlinedAt: !4381)
!4390 = !DILocation(line: 96, column: 3, scope: !4375, inlinedAt: !4381)
!4391 = !DILocation(line: 2270, column: 10, scope: !4116)
!4392 = !DILocation(line: 2270, column: 13, scope: !4116)
!4393 = !DILocation(line: 0, scope: !4375, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 2271, column: 16, scope: !4116)
!4395 = !DILocation(line: 92, column: 13, scope: !4383, inlinedAt: !4394)
!4396 = !DILocation(line: 92, column: 7, scope: !4375, inlinedAt: !4394)
!4397 = !DILocation(line: 94, column: 13, scope: !4386, inlinedAt: !4394)
!4398 = !DILocation(line: 94, column: 7, scope: !4375, inlinedAt: !4394)
!4399 = !DILocation(line: 96, column: 26, scope: !4375, inlinedAt: !4394)
!4400 = !DILocation(line: 96, column: 10, scope: !4375, inlinedAt: !4394)
!4401 = !DILocation(line: 96, column: 3, scope: !4375, inlinedAt: !4394)
!4402 = !DILocation(line: 2271, column: 10, scope: !4116)
!4403 = !DILocation(line: 2271, column: 15, scope: !4116)
!4404 = !DILocation(line: 0, scope: !4375, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 2272, column: 15, scope: !4116)
!4406 = !DILocation(line: 92, column: 13, scope: !4383, inlinedAt: !4405)
!4407 = !DILocation(line: 92, column: 7, scope: !4375, inlinedAt: !4405)
!4408 = !DILocation(line: 94, column: 13, scope: !4386, inlinedAt: !4405)
!4409 = !DILocation(line: 94, column: 7, scope: !4375, inlinedAt: !4405)
!4410 = !DILocation(line: 96, column: 26, scope: !4375, inlinedAt: !4405)
!4411 = !DILocation(line: 96, column: 10, scope: !4375, inlinedAt: !4405)
!4412 = !DILocation(line: 96, column: 3, scope: !4375, inlinedAt: !4405)
!4413 = !DILocation(line: 2272, column: 14, scope: !4116)
!4414 = !DILocation(line: 0, scope: !4375, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 2273, column: 18, scope: !4116)
!4416 = !DILocation(line: 92, column: 13, scope: !4383, inlinedAt: !4415)
!4417 = !DILocation(line: 92, column: 7, scope: !4375, inlinedAt: !4415)
!4418 = !DILocation(line: 94, column: 13, scope: !4386, inlinedAt: !4415)
!4419 = !DILocation(line: 94, column: 7, scope: !4375, inlinedAt: !4415)
!4420 = !DILocation(line: 96, column: 26, scope: !4375, inlinedAt: !4415)
!4421 = !DILocation(line: 96, column: 10, scope: !4375, inlinedAt: !4415)
!4422 = !DILocation(line: 96, column: 3, scope: !4375, inlinedAt: !4415)
!4423 = !DILocation(line: 2273, column: 10, scope: !4116)
!4424 = !DILocation(line: 2273, column: 17, scope: !4116)
!4425 = !DILocation(line: 2274, column: 8, scope: !4116)
!4426 = !DILocation(line: 2275, column: 8, scope: !4116)
!4427 = !DILocation(line: 2276, column: 5, scope: !4117)
!4428 = !DILocation(line: 2180, column: 51, scope: !4117)
!4429 = distinct !{!4429, !4201, !4430, !1134, !1135}
!4430 = !DILocation(line: 2276, column: 5, scope: !4118)
!4431 = !DILocation(line: 2277, column: 9, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2277, column: 9)
!4433 = !DILocation(line: 2277, column: 59, scope: !4432)
!4434 = !DILocation(line: 2277, column: 9, scope: !4109)
!4435 = !DILocation(line: 2279, column: 16, scope: !4157)
!4436 = !DILocation(line: 2279, column: 33, scope: !4157)
!4437 = !DILocation(line: 2279, column: 9, scope: !4109)
!4438 = !DILocation(line: 2287, column: 66, scope: !4156)
!4439 = !DILocation(line: 2288, column: 18, scope: !4156)
!4440 = !DILocation(line: 0, scope: !1271, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 2287, column: 17, scope: !4156)
!4442 = !DILocation(line: 30, column: 3, scope: !1271, inlinedAt: !4441)
!4443 = !DILocation(line: 31, column: 5, scope: !1271, inlinedAt: !4441)
!4444 = !DILocation(line: 35, column: 10, scope: !1271, inlinedAt: !4441)
!4445 = !DILocation(line: 36, column: 17, scope: !1271, inlinedAt: !4441)
!4446 = !DILocation(line: 36, column: 63, scope: !1271, inlinedAt: !4441)
!4447 = !DILocation(line: 36, column: 10, scope: !1271, inlinedAt: !4441)
!4448 = !DILocation(line: 37, column: 1, scope: !1271, inlinedAt: !4441)
!4449 = !DILocation(line: 0, scope: !4156)
!4450 = !DILocation(line: 2289, column: 21, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 2289, column: 13)
!4452 = !DILocation(line: 2289, column: 13, scope: !4156)
!4453 = !DILocation(line: 2291, column: 7, scope: !4156)
!4454 = !DILocation(line: 2155, column: 46, scope: !4110)
!4455 = distinct !{!4455, !4186, !4456, !1134, !1135}
!4456 = !DILocation(line: 2292, column: 3, scope: !4111)
!4457 = !DILocation(line: 2293, column: 13, scope: !4092)
!4458 = !DILocation(line: 2294, column: 14, scope: !4092)
!4459 = !DILocation(line: 2295, column: 14, scope: !4092)
!4460 = !DILocation(line: 2296, column: 3, scope: !4092)
!4461 = !DILocation(line: 2297, column: 1, scope: !4092)
!4462 = !DISubprogram(name: "CloneImage", scope: !10, file: !10, line: 508, type: !4463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!6, !593, !834, !834, !4465, !596}
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!4466 = !DISubprogram(name: "SetImageStorageClass", scope: !10, file: !10, line: 542, type: !4467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!104, !6, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4470 = !DISubprogram(name: "InheritException", scope: !420, file: !420, line: 167, type: !4471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !596, !4473}
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4475 = !DISubprogram(name: "GetMagickPixelPacket", scope: !117, file: !117, line: 185, type: !4476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !593, !4210}
!4478 = !DISubprogram(name: "GetOneCacheViewVirtualPixel", scope: !747, file: !747, line: 80, type: !4479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1488)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!104, !1532, !1334, !1334, !115, !596}
