; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/annotate.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UTFInfo = type { i32, i32, i32, i32 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._TypeInfo = type { i64, ptr, ptr, ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }

@annotate_semaphore = internal global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/annotate.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rectangle -0.5,-0.5 %g,%.20g\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"stroke-width %g line 0,0 %g,0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"Metrics: text: %s; width: %g; height: %g; ascent: %g; descent: %g; max advance: %g; bounds: %g,%g  %g,%g; origin: %g,%g; pixels per em: %g,%g; underline position: %g; underline thickness: %g\00", align 1
@utf_info = internal unnamed_addr constant [6 x %struct.UTFInfo] [%struct.UTFInfo { i32 128, i32 0, i32 127, i32 0 }, %struct.UTFInfo { i32 224, i32 192, i32 2047, i32 128 }, %struct.UTFInfo { i32 240, i32 224, i32 65535, i32 2048 }, %struct.UTFInfo { i32 248, i32 240, i32 2097151, i32 65536 }, %struct.UTFInfo { i32 252, i32 248, i32 4194303, i32 2097152 }, %struct.UTFInfo { i32 254, i32 252, i32 134217727, i32 67108864 }], align 16, !dbg !1103
@.str.7 = private unnamed_addr constant [17 x i8] c"UnableToReadFont\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Century Schoolbook\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"`%s' (Freetype)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Font %s; pointsize %g\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"%%!PS-Adobe-3.0\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"/ReencodeType\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"  findfont dup length\0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"  dict begin { 1 index /FID ne {def} {pop pop} ifelse } forall\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"  /Encoding ISOLatin1Encoding def currentdict end definefont pop\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"} bind def\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"%g %g moveto\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%g %g scale\0A\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"/Times-Roman-ISO dup /Times-Roman ReencodeType findfont setfont\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"/%s-ISO dup /%s ReencodeType findfont setfont\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"[%g %g %g %g 0 0] concat\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"(%s) stringwidth pop -0.5 mul -0.5 rmoveto\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"%.20gx%.20g+0+0!\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ps:%s\00", align 1
@DefaultResolution = external local_unnamed_addr constant double, align 8
@.str.38 = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AnnotateComponentGenesis() local_unnamed_addr #0 !dbg !1124 {
entry:
  %0 = load ptr, ptr @annotate_semaphore, align 8, !dbg !1128, !tbaa !1130
  %cmp = icmp eq ptr %0, null, !dbg !1134
  br i1 %cmp, label %if.then, label %if.end, !dbg !1135

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #11, !dbg !1136
  store ptr %call, ptr @annotate_semaphore, align 8, !dbg !1137, !tbaa !1130
  br label %if.end, !dbg !1138

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1139
}

declare !dbg !1140 ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AnnotateComponentTerminus() local_unnamed_addr #0 !dbg !1143 {
entry:
  %0 = load ptr, ptr @annotate_semaphore, align 8, !dbg !1146, !tbaa !1130
  %cmp = icmp eq ptr %0, null, !dbg !1148
  br i1 %cmp, label %if.then, label %if.end, !dbg !1149

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #11, !dbg !1150
  br label %if.end, !dbg !1150

if.end:                                           ; preds = %if.then, %entry
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #11, !dbg !1151
  ret void, !dbg !1152
}

declare !dbg !1153 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !1157 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AnnotateImage(ptr noundef %image, ptr noundef %draw_info) local_unnamed_addr #0 !dbg !1158 {
entry:
  %primitive = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %offset = alloca %struct._PointInfo, align 8
  %geometry = alloca %struct._RectangleInfo, align 8
  %metrics = alloca %struct._TypeMetric, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1164, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !1165, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %primitive) #11, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %primitive, metadata !1166, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #11, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1170, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offset) #11, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1180, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #11, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !1181, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics) #11, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %metrics, metadata !1184, metadata !DIExpression()), !dbg !1216
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1217
  %0 = load i32, ptr %debug, align 8, !dbg !1217, !tbaa !1219
  %cmp.not = icmp eq i32 %0, 0, !dbg !1235
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1236

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1237
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 258, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1238
  br label %if.end, !dbg !1239

if.end:                                           ; preds = %if.then, %entry
  %text = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 21, !dbg !1240
  %1 = load ptr, ptr %text, align 8, !dbg !1240, !tbaa !1242
  %cmp1 = icmp eq ptr %1, null, !dbg !1250
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1251

if.end3:                                          ; preds = %if.end
  %2 = load i8, ptr %1, align 1, !dbg !1252, !tbaa !1254
  %cmp5 = icmp eq i8 %2, 0, !dbg !1255
  br i1 %cmp5, label %cleanup, label %if.end8, !dbg !1256

if.end8:                                          ; preds = %if.end3
  %call10 = tail call ptr @StringToList(ptr noundef nonnull %1) #11, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1167, metadata !DIExpression()), !dbg !1206
  %cmp11 = icmp eq ptr %call10, null, !dbg !1258
  br i1 %cmp11, label %cleanup, label %if.end14, !dbg !1260

if.end14:                                         ; preds = %if.end8
  call void @llvm.dbg.value(metadata i64 undef, metadata !1183, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 1, metadata !1182, metadata !DIExpression()), !dbg !1206
  %arrayidx161104 = getelementptr inbounds ptr, ptr %call10, i64 1, !dbg !1261
  %3 = load ptr, ptr %arrayidx161104, align 8, !dbg !1261, !tbaa !1130
  %cmp17.not1105 = icmp eq ptr %3, null, !dbg !1264
  br i1 %cmp17.not1105, label %for.end, label %for.body, !dbg !1265

for.body:                                         ; preds = %if.end14, %for.body
  %i.01106 = phi i64 [ %inc, %for.body ], [ 1, %if.end14 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1183, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %i.01106, metadata !1182, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 undef, metadata !1183, metadata !DIExpression()), !dbg !1206
  %inc = add nuw nsw i64 %i.01106, 1, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1182, metadata !DIExpression()), !dbg !1206
  %arrayidx16 = getelementptr inbounds ptr, ptr %call10, i64 %inc, !dbg !1261
  %4 = load ptr, ptr %arrayidx16, align 8, !dbg !1261, !tbaa !1130
  %cmp17.not = icmp eq ptr %4, null, !dbg !1264
  br i1 %cmp17.not, label %for.end, label %for.body, !dbg !1265, !llvm.loop !1267

for.end:                                          ; preds = %for.body, %if.end14
  %i.0.lcssa = phi i64 [ 1, %if.end14 ], [ %inc, %for.body ], !dbg !1271
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1199, metadata !DIExpression()), !dbg !1206
  %call27 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %draw_info) #11, !dbg !1272
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1168, metadata !DIExpression()), !dbg !1206
  %call28 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %draw_info) #11, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1169, metadata !DIExpression()), !dbg !1206
  call void @SetGeometry(ptr noundef %image, ptr noundef nonnull %geometry) #11, !dbg !1274
  call void @SetGeometryInfo(ptr noundef nonnull %geometry_info) #11, !dbg !1275
  %geometry29 = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 1, !dbg !1276
  %5 = load ptr, ptr %geometry29, align 8, !dbg !1276, !tbaa !1278
  %cmp30.not = icmp eq ptr %5, null, !dbg !1279
  br i1 %cmp30.not, label %if.end37, label %if.then32, !dbg !1280

if.then32:                                        ; preds = %for.end
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1281
  %call34 = call i32 @ParsePageGeometry(ptr noundef %image, ptr noundef nonnull %5, ptr noundef nonnull %geometry, ptr noundef nonnull %exception) #11, !dbg !1283
  %6 = load ptr, ptr %geometry29, align 8, !dbg !1284, !tbaa !1278
  %call36 = call i32 @ParseGeometry(ptr noundef %6, ptr noundef nonnull %geometry_info) #11, !dbg !1285
  br label %if.end37, !dbg !1286

if.end37:                                         ; preds = %if.then32, %for.end
  %call38 = call i32 @SetImageStorageClass(ptr noundef %image, i32 noundef 1) #11, !dbg !1287
  %cmp39 = icmp eq i32 %call38, 0, !dbg !1289
  br i1 %cmp39, label %cleanup, label %if.end42, !dbg !1290

if.end42:                                         ; preds = %if.end37
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1291
  %7 = load i32, ptr %colorspace, align 4, !dbg !1291, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %7, metadata !1294, metadata !DIExpression()), !dbg !1301
  switch i32 %7, label %if.end48 [
    i32 19, label %if.then46
    i32 17, label %if.then46
    i32 2, label %if.then46
  ], !dbg !1303

if.then46:                                        ; preds = %if.end42, %if.end42, %if.end42
  %call47 = call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !1305
  br label %if.end48, !dbg !1306

if.end48:                                         ; preds = %if.end42, %if.then46
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1206
  %8 = load ptr, ptr %call10, align 8, !dbg !1307, !tbaa !1130
  %cmp51.not1108 = icmp eq ptr %8, null, !dbg !1308
  br i1 %cmp51.not1108, label %for.end829, label %for.body53.lr.ph, !dbg !1309

for.body53.lr.ph:                                 ; preds = %if.end48
  %xi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2
  %x = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2
  %affine = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3
  %tx = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3, i32 4
  %psi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3
  %y = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3
  %ty = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3, i32 5
  %text59 = getelementptr inbounds %struct._DrawInfo, ptr %call27, i64 0, i32 21
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2
  %interline_spacing = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 47
  %gravity = getelementptr inbounds %struct._DrawInfo, ptr %call27, i64 0, i32 4
  %ry505 = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3, i32 2
  %width511 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3
  %bounds512 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8
  %conv520 = uitofp i64 %i.0.lcssa to double
  %sub521 = fadd double %conv520, -1.000000e+00
  %height528 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  %sy539 = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3, i32 3
  %rx544 = getelementptr inbounds %struct._DrawInfo, ptr %call28, i64 0, i32 3, i32 1
  %y562 = getelementptr inbounds %struct._PointInfo, ptr %offset, i64 0, i32 1
  %neg399 = fneg double %sub521
  %sub319 = add nsw i64 %i.0.lcssa, -1
  %align = getelementptr inbounds %struct._DrawInfo, ptr %call27, i64 0, i32 32
  %opacity = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 33, i32 3
  %undercolor = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 33
  %affine731 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3
  %ry734 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 2
  %sy742 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 3
  %origin = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9
  %underline_thickness = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 7
  %decorate = getelementptr inbounds %struct._DrawInfo, ptr %call27, i64 0, i32 19
  %underline_position790 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 6
  br label %for.body53, !dbg !1309

for.body53:                                       ; preds = %for.body53.lr.ph, %for.inc827
  %9 = phi ptr [ %8, %for.body53.lr.ph ], [ %203, %for.inc827 ]
  %i.11109 = phi i64 [ 0, %for.body53.lr.ph ], [ %inc828, %for.inc827 ]
  call void @llvm.dbg.value(metadata i64 %i.11109, metadata !1182, metadata !DIExpression()), !dbg !1206
  %10 = load double, ptr %xi, align 8, !dbg !1310, !tbaa !1311
  %11 = load i64, ptr %x, align 8, !dbg !1313, !tbaa !1314
  %conv54 = sitofp i64 %11 to double, !dbg !1315
  %sub = fsub double %10, %conv54, !dbg !1316
  store double %sub, ptr %tx, align 8, !dbg !1317, !tbaa !1318
  %12 = load double, ptr %psi, align 8, !dbg !1319, !tbaa !1320
  %13 = load i64, ptr %y, align 8, !dbg !1321, !tbaa !1322
  %conv56 = sitofp i64 %13 to double, !dbg !1323
  %sub57 = fsub double %12, %conv56, !dbg !1324
  store double %sub57, ptr %ty, align 8, !dbg !1325, !tbaa !1326
  %call61 = call ptr @CloneString(ptr noundef nonnull %text59, ptr noundef nonnull %9) #11, !dbg !1327
  %call62 = call i32 @GetTypeMetrics(ptr noundef nonnull %image, ptr noundef %call27, ptr noundef nonnull %metrics), !dbg !1328
  %14 = load double, ptr %ascent, align 8, !dbg !1329, !tbaa !1330
  %15 = load double, ptr %descent, align 8, !dbg !1332, !tbaa !1333
  %sub63 = fsub double %14, %15, !dbg !1334
  %16 = load double, ptr %interline_spacing, align 8, !dbg !1335, !tbaa !1336
  %add = fadd double %sub63, %16, !dbg !1337
  %add64 = fadd double %add, 5.000000e-01, !dbg !1338
  %conv65 = fptosi double %add64 to i64, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %conv65, metadata !1198, metadata !DIExpression()), !dbg !1206
  %17 = load i32, ptr %gravity, align 8, !dbg !1340, !tbaa !1341
  switch i32 %17, label %sw.default [
    i32 9, label %sw.bb563
    i32 1, label %sw.bb81
    i32 2, label %sw.bb118
    i32 3, label %sw.bb173
    i32 4, label %sw.bb230
    i32 10, label %sw.bb288
    i32 5, label %sw.bb288
    i32 6, label %sw.bb366
    i32 7, label %sw.bb443
    i32 8, label %sw.bb492
  ], !dbg !1342

sw.default:                                       ; preds = %for.body53
  %18 = load double, ptr %tx, align 8, !dbg !1343, !tbaa !1318
  %conv68 = sitofp i64 %i.11109 to double, !dbg !1346
  %19 = load double, ptr %ry505, align 8, !dbg !1347, !tbaa !1348
  %mul = fmul double %19, %conv68, !dbg !1349
  %conv70 = uitofp i64 %conv65 to double, !dbg !1350
  %20 = call double @llvm.fmuladd.f64(double %mul, double %conv70, double %18), !dbg !1351
  store double %20, ptr %offset, align 8, !dbg !1352, !tbaa !1353
  %21 = load double, ptr %ty, align 8, !dbg !1354, !tbaa !1326
  %22 = load double, ptr %sy539, align 8, !dbg !1355, !tbaa !1356
  %mul77 = fmul double %22, %conv68, !dbg !1357
  %23 = call double @llvm.fmuladd.f64(double %mul77, double %conv70, double %21), !dbg !1358
  br label %sw.epilog, !dbg !1359

sw.bb81:                                          ; preds = %for.body53
  %24 = load i64, ptr %geometry, align 8, !dbg !1360, !tbaa !1362
  %cmp82 = icmp eq i64 %24, 0, !dbg !1363
  %cond = select i1 %cmp82, double -1.000000e+00, double 1.000000e+00, !dbg !1364
  %25 = load double, ptr %tx, align 8, !dbg !1365, !tbaa !1318
  %conv87 = sitofp i64 %i.11109 to double, !dbg !1366
  %26 = load double, ptr %ry505, align 8, !dbg !1367, !tbaa !1348
  %mul90 = fmul double %26, %conv87, !dbg !1368
  %conv91 = uitofp i64 %conv65 to double, !dbg !1369
  %mul92 = fmul double %mul90, %conv91, !dbg !1370
  %27 = call double @llvm.fmuladd.f64(double %cond, double %25, double %mul92), !dbg !1371
  %add97 = fadd double %14, %15, !dbg !1372
  %28 = call double @llvm.fmuladd.f64(double %26, double %add97, double %27), !dbg !1373
  store double %28, ptr %offset, align 8, !dbg !1374, !tbaa !1353
  %29 = load i64, ptr %height528, align 8, !dbg !1375, !tbaa !1376
  %cmp101 = icmp eq i64 %29, 0, !dbg !1377
  %cond103 = select i1 %cmp101, double -1.000000e+00, double 1.000000e+00, !dbg !1378
  %30 = load double, ptr %ty, align 8, !dbg !1379, !tbaa !1326
  %31 = load double, ptr %sy539, align 8, !dbg !1380, !tbaa !1356
  %mul110 = fmul double %31, %conv87, !dbg !1381
  %mul112 = fmul double %mul110, %conv91, !dbg !1382
  %32 = call double @llvm.fmuladd.f64(double %cond103, double %30, double %mul112), !dbg !1383
  %33 = call double @llvm.fmuladd.f64(double %31, double %14, double %32), !dbg !1384
  br label %sw.epilog, !dbg !1385

sw.bb118:                                         ; preds = %for.body53
  %34 = load i64, ptr %geometry, align 8, !dbg !1386, !tbaa !1362
  %cmp120 = icmp eq i64 %34, 0, !dbg !1388
  %cond122 = select i1 %cmp120, double -1.000000e+00, double 1.000000e+00, !dbg !1389
  %35 = load double, ptr %tx, align 8, !dbg !1390, !tbaa !1318
  %conv127 = uitofp i64 %34 to double, !dbg !1391
  %div = fmul double %conv127, 5.000000e-01, !dbg !1392
  %36 = call double @llvm.fmuladd.f64(double %cond122, double %35, double %div), !dbg !1393
  %conv128 = sitofp i64 %i.11109 to double, !dbg !1394
  %37 = load double, ptr %ry505, align 8, !dbg !1395, !tbaa !1348
  %mul131 = fmul double %37, %conv128, !dbg !1396
  %conv132 = uitofp i64 %conv65 to double, !dbg !1397
  %38 = call double @llvm.fmuladd.f64(double %mul131, double %conv132, double %36), !dbg !1398
  %39 = load double, ptr %affine, align 8, !dbg !1399, !tbaa !1400
  %40 = load double, ptr %width511, align 8, !dbg !1401, !tbaa !1402
  %41 = load double, ptr %bounds512, align 8, !dbg !1403, !tbaa !1404
  %add136 = fadd double %40, %41, !dbg !1405
  %mul137 = fmul double %39, %add136, !dbg !1406
  %div138 = fmul double %mul137, 5.000000e-01, !dbg !1407
  %sub139 = fsub double %38, %div138, !dbg !1408
  %add144 = fadd double %14, %15, !dbg !1409
  %42 = call double @llvm.fmuladd.f64(double %37, double %add144, double %sub139), !dbg !1410
  store double %42, ptr %offset, align 8, !dbg !1411, !tbaa !1353
  %43 = load i64, ptr %height528, align 8, !dbg !1412, !tbaa !1376
  %cmp148 = icmp eq i64 %43, 0, !dbg !1413
  %cond150 = select i1 %cmp148, double -1.000000e+00, double 1.000000e+00, !dbg !1414
  %44 = load double, ptr %ty, align 8, !dbg !1415, !tbaa !1326
  %45 = load double, ptr %sy539, align 8, !dbg !1416, !tbaa !1356
  %mul157 = fmul double %45, %conv128, !dbg !1417
  %mul159 = fmul double %mul157, %conv132, !dbg !1418
  %46 = call double @llvm.fmuladd.f64(double %cond150, double %44, double %mul159), !dbg !1419
  %47 = call double @llvm.fmuladd.f64(double %45, double %14, double %46), !dbg !1420
  %48 = load double, ptr %rx544, align 8, !dbg !1421, !tbaa !1422
  %sub168 = fsub double %40, %41, !dbg !1423
  %mul169 = fmul double %sub168, %48, !dbg !1424
  %div170 = fmul double %mul169, 5.000000e-01, !dbg !1425
  %sub171 = fsub double %47, %div170, !dbg !1426
  br label %sw.epilog, !dbg !1427

sw.bb173:                                         ; preds = %for.body53
  %49 = load i64, ptr %geometry, align 8, !dbg !1428, !tbaa !1362
  %cmp175 = icmp eq i64 %49, 0, !dbg !1430
  %cond177 = select i1 %cmp175, double 1.000000e+00, double -1.000000e+00, !dbg !1431
  %50 = load double, ptr %tx, align 8, !dbg !1432, !tbaa !1318
  %conv182 = uitofp i64 %49 to double, !dbg !1433
  %51 = call double @llvm.fmuladd.f64(double %cond177, double %50, double %conv182), !dbg !1434
  %conv183 = sitofp i64 %i.11109 to double, !dbg !1435
  %52 = load double, ptr %ry505, align 8, !dbg !1436, !tbaa !1348
  %mul186 = fmul double %52, %conv183, !dbg !1437
  %conv187 = uitofp i64 %conv65 to double, !dbg !1438
  %53 = call double @llvm.fmuladd.f64(double %mul186, double %conv187, double %51), !dbg !1439
  %54 = load double, ptr %affine, align 8, !dbg !1440, !tbaa !1400
  %55 = load double, ptr %width511, align 8, !dbg !1441, !tbaa !1402
  %56 = load double, ptr %bounds512, align 8, !dbg !1442, !tbaa !1404
  %add194 = fadd double %55, %56, !dbg !1443
  %neg = fneg double %54, !dbg !1444
  %57 = call double @llvm.fmuladd.f64(double %neg, double %add194, double %53), !dbg !1444
  %add200 = fadd double %14, %15, !dbg !1445
  %58 = call double @llvm.fmuladd.f64(double %52, double %add200, double %57), !dbg !1446
  %sub202 = fadd double %58, -1.000000e+00, !dbg !1447
  store double %sub202, ptr %offset, align 8, !dbg !1448, !tbaa !1353
  %59 = load i64, ptr %height528, align 8, !dbg !1449, !tbaa !1376
  %cmp205 = icmp eq i64 %59, 0, !dbg !1450
  %cond207 = select i1 %cmp205, double -1.000000e+00, double 1.000000e+00, !dbg !1451
  %60 = load double, ptr %ty, align 8, !dbg !1452, !tbaa !1326
  %61 = load double, ptr %sy539, align 8, !dbg !1453, !tbaa !1356
  %mul214 = fmul double %61, %conv183, !dbg !1454
  %mul216 = fmul double %mul214, %conv187, !dbg !1455
  %62 = call double @llvm.fmuladd.f64(double %cond207, double %60, double %mul216), !dbg !1456
  %63 = call double @llvm.fmuladd.f64(double %61, double %14, double %62), !dbg !1457
  %64 = load double, ptr %rx544, align 8, !dbg !1458, !tbaa !1422
  %sub226 = fsub double %55, %56, !dbg !1459
  %neg228 = fneg double %64, !dbg !1460
  %65 = call double @llvm.fmuladd.f64(double %neg228, double %sub226, double %63), !dbg !1460
  br label %sw.epilog, !dbg !1461

sw.bb230:                                         ; preds = %for.body53
  %66 = load i64, ptr %geometry, align 8, !dbg !1462, !tbaa !1362
  %cmp232 = icmp eq i64 %66, 0, !dbg !1464
  %cond234 = select i1 %cmp232, double -1.000000e+00, double 1.000000e+00, !dbg !1465
  %67 = load double, ptr %tx, align 8, !dbg !1466, !tbaa !1318
  %conv238 = sitofp i64 %i.11109 to double, !dbg !1467
  %68 = load double, ptr %ry505, align 8, !dbg !1468, !tbaa !1348
  %mul241 = fmul double %68, %conv238, !dbg !1469
  %conv242 = uitofp i64 %conv65 to double, !dbg !1470
  %mul243 = fmul double %mul241, %conv242, !dbg !1471
  %69 = call double @llvm.fmuladd.f64(double %cond234, double %67, double %mul243), !dbg !1472
  %add248 = fadd double %14, %15, !dbg !1473
  %70 = call double @llvm.fmuladd.f64(double %neg399, double %conv242, double %add248), !dbg !1474
  %mul254 = fmul double %70, %68, !dbg !1475
  %div255 = fmul double %mul254, 5.000000e-01, !dbg !1476
  %add256 = fadd double %div255, %69, !dbg !1477
  store double %add256, ptr %offset, align 8, !dbg !1478, !tbaa !1353
  %71 = load i64, ptr %height528, align 8, !dbg !1479, !tbaa !1376
  %cmp259 = icmp eq i64 %71, 0, !dbg !1480
  %cond261 = select i1 %cmp259, double -1.000000e+00, double 1.000000e+00, !dbg !1481
  %72 = load double, ptr %ty, align 8, !dbg !1482, !tbaa !1326
  %conv266 = uitofp i64 %71 to double, !dbg !1483
  %div267 = fmul double %conv266, 5.000000e-01, !dbg !1484
  %73 = call double @llvm.fmuladd.f64(double %cond261, double %72, double %div267), !dbg !1485
  %74 = load double, ptr %sy539, align 8, !dbg !1486, !tbaa !1356
  %mul271 = fmul double %74, %conv238, !dbg !1487
  %75 = call double @llvm.fmuladd.f64(double %mul271, double %conv242, double %73), !dbg !1488
  %mul284 = fmul double %70, %74, !dbg !1489
  %div285 = fmul double %mul284, 5.000000e-01, !dbg !1490
  %add286 = fadd double %75, %div285, !dbg !1491
  br label %sw.epilog, !dbg !1492

sw.bb288:                                         ; preds = %for.body53, %for.body53
  %76 = load i64, ptr %geometry, align 8, !dbg !1493, !tbaa !1362
  %cmp290 = icmp eq i64 %76, 0, !dbg !1495
  %cond292 = select i1 %cmp290, double -1.000000e+00, double 1.000000e+00, !dbg !1496
  %77 = load double, ptr %tx, align 8, !dbg !1497, !tbaa !1318
  %conv297 = uitofp i64 %76 to double, !dbg !1498
  %div298 = fmul double %conv297, 5.000000e-01, !dbg !1499
  %78 = call double @llvm.fmuladd.f64(double %cond292, double %77, double %div298), !dbg !1500
  %conv299 = sitofp i64 %i.11109 to double, !dbg !1501
  %79 = load double, ptr %ry505, align 8, !dbg !1502, !tbaa !1348
  %mul302 = fmul double %79, %conv299, !dbg !1503
  %conv303 = uitofp i64 %conv65 to double, !dbg !1504
  %80 = call double @llvm.fmuladd.f64(double %mul302, double %conv303, double %78), !dbg !1505
  %81 = load double, ptr %affine, align 8, !dbg !1506, !tbaa !1400
  %82 = load double, ptr %width511, align 8, !dbg !1507, !tbaa !1402
  %83 = load double, ptr %bounds512, align 8, !dbg !1508, !tbaa !1404
  %add310 = fadd double %82, %83, !dbg !1509
  %mul311 = fmul double %81, %add310, !dbg !1510
  %div312 = fmul double %mul311, 5.000000e-01, !dbg !1511
  %sub313 = fsub double %80, %div312, !dbg !1512
  %add318 = fadd double %14, %15, !dbg !1513
  %mul320 = mul i64 %sub319, %conv65, !dbg !1514
  %conv321 = uitofp i64 %mul320 to double, !dbg !1515
  %sub322 = fsub double %add318, %conv321, !dbg !1516
  %mul323 = fmul double %sub322, %79, !dbg !1517
  %div324 = fmul double %mul323, 5.000000e-01, !dbg !1518
  %add325 = fadd double %div324, %sub313, !dbg !1519
  store double %add325, ptr %offset, align 8, !dbg !1520, !tbaa !1353
  %84 = load i64, ptr %height528, align 8, !dbg !1521, !tbaa !1376
  %cmp328 = icmp eq i64 %84, 0, !dbg !1522
  %cond330 = select i1 %cmp328, double -1.000000e+00, double 1.000000e+00, !dbg !1523
  %85 = load double, ptr %ty, align 8, !dbg !1524, !tbaa !1326
  %conv335 = uitofp i64 %84 to double, !dbg !1525
  %div336 = fmul double %conv335, 5.000000e-01, !dbg !1526
  %86 = call double @llvm.fmuladd.f64(double %cond330, double %85, double %div336), !dbg !1527
  %87 = load double, ptr %sy539, align 8, !dbg !1528, !tbaa !1356
  %mul340 = fmul double %87, %conv299, !dbg !1529
  %88 = call double @llvm.fmuladd.f64(double %mul340, double %conv303, double %86), !dbg !1530
  %89 = load double, ptr %rx544, align 8, !dbg !1531, !tbaa !1422
  %mul349 = fmul double %add310, %89, !dbg !1532
  %div350 = fmul double %mul349, 5.000000e-01, !dbg !1533
  %sub351 = fsub double %88, %div350, !dbg !1534
  %90 = call double @llvm.fmuladd.f64(double %neg399, double %conv303, double %add318), !dbg !1535
  %mul362 = fmul double %90, %87, !dbg !1536
  %div363 = fmul double %mul362, 5.000000e-01, !dbg !1537
  %add364 = fadd double %div363, %sub351, !dbg !1538
  br label %sw.epilog, !dbg !1539

sw.bb366:                                         ; preds = %for.body53
  %91 = load i64, ptr %geometry, align 8, !dbg !1540, !tbaa !1362
  %cmp368 = icmp eq i64 %91, 0, !dbg !1542
  %cond370 = select i1 %cmp368, double 1.000000e+00, double -1.000000e+00, !dbg !1543
  %92 = load double, ptr %tx, align 8, !dbg !1544, !tbaa !1318
  %conv375 = uitofp i64 %91 to double, !dbg !1545
  %93 = call double @llvm.fmuladd.f64(double %cond370, double %92, double %conv375), !dbg !1546
  %conv376 = sitofp i64 %i.11109 to double, !dbg !1547
  %94 = load double, ptr %ry505, align 8, !dbg !1548, !tbaa !1348
  %mul379 = fmul double %94, %conv376, !dbg !1549
  %conv380 = uitofp i64 %conv65 to double, !dbg !1550
  %95 = call double @llvm.fmuladd.f64(double %mul379, double %conv380, double %93), !dbg !1551
  %96 = load double, ptr %affine, align 8, !dbg !1552, !tbaa !1400
  %97 = load double, ptr %width511, align 8, !dbg !1553, !tbaa !1402
  %98 = load double, ptr %bounds512, align 8, !dbg !1554, !tbaa !1404
  %add387 = fadd double %97, %98, !dbg !1555
  %neg389 = fneg double %96, !dbg !1556
  %99 = call double @llvm.fmuladd.f64(double %neg389, double %add387, double %95), !dbg !1556
  %add394 = fadd double %14, %15, !dbg !1557
  %100 = call double @llvm.fmuladd.f64(double %neg399, double %conv380, double %add394), !dbg !1558
  %mul400 = fmul double %100, %94, !dbg !1559
  %div401 = fmul double %mul400, 5.000000e-01, !dbg !1560
  %add402 = fadd double %div401, %99, !dbg !1561
  %sub403 = fadd double %add402, -1.000000e+00, !dbg !1562
  store double %sub403, ptr %offset, align 8, !dbg !1563, !tbaa !1353
  %101 = load i64, ptr %height528, align 8, !dbg !1564, !tbaa !1376
  %cmp406 = icmp eq i64 %101, 0, !dbg !1565
  %cond408 = select i1 %cmp406, double -1.000000e+00, double 1.000000e+00, !dbg !1566
  %102 = load double, ptr %ty, align 8, !dbg !1567, !tbaa !1326
  %conv413 = uitofp i64 %101 to double, !dbg !1568
  %div414 = fmul double %conv413, 5.000000e-01, !dbg !1569
  %103 = call double @llvm.fmuladd.f64(double %cond408, double %102, double %div414), !dbg !1570
  %104 = load double, ptr %sy539, align 8, !dbg !1571, !tbaa !1356
  %mul418 = fmul double %104, %conv376, !dbg !1572
  %105 = call double @llvm.fmuladd.f64(double %mul418, double %conv380, double %103), !dbg !1573
  %106 = load double, ptr %rx544, align 8, !dbg !1574, !tbaa !1422
  %neg428 = fneg double %106, !dbg !1575
  %107 = call double @llvm.fmuladd.f64(double %neg428, double %add387, double %105), !dbg !1575
  %mul439 = fmul double %100, %104, !dbg !1576
  %div440 = fmul double %mul439, 5.000000e-01, !dbg !1577
  %add441 = fadd double %div440, %107, !dbg !1578
  br label %sw.epilog, !dbg !1579

sw.bb443:                                         ; preds = %for.body53
  %108 = load i64, ptr %geometry, align 8, !dbg !1580, !tbaa !1362
  %cmp445 = icmp eq i64 %108, 0, !dbg !1582
  %cond447 = select i1 %cmp445, double -1.000000e+00, double 1.000000e+00, !dbg !1583
  %109 = load double, ptr %tx, align 8, !dbg !1584, !tbaa !1318
  %conv451 = sitofp i64 %i.11109 to double, !dbg !1585
  %110 = load double, ptr %ry505, align 8, !dbg !1586, !tbaa !1348
  %mul454 = fmul double %110, %conv451, !dbg !1587
  %conv455 = uitofp i64 %conv65 to double, !dbg !1588
  %mul456 = fmul double %mul454, %conv455, !dbg !1589
  %111 = call double @llvm.fmuladd.f64(double %cond447, double %109, double %mul456), !dbg !1590
  %112 = fneg double %110, !dbg !1591
  %neg464 = fmul double %sub521, %112, !dbg !1591
  %113 = call double @llvm.fmuladd.f64(double %neg464, double %conv455, double %111), !dbg !1591
  store double %113, ptr %offset, align 8, !dbg !1592, !tbaa !1353
  %114 = load i64, ptr %height528, align 8, !dbg !1593, !tbaa !1376
  %cmp467 = icmp eq i64 %114, 0, !dbg !1594
  %cond469 = select i1 %cmp467, double 1.000000e+00, double -1.000000e+00, !dbg !1595
  %115 = load double, ptr %ty, align 8, !dbg !1596, !tbaa !1326
  %conv474 = uitofp i64 %114 to double, !dbg !1597
  %116 = call double @llvm.fmuladd.f64(double %cond469, double %115, double %conv474), !dbg !1598
  %117 = load double, ptr %sy539, align 8, !dbg !1599, !tbaa !1356
  %mul478 = fmul double %117, %conv451, !dbg !1600
  %118 = call double @llvm.fmuladd.f64(double %mul478, double %conv455, double %116), !dbg !1601
  %119 = fneg double %117, !dbg !1602
  %neg488 = fmul double %sub521, %119, !dbg !1602
  %120 = call double @llvm.fmuladd.f64(double %neg488, double %conv455, double %118), !dbg !1602
  %add490 = fadd double %15, %120, !dbg !1603
  br label %sw.epilog, !dbg !1604

sw.bb492:                                         ; preds = %for.body53
  %121 = load i64, ptr %geometry, align 8, !dbg !1605, !tbaa !1362
  %cmp494 = icmp eq i64 %121, 0, !dbg !1607
  %cond496 = select i1 %cmp494, double -1.000000e+00, double 1.000000e+00, !dbg !1608
  %122 = load double, ptr %tx, align 8, !dbg !1609, !tbaa !1318
  %conv501 = uitofp i64 %121 to double, !dbg !1610
  %div502 = fmul double %conv501, 5.000000e-01, !dbg !1611
  %123 = call double @llvm.fmuladd.f64(double %cond496, double %122, double %div502), !dbg !1612
  %conv503 = sitofp i64 %i.11109 to double, !dbg !1613
  %124 = load double, ptr %ry505, align 8, !dbg !1614, !tbaa !1348
  %mul506 = fmul double %124, %conv503, !dbg !1615
  %conv507 = uitofp i64 %conv65 to double, !dbg !1616
  %125 = call double @llvm.fmuladd.f64(double %mul506, double %conv507, double %123), !dbg !1617
  %126 = load double, ptr %affine, align 8, !dbg !1618, !tbaa !1400
  %127 = load double, ptr %width511, align 8, !dbg !1619, !tbaa !1402
  %128 = load double, ptr %bounds512, align 8, !dbg !1620, !tbaa !1404
  %add514 = fadd double %127, %128, !dbg !1621
  %mul515 = fmul double %126, %add514, !dbg !1622
  %div516 = fmul double %mul515, 5.000000e-01, !dbg !1623
  %sub517 = fsub double %125, %div516, !dbg !1624
  %mul522 = fmul double %sub521, %124, !dbg !1625
  %mul524 = fmul double %mul522, %conv507, !dbg !1626
  %div525 = fmul double %mul524, 5.000000e-01, !dbg !1627
  %sub526 = fsub double %sub517, %div525, !dbg !1628
  store double %sub526, ptr %offset, align 8, !dbg !1629, !tbaa !1353
  %129 = load i64, ptr %height528, align 8, !dbg !1630, !tbaa !1376
  %cmp529 = icmp eq i64 %129, 0, !dbg !1631
  %cond531 = select i1 %cmp529, double 1.000000e+00, double -1.000000e+00, !dbg !1632
  %130 = load double, ptr %ty, align 8, !dbg !1633, !tbaa !1326
  %conv536 = uitofp i64 %129 to double, !dbg !1634
  %131 = call double @llvm.fmuladd.f64(double %cond531, double %130, double %conv536), !dbg !1635
  %132 = load double, ptr %sy539, align 8, !dbg !1636, !tbaa !1356
  %mul540 = fmul double %132, %conv503, !dbg !1637
  %133 = call double @llvm.fmuladd.f64(double %mul540, double %conv507, double %131), !dbg !1638
  %134 = load double, ptr %rx544, align 8, !dbg !1639, !tbaa !1422
  %mul549 = fmul double %add514, %134, !dbg !1640
  %div550 = fmul double %mul549, 5.000000e-01, !dbg !1641
  %sub551 = fsub double %133, %div550, !dbg !1642
  %135 = fneg double %132, !dbg !1643
  %neg559 = fmul double %sub521, %135, !dbg !1643
  %136 = call double @llvm.fmuladd.f64(double %neg559, double %conv507, double %sub551), !dbg !1643
  %add561 = fadd double %15, %136, !dbg !1644
  br label %sw.epilog, !dbg !1645

sw.bb563:                                         ; preds = %for.body53
  %137 = load i64, ptr %geometry, align 8, !dbg !1646, !tbaa !1362
  %cmp565 = icmp eq i64 %137, 0, !dbg !1648
  %cond567 = select i1 %cmp565, double 1.000000e+00, double -1.000000e+00, !dbg !1649
  %138 = load double, ptr %tx, align 8, !dbg !1650, !tbaa !1318
  %conv572 = uitofp i64 %137 to double, !dbg !1651
  %139 = call double @llvm.fmuladd.f64(double %cond567, double %138, double %conv572), !dbg !1652
  %conv573 = sitofp i64 %i.11109 to double, !dbg !1653
  %140 = load double, ptr %ry505, align 8, !dbg !1654, !tbaa !1348
  %mul576 = fmul double %140, %conv573, !dbg !1655
  %conv577 = uitofp i64 %conv65 to double, !dbg !1656
  %141 = call double @llvm.fmuladd.f64(double %mul576, double %conv577, double %139), !dbg !1657
  %142 = load double, ptr %affine, align 8, !dbg !1658, !tbaa !1400
  %143 = load double, ptr %width511, align 8, !dbg !1659, !tbaa !1402
  %144 = load double, ptr %bounds512, align 8, !dbg !1660, !tbaa !1404
  %add584 = fadd double %143, %144, !dbg !1661
  %neg586 = fneg double %142, !dbg !1662
  %145 = call double @llvm.fmuladd.f64(double %neg586, double %add584, double %141), !dbg !1662
  %146 = fneg double %140, !dbg !1663
  %neg594 = fmul double %sub521, %146, !dbg !1663
  %147 = call double @llvm.fmuladd.f64(double %neg594, double %conv577, double %145), !dbg !1663
  %sub595 = fadd double %147, -1.000000e+00, !dbg !1664
  store double %sub595, ptr %offset, align 8, !dbg !1665, !tbaa !1353
  %148 = load i64, ptr %height528, align 8, !dbg !1666, !tbaa !1376
  %cmp598 = icmp eq i64 %148, 0, !dbg !1667
  %cond600 = select i1 %cmp598, double 1.000000e+00, double -1.000000e+00, !dbg !1668
  %149 = load double, ptr %ty, align 8, !dbg !1669, !tbaa !1326
  %conv605 = uitofp i64 %148 to double, !dbg !1670
  %150 = call double @llvm.fmuladd.f64(double %cond600, double %149, double %conv605), !dbg !1671
  %151 = load double, ptr %sy539, align 8, !dbg !1672, !tbaa !1356
  %mul609 = fmul double %151, %conv573, !dbg !1673
  %152 = call double @llvm.fmuladd.f64(double %mul609, double %conv577, double %150), !dbg !1674
  %153 = load double, ptr %rx544, align 8, !dbg !1675, !tbaa !1422
  %neg619 = fneg double %153, !dbg !1676
  %154 = call double @llvm.fmuladd.f64(double %neg619, double %add584, double %152), !dbg !1676
  %155 = fneg double %151, !dbg !1677
  %neg627 = fmul double %sub521, %155, !dbg !1677
  %156 = call double @llvm.fmuladd.f64(double %neg627, double %conv577, double %154), !dbg !1677
  %add629 = fadd double %15, %156, !dbg !1678
  br label %sw.epilog, !dbg !1679

sw.epilog:                                        ; preds = %sw.bb563, %sw.bb492, %sw.bb443, %sw.bb366, %sw.bb288, %sw.bb230, %sw.bb173, %sw.bb118, %sw.bb81, %sw.default
  %add629.sink = phi double [ %add629, %sw.bb563 ], [ %add561, %sw.bb492 ], [ %add490, %sw.bb443 ], [ %add441, %sw.bb366 ], [ %add364, %sw.bb288 ], [ %add286, %sw.bb230 ], [ %65, %sw.bb173 ], [ %sub171, %sw.bb118 ], [ %33, %sw.bb81 ], [ %23, %sw.default ]
  %157 = phi double [ %sub595, %sw.bb563 ], [ %sub526, %sw.bb492 ], [ %113, %sw.bb443 ], [ %sub403, %sw.bb366 ], [ %add325, %sw.bb288 ], [ %add256, %sw.bb230 ], [ %sub202, %sw.bb173 ], [ %42, %sw.bb118 ], [ %28, %sw.bb81 ], [ %20, %sw.default ]
  %158 = phi double [ %151, %sw.bb563 ], [ %132, %sw.bb492 ], [ %117, %sw.bb443 ], [ %104, %sw.bb366 ], [ %87, %sw.bb288 ], [ %74, %sw.bb230 ], [ %61, %sw.bb173 ], [ %45, %sw.bb118 ], [ %31, %sw.bb81 ], [ %22, %sw.default ]
  %159 = phi double [ %149, %sw.bb563 ], [ %130, %sw.bb492 ], [ %115, %sw.bb443 ], [ %102, %sw.bb366 ], [ %85, %sw.bb288 ], [ %72, %sw.bb230 ], [ %60, %sw.bb173 ], [ %44, %sw.bb118 ], [ %30, %sw.bb81 ], [ %21, %sw.default ]
  %160 = phi double [ %140, %sw.bb563 ], [ %124, %sw.bb492 ], [ %110, %sw.bb443 ], [ %94, %sw.bb366 ], [ %79, %sw.bb288 ], [ %68, %sw.bb230 ], [ %52, %sw.bb173 ], [ %37, %sw.bb118 ], [ %26, %sw.bb81 ], [ %19, %sw.default ]
  %161 = phi double [ %138, %sw.bb563 ], [ %122, %sw.bb492 ], [ %109, %sw.bb443 ], [ %92, %sw.bb366 ], [ %77, %sw.bb288 ], [ %67, %sw.bb230 ], [ %50, %sw.bb173 ], [ %35, %sw.bb118 ], [ %25, %sw.bb81 ], [ %18, %sw.default ]
  store double %add629.sink, ptr %y562, align 8, !dbg !1680, !tbaa !1681
  %162 = load i32, ptr %align, align 8, !dbg !1682, !tbaa !1683
  switch i32 %162, label %sw.epilog723 [
    i32 1, label %sw.bb631
    i32 2, label %sw.bb650
    i32 3, label %sw.bb687
  ], !dbg !1684

sw.bb631:                                         ; preds = %sw.epilog
  %conv634 = sitofp i64 %i.11109 to double, !dbg !1685
  %mul637 = fmul double %160, %conv634, !dbg !1688
  %conv638 = uitofp i64 %conv65 to double, !dbg !1689
  %163 = call double @llvm.fmuladd.f64(double %mul637, double %conv638, double %161), !dbg !1690
  store double %163, ptr %offset, align 8, !dbg !1691, !tbaa !1353
  %mul646 = fmul double %158, %conv634, !dbg !1692
  %164 = call double @llvm.fmuladd.f64(double %mul646, double %conv638, double %159), !dbg !1693
  br label %sw.epilog723.sink.split, !dbg !1694

sw.bb650:                                         ; preds = %sw.epilog
  %conv653 = sitofp i64 %i.11109 to double, !dbg !1695
  %mul656 = fmul double %160, %conv653, !dbg !1697
  %conv657 = uitofp i64 %conv65 to double, !dbg !1698
  %165 = call double @llvm.fmuladd.f64(double %mul656, double %conv657, double %161), !dbg !1699
  %166 = load double, ptr %affine, align 8, !dbg !1700, !tbaa !1400
  %167 = load double, ptr %width511, align 8, !dbg !1701, !tbaa !1402
  %168 = load double, ptr %bounds512, align 8, !dbg !1702, !tbaa !1404
  %add664 = fadd double %167, %168, !dbg !1703
  %mul665 = fmul double %166, %add664, !dbg !1704
  %div666 = fmul double %mul665, 5.000000e-01, !dbg !1705
  %sub667 = fsub double %165, %div666, !dbg !1706
  store double %sub667, ptr %offset, align 8, !dbg !1707, !tbaa !1353
  %mul674 = fmul double %158, %conv653, !dbg !1708
  %169 = call double @llvm.fmuladd.f64(double %mul674, double %conv657, double %159), !dbg !1709
  %170 = load double, ptr %rx544, align 8, !dbg !1710, !tbaa !1422
  %mul683 = fmul double %add664, %170, !dbg !1711
  %div684 = fmul double %mul683, 5.000000e-01, !dbg !1712
  %sub685 = fsub double %169, %div684, !dbg !1713
  br label %sw.epilog723.sink.split, !dbg !1714

sw.bb687:                                         ; preds = %sw.epilog
  %conv690 = sitofp i64 %i.11109 to double, !dbg !1715
  %mul693 = fmul double %160, %conv690, !dbg !1717
  %conv694 = uitofp i64 %conv65 to double, !dbg !1718
  %171 = call double @llvm.fmuladd.f64(double %mul693, double %conv694, double %161), !dbg !1719
  %172 = load double, ptr %affine, align 8, !dbg !1720, !tbaa !1400
  %173 = load double, ptr %width511, align 8, !dbg !1721, !tbaa !1402
  %174 = load double, ptr %bounds512, align 8, !dbg !1722, !tbaa !1404
  %add701 = fadd double %173, %174, !dbg !1723
  %neg703 = fneg double %172, !dbg !1724
  %175 = call double @llvm.fmuladd.f64(double %neg703, double %add701, double %171), !dbg !1724
  store double %175, ptr %offset, align 8, !dbg !1725, !tbaa !1353
  %mul710 = fmul double %158, %conv690, !dbg !1726
  %176 = call double @llvm.fmuladd.f64(double %mul710, double %conv694, double %159), !dbg !1727
  %177 = load double, ptr %rx544, align 8, !dbg !1728, !tbaa !1422
  %neg720 = fneg double %177, !dbg !1729
  %178 = call double @llvm.fmuladd.f64(double %neg720, double %add701, double %176), !dbg !1729
  br label %sw.epilog723.sink.split, !dbg !1730

sw.epilog723.sink.split:                          ; preds = %sw.bb631, %sw.bb650, %sw.bb687
  %.sink = phi double [ %178, %sw.bb687 ], [ %sub685, %sw.bb650 ], [ %164, %sw.bb631 ]
  %.ph1117 = phi double [ %175, %sw.bb687 ], [ %sub667, %sw.bb650 ], [ %163, %sw.bb631 ]
  store double %.sink, ptr %y562, align 8, !dbg !1731, !tbaa !1681
  br label %sw.epilog723, !dbg !1732

sw.epilog723:                                     ; preds = %sw.epilog723.sink.split, %sw.epilog
  %179 = phi double [ %add629.sink, %sw.epilog ], [ %.sink, %sw.epilog723.sink.split ]
  %180 = phi double [ %157, %sw.epilog ], [ %.ph1117, %sw.epilog723.sink.split ]
  %181 = load i16, ptr %opacity, align 2, !dbg !1732, !tbaa !1733
  %cmp725.not = icmp eq i16 %181, -1, !dbg !1734
  br i1 %cmp725.not, label %if.end757, label %if.then727, !dbg !1735

if.then727:                                       ; preds = %sw.epilog723
  %call728 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #11, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %call728, metadata !1200, metadata !DIExpression()), !dbg !1737
  %fill = getelementptr inbounds %struct._DrawInfo, ptr %call728, i64 0, i32 5, !dbg !1738
  %182 = load i64, ptr %undercolor, align 4, !dbg !1739
  store i64 %182, ptr %fill, align 4, !dbg !1739
  %affine730 = getelementptr inbounds %struct._DrawInfo, ptr %call728, i64 0, i32 3, !dbg !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %affine730, ptr noundef nonnull align 8 dereferenceable(48) %affine731, i64 48, i1 false), !dbg !1741, !tbaa.struct !1742
  %183 = load double, ptr %ry734, align 8, !dbg !1744, !tbaa !1348
  %184 = load double, ptr %ascent, align 8, !dbg !1745, !tbaa !1330
  %neg737 = fneg double %183, !dbg !1746
  %185 = call double @llvm.fmuladd.f64(double %neg737, double %184, double %180), !dbg !1746
  %tx739 = getelementptr inbounds %struct._DrawInfo, ptr %call728, i64 0, i32 3, i32 4, !dbg !1747
  store double %185, ptr %tx739, align 8, !dbg !1748, !tbaa !1318
  %186 = load double, ptr %sy742, align 8, !dbg !1749, !tbaa !1356
  %neg745 = fneg double %186, !dbg !1750
  %187 = call double @llvm.fmuladd.f64(double %neg745, double %184, double %179), !dbg !1750
  %ty747 = getelementptr inbounds %struct._DrawInfo, ptr %call728, i64 0, i32 3, i32 5, !dbg !1751
  store double %187, ptr %ty747, align 8, !dbg !1752, !tbaa !1326
  %188 = load double, ptr %origin, align 8, !dbg !1753, !tbaa !1754
  %conv750 = uitofp i64 %conv65 to double, !dbg !1755
  %call751 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %primitive, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %188, double noundef %conv750) #11, !dbg !1756
  %call754 = call ptr @CloneString(ptr noundef %call728, ptr noundef nonnull %primitive) #11, !dbg !1757
  %call755 = call i32 @DrawImage(ptr noundef nonnull %image, ptr noundef %call728) #11, !dbg !1758
  %call756 = call ptr @DestroyDrawInfo(ptr noundef %call728) #11, !dbg !1759
  br label %if.end757, !dbg !1760

if.end757:                                        ; preds = %if.then727, %sw.epilog723
  store double %180, ptr %tx, align 8, !dbg !1761, !tbaa !1318
  store double %179, ptr %ty, align 8, !dbg !1762, !tbaa !1326
  %189 = load double, ptr %underline_thickness, align 8, !dbg !1763, !tbaa !1764
  %190 = load double, ptr %width511, align 8, !dbg !1765, !tbaa !1402
  %call766 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %primitive, i64 noundef 4096, ptr noundef nonnull @.str.4, double noundef %189, double noundef %190) #11, !dbg !1766
  %191 = load i32, ptr %decorate, align 8, !dbg !1767, !tbaa !1769
  switch i32 %191, label %if.end800 [
    i32 3, label %if.then769
    i32 2, label %if.then787
  ], !dbg !1770

if.then769:                                       ; preds = %if.end757
  %192 = load double, ptr %ascent, align 8, !dbg !1771, !tbaa !1330
  %193 = load double, ptr %descent, align 8, !dbg !1773, !tbaa !1333
  %add774 = fadd double %192, %193, !dbg !1774
  %194 = load double, ptr %underline_position790, align 8, !dbg !1775, !tbaa !1776
  %sub775 = fsub double %add774, %194, !dbg !1777
  br label %if.end800.sink.split, !dbg !1778

if.then787:                                       ; preds = %if.end757
  %195 = load double, ptr %underline_position790, align 8, !dbg !1779, !tbaa !1776
  br label %if.end800.sink.split, !dbg !1782

if.end800.sink.split:                             ; preds = %if.then769, %if.then787
  %.sink1119 = phi double [ %195, %if.then787 ], [ %sub775, %if.then769 ]
  %.sink1121 = load double, ptr %sy742, align 8, !dbg !1783, !tbaa !1356
  %196 = load double, ptr %ty, align 8, !dbg !1783, !tbaa !1326
  %neg794 = fneg double %.sink1121, !dbg !1783
  %197 = call double @llvm.fmuladd.f64(double %neg794, double %.sink1119, double %196), !dbg !1783
  store double %197, ptr %ty, align 8, !dbg !1783, !tbaa !1326
  %call797 = call ptr @CloneString(ptr noundef nonnull %call28, ptr noundef nonnull %primitive) #11, !dbg !1783
  %call798 = call i32 @DrawImage(ptr noundef nonnull %image, ptr noundef nonnull %call28) #11, !dbg !1783
  br label %if.end800, !dbg !1784

if.end800:                                        ; preds = %if.end800.sink.split, %if.end757
  %call801 = call fastcc i32 @RenderType(ptr noundef nonnull %image, ptr noundef nonnull %call27, ptr noundef nonnull %offset, ptr noundef nonnull %metrics), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %call801, metadata !1179, metadata !DIExpression()), !dbg !1206
  %cmp802 = icmp eq i32 %call801, 0, !dbg !1785
  br i1 %cmp802, label %for.end829, label %if.end805, !dbg !1787

if.end805:                                        ; preds = %if.end800
  %198 = load i32, ptr %decorate, align 8, !dbg !1788, !tbaa !1769
  %cmp807 = icmp eq i32 %198, 4, !dbg !1790
  br i1 %cmp807, label %if.then809, label %for.inc827, !dbg !1791

if.then809:                                       ; preds = %if.end805
  %199 = load double, ptr %sy742, align 8, !dbg !1792, !tbaa !1356
  %conv812 = uitofp i64 %conv65 to double, !dbg !1794
  %200 = load double, ptr %underline_position790, align 8, !dbg !1795, !tbaa !1776
  %add814 = fadd double %200, %conv812, !dbg !1796
  %201 = load double, ptr %descent, align 8, !dbg !1797, !tbaa !1333
  %add816 = fadd double %add814, %201, !dbg !1798
  %mul817 = fmul double %199, %add816, !dbg !1799
  %div818 = fmul double %mul817, 5.000000e-01, !dbg !1800
  %202 = load double, ptr %ty, align 8, !dbg !1801, !tbaa !1326
  %sub821 = fsub double %202, %div818, !dbg !1801
  store double %sub821, ptr %ty, align 8, !dbg !1801, !tbaa !1326
  %call824 = call ptr @CloneString(ptr noundef nonnull %call28, ptr noundef nonnull %primitive) #11, !dbg !1802
  %call825 = call i32 @DrawImage(ptr noundef nonnull %image, ptr noundef nonnull %call28) #11, !dbg !1803
  br label %for.inc827, !dbg !1804

for.inc827:                                       ; preds = %if.end805, %if.then809
  %inc828 = add nuw nsw i64 %i.11109, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %inc828, metadata !1182, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()), !dbg !1206
  %arrayidx50 = getelementptr inbounds ptr, ptr %call10, i64 %inc828, !dbg !1307
  %203 = load ptr, ptr %arrayidx50, align 8, !dbg !1307, !tbaa !1130
  %cmp51.not = icmp eq ptr %203, null, !dbg !1308
  br i1 %cmp51.not, label %for.end829, label %for.body53, !dbg !1309, !llvm.loop !1806

for.end829:                                       ; preds = %for.inc827, %if.end800, %if.end48
  %status.1 = phi i32 [ 1, %if.end48 ], [ 0, %if.end800 ], [ 1, %for.inc827 ], !dbg !1206
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1179, metadata !DIExpression()), !dbg !1206
  %call830 = call ptr @DestroyDrawInfo(ptr noundef nonnull %call28) #11, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %call830, metadata !1169, metadata !DIExpression()), !dbg !1206
  %call831 = call ptr @DestroyDrawInfo(ptr noundef %call27) #11, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %call831, metadata !1168, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1206
  %204 = load ptr, ptr %call10, align 8, !dbg !1810, !tbaa !1130
  %cmp834.not1114 = icmp eq ptr %204, null, !dbg !1813
  br i1 %cmp834.not1114, label %for.end842, label %for.body836, !dbg !1814

for.body836:                                      ; preds = %for.end829, %for.body836
  %205 = phi ptr [ %206, %for.body836 ], [ %204, %for.end829 ]
  %arrayidx8331116 = phi ptr [ %arrayidx833, %for.body836 ], [ %call10, %for.end829 ]
  %i.21115 = phi i64 [ %inc841, %for.body836 ], [ 0, %for.end829 ]
  call void @llvm.dbg.value(metadata i64 %i.21115, metadata !1182, metadata !DIExpression()), !dbg !1206
  %call838 = call ptr @DestroyString(ptr noundef nonnull %205) #11, !dbg !1815
  store ptr %call838, ptr %arrayidx8331116, align 8, !dbg !1816, !tbaa !1130
  %inc841 = add nuw nsw i64 %i.21115, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %inc841, metadata !1182, metadata !DIExpression()), !dbg !1206
  %arrayidx833 = getelementptr inbounds ptr, ptr %call10, i64 %inc841, !dbg !1810
  %206 = load ptr, ptr %arrayidx833, align 8, !dbg !1810, !tbaa !1130
  %cmp834.not = icmp eq ptr %206, null, !dbg !1813
  br i1 %cmp834.not, label %for.end842, label %for.body836, !dbg !1814, !llvm.loop !1818

for.end842:                                       ; preds = %for.body836, %for.end829
  %call843 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call10) #11, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %call843, metadata !1167, metadata !DIExpression()), !dbg !1206
  br label %cleanup, !dbg !1821

cleanup:                                          ; preds = %if.end37, %if.end8, %if.end3, %if.end, %for.end842
  %retval.0 = phi i32 [ %status.1, %for.end842 ], [ 0, %if.end ], [ 1, %if.end3 ], [ 0, %if.end8 ], [ 0, %if.end37 ], !dbg !1206
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offset) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %primitive) #11, !dbg !1822
  ret i32 %retval.0, !dbg !1822
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1823 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1828 ptr @StringToList(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1832 ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1837 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1841 void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !1845 i32 @ParsePageGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1850 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1853 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1857 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1860 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetTypeMetrics(ptr noundef %image, ptr noundef %draw_info, ptr noundef %metrics) local_unnamed_addr #0 !dbg !1863 {
entry:
  %offset = alloca %struct._PointInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1868, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !1869, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !1870, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offset) #11, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1873, metadata !DIExpression()), !dbg !1876
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1877
  %0 = load i32, ptr %debug, align 8, !dbg !1877, !tbaa !1219
  %cmp.not = icmp eq i32 %0, 0, !dbg !1879
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1880

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1881
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1882
  br label %if.end, !dbg !1883

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %draw_info) #11, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1871, metadata !DIExpression()), !dbg !1874
  %render = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 41, !dbg !1885
  store i32 0, ptr %render, align 8, !dbg !1886, !tbaa !1887
  %direction = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 48, !dbg !1888
  store i32 0, ptr %direction, align 8, !dbg !1889, !tbaa !1890
  %call2 = tail call ptr @ResetMagickMemory(ptr noundef %metrics, i32 noundef 0, i64 noundef 120) #11, !dbg !1891
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %offset, i8 0, i64 16, i1 false), !dbg !1892
  %call3 = call fastcc i32 @RenderType(ptr noundef nonnull %image, ptr noundef %call1, ptr noundef nonnull %offset, ptr noundef %metrics), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1872, metadata !DIExpression()), !dbg !1874
  %1 = load i32, ptr %debug, align 8, !dbg !1894, !tbaa !1219
  %cmp5.not = icmp eq i32 %1, 0, !dbg !1896
  br i1 %cmp5.not, label %if.end17, label %if.then6, !dbg !1897

if.then6:                                         ; preds = %if.end
  %text = getelementptr inbounds %struct._DrawInfo, ptr %call1, i64 0, i32 21, !dbg !1898
  %2 = load ptr, ptr %text, align 8, !dbg !1898, !tbaa !1242
  %width = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3, !dbg !1899
  %3 = load double, ptr %width, align 8, !dbg !1899, !tbaa !1402
  %height = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 4, !dbg !1900
  %4 = load double, ptr %height, align 8, !dbg !1900, !tbaa !1901
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !1902
  %5 = load double, ptr %ascent, align 8, !dbg !1902, !tbaa !1330
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !1903
  %6 = load double, ptr %descent, align 8, !dbg !1903, !tbaa !1333
  %max_advance = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 5, !dbg !1904
  %7 = load double, ptr %max_advance, align 8, !dbg !1904, !tbaa !1905
  %bounds = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, !dbg !1906
  %8 = load double, ptr %bounds, align 8, !dbg !1907, !tbaa !1404
  %y1 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 1, !dbg !1908
  %9 = load double, ptr %y1, align 8, !dbg !1908, !tbaa !1909
  %x2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 2, !dbg !1910
  %10 = load double, ptr %x2, align 8, !dbg !1910, !tbaa !1911
  %y2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 3, !dbg !1912
  %11 = load double, ptr %y2, align 8, !dbg !1912, !tbaa !1913
  %origin = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, !dbg !1914
  %12 = load double, ptr %origin, align 8, !dbg !1915, !tbaa !1754
  %y12 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, i32 1, !dbg !1916
  %13 = load double, ptr %y12, align 8, !dbg !1916, !tbaa !1917
  %14 = load double, ptr %metrics, align 8, !dbg !1918, !tbaa !1919
  %y15 = getelementptr inbounds %struct._PointInfo, ptr %metrics, i64 0, i32 1, !dbg !1920
  %15 = load double, ptr %y15, align 8, !dbg !1920, !tbaa !1921
  %underline_position = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 6, !dbg !1922
  %16 = load double, ptr %underline_position, align 8, !dbg !1922, !tbaa !1776
  %underline_thickness = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 7, !dbg !1923
  %17 = load double, ptr %underline_thickness, align 8, !dbg !1923, !tbaa !1764
  %call16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.6, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17) #11, !dbg !1924
  br label %if.end17, !dbg !1925

if.end17:                                         ; preds = %if.then6, %if.end
  %call18 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %call1) #11, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offset) #11, !dbg !1927
  ret i32 %call3, !dbg !1928
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !1929 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1935 i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1936 ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RenderType(ptr noundef %image, ptr noundef %draw_info, ptr nocapture noundef readonly %offset, ptr nocapture noundef %metrics) unnamed_addr #0 !dbg !1939 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1945, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !1946, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr %offset, metadata !1947, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr null, metadata !1949, metadata !DIExpression()), !dbg !1952
  %font = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 23, !dbg !1953
  %0 = load ptr, ptr %font, align 8, !dbg !1953, !tbaa !1955
  %cmp.not = icmp eq ptr %0, null, !dbg !1956
  br i1 %cmp.not, label %land.lhs.true, label %if.then, !dbg !1957

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %0, align 1, !dbg !1958, !tbaa !1254
  switch i8 %1, label %if.end11 [
    i8 64, label %if.then4
    i8 45, label %cleanup
  ], !dbg !1961

if.then4:                                         ; preds = %if.then
  %call = tail call fastcc i32 @RenderFreetype(ptr noundef %image, ptr noundef nonnull %draw_info, ptr noundef %offset, ptr noundef %metrics), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %call, metadata !1951, metadata !DIExpression()), !dbg !1952
  br label %cleanup, !dbg !1964

if.end11:                                         ; preds = %if.then
  %call13 = tail call i32 @IsPathAccessible(ptr noundef nonnull %0) #11, !dbg !1965
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !1967
  br i1 %cmp14.not, label %if.end19, label %if.then16, !dbg !1968

if.then16:                                        ; preds = %if.end11
  %call18 = tail call fastcc i32 @RenderFreetype(ptr noundef %image, ptr noundef nonnull %draw_info, ptr noundef %offset, ptr noundef %metrics), !dbg !1969
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1951, metadata !DIExpression()), !dbg !1952
  br label %cleanup, !dbg !1971

if.end19:                                         ; preds = %if.end11
  %2 = load ptr, ptr %font, align 8, !dbg !1972, !tbaa !1955
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1973
  %call21 = tail call ptr @GetTypeInfo(ptr noundef %2, ptr noundef nonnull %exception) #11, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp22 = icmp eq ptr %call21, null, !dbg !1975
  br i1 %cmp22, label %if.then24, label %if.end102, !dbg !1977

if.then24:                                        ; preds = %if.end19
  %3 = load ptr, ptr %font, align 8, !dbg !1978, !tbaa !1955
  %call27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 872, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %3) #11, !dbg !1979
  br label %land.lhs.true, !dbg !1980

land.lhs.true:                                    ; preds = %if.then24, %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !1949, metadata !DIExpression()), !dbg !1952
  %family = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 25, !dbg !1981
  %4 = load ptr, ptr %family, align 8, !dbg !1981, !tbaa !1983
  %cmp32.not = icmp eq ptr %4, null, !dbg !1984
  br i1 %cmp32.not, label %if.end54, label %if.then34, !dbg !1985

if.then34:                                        ; preds = %land.lhs.true
  %style = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 26, !dbg !1986
  %5 = load i32, ptr %style, align 8, !dbg !1986, !tbaa !1988
  %stretch = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 27, !dbg !1989
  %6 = load i32, ptr %stretch, align 4, !dbg !1989, !tbaa !1990
  %weight = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 28, !dbg !1991
  %7 = load i64, ptr %weight, align 8, !dbg !1991, !tbaa !1992
  %exception36 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1993
  %call37 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, ptr noundef nonnull %exception36) #11, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp38 = icmp eq ptr %call37, null, !dbg !1995
  br i1 %cmp38, label %if.then40, label %if.end102, !dbg !1997

if.then40:                                        ; preds = %if.then34
  %8 = load ptr, ptr %family, align 8, !dbg !1998, !tbaa !1983
  %call43 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception36, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 881, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %8) #11, !dbg !1999
  br label %if.end54, !dbg !2000

if.end54:                                         ; preds = %land.lhs.true, %if.then40
  call void @llvm.dbg.value(metadata ptr undef, metadata !1949, metadata !DIExpression()), !dbg !1952
  %style49 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 26, !dbg !2001
  %9 = load i32, ptr %style49, align 8, !dbg !2001, !tbaa !1988
  %stretch50 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 27, !dbg !2003
  %10 = load i32, ptr %stretch50, align 4, !dbg !2003, !tbaa !1990
  %weight51 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 28, !dbg !2004
  %11 = load i64, ptr %weight51, align 8, !dbg !2004, !tbaa !1992
  %exception52 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2005
  %call53 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %10, i64 noundef %11, ptr noundef nonnull %exception52) #11, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %call53, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp55 = icmp eq ptr %call53, null, !dbg !2007
  br i1 %cmp55, label %if.end63, label %if.end102, !dbg !2009

if.end63:                                         ; preds = %if.end54
  %12 = load i32, ptr %style49, align 8, !dbg !2010, !tbaa !1988
  %13 = load i32, ptr %stretch50, align 4, !dbg !2011, !tbaa !1990
  %14 = load i64, ptr %weight51, align 8, !dbg !2012, !tbaa !1992
  %call62 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef %13, i64 noundef %14, ptr noundef nonnull %exception52) #11, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %call62, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp64 = icmp eq ptr %call62, null, !dbg !2014
  br i1 %cmp64, label %if.end72, label %if.end102, !dbg !2016

if.end72:                                         ; preds = %if.end63
  %15 = load i32, ptr %style49, align 8, !dbg !2017, !tbaa !1988
  %16 = load i32, ptr %stretch50, align 4, !dbg !2018, !tbaa !1990
  %17 = load i64, ptr %weight51, align 8, !dbg !2019, !tbaa !1992
  %call71 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.11, i32 noundef %15, i32 noundef %16, i64 noundef %17, ptr noundef nonnull %exception52) #11, !dbg !2020
  call void @llvm.dbg.value(metadata ptr %call71, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp73 = icmp eq ptr %call71, null, !dbg !2021
  br i1 %cmp73, label %if.end81, label %if.end102, !dbg !2023

if.end81:                                         ; preds = %if.end72
  %18 = load i32, ptr %style49, align 8, !dbg !2024, !tbaa !1988
  %19 = load i32, ptr %stretch50, align 4, !dbg !2025, !tbaa !1990
  %20 = load i64, ptr %weight51, align 8, !dbg !2026, !tbaa !1992
  %call80 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %19, i64 noundef %20, ptr noundef nonnull %exception52) #11, !dbg !2027
  call void @llvm.dbg.value(metadata ptr %call80, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp82 = icmp eq ptr %call80, null, !dbg !2028
  br i1 %cmp82, label %if.end90, label %if.end102, !dbg !2030

if.end90:                                         ; preds = %if.end81
  %21 = load i32, ptr %style49, align 8, !dbg !2031, !tbaa !1988
  %22 = load i32, ptr %stretch50, align 4, !dbg !2032, !tbaa !1990
  %23 = load i64, ptr %weight51, align 8, !dbg !2033, !tbaa !1992
  %call89 = tail call ptr @GetTypeInfoByFamily(ptr noundef null, i32 noundef %21, i32 noundef %22, i64 noundef %23, ptr noundef nonnull %exception52) #11, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %call89, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp91 = icmp eq ptr %call89, null, !dbg !2035
  br i1 %cmp91, label %if.end96, label %if.end102, !dbg !2037

if.end96:                                         ; preds = %if.end90
  %call95 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str.13, ptr noundef nonnull %exception52) #11, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1949, metadata !DIExpression()), !dbg !1952
  %cmp97 = icmp eq ptr %call95, null, !dbg !2039
  br i1 %cmp97, label %if.then99, label %if.end102, !dbg !2041

if.then99:                                        ; preds = %if.end96
  %call101 = tail call fastcc i32 @RenderFreetype(ptr noundef %image, ptr noundef nonnull %draw_info, ptr noundef %offset, ptr noundef %metrics), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %call101, metadata !1951, metadata !DIExpression()), !dbg !1952
  br label %cleanup, !dbg !2044

if.end102:                                        ; preds = %if.end19, %if.then34, %if.end54, %if.end63, %if.end72, %if.end81, %if.end90, %if.end96
  %type_info.7222 = phi ptr [ %call95, %if.end96 ], [ %call89, %if.end90 ], [ %call80, %if.end81 ], [ %call71, %if.end72 ], [ %call62, %if.end63 ], [ %call53, %if.end54 ], [ %call21, %if.end19 ], [ %call37, %if.then34 ]
  %call103 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %draw_info) #11, !dbg !2045
  call void @llvm.dbg.value(metadata ptr %call103, metadata !1950, metadata !DIExpression()), !dbg !1952
  %24 = load i64, ptr %type_info.7222, align 8, !dbg !2046, !tbaa !2047
  %face104 = getelementptr inbounds %struct._DrawInfo, ptr %call103, i64 0, i32 22, !dbg !2049
  store i64 %24, ptr %face104, align 8, !dbg !2050, !tbaa !2051
  %metrics105 = getelementptr inbounds %struct._TypeInfo, ptr %type_info.7222, i64 0, i32 11, !dbg !2052
  %25 = load ptr, ptr %metrics105, align 8, !dbg !2052, !tbaa !2054
  %cmp106.not = icmp eq ptr %25, null, !dbg !2055
  br i1 %cmp106.not, label %if.end112, label %if.then108, !dbg !2056

if.then108:                                       ; preds = %if.end102
  %metrics109 = getelementptr inbounds %struct._DrawInfo, ptr %call103, i64 0, i32 24, !dbg !2057
  %call111 = tail call ptr @CloneString(ptr noundef nonnull %metrics109, ptr noundef nonnull %25) #11, !dbg !2058
  br label %if.end112, !dbg !2059

if.end112:                                        ; preds = %if.then108, %if.end102
  %glyphs = getelementptr inbounds %struct._TypeInfo, ptr %type_info.7222, i64 0, i32 12, !dbg !2060
  %26 = load ptr, ptr %glyphs, align 8, !dbg !2060, !tbaa !2062
  %cmp113.not = icmp eq ptr %26, null, !dbg !2063
  br i1 %cmp113.not, label %if.end119, label %if.then115, !dbg !2064

if.then115:                                       ; preds = %if.end112
  %font116 = getelementptr inbounds %struct._DrawInfo, ptr %call103, i64 0, i32 23, !dbg !2065
  %call118 = tail call ptr @CloneString(ptr noundef nonnull %font116, ptr noundef nonnull %26) #11, !dbg !2066
  br label %if.end119, !dbg !2067

if.end119:                                        ; preds = %if.then115, %if.end112
  %call121 = tail call fastcc i32 @RenderFreetype(ptr noundef %image, ptr noundef nonnull %call103, ptr noundef %offset, ptr noundef %metrics), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %call121, metadata !1951, metadata !DIExpression()), !dbg !1952
  %call122 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %call103) #11, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %call122, metadata !1950, metadata !DIExpression()), !dbg !1952
  br label %cleanup, !dbg !2070

cleanup:                                          ; preds = %if.then, %if.end119, %if.then99, %if.then16, %if.then4
  %retval.0 = phi i32 [ %call, %if.then4 ], [ %call18, %if.then16 ], [ %call101, %if.then99 ], [ %call121, %if.end119 ], [ 0, %if.then ], !dbg !1952
  ret i32 %retval.0, !dbg !2071
}

declare !dbg !2072 ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare !dbg !2075 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @FormatMagickCaption(ptr noundef %image, ptr noundef %draw_info, i32 noundef %split, ptr noundef %metrics, ptr nocapture noundef %caption) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2084, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !2085, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 %split, metadata !2086, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !2087, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %caption, metadata !2088, metadata !DIExpression()), !dbg !2104
  %text1 = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 21, !dbg !2105
  %0 = load ptr, ptr %text1, align 8, !dbg !2105, !tbaa !1242
  %call = tail call ptr @AcquireString(ptr noundef %0) #11, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %call, metadata !2089, metadata !DIExpression()), !dbg !2104
  %1 = load ptr, ptr %text1, align 8, !dbg !2107, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %1, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr null, metadata !2093, metadata !DIExpression()), !dbg !2104
  %2 = load ptr, ptr %caption, align 8, !dbg !2108, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %2, metadata !2091, metadata !DIExpression()), !dbg !2104
  %width22 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3
  %stroke_width = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 7
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %cmp44 = icmp ne i32 %split, 0
  br label %for.cond, !dbg !2109

for.cond:                                         ; preds = %GetUTFOctets.exit293, %entry
  %q.0 = phi ptr [ %1, %entry ], [ %q.3, %GetUTFOctets.exit293 ], !dbg !2104
  %s.0 = phi ptr [ null, %entry ], [ %s.2, %GetUTFOctets.exit293 ], !dbg !2104
  %p.0 = phi ptr [ %2, %entry ], [ %add.ptr63, %GetUTFOctets.exit293 ], !dbg !2110
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2091, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !2093, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2111, metadata !DIExpression()) #11, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2130
  %cmp.i.i = icmp eq ptr %p.0, null, !dbg !2132
  br i1 %cmp.i.i, label %GetUTFCode.exit.thread, label %if.end.i.i, !dbg !2134

if.end.i.i:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2130
  %3 = load i8, ptr %p.0, align 1, !dbg !2135, !tbaa !1254
  %conv45.i.i = zext i8 %3 to i32, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %conv45.i.i, metadata !2126, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %conv45.i.i, metadata !2129, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2130
  br label %for.body.i.i, !dbg !2137

for.body.i.i:                                     ; preds = %if.end26.i.i, %if.end.i.i
  %text.pn.i.i = phi ptr [ %p.0, %if.end.i.i ], [ %text.addr.054.i.i, %if.end26.i.i ]
  %unicode.053.i.i = phi i32 [ %conv45.i.i, %if.end.i.i ], [ %or.i.i, %if.end26.i.i ]
  %i.052.i.i = phi i64 [ 0, %if.end.i.i ], [ %inc.i.i, %if.end26.i.i ]
  %text.addr.054.i.i = getelementptr inbounds i8, ptr %text.pn.i.i, i64 1, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i, metadata !2129, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %i.052.i.i, metadata !2127, metadata !DIExpression()) #11, !dbg !2130
  %arrayidx.i.i = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i, !dbg !2139
  %4 = load i32, ptr %arrayidx.i.i, align 16, !dbg !2143, !tbaa !2144
  %and3.i.i = and i32 %4, %conv45.i.i, !dbg !2146
  %code_value.i.i = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i, i32 1, !dbg !2147
  %5 = load i32, ptr %code_value.i.i, align 4, !dbg !2147, !tbaa !2148
  %cmp5.i.i = icmp eq i32 %and3.i.i, %5, !dbg !2149
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end17.i.i, !dbg !2150

if.then7.i.i:                                     ; preds = %for.body.i.i
  %utf_mask.i.i = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i, i32 2, !dbg !2151
  %6 = load i32, ptr %utf_mask.i.i, align 8, !dbg !2151, !tbaa !2153
  %and9.i.i = and i32 %6, %unicode.053.i.i, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %and9.i.i, metadata !2129, metadata !DIExpression()) #11, !dbg !2130
  %utf_value.i.i = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i, i32 3, !dbg !2155
  %7 = load i32, ptr %utf_value.i.i, align 4, !dbg !2155, !tbaa !2157
  %cmp11.i.i = icmp slt i32 %and9.i.i, %7, !dbg !2158
  br i1 %cmp11.i.i, label %GetUTFCode.exit.thread, label %GetUTFCode.exit, !dbg !2159

if.end17.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2130
  %8 = load i8, ptr %text.addr.054.i.i, align 1, !dbg !2160, !tbaa !1254
  %9 = xor i8 %8, -128, !dbg !2161
  %xor.i.i = zext i8 %9 to i32, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %xor.i.i, metadata !2128, metadata !DIExpression()) #11, !dbg !2130
  %and21.i.i = and i32 %xor.i.i, 192, !dbg !2162
  %cmp22.not.i.i = icmp eq i32 %and21.i.i, 0, !dbg !2164
  br i1 %cmp22.not.i.i, label %if.end26.i.i, label %GetUTFCode.exit.thread, !dbg !2165

if.end26.i.i:                                     ; preds = %if.end17.i.i
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2130
  %shl.i.i = shl i32 %unicode.053.i.i, 6, !dbg !2166
  %or.i.i = or i32 %shl.i.i, %xor.i.i, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %or.i.i, metadata !2129, metadata !DIExpression()) #11, !dbg !2130
  %inc.i.i = add nuw nsw i64 %i.052.i.i, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !2127, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2130
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 6, !dbg !2169
  br i1 %exitcond.not.i.i, label %GetUTFCode.exit.thread, label %for.body.i.i, !dbg !2137, !llvm.loop !2170

GetUTFCode.exit.thread:                           ; preds = %if.end17.i.i, %if.end26.i.i, %for.cond, %if.then7.i.i
  %.sink.i = phi i32 [ 22, %for.cond ], [ 84, %if.then7.i.i ], [ 84, %if.end26.i.i ], [ 84, %if.end17.i.i ]
  %call.i.i = tail call ptr @__errno_location() #12, !dbg !2130
  store i32 %.sink.i, ptr %call.i.i, align 4, !dbg !2130, !tbaa !2172
  br label %for.body, !dbg !2173

GetUTFCode.exit:                                  ; preds = %if.then7.i.i
  %cmp.not = icmp eq i32 %and9.i.i, 0, !dbg !2174
  br i1 %cmp.not, label %for.end64, label %for.body, !dbg !2173

for.body:                                         ; preds = %GetUTFCode.exit.thread, %GetUTFCode.exit
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2111, metadata !DIExpression()) #11, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression()) #11, !dbg !2178
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2178
  br i1 %cmp.i.i, label %switch.early.test.i.thread, label %if.end.i.i131, !dbg !2180

if.end.i.i131:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2178
  %10 = load i8, ptr %p.0, align 1, !dbg !2181, !tbaa !1254
  %conv45.i.i130 = zext i8 %10 to i32, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %conv45.i.i130, metadata !2126, metadata !DIExpression()) #11, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %conv45.i.i130, metadata !2129, metadata !DIExpression()) #11, !dbg !2178
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2178
  br label %for.body.i.i140, !dbg !2183

for.body.i.i140:                                  ; preds = %if.end26.i.i154, %if.end.i.i131
  %text.pn.i.i132 = phi ptr [ %p.0, %if.end.i.i131 ], [ %text.addr.054.i.i135, %if.end26.i.i154 ]
  %unicode.053.i.i133 = phi i32 [ %conv45.i.i130, %if.end.i.i131 ], [ %or.i.i151, %if.end26.i.i154 ]
  %i.052.i.i134 = phi i64 [ 0, %if.end.i.i131 ], [ %inc.i.i152, %if.end26.i.i154 ]
  %text.addr.054.i.i135 = getelementptr inbounds i8, ptr %text.pn.i.i132, i64 1, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i133, metadata !2129, metadata !DIExpression()) #11, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %i.052.i.i134, metadata !2127, metadata !DIExpression()) #11, !dbg !2178
  %arrayidx.i.i136 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i134, !dbg !2184
  %11 = load i32, ptr %arrayidx.i.i136, align 16, !dbg !2185, !tbaa !2144
  %and3.i.i137 = and i32 %11, %conv45.i.i130, !dbg !2186
  %code_value.i.i138 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i134, i32 1, !dbg !2187
  %12 = load i32, ptr %code_value.i.i138, align 4, !dbg !2187, !tbaa !2148
  %cmp5.i.i139 = icmp eq i32 %and3.i.i137, %12, !dbg !2188
  br i1 %cmp5.i.i139, label %if.then7.i.i145, label %if.end17.i.i149, !dbg !2189

if.then7.i.i145:                                  ; preds = %for.body.i.i140
  %utf_mask.i.i141 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i134, i32 2, !dbg !2190
  %13 = load i32, ptr %utf_mask.i.i141, align 8, !dbg !2190, !tbaa !2153
  %and9.i.i142 = and i32 %13, %unicode.053.i.i133, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %and9.i.i142, metadata !2129, metadata !DIExpression()) #11, !dbg !2178
  %utf_value.i.i143 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i134, i32 3, !dbg !2192
  %14 = load i32, ptr %utf_value.i.i143, align 4, !dbg !2192, !tbaa !2157
  %cmp11.i.i144 = icmp slt i32 %and9.i.i142, %14, !dbg !2193
  br i1 %cmp11.i.i144, label %switch.early.test.i.thread, label %GetUTFCode.exit159, !dbg !2194

if.end17.i.i149:                                  ; preds = %for.body.i.i140
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i135, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2178
  %15 = load i8, ptr %text.addr.054.i.i135, align 1, !dbg !2195, !tbaa !1254
  %16 = xor i8 %15, -128, !dbg !2196
  %xor.i.i146 = zext i8 %16 to i32, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %xor.i.i146, metadata !2128, metadata !DIExpression()) #11, !dbg !2178
  %and21.i.i147 = and i32 %xor.i.i146, 192, !dbg !2197
  %cmp22.not.i.i148 = icmp eq i32 %and21.i.i147, 0, !dbg !2198
  br i1 %cmp22.not.i.i148, label %if.end26.i.i154, label %switch.early.test.i.thread, !dbg !2199

if.end26.i.i154:                                  ; preds = %if.end17.i.i149
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i135, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2178
  %shl.i.i150 = shl i32 %unicode.053.i.i133, 6, !dbg !2200
  %or.i.i151 = or i32 %shl.i.i150, %xor.i.i146, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %or.i.i151, metadata !2129, metadata !DIExpression()) #11, !dbg !2178
  %inc.i.i152 = add nuw nsw i64 %i.052.i.i134, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %inc.i.i152, metadata !2127, metadata !DIExpression()) #11, !dbg !2178
  %exitcond.not.i.i153 = icmp eq i64 %inc.i.i152, 6, !dbg !2203
  br i1 %exitcond.not.i.i153, label %switch.early.test.i.thread, label %for.body.i.i140, !dbg !2183, !llvm.loop !2204

switch.early.test.i.thread:                       ; preds = %if.end17.i.i149, %if.end26.i.i154, %for.body, %if.then7.i.i145
  %.sink.i155 = phi i32 [ 22, %for.body ], [ 84, %if.then7.i.i145 ], [ 84, %if.end26.i.i154 ], [ 84, %if.end17.i.i149 ]
  %call.i.i156 = tail call ptr @__errno_location() #12, !dbg !2178
  store i32 %.sink.i155, ptr %call.i.i156, align 4, !dbg !2178, !tbaa !2172
  call void @llvm.dbg.value(metadata i32 %and9.i.i142, metadata !2206, metadata !DIExpression()), !dbg !2211
  br label %IsUTFSpace.exit, !dbg !2213

GetUTFCode.exit159:                               ; preds = %if.then7.i.i145
  call void @llvm.dbg.value(metadata i32 %and9.i.i142, metadata !2206, metadata !DIExpression()), !dbg !2211
  switch i32 %and9.i.i142, label %lor.lhs.false11.i [
    i32 6158, label %IsUTFSpace.exit.thread
    i32 5760, label %IsUTFSpace.exit.thread
    i32 160, label %IsUTFSpace.exit.thread
    i32 133, label %IsUTFSpace.exit.thread
    i32 32, label %IsUTFSpace.exit.thread
    i32 13, label %IsUTFSpace.exit.thread
    i32 12, label %IsUTFSpace.exit.thread
    i32 11, label %IsUTFSpace.exit.thread
    i32 10, label %IsUTFSpace.exit.thread
    i32 9, label %IsUTFSpace.exit.thread
  ], !dbg !2215

lor.lhs.false11.i:                                ; preds = %GetUTFCode.exit159
  %17 = add i32 %and9.i.i142, -8192, !dbg !2213
  %18 = icmp ult i32 %17, 11, !dbg !2213
  br i1 %18, label %IsUTFSpace.exit.thread, label %switch.early.test.i, !dbg !2213

switch.early.test.i:                              ; preds = %lor.lhs.false11.i
  switch i32 %and9.i.i142, label %IsUTFSpace.exit [
    i32 12288, label %IsUTFSpace.exit.thread
    i32 8287, label %IsUTFSpace.exit.thread
    i32 8239, label %IsUTFSpace.exit.thread
    i32 8233, label %IsUTFSpace.exit.thread
    i32 8232, label %IsUTFSpace.exit.thread
  ], !dbg !2213

IsUTFSpace.exit.thread:                           ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %lor.lhs.false11.i, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159, %GetUTFCode.exit159
  br label %IsUTFSpace.exit, !dbg !2216

IsUTFSpace.exit:                                  ; preds = %switch.early.test.i, %switch.early.test.i.thread, %IsUTFSpace.exit.thread
  %19 = phi ptr [ %p.0, %IsUTFSpace.exit.thread ], [ %s.0, %switch.early.test.i.thread ], [ %s.0, %switch.early.test.i ]
  call void @llvm.dbg.value(metadata ptr %19, metadata !2093, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2111, metadata !DIExpression()) #11, !dbg !2217
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression()) #11, !dbg !2220
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2220
  br i1 %cmp.i.i, label %GetUTFCode.exit190.thread, label %if.end.i.i162, !dbg !2222

if.end.i.i162:                                    ; preds = %IsUTFSpace.exit
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2220
  %20 = load i8, ptr %p.0, align 1, !dbg !2223, !tbaa !1254
  %conv45.i.i161 = zext i8 %20 to i32, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %conv45.i.i161, metadata !2126, metadata !DIExpression()) #11, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %conv45.i.i161, metadata !2129, metadata !DIExpression()) #11, !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2220
  br label %for.body.i.i171, !dbg !2225

for.body.i.i171:                                  ; preds = %if.end26.i.i185, %if.end.i.i162
  %text.pn.i.i163 = phi ptr [ %p.0, %if.end.i.i162 ], [ %text.addr.054.i.i166, %if.end26.i.i185 ]
  %unicode.053.i.i164 = phi i32 [ %conv45.i.i161, %if.end.i.i162 ], [ %or.i.i182, %if.end26.i.i185 ]
  %i.052.i.i165 = phi i64 [ 0, %if.end.i.i162 ], [ %inc.i.i183, %if.end26.i.i185 ]
  %text.addr.054.i.i166 = getelementptr inbounds i8, ptr %text.pn.i.i163, i64 1, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i164, metadata !2129, metadata !DIExpression()) #11, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %i.052.i.i165, metadata !2127, metadata !DIExpression()) #11, !dbg !2220
  %arrayidx.i.i167 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i165, !dbg !2226
  %21 = load i32, ptr %arrayidx.i.i167, align 16, !dbg !2227, !tbaa !2144
  %and3.i.i168 = and i32 %21, %conv45.i.i161, !dbg !2228
  %code_value.i.i169 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i165, i32 1, !dbg !2229
  %22 = load i32, ptr %code_value.i.i169, align 4, !dbg !2229, !tbaa !2148
  %cmp5.i.i170 = icmp eq i32 %and3.i.i168, %22, !dbg !2230
  br i1 %cmp5.i.i170, label %if.then7.i.i176, label %if.end17.i.i180, !dbg !2231

if.then7.i.i176:                                  ; preds = %for.body.i.i171
  %utf_mask.i.i172 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i165, i32 2, !dbg !2232
  %23 = load i32, ptr %utf_mask.i.i172, align 8, !dbg !2232, !tbaa !2153
  %and9.i.i173 = and i32 %23, %unicode.053.i.i164, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %and9.i.i173, metadata !2129, metadata !DIExpression()) #11, !dbg !2220
  %utf_value.i.i174 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i165, i32 3, !dbg !2234
  %24 = load i32, ptr %utf_value.i.i174, align 4, !dbg !2234, !tbaa !2157
  %cmp11.i.i175 = icmp slt i32 %and9.i.i173, %24, !dbg !2235
  br i1 %cmp11.i.i175, label %GetUTFCode.exit190.thread, label %GetUTFCode.exit190, !dbg !2236

if.end17.i.i180:                                  ; preds = %for.body.i.i171
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i166, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2220
  %25 = load i8, ptr %text.addr.054.i.i166, align 1, !dbg !2237, !tbaa !1254
  %26 = xor i8 %25, -128, !dbg !2238
  %xor.i.i177 = zext i8 %26 to i32, !dbg !2238
  call void @llvm.dbg.value(metadata i32 %xor.i.i177, metadata !2128, metadata !DIExpression()) #11, !dbg !2220
  %and21.i.i178 = and i32 %xor.i.i177, 192, !dbg !2239
  %cmp22.not.i.i179 = icmp eq i32 %and21.i.i178, 0, !dbg !2240
  br i1 %cmp22.not.i.i179, label %if.end26.i.i185, label %GetUTFCode.exit190.thread, !dbg !2241

if.end26.i.i185:                                  ; preds = %if.end17.i.i180
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i166, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2220
  %shl.i.i181 = shl i32 %unicode.053.i.i164, 6, !dbg !2242
  %or.i.i182 = or i32 %shl.i.i181, %xor.i.i177, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %or.i.i182, metadata !2129, metadata !DIExpression()) #11, !dbg !2220
  %inc.i.i183 = add nuw nsw i64 %i.052.i.i165, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %inc.i.i183, metadata !2127, metadata !DIExpression()) #11, !dbg !2220
  %exitcond.not.i.i184 = icmp eq i64 %inc.i.i183, 6, !dbg !2245
  br i1 %exitcond.not.i.i184, label %GetUTFCode.exit190.thread, label %for.body.i.i171, !dbg !2225, !llvm.loop !2246

GetUTFCode.exit190.thread:                        ; preds = %if.end17.i.i180, %if.end26.i.i185, %IsUTFSpace.exit, %if.then7.i.i176
  %.sink.i186 = phi i32 [ 22, %IsUTFSpace.exit ], [ 84, %if.then7.i.i176 ], [ 84, %if.end26.i.i185 ], [ 84, %if.end17.i.i180 ]
  %call.i.i187 = tail call ptr @__errno_location() #12, !dbg !2220
  store i32 %.sink.i186, ptr %call.i.i187, align 4, !dbg !2220, !tbaa !2172
  br label %if.end11, !dbg !2248

GetUTFCode.exit190:                               ; preds = %if.then7.i.i176
  %cmp8 = icmp eq i32 %and9.i.i173, 10, !dbg !2249
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2248

if.then9:                                         ; preds = %GetUTFCode.exit190
  %27 = load ptr, ptr %text1, align 8, !dbg !2250, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %27, metadata !2092, metadata !DIExpression()), !dbg !2104
  br label %if.end11, !dbg !2251

if.end11:                                         ; preds = %GetUTFCode.exit190.thread, %if.then9, %GetUTFCode.exit190
  %q.1 = phi ptr [ %27, %if.then9 ], [ %q.0, %GetUTFCode.exit190 ], [ %q.0, %GetUTFCode.exit190.thread ], !dbg !2104
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2104
  br i1 %cmp.i.i, label %if.end11.split.us, label %for.cond12, !dbg !2252

if.end11.split.us:                                ; preds = %if.end11
  %call.i.i192.us = tail call ptr @__errno_location() #12, !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2258, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata i64 undef, metadata !2259, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !2092, metadata !DIExpression()), !dbg !2104
  %incdec.ptr.us = getelementptr inbounds i8, ptr %q.1, i64 1, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2104
  store i32 22, ptr %call.i.i192.us, align 4, !dbg !2266, !tbaa !2172
  br label %for.end, !dbg !2268

for.cond12:                                       ; preds = %if.end11, %for.body16
  %q.2 = phi ptr [ %incdec.ptr, %for.body16 ], [ %q.1, %if.end11 ], !dbg !2269
  %i.0 = phi i64 [ %inc, %for.body16 ], [ 0, %if.end11 ], !dbg !2270
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2094, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2258, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2264
  %28 = load i8, ptr %p.0, align 1, !dbg !2271, !tbaa !1254
  %conv45.i.i193 = zext i8 %28 to i32, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %conv45.i.i193, metadata !2126, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %conv45.i.i193, metadata !2129, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2264
  br label %for.body.i.i203, !dbg !2273

for.body.i.i203:                                  ; preds = %if.end26.i.i217, %for.cond12
  %text.pn.i.i195 = phi ptr [ %p.0, %for.cond12 ], [ %text.addr.054.i.i198, %if.end26.i.i217 ]
  %unicode.053.i.i196 = phi i32 [ %conv45.i.i193, %for.cond12 ], [ %or.i.i214, %if.end26.i.i217 ]
  %i.052.i.i197 = phi i64 [ 0, %for.cond12 ], [ %inc.i.i215, %if.end26.i.i217 ]
  %text.addr.054.i.i198 = getelementptr inbounds i8, ptr %text.pn.i.i195, i64 1, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i196, metadata !2129, metadata !DIExpression()) #11, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %i.052.i.i197, metadata !2127, metadata !DIExpression()) #11, !dbg !2264
  %arrayidx.i.i199 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i197, !dbg !2274
  %29 = load i32, ptr %arrayidx.i.i199, align 16, !dbg !2275, !tbaa !2144
  %and3.i.i200 = and i32 %29, %conv45.i.i193, !dbg !2276
  %code_value.i.i201 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i197, i32 1, !dbg !2277
  %30 = load i32, ptr %code_value.i.i201, align 4, !dbg !2277, !tbaa !2148
  %cmp5.i.i202 = icmp eq i32 %and3.i.i200, %30, !dbg !2278
  br i1 %cmp5.i.i202, label %if.then7.i.i208, label %if.end17.i.i212, !dbg !2279

if.then7.i.i208:                                  ; preds = %for.body.i.i203
  %utf_mask.i.i204 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i197, i32 2, !dbg !2280
  %31 = load i32, ptr %utf_mask.i.i204, align 8, !dbg !2280, !tbaa !2153
  %and9.i.i205 = and i32 %31, %unicode.053.i.i196, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %and9.i.i205, metadata !2129, metadata !DIExpression()) #11, !dbg !2264
  %utf_value.i.i206 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i197, i32 3, !dbg !2282
  %32 = load i32, ptr %utf_value.i.i206, align 4, !dbg !2282, !tbaa !2157
  %cmp11.i.i207 = icmp slt i32 %and9.i.i205, %32, !dbg !2283
  br i1 %cmp11.i.i207, label %if.then13.i.i, label %if.end15.i.i, !dbg !2284

if.then13.i.i:                                    ; preds = %if.then7.i.i208
  %call14.i.i = tail call ptr @__errno_location() #12, !dbg !2285
  store i32 84, ptr %call14.i.i, align 4, !dbg !2287, !tbaa !2172
  br label %GetUTFOctets.exit, !dbg !2288

if.end15.i.i:                                     ; preds = %if.then7.i.i208
  %conv16.i.i = add nuw i64 %i.052.i.i197, 1, !dbg !2289
  br label %GetUTFOctets.exit, !dbg !2290

if.end17.i.i212:                                  ; preds = %for.body.i.i203
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i198, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2264
  %33 = load i8, ptr %text.addr.054.i.i198, align 1, !dbg !2291, !tbaa !1254
  %34 = xor i8 %33, -128, !dbg !2292
  %xor.i.i209 = zext i8 %34 to i32, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %xor.i.i209, metadata !2128, metadata !DIExpression()) #11, !dbg !2264
  %and21.i.i210 = and i32 %xor.i.i209, 192, !dbg !2293
  %cmp22.not.i.i211 = icmp eq i32 %and21.i.i210, 0, !dbg !2294
  br i1 %cmp22.not.i.i211, label %if.end26.i.i217, label %if.then24.i.i, !dbg !2295

if.then24.i.i:                                    ; preds = %if.end17.i.i212
  %call25.i.i = tail call ptr @__errno_location() #12, !dbg !2296
  store i32 84, ptr %call25.i.i, align 4, !dbg !2298, !tbaa !2172
  br label %GetUTFOctets.exit, !dbg !2299

if.end26.i.i217:                                  ; preds = %if.end17.i.i212
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i198, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2264
  %shl.i.i213 = shl i32 %unicode.053.i.i196, 6, !dbg !2300
  %or.i.i214 = or i32 %shl.i.i213, %xor.i.i209, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %or.i.i214, metadata !2129, metadata !DIExpression()) #11, !dbg !2264
  %inc.i.i215 = add nuw nsw i64 %i.052.i.i197, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %inc.i.i215, metadata !2127, metadata !DIExpression()) #11, !dbg !2264
  %exitcond.not.i.i216 = icmp eq i64 %inc.i.i215, 6, !dbg !2303
  br i1 %exitcond.not.i.i216, label %for.end.i.i, label %for.body.i.i203, !dbg !2273, !llvm.loop !2304

for.end.i.i:                                      ; preds = %if.end26.i.i217
  %call27.i.i = tail call ptr @__errno_location() #12, !dbg !2306
  store i32 84, ptr %call27.i.i, align 4, !dbg !2307, !tbaa !2172
  br label %GetUTFOctets.exit, !dbg !2308

GetUTFOctets.exit:                                ; preds = %if.then13.i.i, %if.end15.i.i, %if.then24.i.i, %for.end.i.i
  %octets.0.i = phi i64 [ 1, %if.then13.i.i ], [ %conv16.i.i, %if.end15.i.i ], [ 1, %for.end.i.i ], [ 1, %if.then24.i.i ], !dbg !2264
  %conv = and i64 %octets.0.i, 4294967295, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %octets.0.i, metadata !2259, metadata !DIExpression()) #11, !dbg !2263
  %cmp14 = icmp ult i64 %i.0, %conv, !dbg !2310
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !2311

for.body16:                                       ; preds = %GetUTFOctets.exit
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 %i.0, !dbg !2312
  %35 = load i8, ptr %add.ptr, align 1, !dbg !2313, !tbaa !1254
  %incdec.ptr = getelementptr inbounds i8, ptr %q.2, i64 1, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2092, metadata !DIExpression()), !dbg !2104
  store i8 %35, ptr %q.2, align 1, !dbg !2314, !tbaa !1254
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2094, metadata !DIExpression()), !dbg !2104
  br label %for.cond12, !dbg !2316, !llvm.loop !2317

for.end:                                          ; preds = %GetUTFOctets.exit, %if.end11.split.us
  %.us-phi = phi ptr [ %incdec.ptr.us, %if.end11.split.us ], [ %q.2, %GetUTFOctets.exit ]
  store i8 0, ptr %.us-phi, align 1, !dbg !2268, !tbaa !1254
  %call17 = tail call i32 @GetTypeMetrics(ptr noundef %image, ptr noundef %draw_info, ptr noundef %metrics), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2090, metadata !DIExpression()), !dbg !2104
  %cmp18 = icmp eq i32 %call17, 0, !dbg !2320
  br i1 %cmp18, label %for.end64, label %if.end21, !dbg !2322

if.end21:                                         ; preds = %for.end
  %36 = load double, ptr %width22, align 8, !dbg !2323, !tbaa !1402
  %37 = load double, ptr %stroke_width, align 8, !dbg !2324, !tbaa !2325
  %add = fadd double %36, %37, !dbg !2326
  %add23 = fadd double %add, 5.000000e-01, !dbg !2327
  %38 = tail call double @llvm.floor.f64(double %add23), !dbg !2328
  %conv24 = fptoui double %38 to i64, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %conv24, metadata !2095, metadata !DIExpression()), !dbg !2104
  %39 = load i64, ptr %columns, align 8, !dbg !2330, !tbaa !2332
  %cmp25.not = icmp ult i64 %39, %conv24, !dbg !2333
  br i1 %cmp25.not, label %lor.lhs.false, label %for.inc61, !dbg !2334

lor.lhs.false:                                    ; preds = %if.end21
  %40 = load ptr, ptr %text1, align 8, !dbg !2335, !tbaa !1242
  %call28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull dereferenceable(1) %40) #13, !dbg !2336
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2337
  br i1 %cmp29, label %for.inc61, label %if.end32, !dbg !2338

if.end32:                                         ; preds = %lor.lhs.false
  %call34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull dereferenceable(1) %40) #11, !dbg !2339
  %cmp35 = icmp ne ptr %19, null, !dbg !2340
  br i1 %cmp35, label %if.end.i.i222, label %if.else, !dbg !2341

if.end.i.i222:                                    ; preds = %if.end32
  call void @llvm.dbg.value(metadata ptr %19, metadata !2258, metadata !DIExpression()) #11, !dbg !2342
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2344
  call void @llvm.dbg.value(metadata ptr %19, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2344
  %41 = load i8, ptr %19, align 1, !dbg !2346, !tbaa !1254
  %conv45.i.i221 = zext i8 %41 to i32, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %conv45.i.i221, metadata !2126, metadata !DIExpression()) #11, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %conv45.i.i221, metadata !2129, metadata !DIExpression()) #11, !dbg !2344
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2344
  br label %for.body.i.i231, !dbg !2348

for.body.i.i231:                                  ; preds = %if.end26.i.i251, %if.end.i.i222
  %text.pn.i.i223 = phi ptr [ %19, %if.end.i.i222 ], [ %text.addr.054.i.i226, %if.end26.i.i251 ]
  %unicode.053.i.i224 = phi i32 [ %conv45.i.i221, %if.end.i.i222 ], [ %or.i.i248, %if.end26.i.i251 ]
  %i.052.i.i225 = phi i64 [ 0, %if.end.i.i222 ], [ %inc.i.i249, %if.end26.i.i251 ]
  %text.addr.054.i.i226 = getelementptr inbounds i8, ptr %text.pn.i.i223, i64 1, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i224, metadata !2129, metadata !DIExpression()) #11, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %i.052.i.i225, metadata !2127, metadata !DIExpression()) #11, !dbg !2344
  %arrayidx.i.i227 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i225, !dbg !2349
  %42 = load i32, ptr %arrayidx.i.i227, align 16, !dbg !2350, !tbaa !2144
  %and3.i.i228 = and i32 %42, %conv45.i.i221, !dbg !2351
  %code_value.i.i229 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i225, i32 1, !dbg !2352
  %43 = load i32, ptr %code_value.i.i229, align 4, !dbg !2352, !tbaa !2148
  %cmp5.i.i230 = icmp eq i32 %and3.i.i228, %43, !dbg !2353
  br i1 %cmp5.i.i230, label %if.then7.i.i236, label %if.end17.i.i244, !dbg !2354

if.then7.i.i236:                                  ; preds = %for.body.i.i231
  %utf_mask.i.i232 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i225, i32 2, !dbg !2355
  %44 = load i32, ptr %utf_mask.i.i232, align 8, !dbg !2355, !tbaa !2153
  %and9.i.i233 = and i32 %44, %unicode.053.i.i224, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %and9.i.i233, metadata !2129, metadata !DIExpression()) #11, !dbg !2344
  %utf_value.i.i234 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i225, i32 3, !dbg !2357
  %45 = load i32, ptr %utf_value.i.i234, align 4, !dbg !2357, !tbaa !2157
  %cmp11.i.i235 = icmp slt i32 %and9.i.i233, %45, !dbg !2358
  br i1 %cmp11.i.i235, label %if.then40.sink.split, label %GetUTFOctets.exit255, !dbg !2359

if.end17.i.i244:                                  ; preds = %for.body.i.i231
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i226, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2344
  %46 = load i8, ptr %text.addr.054.i.i226, align 1, !dbg !2360, !tbaa !1254
  %47 = xor i8 %46, -128, !dbg !2361
  %xor.i.i241 = zext i8 %47 to i32, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %xor.i.i241, metadata !2128, metadata !DIExpression()) #11, !dbg !2344
  %and21.i.i242 = and i32 %xor.i.i241, 192, !dbg !2362
  %cmp22.not.i.i243 = icmp eq i32 %and21.i.i242, 0, !dbg !2363
  br i1 %cmp22.not.i.i243, label %if.end26.i.i251, label %if.then40.sink.split, !dbg !2364

if.end26.i.i251:                                  ; preds = %if.end17.i.i244
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i226, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2344
  %shl.i.i247 = shl i32 %unicode.053.i.i224, 6, !dbg !2365
  %or.i.i248 = or i32 %shl.i.i247, %xor.i.i241, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %or.i.i248, metadata !2129, metadata !DIExpression()) #11, !dbg !2344
  %inc.i.i249 = add nuw nsw i64 %i.052.i.i225, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %inc.i.i249, metadata !2127, metadata !DIExpression()) #11, !dbg !2344
  %exitcond.not.i.i250 = icmp eq i64 %inc.i.i249, 6, !dbg !2368
  br i1 %exitcond.not.i.i250, label %if.then40.sink.split, label %for.body.i.i231, !dbg !2348, !llvm.loop !2369

GetUTFOctets.exit255:                             ; preds = %if.then7.i.i236
  %48 = trunc i64 %i.052.i.i225 to i32, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %48, metadata !2259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2342
  %cmp38 = icmp eq i32 %48, 0, !dbg !2372
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !2373

if.then40.sink.split:                             ; preds = %if.end26.i.i251, %if.end17.i.i244, %if.then7.i.i236
  %call25.i.i245 = tail call ptr @__errno_location() #12, !dbg !2344
  store i32 84, ptr %call25.i.i245, align 4, !dbg !2344, !tbaa !2172
  br label %if.then40, !dbg !2374

if.then40:                                        ; preds = %if.then40.sink.split, %GetUTFOctets.exit255
  store i8 10, ptr %19, align 1, !dbg !2374, !tbaa !1254
  call void @llvm.dbg.value(metadata ptr %19, metadata !2091, metadata !DIExpression()), !dbg !2104
  br label %if.end59, !dbg !2376

if.else:                                          ; preds = %GetUTFOctets.exit255, %if.end32
  %or.cond = or i1 %cmp44, %cmp35, !dbg !2377
  br i1 %or.cond, label %if.then46, label %if.end59, !dbg !2377

if.then46:                                        ; preds = %if.else
  %49 = load ptr, ptr %caption, align 8, !dbg !2378, !tbaa !1130
  %call47 = tail call ptr @AcquireString(ptr noundef %49) #11, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %call47, metadata !2097, metadata !DIExpression()), !dbg !2380
  %50 = load ptr, ptr %caption, align 8, !dbg !2381, !tbaa !1130
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0 to i64, !dbg !2382
  %sub.ptr.rhs.cast = ptrtoint ptr %50 to i64, !dbg !2382
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2096, metadata !DIExpression()), !dbg !2104
  %add48 = add nsw i64 %sub.ptr.sub, 1, !dbg !2383
  %call49 = tail call i64 @CopyMagickString(ptr noundef %call47, ptr noundef %50, i64 noundef %add48) #11, !dbg !2384
  %51 = load ptr, ptr %caption, align 8, !dbg !2385, !tbaa !1130
  %call50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #13, !dbg !2386
  %add51 = add i64 %call50, 1, !dbg !2387
  %call52 = tail call i64 @ConcatenateMagickString(ptr noundef %call47, ptr noundef nonnull @.str.5, i64 noundef %add51) #11, !dbg !2388
  %52 = load ptr, ptr %caption, align 8, !dbg !2389, !tbaa !1130
  %call53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #13, !dbg !2390
  %add54 = add i64 %call53, 2, !dbg !2391
  %call55 = tail call i64 @ConcatenateMagickString(ptr noundef %call47, ptr noundef %p.0, i64 noundef %add54) #11, !dbg !2392
  %53 = load ptr, ptr %caption, align 8, !dbg !2393, !tbaa !1130
  %call56 = tail call ptr @DestroyString(ptr noundef %53) #11, !dbg !2394
  store ptr %call47, ptr %caption, align 8, !dbg !2395, !tbaa !1130
  %add.ptr57 = getelementptr inbounds i8, ptr %call47, i64 %sub.ptr.sub, !dbg !2396
  call void @llvm.dbg.value(metadata ptr %add.ptr57, metadata !2091, metadata !DIExpression()), !dbg !2104
  br label %if.end59, !dbg !2397

if.end59:                                         ; preds = %if.then46, %if.else, %if.then40
  %p.1 = phi ptr [ %19, %if.then40 ], [ %add.ptr57, %if.then46 ], [ %p.0, %if.else ], !dbg !2110
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2091, metadata !DIExpression()), !dbg !2104
  %54 = load ptr, ptr %text1, align 8, !dbg !2398, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %54, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr null, metadata !2093, metadata !DIExpression()), !dbg !2104
  br label %for.inc61, !dbg !2399

for.inc61:                                        ; preds = %if.end21, %lor.lhs.false, %if.end59
  %q.3 = phi ptr [ %.us-phi, %if.end21 ], [ %.us-phi, %lor.lhs.false ], [ %54, %if.end59 ], !dbg !2269
  %s.2 = phi ptr [ %19, %if.end21 ], [ %19, %lor.lhs.false ], [ null, %if.end59 ], !dbg !2269
  %p.2 = phi ptr [ %p.0, %if.end21 ], [ %p.0, %lor.lhs.false ], [ %p.1, %if.end59 ], !dbg !2110
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2091, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !2093, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %q.3, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2258, metadata !DIExpression()) #11, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2119, metadata !DIExpression()) #11, !dbg !2402
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2402
  %cmp.i.i256 = icmp eq ptr %p.2, null, !dbg !2404
  br i1 %cmp.i.i256, label %if.then.i.i258, label %if.end.i.i260, !dbg !2405

if.then.i.i258:                                   ; preds = %for.inc61
  %call.i.i257 = tail call ptr @__errno_location() #12, !dbg !2406
  store i32 22, ptr %call.i.i257, align 4, !dbg !2407, !tbaa !2172
  br label %GetUTFOctets.exit293, !dbg !2408

if.end.i.i260:                                    ; preds = %for.inc61
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2402
  %55 = load i8, ptr %p.2, align 1, !dbg !2409, !tbaa !1254
  %conv45.i.i259 = zext i8 %55 to i32, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %conv45.i.i259, metadata !2126, metadata !DIExpression()) #11, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %conv45.i.i259, metadata !2129, metadata !DIExpression()) #11, !dbg !2402
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2402
  br label %for.body.i.i269, !dbg !2411

for.body.i.i269:                                  ; preds = %if.end26.i.i289, %if.end.i.i260
  %text.pn.i.i261 = phi ptr [ %p.2, %if.end.i.i260 ], [ %text.addr.054.i.i264, %if.end26.i.i289 ]
  %unicode.053.i.i262 = phi i32 [ %conv45.i.i259, %if.end.i.i260 ], [ %or.i.i286, %if.end26.i.i289 ]
  %i.052.i.i263 = phi i64 [ 0, %if.end.i.i260 ], [ %inc.i.i287, %if.end26.i.i289 ]
  %text.addr.054.i.i264 = getelementptr inbounds i8, ptr %text.pn.i.i261, i64 1, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i262, metadata !2129, metadata !DIExpression()) #11, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %i.052.i.i263, metadata !2127, metadata !DIExpression()) #11, !dbg !2402
  %arrayidx.i.i265 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i263, !dbg !2412
  %56 = load i32, ptr %arrayidx.i.i265, align 16, !dbg !2413, !tbaa !2144
  %and3.i.i266 = and i32 %56, %conv45.i.i259, !dbg !2414
  %code_value.i.i267 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i263, i32 1, !dbg !2415
  %57 = load i32, ptr %code_value.i.i267, align 4, !dbg !2415, !tbaa !2148
  %cmp5.i.i268 = icmp eq i32 %and3.i.i266, %57, !dbg !2416
  br i1 %cmp5.i.i268, label %if.then7.i.i274, label %if.end17.i.i282, !dbg !2417

if.then7.i.i274:                                  ; preds = %for.body.i.i269
  %utf_mask.i.i270 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i263, i32 2, !dbg !2418
  %58 = load i32, ptr %utf_mask.i.i270, align 8, !dbg !2418, !tbaa !2153
  %and9.i.i271 = and i32 %58, %unicode.053.i.i262, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %and9.i.i271, metadata !2129, metadata !DIExpression()) #11, !dbg !2402
  %utf_value.i.i272 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i263, i32 3, !dbg !2420
  %59 = load i32, ptr %utf_value.i.i272, align 4, !dbg !2420, !tbaa !2157
  %cmp11.i.i273 = icmp slt i32 %and9.i.i271, %59, !dbg !2421
  br i1 %cmp11.i.i273, label %if.then13.i.i276, label %if.end15.i.i278, !dbg !2422

if.then13.i.i276:                                 ; preds = %if.then7.i.i274
  %call14.i.i275 = tail call ptr @__errno_location() #12, !dbg !2423
  store i32 84, ptr %call14.i.i275, align 4, !dbg !2424, !tbaa !2172
  br label %GetUTFOctets.exit293, !dbg !2425

if.end15.i.i278:                                  ; preds = %if.then7.i.i274
  %conv16.i.i277 = add nuw i64 %i.052.i.i263, 1, !dbg !2426
  br label %GetUTFOctets.exit293, !dbg !2427

if.end17.i.i282:                                  ; preds = %for.body.i.i269
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i264, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2402
  %60 = load i8, ptr %text.addr.054.i.i264, align 1, !dbg !2428, !tbaa !1254
  %61 = xor i8 %60, -128, !dbg !2429
  %xor.i.i279 = zext i8 %61 to i32, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %xor.i.i279, metadata !2128, metadata !DIExpression()) #11, !dbg !2402
  %and21.i.i280 = and i32 %xor.i.i279, 192, !dbg !2430
  %cmp22.not.i.i281 = icmp eq i32 %and21.i.i280, 0, !dbg !2431
  br i1 %cmp22.not.i.i281, label %if.end26.i.i289, label %if.then24.i.i284, !dbg !2432

if.then24.i.i284:                                 ; preds = %if.end17.i.i282
  %call25.i.i283 = tail call ptr @__errno_location() #12, !dbg !2433
  store i32 84, ptr %call25.i.i283, align 4, !dbg !2434, !tbaa !2172
  br label %GetUTFOctets.exit293, !dbg !2435

if.end26.i.i289:                                  ; preds = %if.end17.i.i282
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i264, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2402
  %shl.i.i285 = shl i32 %unicode.053.i.i262, 6, !dbg !2436
  %or.i.i286 = or i32 %shl.i.i285, %xor.i.i279, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %or.i.i286, metadata !2129, metadata !DIExpression()) #11, !dbg !2402
  %inc.i.i287 = add nuw nsw i64 %i.052.i.i263, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %inc.i.i287, metadata !2127, metadata !DIExpression()) #11, !dbg !2402
  %exitcond.not.i.i288 = icmp eq i64 %inc.i.i287, 6, !dbg !2439
  br i1 %exitcond.not.i.i288, label %for.end.i.i291, label %for.body.i.i269, !dbg !2411, !llvm.loop !2440

for.end.i.i291:                                   ; preds = %if.end26.i.i289
  %call27.i.i290 = tail call ptr @__errno_location() #12, !dbg !2442
  store i32 84, ptr %call27.i.i290, align 4, !dbg !2443, !tbaa !2172
  br label %GetUTFOctets.exit293, !dbg !2444

GetUTFOctets.exit293:                             ; preds = %if.then.i.i258, %if.then13.i.i276, %if.end15.i.i278, %if.then24.i.i284, %for.end.i.i291
  %octets.0.i292 = phi i64 [ 1, %if.then.i.i258 ], [ 1, %if.then13.i.i276 ], [ %conv16.i.i277, %if.end15.i.i278 ], [ 1, %for.end.i.i291 ], [ 1, %if.then24.i.i284 ], !dbg !2402
  %idx.ext = and i64 %octets.0.i292, 4294967295, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %octets.0.i292, metadata !2259, metadata !DIExpression()) #11, !dbg !2400
  %add.ptr63 = getelementptr inbounds i8, ptr %p.2, i64 %idx.ext, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %add.ptr63, metadata !2091, metadata !DIExpression()), !dbg !2104
  br label %for.cond, !dbg !2446, !llvm.loop !2447

for.end64:                                        ; preds = %for.end, %GetUTFCode.exit
  %call65 = tail call ptr @DestroyString(ptr noundef %call) #11, !dbg !2449
  call void @llvm.dbg.value(metadata ptr %call65, metadata !2089, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2096, metadata !DIExpression()), !dbg !2104
  %62 = load ptr, ptr %caption, align 8, !dbg !2450, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %62, metadata !2091, metadata !DIExpression()), !dbg !2104
  br label %for.cond66, !dbg !2452

for.cond66:                                       ; preds = %GetUTFOctets.exit393, %for.end64
  %p.3 = phi ptr [ %62, %for.end64 ], [ %add.ptr80, %GetUTFOctets.exit393 ], !dbg !2453
  %n.0 = phi i64 [ 0, %for.end64 ], [ %78, %GetUTFOctets.exit393 ], !dbg !2104
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2091, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2111, metadata !DIExpression()) #11, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression()) #11, !dbg !2457
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2457
  %cmp.i.i294 = icmp eq ptr %p.3, null, !dbg !2459
  br i1 %cmp.i.i294, label %GetUTFCode.exit324.thread, label %if.end.i.i296, !dbg !2460

if.end.i.i296:                                    ; preds = %for.cond66
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2457
  %63 = load i8, ptr %p.3, align 1, !dbg !2461, !tbaa !1254
  %conv45.i.i295 = zext i8 %63 to i32, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %conv45.i.i295, metadata !2126, metadata !DIExpression()) #11, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %conv45.i.i295, metadata !2129, metadata !DIExpression()) #11, !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2457
  br label %for.body.i.i305, !dbg !2463

for.body.i.i305:                                  ; preds = %if.end26.i.i319, %if.end.i.i296
  %text.pn.i.i297 = phi ptr [ %p.3, %if.end.i.i296 ], [ %text.addr.054.i.i300, %if.end26.i.i319 ]
  %unicode.053.i.i298 = phi i32 [ %conv45.i.i295, %if.end.i.i296 ], [ %or.i.i316, %if.end26.i.i319 ]
  %i.052.i.i299 = phi i64 [ 0, %if.end.i.i296 ], [ %inc.i.i317, %if.end26.i.i319 ]
  %text.addr.054.i.i300 = getelementptr inbounds i8, ptr %text.pn.i.i297, i64 1, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i298, metadata !2129, metadata !DIExpression()) #11, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %i.052.i.i299, metadata !2127, metadata !DIExpression()) #11, !dbg !2457
  %arrayidx.i.i301 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i299, !dbg !2464
  %64 = load i32, ptr %arrayidx.i.i301, align 16, !dbg !2465, !tbaa !2144
  %and3.i.i302 = and i32 %64, %conv45.i.i295, !dbg !2466
  %code_value.i.i303 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i299, i32 1, !dbg !2467
  %65 = load i32, ptr %code_value.i.i303, align 4, !dbg !2467, !tbaa !2148
  %cmp5.i.i304 = icmp eq i32 %and3.i.i302, %65, !dbg !2468
  br i1 %cmp5.i.i304, label %if.then7.i.i310, label %if.end17.i.i314, !dbg !2469

if.then7.i.i310:                                  ; preds = %for.body.i.i305
  %utf_mask.i.i306 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i299, i32 2, !dbg !2470
  %66 = load i32, ptr %utf_mask.i.i306, align 8, !dbg !2470, !tbaa !2153
  %and9.i.i307 = and i32 %66, %unicode.053.i.i298, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %and9.i.i307, metadata !2129, metadata !DIExpression()) #11, !dbg !2457
  %utf_value.i.i308 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i299, i32 3, !dbg !2472
  %67 = load i32, ptr %utf_value.i.i308, align 4, !dbg !2472, !tbaa !2157
  %cmp11.i.i309 = icmp slt i32 %and9.i.i307, %67, !dbg !2473
  br i1 %cmp11.i.i309, label %GetUTFCode.exit324.thread, label %GetUTFCode.exit324, !dbg !2474

if.end17.i.i314:                                  ; preds = %for.body.i.i305
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i300, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2457
  %68 = load i8, ptr %text.addr.054.i.i300, align 1, !dbg !2475, !tbaa !1254
  %69 = xor i8 %68, -128, !dbg !2476
  %xor.i.i311 = zext i8 %69 to i32, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %xor.i.i311, metadata !2128, metadata !DIExpression()) #11, !dbg !2457
  %and21.i.i312 = and i32 %xor.i.i311, 192, !dbg !2477
  %cmp22.not.i.i313 = icmp eq i32 %and21.i.i312, 0, !dbg !2478
  br i1 %cmp22.not.i.i313, label %if.end26.i.i319, label %GetUTFCode.exit324.thread, !dbg !2479

if.end26.i.i319:                                  ; preds = %if.end17.i.i314
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i300, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2457
  %shl.i.i315 = shl i32 %unicode.053.i.i298, 6, !dbg !2480
  %or.i.i316 = or i32 %shl.i.i315, %xor.i.i311, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %or.i.i316, metadata !2129, metadata !DIExpression()) #11, !dbg !2457
  %inc.i.i317 = add nuw nsw i64 %i.052.i.i299, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %inc.i.i317, metadata !2127, metadata !DIExpression()) #11, !dbg !2457
  %exitcond.not.i.i318 = icmp eq i64 %inc.i.i317, 6, !dbg !2483
  br i1 %exitcond.not.i.i318, label %GetUTFCode.exit324.thread, label %for.body.i.i305, !dbg !2463, !llvm.loop !2484

GetUTFCode.exit324.thread:                        ; preds = %if.end17.i.i314, %if.end26.i.i319, %for.cond66, %if.then7.i.i310
  %.sink.i320 = phi i32 [ 22, %for.cond66 ], [ 84, %if.then7.i.i310 ], [ 84, %if.end26.i.i319 ], [ 84, %if.end17.i.i314 ]
  %call.i.i321 = tail call ptr @__errno_location() #12, !dbg !2457
  store i32 %.sink.i320, ptr %call.i.i321, align 4, !dbg !2457, !tbaa !2172
  br label %for.body70, !dbg !2486

GetUTFCode.exit324:                               ; preds = %if.then7.i.i310
  %cmp68.not = icmp eq i32 %and9.i.i307, 0, !dbg !2487
  br i1 %cmp68.not, label %for.end81, label %for.body70, !dbg !2486

for.body70:                                       ; preds = %GetUTFCode.exit324.thread, %GetUTFCode.exit324
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2111, metadata !DIExpression()) #11, !dbg !2488
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression()) #11, !dbg !2491
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2491
  br i1 %cmp.i.i294, label %GetUTFCode.exit355.thread, label %if.end.i.i327, !dbg !2493

if.end.i.i327:                                    ; preds = %for.body70
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2491
  %70 = load i8, ptr %p.3, align 1, !dbg !2494, !tbaa !1254
  %conv45.i.i326 = zext i8 %70 to i32, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %conv45.i.i326, metadata !2126, metadata !DIExpression()) #11, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %conv45.i.i326, metadata !2129, metadata !DIExpression()) #11, !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2491
  br label %for.body.i.i336, !dbg !2496

for.body.i.i336:                                  ; preds = %if.end26.i.i350, %if.end.i.i327
  %text.pn.i.i328 = phi ptr [ %p.3, %if.end.i.i327 ], [ %text.addr.054.i.i331, %if.end26.i.i350 ]
  %unicode.053.i.i329 = phi i32 [ %conv45.i.i326, %if.end.i.i327 ], [ %or.i.i347, %if.end26.i.i350 ]
  %i.052.i.i330 = phi i64 [ 0, %if.end.i.i327 ], [ %inc.i.i348, %if.end26.i.i350 ]
  %text.addr.054.i.i331 = getelementptr inbounds i8, ptr %text.pn.i.i328, i64 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i329, metadata !2129, metadata !DIExpression()) #11, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %i.052.i.i330, metadata !2127, metadata !DIExpression()) #11, !dbg !2491
  %arrayidx.i.i332 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i330, !dbg !2497
  %71 = load i32, ptr %arrayidx.i.i332, align 16, !dbg !2498, !tbaa !2144
  %and3.i.i333 = and i32 %71, %conv45.i.i326, !dbg !2499
  %code_value.i.i334 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i330, i32 1, !dbg !2500
  %72 = load i32, ptr %code_value.i.i334, align 4, !dbg !2500, !tbaa !2148
  %cmp5.i.i335 = icmp eq i32 %and3.i.i333, %72, !dbg !2501
  br i1 %cmp5.i.i335, label %if.then7.i.i341, label %if.end17.i.i345, !dbg !2502

if.then7.i.i341:                                  ; preds = %for.body.i.i336
  %utf_mask.i.i337 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i330, i32 2, !dbg !2503
  %73 = load i32, ptr %utf_mask.i.i337, align 8, !dbg !2503, !tbaa !2153
  %and9.i.i338 = and i32 %73, %unicode.053.i.i329, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %and9.i.i338, metadata !2129, metadata !DIExpression()) #11, !dbg !2491
  %utf_value.i.i339 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i330, i32 3, !dbg !2505
  %74 = load i32, ptr %utf_value.i.i339, align 4, !dbg !2505, !tbaa !2157
  %cmp11.i.i340 = icmp slt i32 %and9.i.i338, %74, !dbg !2506
  br i1 %cmp11.i.i340, label %GetUTFCode.exit355.thread, label %GetUTFCode.exit355, !dbg !2507

if.end17.i.i345:                                  ; preds = %for.body.i.i336
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i331, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2491
  %75 = load i8, ptr %text.addr.054.i.i331, align 1, !dbg !2508, !tbaa !1254
  %76 = xor i8 %75, -128, !dbg !2509
  %xor.i.i342 = zext i8 %76 to i32, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %xor.i.i342, metadata !2128, metadata !DIExpression()) #11, !dbg !2491
  %and21.i.i343 = and i32 %xor.i.i342, 192, !dbg !2510
  %cmp22.not.i.i344 = icmp eq i32 %and21.i.i343, 0, !dbg !2511
  br i1 %cmp22.not.i.i344, label %if.end26.i.i350, label %GetUTFCode.exit355.thread, !dbg !2512

if.end26.i.i350:                                  ; preds = %if.end17.i.i345
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i331, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2491
  %shl.i.i346 = shl i32 %unicode.053.i.i329, 6, !dbg !2513
  %or.i.i347 = or i32 %shl.i.i346, %xor.i.i342, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %or.i.i347, metadata !2129, metadata !DIExpression()) #11, !dbg !2491
  %inc.i.i348 = add nuw nsw i64 %i.052.i.i330, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %inc.i.i348, metadata !2127, metadata !DIExpression()) #11, !dbg !2491
  %exitcond.not.i.i349 = icmp eq i64 %inc.i.i348, 6, !dbg !2516
  br i1 %exitcond.not.i.i349, label %GetUTFCode.exit355.thread, label %for.body.i.i336, !dbg !2496, !llvm.loop !2517

GetUTFCode.exit355.thread:                        ; preds = %if.end17.i.i345, %if.end26.i.i350, %for.body70, %if.then7.i.i341
  %.sink.i351 = phi i32 [ 22, %for.body70 ], [ 84, %if.then7.i.i341 ], [ 84, %if.end26.i.i350 ], [ 84, %if.end17.i.i345 ]
  %call.i.i352 = tail call ptr @__errno_location() #12, !dbg !2491
  store i32 %.sink.i351, ptr %call.i.i352, align 4, !dbg !2491, !tbaa !2172
  br label %77, !dbg !2519

GetUTFCode.exit355:                               ; preds = %if.then7.i.i341
  %cmp72 = icmp eq i32 %and9.i.i338, 10, !dbg !2520
  %inc75 = zext i1 %cmp72 to i64, !dbg !2519
  %spec.select = add nsw i64 %n.0, %inc75, !dbg !2519
  br label %77, !dbg !2519

77:                                               ; preds = %GetUTFCode.exit355, %GetUTFCode.exit355.thread
  %78 = phi i64 [ %n.0, %GetUTFCode.exit355.thread ], [ %spec.select, %GetUTFCode.exit355 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2258, metadata !DIExpression()) #11, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression()) #11, !dbg !2523
  call void @llvm.dbg.value(metadata ptr undef, metadata !2125, metadata !DIExpression()) #11, !dbg !2523
  br i1 %cmp.i.i294, label %if.then.i.i358, label %if.end.i.i360, !dbg !2525

if.then.i.i358:                                   ; preds = %77
  %call.i.i357 = tail call ptr @__errno_location() #12, !dbg !2526
  store i32 22, ptr %call.i.i357, align 4, !dbg !2527, !tbaa !2172
  br label %GetUTFOctets.exit393, !dbg !2528

if.end.i.i360:                                    ; preds = %77
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2523
  %79 = load i8, ptr %p.3, align 1, !dbg !2529, !tbaa !1254
  %conv45.i.i359 = zext i8 %79 to i32, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %conv45.i.i359, metadata !2126, metadata !DIExpression()) #11, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %conv45.i.i359, metadata !2129, metadata !DIExpression()) #11, !dbg !2523
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()) #11, !dbg !2523
  br label %for.body.i.i369, !dbg !2531

for.body.i.i369:                                  ; preds = %if.end26.i.i389, %if.end.i.i360
  %text.pn.i.i361 = phi ptr [ %p.3, %if.end.i.i360 ], [ %text.addr.054.i.i364, %if.end26.i.i389 ]
  %unicode.053.i.i362 = phi i32 [ %conv45.i.i359, %if.end.i.i360 ], [ %or.i.i386, %if.end26.i.i389 ]
  %i.052.i.i363 = phi i64 [ 0, %if.end.i.i360 ], [ %inc.i.i387, %if.end26.i.i389 ]
  %text.addr.054.i.i364 = getelementptr inbounds i8, ptr %text.pn.i.i361, i64 1, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %unicode.053.i.i362, metadata !2129, metadata !DIExpression()) #11, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %i.052.i.i363, metadata !2127, metadata !DIExpression()) #11, !dbg !2523
  %arrayidx.i.i365 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i363, !dbg !2532
  %80 = load i32, ptr %arrayidx.i.i365, align 16, !dbg !2533, !tbaa !2144
  %and3.i.i366 = and i32 %80, %conv45.i.i359, !dbg !2534
  %code_value.i.i367 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i363, i32 1, !dbg !2535
  %81 = load i32, ptr %code_value.i.i367, align 4, !dbg !2535, !tbaa !2148
  %cmp5.i.i368 = icmp eq i32 %and3.i.i366, %81, !dbg !2536
  br i1 %cmp5.i.i368, label %if.then7.i.i374, label %if.end17.i.i382, !dbg !2537

if.then7.i.i374:                                  ; preds = %for.body.i.i369
  %utf_mask.i.i370 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i363, i32 2, !dbg !2538
  %82 = load i32, ptr %utf_mask.i.i370, align 8, !dbg !2538, !tbaa !2153
  %and9.i.i371 = and i32 %82, %unicode.053.i.i362, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %and9.i.i371, metadata !2129, metadata !DIExpression()) #11, !dbg !2523
  %utf_value.i.i372 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %i.052.i.i363, i32 3, !dbg !2540
  %83 = load i32, ptr %utf_value.i.i372, align 4, !dbg !2540, !tbaa !2157
  %cmp11.i.i373 = icmp slt i32 %and9.i.i371, %83, !dbg !2541
  br i1 %cmp11.i.i373, label %if.then13.i.i376, label %if.end15.i.i378, !dbg !2542

if.then13.i.i376:                                 ; preds = %if.then7.i.i374
  %call14.i.i375 = tail call ptr @__errno_location() #12, !dbg !2543
  store i32 84, ptr %call14.i.i375, align 4, !dbg !2544, !tbaa !2172
  br label %GetUTFOctets.exit393, !dbg !2545

if.end15.i.i378:                                  ; preds = %if.then7.i.i374
  %conv16.i.i377 = add nuw i64 %i.052.i.i363, 1, !dbg !2546
  br label %GetUTFOctets.exit393, !dbg !2547

if.end17.i.i382:                                  ; preds = %for.body.i.i369
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i364, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2523
  %84 = load i8, ptr %text.addr.054.i.i364, align 1, !dbg !2548, !tbaa !1254
  %85 = xor i8 %84, -128, !dbg !2549
  %xor.i.i379 = zext i8 %85 to i32, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %xor.i.i379, metadata !2128, metadata !DIExpression()) #11, !dbg !2523
  %and21.i.i380 = and i32 %xor.i.i379, 192, !dbg !2550
  %cmp22.not.i.i381 = icmp eq i32 %and21.i.i380, 0, !dbg !2551
  br i1 %cmp22.not.i.i381, label %if.end26.i.i389, label %if.then24.i.i384, !dbg !2552

if.then24.i.i384:                                 ; preds = %if.end17.i.i382
  %call25.i.i383 = tail call ptr @__errno_location() #12, !dbg !2553
  store i32 84, ptr %call25.i.i383, align 4, !dbg !2554, !tbaa !2172
  br label %GetUTFOctets.exit393, !dbg !2555

if.end26.i.i389:                                  ; preds = %if.end17.i.i382
  call void @llvm.dbg.value(metadata ptr %text.addr.054.i.i364, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2523
  %shl.i.i385 = shl i32 %unicode.053.i.i362, 6, !dbg !2556
  %or.i.i386 = or i32 %shl.i.i385, %xor.i.i379, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %or.i.i386, metadata !2129, metadata !DIExpression()) #11, !dbg !2523
  %inc.i.i387 = add nuw nsw i64 %i.052.i.i363, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %inc.i.i387, metadata !2127, metadata !DIExpression()) #11, !dbg !2523
  %exitcond.not.i.i388 = icmp eq i64 %inc.i.i387, 6, !dbg !2559
  br i1 %exitcond.not.i.i388, label %for.end.i.i391, label %for.body.i.i369, !dbg !2531, !llvm.loop !2560

for.end.i.i391:                                   ; preds = %if.end26.i.i389
  %call27.i.i390 = tail call ptr @__errno_location() #12, !dbg !2562
  store i32 84, ptr %call27.i.i390, align 4, !dbg !2563, !tbaa !2172
  br label %GetUTFOctets.exit393, !dbg !2564

GetUTFOctets.exit393:                             ; preds = %if.then.i.i358, %if.then13.i.i376, %if.end15.i.i378, %if.then24.i.i384, %for.end.i.i391
  %octets.0.i392 = phi i64 [ 1, %if.then.i.i358 ], [ 1, %if.then13.i.i376 ], [ %conv16.i.i377, %if.end15.i.i378 ], [ 1, %for.end.i.i391 ], [ 1, %if.then24.i.i384 ], !dbg !2523
  %idx.ext79 = and i64 %octets.0.i392, 4294967295, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %octets.0.i392, metadata !2259, metadata !DIExpression()) #11, !dbg !2521
  %add.ptr80 = getelementptr inbounds i8, ptr %p.3, i64 %idx.ext79, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %add.ptr80, metadata !2091, metadata !DIExpression()), !dbg !2104
  br label %for.cond66, !dbg !2566, !llvm.loop !2567

for.end81:                                        ; preds = %GetUTFCode.exit324
  ret i64 %n.0, !dbg !2569
}

declare !dbg !2570 ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !2573 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !2576 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMultilineTypeMetrics(ptr noundef %image, ptr noundef %draw_info, ptr noundef %metrics) local_unnamed_addr #0 !dbg !2577 {
entry:
  %extent = alloca %struct._TypeMetric, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2579, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !2580, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !2581, metadata !DIExpression()), !dbg !2587
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %extent) #11, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %extent, metadata !2586, metadata !DIExpression()), !dbg !2589
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2590
  %0 = load i32, ptr %debug, align 8, !dbg !2590, !tbaa !1219
  %cmp.not = icmp eq i32 %0, 0, !dbg !2592
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2593

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2594
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 683, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !2595
  br label %if.end, !dbg !2596

if.end:                                           ; preds = %if.then, %entry
  %text = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 21, !dbg !2597
  %1 = load ptr, ptr %text, align 8, !dbg !2597, !tbaa !1242
  %2 = load i8, ptr %1, align 1, !dbg !2599, !tbaa !1254
  %cmp1 = icmp eq i8 %2, 0, !dbg !2600
  br i1 %cmp1, label %cleanup, label %if.end4, !dbg !2601

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %draw_info) #11, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2583, metadata !DIExpression()), !dbg !2587
  %text6 = getelementptr inbounds %struct._DrawInfo, ptr %call5, i64 0, i32 21, !dbg !2603
  %3 = load ptr, ptr %text6, align 8, !dbg !2603, !tbaa !1242
  %call7 = tail call ptr @DestroyString(ptr noundef %3) #11, !dbg !2604
  store ptr %call7, ptr %text6, align 8, !dbg !2605, !tbaa !1242
  %4 = load ptr, ptr %text, align 8, !dbg !2606, !tbaa !1242
  %call10 = tail call ptr @StringToList(ptr noundef %4) #11, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2582, metadata !DIExpression()), !dbg !2587
  %cmp11 = icmp eq ptr %call10, null, !dbg !2608
  br i1 %cmp11, label %cleanup, label %if.end14, !dbg !2610

if.end14:                                         ; preds = %if.end4
  %render = getelementptr inbounds %struct._DrawInfo, ptr %call5, i64 0, i32 41, !dbg !2611
  store i32 0, ptr %render, align 8, !dbg !2612, !tbaa !1887
  %direction = getelementptr inbounds %struct._DrawInfo, ptr %call5, i64 0, i32 48, !dbg !2613
  store i32 0, ptr %direction, align 8, !dbg !2614, !tbaa !1890
  %call15 = tail call ptr @ResetMagickMemory(ptr noundef %metrics, i32 noundef 0, i64 noundef 120) #11, !dbg !2615
  %call16 = call ptr @ResetMagickMemory(ptr noundef nonnull %extent, i32 noundef 0, i64 noundef 120) #11, !dbg !2616
  %5 = load ptr, ptr %call10, align 8, !dbg !2617, !tbaa !1130
  store ptr %5, ptr %text6, align 8, !dbg !2618, !tbaa !1242
  %call18 = call i32 @GetTypeMetrics(ptr noundef nonnull %image, ptr noundef nonnull %call5, ptr noundef nonnull %extent), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %call18, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %metrics, ptr noundef nonnull align 8 dereferenceable(120) %extent, i64 120, i1 false), !dbg !2620, !tbaa.struct !2621
  call void @llvm.dbg.value(metadata i64 1, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %call18, metadata !2584, metadata !DIExpression()), !dbg !2587
  %arrayidx1990 = getelementptr inbounds ptr, ptr %call10, i64 1, !dbg !2622
  %6 = load ptr, ptr %arrayidx1990, align 8, !dbg !2622, !tbaa !1130
  %cmp20.not91 = icmp eq ptr %6, null, !dbg !2625
  br i1 %cmp20.not91, label %for.end, label %for.body.lr.ph, !dbg !2626

for.body.lr.ph:                                   ; preds = %if.end14
  %width = getelementptr inbounds %struct._TypeMetric, ptr %extent, i64 0, i32 3
  %width25 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3
  br label %for.body, !dbg !2626

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi ptr [ %6, %for.body.lr.ph ], [ %10, %for.inc ]
  %i.092 = phi i64 [ 1, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.092, metadata !2585, metadata !DIExpression()), !dbg !2587
  store ptr %7, ptr %text6, align 8, !dbg !2627, !tbaa !1242
  %call24 = call i32 @GetTypeMetrics(ptr noundef %image, ptr noundef nonnull %call5, ptr noundef nonnull %extent), !dbg !2629
  call void @llvm.dbg.value(metadata i32 %call24, metadata !2584, metadata !DIExpression()), !dbg !2587
  %8 = load double, ptr %width, align 8, !dbg !2630, !tbaa !1402
  %9 = load double, ptr %width25, align 8, !dbg !2632, !tbaa !1402
  %cmp26 = fcmp ogt double %8, %9, !dbg !2633
  br i1 %cmp26, label %if.then28, label %for.inc, !dbg !2634

if.then28:                                        ; preds = %for.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %metrics, ptr noundef nonnull align 8 dereferenceable(120) %extent, i64 120, i1 false), !dbg !2635, !tbaa.struct !2621
  br label %for.inc, !dbg !2636

for.inc:                                          ; preds = %for.body, %if.then28
  %inc = add nuw nsw i64 %i.092, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %call24, metadata !2584, metadata !DIExpression()), !dbg !2587
  %arrayidx19 = getelementptr inbounds ptr, ptr %call10, i64 %inc, !dbg !2622
  %10 = load ptr, ptr %arrayidx19, align 8, !dbg !2622, !tbaa !1130
  %cmp20.not = icmp eq ptr %10, null, !dbg !2625
  br i1 %cmp20.not, label %for.end, label %for.body, !dbg !2626, !llvm.loop !2638

for.end:                                          ; preds = %for.inc, %if.end14
  %status.0.lcssa = phi i32 [ %call18, %if.end14 ], [ %call24, %for.inc ], !dbg !2587
  %i.0.lcssa = phi i64 [ 1, %if.end14 ], [ %inc, %for.inc ], !dbg !2640
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !2641
  %11 = load double, ptr %ascent, align 8, !dbg !2641, !tbaa !1330
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !2642
  %12 = load double, ptr %descent, align 8, !dbg !2642, !tbaa !1333
  %sub = fsub double %11, %12, !dbg !2643
  %add = fadd double %sub, 5.000000e-01, !dbg !2644
  %conv30 = fptoui double %add to i64, !dbg !2645
  %mul = mul i64 %i.0.lcssa, %conv30, !dbg !2646
  %conv31 = uitofp i64 %mul to double, !dbg !2647
  %sub32 = add nsw i64 %i.0.lcssa, -1, !dbg !2648
  %conv33 = sitofp i64 %sub32 to double, !dbg !2649
  %interline_spacing = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 47, !dbg !2650
  %13 = load double, ptr %interline_spacing, align 8, !dbg !2650, !tbaa !1336
  %14 = call double @llvm.fmuladd.f64(double %conv33, double %13, double %conv31), !dbg !2651
  %height = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 4, !dbg !2652
  store double %14, ptr %height, align 8, !dbg !2653, !tbaa !1901
  store ptr null, ptr %text6, align 8, !dbg !2654, !tbaa !1242
  %call36 = call ptr @DestroyDrawInfo(ptr noundef nonnull %call5) #11, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %call36, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2587
  %15 = load ptr, ptr %call10, align 8, !dbg !2656, !tbaa !1130
  %cmp39.not94 = icmp eq ptr %15, null, !dbg !2659
  br i1 %cmp39.not94, label %for.end47, label %for.body41, !dbg !2660

for.body41:                                       ; preds = %for.end, %for.body41
  %16 = phi ptr [ %17, %for.body41 ], [ %15, %for.end ]
  %arrayidx3896 = phi ptr [ %arrayidx38, %for.body41 ], [ %call10, %for.end ]
  %i.195 = phi i64 [ %inc46, %for.body41 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %i.195, metadata !2585, metadata !DIExpression()), !dbg !2587
  %call43 = call ptr @DestroyString(ptr noundef nonnull %16) #11, !dbg !2661
  store ptr %call43, ptr %arrayidx3896, align 8, !dbg !2662, !tbaa !1130
  %inc46 = add nuw nsw i64 %i.195, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !2585, metadata !DIExpression()), !dbg !2587
  %arrayidx38 = getelementptr inbounds ptr, ptr %call10, i64 %inc46, !dbg !2656
  %17 = load ptr, ptr %arrayidx38, align 8, !dbg !2656, !tbaa !1130
  %cmp39.not = icmp eq ptr %17, null, !dbg !2659
  br i1 %cmp39.not, label %for.end47, label %for.body41, !dbg !2660, !llvm.loop !2664

for.end47:                                        ; preds = %for.body41, %for.end
  %call48 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call10) #11, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %call48, metadata !2582, metadata !DIExpression()), !dbg !2587
  br label %cleanup, !dbg !2667

cleanup:                                          ; preds = %if.end4, %if.end, %for.end47
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end47 ], [ 0, %if.end ], [ 0, %if.end4 ], !dbg !2587
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %extent) #11, !dbg !2668
  ret i32 %retval.0, !dbg !2668
}

declare !dbg !2669 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RenderFreetype(ptr noundef %image, ptr noundef %draw_info, ptr nocapture noundef readonly %offset, ptr nocapture noundef %metrics) unnamed_addr #0 !dbg !2672 {
entry:
  %filename.i = alloca [4096 x i8], align 16
  %geometry.i = alloca [4096 x i8], align 16
  %annotate_image.i = alloca ptr, align 8
  %geometry_info.i = alloca %struct._GeometryInfo, align 8
  %tmp.i = alloca %struct._RectangleInfo, align 8
  %fill_color.i = alloca %struct._PixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2676, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !2677, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr undef, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !2680, metadata !DIExpression()), !dbg !2681
  %font = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 23, !dbg !2682
  %0 = load ptr, ptr %font, align 8, !dbg !2682, !tbaa !1955
  %cmp.not = icmp eq ptr %0, null, !dbg !2683
  %spec.select = select i1 %cmp.not, ptr @.str.16, ptr %0, !dbg !2684
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2685
  %call = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1538, i32 noundef 320, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull %spec.select) #11, !dbg !2686
  call void @llvm.dbg.value(metadata ptr %image, metadata !2687, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !2690, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2691, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %metrics, metadata !2692, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename.i) #11, !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %filename.i, metadata !2693, metadata !DIExpression()) #11, !dbg !2736
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry.i) #11, !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %geometry.i, metadata !2694, metadata !DIExpression()) #11, !dbg !2737
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %annotate_image.i) #11, !dbg !2738
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2739
  %1 = load i32, ptr %debug.i, align 8, !dbg !2739, !tbaa !1219
  %cmp.not.i = icmp eq i32 %1, 0, !dbg !2741
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2742

if.then.i:                                        ; preds = %entry
  %2 = load ptr, ptr %font, align 8, !dbg !2743, !tbaa !1955
  %cmp1.not.i = icmp eq ptr %2, null, !dbg !2744
  %spec.select.i = select i1 %cmp1.not.i, ptr @.str.16, ptr %2, !dbg !2745
  %pointsize.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 30, !dbg !2746
  %3 = load double, ptr %pointsize.i, align 8, !dbg !2746, !tbaa !2747
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1654, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select.i, double noundef %3) #11, !dbg !2748
  br label %if.end.i, !dbg !2749

if.end.i:                                         ; preds = %if.then.i, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !2696, metadata !DIExpression()) #11, !dbg !2733
  %call3.i = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %filename.i) #11, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %call3.i, metadata !2699, metadata !DIExpression()) #11, !dbg !2733
  %cmp4.not.i = icmp eq i32 %call3.i, -1, !dbg !2751
  br i1 %cmp4.not.i, label %if.then10.i, label %if.end7.i, !dbg !2753

if.end7.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @fdopen(i32 noundef %call3.i, ptr noundef nonnull @.str.18) #11, !dbg !2754
  call void @llvm.dbg.value(metadata ptr %call6.i, metadata !2696, metadata !DIExpression()) #11, !dbg !2733
  %cmp9.i = icmp eq ptr %call6.i, null
  br i1 %cmp9.i, label %if.then10.i, label %if.end16.i, !dbg !2755

if.then10.i:                                      ; preds = %if.end7.i, %if.end.i
  %call11.i = tail call ptr @__errno_location() #12, !dbg !2756
  %4 = load i32, ptr %call11.i, align 4, !dbg !2756, !tbaa !2172
  %call12.i = call ptr @GetExceptionMessage(i32 noundef %4) #11, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %call12.i, metadata !2707, metadata !DIExpression()) #11, !dbg !2757
  %call14.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1664, i32 noundef 430, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %filename.i, ptr noundef %call12.i) #11, !dbg !2756
  %call15.i = call ptr @DestroyString(ptr noundef %call12.i) #11, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !2707, metadata !DIExpression()) #11, !dbg !2757
  br label %RenderPostscript.exit, !dbg !2758

if.end16.i:                                       ; preds = %if.end7.i
  %call17.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.21) #11, !dbg !2759
  %call18.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.22) #11, !dbg !2760
  %call19.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.23) #11, !dbg !2761
  %call20.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.24) #11, !dbg !2762
  %call21.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.25) #11, !dbg !2763
  %call22.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.26) #11, !dbg !2764
  %call23.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.27) #11, !dbg !2765
  %affine.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, !dbg !2766
  %5 = load double, ptr %affine.i, align 8, !dbg !2767, !tbaa !1400
  %sy.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 3, !dbg !2768
  %6 = load double, ptr %sy.i, align 8, !dbg !2768, !tbaa !1356
  %sub.i = fsub double %5, %6, !dbg !2769
  %7 = call double @llvm.fabs.f64(double %sub.i) #11, !dbg !2770
  %cmp25.i = fcmp olt double %7, 1.000000e-15, !dbg !2771
  br i1 %cmp25.i, label %land.lhs.true.i, label %land.end.i, !dbg !2772

land.lhs.true.i:                                  ; preds = %if.end16.i
  %rx.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 1, !dbg !2773
  %8 = load double, ptr %rx.i, align 8, !dbg !2773, !tbaa !1422
  %9 = call double @llvm.fabs.f64(double %8) #11, !dbg !2774
  %cmp27.i = fcmp olt double %9, 1.000000e-15, !dbg !2775
  br i1 %cmp27.i, label %land.rhs.i, label %land.end.i, !dbg !2776

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %ry.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 2, !dbg !2777
  %10 = load double, ptr %ry.i, align 8, !dbg !2777, !tbaa !1348
  %11 = call double @llvm.fabs.f64(double %10) #11, !dbg !2778
  %cmp29.i = fcmp olt double %11, 1.000000e-15, !dbg !2779
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i, %if.end16.i
  %12 = phi i1 [ false, %land.lhs.true.i ], [ false, %if.end16.i ], [ %cmp29.i, %land.rhs.i ], !dbg !2733
  call void @llvm.dbg.value(metadata i1 %12, metadata !2700, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  %text32.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 21, !dbg !2780
  %13 = load ptr, ptr %text32.i, align 8, !dbg !2780, !tbaa !1242
  %call33.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #13, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %call33.i, metadata !2705, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2704, metadata !DIExpression()) #11, !dbg !2733
  %add.i = add i64 %call33.i, 2
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2704, metadata !DIExpression()) #11, !dbg !2733
  %cmp34.not490.i = icmp slt i64 %add.i, 0, !dbg !2782
  br i1 %cmp34.not490.i, label %for.end.i, label %for.body.lr.ph.i, !dbg !2785

for.body.lr.ph.i:                                 ; preds = %land.end.i
  %pointsize37.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 30
  %14 = load double, ptr %pointsize37.i, align 8, !tbaa !2747
  %ry40.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 2
  %15 = load double, ptr %ry40.i, align 8, !tbaa !1348
  %mul41.i = fmul double %15, 2.000000e+00
  %mul43.i = fmul double %14, %mul41.i
  %rx46.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 1
  %16 = load double, ptr %rx46.i, align 8, !tbaa !1422
  %mul53.i = fmul double %6, 2.000000e+00
  %mul55.i = fmul double %mul53.i, %14
  br label %for.body.i, !dbg !2785

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %extent.sroa.7.0493.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %extent.sroa.7.1.i, %for.inc.i ]
  %extent.sroa.0.0492.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %extent.sroa.0.1.i, %for.inc.i ]
  %i.0491.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata double %extent.sroa.7.0493.i, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata double %extent.sroa.0.0492.i, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %i.0491.i, metadata !2704, metadata !DIExpression()) #11, !dbg !2733
  %conv.i = sitofp i64 %i.0491.i to double, !dbg !2786
  %mul.i = fmul double %5, %conv.i, !dbg !2788
  %17 = call double @llvm.fmuladd.f64(double %mul.i, double %14, double %mul43.i) #11, !dbg !2789
  %18 = call double @llvm.fabs.f64(double %17) #11, !dbg !2790
  call void @llvm.dbg.value(metadata double %18, metadata !2702, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  %mul48.i = fmul double %16, %conv.i, !dbg !2791
  %19 = call double @llvm.fmuladd.f64(double %mul48.i, double %14, double %mul55.i) #11, !dbg !2792
  %20 = call double @llvm.fabs.f64(double %19) #11, !dbg !2793
  call void @llvm.dbg.value(metadata double %20, metadata !2702, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  %cmp59.i = fcmp ogt double %18, %extent.sroa.0.0492.i, !dbg !2794
  br i1 %cmp59.i, label %if.then61.i, label %if.end64.i, !dbg !2796

if.then61.i:                                      ; preds = %for.body.i
  call void @llvm.dbg.value(metadata double %18, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  br label %if.end64.i, !dbg !2797

if.end64.i:                                       ; preds = %if.then61.i, %for.body.i
  %extent.sroa.0.1.i = phi double [ %18, %if.then61.i ], [ %extent.sroa.0.0492.i, %for.body.i ], !dbg !2733
  call void @llvm.dbg.value(metadata double %extent.sroa.0.1.i, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  %cmp67.i = fcmp ogt double %20, %extent.sroa.7.0493.i, !dbg !2798
  br i1 %cmp67.i, label %if.then69.i, label %for.inc.i, !dbg !2800

if.then69.i:                                      ; preds = %if.end64.i
  call void @llvm.dbg.value(metadata double %20, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  br label %for.inc.i, !dbg !2801

for.inc.i:                                        ; preds = %if.then69.i, %if.end64.i
  %extent.sroa.7.1.i = phi double [ %20, %if.then69.i ], [ %extent.sroa.7.0493.i, %if.end64.i ], !dbg !2733
  call void @llvm.dbg.value(metadata double %extent.sroa.7.1.i, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  %inc.i = add nuw i64 %i.0491.i, 1, !dbg !2802
  call void @llvm.dbg.value(metadata double %extent.sroa.0.1.i, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !2704, metadata !DIExpression()) #11, !dbg !2733
  %exitcond.not.i = icmp eq i64 %i.0491.i, %add.i, !dbg !2782
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !dbg !2785, !llvm.loop !2803

for.end.i:                                        ; preds = %for.inc.i, %land.end.i
  %extent.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %land.end.i ], [ %extent.sroa.0.1.i, %for.inc.i ], !dbg !2733
  %extent.sroa.7.0.lcssa.i = phi double [ 0.000000e+00, %land.end.i ], [ %extent.sroa.7.1.i, %for.inc.i ], !dbg !2733
  %div.i = fmul double %extent.sroa.0.0.lcssa.i, 5.000000e-01
  %spec.select474.i = select i1 %12, double 0.000000e+00, double %div.i, !dbg !2805
  %div81.i = fmul double %extent.sroa.7.0.lcssa.i, 5.000000e-01, !dbg !2806
  %call82.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.28, double noundef %spec.select474.i, double noundef %div81.i) #11, !dbg !2807
  %pointsize83.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 30, !dbg !2808
  %21 = load double, ptr %pointsize83.i, align 8, !dbg !2808, !tbaa !2747
  %call85.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.29, double noundef %21, double noundef %21) #11, !dbg !2809
  %22 = load ptr, ptr %font, align 8, !dbg !2810, !tbaa !1955
  %cmp87.i = icmp eq ptr %22, null, !dbg !2812
  br i1 %cmp87.i, label %if.then99.i, label %lor.lhs.false89.i, !dbg !2813

lor.lhs.false89.i:                                ; preds = %for.end.i
  %23 = load i8, ptr %22, align 1, !dbg !2814, !tbaa !1254
  %cmp92.i = icmp eq i8 %23, 0, !dbg !2815
  br i1 %cmp92.i, label %if.then99.i, label %lor.lhs.false94.i, !dbg !2816

lor.lhs.false94.i:                                ; preds = %lor.lhs.false89.i
  %call96.i = call ptr @strchr(ptr noundef nonnull %22, i32 noundef 47) #13, !dbg !2817
  %cmp97.not.i = icmp eq ptr %call96.i, null, !dbg !2818
  br i1 %cmp97.not.i, label %if.else.i, label %if.then99.i, !dbg !2819

if.then99.i:                                      ; preds = %lor.lhs.false94.i, %lor.lhs.false89.i, %for.end.i
  %call100.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.30) #11, !dbg !2820
  br label %if.end104.i, !dbg !2821

if.else.i:                                        ; preds = %lor.lhs.false94.i
  %call103.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %22, ptr noundef nonnull %22) #11, !dbg !2822
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else.i, %if.then99.i
  %24 = load double, ptr %affine.i, align 8, !dbg !2823, !tbaa !1400
  %rx108.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 1, !dbg !2824
  %25 = load double, ptr %rx108.i, align 8, !dbg !2824, !tbaa !1422
  %fneg.i = fneg double %25, !dbg !2825
  %ry110.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 3, i32 2, !dbg !2826
  %26 = load double, ptr %ry110.i, align 8, !dbg !2826, !tbaa !1348
  %fneg111.i = fneg double %26, !dbg !2827
  %27 = load double, ptr %sy.i, align 8, !dbg !2828, !tbaa !1356
  %call114.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.32, double noundef %24, double noundef %fneg.i, double noundef %fneg111.i, double noundef %27) #11, !dbg !2829
  %28 = load ptr, ptr %text32.i, align 8, !dbg !2830, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %28, metadata !2831, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata i64 0, metadata !2837, metadata !DIExpression()) #11, !dbg !2838
  %call.i.i = call ptr @AcquireString(ptr noundef %28) #11, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !2834, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !2835, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()) #11, !dbg !2838
  %call125.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #13, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %call125.i.i, metadata !2844, metadata !DIExpression()) #11, !dbg !2850
  call void @llvm.dbg.value(metadata i64 4095, metadata !2849, metadata !DIExpression()) #11, !dbg !2850
  %29 = call i64 @llvm.umin.i64(i64 %call125.i.i, i64 4095) #11, !dbg !2850
  %cmp26.not.i.i = icmp eq i64 %29, 0, !dbg !2852
  br i1 %cmp26.not.i.i, label %EscapeParenthesis.exit.i, label %for.body.i.i, !dbg !2853

for.body.i.i:                                     ; preds = %if.end104.i, %if.end.i.i
  %escapes.029.i.i = phi i64 [ %escapes.1.i.i, %if.end.i.i ], [ 0, %if.end104.i ]
  %i.028.i.i = phi i64 [ %inc12.i.i, %if.end.i.i ], [ 0, %if.end104.i ]
  %p.027.i.i = phi ptr [ %incdec.ptr11.i.i, %if.end.i.i ], [ %call.i.i, %if.end104.i ]
  call void @llvm.dbg.value(metadata i64 %escapes.029.i.i, metadata !2837, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %i.028.i.i, metadata !2836, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %p.027.i.i, metadata !2835, metadata !DIExpression()) #11, !dbg !2838
  %arrayidx.i.i = getelementptr inbounds i8, ptr %28, i64 %i.028.i.i, !dbg !2854
  %30 = load i8, ptr %arrayidx.i.i, align 1, !dbg !2854, !tbaa !1254
  %31 = and i8 %30, -2, !dbg !2857
  %switch.i.i = icmp eq i8 %31, 40, !dbg !2857
  br i1 %switch.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !2857

if.then.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %p.027.i.i, i64 1, !dbg !2858
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.i, metadata !2835, metadata !DIExpression()) #11, !dbg !2838
  store i8 92, ptr %p.027.i.i, align 1, !dbg !2860, !tbaa !1254
  %inc.i.i = add i64 %escapes.029.i.i, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !2837, metadata !DIExpression()) #11, !dbg !2838
  %.pre.i.i = load i8, ptr %arrayidx.i.i, align 1, !dbg !2862, !tbaa !1254
  br label %if.end.i.i, !dbg !2863

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %32 = phi i8 [ %.pre.i.i, %if.then.i.i ], [ %30, %for.body.i.i ], !dbg !2862
  %p.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then.i.i ], [ %p.027.i.i, %for.body.i.i ], !dbg !2838
  %escapes.1.i.i = phi i64 [ %inc.i.i, %if.then.i.i ], [ %escapes.029.i.i, %for.body.i.i ], !dbg !2838
  call void @llvm.dbg.value(metadata i64 %escapes.1.i.i, metadata !2837, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %p.1.i.i, metadata !2835, metadata !DIExpression()) #11, !dbg !2838
  %incdec.ptr11.i.i = getelementptr inbounds i8, ptr %p.1.i.i, i64 1, !dbg !2864
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11.i.i, metadata !2835, metadata !DIExpression()) #11, !dbg !2838
  store i8 %32, ptr %p.1.i.i, align 1, !dbg !2865, !tbaa !1254
  %inc12.i.i = add nuw nsw i64 %i.028.i.i, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %inc12.i.i, metadata !2836, metadata !DIExpression()) #11, !dbg !2838
  %call1.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #13, !dbg !2841
  %sub2.i.i = sub i64 4095, %escapes.1.i.i, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %call1.i.i, metadata !2844, metadata !DIExpression()) #11, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %sub2.i.i, metadata !2849, metadata !DIExpression()) #11, !dbg !2850
  %33 = call i64 @llvm.umin.i64(i64 %call1.i.i, i64 %sub2.i.i) #11, !dbg !2850
  %cmp.i.i = icmp slt i64 %inc12.i.i, %33, !dbg !2852
  br i1 %cmp.i.i, label %for.body.i.i, label %EscapeParenthesis.exit.i, !dbg !2853, !llvm.loop !2868

EscapeParenthesis.exit.i:                         ; preds = %if.end.i.i, %if.end104.i
  %p.0.lcssa.i.i = phi ptr [ %call.i.i, %if.end104.i ], [ %incdec.ptr11.i.i, %if.end.i.i ], !dbg !2838
  store i8 0, ptr %p.0.lcssa.i.i, align 1, !dbg !2870, !tbaa !1254
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !2695, metadata !DIExpression()) #11, !dbg !2733
  br i1 %12, label %if.end121.i, label %if.then119.i, !dbg !2871

if.then119.i:                                     ; preds = %EscapeParenthesis.exit.i
  %call120.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.33, ptr noundef %call.i.i) #11, !dbg !2872
  br label %if.end121.i, !dbg !2874

if.end121.i:                                      ; preds = %if.then119.i, %EscapeParenthesis.exit.i
  %call122.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.34, ptr noundef %call.i.i) #11, !dbg !2875
  %call123.i = call ptr @DestroyString(ptr noundef %call.i.i) #11, !dbg !2876
  call void @llvm.dbg.value(metadata ptr %call123.i, metadata !2695, metadata !DIExpression()) #11, !dbg !2733
  %call124.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.35) #11, !dbg !2877
  %call125.i = call i32 @fclose(ptr noundef nonnull %call6.i) #11, !dbg !2878
  %add128.i = fadd double %extent.sroa.0.0.lcssa.i, 5.000000e-01, !dbg !2879
  %34 = call double @llvm.floor.f64(double %add128.i) #11, !dbg !2880
  %add130.i = fadd double %extent.sroa.7.0.lcssa.i, 5.000000e-01, !dbg !2881
  %35 = call double @llvm.floor.f64(double %add130.i) #11, !dbg !2882
  %call131.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry.i, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %34, double noundef %35) #11, !dbg !2883
  %call132.i = call ptr @AcquireImageInfo() #11, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %call132.i, metadata !2698, metadata !DIExpression()) #11, !dbg !2733
  %filename133.i = getelementptr inbounds %struct._ImageInfo, ptr %call132.i, i64 0, i32 51, !dbg !2885
  %call136.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename133.i, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull %filename.i) #11, !dbg !2886
  %page.i = getelementptr inbounds %struct._ImageInfo, ptr %call132.i, i64 0, i32 8, !dbg !2887
  %call138.i = call ptr @CloneString(ptr noundef nonnull %page.i, ptr noundef nonnull %geometry.i) #11, !dbg !2888
  %density.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 31, !dbg !2889
  %36 = load ptr, ptr %density.i, align 8, !dbg !2889, !tbaa !2891
  %cmp139.not.i = icmp eq ptr %36, null, !dbg !2892
  br i1 %cmp139.not.i, label %if.end145.i, label %if.then141.i, !dbg !2893

if.then141.i:                                     ; preds = %if.end121.i
  %density142.i = getelementptr inbounds %struct._ImageInfo, ptr %call132.i, i64 0, i32 21, !dbg !2894
  %call144.i = call ptr @CloneString(ptr noundef nonnull %density142.i, ptr noundef nonnull %36) #11, !dbg !2895
  br label %if.end145.i, !dbg !2896

if.end145.i:                                      ; preds = %if.then141.i, %if.end121.i
  %text_antialias.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 13, !dbg !2897
  %37 = load i32, ptr %text_antialias.i, align 4, !dbg !2897, !tbaa !2898
  %antialias.i = getelementptr inbounds %struct._ImageInfo, ptr %call132.i, i64 0, i32 5, !dbg !2899
  store i32 %37, ptr %antialias.i, align 4, !dbg !2900, !tbaa !2901
  %call147.i = call ptr @ReadImage(ptr noundef %call132.i, ptr noundef nonnull %exception) #11, !dbg !2903
  call void @llvm.dbg.value(metadata ptr %call147.i, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  store ptr %call147.i, ptr %annotate_image.i, align 8, !dbg !2904, !tbaa !1130
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !2905
  %call149.i = call ptr @DestroyImageInfo(ptr noundef %call132.i) #11, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %call149.i, metadata !2698, metadata !DIExpression()) #11, !dbg !2733
  %call151.i = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename.i) #11, !dbg !2907
  %cmp152.i = icmp eq ptr %call147.i, null, !dbg !2908
  br i1 %cmp152.i, label %RenderPostscript.exit, label %if.end155.i, !dbg !2910

if.end155.i:                                      ; preds = %if.end145.i
  call void @llvm.dbg.value(metadata double undef, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  %38 = load double, ptr @DefaultResolution, align 8, !dbg !2911, !tbaa !1743
  call void @llvm.dbg.value(metadata double %38, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  %39 = load ptr, ptr %density.i, align 8, !dbg !2912, !tbaa !2891
  %cmp159.not.i = icmp eq ptr %39, null, !dbg !2913
  br i1 %cmp159.not.i, label %if.end172.i, label %if.then161.i, !dbg !2914

if.then161.i:                                     ; preds = %if.end155.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info.i) #11, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %geometry_info.i, metadata !2711, metadata !DIExpression()) #11, !dbg !2916
  %call163.i = call i32 @ParseGeometry(ptr noundef nonnull %39, ptr noundef nonnull %geometry_info.i) #11, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %call163.i, metadata !2714, metadata !DIExpression()) #11, !dbg !2918
  call void @llvm.dbg.value(metadata double undef, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2733
  %sigma.i = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info.i, i64 0, i32 1, !dbg !2919
  %40 = load double, ptr %sigma.i, align 8, !dbg !2919, !tbaa !2920
  call void @llvm.dbg.value(metadata double %40, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  %and.i = and i32 %call163.i, 8, !dbg !2921
  %cmp166.i = icmp eq i32 %and.i, 0, !dbg !2923
  %41 = load double, ptr %geometry_info.i, align 8
  %spec.select475.i = select i1 %cmp166.i, double %41, double %40, !dbg !2924
  call void @llvm.dbg.value(metadata double %spec.select475.i, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info.i) #11, !dbg !2925
  br label %if.end172.i, !dbg !2926

if.end172.i:                                      ; preds = %if.then161.i, %if.end155.i
  %resolution.sroa.5.1.i = phi double [ %spec.select475.i, %if.then161.i ], [ %38, %if.end155.i ], !dbg !2733
  call void @llvm.dbg.value(metadata double %resolution.sroa.5.1.i, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2733
  br i1 %12, label %if.else177.i, label %if.then175.i, !dbg !2927

if.then175.i:                                     ; preds = %if.end172.i
  call void @llvm.dbg.value(metadata ptr %annotate_image.i, metadata !2697, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2733
  %call176.i = call i32 @TransformImage(ptr noundef nonnull %annotate_image.i, ptr noundef nonnull @.str.38, ptr noundef null) #11, !dbg !2928
  %.pre504.i = fdiv double %resolution.sroa.5.1.i, %38, !dbg !2929
  br label %if.end206.i, !dbg !2930

if.else177.i:                                     ; preds = %if.end172.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #11, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %call147.i, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %exception178.i = getelementptr inbounds %struct._Image, ptr %call147.i, i64 0, i32 58, !dbg !2932
  call void @GetImageBoundingBox(ptr nonnull sret(%struct._RectangleInfo) align 8 %tmp.i, ptr noundef nonnull %call147.i, ptr noundef nonnull %exception178.i) #11, !dbg !2931
  %crop_info.sroa.0.0.copyload.i = load i64, ptr %tmp.i, align 8, !dbg !2931, !tbaa.struct !2933
  call void @llvm.dbg.value(metadata i64 %crop_info.sroa.0.0.copyload.i, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #11, !dbg !2935
  call void @llvm.dbg.value(metadata i64 undef, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2935
  %crop_info.sroa.6.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i64 16, !dbg !2931
  %crop_info.sroa.6.0.copyload.i = load i64, ptr %crop_info.sroa.6.0.tmp.sroa_idx.i, align 8, !dbg !2931, !tbaa.struct !2936
  call void @llvm.dbg.value(metadata i64 %crop_info.sroa.6.0.copyload.i, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #11, !dbg !2935
  call void @llvm.dbg.value(metadata i64 undef, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #11, !dbg !2935
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #11, !dbg !2931
  %div180.i = fdiv double %resolution.sroa.5.1.i, %38, !dbg !2937
  %call182.i = call double @ExpandAffine(ptr noundef nonnull %affine.i) #11, !dbg !2938
  %mul183.i = fmul double %div180.i, %call182.i, !dbg !2939
  %42 = load double, ptr %pointsize83.i, align 8, !dbg !2940, !tbaa !2747
  %43 = call double @llvm.fmuladd.f64(double %mul183.i, double %42, double 5.000000e-01) #11, !dbg !2941
  %conv186.i = fptoui double %43 to i64, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %conv186.i, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #11, !dbg !2935
  %mul190.i = fmul double %extent.sroa.7.0.lcssa.i, %div180.i, !dbg !2943
  %div191.i = fmul double %mul190.i, 1.250000e-01, !dbg !2944
  %sub192.i = fadd double %div191.i, -5.000000e-01, !dbg !2945
  %44 = call double @llvm.ceil.f64(double %sub192.i) #11, !dbg !2946
  %conv193.i = fptosi double %44 to i64, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %conv193.i, metadata !2715, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #11, !dbg !2935
  %conv196.i = uitofp i64 %crop_info.sroa.0.0.copyload.i to double, !dbg !2948
  %conv198.i = uitofp i64 %conv186.i to double, !dbg !2949
  %conv200.i = sitofp i64 %crop_info.sroa.6.0.copyload.i to double, !dbg !2950
  %conv202.i = sitofp i64 %conv193.i to double, !dbg !2951
  %call203.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry.i, i64 noundef 4096, ptr noundef nonnull @.str.39, double noundef %conv196.i, double noundef %conv198.i, double noundef %conv200.i, double noundef %conv202.i) #11, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %annotate_image.i, metadata !2697, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2733
  %call205.i = call i32 @TransformImage(ptr noundef nonnull %annotate_image.i, ptr noundef nonnull %geometry.i, ptr noundef null) #11, !dbg !2953
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else177.i, %if.then175.i
  %div208.pre-phi.i = phi double [ %div180.i, %if.else177.i ], [ %.pre504.i, %if.then175.i ], !dbg !2929
  %call210.i = call double @ExpandAffine(ptr noundef nonnull %affine.i) #11, !dbg !2954
  %mul211.i = fmul double %div208.pre-phi.i, %call210.i, !dbg !2955
  %45 = load double, ptr %pointsize83.i, align 8, !dbg !2956, !tbaa !2747
  %mul213.i = fmul double %mul211.i, %45, !dbg !2957
  store double %mul213.i, ptr %metrics, align 8, !dbg !2958, !tbaa !1919
  %y218.i = getelementptr inbounds %struct._PointInfo, ptr %metrics, i64 0, i32 1, !dbg !2959
  store double %mul213.i, ptr %y218.i, align 8, !dbg !2960, !tbaa !1921
  %ascent.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !2961
  store double %mul213.i, ptr %ascent.i, align 8, !dbg !2962, !tbaa !1330
  %div223.i = fdiv double %mul213.i, -5.000000e+00, !dbg !2963
  %descent.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !2964
  store double %div223.i, ptr %descent.i, align 8, !dbg !2965, !tbaa !1333
  %46 = load ptr, ptr %annotate_image.i, align 8, !dbg !2966, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %46, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %columns.i = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7, !dbg !2967
  %47 = load i64, ptr %columns.i, align 8, !dbg !2967, !tbaa !2332
  %conv224.i = uitofp i64 %47 to double, !dbg !2968
  %call226.i = call double @ExpandAffine(ptr noundef nonnull %affine.i) #11, !dbg !2969
  %div227.i = fdiv double %conv224.i, %call226.i, !dbg !2970
  %width228.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3, !dbg !2971
  store double %div227.i, ptr %width228.i, align 8, !dbg !2972, !tbaa !1402
  %48 = load double, ptr %metrics, align 8, !dbg !2973, !tbaa !1919
  %mul231.i = fmul double %48, 1.152000e+00, !dbg !2974
  %height232.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 4, !dbg !2975
  store double %mul231.i, ptr %height232.i, align 8, !dbg !2976, !tbaa !1901
  %max_advance.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 5, !dbg !2977
  store double %48, ptr %max_advance.i, align 8, !dbg !2978, !tbaa !1905
  %bounds.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, !dbg !2979
  store double 0.000000e+00, ptr %bounds.i, align 8, !dbg !2980, !tbaa !1404
  %49 = load double, ptr %descent.i, align 8, !dbg !2981, !tbaa !1333
  %y1.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 1, !dbg !2982
  store double %49, ptr %y1.i, align 8, !dbg !2983, !tbaa !1909
  %50 = load double, ptr %ascent.i, align 8, !dbg !2984, !tbaa !1330
  %add239.i = fadd double %49, %50, !dbg !2985
  %x2.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 2, !dbg !2986
  store double %add239.i, ptr %x2.i, align 8, !dbg !2987, !tbaa !1911
  %y2.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 3, !dbg !2988
  store double %add239.i, ptr %y2.i, align 8, !dbg !2989, !tbaa !1913
  %underline_position.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 6, !dbg !2990
  store double -2.000000e+00, ptr %underline_position.i, align 8, !dbg !2991, !tbaa !1776
  %underline_thickness.i = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 7, !dbg !2992
  store double 1.000000e+00, ptr %underline_thickness.i, align 8, !dbg !2993, !tbaa !1764
  %render.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 41, !dbg !2994
  %51 = load i32, ptr %render.i, align 8, !dbg !2994, !tbaa !1887
  %cmp245.i = icmp eq i32 %51, 0, !dbg !2996
  br i1 %cmp245.i, label %if.then247.i, label %if.end249.i, !dbg !2997

if.then247.i:                                     ; preds = %if.end206.i
  %52 = load ptr, ptr %annotate_image.i, align 8, !dbg !2998, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %52, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %call248.i = call ptr @DestroyImage(ptr noundef %52) #11, !dbg !3000
  call void @llvm.dbg.value(metadata ptr %call248.i, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  br label %RenderPostscript.exit, !dbg !3001

if.end249.i:                                      ; preds = %if.end206.i
  %fill.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 5, !dbg !3002
  %opacity.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 5, i32 3, !dbg !3003
  %53 = load i16, ptr %opacity.i, align 2, !dbg !3003, !tbaa !3004
  %cmp251.not.i = icmp eq i16 %53, -1, !dbg !3005
  br i1 %cmp251.not.i, label %if.end326.i, label %if.then253.i, !dbg !3006

if.then253.i:                                     ; preds = %if.end249.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fill_color.i) #11, !dbg !3007
  call void @llvm.dbg.declare(metadata ptr %fill_color.i, metadata !2722, metadata !DIExpression()) #11, !dbg !3008
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !3009
  %54 = load i32, ptr %matte.i, align 8, !dbg !3009, !tbaa !3011
  %cmp255.i = icmp eq i32 %54, 0, !dbg !3012
  br i1 %cmp255.i, label %if.then257.i, label %if.end259.i, !dbg !3013

if.then257.i:                                     ; preds = %if.then253.i
  %call258.i = call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !3014
  br label %if.end259.i, !dbg !3015

if.end259.i:                                      ; preds = %if.then257.i, %if.then253.i
  %55 = load ptr, ptr %annotate_image.i, align 8, !dbg !3016, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %55, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %matte260.i = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 6, !dbg !3018
  %56 = load i32, ptr %matte260.i, align 8, !dbg !3018, !tbaa !3011
  %cmp261.i = icmp eq i32 %56, 0, !dbg !3019
  br i1 %cmp261.i, label %if.then263.i, label %if.end265.i, !dbg !3020

if.then263.i:                                     ; preds = %if.end259.i
  %call264.i = call i32 @SetImageAlphaChannel(ptr noundef nonnull %55, i32 noundef 6) #11, !dbg !3021
  %.pre.i = load ptr, ptr %annotate_image.i, align 8, !dbg !3022, !tbaa !1130
  br label %if.end265.i, !dbg !3023

if.end265.i:                                      ; preds = %if.then263.i, %if.end259.i
  %57 = phi ptr [ %.pre.i, %if.then263.i ], [ %55, %if.end259.i ], !dbg !3022
  %58 = load i64, ptr %fill.i, align 4, !dbg !3024
  store i64 %58, ptr %fill_color.i, align 8, !dbg !3024
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2718, metadata !DIExpression()) #11, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %57, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %call268.i = call ptr @AcquireAuthenticCacheView(ptr noundef %57, ptr noundef nonnull %exception) #11, !dbg !3026
  call void @llvm.dbg.value(metadata ptr %call268.i, metadata !2723, metadata !DIExpression()) #11, !dbg !3025
  call void @llvm.dbg.value(metadata i64 0, metadata !2706, metadata !DIExpression()) #11, !dbg !2733
  %59 = load ptr, ptr %annotate_image.i, align 8, !dbg !3027, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %59, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %rows500.i = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 8, !dbg !3028
  %60 = load i64, ptr %rows500.i, align 8, !dbg !3028, !tbaa !3029
  %cmp270501.i = icmp sgt i64 %60, 0, !dbg !3030
  br i1 %cmp270501.i, label %for.body272.lr.ph.i, label %for.end313.i, !dbg !3031

for.body272.lr.ph.i:                              ; preds = %if.end265.i
  %fill_pattern.i.i = getelementptr inbounds %struct._DrawInfo, ptr %draw_info, i64 0, i32 9
  %opacity.i.i = getelementptr inbounds %struct._PixelPacket, ptr %fill_color.i, i64 0, i32 3
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %fill_color.i, i64 0, i32 2
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %fill_color.i, i64 0, i32 1
  br label %for.body272.i, !dbg !3031

for.cond269.i:                                    ; preds = %for.end304.i
  %inc312.i = add nuw nsw i64 %y.0502.i, 1, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %y.0502.i, metadata !2706, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2733
  %61 = load ptr, ptr %annotate_image.i, align 8, !dbg !3027, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %61, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %rows.i = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 8, !dbg !3028
  %62 = load i64, ptr %rows.i, align 8, !dbg !3028, !tbaa !3029
  %cmp270.i = icmp slt i64 %inc312.i, %62, !dbg !3030
  br i1 %cmp270.i, label %for.body272.i, label %for.end313.i, !dbg !3031, !llvm.loop !3033

for.body272.i:                                    ; preds = %for.cond269.i, %for.body272.lr.ph.i
  %63 = phi ptr [ %59, %for.body272.lr.ph.i ], [ %61, %for.cond269.i ]
  %y.0502.i = phi i64 [ 0, %for.body272.lr.ph.i ], [ %inc312.i, %for.cond269.i ]
  call void @llvm.dbg.value(metadata i64 %y.0502.i, metadata !2706, metadata !DIExpression()) #11, !dbg !2733
  %columns274.i = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 7, !dbg !3035
  %64 = load i64, ptr %columns274.i, align 8, !dbg !3035, !tbaa !2332
  %call275.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call268.i, i64 noundef 0, i64 noundef %y.0502.i, i64 noundef %64, i64 noundef 1, ptr noundef nonnull %exception) #14, !dbg !3036
  call void @llvm.dbg.value(metadata ptr %call275.i, metadata !2731, metadata !DIExpression()) #11, !dbg !3037
  %cmp276.i = icmp eq ptr %call275.i, null, !dbg !3038
  br i1 %cmp276.i, label %for.end313.i, label %for.cond280.preheader.i, !dbg !3040

for.cond280.preheader.i:                          ; preds = %for.body272.i
  call void @llvm.dbg.value(metadata ptr %call275.i, metadata !2731, metadata !DIExpression()) #11, !dbg !3037
  call void @llvm.dbg.value(metadata i64 0, metadata !2727, metadata !DIExpression()) #11, !dbg !3037
  %65 = load ptr, ptr %annotate_image.i, align 8, !dbg !3041, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %65, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %columns281495.i = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7, !dbg !3044
  %66 = load i64, ptr %columns281495.i, align 8, !dbg !3044, !tbaa !2332
  %cmp282496.i = icmp sgt i64 %66, 0, !dbg !3045
  br i1 %cmp282496.i, label %for.body284.i, label %for.end304.i, !dbg !3046

for.body284.i:                                    ; preds = %for.cond280.preheader.i, %ClampToQuantum.exit.i
  %q.0499.i = phi ptr [ %incdec.ptr.i, %ClampToQuantum.exit.i ], [ %call275.i, %for.cond280.preheader.i ]
  %x273.0497.i = phi i64 [ %inc303.i, %ClampToQuantum.exit.i ], [ 0, %for.cond280.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %q.0499.i, metadata !2731, metadata !DIExpression()) #11, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %x273.0497.i, metadata !2727, metadata !DIExpression()) #11, !dbg !3037
  call void @llvm.dbg.value(metadata ptr %draw_info, metadata !3047, metadata !DIExpression()) #11, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %x273.0497.i, metadata !3054, metadata !DIExpression()) #11, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %y.0502.i, metadata !3055, metadata !DIExpression()) #11, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %fill_color.i, metadata !3056, metadata !DIExpression()) #11, !dbg !3059
  %67 = load ptr, ptr %fill_pattern.i.i, align 8, !dbg !3062, !tbaa !3063
  call void @llvm.dbg.value(metadata ptr %67, metadata !3057, metadata !DIExpression()) #11, !dbg !3059
  %cmp.i476.i = icmp eq ptr %67, null, !dbg !3064
  br i1 %cmp.i476.i, label %if.then.i477.i, label %if.end.i479.i, !dbg !3066

if.then.i477.i:                                   ; preds = %for.body284.i
  %68 = load i64, ptr %fill.i, align 4, !dbg !3067
  store i64 %68, ptr %fill_color.i, align 8, !dbg !3067
  br label %GetFillColor.exit.i, !dbg !3069

if.end.i479.i:                                    ; preds = %for.body284.i
  %x1.i.i = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 74, i32 2, !dbg !3070
  %69 = load i64, ptr %x1.i.i, align 8, !dbg !3070, !tbaa !3071
  %add.i.i = add nsw i64 %69, %x273.0497.i, !dbg !3072
  %y3.i.i = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 74, i32 3, !dbg !3073
  %70 = load i64, ptr %y3.i.i, align 8, !dbg !3073, !tbaa !3074
  %add4.i.i = add nsw i64 %70, %y.0502.i, !dbg !3075
  %exception.i.i = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 58, !dbg !3076
  %call.i478.i = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %67, i32 noundef 7, i64 noundef %add.i.i, i64 noundef %add4.i.i, ptr noundef nonnull %fill_color.i, ptr noundef nonnull %exception.i.i) #11, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %call.i478.i, metadata !3058, metadata !DIExpression()) #11, !dbg !3059
  %matte.i.i = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 6, !dbg !3078
  %71 = load i32, ptr %matte.i.i, align 8, !dbg !3078, !tbaa !3011
  %cmp5.i.i = icmp eq i32 %71, 0, !dbg !3080
  br i1 %cmp5.i.i, label %if.then6.i.i, label %GetFillColor.exit.i, !dbg !3081

if.then6.i.i:                                     ; preds = %if.end.i479.i
  store i16 0, ptr %opacity.i.i, align 2, !dbg !3082, !tbaa !3083
  br label %GetFillColor.exit.i, !dbg !3084

GetFillColor.exit.i:                              ; preds = %if.then6.i.i, %if.end.i479.i, %if.then.i477.i
  %72 = load ptr, ptr %annotate_image.i, align 8, !dbg !3085, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %72, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %call286.i = call float @GetPixelIntensity(ptr noundef %72, ptr noundef nonnull %q.0499.i) #14, !dbg !3085
  %sub287.i = fsub float 6.553500e+04, %call286.i, !dbg !3085
  %73 = load i16, ptr %opacity.i.i, align 2, !dbg !3085, !tbaa !3083
  %74 = xor i16 %73, -1, !dbg !3085
  %conv291.i = uitofp i16 %74 to float, !dbg !3085
  %mul292.i = fmul float %sub287.i, %conv291.i, !dbg !3085
  %div293.i = fdiv float %mul292.i, 6.553500e+04, !dbg !3085
  call void @llvm.dbg.value(metadata float %div293.i, metadata !3086, metadata !DIExpression()) #11, !dbg !3092
  %cmp.i480.i = fcmp ugt float %div293.i, 0.000000e+00, !dbg !3094
  br i1 %cmp.i480.i, label %if.end.i481.i, label %ClampToQuantum.exit.i, !dbg !3096

if.end.i481.i:                                    ; preds = %GetFillColor.exit.i
  %cmp1.i.i = fcmp ult float %div293.i, 6.553500e+04, !dbg !3097
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !3099

if.end3.i.i:                                      ; preds = %if.end.i481.i
  %add.i482.i = fadd float %div293.i, 5.000000e-01, !dbg !3100
  %conv.i.i = fptoui float %add.i482.i to i16, !dbg !3101
  br label %ClampToQuantum.exit.i, !dbg !3102

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i481.i, %GetFillColor.exit.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %GetFillColor.exit.i ], [ -1, %if.end.i481.i ], !dbg !3092
  %75 = xor i16 %retval.0.i.i, -1, !dbg !3085
  %opacity298.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0499.i, i64 0, i32 3, !dbg !3085
  store i16 %75, ptr %opacity298.i, align 2, !dbg !3085, !tbaa !3083
  %76 = load i16, ptr %red.i, align 4, !dbg !3103, !tbaa !3104
  %red299.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0499.i, i64 0, i32 2, !dbg !3103
  store i16 %76, ptr %red299.i, align 2, !dbg !3103, !tbaa !3104
  %77 = load i16, ptr %green.i, align 2, !dbg !3105, !tbaa !3106
  %green300.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0499.i, i64 0, i32 1, !dbg !3105
  store i16 %77, ptr %green300.i, align 2, !dbg !3105, !tbaa !3106
  %78 = load i16, ptr %fill_color.i, align 8, !dbg !3107, !tbaa !3108
  store i16 %78, ptr %q.0499.i, align 2, !dbg !3107, !tbaa !3108
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0499.i, i64 1, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2731, metadata !DIExpression()) #11, !dbg !3037
  %inc303.i = add nuw nsw i64 %x273.0497.i, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %inc303.i, metadata !2727, metadata !DIExpression()) #11, !dbg !3037
  %79 = load ptr, ptr %annotate_image.i, align 8, !dbg !3041, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %79, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %columns281.i = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 7, !dbg !3044
  %80 = load i64, ptr %columns281.i, align 8, !dbg !3044, !tbaa !2332
  %cmp282.i = icmp slt i64 %inc303.i, %80, !dbg !3045
  br i1 %cmp282.i, label %for.body284.i, label %for.end304.i, !dbg !3046, !llvm.loop !3111

for.end304.i:                                     ; preds = %ClampToQuantum.exit.i, %for.cond280.preheader.i
  %call305.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call268.i, ptr noundef nonnull %exception) #14, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %call305.i, metadata !2721, metadata !DIExpression()) #11, !dbg !3025
  %cmp306.i = icmp eq i32 %call305.i, 0, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %y.0502.i, metadata !2706, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2733
  br i1 %cmp306.i, label %for.end313.i, label %for.cond269.i, !dbg !3116

for.end313.i:                                     ; preds = %for.end304.i, %for.body272.i, %for.cond269.i, %if.end265.i
  %call314.i = call ptr @DestroyCacheView(ptr noundef %call268.i) #11, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %call314.i, metadata !2723, metadata !DIExpression()) #11, !dbg !3025
  %81 = load ptr, ptr %annotate_image.i, align 8, !dbg !3118, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %81, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %82 = load double, ptr %offset, align 8, !dbg !3119, !tbaa !1353
  %sub316.i = fadd double %82, -5.000000e-01, !dbg !3120
  %83 = call double @llvm.ceil.f64(double %sub316.i) #11, !dbg !3121
  %conv317.i = fptosi double %83 to i64, !dbg !3122
  %y318.i = getelementptr inbounds %struct._PointInfo, ptr %offset, i64 0, i32 1, !dbg !3123
  %84 = load double, ptr %y318.i, align 8, !dbg !3123, !tbaa !1681
  %85 = load double, ptr %ascent.i, align 8, !dbg !3124, !tbaa !1330
  %86 = load double, ptr %descent.i, align 8, !dbg !3125, !tbaa !1333
  %add321.i = fadd double %85, %86, !dbg !3126
  %sub322.i = fsub double %84, %add321.i, !dbg !3127
  %sub323.i = fadd double %sub322.i, -5.000000e-01, !dbg !3128
  %87 = call double @llvm.ceil.f64(double %sub323.i) #11, !dbg !3129
  %conv324.i = fptosi double %87 to i64, !dbg !3130
  %call325.i = call i32 @CompositeImage(ptr noundef %image, i32 noundef 40, ptr noundef %81, i64 noundef %conv317.i, i64 noundef %conv324.i) #11, !dbg !3131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fill_color.i) #11, !dbg !3132
  br label %if.end326.i, !dbg !3133

if.end326.i:                                      ; preds = %for.end313.i, %if.end249.i
  %88 = load ptr, ptr %annotate_image.i, align 8, !dbg !3134, !tbaa !1130
  call void @llvm.dbg.value(metadata ptr %88, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  %call327.i = call ptr @DestroyImage(ptr noundef %88) #11, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %call327.i, metadata !2697, metadata !DIExpression()) #11, !dbg !2733
  br label %RenderPostscript.exit, !dbg !3136

RenderPostscript.exit:                            ; preds = %if.then10.i, %if.end145.i, %if.then247.i, %if.end326.i
  %retval.0.i = phi i32 [ 0, %if.then10.i ], [ 1, %if.then247.i ], [ 1, %if.end326.i ], [ 0, %if.end145.i ], !dbg !2733
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %annotate_image.i) #11, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry.i) #11, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename.i) #11, !dbg !3137
  ret i32 %retval.0.i, !dbg !3138
}

declare !dbg !3139 i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

declare !dbg !3143 ptr @GetTypeInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3146 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !3150 ptr @GetTypeInfoByFamily(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3155 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !3159 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !3162 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

declare !dbg !3166 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3169 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !3172 ptr @AcquireImageInfo() local_unnamed_addr #1

declare !dbg !3175 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3179 void @CatchException(ptr noundef) local_unnamed_addr #1

declare !dbg !3182 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !3185 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

declare !dbg !3186 i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3191 void @GetImageBoundingBox(ptr sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3195 double @ExpandAffine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare !dbg !3201 ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

declare !dbg !3204 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3210 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !3213 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare !dbg !3216 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare !dbg !3222 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !3225 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

declare !dbg !3228 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !3232 i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { hot nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1117, !1118, !1119, !1120, !1121, !1122}
!llvm.ident = !{!1123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "annotate_semaphore", scope: !2, file: !1116, line: 109, type: !593, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !592, globals: !1102, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/annotate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "63292d5c79772eafb4f02cc92ddf3e61")
!4 = !{!5, !11, !16, !53, !78, !90, !98, !103, !138, !148, !154, !169, !240, !248, !254, !327, !344, !358, !370, !376, !382, !387, !393, !399, !406, !414, !427, !433, !439, !443, !448, !473, !506, !528, !549, !577}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "UndefinedClass", value: 0)
!14 = !DIEnumerator(name: "DirectClass", value: 1)
!15 = !DIEnumerator(name: "PseudoClass", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 25, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!19 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!20 = !DIEnumerator(name: "RGBColorspace", value: 1)
!21 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!22 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!23 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!24 = !DIEnumerator(name: "LabColorspace", value: 5)
!25 = !DIEnumerator(name: "XYZColorspace", value: 6)
!26 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!27 = !DIEnumerator(name: "YCCColorspace", value: 8)
!28 = !DIEnumerator(name: "YIQColorspace", value: 9)
!29 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!30 = !DIEnumerator(name: "YUVColorspace", value: 11)
!31 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!32 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!33 = !DIEnumerator(name: "HSBColorspace", value: 14)
!34 = !DIEnumerator(name: "HSLColorspace", value: 15)
!35 = !DIEnumerator(name: "HWBColorspace", value: 16)
!36 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!37 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!38 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!39 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!40 = !DIEnumerator(name: "LogColorspace", value: 21)
!41 = !DIEnumerator(name: "CMYColorspace", value: 22)
!42 = !DIEnumerator(name: "LuvColorspace", value: 23)
!43 = !DIEnumerator(name: "HCLColorspace", value: 24)
!44 = !DIEnumerator(name: "LCHColorspace", value: 25)
!45 = !DIEnumerator(name: "LMSColorspace", value: 26)
!46 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!47 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!48 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!49 = !DIEnumerator(name: "HSIColorspace", value: 30)
!50 = !DIEnumerator(name: "HSVColorspace", value: 31)
!51 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!52 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 25, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!56 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!57 = !DIEnumerator(name: "NoCompression", value: 1)
!58 = !DIEnumerator(name: "BZipCompression", value: 2)
!59 = !DIEnumerator(name: "DXT1Compression", value: 3)
!60 = !DIEnumerator(name: "DXT3Compression", value: 4)
!61 = !DIEnumerator(name: "DXT5Compression", value: 5)
!62 = !DIEnumerator(name: "FaxCompression", value: 6)
!63 = !DIEnumerator(name: "Group4Compression", value: 7)
!64 = !DIEnumerator(name: "JPEGCompression", value: 8)
!65 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!66 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!67 = !DIEnumerator(name: "LZWCompression", value: 11)
!68 = !DIEnumerator(name: "RLECompression", value: 12)
!69 = !DIEnumerator(name: "ZipCompression", value: 13)
!70 = !DIEnumerator(name: "ZipSCompression", value: 14)
!71 = !DIEnumerator(name: "PizCompression", value: 15)
!72 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!73 = !DIEnumerator(name: "B44Compression", value: 17)
!74 = !DIEnumerator(name: "B44ACompression", value: 18)
!75 = !DIEnumerator(name: "LZMACompression", value: 19)
!76 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!77 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 75, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89}
!81 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!82 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!83 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!84 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!85 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!86 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!87 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!88 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!89 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 42, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!94 = !DIEnumerator(name: "SaturationIntent", value: 1)
!95 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!96 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!97 = !DIEnumerator(name: "RelativeIntent", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 88, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!101 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!102 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 32, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!106 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!107 = !DIEnumerator(name: "PointFilter", value: 1)
!108 = !DIEnumerator(name: "BoxFilter", value: 2)
!109 = !DIEnumerator(name: "TriangleFilter", value: 3)
!110 = !DIEnumerator(name: "HermiteFilter", value: 4)
!111 = !DIEnumerator(name: "HanningFilter", value: 5)
!112 = !DIEnumerator(name: "HammingFilter", value: 6)
!113 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!114 = !DIEnumerator(name: "GaussianFilter", value: 8)
!115 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!116 = !DIEnumerator(name: "CubicFilter", value: 10)
!117 = !DIEnumerator(name: "CatromFilter", value: 11)
!118 = !DIEnumerator(name: "MitchellFilter", value: 12)
!119 = !DIEnumerator(name: "JincFilter", value: 13)
!120 = !DIEnumerator(name: "SincFilter", value: 14)
!121 = !DIEnumerator(name: "SincFastFilter", value: 15)
!122 = !DIEnumerator(name: "KaiserFilter", value: 16)
!123 = !DIEnumerator(name: "WelshFilter", value: 17)
!124 = !DIEnumerator(name: "ParzenFilter", value: 18)
!125 = !DIEnumerator(name: "BohmanFilter", value: 19)
!126 = !DIEnumerator(name: "BartlettFilter", value: 20)
!127 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!128 = !DIEnumerator(name: "LanczosFilter", value: 22)
!129 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!130 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!131 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!132 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!133 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!134 = !DIEnumerator(name: "CosineFilter", value: 28)
!135 = !DIEnumerator(name: "SplineFilter", value: 29)
!136 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!137 = !DIEnumerator(name: "SentinelFilter", value: 31)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 63, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!141 = !DIEnumerator(name: "NoInterlace", value: 1)
!142 = !DIEnumerator(name: "LineInterlace", value: 2)
!143 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!144 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!145 = !DIEnumerator(name: "GIFInterlace", value: 5)
!146 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!147 = !DIEnumerator(name: "PNGInterlace", value: 7)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 30, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!152 = !DIEnumerator(name: "LSBEndian", value: 1)
!153 = !DIEnumerator(name: "MSBEndian", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 77, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!158 = !DIEnumerator(name: "ForgetGravity", value: 0)
!159 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!160 = !DIEnumerator(name: "NorthGravity", value: 2)
!161 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!162 = !DIEnumerator(name: "WestGravity", value: 4)
!163 = !DIEnumerator(name: "CenterGravity", value: 5)
!164 = !DIEnumerator(name: "EastGravity", value: 6)
!165 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!166 = !DIEnumerator(name: "SouthGravity", value: 8)
!167 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!168 = !DIEnumerator(name: "StaticGravity", value: 10)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 25, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!172 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!173 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!174 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!175 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!176 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!177 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!178 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!179 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!180 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!181 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!182 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!183 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!184 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!185 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!186 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!187 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!188 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!189 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!190 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!191 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!192 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!193 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!194 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!195 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!196 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!197 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!198 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!199 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!200 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!201 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!202 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!203 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!204 = !DIEnumerator(name: "InCompositeOp", value: 32)
!205 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!206 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!207 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!208 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!209 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!210 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!211 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!212 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!213 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!214 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!215 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!216 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!217 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!218 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!219 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!220 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!221 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!222 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!223 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!224 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!225 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!226 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!227 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!228 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!229 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!230 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!231 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!232 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!233 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!234 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!235 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!236 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!237 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!238 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!239 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 25, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!244 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!245 = !DIEnumerator(name: "NoneDispose", value: 1)
!246 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!247 = !DIEnumerator(name: "PreviousDispose", value: 3)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 25, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!252 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!253 = !DIEnumerator(name: "RunningTimerState", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !255, line: 28, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!257 = !DIEnumerator(name: "UndefinedException", value: 0)
!258 = !DIEnumerator(name: "WarningException", value: 300)
!259 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!260 = !DIEnumerator(name: "TypeWarning", value: 305)
!261 = !DIEnumerator(name: "OptionWarning", value: 310)
!262 = !DIEnumerator(name: "DelegateWarning", value: 315)
!263 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!264 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!265 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!266 = !DIEnumerator(name: "BlobWarning", value: 335)
!267 = !DIEnumerator(name: "StreamWarning", value: 340)
!268 = !DIEnumerator(name: "CacheWarning", value: 345)
!269 = !DIEnumerator(name: "CoderWarning", value: 350)
!270 = !DIEnumerator(name: "FilterWarning", value: 352)
!271 = !DIEnumerator(name: "ModuleWarning", value: 355)
!272 = !DIEnumerator(name: "DrawWarning", value: 360)
!273 = !DIEnumerator(name: "ImageWarning", value: 365)
!274 = !DIEnumerator(name: "WandWarning", value: 370)
!275 = !DIEnumerator(name: "RandomWarning", value: 375)
!276 = !DIEnumerator(name: "XServerWarning", value: 380)
!277 = !DIEnumerator(name: "MonitorWarning", value: 385)
!278 = !DIEnumerator(name: "RegistryWarning", value: 390)
!279 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!280 = !DIEnumerator(name: "PolicyWarning", value: 399)
!281 = !DIEnumerator(name: "ErrorException", value: 400)
!282 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!283 = !DIEnumerator(name: "TypeError", value: 405)
!284 = !DIEnumerator(name: "OptionError", value: 410)
!285 = !DIEnumerator(name: "DelegateError", value: 415)
!286 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!287 = !DIEnumerator(name: "CorruptImageError", value: 425)
!288 = !DIEnumerator(name: "FileOpenError", value: 430)
!289 = !DIEnumerator(name: "BlobError", value: 435)
!290 = !DIEnumerator(name: "StreamError", value: 440)
!291 = !DIEnumerator(name: "CacheError", value: 445)
!292 = !DIEnumerator(name: "CoderError", value: 450)
!293 = !DIEnumerator(name: "FilterError", value: 452)
!294 = !DIEnumerator(name: "ModuleError", value: 455)
!295 = !DIEnumerator(name: "DrawError", value: 460)
!296 = !DIEnumerator(name: "ImageError", value: 465)
!297 = !DIEnumerator(name: "WandError", value: 470)
!298 = !DIEnumerator(name: "RandomError", value: 475)
!299 = !DIEnumerator(name: "XServerError", value: 480)
!300 = !DIEnumerator(name: "MonitorError", value: 485)
!301 = !DIEnumerator(name: "RegistryError", value: 490)
!302 = !DIEnumerator(name: "ConfigureError", value: 495)
!303 = !DIEnumerator(name: "PolicyError", value: 499)
!304 = !DIEnumerator(name: "FatalErrorException", value: 700)
!305 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!306 = !DIEnumerator(name: "TypeFatalError", value: 705)
!307 = !DIEnumerator(name: "OptionFatalError", value: 710)
!308 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!309 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!310 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!311 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!312 = !DIEnumerator(name: "BlobFatalError", value: 735)
!313 = !DIEnumerator(name: "StreamFatalError", value: 740)
!314 = !DIEnumerator(name: "CacheFatalError", value: 745)
!315 = !DIEnumerator(name: "CoderFatalError", value: 750)
!316 = !DIEnumerator(name: "FilterFatalError", value: 752)
!317 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!318 = !DIEnumerator(name: "DrawFatalError", value: 760)
!319 = !DIEnumerator(name: "ImageFatalError", value: 765)
!320 = !DIEnumerator(name: "WandFatalError", value: 770)
!321 = !DIEnumerator(name: "RandomFatalError", value: 775)
!322 = !DIEnumerator(name: "XServerFatalError", value: 780)
!323 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!324 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!325 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!326 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 31, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!330 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!331 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!332 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!333 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!334 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!335 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!336 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!337 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!338 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!339 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!340 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!341 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!342 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!343 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 47, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!346 = !DIEnumerator(name: "UndefinedType", value: 0)
!347 = !DIEnumerator(name: "BilevelType", value: 1)
!348 = !DIEnumerator(name: "GrayscaleType", value: 2)
!349 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!350 = !DIEnumerator(name: "PaletteType", value: 4)
!351 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!352 = !DIEnumerator(name: "TrueColorType", value: 6)
!353 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!354 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!355 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!356 = !DIEnumerator(name: "OptimizeType", value: 10)
!357 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 67, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!361 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!362 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!363 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!364 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!365 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!366 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!367 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!368 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!369 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 70, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!372 = !{!373, !374, !375}
!373 = !DIEnumerator(name: "UndefinedGradient", value: 0)
!374 = !DIEnumerator(name: "LinearGradient", value: 1)
!375 = !DIEnumerator(name: "RadialGradient", value: 2)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 129, baseType: !7, size: 32, elements: !377)
!377 = !{!378, !379, !380, !381}
!378 = !DIEnumerator(name: "UndefinedSpread", value: 0)
!379 = !DIEnumerator(name: "PadSpread", value: 1)
!380 = !DIEnumerator(name: "ReflectSpread", value: 2)
!381 = !DIEnumerator(name: "RepeatSpread", value: 3)
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 62, baseType: !7, size: 32, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIEnumerator(name: "UndefinedRule", value: 0)
!385 = !DIEnumerator(name: "EvenOddRule", value: 1)
!386 = !DIEnumerator(name: "NonZeroRule", value: 2)
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 77, baseType: !7, size: 32, elements: !388)
!388 = !{!389, !390, !391, !392}
!389 = !DIEnumerator(name: "UndefinedCap", value: 0)
!390 = !DIEnumerator(name: "ButtCap", value: 1)
!391 = !DIEnumerator(name: "RoundCap", value: 2)
!392 = !DIEnumerator(name: "SquareCap", value: 3)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 85, baseType: !7, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398}
!395 = !DIEnumerator(name: "UndefinedJoin", value: 0)
!396 = !DIEnumerator(name: "MiterJoin", value: 1)
!397 = !DIEnumerator(name: "RoundJoin", value: 2)
!398 = !DIEnumerator(name: "BevelJoin", value: 3)
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 46, baseType: !7, size: 32, elements: !400)
!400 = !{!401, !402, !403, !404, !405}
!401 = !DIEnumerator(name: "UndefinedDecoration", value: 0)
!402 = !DIEnumerator(name: "NoDecoration", value: 1)
!403 = !DIEnumerator(name: "UnderlineDecoration", value: 2)
!404 = !DIEnumerator(name: "OverlineDecoration", value: 3)
!405 = !DIEnumerator(name: "LineThroughDecoration", value: 4)
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !407, line: 40, baseType: !7, size: 32, elements: !408)
!407 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!408 = !{!409, !410, !411, !412, !413}
!409 = !DIEnumerator(name: "UndefinedStyle", value: 0)
!410 = !DIEnumerator(name: "NormalStyle", value: 1)
!411 = !DIEnumerator(name: "ItalicStyle", value: 2)
!412 = !DIEnumerator(name: "ObliqueStyle", value: 3)
!413 = !DIEnumerator(name: "AnyStyle", value: 4)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !407, line: 25, baseType: !7, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!416 = !DIEnumerator(name: "UndefinedStretch", value: 0)
!417 = !DIEnumerator(name: "NormalStretch", value: 1)
!418 = !DIEnumerator(name: "UltraCondensedStretch", value: 2)
!419 = !DIEnumerator(name: "ExtraCondensedStretch", value: 3)
!420 = !DIEnumerator(name: "CondensedStretch", value: 4)
!421 = !DIEnumerator(name: "SemiCondensedStretch", value: 5)
!422 = !DIEnumerator(name: "SemiExpandedStretch", value: 6)
!423 = !DIEnumerator(name: "ExpandedStretch", value: 7)
!424 = !DIEnumerator(name: "ExtraExpandedStretch", value: 8)
!425 = !DIEnumerator(name: "UltraExpandedStretch", value: 9)
!426 = !DIEnumerator(name: "AnyStretch", value: 10)
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 30, baseType: !7, size: 32, elements: !428)
!428 = !{!429, !430, !431, !432}
!429 = !DIEnumerator(name: "UndefinedAlign", value: 0)
!430 = !DIEnumerator(name: "LeftAlign", value: 1)
!431 = !DIEnumerator(name: "CenterAlign", value: 2)
!432 = !DIEnumerator(name: "RightAlign", value: 3)
!433 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 38, baseType: !7, size: 32, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIEnumerator(name: "UndefinedPathUnits", value: 0)
!436 = !DIEnumerator(name: "UserSpace", value: 1)
!437 = !DIEnumerator(name: "UserSpaceOnUse", value: 2)
!438 = !DIEnumerator(name: "ObjectBoundingBox", value: 3)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 123, baseType: !7, size: 32, elements: !440)
!440 = !{!441, !442}
!441 = !DIEnumerator(name: "UndefinedReference", value: 0)
!442 = !DIEnumerator(name: "GradientReference", value: 1)
!443 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 55, baseType: !7, size: 32, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIEnumerator(name: "UndefinedDirection", value: 0)
!446 = !DIEnumerator(name: "RightToLeftDirection", value: 1)
!447 = !DIEnumerator(name: "LeftToRightDirection", value: 2)
!448 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 34, baseType: !7, size: 32, elements: !450)
!449 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!451 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!452 = !DIEnumerator(name: "NoEvents", value: 0)
!453 = !DIEnumerator(name: "TraceEvent", value: 1)
!454 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!455 = !DIEnumerator(name: "BlobEvent", value: 4)
!456 = !DIEnumerator(name: "CacheEvent", value: 8)
!457 = !DIEnumerator(name: "CoderEvent", value: 16)
!458 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!459 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!460 = !DIEnumerator(name: "DrawEvent", value: 128)
!461 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!462 = !DIEnumerator(name: "ImageEvent", value: 512)
!463 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!464 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!465 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!466 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!467 = !DIEnumerator(name: "TransformEvent", value: 16384)
!468 = !DIEnumerator(name: "UserEvent", value: 36864)
!469 = !DIEnumerator(name: "WandEvent", value: 65536)
!470 = !DIEnumerator(name: "X11Event", value: 131072)
!471 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!472 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!473 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !474, line: 27, baseType: !7, size: 32, elements: !475)
!474 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!476 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!477 = !DIEnumerator(name: "RotatePreview", value: 1)
!478 = !DIEnumerator(name: "ShearPreview", value: 2)
!479 = !DIEnumerator(name: "RollPreview", value: 3)
!480 = !DIEnumerator(name: "HuePreview", value: 4)
!481 = !DIEnumerator(name: "SaturationPreview", value: 5)
!482 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!483 = !DIEnumerator(name: "GammaPreview", value: 7)
!484 = !DIEnumerator(name: "SpiffPreview", value: 8)
!485 = !DIEnumerator(name: "DullPreview", value: 9)
!486 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!487 = !DIEnumerator(name: "QuantizePreview", value: 11)
!488 = !DIEnumerator(name: "DespecklePreview", value: 12)
!489 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!490 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!491 = !DIEnumerator(name: "SharpenPreview", value: 15)
!492 = !DIEnumerator(name: "BlurPreview", value: 16)
!493 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!494 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!495 = !DIEnumerator(name: "SpreadPreview", value: 19)
!496 = !DIEnumerator(name: "SolarizePreview", value: 20)
!497 = !DIEnumerator(name: "ShadePreview", value: 21)
!498 = !DIEnumerator(name: "RaisePreview", value: 22)
!499 = !DIEnumerator(name: "SegmentPreview", value: 23)
!500 = !DIEnumerator(name: "SwirlPreview", value: 24)
!501 = !DIEnumerator(name: "ImplodePreview", value: 25)
!502 = !DIEnumerator(name: "WavePreview", value: 26)
!503 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!504 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!505 = !DIEnumerator(name: "JPEGPreview", value: 29)
!506 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!508 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!509 = !DIEnumerator(name: "RedChannel", value: 1)
!510 = !DIEnumerator(name: "GrayChannel", value: 1)
!511 = !DIEnumerator(name: "CyanChannel", value: 1)
!512 = !DIEnumerator(name: "GreenChannel", value: 2)
!513 = !DIEnumerator(name: "MagentaChannel", value: 2)
!514 = !DIEnumerator(name: "BlueChannel", value: 4)
!515 = !DIEnumerator(name: "YellowChannel", value: 4)
!516 = !DIEnumerator(name: "AlphaChannel", value: 8)
!517 = !DIEnumerator(name: "OpacityChannel", value: 8)
!518 = !DIEnumerator(name: "MatteChannel", value: 8)
!519 = !DIEnumerator(name: "BlackChannel", value: 32)
!520 = !DIEnumerator(name: "IndexChannel", value: 32)
!521 = !DIEnumerator(name: "CompositeChannels", value: 47)
!522 = !DIEnumerator(name: "AllChannels", value: 134217727)
!523 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!524 = !DIEnumerator(name: "RGBChannels", value: 128)
!525 = !DIEnumerator(name: "GrayChannels", value: 128)
!526 = !DIEnumerator(name: "SyncChannels", value: 256)
!527 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !529, line: 27, baseType: !7, size: 32, elements: !530)
!529 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!531 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!532 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!533 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!534 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!535 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!536 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!537 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!538 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!539 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!540 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!541 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!542 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!543 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!544 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!545 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!546 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!547 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!548 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 25, baseType: !7, size: 32, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!551 = !DIEnumerator(name: "NoValue", value: 0)
!552 = !DIEnumerator(name: "XValue", value: 1)
!553 = !DIEnumerator(name: "XiValue", value: 1)
!554 = !DIEnumerator(name: "YValue", value: 2)
!555 = !DIEnumerator(name: "PsiValue", value: 2)
!556 = !DIEnumerator(name: "WidthValue", value: 4)
!557 = !DIEnumerator(name: "RhoValue", value: 4)
!558 = !DIEnumerator(name: "HeightValue", value: 8)
!559 = !DIEnumerator(name: "SigmaValue", value: 8)
!560 = !DIEnumerator(name: "ChiValue", value: 16)
!561 = !DIEnumerator(name: "XiNegative", value: 32)
!562 = !DIEnumerator(name: "XNegative", value: 32)
!563 = !DIEnumerator(name: "PsiNegative", value: 64)
!564 = !DIEnumerator(name: "YNegative", value: 64)
!565 = !DIEnumerator(name: "ChiNegative", value: 128)
!566 = !DIEnumerator(name: "PercentValue", value: 4096)
!567 = !DIEnumerator(name: "AspectValue", value: 8192)
!568 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!569 = !DIEnumerator(name: "LessValue", value: 16384)
!570 = !DIEnumerator(name: "GreaterValue", value: 32768)
!571 = !DIEnumerator(name: "MinimumValue", value: 65536)
!572 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!573 = !DIEnumerator(name: "AreaValue", value: 131072)
!574 = !DIEnumerator(name: "DecimalValue", value: 262144)
!575 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!576 = !DIEnumerator(name: "AllValues", value: 2147483647)
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 30, baseType: !7, size: 32, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!579 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!580 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!581 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!582 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!583 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!584 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!585 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!586 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!587 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!588 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!589 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!590 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!591 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!592 = !{!593, !597, !598, !599, !601, !602, !604, !661, !644, !948, !637, !779, !813, !7, !1079, !878, !673, !690, !999}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !595, line: 26, baseType: !596)
!595 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !595, line: 25, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!598 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !603, line: 46, baseType: !598)
!603 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !79, line: 356, size: 134336, elements: !607)
!607 = !{!608, !610, !612, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !626, !628, !630, !631, !632, !633, !634, !635, !636, !638, !639, !649, !650, !651, !652, !653, !654, !656, !658, !660, !666, !667, !668, !669, !670, !672, !862, !863, !864, !865, !866, !877, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !945, !946, !947}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !606, file: !79, line: 359, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !54, line: 49, baseType: !53)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !606, file: !79, line: 362, baseType: !611, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !79, line: 86, baseType: !78)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !606, file: !79, line: 365, baseType: !613, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !606, file: !79, line: 366, baseType: !613, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !606, file: !79, line: 367, baseType: !613, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !606, file: !79, line: 368, baseType: !613, size: 32, offset: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !606, file: !79, line: 371, baseType: !599, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !606, file: !79, line: 372, baseType: !599, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !606, file: !79, line: 373, baseType: !599, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !606, file: !79, line: 374, baseType: !599, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !606, file: !79, line: 377, baseType: !602, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !606, file: !79, line: 378, baseType: !602, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !606, file: !79, line: 379, baseType: !602, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !606, file: !79, line: 382, baseType: !625, size: 32, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !79, line: 73, baseType: !138)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !606, file: !79, line: 385, baseType: !627, size: 32, offset: 672)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !149, line: 35, baseType: !148)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !606, file: !79, line: 388, baseType: !629, size: 32, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !79, line: 93, baseType: !98)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !606, file: !79, line: 391, baseType: !602, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !606, file: !79, line: 394, baseType: !599, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !606, file: !79, line: 395, baseType: !599, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !606, file: !79, line: 396, baseType: !599, size: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !606, file: !79, line: 397, baseType: !599, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !606, file: !79, line: 398, baseType: !599, size: 64, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !606, file: !79, line: 401, baseType: !637, size: 64, offset: 1152)
!637 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !606, file: !79, line: 402, baseType: !637, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !606, file: !79, line: 405, baseType: !640, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !328, line: 148, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !328, line: 131, size: 64, elements: !642)
!642 = !{!643, !646, !647, !648}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !641, file: !328, line: 143, baseType: !644, size: 16)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !645)
!645 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !641, file: !328, line: 144, baseType: !644, size: 16, offset: 16)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !641, file: !328, line: 145, baseType: !644, size: 16, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !641, file: !328, line: 146, baseType: !644, size: 16, offset: 48)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !606, file: !79, line: 406, baseType: !640, size: 64, offset: 1344)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !606, file: !79, line: 407, baseType: !640, size: 64, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !606, file: !79, line: 410, baseType: !613, size: 32, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !606, file: !79, line: 411, baseType: !613, size: 32, offset: 1504)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !606, file: !79, line: 414, baseType: !602, size: 64, offset: 1536)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !606, file: !79, line: 417, baseType: !655, size: 32, offset: 1600)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !17, line: 61, baseType: !16)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !79, line: 420, baseType: !657, size: 32, offset: 1632)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !79, line: 61, baseType: !344)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !606, file: !79, line: 423, baseType: !659, size: 32, offset: 1664)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !474, line: 59, baseType: !473)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !606, file: !79, line: 426, baseType: !661, size: 64, offset: 1728)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !662, line: 77, baseType: !663)
!662 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !664, line: 193, baseType: !665)
!664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!665 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !606, file: !79, line: 429, baseType: !613, size: 32, offset: 1792)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !606, file: !79, line: 430, baseType: !613, size: 32, offset: 1824)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !606, file: !79, line: 433, baseType: !599, size: 64, offset: 1856)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !606, file: !79, line: 434, baseType: !599, size: 64, offset: 1920)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !606, file: !79, line: 437, baseType: !671, size: 32, offset: 1984)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !506)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !606, file: !79, line: 440, baseType: !673, size: 64, offset: 2048)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !79, line: 150, size: 105920, elements: !676)
!676 = !{!677, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !691, !692, !693, !694, !695, !709, !711, !712, !713, !714, !715, !716, !717, !718, !719, !727, !728, !729, !730, !731, !732, !734, !735, !736, !738, !740, !742, !744, !745, !746, !747, !748, !749, !750, !758, !773, !787, !788, !789, !790, !794, !798, !802, !803, !804, !805, !806, !820, !821, !823, !824, !834, !835, !837, !838, !839, !840, !841, !842, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !859, !861}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !675, file: !79, line: 153, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !11)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !675, file: !79, line: 156, baseType: !655, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !675, file: !79, line: 159, baseType: !609, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !675, file: !79, line: 162, baseType: !602, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !675, file: !79, line: 165, baseType: !611, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !675, file: !79, line: 168, baseType: !613, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !675, file: !79, line: 169, baseType: !613, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !675, file: !79, line: 172, baseType: !602, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !675, file: !79, line: 173, baseType: !602, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !675, file: !79, line: 174, baseType: !602, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !675, file: !79, line: 175, baseType: !602, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !675, file: !79, line: 178, baseType: !690, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !675, file: !79, line: 179, baseType: !640, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !675, file: !79, line: 180, baseType: !640, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !675, file: !79, line: 181, baseType: !640, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !675, file: !79, line: 184, baseType: !637, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !675, file: !79, line: 187, baseType: !696, size: 768, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !79, line: 128, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !79, line: 121, size: 768, elements: !698)
!698 = !{!699, !706, !707, !708}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !697, file: !79, line: 124, baseType: !700, size: 192)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !79, line: 101, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !79, line: 95, size: 192, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !701, file: !79, line: 98, baseType: !637, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !701, file: !79, line: 99, baseType: !637, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !701, file: !79, line: 100, baseType: !637, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !697, file: !79, line: 125, baseType: !700, size: 192, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !697, file: !79, line: 126, baseType: !700, size: 192, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !697, file: !79, line: 127, baseType: !700, size: 192, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !675, file: !79, line: 190, baseType: !710, size: 32, offset: 1664)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !91, line: 49, baseType: !90)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !675, file: !79, line: 193, baseType: !597, size: 64, offset: 1728)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !675, file: !79, line: 196, baseType: !629, size: 32, offset: 1792)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !675, file: !79, line: 199, baseType: !599, size: 64, offset: 1856)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !675, file: !79, line: 200, baseType: !599, size: 64, offset: 1920)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !675, file: !79, line: 201, baseType: !599, size: 64, offset: 1984)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !675, file: !79, line: 204, baseType: !661, size: 64, offset: 2048)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !675, file: !79, line: 207, baseType: !637, size: 64, offset: 2112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !675, file: !79, line: 208, baseType: !637, size: 64, offset: 2176)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !675, file: !79, line: 211, baseType: !720, size: 256, offset: 2240)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !155, line: 130, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !155, line: 121, size: 256, elements: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !721, file: !155, line: 124, baseType: !602, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !721, file: !155, line: 125, baseType: !602, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !721, file: !155, line: 128, baseType: !661, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !721, file: !155, line: 129, baseType: !661, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !675, file: !79, line: 212, baseType: !720, size: 256, offset: 2496)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !675, file: !79, line: 213, baseType: !720, size: 256, offset: 2752)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !675, file: !79, line: 216, baseType: !637, size: 64, offset: 3008)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !675, file: !79, line: 217, baseType: !637, size: 64, offset: 3072)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !675, file: !79, line: 218, baseType: !637, size: 64, offset: 3136)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !675, file: !79, line: 221, baseType: !733, size: 32, offset: 3200)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !104, line: 66, baseType: !103)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !675, file: !79, line: 224, baseType: !625, size: 32, offset: 3232)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !675, file: !79, line: 227, baseType: !627, size: 32, offset: 3264)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !675, file: !79, line: 230, baseType: !737, size: 32, offset: 3296)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !155, line: 91, baseType: !154)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !675, file: !79, line: 233, baseType: !739, size: 32, offset: 3328)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !170, line: 99, baseType: !169)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !675, file: !79, line: 236, baseType: !741, size: 32, offset: 3360)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !241, line: 32, baseType: !240)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !675, file: !79, line: 239, baseType: !743, size: 64, offset: 3392)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !675, file: !79, line: 242, baseType: !602, size: 64, offset: 3456)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !675, file: !79, line: 243, baseType: !602, size: 64, offset: 3520)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !675, file: !79, line: 246, baseType: !661, size: 64, offset: 3584)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !675, file: !79, line: 249, baseType: !602, size: 64, offset: 3648)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !675, file: !79, line: 250, baseType: !602, size: 64, offset: 3712)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !675, file: !79, line: 253, baseType: !661, size: 64, offset: 3776)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !675, file: !79, line: 256, baseType: !751, size: 192, offset: 3840)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !752, line: 68, baseType: !753)
!752 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !752, line: 62, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !753, file: !752, line: 65, baseType: !637, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !753, file: !752, line: 66, baseType: !637, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !753, file: !752, line: 67, baseType: !637, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !675, file: !79, line: 259, baseType: !759, size: 512, offset: 4032)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !249, line: 51, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !249, line: 40, size: 512, elements: !761)
!761 = !{!762, !769, !770, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !760, file: !249, line: 43, baseType: !763, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !249, line: 38, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !249, line: 32, size: 192, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !764, file: !249, line: 35, baseType: !637, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !764, file: !249, line: 36, baseType: !637, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !764, file: !249, line: 37, baseType: !637, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !760, file: !249, line: 44, baseType: !763, size: 192, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !249, line: 47, baseType: !771, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !249, line: 30, baseType: !248)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !760, file: !249, line: 50, baseType: !602, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !675, file: !79, line: 262, baseType: !774, size: 64, offset: 4544)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !775, line: 26, baseType: !776)
!775 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!613, !779, !781, !784, !597}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !783)
!783 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !786)
!786 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !675, file: !79, line: 265, baseType: !597, size: 64, offset: 4608)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !675, file: !79, line: 266, baseType: !597, size: 64, offset: 4672)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !675, file: !79, line: 267, baseType: !597, size: 64, offset: 4736)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !675, file: !79, line: 270, baseType: !791, size: 64, offset: 4800)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !54, line: 52, baseType: !793)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !54, line: 51, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !675, file: !79, line: 273, baseType: !795, size: 64, offset: 4864)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !675, file: !79, line: 276, baseType: !799, size: 32768, offset: 4928)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 32768, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 4096)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !675, file: !79, line: 277, baseType: !799, size: 32768, offset: 37696)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !675, file: !79, line: 278, baseType: !799, size: 32768, offset: 70464)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !675, file: !79, line: 281, baseType: !602, size: 64, offset: 103232)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !675, file: !79, line: 282, baseType: !602, size: 64, offset: 103296)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !675, file: !79, line: 285, baseType: !807, size: 448, offset: 103360)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !255, line: 102, size: 448, elements: !809)
!809 = !{!810, !812, !814, !815, !816, !817, !818, !819}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !808, file: !255, line: 105, baseType: !811, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !255, line: 100, baseType: !254)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !808, file: !255, line: 108, baseType: !813, size: 32, offset: 32)
!813 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !808, file: !255, line: 111, baseType: !599, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !808, file: !255, line: 112, baseType: !599, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !808, file: !255, line: 115, baseType: !597, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !808, file: !255, line: 118, baseType: !613, size: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !808, file: !255, line: 121, baseType: !593, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !808, file: !255, line: 124, baseType: !602, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !675, file: !79, line: 288, baseType: !613, size: 32, offset: 103808)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !79, line: 291, baseType: !822, size: 64, offset: 103872)
!822 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !661)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !675, file: !79, line: 294, baseType: !593, size: 64, offset: 103936)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !675, file: !79, line: 297, baseType: !825, size: 256, offset: 104000)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !91, line: 40, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !91, line: 27, size: 256, elements: !827)
!827 = !{!828, !829, !830, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !826, file: !91, line: 30, baseType: !599, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !826, file: !91, line: 33, baseType: !602, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !826, file: !91, line: 36, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !826, file: !91, line: 39, baseType: !602, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !675, file: !79, line: 298, baseType: !825, size: 256, offset: 104256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !675, file: !79, line: 299, baseType: !836, size: 64, offset: 104512)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !675, file: !79, line: 302, baseType: !602, size: 64, offset: 104576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !675, file: !79, line: 305, baseType: !602, size: 64, offset: 104640)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !675, file: !79, line: 308, baseType: !743, size: 64, offset: 104704)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !675, file: !79, line: 309, baseType: !743, size: 64, offset: 104768)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !79, line: 310, baseType: !743, size: 64, offset: 104832)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !675, file: !79, line: 313, baseType: !843, size: 32, offset: 104896)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !328, line: 47, baseType: !327)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !675, file: !79, line: 316, baseType: !613, size: 32, offset: 104928)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !675, file: !79, line: 319, baseType: !640, size: 64, offset: 104960)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !675, file: !79, line: 322, baseType: !743, size: 64, offset: 105024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !675, file: !79, line: 325, baseType: !720, size: 256, offset: 105088)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !675, file: !79, line: 328, baseType: !597, size: 64, offset: 105344)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !675, file: !79, line: 329, baseType: !597, size: 64, offset: 105408)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !79, line: 332, baseType: !657, size: 32, offset: 105472)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !675, file: !79, line: 335, baseType: !613, size: 32, offset: 105504)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !675, file: !79, line: 338, baseType: !785, size: 64, offset: 105536)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !675, file: !79, line: 341, baseType: !613, size: 32, offset: 105600)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !675, file: !79, line: 344, baseType: !602, size: 64, offset: 105664)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !675, file: !79, line: 347, baseType: !856, size: 64, offset: 105728)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !857, line: 7, baseType: !858)
!857 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !664, line: 160, baseType: !665)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !675, file: !79, line: 350, baseType: !860, size: 32, offset: 105792)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !328, line: 79, baseType: !358)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !675, file: !79, line: 353, baseType: !602, size: 64, offset: 105856)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !606, file: !79, line: 443, baseType: !597, size: 64, offset: 2112)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !606, file: !79, line: 446, baseType: !774, size: 64, offset: 2176)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !606, file: !79, line: 449, baseType: !597, size: 64, offset: 2240)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !606, file: !79, line: 450, baseType: !597, size: 64, offset: 2304)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !606, file: !79, line: 453, baseType: !867, size: 64, offset: 2368)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !868, line: 26, baseType: !869)
!868 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!602, !872, !874, !876}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !606, file: !79, line: 456, baseType: !878, size: 64, offset: 2432)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !880, line: 7, baseType: !881)
!880 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !882, line: 49, size: 1728, elements: !883)
!882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !899, !901, !902, !903, !905, !906, !908, !912, !915, !917, !920, !923, !924, !925, !926, !927}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !881, file: !882, line: 51, baseType: !813, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !881, file: !882, line: 54, baseType: !599, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !881, file: !882, line: 55, baseType: !599, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !881, file: !882, line: 56, baseType: !599, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !881, file: !882, line: 57, baseType: !599, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !881, file: !882, line: 58, baseType: !599, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !881, file: !882, line: 59, baseType: !599, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !881, file: !882, line: 60, baseType: !599, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !881, file: !882, line: 61, baseType: !599, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !881, file: !882, line: 64, baseType: !599, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !881, file: !882, line: 65, baseType: !599, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !881, file: !882, line: 66, baseType: !599, size: 64, offset: 704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !881, file: !882, line: 68, baseType: !897, size: 64, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !882, line: 36, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !881, file: !882, line: 70, baseType: !900, size: 64, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !881, file: !882, line: 72, baseType: !813, size: 32, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !881, file: !882, line: 73, baseType: !813, size: 32, offset: 928)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !881, file: !882, line: 74, baseType: !904, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !664, line: 152, baseType: !665)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !881, file: !882, line: 77, baseType: !645, size: 16, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !881, file: !882, line: 78, baseType: !907, size: 8, offset: 1040)
!907 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !881, file: !882, line: 79, baseType: !909, size: 8, offset: 1048)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 8, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 1)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !881, file: !882, line: 81, baseType: !913, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !882, line: 43, baseType: null)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !881, file: !882, line: 89, baseType: !916, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !664, line: 153, baseType: !665)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !881, file: !882, line: 91, baseType: !918, size: 64, offset: 1216)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !882, line: 37, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !881, file: !882, line: 92, baseType: !921, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !882, line: 38, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !881, file: !882, line: 93, baseType: !900, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !881, file: !882, line: 94, baseType: !597, size: 64, offset: 1408)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !881, file: !882, line: 95, baseType: !602, size: 64, offset: 1472)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !881, file: !882, line: 96, baseType: !813, size: 32, offset: 1536)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !881, file: !882, line: 98, baseType: !928, size: 160, offset: 1568)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 160, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 20)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !606, file: !79, line: 459, baseType: !597, size: 64, offset: 2496)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !606, file: !79, line: 462, baseType: !602, size: 64, offset: 2560)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !606, file: !79, line: 465, baseType: !799, size: 32768, offset: 2624)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !606, file: !79, line: 466, baseType: !799, size: 32768, offset: 35392)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !606, file: !79, line: 467, baseType: !799, size: 32768, offset: 68160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !606, file: !79, line: 468, baseType: !799, size: 32768, offset: 100928)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !606, file: !79, line: 471, baseType: !613, size: 32, offset: 133696)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !606, file: !79, line: 474, baseType: !599, size: 64, offset: 133760)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !606, file: !79, line: 477, baseType: !602, size: 64, offset: 133824)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !606, file: !79, line: 478, baseType: !602, size: 64, offset: 133888)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !606, file: !79, line: 481, baseType: !640, size: 64, offset: 133952)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !606, file: !79, line: 484, baseType: !602, size: 64, offset: 134016)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !606, file: !79, line: 487, baseType: !944, size: 32, offset: 134080)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !529, line: 47, baseType: !528)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !606, file: !79, line: 490, baseType: !640, size: 64, offset: 134112)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !606, file: !79, line: 493, baseType: !597, size: 64, offset: 134208)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !606, file: !79, line: 496, baseType: !613, size: 32, offset: 134272)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "DrawInfo", file: !371, line: 333, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DrawInfo", file: !371, line: 205, size: 5760, elements: !951)
!951 = !{!952, !953, !954, !955, !965, !966, !967, !968, !969, !1018, !1019, !1020, !1021, !1022, !1023, !1025, !1027, !1029, !1030, !1031, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1041, !1043, !1044, !1045, !1046, !1047, !1049, !1050, !1051, !1052, !1054, !1055, !1056, !1058, !1059, !1060, !1072, !1073, !1074, !1075, !1076, !1077}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !950, file: !371, line: 208, baseType: !599, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !950, file: !371, line: 209, baseType: !599, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "viewbox", scope: !950, file: !371, line: 212, baseType: !720, size: 256, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "affine", scope: !950, file: !371, line: 215, baseType: !956, size: 384, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !155, line: 102, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !155, line: 93, size: 384, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !957, file: !155, line: 96, baseType: !637, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !957, file: !155, line: 97, baseType: !637, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !957, file: !155, line: 98, baseType: !637, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !957, file: !155, line: 99, baseType: !637, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !957, file: !155, line: 100, baseType: !637, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !957, file: !155, line: 101, baseType: !637, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !950, file: !371, line: 218, baseType: !737, size: 32, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !950, file: !371, line: 221, baseType: !640, size: 64, offset: 800)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "stroke", scope: !950, file: !371, line: 222, baseType: !640, size: 64, offset: 864)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_width", scope: !950, file: !371, line: 225, baseType: !637, size: 64, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !950, file: !371, line: 228, baseType: !970, size: 1024, offset: 1024)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientInfo", file: !371, line: 184, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GradientInfo", file: !371, line: 153, size: 1024, elements: !972)
!972 = !{!973, !975, !976, !984, !1006, !1007, !1009, !1010, !1011, !1017}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !971, file: !371, line: 156, baseType: !974, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientType", file: !371, line: 75, baseType: !370)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "bounding_box", scope: !971, file: !371, line: 159, baseType: !720, size: 256, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gradient_vector", scope: !971, file: !371, line: 162, baseType: !977, size: 256, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "SegmentInfo", file: !79, line: 110, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SegmentInfo", file: !79, line: 103, size: 256, elements: !979)
!979 = !{!980, !981, !982, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !978, file: !79, line: 106, baseType: !637, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !978, file: !79, line: 107, baseType: !637, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !978, file: !79, line: 108, baseType: !637, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !978, file: !79, line: 109, baseType: !637, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "stops", scope: !971, file: !371, line: 165, baseType: !985, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "StopInfo", file: !371, line: 151, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StopInfo", file: !371, line: 144, size: 512, elements: !988)
!988 = !{!989, !1005}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !987, file: !371, line: 147, baseType: !990, size: 448)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !328, line: 127, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !328, line: 104, size: 448, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !1001, !1002, !1003, !1004}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !991, file: !328, line: 107, baseType: !678, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !991, file: !328, line: 110, baseType: !655, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !991, file: !328, line: 113, baseType: !613, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !991, file: !328, line: 116, baseType: !637, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !991, file: !328, line: 119, baseType: !602, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !991, file: !328, line: 122, baseType: !999, size: 32, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !6, line: 78, baseType: !1000)
!1000 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !991, file: !328, line: 123, baseType: !999, size: 32, offset: 288)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !991, file: !328, line: 124, baseType: !999, size: 32, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !991, file: !328, line: 125, baseType: !999, size: 32, offset: 352)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !991, file: !328, line: 126, baseType: !999, size: 32, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !987, file: !371, line: 150, baseType: !999, size: 32, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "number_stops", scope: !971, file: !371, line: 168, baseType: !602, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "spread", scope: !971, file: !371, line: 171, baseType: !1008, size: 32, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "SpreadMethod", file: !371, line: 135, baseType: !376)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !971, file: !371, line: 174, baseType: !613, size: 32, offset: 736)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !971, file: !371, line: 177, baseType: !602, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !971, file: !371, line: 180, baseType: !1012, size: 128, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !371, line: 142, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !371, line: 137, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1013, file: !371, line: 140, baseType: !637, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1013, file: !371, line: 141, baseType: !637, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !971, file: !371, line: 183, baseType: !999, size: 32, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fill_pattern", scope: !950, file: !371, line: 231, baseType: !673, size: 64, offset: 2048)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !950, file: !371, line: 232, baseType: !673, size: 64, offset: 2112)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_pattern", scope: !950, file: !371, line: 233, baseType: !673, size: 64, offset: 2176)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_antialias", scope: !950, file: !371, line: 236, baseType: !613, size: 32, offset: 2240)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "text_antialias", scope: !950, file: !371, line: 237, baseType: !613, size: 32, offset: 2272)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "fill_rule", scope: !950, file: !371, line: 240, baseType: !1024, size: 32, offset: 2304)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "FillRule", file: !371, line: 68, baseType: !382)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "linecap", scope: !950, file: !371, line: 243, baseType: !1026, size: 32, offset: 2336)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineCap", file: !371, line: 83, baseType: !387)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "linejoin", scope: !950, file: !371, line: 246, baseType: !1028, size: 32, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineJoin", file: !371, line: 91, baseType: !393)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "miterlimit", scope: !950, file: !371, line: 249, baseType: !602, size: 64, offset: 2432)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dash_offset", scope: !950, file: !371, line: 252, baseType: !637, size: 64, offset: 2496)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "decorate", scope: !950, file: !371, line: 255, baseType: !1032, size: 32, offset: 2560)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecorationType", file: !371, line: 53, baseType: !399)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !950, file: !371, line: 258, baseType: !739, size: 32, offset: 2592)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !950, file: !371, line: 261, baseType: !599, size: 64, offset: 2624)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !950, file: !371, line: 264, baseType: !602, size: 64, offset: 2688)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !950, file: !371, line: 267, baseType: !599, size: 64, offset: 2752)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !950, file: !371, line: 268, baseType: !599, size: 64, offset: 2816)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !950, file: !371, line: 269, baseType: !599, size: 64, offset: 2880)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !950, file: !371, line: 272, baseType: !1040, size: 32, offset: 2944)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleType", file: !407, line: 47, baseType: !406)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !950, file: !371, line: 275, baseType: !1042, size: 32, offset: 2976)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "StretchType", file: !407, line: 38, baseType: !414)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !950, file: !371, line: 278, baseType: !602, size: 64, offset: 3008)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !950, file: !371, line: 281, baseType: !599, size: 64, offset: 3072)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !950, file: !371, line: 284, baseType: !637, size: 64, offset: 3136)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !950, file: !371, line: 287, baseType: !599, size: 64, offset: 3200)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !950, file: !371, line: 290, baseType: !1048, size: 32, offset: 3264)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignType", file: !371, line: 36, baseType: !427)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "undercolor", scope: !950, file: !371, line: 293, baseType: !640, size: 64, offset: 3296)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !950, file: !371, line: 294, baseType: !640, size: 64, offset: 3360)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !950, file: !371, line: 297, baseType: !599, size: 64, offset: 3456)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dash_pattern", scope: !950, file: !371, line: 300, baseType: !1053, size: 64, offset: 3520)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !950, file: !371, line: 303, baseType: !599, size: 64, offset: 3584)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !950, file: !371, line: 306, baseType: !977, size: 256, offset: 3648)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "clip_units", scope: !950, file: !371, line: 309, baseType: !1057, size: 32, offset: 3904)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClipPathUnits", file: !371, line: 44, baseType: !433)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !950, file: !371, line: 312, baseType: !644, size: 16, offset: 3936)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !950, file: !371, line: 315, baseType: !613, size: 32, offset: 3968)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "element_reference", scope: !950, file: !371, line: 318, baseType: !1061, size: 1344, offset: 4032)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementReference", file: !371, line: 203, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ElementReference", file: !371, line: 186, size: 1344, elements: !1063)
!1063 = !{!1064, !1065, !1067, !1068, !1069, !1071}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1062, file: !371, line: 189, baseType: !599, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !371, line: 192, baseType: !1066, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReferenceType", file: !371, line: 127, baseType: !439)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !1062, file: !371, line: 195, baseType: !970, size: 1024, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1062, file: !371, line: 198, baseType: !602, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1062, file: !371, line: 201, baseType: !1070, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1062, file: !371, line: 202, baseType: !1070, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !950, file: !371, line: 321, baseType: !613, size: 32, offset: 5376)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !950, file: !371, line: 324, baseType: !602, size: 64, offset: 5440)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "kerning", scope: !950, file: !371, line: 327, baseType: !637, size: 64, offset: 5504)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "interword_spacing", scope: !950, file: !371, line: 328, baseType: !637, size: 64, offset: 5568)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "interline_spacing", scope: !950, file: !371, line: 329, baseType: !637, size: 64, offset: 5632)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !950, file: !371, line: 332, baseType: !1078, size: 32, offset: 5696)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectionType", file: !371, line: 60, baseType: !443)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypeInfo", file: !407, line: 85, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TypeInfo", file: !407, line: 49, size: 1024, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1100, !1101}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !1082, file: !407, line: 52, baseType: !602, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1082, file: !407, line: 55, baseType: !599, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1082, file: !407, line: 56, baseType: !599, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1082, file: !407, line: 57, baseType: !599, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1082, file: !407, line: 58, baseType: !599, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !1082, file: !407, line: 61, baseType: !1040, size: 32, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !1082, file: !407, line: 64, baseType: !1042, size: 32, offset: 352)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1082, file: !407, line: 67, baseType: !602, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1082, file: !407, line: 70, baseType: !599, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "foundry", scope: !1082, file: !407, line: 71, baseType: !599, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1082, file: !407, line: 72, baseType: !599, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !1082, file: !407, line: 73, baseType: !599, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "glyphs", scope: !1082, file: !407, line: 74, baseType: !599, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !1082, file: !407, line: 77, baseType: !613, size: 32, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1082, file: !407, line: 80, baseType: !1099, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !407, line: 81, baseType: !1099, size: 64, offset: 896)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1082, file: !407, line: 84, baseType: !602, size: 64, offset: 960)
!1102 = !{!0, !1103}
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression())
!1104 = distinct !DIGlobalVariable(name: "utf_info", scope: !2, file: !1105, line: 41, type: !1106, isLocal: true, isDefinition: true)
!1105 = !DIFile(filename: "apps/538.imagick_r/src/magick/token-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a46756b24cd287baa0681a9d976f3bd8")
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 768, elements: !1114)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "UTFInfo", file: !1105, line: 38, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 31, size: 128, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "code_mask", scope: !1108, file: !1105, line: 34, baseType: !813, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "code_value", scope: !1108, file: !1105, line: 35, baseType: !813, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "utf_mask", scope: !1108, file: !1105, line: 36, baseType: !813, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "utf_value", scope: !1108, file: !1105, line: 37, baseType: !813, size: 32, offset: 96)
!1114 = !{!1115}
!1115 = !DISubrange(count: 6)
!1116 = !DIFile(filename: "apps/538.imagick_r/src/magick/annotate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "63292d5c79772eafb4f02cc92ddf3e61")
!1117 = !{i32 7, !"Dwarf Version", i32 5}
!1118 = !{i32 2, !"Debug Info Version", i32 3}
!1119 = !{i32 1, !"wchar_size", i32 4}
!1120 = !{i32 7, !"PIC Level", i32 2}
!1121 = !{i32 7, !"PIE Level", i32 2}
!1122 = !{i32 7, !"uwtable", i32 2}
!1123 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1124 = distinct !DISubprogram(name: "AnnotateComponentGenesis", scope: !1116, file: !1116, line: 139, type: !1125, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!613}
!1127 = !{}
!1128 = !DILocation(line: 141, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !1116, line: 141, column: 7)
!1130 = !{!1131, !1131, i64 0}
!1131 = !{!"any pointer", !1132, i64 0}
!1132 = !{!"omnipotent char", !1133, i64 0}
!1133 = !{!"Simple C/C++ TBAA"}
!1134 = !DILocation(line: 141, column: 26, scope: !1129)
!1135 = !DILocation(line: 141, column: 7, scope: !1124)
!1136 = !DILocation(line: 142, column: 24, scope: !1129)
!1137 = !DILocation(line: 142, column: 23, scope: !1129)
!1138 = !DILocation(line: 142, column: 5, scope: !1129)
!1139 = !DILocation(line: 143, column: 3, scope: !1124)
!1140 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !595, file: !595, line: 32, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!593}
!1143 = distinct !DISubprogram(name: "AnnotateComponentTerminus", scope: !1116, file: !1116, line: 164, type: !1144, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null}
!1146 = !DILocation(line: 166, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !1116, line: 166, column: 7)
!1148 = !DILocation(line: 166, column: 26, scope: !1147)
!1149 = !DILocation(line: 166, column: 7, scope: !1143)
!1150 = !DILocation(line: 167, column: 5, scope: !1147)
!1151 = !DILocation(line: 168, column: 3, scope: !1143)
!1152 = !DILocation(line: 169, column: 1, scope: !1143)
!1153 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !595, file: !595, line: 35, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!1157 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !595, file: !595, line: 36, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1158 = distinct !DISubprogram(name: "AnnotateImage", scope: !1116, file: !1116, line: 219, type: !1159, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!613, !673, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1179, !1180, !1181, !1182, !1183, !1184, !1198, !1199, !1200}
!1164 = !DILocalVariable(name: "image", arg: 1, scope: !1158, file: !1116, line: 219, type: !673)
!1165 = !DILocalVariable(name: "draw_info", arg: 2, scope: !1158, file: !1116, line: 220, type: !1161)
!1166 = !DILocalVariable(name: "primitive", scope: !1158, file: !1116, line: 223, type: !799)
!1167 = !DILocalVariable(name: "textlist", scope: !1158, file: !1116, line: 224, type: !601)
!1168 = !DILocalVariable(name: "annotate", scope: !1158, file: !1116, line: 227, type: !948)
!1169 = !DILocalVariable(name: "annotate_info", scope: !1158, file: !1116, line: 228, type: !948)
!1170 = !DILocalVariable(name: "geometry_info", scope: !1158, file: !1116, line: 231, type: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !155, line: 112, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !155, line: 104, size: 320, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !1172, file: !155, line: 107, baseType: !637, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !1172, file: !155, line: 108, baseType: !637, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !1172, file: !155, line: 109, baseType: !637, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1172, file: !155, line: 110, baseType: !637, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !1172, file: !155, line: 111, baseType: !637, size: 64, offset: 256)
!1179 = !DILocalVariable(name: "status", scope: !1158, file: !1116, line: 234, type: !613)
!1180 = !DILocalVariable(name: "offset", scope: !1158, file: !1116, line: 237, type: !1012)
!1181 = !DILocalVariable(name: "geometry", scope: !1158, file: !1116, line: 240, type: !720)
!1182 = !DILocalVariable(name: "i", scope: !1158, file: !1116, line: 243, type: !661)
!1183 = !DILocalVariable(name: "length", scope: !1158, file: !1116, line: 246, type: !602)
!1184 = !DILocalVariable(name: "metrics", scope: !1158, file: !1116, line: 249, type: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypeMetric", file: !371, line: 372, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TypeMetric", file: !371, line: 353, size: 960, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pixels_per_em", scope: !1186, file: !371, line: 356, baseType: !1012, size: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !1186, file: !371, line: 359, baseType: !637, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !1186, file: !371, line: 360, baseType: !637, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1186, file: !371, line: 361, baseType: !637, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1186, file: !371, line: 362, baseType: !637, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance", scope: !1186, file: !371, line: 363, baseType: !637, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "underline_position", scope: !1186, file: !371, line: 364, baseType: !637, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "underline_thickness", scope: !1186, file: !371, line: 365, baseType: !637, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1186, file: !371, line: 368, baseType: !977, size: 256, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1186, file: !371, line: 371, baseType: !1012, size: 128, offset: 832)
!1198 = !DILocalVariable(name: "height", scope: !1158, file: !1116, line: 252, type: !602)
!1199 = !DILocalVariable(name: "number_lines", scope: !1158, file: !1116, line: 253, type: !602)
!1200 = !DILocalVariable(name: "undercolor_info", scope: !1201, file: !1116, line: 447, type: !948)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !1116, line: 445, column: 7)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 444, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !1116, line: 289, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1116, line: 288, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 288, column: 3)
!1206 = !DILocation(line: 0, scope: !1158)
!1207 = !DILocation(line: 222, column: 3, scope: !1158)
!1208 = !DILocation(line: 223, column: 5, scope: !1158)
!1209 = !DILocation(line: 230, column: 3, scope: !1158)
!1210 = !DILocation(line: 231, column: 5, scope: !1158)
!1211 = !DILocation(line: 236, column: 3, scope: !1158)
!1212 = !DILocation(line: 237, column: 5, scope: !1158)
!1213 = !DILocation(line: 239, column: 3, scope: !1158)
!1214 = !DILocation(line: 240, column: 5, scope: !1158)
!1215 = !DILocation(line: 248, column: 3, scope: !1158)
!1216 = !DILocation(line: 249, column: 5, scope: !1158)
!1217 = !DILocation(line: 257, column: 14, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 257, column: 7)
!1219 = !{!1220, !1132, i64 12976}
!1220 = !{!"_Image", !1132, i64 0, !1132, i64 4, !1132, i64 8, !1221, i64 16, !1132, i64 24, !1132, i64 28, !1132, i64 32, !1221, i64 40, !1221, i64 48, !1221, i64 56, !1221, i64 64, !1131, i64 72, !1222, i64 80, !1222, i64 88, !1222, i64 96, !1224, i64 104, !1225, i64 112, !1132, i64 208, !1131, i64 216, !1132, i64 224, !1131, i64 232, !1131, i64 240, !1131, i64 248, !1221, i64 256, !1224, i64 264, !1224, i64 272, !1227, i64 280, !1227, i64 312, !1227, i64 344, !1224, i64 376, !1224, i64 384, !1224, i64 392, !1132, i64 400, !1132, i64 404, !1132, i64 408, !1132, i64 412, !1132, i64 416, !1132, i64 420, !1131, i64 424, !1221, i64 432, !1221, i64 440, !1221, i64 448, !1221, i64 456, !1221, i64 464, !1221, i64 472, !1228, i64 480, !1229, i64 504, !1131, i64 568, !1131, i64 576, !1131, i64 584, !1131, i64 592, !1131, i64 600, !1131, i64 608, !1132, i64 616, !1132, i64 4712, !1132, i64 8808, !1221, i64 12904, !1221, i64 12912, !1231, i64 12920, !1132, i64 12976, !1221, i64 12984, !1131, i64 12992, !1233, i64 13000, !1233, i64 13032, !1131, i64 13064, !1221, i64 13072, !1221, i64 13080, !1131, i64 13088, !1131, i64 13096, !1131, i64 13104, !1132, i64 13112, !1132, i64 13116, !1222, i64 13120, !1131, i64 13128, !1227, i64 13136, !1131, i64 13168, !1131, i64 13176, !1132, i64 13184, !1132, i64 13188, !1234, i64 13192, !1132, i64 13200, !1221, i64 13208, !1221, i64 13216, !1132, i64 13224, !1221, i64 13232}
!1221 = !{!"long", !1132, i64 0}
!1222 = !{!"_PixelPacket", !1223, i64 0, !1223, i64 2, !1223, i64 4, !1223, i64 6}
!1223 = !{!"short", !1132, i64 0}
!1224 = !{!"double", !1132, i64 0}
!1225 = !{!"_ChromaticityInfo", !1226, i64 0, !1226, i64 24, !1226, i64 48, !1226, i64 72}
!1226 = !{!"_PrimaryInfo", !1224, i64 0, !1224, i64 8, !1224, i64 16}
!1227 = !{!"_RectangleInfo", !1221, i64 0, !1221, i64 8, !1221, i64 16, !1221, i64 24}
!1228 = !{!"_ErrorInfo", !1224, i64 0, !1224, i64 8, !1224, i64 16}
!1229 = !{!"_TimerInfo", !1230, i64 0, !1230, i64 24, !1132, i64 48, !1221, i64 56}
!1230 = !{!"_Timer", !1224, i64 0, !1224, i64 8, !1224, i64 16}
!1231 = !{!"_ExceptionInfo", !1132, i64 0, !1232, i64 4, !1131, i64 8, !1131, i64 16, !1131, i64 24, !1132, i64 32, !1131, i64 40, !1221, i64 48}
!1232 = !{!"int", !1132, i64 0}
!1233 = !{!"_ProfileInfo", !1131, i64 0, !1221, i64 8, !1131, i64 16, !1221, i64 24}
!1234 = !{!"long long", !1132, i64 0}
!1235 = !DILocation(line: 257, column: 20, scope: !1218)
!1236 = !DILocation(line: 257, column: 7, scope: !1158)
!1237 = !DILocation(line: 258, column: 68, scope: !1218)
!1238 = !DILocation(line: 258, column: 12, scope: !1218)
!1239 = !DILocation(line: 258, column: 5, scope: !1218)
!1240 = !DILocation(line: 261, column: 18, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 261, column: 7)
!1242 = !{!1243, !1131, i64 328}
!1243 = !{!"_DrawInfo", !1131, i64 0, !1131, i64 8, !1227, i64 16, !1244, i64 48, !1132, i64 96, !1222, i64 100, !1222, i64 108, !1224, i64 120, !1245, i64 128, !1131, i64 256, !1131, i64 264, !1131, i64 272, !1132, i64 280, !1132, i64 284, !1132, i64 288, !1132, i64 292, !1132, i64 296, !1221, i64 304, !1224, i64 312, !1132, i64 320, !1132, i64 324, !1131, i64 328, !1221, i64 336, !1131, i64 344, !1131, i64 352, !1131, i64 360, !1132, i64 368, !1132, i64 372, !1221, i64 376, !1131, i64 384, !1224, i64 392, !1131, i64 400, !1132, i64 408, !1222, i64 412, !1222, i64 420, !1131, i64 432, !1131, i64 440, !1131, i64 448, !1246, i64 456, !1132, i64 488, !1223, i64 492, !1132, i64 496, !1249, i64 504, !1132, i64 672, !1221, i64 680, !1224, i64 688, !1224, i64 696, !1224, i64 704, !1132, i64 712}
!1244 = !{!"_AffineMatrix", !1224, i64 0, !1224, i64 8, !1224, i64 16, !1224, i64 24, !1224, i64 32, !1224, i64 40}
!1245 = !{!"_GradientInfo", !1132, i64 0, !1227, i64 8, !1246, i64 40, !1131, i64 72, !1221, i64 80, !1132, i64 88, !1132, i64 92, !1221, i64 96, !1247, i64 104, !1248, i64 120}
!1246 = !{!"_SegmentInfo", !1224, i64 0, !1224, i64 8, !1224, i64 16, !1224, i64 24}
!1247 = !{!"_PointInfo", !1224, i64 0, !1224, i64 8}
!1248 = !{!"float", !1132, i64 0}
!1249 = !{!"_ElementReference", !1131, i64 0, !1132, i64 8, !1245, i64 16, !1221, i64 144, !1131, i64 152, !1131, i64 160}
!1250 = !DILocation(line: 261, column: 23, scope: !1241)
!1251 = !DILocation(line: 261, column: 7, scope: !1158)
!1252 = !DILocation(line: 263, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 263, column: 7)
!1254 = !{!1132, !1132, i64 0}
!1255 = !DILocation(line: 263, column: 24, scope: !1253)
!1256 = !DILocation(line: 263, column: 7, scope: !1158)
!1257 = !DILocation(line: 265, column: 12, scope: !1158)
!1258 = !DILocation(line: 266, column: 16, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 266, column: 7)
!1260 = !DILocation(line: 266, column: 7, scope: !1158)
!1261 = !DILocation(line: 269, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1116, line: 269, column: 3)
!1263 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 269, column: 3)
!1264 = !DILocation(line: 269, column: 25, scope: !1262)
!1265 = !DILocation(line: 269, column: 3, scope: !1263)
!1266 = !DILocation(line: 269, column: 44, scope: !1262)
!1267 = distinct !{!1267, !1265, !1268, !1269, !1270}
!1268 = !DILocation(line: 271, column: 32, scope: !1263)
!1269 = !{!"llvm.loop.mustprogress"}
!1270 = !{!"llvm.loop.unroll.disable"}
!1271 = !DILocation(line: 0, scope: !1263)
!1272 = !DILocation(line: 273, column: 12, scope: !1158)
!1273 = !DILocation(line: 274, column: 17, scope: !1158)
!1274 = !DILocation(line: 275, column: 3, scope: !1158)
!1275 = !DILocation(line: 276, column: 3, scope: !1158)
!1276 = !DILocation(line: 277, column: 22, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 277, column: 7)
!1278 = !{!1243, !1131, i64 8}
!1279 = !DILocation(line: 277, column: 31, scope: !1277)
!1280 = !DILocation(line: 277, column: 7, scope: !1158)
!1281 = !DILocation(line: 280, column: 17, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !1116, line: 278, column: 5)
!1283 = !DILocation(line: 279, column: 14, scope: !1282)
!1284 = !DILocation(line: 281, column: 43, scope: !1282)
!1285 = !DILocation(line: 281, column: 14, scope: !1282)
!1286 = !DILocation(line: 282, column: 5, scope: !1282)
!1287 = !DILocation(line: 283, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 283, column: 7)
!1289 = !DILocation(line: 283, column: 47, scope: !1288)
!1290 = !DILocation(line: 283, column: 7, scope: !1158)
!1291 = !DILocation(line: 285, column: 31, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 285, column: 7)
!1293 = !{!1220, !1132, i64 4}
!1294 = !DILocalVariable(name: "colorspace", arg: 1, scope: !1295, file: !1296, line: 86, type: !1299)
!1295 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !1296, file: !1296, line: 85, type: !1297, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1300)
!1296 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!613, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!1300 = !{!1294}
!1301 = !DILocation(line: 0, scope: !1295, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 285, column: 7, scope: !1292)
!1303 = !DILocation(line: 88, column: 38, scope: !1304, inlinedAt: !1302)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !1296, line: 88, column: 7)
!1305 = !DILocation(line: 286, column: 12, scope: !1292)
!1306 = !DILocation(line: 286, column: 5, scope: !1292)
!1307 = !DILocation(line: 288, column: 13, scope: !1204)
!1308 = !DILocation(line: 288, column: 25, scope: !1204)
!1309 = !DILocation(line: 288, column: 3, scope: !1205)
!1310 = !DILocation(line: 293, column: 44, scope: !1203)
!1311 = !{!1312, !1224, i64 16}
!1312 = !{!"_GeometryInfo", !1224, i64 0, !1224, i64 8, !1224, i64 16, !1224, i64 24, !1224, i64 32}
!1313 = !DILocation(line: 293, column: 59, scope: !1203)
!1314 = !{!1220, !1221, i64 296}
!1315 = !DILocation(line: 293, column: 47, scope: !1203)
!1316 = !DILocation(line: 293, column: 46, scope: !1203)
!1317 = !DILocation(line: 293, column: 29, scope: !1203)
!1318 = !{!1243, !1224, i64 80}
!1319 = !DILocation(line: 294, column: 44, scope: !1203)
!1320 = !{!1312, !1224, i64 24}
!1321 = !DILocation(line: 294, column: 60, scope: !1203)
!1322 = !{!1220, !1221, i64 304}
!1323 = !DILocation(line: 294, column: 48, scope: !1203)
!1324 = !DILocation(line: 294, column: 47, scope: !1203)
!1325 = !DILocation(line: 294, column: 29, scope: !1203)
!1326 = !{!1243, !1224, i64 88}
!1327 = !DILocation(line: 295, column: 12, scope: !1203)
!1328 = !DILocation(line: 296, column: 12, scope: !1203)
!1329 = !DILocation(line: 297, column: 31, scope: !1203)
!1330 = !{!1331, !1224, i64 16}
!1331 = !{!"_TypeMetric", !1247, i64 0, !1224, i64 16, !1224, i64 24, !1224, i64 32, !1224, i64 40, !1224, i64 48, !1224, i64 56, !1224, i64 64, !1246, i64 72, !1247, i64 104}
!1332 = !DILocation(line: 297, column: 46, scope: !1203)
!1333 = !{!1331, !1224, i64 24}
!1334 = !DILocation(line: 297, column: 37, scope: !1203)
!1335 = !DILocation(line: 298, column: 18, scope: !1203)
!1336 = !{!1243, !1224, i64 704}
!1337 = !DILocation(line: 297, column: 53, scope: !1203)
!1338 = !DILocation(line: 298, column: 35, scope: !1203)
!1339 = !DILocation(line: 297, column: 12, scope: !1203)
!1340 = !DILocation(line: 299, column: 23, scope: !1203)
!1341 = !{!1243, !1132, i64 96}
!1342 = !DILocation(line: 299, column: 5, scope: !1203)
!1343 = !DILocation(line: 304, column: 40, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 303, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 300, column: 5)
!1346 = !DILocation(line: 304, column: 43, scope: !1344)
!1347 = !DILocation(line: 304, column: 67, scope: !1344)
!1348 = !{!1243, !1224, i64 64}
!1349 = !DILocation(line: 304, column: 44, scope: !1344)
!1350 = !DILocation(line: 304, column: 70, scope: !1344)
!1351 = !DILocation(line: 304, column: 42, scope: !1344)
!1352 = !DILocation(line: 304, column: 17, scope: !1344)
!1353 = !{!1247, !1224, i64 0}
!1354 = !DILocation(line: 305, column: 40, scope: !1344)
!1355 = !DILocation(line: 305, column: 67, scope: !1344)
!1356 = !{!1243, !1224, i64 72}
!1357 = !DILocation(line: 305, column: 44, scope: !1344)
!1358 = !DILocation(line: 305, column: 42, scope: !1344)
!1359 = !DILocation(line: 306, column: 9, scope: !1344)
!1360 = !DILocation(line: 310, column: 28, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 309, column: 7)
!1362 = !{!1227, !1221, i64 0}
!1363 = !DILocation(line: 310, column: 34, scope: !1361)
!1364 = !DILocation(line: 310, column: 19, scope: !1361)
!1365 = !DILocation(line: 310, column: 75, scope: !1361)
!1366 = !DILocation(line: 310, column: 78, scope: !1361)
!1367 = !DILocation(line: 311, column: 33, scope: !1361)
!1368 = !DILocation(line: 310, column: 79, scope: !1361)
!1369 = !DILocation(line: 311, column: 36, scope: !1361)
!1370 = !DILocation(line: 311, column: 35, scope: !1361)
!1371 = !DILocation(line: 310, column: 77, scope: !1361)
!1372 = !DILocation(line: 312, column: 26, scope: !1361)
!1373 = !DILocation(line: 311, column: 42, scope: !1361)
!1374 = !DILocation(line: 310, column: 17, scope: !1361)
!1375 = !DILocation(line: 313, column: 28, scope: !1361)
!1376 = !{!1227, !1221, i64 8}
!1377 = !DILocation(line: 313, column: 35, scope: !1361)
!1378 = !DILocation(line: 313, column: 19, scope: !1361)
!1379 = !DILocation(line: 313, column: 76, scope: !1361)
!1380 = !DILocation(line: 314, column: 33, scope: !1361)
!1381 = !DILocation(line: 313, column: 80, scope: !1361)
!1382 = !DILocation(line: 314, column: 35, scope: !1361)
!1383 = !DILocation(line: 313, column: 78, scope: !1361)
!1384 = !DILocation(line: 314, column: 42, scope: !1361)
!1385 = !DILocation(line: 316, column: 9, scope: !1361)
!1386 = !DILocation(line: 320, column: 28, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 319, column: 7)
!1388 = !DILocation(line: 320, column: 34, scope: !1387)
!1389 = !DILocation(line: 320, column: 19, scope: !1387)
!1390 = !DILocation(line: 320, column: 75, scope: !1387)
!1391 = !DILocation(line: 321, column: 11, scope: !1387)
!1392 = !DILocation(line: 321, column: 25, scope: !1387)
!1393 = !DILocation(line: 320, column: 77, scope: !1387)
!1394 = !DILocation(line: 321, column: 30, scope: !1387)
!1395 = !DILocation(line: 321, column: 54, scope: !1387)
!1396 = !DILocation(line: 321, column: 31, scope: !1387)
!1397 = !DILocation(line: 321, column: 57, scope: !1387)
!1398 = !DILocation(line: 321, column: 29, scope: !1387)
!1399 = !DILocation(line: 322, column: 33, scope: !1387)
!1400 = !{!1243, !1224, i64 48}
!1401 = !DILocation(line: 322, column: 45, scope: !1387)
!1402 = !{!1331, !1224, i64 32}
!1403 = !DILocation(line: 322, column: 66, scope: !1387)
!1404 = !{!1331, !1224, i64 72}
!1405 = !DILocation(line: 322, column: 50, scope: !1387)
!1406 = !DILocation(line: 322, column: 35, scope: !1387)
!1407 = !DILocation(line: 322, column: 69, scope: !1387)
!1408 = !DILocation(line: 321, column: 63, scope: !1387)
!1409 = !DILocation(line: 323, column: 51, scope: !1387)
!1410 = !DILocation(line: 322, column: 73, scope: !1387)
!1411 = !DILocation(line: 320, column: 17, scope: !1387)
!1412 = !DILocation(line: 324, column: 28, scope: !1387)
!1413 = !DILocation(line: 324, column: 35, scope: !1387)
!1414 = !DILocation(line: 324, column: 19, scope: !1387)
!1415 = !DILocation(line: 324, column: 76, scope: !1387)
!1416 = !DILocation(line: 325, column: 33, scope: !1387)
!1417 = !DILocation(line: 324, column: 80, scope: !1387)
!1418 = !DILocation(line: 325, column: 35, scope: !1387)
!1419 = !DILocation(line: 324, column: 78, scope: !1387)
!1420 = !DILocation(line: 325, column: 42, scope: !1387)
!1421 = !DILocation(line: 326, column: 48, scope: !1387)
!1422 = !{!1243, !1224, i64 56}
!1423 = !DILocation(line: 326, column: 65, scope: !1387)
!1424 = !DILocation(line: 326, column: 50, scope: !1387)
!1425 = !DILocation(line: 327, column: 29, scope: !1387)
!1426 = !DILocation(line: 326, column: 25, scope: !1387)
!1427 = !DILocation(line: 328, column: 9, scope: !1387)
!1428 = !DILocation(line: 332, column: 28, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 331, column: 7)
!1430 = !DILocation(line: 332, column: 34, scope: !1429)
!1431 = !DILocation(line: 332, column: 19, scope: !1429)
!1432 = !DILocation(line: 332, column: 75, scope: !1429)
!1433 = !DILocation(line: 333, column: 11, scope: !1429)
!1434 = !DILocation(line: 332, column: 77, scope: !1429)
!1435 = !DILocation(line: 333, column: 26, scope: !1429)
!1436 = !DILocation(line: 333, column: 50, scope: !1429)
!1437 = !DILocation(line: 333, column: 27, scope: !1429)
!1438 = !DILocation(line: 333, column: 53, scope: !1429)
!1439 = !DILocation(line: 333, column: 25, scope: !1429)
!1440 = !DILocation(line: 334, column: 33, scope: !1429)
!1441 = !DILocation(line: 334, column: 45, scope: !1429)
!1442 = !DILocation(line: 334, column: 66, scope: !1429)
!1443 = !DILocation(line: 334, column: 50, scope: !1429)
!1444 = !DILocation(line: 333, column: 59, scope: !1429)
!1445 = !DILocation(line: 335, column: 51, scope: !1429)
!1446 = !DILocation(line: 334, column: 69, scope: !1429)
!1447 = !DILocation(line: 335, column: 68, scope: !1429)
!1448 = !DILocation(line: 332, column: 17, scope: !1429)
!1449 = !DILocation(line: 336, column: 28, scope: !1429)
!1450 = !DILocation(line: 336, column: 35, scope: !1429)
!1451 = !DILocation(line: 336, column: 19, scope: !1429)
!1452 = !DILocation(line: 336, column: 76, scope: !1429)
!1453 = !DILocation(line: 337, column: 33, scope: !1429)
!1454 = !DILocation(line: 336, column: 80, scope: !1429)
!1455 = !DILocation(line: 337, column: 35, scope: !1429)
!1456 = !DILocation(line: 336, column: 78, scope: !1429)
!1457 = !DILocation(line: 337, column: 42, scope: !1429)
!1458 = !DILocation(line: 338, column: 48, scope: !1429)
!1459 = !DILocation(line: 338, column: 65, scope: !1429)
!1460 = !DILocation(line: 338, column: 25, scope: !1429)
!1461 = !DILocation(line: 340, column: 9, scope: !1429)
!1462 = !DILocation(line: 344, column: 28, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 343, column: 7)
!1464 = !DILocation(line: 344, column: 34, scope: !1463)
!1465 = !DILocation(line: 344, column: 19, scope: !1463)
!1466 = !DILocation(line: 344, column: 75, scope: !1463)
!1467 = !DILocation(line: 344, column: 78, scope: !1463)
!1468 = !DILocation(line: 345, column: 33, scope: !1463)
!1469 = !DILocation(line: 344, column: 79, scope: !1463)
!1470 = !DILocation(line: 345, column: 36, scope: !1463)
!1471 = !DILocation(line: 345, column: 35, scope: !1463)
!1472 = !DILocation(line: 344, column: 77, scope: !1463)
!1473 = !DILocation(line: 346, column: 26, scope: !1463)
!1474 = !DILocation(line: 346, column: 42, scope: !1463)
!1475 = !DILocation(line: 345, column: 67, scope: !1463)
!1476 = !DILocation(line: 346, column: 69, scope: !1463)
!1477 = !DILocation(line: 345, column: 42, scope: !1463)
!1478 = !DILocation(line: 344, column: 17, scope: !1463)
!1479 = !DILocation(line: 347, column: 28, scope: !1463)
!1480 = !DILocation(line: 347, column: 35, scope: !1463)
!1481 = !DILocation(line: 347, column: 19, scope: !1463)
!1482 = !DILocation(line: 347, column: 76, scope: !1463)
!1483 = !DILocation(line: 348, column: 11, scope: !1463)
!1484 = !DILocation(line: 348, column: 26, scope: !1463)
!1485 = !DILocation(line: 347, column: 78, scope: !1463)
!1486 = !DILocation(line: 348, column: 55, scope: !1463)
!1487 = !DILocation(line: 348, column: 32, scope: !1463)
!1488 = !DILocation(line: 348, column: 30, scope: !1463)
!1489 = !DILocation(line: 349, column: 35, scope: !1463)
!1490 = !DILocation(line: 350, column: 37, scope: !1463)
!1491 = !DILocation(line: 348, column: 64, scope: !1463)
!1492 = !DILocation(line: 351, column: 9, scope: !1463)
!1493 = !DILocation(line: 356, column: 28, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 355, column: 7)
!1495 = !DILocation(line: 356, column: 34, scope: !1494)
!1496 = !DILocation(line: 356, column: 19, scope: !1494)
!1497 = !DILocation(line: 356, column: 75, scope: !1494)
!1498 = !DILocation(line: 357, column: 11, scope: !1494)
!1499 = !DILocation(line: 357, column: 25, scope: !1494)
!1500 = !DILocation(line: 356, column: 77, scope: !1494)
!1501 = !DILocation(line: 357, column: 30, scope: !1494)
!1502 = !DILocation(line: 357, column: 54, scope: !1494)
!1503 = !DILocation(line: 357, column: 31, scope: !1494)
!1504 = !DILocation(line: 357, column: 57, scope: !1494)
!1505 = !DILocation(line: 357, column: 29, scope: !1494)
!1506 = !DILocation(line: 358, column: 33, scope: !1494)
!1507 = !DILocation(line: 358, column: 45, scope: !1494)
!1508 = !DILocation(line: 358, column: 66, scope: !1494)
!1509 = !DILocation(line: 358, column: 50, scope: !1494)
!1510 = !DILocation(line: 358, column: 35, scope: !1494)
!1511 = !DILocation(line: 358, column: 69, scope: !1494)
!1512 = !DILocation(line: 357, column: 63, scope: !1494)
!1513 = !DILocation(line: 359, column: 51, scope: !1494)
!1514 = !DILocation(line: 360, column: 27, scope: !1494)
!1515 = !DILocation(line: 360, column: 11, scope: !1494)
!1516 = !DILocation(line: 359, column: 67, scope: !1494)
!1517 = !DILocation(line: 359, column: 35, scope: !1494)
!1518 = !DILocation(line: 360, column: 35, scope: !1494)
!1519 = !DILocation(line: 358, column: 73, scope: !1494)
!1520 = !DILocation(line: 356, column: 17, scope: !1494)
!1521 = !DILocation(line: 361, column: 28, scope: !1494)
!1522 = !DILocation(line: 361, column: 35, scope: !1494)
!1523 = !DILocation(line: 361, column: 19, scope: !1494)
!1524 = !DILocation(line: 361, column: 76, scope: !1494)
!1525 = !DILocation(line: 362, column: 11, scope: !1494)
!1526 = !DILocation(line: 362, column: 26, scope: !1494)
!1527 = !DILocation(line: 361, column: 78, scope: !1494)
!1528 = !DILocation(line: 362, column: 55, scope: !1494)
!1529 = !DILocation(line: 362, column: 32, scope: !1494)
!1530 = !DILocation(line: 362, column: 30, scope: !1494)
!1531 = !DILocation(line: 363, column: 33, scope: !1494)
!1532 = !DILocation(line: 363, column: 35, scope: !1494)
!1533 = !DILocation(line: 363, column: 69, scope: !1494)
!1534 = !DILocation(line: 362, column: 64, scope: !1494)
!1535 = !DILocation(line: 364, column: 67, scope: !1494)
!1536 = !DILocation(line: 364, column: 35, scope: !1494)
!1537 = !DILocation(line: 365, column: 37, scope: !1494)
!1538 = !DILocation(line: 363, column: 73, scope: !1494)
!1539 = !DILocation(line: 366, column: 9, scope: !1494)
!1540 = !DILocation(line: 370, column: 28, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 369, column: 7)
!1542 = !DILocation(line: 370, column: 34, scope: !1541)
!1543 = !DILocation(line: 370, column: 19, scope: !1541)
!1544 = !DILocation(line: 370, column: 75, scope: !1541)
!1545 = !DILocation(line: 371, column: 11, scope: !1541)
!1546 = !DILocation(line: 370, column: 77, scope: !1541)
!1547 = !DILocation(line: 371, column: 26, scope: !1541)
!1548 = !DILocation(line: 371, column: 50, scope: !1541)
!1549 = !DILocation(line: 371, column: 27, scope: !1541)
!1550 = !DILocation(line: 371, column: 53, scope: !1541)
!1551 = !DILocation(line: 371, column: 25, scope: !1541)
!1552 = !DILocation(line: 372, column: 33, scope: !1541)
!1553 = !DILocation(line: 372, column: 45, scope: !1541)
!1554 = !DILocation(line: 372, column: 66, scope: !1541)
!1555 = !DILocation(line: 372, column: 50, scope: !1541)
!1556 = !DILocation(line: 371, column: 59, scope: !1541)
!1557 = !DILocation(line: 373, column: 51, scope: !1541)
!1558 = !DILocation(line: 373, column: 67, scope: !1541)
!1559 = !DILocation(line: 373, column: 35, scope: !1541)
!1560 = !DILocation(line: 374, column: 37, scope: !1541)
!1561 = !DILocation(line: 372, column: 69, scope: !1541)
!1562 = !DILocation(line: 374, column: 41, scope: !1541)
!1563 = !DILocation(line: 370, column: 17, scope: !1541)
!1564 = !DILocation(line: 375, column: 28, scope: !1541)
!1565 = !DILocation(line: 375, column: 35, scope: !1541)
!1566 = !DILocation(line: 375, column: 19, scope: !1541)
!1567 = !DILocation(line: 375, column: 76, scope: !1541)
!1568 = !DILocation(line: 376, column: 11, scope: !1541)
!1569 = !DILocation(line: 376, column: 26, scope: !1541)
!1570 = !DILocation(line: 375, column: 78, scope: !1541)
!1571 = !DILocation(line: 376, column: 55, scope: !1541)
!1572 = !DILocation(line: 376, column: 32, scope: !1541)
!1573 = !DILocation(line: 376, column: 30, scope: !1541)
!1574 = !DILocation(line: 377, column: 33, scope: !1541)
!1575 = !DILocation(line: 376, column: 64, scope: !1541)
!1576 = !DILocation(line: 378, column: 35, scope: !1541)
!1577 = !DILocation(line: 379, column: 37, scope: !1541)
!1578 = !DILocation(line: 377, column: 69, scope: !1541)
!1579 = !DILocation(line: 380, column: 9, scope: !1541)
!1580 = !DILocation(line: 384, column: 28, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 383, column: 7)
!1582 = !DILocation(line: 384, column: 34, scope: !1581)
!1583 = !DILocation(line: 384, column: 19, scope: !1581)
!1584 = !DILocation(line: 384, column: 75, scope: !1581)
!1585 = !DILocation(line: 384, column: 78, scope: !1581)
!1586 = !DILocation(line: 385, column: 33, scope: !1581)
!1587 = !DILocation(line: 384, column: 79, scope: !1581)
!1588 = !DILocation(line: 385, column: 36, scope: !1581)
!1589 = !DILocation(line: 385, column: 35, scope: !1581)
!1590 = !DILocation(line: 384, column: 77, scope: !1581)
!1591 = !DILocation(line: 385, column: 42, scope: !1581)
!1592 = !DILocation(line: 384, column: 17, scope: !1581)
!1593 = !DILocation(line: 387, column: 28, scope: !1581)
!1594 = !DILocation(line: 387, column: 35, scope: !1581)
!1595 = !DILocation(line: 387, column: 19, scope: !1581)
!1596 = !DILocation(line: 387, column: 76, scope: !1581)
!1597 = !DILocation(line: 388, column: 11, scope: !1581)
!1598 = !DILocation(line: 387, column: 78, scope: !1581)
!1599 = !DILocation(line: 388, column: 51, scope: !1581)
!1600 = !DILocation(line: 388, column: 28, scope: !1581)
!1601 = !DILocation(line: 388, column: 26, scope: !1581)
!1602 = !DILocation(line: 388, column: 60, scope: !1581)
!1603 = !DILocation(line: 389, column: 61, scope: !1581)
!1604 = !DILocation(line: 390, column: 9, scope: !1581)
!1605 = !DILocation(line: 394, column: 28, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 393, column: 7)
!1607 = !DILocation(line: 394, column: 34, scope: !1606)
!1608 = !DILocation(line: 394, column: 19, scope: !1606)
!1609 = !DILocation(line: 394, column: 75, scope: !1606)
!1610 = !DILocation(line: 395, column: 11, scope: !1606)
!1611 = !DILocation(line: 395, column: 25, scope: !1606)
!1612 = !DILocation(line: 394, column: 77, scope: !1606)
!1613 = !DILocation(line: 395, column: 30, scope: !1606)
!1614 = !DILocation(line: 395, column: 54, scope: !1606)
!1615 = !DILocation(line: 395, column: 31, scope: !1606)
!1616 = !DILocation(line: 395, column: 57, scope: !1606)
!1617 = !DILocation(line: 395, column: 29, scope: !1606)
!1618 = !DILocation(line: 396, column: 33, scope: !1606)
!1619 = !DILocation(line: 396, column: 45, scope: !1606)
!1620 = !DILocation(line: 396, column: 66, scope: !1606)
!1621 = !DILocation(line: 396, column: 50, scope: !1606)
!1622 = !DILocation(line: 396, column: 35, scope: !1606)
!1623 = !DILocation(line: 396, column: 69, scope: !1606)
!1624 = !DILocation(line: 395, column: 63, scope: !1606)
!1625 = !DILocation(line: 397, column: 35, scope: !1606)
!1626 = !DILocation(line: 397, column: 54, scope: !1606)
!1627 = !DILocation(line: 397, column: 61, scope: !1606)
!1628 = !DILocation(line: 396, column: 73, scope: !1606)
!1629 = !DILocation(line: 394, column: 17, scope: !1606)
!1630 = !DILocation(line: 398, column: 28, scope: !1606)
!1631 = !DILocation(line: 398, column: 35, scope: !1606)
!1632 = !DILocation(line: 398, column: 19, scope: !1606)
!1633 = !DILocation(line: 398, column: 76, scope: !1606)
!1634 = !DILocation(line: 399, column: 11, scope: !1606)
!1635 = !DILocation(line: 398, column: 78, scope: !1606)
!1636 = !DILocation(line: 399, column: 51, scope: !1606)
!1637 = !DILocation(line: 399, column: 28, scope: !1606)
!1638 = !DILocation(line: 399, column: 26, scope: !1606)
!1639 = !DILocation(line: 400, column: 33, scope: !1606)
!1640 = !DILocation(line: 400, column: 35, scope: !1606)
!1641 = !DILocation(line: 400, column: 69, scope: !1606)
!1642 = !DILocation(line: 399, column: 60, scope: !1606)
!1643 = !DILocation(line: 400, column: 73, scope: !1606)
!1644 = !DILocation(line: 401, column: 61, scope: !1606)
!1645 = !DILocation(line: 402, column: 9, scope: !1606)
!1646 = !DILocation(line: 406, column: 28, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1345, file: !1116, line: 405, column: 7)
!1648 = !DILocation(line: 406, column: 34, scope: !1647)
!1649 = !DILocation(line: 406, column: 19, scope: !1647)
!1650 = !DILocation(line: 406, column: 75, scope: !1647)
!1651 = !DILocation(line: 407, column: 11, scope: !1647)
!1652 = !DILocation(line: 406, column: 77, scope: !1647)
!1653 = !DILocation(line: 407, column: 26, scope: !1647)
!1654 = !DILocation(line: 407, column: 50, scope: !1647)
!1655 = !DILocation(line: 407, column: 27, scope: !1647)
!1656 = !DILocation(line: 407, column: 53, scope: !1647)
!1657 = !DILocation(line: 407, column: 25, scope: !1647)
!1658 = !DILocation(line: 408, column: 33, scope: !1647)
!1659 = !DILocation(line: 408, column: 45, scope: !1647)
!1660 = !DILocation(line: 408, column: 66, scope: !1647)
!1661 = !DILocation(line: 408, column: 50, scope: !1647)
!1662 = !DILocation(line: 407, column: 59, scope: !1647)
!1663 = !DILocation(line: 408, column: 69, scope: !1647)
!1664 = !DILocation(line: 409, column: 61, scope: !1647)
!1665 = !DILocation(line: 406, column: 17, scope: !1647)
!1666 = !DILocation(line: 410, column: 28, scope: !1647)
!1667 = !DILocation(line: 410, column: 35, scope: !1647)
!1668 = !DILocation(line: 410, column: 19, scope: !1647)
!1669 = !DILocation(line: 410, column: 76, scope: !1647)
!1670 = !DILocation(line: 411, column: 11, scope: !1647)
!1671 = !DILocation(line: 410, column: 78, scope: !1647)
!1672 = !DILocation(line: 411, column: 51, scope: !1647)
!1673 = !DILocation(line: 411, column: 28, scope: !1647)
!1674 = !DILocation(line: 411, column: 26, scope: !1647)
!1675 = !DILocation(line: 412, column: 33, scope: !1647)
!1676 = !DILocation(line: 411, column: 60, scope: !1647)
!1677 = !DILocation(line: 412, column: 69, scope: !1647)
!1678 = !DILocation(line: 413, column: 61, scope: !1647)
!1679 = !DILocation(line: 414, column: 9, scope: !1647)
!1680 = !DILocation(line: 0, scope: !1345)
!1681 = !{!1247, !1224, i64 8}
!1682 = !DILocation(line: 417, column: 23, scope: !1203)
!1683 = !{!1243, !1132, i64 408}
!1684 = !DILocation(line: 417, column: 5, scope: !1203)
!1685 = !DILocation(line: 421, column: 43, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1116, line: 420, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 418, column: 5)
!1688 = !DILocation(line: 421, column: 44, scope: !1686)
!1689 = !DILocation(line: 421, column: 70, scope: !1686)
!1690 = !DILocation(line: 421, column: 42, scope: !1686)
!1691 = !DILocation(line: 421, column: 17, scope: !1686)
!1692 = !DILocation(line: 422, column: 44, scope: !1686)
!1693 = !DILocation(line: 422, column: 42, scope: !1686)
!1694 = !DILocation(line: 423, column: 9, scope: !1686)
!1695 = !DILocation(line: 427, column: 43, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !1116, line: 426, column: 7)
!1697 = !DILocation(line: 427, column: 44, scope: !1696)
!1698 = !DILocation(line: 427, column: 70, scope: !1696)
!1699 = !DILocation(line: 427, column: 42, scope: !1696)
!1700 = !DILocation(line: 428, column: 33, scope: !1696)
!1701 = !DILocation(line: 428, column: 45, scope: !1696)
!1702 = !DILocation(line: 428, column: 66, scope: !1696)
!1703 = !DILocation(line: 428, column: 50, scope: !1696)
!1704 = !DILocation(line: 428, column: 35, scope: !1696)
!1705 = !DILocation(line: 428, column: 69, scope: !1696)
!1706 = !DILocation(line: 427, column: 76, scope: !1696)
!1707 = !DILocation(line: 427, column: 17, scope: !1696)
!1708 = !DILocation(line: 429, column: 44, scope: !1696)
!1709 = !DILocation(line: 429, column: 42, scope: !1696)
!1710 = !DILocation(line: 430, column: 33, scope: !1696)
!1711 = !DILocation(line: 430, column: 35, scope: !1696)
!1712 = !DILocation(line: 430, column: 69, scope: !1696)
!1713 = !DILocation(line: 429, column: 76, scope: !1696)
!1714 = !DILocation(line: 431, column: 9, scope: !1696)
!1715 = !DILocation(line: 435, column: 43, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1687, file: !1116, line: 434, column: 7)
!1717 = !DILocation(line: 435, column: 44, scope: !1716)
!1718 = !DILocation(line: 435, column: 70, scope: !1716)
!1719 = !DILocation(line: 435, column: 42, scope: !1716)
!1720 = !DILocation(line: 436, column: 33, scope: !1716)
!1721 = !DILocation(line: 436, column: 45, scope: !1716)
!1722 = !DILocation(line: 436, column: 66, scope: !1716)
!1723 = !DILocation(line: 436, column: 50, scope: !1716)
!1724 = !DILocation(line: 435, column: 76, scope: !1716)
!1725 = !DILocation(line: 435, column: 17, scope: !1716)
!1726 = !DILocation(line: 437, column: 44, scope: !1716)
!1727 = !DILocation(line: 437, column: 42, scope: !1716)
!1728 = !DILocation(line: 438, column: 33, scope: !1716)
!1729 = !DILocation(line: 437, column: 76, scope: !1716)
!1730 = !DILocation(line: 439, column: 9, scope: !1716)
!1731 = !DILocation(line: 0, scope: !1687)
!1732 = !DILocation(line: 444, column: 31, scope: !1202)
!1733 = !{!1243, !1223, i64 418}
!1734 = !DILocation(line: 444, column: 39, scope: !1202)
!1735 = !DILocation(line: 444, column: 9, scope: !1203)
!1736 = !DILocation(line: 452, column: 25, scope: !1201)
!1737 = !DILocation(line: 0, scope: !1201)
!1738 = !DILocation(line: 453, column: 26, scope: !1201)
!1739 = !DILocation(line: 453, column: 42, scope: !1201)
!1740 = !DILocation(line: 454, column: 26, scope: !1201)
!1741 = !DILocation(line: 454, column: 44, scope: !1201)
!1742 = !{i64 0, i64 8, !1743, i64 8, i64 8, !1743, i64 16, i64 8, !1743, i64 24, i64 8, !1743, i64 32, i64 8, !1743, i64 40, i64 8, !1743}
!1743 = !{!1224, !1224, i64 0}
!1744 = !DILocation(line: 455, column: 63, scope: !1201)
!1745 = !DILocation(line: 455, column: 74, scope: !1201)
!1746 = !DILocation(line: 455, column: 44, scope: !1201)
!1747 = !DILocation(line: 455, column: 33, scope: !1201)
!1748 = !DILocation(line: 455, column: 35, scope: !1201)
!1749 = !DILocation(line: 456, column: 63, scope: !1201)
!1750 = !DILocation(line: 456, column: 44, scope: !1201)
!1751 = !DILocation(line: 456, column: 33, scope: !1201)
!1752 = !DILocation(line: 456, column: 35, scope: !1201)
!1753 = !DILocation(line: 458, column: 57, scope: !1201)
!1754 = !{!1331, !1224, i64 104}
!1755 = !DILocation(line: 458, column: 59, scope: !1201)
!1756 = !DILocation(line: 457, column: 16, scope: !1201)
!1757 = !DILocation(line: 459, column: 16, scope: !1201)
!1758 = !DILocation(line: 460, column: 16, scope: !1201)
!1759 = !DILocation(line: 461, column: 16, scope: !1201)
!1760 = !DILocation(line: 462, column: 7, scope: !1201)
!1761 = !DILocation(line: 463, column: 29, scope: !1203)
!1762 = !DILocation(line: 464, column: 29, scope: !1203)
!1763 = !DILocation(line: 466, column: 31, scope: !1203)
!1764 = !{!1331, !1224, i64 64}
!1765 = !DILocation(line: 466, column: 59, scope: !1203)
!1766 = !DILocation(line: 465, column: 12, scope: !1203)
!1767 = !DILocation(line: 467, column: 19, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 467, column: 9)
!1769 = !{!1243, !1132, i64 320}
!1770 = !DILocation(line: 467, column: 9, scope: !1203)
!1771 = !DILocation(line: 469, column: 66, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !1116, line: 468, column: 7)
!1773 = !DILocation(line: 470, column: 19, scope: !1772)
!1774 = !DILocation(line: 469, column: 72, scope: !1772)
!1775 = !DILocation(line: 470, column: 35, scope: !1772)
!1776 = !{!1331, !1224, i64 56}
!1777 = !DILocation(line: 470, column: 26, scope: !1772)
!1778 = !DILocation(line: 473, column: 7, scope: !1772)
!1779 = !DILocation(line: 478, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1116, line: 476, column: 9)
!1781 = distinct !DILexicalBlock(scope: !1768, file: !1116, line: 475, column: 11)
!1782 = !DILocation(line: 481, column: 9, scope: !1780)
!1783 = !DILocation(line: 0, scope: !1768)
!1784 = !DILocation(line: 485, column: 12, scope: !1203)
!1785 = !DILocation(line: 486, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 486, column: 9)
!1787 = !DILocation(line: 486, column: 9, scope: !1203)
!1788 = !DILocation(line: 488, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1203, file: !1116, line: 488, column: 9)
!1790 = !DILocation(line: 488, column: 28, scope: !1789)
!1791 = !DILocation(line: 488, column: 9, scope: !1203)
!1792 = !DILocation(line: 490, column: 54, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !1116, line: 489, column: 7)
!1794 = !DILocation(line: 490, column: 58, scope: !1793)
!1795 = !DILocation(line: 491, column: 19, scope: !1793)
!1796 = !DILocation(line: 490, column: 64, scope: !1793)
!1797 = !DILocation(line: 491, column: 46, scope: !1793)
!1798 = !DILocation(line: 491, column: 37, scope: !1793)
!1799 = !DILocation(line: 490, column: 56, scope: !1793)
!1800 = !DILocation(line: 491, column: 54, scope: !1793)
!1801 = !DILocation(line: 490, column: 33, scope: !1793)
!1802 = !DILocation(line: 492, column: 16, scope: !1793)
!1803 = !DILocation(line: 493, column: 16, scope: !1793)
!1804 = !DILocation(line: 494, column: 7, scope: !1793)
!1805 = !DILocation(line: 288, column: 44, scope: !1204)
!1806 = distinct !{!1806, !1309, !1807, !1269, !1270}
!1807 = !DILocation(line: 495, column: 3, scope: !1205)
!1808 = !DILocation(line: 499, column: 17, scope: !1158)
!1809 = !DILocation(line: 500, column: 12, scope: !1158)
!1810 = !DILocation(line: 501, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1116, line: 501, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1158, file: !1116, line: 501, column: 3)
!1813 = !DILocation(line: 501, column: 25, scope: !1811)
!1814 = !DILocation(line: 501, column: 3, scope: !1812)
!1815 = !DILocation(line: 502, column: 17, scope: !1811)
!1816 = !DILocation(line: 502, column: 16, scope: !1811)
!1817 = !DILocation(line: 501, column: 44, scope: !1811)
!1818 = distinct !{!1818, !1814, !1819, !1269, !1270}
!1819 = !DILocation(line: 502, column: 42, scope: !1812)
!1820 = !DILocation(line: 503, column: 22, scope: !1158)
!1821 = !DILocation(line: 504, column: 3, scope: !1158)
!1822 = !DILocation(line: 505, column: 1, scope: !1158)
!1823 = !DISubprogram(name: "LogMagickEvent", scope: !449, file: !449, line: 83, type: !1824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!613, !1826, !779, !779, !876, !779, null}
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !449, line: 58, baseType: !448)
!1828 = !DISubprogram(name: "StringToList", scope: !1829, file: !1829, line: 55, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1829 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!601, !779}
!1832 = !DISubprogram(name: "CloneDrawInfo", scope: !371, file: !371, line: 376, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!948, !1835, !1161}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!1837 = !DISubprogram(name: "SetGeometry", scope: !155, file: !155, line: 154, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !872, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1841 = !DISubprogram(name: "SetGeometryInfo", scope: !155, file: !155, line: 155, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1845 = !DISubprogram(name: "ParsePageGeometry", scope: !155, file: !155, line: 147, type: !1846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848, !872, !779, !1840, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!1850 = !DISubprogram(name: "ParseGeometry", scope: !155, file: !155, line: 143, type: !1851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1848, !779, !1844}
!1853 = !DISubprogram(name: "SetImageStorageClass", scope: !79, file: !79, line: 542, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!613, !673, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!1857 = !DISubprogram(name: "SetImageColorspace", scope: !17, file: !17, line: 65, type: !1858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!613, !673, !1299}
!1860 = !DISubprogram(name: "CloneString", scope: !1829, file: !1829, line: 44, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!599, !601, !779}
!1863 = distinct !DISubprogram(name: "GetTypeMetrics", scope: !1116, file: !1116, line: 771, type: !1864, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!613, !673, !1161, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873}
!1868 = !DILocalVariable(name: "image", arg: 1, scope: !1863, file: !1116, line: 771, type: !673)
!1869 = !DILocalVariable(name: "draw_info", arg: 2, scope: !1863, file: !1116, line: 772, type: !1161)
!1870 = !DILocalVariable(name: "metrics", arg: 3, scope: !1863, file: !1116, line: 772, type: !1866)
!1871 = !DILocalVariable(name: "annotate_info", scope: !1863, file: !1116, line: 775, type: !948)
!1872 = !DILocalVariable(name: "status", scope: !1863, file: !1116, line: 778, type: !613)
!1873 = !DILocalVariable(name: "offset", scope: !1863, file: !1116, line: 781, type: !1012)
!1874 = !DILocation(line: 0, scope: !1863)
!1875 = !DILocation(line: 780, column: 3, scope: !1863)
!1876 = !DILocation(line: 781, column: 5, scope: !1863)
!1877 = !DILocation(line: 785, column: 14, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !1116, line: 785, column: 7)
!1879 = !DILocation(line: 785, column: 20, scope: !1878)
!1880 = !DILocation(line: 785, column: 7, scope: !1863)
!1881 = !DILocation(line: 786, column: 68, scope: !1878)
!1882 = !DILocation(line: 786, column: 12, scope: !1878)
!1883 = !DILocation(line: 786, column: 5, scope: !1878)
!1884 = !DILocation(line: 790, column: 17, scope: !1863)
!1885 = !DILocation(line: 791, column: 18, scope: !1863)
!1886 = !DILocation(line: 791, column: 24, scope: !1863)
!1887 = !{!1243, !1132, i64 496}
!1888 = !DILocation(line: 792, column: 18, scope: !1863)
!1889 = !DILocation(line: 792, column: 27, scope: !1863)
!1890 = !{!1243, !1132, i64 712}
!1891 = !DILocation(line: 793, column: 10, scope: !1863)
!1892 = !DILocation(line: 795, column: 11, scope: !1863)
!1893 = !DILocation(line: 796, column: 10, scope: !1863)
!1894 = !DILocation(line: 797, column: 14, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1863, file: !1116, line: 797, column: 7)
!1896 = !DILocation(line: 797, column: 20, scope: !1895)
!1897 = !DILocation(line: 797, column: 7, scope: !1863)
!1898 = !DILocation(line: 801, column: 72, scope: !1895)
!1899 = !DILocation(line: 802, column: 16, scope: !1895)
!1900 = !DILocation(line: 802, column: 31, scope: !1895)
!1901 = !{!1331, !1224, i64 40}
!1902 = !DILocation(line: 802, column: 47, scope: !1895)
!1903 = !DILocation(line: 802, column: 63, scope: !1895)
!1904 = !DILocation(line: 803, column: 16, scope: !1895)
!1905 = !{!1331, !1224, i64 48}
!1906 = !DILocation(line: 803, column: 37, scope: !1895)
!1907 = !DILocation(line: 803, column: 44, scope: !1895)
!1908 = !DILocation(line: 803, column: 63, scope: !1895)
!1909 = !{!1331, !1224, i64 80}
!1910 = !DILocation(line: 804, column: 23, scope: !1895)
!1911 = !{!1331, !1224, i64 88}
!1912 = !DILocation(line: 804, column: 42, scope: !1895)
!1913 = !{!1331, !1224, i64 96}
!1914 = !DILocation(line: 804, column: 54, scope: !1895)
!1915 = !DILocation(line: 804, column: 61, scope: !1895)
!1916 = !DILocation(line: 804, column: 79, scope: !1895)
!1917 = !{!1331, !1224, i64 112}
!1918 = !DILocation(line: 805, column: 30, scope: !1895)
!1919 = !{!1331, !1224, i64 0}
!1920 = !DILocation(line: 805, column: 55, scope: !1895)
!1921 = !{!1331, !1224, i64 8}
!1922 = !DILocation(line: 806, column: 16, scope: !1895)
!1923 = !DILocation(line: 806, column: 44, scope: !1895)
!1924 = !DILocation(line: 798, column: 12, scope: !1895)
!1925 = !DILocation(line: 798, column: 5, scope: !1895)
!1926 = !DILocation(line: 807, column: 17, scope: !1863)
!1927 = !DILocation(line: 809, column: 1, scope: !1863)
!1928 = !DILocation(line: 808, column: 3, scope: !1863)
!1929 = !DISubprogram(name: "FormatLocaleString", scope: !1930, file: !1930, line: 71, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1930 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!661, !1933, !876, !1934, null}
!1933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !599)
!1934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !779)
!1935 = !DISubprogram(name: "DrawImage", scope: !371, file: !371, line: 383, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1936 = !DISubprogram(name: "DestroyDrawInfo", scope: !371, file: !371, line: 377, type: !1937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!948, !948}
!1939 = distinct !DISubprogram(name: "RenderType", scope: !1116, file: !1116, line: 841, type: !1940, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!613, !673, !1161, !1942, !1866}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951}
!1945 = !DILocalVariable(name: "image", arg: 1, scope: !1939, file: !1116, line: 841, type: !673)
!1946 = !DILocalVariable(name: "draw_info", arg: 2, scope: !1939, file: !1116, line: 841, type: !1161)
!1947 = !DILocalVariable(name: "offset", arg: 3, scope: !1939, file: !1116, line: 842, type: !1942)
!1948 = !DILocalVariable(name: "metrics", arg: 4, scope: !1939, file: !1116, line: 842, type: !1866)
!1949 = !DILocalVariable(name: "type_info", scope: !1939, file: !1116, line: 845, type: !1079)
!1950 = !DILocalVariable(name: "annotate_info", scope: !1939, file: !1116, line: 848, type: !948)
!1951 = !DILocalVariable(name: "status", scope: !1939, file: !1116, line: 851, type: !613)
!1952 = !DILocation(line: 0, scope: !1939)
!1953 = !DILocation(line: 854, column: 18, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 854, column: 7)
!1955 = !{!1243, !1131, i64 344}
!1956 = !DILocation(line: 854, column: 23, scope: !1954)
!1957 = !DILocation(line: 854, column: 7, scope: !1939)
!1958 = !DILocation(line: 856, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1116, line: 856, column: 11)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !1116, line: 855, column: 5)
!1961 = !DILocation(line: 856, column: 11, scope: !1960)
!1962 = !DILocation(line: 858, column: 18, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !1116, line: 857, column: 9)
!1964 = !DILocation(line: 860, column: 11, scope: !1963)
!1965 = !DILocation(line: 864, column: 11, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !1116, line: 864, column: 11)
!1967 = !DILocation(line: 864, column: 45, scope: !1966)
!1968 = !DILocation(line: 864, column: 11, scope: !1960)
!1969 = !DILocation(line: 866, column: 18, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !1116, line: 865, column: 9)
!1971 = !DILocation(line: 868, column: 11, scope: !1970)
!1972 = !DILocation(line: 870, column: 40, scope: !1960)
!1973 = !DILocation(line: 870, column: 53, scope: !1960)
!1974 = !DILocation(line: 870, column: 17, scope: !1960)
!1975 = !DILocation(line: 871, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1960, file: !1116, line: 871, column: 11)
!1977 = !DILocation(line: 871, column: 11, scope: !1960)
!1978 = !DILocation(line: 873, column: 60, scope: !1976)
!1979 = !DILocation(line: 872, column: 16, scope: !1976)
!1980 = !DILocation(line: 872, column: 9, scope: !1976)
!1981 = !DILocation(line: 876, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 875, column: 7)
!1983 = !{!1243, !1131, i64 360}
!1984 = !DILocation(line: 876, column: 26, scope: !1982)
!1985 = !DILocation(line: 875, column: 7, scope: !1939)
!1986 = !DILocation(line: 878, column: 66, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !1116, line: 877, column: 5)
!1988 = !{!1243, !1132, i64 368}
!1989 = !DILocation(line: 879, column: 20, scope: !1987)
!1990 = !{!1243, !1132, i64 372}
!1991 = !DILocation(line: 879, column: 39, scope: !1987)
!1992 = !{!1243, !1221, i64 376}
!1993 = !DILocation(line: 879, column: 54, scope: !1987)
!1994 = !DILocation(line: 878, column: 17, scope: !1987)
!1995 = !DILocation(line: 880, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !1116, line: 880, column: 11)
!1997 = !DILocation(line: 880, column: 11, scope: !1987)
!1998 = !DILocation(line: 882, column: 60, scope: !1996)
!1999 = !DILocation(line: 881, column: 16, scope: !1996)
!2000 = !DILocation(line: 881, column: 9, scope: !1996)
!2001 = !DILocation(line: 885, column: 54, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 884, column: 7)
!2003 = !DILocation(line: 886, column: 18, scope: !2002)
!2004 = !DILocation(line: 886, column: 37, scope: !2002)
!2005 = !DILocation(line: 886, column: 52, scope: !2002)
!2006 = !DILocation(line: 885, column: 15, scope: !2002)
!2007 = !DILocation(line: 887, column: 17, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 887, column: 7)
!2009 = !DILocation(line: 887, column: 7, scope: !1939)
!2010 = !DILocation(line: 888, column: 58, scope: !2008)
!2011 = !DILocation(line: 889, column: 18, scope: !2008)
!2012 = !DILocation(line: 889, column: 37, scope: !2008)
!2013 = !DILocation(line: 888, column: 15, scope: !2008)
!2014 = !DILocation(line: 890, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 890, column: 7)
!2016 = !DILocation(line: 890, column: 7, scope: !1939)
!2017 = !DILocation(line: 891, column: 67, scope: !2015)
!2018 = !DILocation(line: 892, column: 18, scope: !2015)
!2019 = !DILocation(line: 892, column: 37, scope: !2015)
!2020 = !DILocation(line: 891, column: 15, scope: !2015)
!2021 = !DILocation(line: 893, column: 17, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 893, column: 7)
!2023 = !DILocation(line: 893, column: 7, scope: !1939)
!2024 = !DILocation(line: 894, column: 53, scope: !2022)
!2025 = !DILocation(line: 895, column: 18, scope: !2022)
!2026 = !DILocation(line: 895, column: 37, scope: !2022)
!2027 = !DILocation(line: 894, column: 15, scope: !2022)
!2028 = !DILocation(line: 896, column: 17, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 896, column: 7)
!2030 = !DILocation(line: 896, column: 7, scope: !1939)
!2031 = !DILocation(line: 897, column: 66, scope: !2029)
!2032 = !DILocation(line: 898, column: 18, scope: !2029)
!2033 = !DILocation(line: 898, column: 37, scope: !2029)
!2034 = !DILocation(line: 897, column: 15, scope: !2029)
!2035 = !DILocation(line: 899, column: 17, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 899, column: 7)
!2037 = !DILocation(line: 899, column: 7, scope: !1939)
!2038 = !DILocation(line: 900, column: 15, scope: !2036)
!2039 = !DILocation(line: 901, column: 17, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 901, column: 7)
!2041 = !DILocation(line: 901, column: 7, scope: !1939)
!2042 = !DILocation(line: 903, column: 14, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !1116, line: 902, column: 5)
!2044 = !DILocation(line: 904, column: 7, scope: !2043)
!2045 = !DILocation(line: 906, column: 17, scope: !1939)
!2046 = !DILocation(line: 907, column: 34, scope: !1939)
!2047 = !{!2048, !1221, i64 0}
!2048 = !{!"_TypeInfo", !1221, i64 0, !1131, i64 8, !1131, i64 16, !1131, i64 24, !1131, i64 32, !1132, i64 40, !1132, i64 44, !1221, i64 48, !1131, i64 56, !1131, i64 64, !1131, i64 72, !1131, i64 80, !1131, i64 88, !1132, i64 96, !1131, i64 104, !1131, i64 112, !1221, i64 120}
!2049 = !DILocation(line: 907, column: 18, scope: !1939)
!2050 = !DILocation(line: 907, column: 22, scope: !1939)
!2051 = !{!1243, !1221, i64 336}
!2052 = !DILocation(line: 908, column: 18, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 908, column: 7)
!2054 = !{!2048, !1131, i64 80}
!2055 = !DILocation(line: 908, column: 26, scope: !2053)
!2056 = !DILocation(line: 908, column: 7, scope: !1939)
!2057 = !DILocation(line: 909, column: 40, scope: !2053)
!2058 = !DILocation(line: 909, column: 12, scope: !2053)
!2059 = !DILocation(line: 909, column: 5, scope: !2053)
!2060 = !DILocation(line: 910, column: 18, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1939, file: !1116, line: 910, column: 7)
!2062 = !{!2048, !1131, i64 88}
!2063 = !DILocation(line: 910, column: 25, scope: !2061)
!2064 = !DILocation(line: 910, column: 7, scope: !1939)
!2065 = !DILocation(line: 911, column: 40, scope: !2061)
!2066 = !DILocation(line: 911, column: 12, scope: !2061)
!2067 = !DILocation(line: 911, column: 5, scope: !2061)
!2068 = !DILocation(line: 912, column: 10, scope: !1939)
!2069 = !DILocation(line: 913, column: 17, scope: !1939)
!2070 = !DILocation(line: 914, column: 3, scope: !1939)
!2071 = !DILocation(line: 915, column: 1, scope: !1939)
!2072 = !DISubprogram(name: "DestroyString", scope: !1829, file: !1829, line: 46, type: !2073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!599, !599}
!2075 = !DISubprogram(name: "RelinquishMagickMemory", scope: !2076, file: !2076, line: 51, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2076 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!597, !597}
!2079 = distinct !DISubprogram(name: "FormatMagickCaption", scope: !1116, file: !1116, line: 539, type: !2080, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!661, !673, !948, !2082, !1866, !601}
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2084 = !DILocalVariable(name: "image", arg: 1, scope: !2079, file: !1116, line: 539, type: !673)
!2085 = !DILocalVariable(name: "draw_info", arg: 2, scope: !2079, file: !1116, line: 539, type: !948)
!2086 = !DILocalVariable(name: "split", arg: 3, scope: !2079, file: !1116, line: 540, type: !2082)
!2087 = !DILocalVariable(name: "metrics", arg: 4, scope: !2079, file: !1116, line: 540, type: !1866)
!2088 = !DILocalVariable(name: "caption", arg: 5, scope: !2079, file: !1116, line: 540, type: !601)
!2089 = !DILocalVariable(name: "text", scope: !2079, file: !1116, line: 543, type: !599)
!2090 = !DILocalVariable(name: "status", scope: !2079, file: !1116, line: 546, type: !613)
!2091 = !DILocalVariable(name: "p", scope: !2079, file: !1116, line: 549, type: !599)
!2092 = !DILocalVariable(name: "q", scope: !2079, file: !1116, line: 550, type: !599)
!2093 = !DILocalVariable(name: "s", scope: !2079, file: !1116, line: 551, type: !599)
!2094 = !DILocalVariable(name: "i", scope: !2079, file: !1116, line: 554, type: !661)
!2095 = !DILocalVariable(name: "width", scope: !2079, file: !1116, line: 557, type: !602)
!2096 = !DILocalVariable(name: "n", scope: !2079, file: !1116, line: 560, type: !661)
!2097 = !DILocalVariable(name: "target", scope: !2098, file: !1116, line: 590, type: !599)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !1116, line: 588, column: 9)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1116, line: 587, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 581, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !1116, line: 566, column: 3)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !1116, line: 565, column: 3)
!2103 = distinct !DILexicalBlock(scope: !2079, file: !1116, line: 565, column: 3)
!2104 = !DILocation(line: 0, scope: !2079)
!2105 = !DILocation(line: 562, column: 33, scope: !2079)
!2106 = !DILocation(line: 562, column: 8, scope: !2079)
!2107 = !DILocation(line: 563, column: 16, scope: !2079)
!2108 = !DILocation(line: 565, column: 11, scope: !2103)
!2109 = !DILocation(line: 565, column: 8, scope: !2103)
!2110 = !DILocation(line: 0, scope: !2103)
!2111 = !DILocalVariable(name: "text", arg: 1, scope: !2112, file: !1105, line: 137, type: !779)
!2112 = distinct !DISubprogram(name: "GetUTFCode", scope: !1105, file: !1105, line: 137, type: !2113, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!813, !779}
!2115 = !{!2111, !2116}
!2116 = !DILocalVariable(name: "octets", scope: !2112, file: !1105, line: 140, type: !7)
!2117 = !DILocation(line: 0, scope: !2112, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 565, column: 22, scope: !2102)
!2119 = !DILocalVariable(name: "text", arg: 1, scope: !2120, file: !1105, line: 92, type: !779)
!2120 = distinct !DISubprogram(name: "GetNextUTFCode", scope: !1105, file: !1105, line: 92, type: !2121, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!813, !779, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2124 = !{!2119, !2125, !2126, !2127, !2128, !2129}
!2125 = !DILocalVariable(name: "octets", arg: 2, scope: !2120, file: !1105, line: 92, type: !2123)
!2126 = !DILocalVariable(name: "code", scope: !2120, file: !1105, line: 95, type: !813)
!2127 = !DILocalVariable(name: "i", scope: !2120, file: !1105, line: 98, type: !661)
!2128 = !DILocalVariable(name: "c", scope: !2120, file: !1105, line: 101, type: !813)
!2129 = !DILocalVariable(name: "unicode", scope: !2120, file: !1105, line: 102, type: !813)
!2130 = !DILocation(line: 0, scope: !2120, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 142, column: 10, scope: !2112, inlinedAt: !2118)
!2132 = !DILocation(line: 105, column: 12, scope: !2133, inlinedAt: !2131)
!2133 = distinct !DILexicalBlock(scope: !2120, file: !1105, line: 105, column: 7)
!2134 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2131)
!2135 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2131)
!2136 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2131)
!2137 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2131)
!2138 = distinct !DILexicalBlock(scope: !2120, file: !1105, line: 112, column: 3)
!2139 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2131)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !1105, line: 114, column: 9)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !1105, line: 113, column: 3)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !1105, line: 112, column: 3)
!2143 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2131)
!2144 = !{!2145, !1232, i64 0}
!2145 = !{!"", !1232, i64 0, !1232, i64 4, !1232, i64 8, !1232, i64 12}
!2146 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2131)
!2147 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2131)
!2148 = !{!2145, !1232, i64 4}
!2149 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2131)
!2150 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2131)
!2151 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2131)
!2152 = distinct !DILexicalBlock(scope: !2140, file: !1105, line: 115, column: 7)
!2153 = !{!2145, !1232, i64 8}
!2154 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2131)
!2155 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2131)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !1105, line: 117, column: 13)
!2157 = !{!2145, !1232, i64 12}
!2158 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2131)
!2159 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2131)
!2160 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2131)
!2161 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2131)
!2162 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2131)
!2163 = distinct !DILexicalBlock(scope: !2141, file: !1105, line: 126, column: 9)
!2164 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2131)
!2165 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2131)
!2166 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2131)
!2167 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2131)
!2168 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2131)
!2169 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2131)
!2170 = distinct !{!2170, !2137, !2171, !1269, !1270}
!2171 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2131)
!2172 = !{!1232, !1232, i64 0}
!2173 = !DILocation(line: 565, column: 3, scope: !2103)
!2174 = !DILocation(line: 565, column: 36, scope: !2102)
!2175 = !DILocation(line: 0, scope: !2112, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 567, column: 20, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 567, column: 9)
!2178 = !DILocation(line: 0, scope: !2120, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 142, column: 10, scope: !2112, inlinedAt: !2176)
!2180 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2179)
!2181 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2179)
!2182 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2179)
!2183 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2179)
!2184 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2179)
!2185 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2179)
!2186 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2179)
!2187 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2179)
!2188 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2179)
!2189 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2179)
!2190 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2179)
!2191 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2179)
!2192 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2179)
!2193 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2179)
!2194 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2179)
!2195 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2179)
!2196 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2179)
!2197 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2179)
!2198 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2179)
!2199 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2179)
!2200 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2179)
!2201 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2179)
!2202 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2179)
!2203 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2179)
!2204 = distinct !{!2204, !2183, !2205, !1269, !1270}
!2205 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2179)
!2206 = !DILocalVariable(name: "code", arg: 1, scope: !2207, file: !1105, line: 154, type: !813)
!2207 = distinct !DISubprogram(name: "IsUTFSpace", scope: !1105, file: !1105, line: 154, type: !2208, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!613, !813}
!2210 = !{!2206}
!2211 = !DILocation(line: 0, scope: !2207, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 567, column: 9, scope: !2177)
!2213 = !DILocation(line: 158, column: 45, scope: !2214, inlinedAt: !2212)
!2214 = distinct !DILexicalBlock(scope: !2207, file: !1105, line: 156, column: 7)
!2215 = !DILocation(line: 156, column: 25, scope: !2214, inlinedAt: !2212)
!2216 = !DILocation(line: 567, column: 9, scope: !2101)
!2217 = !DILocation(line: 0, scope: !2112, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 569, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 569, column: 9)
!2220 = !DILocation(line: 0, scope: !2120, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 142, column: 10, scope: !2112, inlinedAt: !2218)
!2222 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2221)
!2223 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2221)
!2224 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2221)
!2225 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2221)
!2226 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2221)
!2227 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2221)
!2228 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2221)
!2229 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2221)
!2230 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2221)
!2231 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2221)
!2232 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2221)
!2233 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2221)
!2234 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2221)
!2235 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2221)
!2236 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2221)
!2237 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2221)
!2238 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2221)
!2239 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2221)
!2240 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2221)
!2241 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2221)
!2242 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2221)
!2243 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2221)
!2244 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2221)
!2245 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2221)
!2246 = distinct !{!2246, !2225, !2247, !1269, !1270}
!2247 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2221)
!2248 = !DILocation(line: 569, column: 9, scope: !2101)
!2249 = !DILocation(line: 569, column: 23, scope: !2219)
!2250 = !DILocation(line: 570, column: 20, scope: !2219)
!2251 = !DILocation(line: 570, column: 7, scope: !2219)
!2252 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 150, column: 10, scope: !2254, inlinedAt: !2260)
!2254 = distinct !DISubprogram(name: "GetUTFOctets", scope: !1105, file: !1105, line: 145, type: !2255, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!7, !779}
!2257 = !{!2258, !2259}
!2258 = !DILocalVariable(name: "text", arg: 1, scope: !2254, file: !1105, line: 145, type: !779)
!2259 = !DILocalVariable(name: "octets", scope: !2254, file: !1105, line: 148, type: !7)
!2260 = distinct !DILocation(line: 571, column: 29, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !1116, line: 571, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 571, column: 5)
!2263 = !DILocation(line: 0, scope: !2254, inlinedAt: !2260)
!2264 = !DILocation(line: 0, scope: !2120, inlinedAt: !2253)
!2265 = !DILocation(line: 572, column: 9, scope: !2261)
!2266 = !DILocation(line: 107, column: 12, scope: !2267, inlinedAt: !2253)
!2267 = distinct !DILexicalBlock(scope: !2133, file: !1105, line: 106, column: 5)
!2268 = !DILocation(line: 573, column: 7, scope: !2101)
!2269 = !DILocation(line: 0, scope: !2101)
!2270 = !DILocation(line: 0, scope: !2262)
!2271 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2253)
!2272 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2253)
!2273 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2253)
!2274 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2253)
!2275 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2253)
!2276 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2253)
!2277 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2253)
!2278 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2253)
!2279 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2253)
!2280 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2253)
!2281 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2253)
!2282 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2253)
!2283 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2253)
!2284 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2253)
!2285 = !DILocation(line: 119, column: 13, scope: !2286, inlinedAt: !2253)
!2286 = distinct !DILexicalBlock(scope: !2156, file: !1105, line: 118, column: 11)
!2287 = !DILocation(line: 119, column: 18, scope: !2286, inlinedAt: !2253)
!2288 = !DILocation(line: 120, column: 13, scope: !2286, inlinedAt: !2253)
!2289 = !DILocation(line: 122, column: 17, scope: !2152, inlinedAt: !2253)
!2290 = !DILocation(line: 123, column: 9, scope: !2152, inlinedAt: !2253)
!2291 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2253)
!2292 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2253)
!2293 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2253)
!2294 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2253)
!2295 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2253)
!2296 = !DILocation(line: 128, column: 9, scope: !2297, inlinedAt: !2253)
!2297 = distinct !DILexicalBlock(scope: !2163, file: !1105, line: 127, column: 7)
!2298 = !DILocation(line: 128, column: 14, scope: !2297, inlinedAt: !2253)
!2299 = !DILocation(line: 129, column: 9, scope: !2297, inlinedAt: !2253)
!2300 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2253)
!2301 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2253)
!2302 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2253)
!2303 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2253)
!2304 = distinct !{!2304, !2273, !2305, !1269, !1270}
!2305 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2253)
!2306 = !DILocation(line: 133, column: 3, scope: !2120, inlinedAt: !2253)
!2307 = !DILocation(line: 133, column: 8, scope: !2120, inlinedAt: !2253)
!2308 = !DILocation(line: 134, column: 3, scope: !2120, inlinedAt: !2253)
!2309 = !DILocation(line: 571, column: 19, scope: !2261)
!2310 = !DILocation(line: 571, column: 17, scope: !2261)
!2311 = !DILocation(line: 571, column: 5, scope: !2262)
!2312 = !DILocation(line: 572, column: 16, scope: !2261)
!2313 = !DILocation(line: 572, column: 13, scope: !2261)
!2314 = !DILocation(line: 572, column: 11, scope: !2261)
!2315 = !DILocation(line: 571, column: 47, scope: !2261)
!2316 = !DILocation(line: 571, column: 5, scope: !2261)
!2317 = distinct !{!2317, !2311, !2318, !1269, !1270}
!2318 = !DILocation(line: 572, column: 19, scope: !2262)
!2319 = !DILocation(line: 574, column: 12, scope: !2101)
!2320 = !DILocation(line: 575, column: 16, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 575, column: 9)
!2322 = !DILocation(line: 575, column: 9, scope: !2101)
!2323 = !DILocation(line: 577, column: 35, scope: !2101)
!2324 = !DILocation(line: 577, column: 52, scope: !2101)
!2325 = !{!1243, !1224, i64 120}
!2326 = !DILocation(line: 577, column: 40, scope: !2101)
!2327 = !DILocation(line: 577, column: 64, scope: !2101)
!2328 = !DILocation(line: 577, column: 20, scope: !2101)
!2329 = !DILocation(line: 577, column: 11, scope: !2101)
!2330 = !DILocation(line: 578, column: 26, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2101, file: !1116, line: 578, column: 9)
!2332 = !{!1220, !1221, i64 40}
!2333 = !DILocation(line: 578, column: 16, scope: !2331)
!2334 = !DILocation(line: 578, column: 35, scope: !2331)
!2335 = !DILocation(line: 578, column: 62, scope: !2331)
!2336 = !DILocation(line: 578, column: 39, scope: !2331)
!2337 = !DILocation(line: 578, column: 68, scope: !2331)
!2338 = !DILocation(line: 578, column: 9, scope: !2101)
!2339 = !DILocation(line: 580, column: 12, scope: !2101)
!2340 = !DILocation(line: 581, column: 12, scope: !2100)
!2341 = !DILocation(line: 581, column: 30, scope: !2100)
!2342 = !DILocation(line: 0, scope: !2254, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 581, column: 34, scope: !2100)
!2344 = !DILocation(line: 0, scope: !2120, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 150, column: 10, scope: !2254, inlinedAt: !2343)
!2346 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2345)
!2347 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2345)
!2348 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2345)
!2349 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2345)
!2350 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2345)
!2351 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2345)
!2352 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2345)
!2353 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2345)
!2354 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2345)
!2355 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2345)
!2356 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2345)
!2357 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2345)
!2358 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2345)
!2359 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2345)
!2360 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2345)
!2361 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2345)
!2362 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2345)
!2363 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2345)
!2364 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2345)
!2365 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2345)
!2366 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2345)
!2367 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2345)
!2368 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2345)
!2369 = distinct !{!2369, !2348, !2370, !1269, !1270}
!2370 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2345)
!2371 = !DILocation(line: 122, column: 17, scope: !2152, inlinedAt: !2345)
!2372 = !DILocation(line: 581, column: 50, scope: !2100)
!2373 = !DILocation(line: 581, column: 9, scope: !2101)
!2374 = !DILocation(line: 583, column: 11, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2100, file: !1116, line: 582, column: 7)
!2376 = !DILocation(line: 585, column: 7, scope: !2375)
!2377 = !DILocation(line: 587, column: 32, scope: !2099)
!2378 = !DILocation(line: 595, column: 32, scope: !2098)
!2379 = !DILocation(line: 595, column: 18, scope: !2098)
!2380 = !DILocation(line: 0, scope: !2098)
!2381 = !DILocation(line: 596, column: 16, scope: !2098)
!2382 = !DILocation(line: 596, column: 14, scope: !2098)
!2383 = !DILocation(line: 597, column: 45, scope: !2098)
!2384 = !DILocation(line: 597, column: 11, scope: !2098)
!2385 = !DILocation(line: 598, column: 54, scope: !2098)
!2386 = !DILocation(line: 598, column: 47, scope: !2098)
!2387 = !DILocation(line: 598, column: 63, scope: !2098)
!2388 = !DILocation(line: 598, column: 11, scope: !2098)
!2389 = !DILocation(line: 599, column: 51, scope: !2098)
!2390 = !DILocation(line: 599, column: 44, scope: !2098)
!2391 = !DILocation(line: 599, column: 60, scope: !2098)
!2392 = !DILocation(line: 599, column: 11, scope: !2098)
!2393 = !DILocation(line: 600, column: 32, scope: !2098)
!2394 = !DILocation(line: 600, column: 18, scope: !2098)
!2395 = !DILocation(line: 601, column: 19, scope: !2098)
!2396 = !DILocation(line: 602, column: 23, scope: !2098)
!2397 = !DILocation(line: 603, column: 9, scope: !2098)
!2398 = !DILocation(line: 604, column: 18, scope: !2101)
!2399 = !DILocation(line: 606, column: 3, scope: !2101)
!2400 = !DILocation(line: 0, scope: !2254, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 565, column: 45, scope: !2102)
!2402 = !DILocation(line: 0, scope: !2120, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 150, column: 10, scope: !2254, inlinedAt: !2401)
!2404 = !DILocation(line: 105, column: 12, scope: !2133, inlinedAt: !2403)
!2405 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2403)
!2406 = !DILocation(line: 107, column: 7, scope: !2267, inlinedAt: !2403)
!2407 = !DILocation(line: 107, column: 12, scope: !2267, inlinedAt: !2403)
!2408 = !DILocation(line: 108, column: 7, scope: !2267, inlinedAt: !2403)
!2409 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2403)
!2410 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2403)
!2411 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2403)
!2412 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2403)
!2413 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2403)
!2414 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2403)
!2415 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2403)
!2416 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2403)
!2417 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2403)
!2418 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2403)
!2419 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2403)
!2420 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2403)
!2421 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2403)
!2422 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2403)
!2423 = !DILocation(line: 119, column: 13, scope: !2286, inlinedAt: !2403)
!2424 = !DILocation(line: 119, column: 18, scope: !2286, inlinedAt: !2403)
!2425 = !DILocation(line: 120, column: 13, scope: !2286, inlinedAt: !2403)
!2426 = !DILocation(line: 122, column: 17, scope: !2152, inlinedAt: !2403)
!2427 = !DILocation(line: 123, column: 9, scope: !2152, inlinedAt: !2403)
!2428 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2403)
!2429 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2403)
!2430 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2403)
!2431 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2403)
!2432 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2403)
!2433 = !DILocation(line: 128, column: 9, scope: !2297, inlinedAt: !2403)
!2434 = !DILocation(line: 128, column: 14, scope: !2297, inlinedAt: !2403)
!2435 = !DILocation(line: 129, column: 9, scope: !2297, inlinedAt: !2403)
!2436 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2403)
!2437 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2403)
!2438 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2403)
!2439 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2403)
!2440 = distinct !{!2440, !2411, !2441, !1269, !1270}
!2441 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2403)
!2442 = !DILocation(line: 133, column: 3, scope: !2120, inlinedAt: !2403)
!2443 = !DILocation(line: 133, column: 8, scope: !2120, inlinedAt: !2403)
!2444 = !DILocation(line: 134, column: 3, scope: !2120, inlinedAt: !2403)
!2445 = !DILocation(line: 565, column: 43, scope: !2102)
!2446 = !DILocation(line: 565, column: 3, scope: !2102)
!2447 = distinct !{!2447, !2173, !2448, !1269, !1270}
!2448 = !DILocation(line: 606, column: 3, scope: !2103)
!2449 = !DILocation(line: 607, column: 8, scope: !2079)
!2450 = !DILocation(line: 609, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2079, file: !1116, line: 609, column: 3)
!2452 = !DILocation(line: 609, column: 8, scope: !2451)
!2453 = !DILocation(line: 0, scope: !2451)
!2454 = !DILocation(line: 0, scope: !2112, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 609, column: 22, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !1116, line: 609, column: 3)
!2457 = !DILocation(line: 0, scope: !2120, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 142, column: 10, scope: !2112, inlinedAt: !2455)
!2459 = !DILocation(line: 105, column: 12, scope: !2133, inlinedAt: !2458)
!2460 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2458)
!2461 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2458)
!2462 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2458)
!2463 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2458)
!2464 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2458)
!2465 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2458)
!2466 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2458)
!2467 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2458)
!2468 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2458)
!2469 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2458)
!2470 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2458)
!2471 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2458)
!2472 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2458)
!2473 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2458)
!2474 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2458)
!2475 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2458)
!2476 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2458)
!2477 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2458)
!2478 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2458)
!2479 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2458)
!2480 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2458)
!2481 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2458)
!2482 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2458)
!2483 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2458)
!2484 = distinct !{!2484, !2463, !2485, !1269, !1270}
!2485 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2458)
!2486 = !DILocation(line: 609, column: 3, scope: !2451)
!2487 = !DILocation(line: 609, column: 36, scope: !2456)
!2488 = !DILocation(line: 0, scope: !2112, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 610, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2456, file: !1116, line: 610, column: 9)
!2491 = !DILocation(line: 0, scope: !2120, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 142, column: 10, scope: !2112, inlinedAt: !2489)
!2493 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2492)
!2494 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2492)
!2495 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2492)
!2496 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2492)
!2497 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2492)
!2498 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2492)
!2499 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2492)
!2500 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2492)
!2501 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2492)
!2502 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2492)
!2503 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2492)
!2504 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2492)
!2505 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2492)
!2506 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2492)
!2507 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2492)
!2508 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2492)
!2509 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2492)
!2510 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2492)
!2511 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2492)
!2512 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2492)
!2513 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2492)
!2514 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2492)
!2515 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2492)
!2516 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2492)
!2517 = distinct !{!2517, !2496, !2518, !1269, !1270}
!2518 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2492)
!2519 = !DILocation(line: 610, column: 9, scope: !2456)
!2520 = !DILocation(line: 610, column: 23, scope: !2490)
!2521 = !DILocation(line: 0, scope: !2254, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 609, column: 45, scope: !2456)
!2523 = !DILocation(line: 0, scope: !2120, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 150, column: 10, scope: !2254, inlinedAt: !2522)
!2525 = !DILocation(line: 105, column: 7, scope: !2120, inlinedAt: !2524)
!2526 = !DILocation(line: 107, column: 7, scope: !2267, inlinedAt: !2524)
!2527 = !DILocation(line: 107, column: 12, scope: !2267, inlinedAt: !2524)
!2528 = !DILocation(line: 108, column: 7, scope: !2267, inlinedAt: !2524)
!2529 = !DILocation(line: 110, column: 15, scope: !2120, inlinedAt: !2524)
!2530 = !DILocation(line: 110, column: 8, scope: !2120, inlinedAt: !2524)
!2531 = !DILocation(line: 112, column: 3, scope: !2138, inlinedAt: !2524)
!2532 = !DILocation(line: 114, column: 17, scope: !2140, inlinedAt: !2524)
!2533 = !DILocation(line: 114, column: 29, scope: !2140, inlinedAt: !2524)
!2534 = !DILocation(line: 114, column: 15, scope: !2140, inlinedAt: !2524)
!2535 = !DILocation(line: 114, column: 55, scope: !2140, inlinedAt: !2524)
!2536 = !DILocation(line: 114, column: 40, scope: !2140, inlinedAt: !2524)
!2537 = !DILocation(line: 114, column: 9, scope: !2141, inlinedAt: !2524)
!2538 = !DILocation(line: 116, column: 30, scope: !2152, inlinedAt: !2524)
!2539 = !DILocation(line: 116, column: 16, scope: !2152, inlinedAt: !2524)
!2540 = !DILocation(line: 117, column: 35, scope: !2156, inlinedAt: !2524)
!2541 = !DILocation(line: 117, column: 21, scope: !2156, inlinedAt: !2524)
!2542 = !DILocation(line: 117, column: 13, scope: !2152, inlinedAt: !2524)
!2543 = !DILocation(line: 119, column: 13, scope: !2286, inlinedAt: !2524)
!2544 = !DILocation(line: 119, column: 18, scope: !2286, inlinedAt: !2524)
!2545 = !DILocation(line: 120, column: 13, scope: !2286, inlinedAt: !2524)
!2546 = !DILocation(line: 122, column: 17, scope: !2152, inlinedAt: !2524)
!2547 = !DILocation(line: 123, column: 9, scope: !2152, inlinedAt: !2524)
!2548 = !DILocation(line: 125, column: 14, scope: !2141, inlinedAt: !2524)
!2549 = !DILocation(line: 125, column: 22, scope: !2141, inlinedAt: !2524)
!2550 = !DILocation(line: 126, column: 12, scope: !2163, inlinedAt: !2524)
!2551 = !DILocation(line: 126, column: 20, scope: !2163, inlinedAt: !2524)
!2552 = !DILocation(line: 126, column: 9, scope: !2141, inlinedAt: !2524)
!2553 = !DILocation(line: 128, column: 9, scope: !2297, inlinedAt: !2524)
!2554 = !DILocation(line: 128, column: 14, scope: !2297, inlinedAt: !2524)
!2555 = !DILocation(line: 129, column: 9, scope: !2297, inlinedAt: !2524)
!2556 = !DILocation(line: 131, column: 22, scope: !2141, inlinedAt: !2524)
!2557 = !DILocation(line: 131, column: 28, scope: !2141, inlinedAt: !2524)
!2558 = !DILocation(line: 112, column: 37, scope: !2142, inlinedAt: !2524)
!2559 = !DILocation(line: 112, column: 15, scope: !2142, inlinedAt: !2524)
!2560 = distinct !{!2560, !2531, !2561, !1269, !1270}
!2561 = !DILocation(line: 132, column: 3, scope: !2138, inlinedAt: !2524)
!2562 = !DILocation(line: 133, column: 3, scope: !2120, inlinedAt: !2524)
!2563 = !DILocation(line: 133, column: 8, scope: !2120, inlinedAt: !2524)
!2564 = !DILocation(line: 134, column: 3, scope: !2120, inlinedAt: !2524)
!2565 = !DILocation(line: 609, column: 43, scope: !2456)
!2566 = !DILocation(line: 609, column: 3, scope: !2456)
!2567 = distinct !{!2567, !2486, !2568, !1269, !1270}
!2568 = !DILocation(line: 611, column: 8, scope: !2451)
!2569 = !DILocation(line: 612, column: 3, scope: !2079)
!2570 = !DISubprogram(name: "AcquireString", scope: !1829, file: !1829, line: 43, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!599, !779}
!2573 = !DISubprogram(name: "CopyMagickString", scope: !1829, file: !1829, line: 78, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!602, !599, !779, !876}
!2576 = !DISubprogram(name: "ConcatenateMagickString", scope: !1829, file: !1829, line: 76, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2577 = distinct !DISubprogram(name: "GetMultilineTypeMetrics", scope: !1116, file: !1116, line: 662, type: !1864, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2579 = !DILocalVariable(name: "image", arg: 1, scope: !2577, file: !1116, line: 662, type: !673)
!2580 = !DILocalVariable(name: "draw_info", arg: 2, scope: !2577, file: !1116, line: 663, type: !1161)
!2581 = !DILocalVariable(name: "metrics", arg: 3, scope: !2577, file: !1116, line: 663, type: !1866)
!2582 = !DILocalVariable(name: "textlist", scope: !2577, file: !1116, line: 666, type: !601)
!2583 = !DILocalVariable(name: "annotate_info", scope: !2577, file: !1116, line: 669, type: !948)
!2584 = !DILocalVariable(name: "status", scope: !2577, file: !1116, line: 672, type: !613)
!2585 = !DILocalVariable(name: "i", scope: !2577, file: !1116, line: 675, type: !661)
!2586 = !DILocalVariable(name: "extent", scope: !2577, file: !1116, line: 678, type: !1185)
!2587 = !DILocation(line: 0, scope: !2577)
!2588 = !DILocation(line: 677, column: 3, scope: !2577)
!2589 = !DILocation(line: 678, column: 5, scope: !2577)
!2590 = !DILocation(line: 682, column: 14, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2577, file: !1116, line: 682, column: 7)
!2592 = !DILocation(line: 682, column: 20, scope: !2591)
!2593 = !DILocation(line: 682, column: 7, scope: !2577)
!2594 = !DILocation(line: 683, column: 68, scope: !2591)
!2595 = !DILocation(line: 683, column: 12, scope: !2591)
!2596 = !DILocation(line: 683, column: 5, scope: !2591)
!2597 = !DILocation(line: 687, column: 19, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2577, file: !1116, line: 687, column: 7)
!2599 = !DILocation(line: 687, column: 7, scope: !2598)
!2600 = !DILocation(line: 687, column: 24, scope: !2598)
!2601 = !DILocation(line: 687, column: 7, scope: !2577)
!2602 = !DILocation(line: 689, column: 17, scope: !2577)
!2603 = !DILocation(line: 690, column: 52, scope: !2577)
!2604 = !DILocation(line: 690, column: 23, scope: !2577)
!2605 = !DILocation(line: 690, column: 22, scope: !2577)
!2606 = !DILocation(line: 694, column: 36, scope: !2577)
!2607 = !DILocation(line: 694, column: 12, scope: !2577)
!2608 = !DILocation(line: 695, column: 16, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2577, file: !1116, line: 695, column: 7)
!2610 = !DILocation(line: 695, column: 7, scope: !2577)
!2611 = !DILocation(line: 697, column: 18, scope: !2577)
!2612 = !DILocation(line: 697, column: 24, scope: !2577)
!2613 = !DILocation(line: 698, column: 18, scope: !2577)
!2614 = !DILocation(line: 698, column: 27, scope: !2577)
!2615 = !DILocation(line: 699, column: 10, scope: !2577)
!2616 = !DILocation(line: 700, column: 10, scope: !2577)
!2617 = !DILocation(line: 704, column: 23, scope: !2577)
!2618 = !DILocation(line: 704, column: 22, scope: !2577)
!2619 = !DILocation(line: 705, column: 10, scope: !2577)
!2620 = !DILocation(line: 706, column: 12, scope: !2577)
!2621 = !{i64 0, i64 8, !1743, i64 8, i64 8, !1743, i64 16, i64 8, !1743, i64 24, i64 8, !1743, i64 32, i64 8, !1743, i64 40, i64 8, !1743, i64 48, i64 8, !1743, i64 56, i64 8, !1743, i64 64, i64 8, !1743, i64 72, i64 8, !1743, i64 80, i64 8, !1743, i64 88, i64 8, !1743, i64 96, i64 8, !1743, i64 104, i64 8, !1743, i64 112, i64 8, !1743}
!2622 = !DILocation(line: 707, column: 13, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !1116, line: 707, column: 3)
!2624 = distinct !DILexicalBlock(scope: !2577, file: !1116, line: 707, column: 3)
!2625 = !DILocation(line: 707, column: 25, scope: !2623)
!2626 = !DILocation(line: 707, column: 3, scope: !2624)
!2627 = !DILocation(line: 709, column: 24, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !1116, line: 708, column: 3)
!2629 = !DILocation(line: 710, column: 12, scope: !2628)
!2630 = !DILocation(line: 711, column: 16, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !1116, line: 711, column: 9)
!2632 = !DILocation(line: 711, column: 33, scope: !2631)
!2633 = !DILocation(line: 711, column: 22, scope: !2631)
!2634 = !DILocation(line: 711, column: 9, scope: !2628)
!2635 = !DILocation(line: 712, column: 16, scope: !2631)
!2636 = !DILocation(line: 712, column: 7, scope: !2631)
!2637 = !DILocation(line: 707, column: 44, scope: !2623)
!2638 = distinct !{!2638, !2626, !2639, !1269, !1270}
!2639 = !DILocation(line: 713, column: 3, scope: !2624)
!2640 = !DILocation(line: 0, scope: !2624)
!2641 = !DILocation(line: 714, column: 50, scope: !2577)
!2642 = !DILocation(line: 714, column: 66, scope: !2577)
!2643 = !DILocation(line: 714, column: 56, scope: !2577)
!2644 = !DILocation(line: 714, column: 73, scope: !2577)
!2645 = !DILocation(line: 714, column: 31, scope: !2577)
!2646 = !DILocation(line: 714, column: 30, scope: !2577)
!2647 = !DILocation(line: 714, column: 29, scope: !2577)
!2648 = !DILocation(line: 715, column: 7, scope: !2577)
!2649 = !DILocation(line: 715, column: 5, scope: !2577)
!2650 = !DILocation(line: 715, column: 22, scope: !2577)
!2651 = !DILocation(line: 714, column: 78, scope: !2577)
!2652 = !DILocation(line: 714, column: 12, scope: !2577)
!2653 = !DILocation(line: 714, column: 18, scope: !2577)
!2654 = !DILocation(line: 719, column: 22, scope: !2577)
!2655 = !DILocation(line: 720, column: 17, scope: !2577)
!2656 = !DILocation(line: 721, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !1116, line: 721, column: 3)
!2658 = distinct !DILexicalBlock(scope: !2577, file: !1116, line: 721, column: 3)
!2659 = !DILocation(line: 721, column: 25, scope: !2657)
!2660 = !DILocation(line: 721, column: 3, scope: !2658)
!2661 = !DILocation(line: 722, column: 17, scope: !2657)
!2662 = !DILocation(line: 722, column: 16, scope: !2657)
!2663 = !DILocation(line: 721, column: 44, scope: !2657)
!2664 = distinct !{!2664, !2660, !2665, !1269, !1270}
!2665 = !DILocation(line: 722, column: 42, scope: !2658)
!2666 = !DILocation(line: 723, column: 22, scope: !2577)
!2667 = !DILocation(line: 724, column: 3, scope: !2577)
!2668 = !DILocation(line: 725, column: 1, scope: !2577)
!2669 = !DISubprogram(name: "ResetMagickMemory", scope: !2076, file: !2076, line: 52, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!597, !597, !813, !876}
!2672 = distinct !DISubprogram(name: "RenderFreetype", scope: !1116, file: !1116, line: 1534, type: !2673, scopeLine: 1537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!613, !673, !1161, !779, !1942, !1866}
!2675 = !{!2676, !2677, !2678, !2679, !2680}
!2676 = !DILocalVariable(name: "image", arg: 1, scope: !2672, file: !1116, line: 1534, type: !673)
!2677 = !DILocalVariable(name: "draw_info", arg: 2, scope: !2672, file: !1116, line: 1534, type: !1161)
!2678 = !DILocalVariable(name: "encoding", arg: 3, scope: !2672, file: !1116, line: 1535, type: !779)
!2679 = !DILocalVariable(name: "offset", arg: 4, scope: !2672, file: !1116, line: 1535, type: !1942)
!2680 = !DILocalVariable(name: "metrics", arg: 5, scope: !2672, file: !1116, line: 1536, type: !1866)
!2681 = !DILocation(line: 0, scope: !2672)
!2682 = !DILocation(line: 1540, column: 16, scope: !2672)
!2683 = !DILocation(line: 1540, column: 21, scope: !2672)
!2684 = !DILocation(line: 1540, column: 5, scope: !2672)
!2685 = !DILocation(line: 1538, column: 39, scope: !2672)
!2686 = !DILocation(line: 1538, column: 10, scope: !2672)
!2687 = !DILocalVariable(name: "image", arg: 1, scope: !2688, file: !1116, line: 1613, type: !673)
!2688 = distinct !DISubprogram(name: "RenderPostscript", scope: !1116, file: !1116, line: 1613, type: !1940, scopeLine: 1615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2689 = !{!2687, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2711, !2714, !2715, !2718, !2721, !2722, !2723, !2727, !2731}
!2690 = !DILocalVariable(name: "draw_info", arg: 2, scope: !2688, file: !1116, line: 1614, type: !1161)
!2691 = !DILocalVariable(name: "offset", arg: 3, scope: !2688, file: !1116, line: 1614, type: !1942)
!2692 = !DILocalVariable(name: "metrics", arg: 4, scope: !2688, file: !1116, line: 1614, type: !1866)
!2693 = !DILocalVariable(name: "filename", scope: !2688, file: !1116, line: 1617, type: !799)
!2694 = !DILocalVariable(name: "geometry", scope: !2688, file: !1116, line: 1618, type: !799)
!2695 = !DILocalVariable(name: "text", scope: !2688, file: !1116, line: 1619, type: !599)
!2696 = !DILocalVariable(name: "file", scope: !2688, file: !1116, line: 1622, type: !878)
!2697 = !DILocalVariable(name: "annotate_image", scope: !2688, file: !1116, line: 1625, type: !673)
!2698 = !DILocalVariable(name: "annotate_info", scope: !2688, file: !1116, line: 1628, type: !604)
!2699 = !DILocalVariable(name: "unique_file", scope: !2688, file: !1116, line: 1631, type: !813)
!2700 = !DILocalVariable(name: "identity", scope: !2688, file: !1116, line: 1634, type: !613)
!2701 = !DILocalVariable(name: "extent", scope: !2688, file: !1116, line: 1637, type: !1012)
!2702 = !DILocalVariable(name: "point", scope: !2688, file: !1116, line: 1638, type: !1012)
!2703 = !DILocalVariable(name: "resolution", scope: !2688, file: !1116, line: 1639, type: !1012)
!2704 = !DILocalVariable(name: "i", scope: !2688, file: !1116, line: 1642, type: !661)
!2705 = !DILocalVariable(name: "length", scope: !2688, file: !1116, line: 1645, type: !602)
!2706 = !DILocalVariable(name: "y", scope: !2688, file: !1116, line: 1648, type: !661)
!2707 = !DILocalVariable(name: "message", scope: !2708, file: !1116, line: 1663, type: !599)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !1116, line: 1663, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !1116, line: 1662, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1661, column: 7)
!2711 = !DILocalVariable(name: "geometry_info", scope: !2712, file: !1116, line: 1739, type: !1171)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !1116, line: 1737, column: 5)
!2713 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1736, column: 7)
!2714 = !DILocalVariable(name: "flags", scope: !2712, file: !1116, line: 1742, type: !1848)
!2715 = !DILocalVariable(name: "crop_info", scope: !2716, file: !1116, line: 1755, type: !720)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !1116, line: 1753, column: 5)
!2717 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1750, column: 7)
!2718 = !DILocalVariable(name: "exception", scope: !2719, file: !1116, line: 1790, type: !1849)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !1116, line: 1788, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1787, column: 7)
!2721 = !DILocalVariable(name: "sync", scope: !2719, file: !1116, line: 1793, type: !613)
!2722 = !DILocalVariable(name: "fill_color", scope: !2719, file: !1116, line: 1796, type: !640)
!2723 = !DILocalVariable(name: "annotate_view", scope: !2719, file: !1116, line: 1799, type: !2724)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !529, line: 50, baseType: !2726)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !328, line: 160, flags: DIFlagFwdDecl)
!2727 = !DILocalVariable(name: "x", scope: !2728, file: !1116, line: 1814, type: !661)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !1116, line: 1812, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !1116, line: 1811, column: 7)
!2730 = distinct !DILexicalBlock(scope: !2719, file: !1116, line: 1811, column: 7)
!2731 = !DILocalVariable(name: "q", scope: !2728, file: !1116, line: 1817, type: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!2733 = !DILocation(line: 0, scope: !2688, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1541, column: 10, scope: !2672)
!2735 = !DILocation(line: 1616, column: 3, scope: !2688, inlinedAt: !2734)
!2736 = !DILocation(line: 1617, column: 5, scope: !2688, inlinedAt: !2734)
!2737 = !DILocation(line: 1618, column: 5, scope: !2688, inlinedAt: !2734)
!2738 = !DILocation(line: 1624, column: 3, scope: !2688, inlinedAt: !2734)
!2739 = !DILocation(line: 1653, column: 14, scope: !2740, inlinedAt: !2734)
!2740 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1653, column: 7)
!2741 = !DILocation(line: 1653, column: 20, scope: !2740, inlinedAt: !2734)
!2742 = !DILocation(line: 1653, column: 7, scope: !2688, inlinedAt: !2734)
!2743 = !DILocation(line: 1655, column: 42, scope: !2740, inlinedAt: !2734)
!2744 = !DILocation(line: 1655, column: 47, scope: !2740, inlinedAt: !2734)
!2745 = !DILocation(line: 1655, column: 31, scope: !2740, inlinedAt: !2734)
!2746 = !DILocation(line: 1656, column: 43, scope: !2740, inlinedAt: !2734)
!2747 = !{!1243, !1224, i64 392}
!2748 = !DILocation(line: 1654, column: 12, scope: !2740, inlinedAt: !2734)
!2749 = !DILocation(line: 1654, column: 5, scope: !2740, inlinedAt: !2734)
!2750 = !DILocation(line: 1658, column: 15, scope: !2688, inlinedAt: !2734)
!2751 = !DILocation(line: 1659, column: 19, scope: !2752, inlinedAt: !2734)
!2752 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1659, column: 7)
!2753 = !DILocation(line: 1659, column: 7, scope: !2688, inlinedAt: !2734)
!2754 = !DILocation(line: 1660, column: 10, scope: !2752, inlinedAt: !2734)
!2755 = !DILocation(line: 1661, column: 27, scope: !2710, inlinedAt: !2734)
!2756 = !DILocation(line: 1663, column: 7, scope: !2708, inlinedAt: !2734)
!2757 = !DILocation(line: 0, scope: !2708, inlinedAt: !2734)
!2758 = !DILocation(line: 1665, column: 7, scope: !2709, inlinedAt: !2734)
!2759 = !DILocation(line: 1667, column: 10, scope: !2688, inlinedAt: !2734)
!2760 = !DILocation(line: 1668, column: 10, scope: !2688, inlinedAt: !2734)
!2761 = !DILocation(line: 1669, column: 10, scope: !2688, inlinedAt: !2734)
!2762 = !DILocation(line: 1670, column: 10, scope: !2688, inlinedAt: !2734)
!2763 = !DILocation(line: 1671, column: 10, scope: !2688, inlinedAt: !2734)
!2764 = !DILocation(line: 1673, column: 10, scope: !2688, inlinedAt: !2734)
!2765 = !DILocation(line: 1675, column: 10, scope: !2688, inlinedAt: !2734)
!2766 = !DILocation(line: 1679, column: 29, scope: !2688, inlinedAt: !2734)
!2767 = !DILocation(line: 1679, column: 36, scope: !2688, inlinedAt: !2734)
!2768 = !DILocation(line: 1679, column: 57, scope: !2688, inlinedAt: !2734)
!2769 = !DILocation(line: 1679, column: 38, scope: !2688, inlinedAt: !2734)
!2770 = !DILocation(line: 1679, column: 13, scope: !2688, inlinedAt: !2734)
!2771 = !DILocation(line: 1679, column: 61, scope: !2688, inlinedAt: !2734)
!2772 = !DILocation(line: 1679, column: 78, scope: !2688, inlinedAt: !2734)
!2773 = !DILocation(line: 1680, column: 29, scope: !2688, inlinedAt: !2734)
!2774 = !DILocation(line: 1680, column: 6, scope: !2688, inlinedAt: !2734)
!2775 = !DILocation(line: 1680, column: 33, scope: !2688, inlinedAt: !2734)
!2776 = !DILocation(line: 1680, column: 50, scope: !2688, inlinedAt: !2734)
!2777 = !DILocation(line: 1681, column: 29, scope: !2688, inlinedAt: !2734)
!2778 = !DILocation(line: 1681, column: 6, scope: !2688, inlinedAt: !2734)
!2779 = !DILocation(line: 1681, column: 33, scope: !2688, inlinedAt: !2734)
!2780 = !DILocation(line: 1684, column: 28, scope: !2688, inlinedAt: !2734)
!2781 = !DILocation(line: 1684, column: 10, scope: !2688, inlinedAt: !2734)
!2782 = !DILocation(line: 1685, column: 15, scope: !2783, inlinedAt: !2734)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !1116, line: 1685, column: 3)
!2784 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1685, column: 3)
!2785 = !DILocation(line: 1685, column: 3, scope: !2784, inlinedAt: !2734)
!2786 = !DILocation(line: 1687, column: 39, scope: !2787, inlinedAt: !2734)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !1116, line: 1686, column: 3)
!2788 = !DILocation(line: 1687, column: 38, scope: !2787, inlinedAt: !2734)
!2789 = !DILocation(line: 1687, column: 61, scope: !2787, inlinedAt: !2734)
!2790 = !DILocation(line: 1687, column: 13, scope: !2787, inlinedAt: !2734)
!2791 = !DILocation(line: 1689, column: 38, scope: !2787, inlinedAt: !2734)
!2792 = !DILocation(line: 1689, column: 61, scope: !2787, inlinedAt: !2734)
!2793 = !DILocation(line: 1689, column: 13, scope: !2787, inlinedAt: !2734)
!2794 = !DILocation(line: 1691, column: 17, scope: !2795, inlinedAt: !2734)
!2795 = distinct !DILexicalBlock(scope: !2787, file: !1116, line: 1691, column: 9)
!2796 = !DILocation(line: 1691, column: 9, scope: !2787, inlinedAt: !2734)
!2797 = !DILocation(line: 1692, column: 7, scope: !2795, inlinedAt: !2734)
!2798 = !DILocation(line: 1693, column: 17, scope: !2799, inlinedAt: !2734)
!2799 = distinct !DILexicalBlock(scope: !2787, file: !1116, line: 1693, column: 9)
!2800 = !DILocation(line: 1693, column: 9, scope: !2787, inlinedAt: !2734)
!2801 = !DILocation(line: 1694, column: 7, scope: !2799, inlinedAt: !2734)
!2802 = !DILocation(line: 1685, column: 41, scope: !2783, inlinedAt: !2734)
!2803 = distinct !{!2803, !2785, !2804, !1269, !1270}
!2804 = !DILocation(line: 1695, column: 3, scope: !2784, inlinedAt: !2734)
!2805 = !DILocation(line: 1696, column: 49, scope: !2688, inlinedAt: !2734)
!2806 = !DILocation(line: 1697, column: 26, scope: !2688, inlinedAt: !2734)
!2807 = !DILocation(line: 1696, column: 10, scope: !2688, inlinedAt: !2734)
!2808 = !DILocation(line: 1698, column: 59, scope: !2688, inlinedAt: !2734)
!2809 = !DILocation(line: 1698, column: 10, scope: !2688, inlinedAt: !2734)
!2810 = !DILocation(line: 1700, column: 19, scope: !2811, inlinedAt: !2734)
!2811 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1700, column: 7)
!2812 = !DILocation(line: 1700, column: 24, scope: !2811, inlinedAt: !2734)
!2813 = !DILocation(line: 1700, column: 42, scope: !2811, inlinedAt: !2734)
!2814 = !DILocation(line: 1700, column: 46, scope: !2811, inlinedAt: !2734)
!2815 = !DILocation(line: 1700, column: 63, scope: !2811, inlinedAt: !2734)
!2816 = !DILocation(line: 1700, column: 72, scope: !2811, inlinedAt: !2734)
!2817 = !DILocation(line: 1701, column: 8, scope: !2811, inlinedAt: !2734)
!2818 = !DILocation(line: 1701, column: 36, scope: !2811, inlinedAt: !2734)
!2819 = !DILocation(line: 1700, column: 7, scope: !2688, inlinedAt: !2734)
!2820 = !DILocation(line: 1702, column: 12, scope: !2811, inlinedAt: !2734)
!2821 = !DILocation(line: 1702, column: 5, scope: !2811, inlinedAt: !2734)
!2822 = !DILocation(line: 1705, column: 12, scope: !2811, inlinedAt: !2734)
!2823 = !DILocation(line: 1709, column: 23, scope: !2688, inlinedAt: !2734)
!2824 = !DILocation(line: 1709, column: 45, scope: !2688, inlinedAt: !2734)
!2825 = !DILocation(line: 1709, column: 26, scope: !2688, inlinedAt: !2734)
!2826 = !DILocation(line: 1709, column: 67, scope: !2688, inlinedAt: !2734)
!2827 = !DILocation(line: 1709, column: 48, scope: !2688, inlinedAt: !2734)
!2828 = !DILocation(line: 1710, column: 23, scope: !2688, inlinedAt: !2734)
!2829 = !DILocation(line: 1708, column: 10, scope: !2688, inlinedAt: !2734)
!2830 = !DILocation(line: 1711, column: 37, scope: !2688, inlinedAt: !2734)
!2831 = !DILocalVariable(name: "text", arg: 1, scope: !2832, file: !1116, line: 1583, type: !779)
!2832 = distinct !DISubprogram(name: "EscapeParenthesis", scope: !1116, file: !1116, line: 1583, type: !2571, scopeLine: 1584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2833)
!2833 = !{!2831, !2834, !2835, !2836, !2837}
!2834 = !DILocalVariable(name: "buffer", scope: !2832, file: !1116, line: 1586, type: !599)
!2835 = !DILocalVariable(name: "p", scope: !2832, file: !1116, line: 1589, type: !599)
!2836 = !DILocalVariable(name: "i", scope: !2832, file: !1116, line: 1592, type: !661)
!2837 = !DILocalVariable(name: "escapes", scope: !2832, file: !1116, line: 1595, type: !602)
!2838 = !DILocation(line: 0, scope: !2832, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1711, column: 8, scope: !2688, inlinedAt: !2734)
!2840 = !DILocation(line: 1598, column: 10, scope: !2832, inlinedAt: !2839)
!2841 = !DILocation(line: 1600, column: 37, scope: !2842, inlinedAt: !2839)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !1116, line: 1600, column: 3)
!2843 = distinct !DILexicalBlock(scope: !2832, file: !1116, line: 1600, column: 3)
!2844 = !DILocalVariable(name: "x", arg: 1, scope: !2845, file: !1116, line: 1576, type: !876)
!2845 = distinct !DISubprogram(name: "MagickMin", scope: !1116, file: !1116, line: 1576, type: !2846, scopeLine: 1577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!602, !876, !876}
!2848 = !{!2844, !2849}
!2849 = !DILocalVariable(name: "y", arg: 2, scope: !2845, file: !1116, line: 1576, type: !876)
!2850 = !DILocation(line: 0, scope: !2845, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1600, column: 27, scope: !2842, inlinedAt: !2839)
!2852 = !DILocation(line: 1600, column: 15, scope: !2842, inlinedAt: !2839)
!2853 = !DILocation(line: 1600, column: 3, scope: !2843, inlinedAt: !2839)
!2854 = !DILocation(line: 1602, column: 10, scope: !2855, inlinedAt: !2839)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !1116, line: 1602, column: 9)
!2856 = distinct !DILexicalBlock(scope: !2842, file: !1116, line: 1601, column: 3)
!2857 = !DILocation(line: 1602, column: 26, scope: !2855, inlinedAt: !2839)
!2858 = !DILocation(line: 1604, column: 11, scope: !2859, inlinedAt: !2839)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !1116, line: 1603, column: 7)
!2860 = !DILocation(line: 1604, column: 13, scope: !2859, inlinedAt: !2839)
!2861 = !DILocation(line: 1605, column: 16, scope: !2859, inlinedAt: !2839)
!2862 = !DILocation(line: 1607, column: 10, scope: !2856, inlinedAt: !2839)
!2863 = !DILocation(line: 1606, column: 7, scope: !2859, inlinedAt: !2839)
!2864 = !DILocation(line: 1607, column: 7, scope: !2856, inlinedAt: !2839)
!2865 = !DILocation(line: 1607, column: 9, scope: !2856, inlinedAt: !2839)
!2866 = !DILocation(line: 1600, column: 77, scope: !2842, inlinedAt: !2839)
!2867 = !DILocation(line: 1600, column: 71, scope: !2842, inlinedAt: !2839)
!2868 = distinct !{!2868, !2853, !2869, !1269, !1270}
!2869 = !DILocation(line: 1608, column: 3, scope: !2843, inlinedAt: !2839)
!2870 = !DILocation(line: 1609, column: 5, scope: !2832, inlinedAt: !2839)
!2871 = !DILocation(line: 1712, column: 7, scope: !2688, inlinedAt: !2734)
!2872 = !DILocation(line: 1713, column: 12, scope: !2873, inlinedAt: !2734)
!2873 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1712, column: 7)
!2874 = !DILocation(line: 1713, column: 5, scope: !2873, inlinedAt: !2734)
!2875 = !DILocation(line: 1715, column: 10, scope: !2688, inlinedAt: !2734)
!2876 = !DILocation(line: 1716, column: 8, scope: !2688, inlinedAt: !2734)
!2877 = !DILocation(line: 1717, column: 10, scope: !2688, inlinedAt: !2734)
!2878 = !DILocation(line: 1718, column: 10, scope: !2688, inlinedAt: !2734)
!2879 = !DILocation(line: 1720, column: 19, scope: !2688, inlinedAt: !2734)
!2880 = !DILocation(line: 1720, column: 5, scope: !2688, inlinedAt: !2734)
!2881 = !DILocation(line: 1720, column: 39, scope: !2688, inlinedAt: !2734)
!2882 = !DILocation(line: 1720, column: 25, scope: !2688, inlinedAt: !2734)
!2883 = !DILocation(line: 1719, column: 10, scope: !2688, inlinedAt: !2734)
!2884 = !DILocation(line: 1721, column: 17, scope: !2688, inlinedAt: !2734)
!2885 = !DILocation(line: 1722, column: 44, scope: !2688, inlinedAt: !2734)
!2886 = !DILocation(line: 1722, column: 10, scope: !2688, inlinedAt: !2734)
!2887 = !DILocation(line: 1724, column: 38, scope: !2688, inlinedAt: !2734)
!2888 = !DILocation(line: 1724, column: 10, scope: !2688, inlinedAt: !2734)
!2889 = !DILocation(line: 1725, column: 18, scope: !2890, inlinedAt: !2734)
!2890 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1725, column: 7)
!2891 = !{!1243, !1131, i64 400}
!2892 = !DILocation(line: 1725, column: 26, scope: !2890, inlinedAt: !2734)
!2893 = !DILocation(line: 1725, column: 7, scope: !2688, inlinedAt: !2734)
!2894 = !DILocation(line: 1726, column: 40, scope: !2890, inlinedAt: !2734)
!2895 = !DILocation(line: 1726, column: 12, scope: !2890, inlinedAt: !2734)
!2896 = !DILocation(line: 1726, column: 5, scope: !2890, inlinedAt: !2734)
!2897 = !DILocation(line: 1727, column: 39, scope: !2688, inlinedAt: !2734)
!2898 = !{!1243, !1132, i64 284}
!2899 = !DILocation(line: 1727, column: 18, scope: !2688, inlinedAt: !2734)
!2900 = !DILocation(line: 1727, column: 27, scope: !2688, inlinedAt: !2734)
!2901 = !{!2902, !1132, i64 20}
!2902 = !{!"_ImageInfo", !1132, i64 0, !1132, i64 4, !1132, i64 8, !1132, i64 12, !1132, i64 16, !1132, i64 20, !1131, i64 24, !1131, i64 32, !1131, i64 40, !1131, i64 48, !1221, i64 56, !1221, i64 64, !1221, i64 72, !1132, i64 80, !1132, i64 84, !1132, i64 88, !1221, i64 96, !1131, i64 104, !1131, i64 112, !1131, i64 120, !1131, i64 128, !1131, i64 136, !1224, i64 144, !1224, i64 152, !1222, i64 160, !1222, i64 168, !1222, i64 176, !1132, i64 184, !1132, i64 188, !1221, i64 192, !1132, i64 200, !1132, i64 204, !1132, i64 208, !1221, i64 216, !1132, i64 224, !1132, i64 228, !1131, i64 232, !1131, i64 240, !1132, i64 248, !1131, i64 256, !1131, i64 264, !1131, i64 272, !1131, i64 280, !1131, i64 288, !1131, i64 296, !1131, i64 304, !1131, i64 312, !1221, i64 320, !1132, i64 328, !1132, i64 4424, !1132, i64 8520, !1132, i64 12616, !1132, i64 16712, !1131, i64 16720, !1221, i64 16728, !1221, i64 16736, !1222, i64 16744, !1221, i64 16752, !1132, i64 16760, !1222, i64 16764, !1131, i64 16776, !1132, i64 16784}
!2903 = !DILocation(line: 1728, column: 18, scope: !2688, inlinedAt: !2734)
!2904 = !DILocation(line: 1728, column: 17, scope: !2688, inlinedAt: !2734)
!2905 = !DILocation(line: 1729, column: 3, scope: !2688, inlinedAt: !2734)
!2906 = !DILocation(line: 1730, column: 17, scope: !2688, inlinedAt: !2734)
!2907 = !DILocation(line: 1731, column: 10, scope: !2688, inlinedAt: !2734)
!2908 = !DILocation(line: 1732, column: 22, scope: !2909, inlinedAt: !2734)
!2909 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1732, column: 7)
!2910 = !DILocation(line: 1732, column: 7, scope: !2688, inlinedAt: !2734)
!2911 = !DILocation(line: 1735, column: 16, scope: !2688, inlinedAt: !2734)
!2912 = !DILocation(line: 1736, column: 18, scope: !2713, inlinedAt: !2734)
!2913 = !DILocation(line: 1736, column: 26, scope: !2713, inlinedAt: !2734)
!2914 = !DILocation(line: 1736, column: 7, scope: !2688, inlinedAt: !2734)
!2915 = !DILocation(line: 1738, column: 7, scope: !2712, inlinedAt: !2734)
!2916 = !DILocation(line: 1739, column: 9, scope: !2712, inlinedAt: !2734)
!2917 = !DILocation(line: 1744, column: 13, scope: !2712, inlinedAt: !2734)
!2918 = !DILocation(line: 0, scope: !2712, inlinedAt: !2734)
!2919 = !DILocation(line: 1746, column: 34, scope: !2712, inlinedAt: !2734)
!2920 = !{!1312, !1224, i64 8}
!2921 = !DILocation(line: 1747, column: 18, scope: !2922, inlinedAt: !2734)
!2922 = distinct !DILexicalBlock(scope: !2712, file: !1116, line: 1747, column: 11)
!2923 = !DILocation(line: 1747, column: 32, scope: !2922, inlinedAt: !2734)
!2924 = !DILocation(line: 1747, column: 11, scope: !2712, inlinedAt: !2734)
!2925 = !DILocation(line: 1749, column: 5, scope: !2713, inlinedAt: !2734)
!2926 = !DILocation(line: 1749, column: 5, scope: !2712, inlinedAt: !2734)
!2927 = !DILocation(line: 1750, column: 7, scope: !2688, inlinedAt: !2734)
!2928 = !DILocation(line: 1751, column: 12, scope: !2717, inlinedAt: !2734)
!2929 = !DILocation(line: 1767, column: 41, scope: !2688, inlinedAt: !2734)
!2930 = !DILocation(line: 1751, column: 5, scope: !2717, inlinedAt: !2734)
!2931 = !DILocation(line: 1757, column: 17, scope: !2716, inlinedAt: !2734)
!2932 = !DILocation(line: 1757, column: 69, scope: !2716, inlinedAt: !2734)
!2933 = !{i64 0, i64 8, !2934, i64 8, i64 8, !2934, i64 16, i64 8, !2934, i64 24, i64 8, !2934}
!2934 = !{!1221, !1221, i64 0}
!2935 = !DILocation(line: 0, scope: !2716, inlinedAt: !2734)
!2936 = !{i64 0, i64 8, !2934, i64 8, i64 8, !2934}
!2937 = !DILocation(line: 1758, column: 47, scope: !2716, inlinedAt: !2734)
!2938 = !DILocation(line: 1759, column: 9, scope: !2716, inlinedAt: !2734)
!2939 = !DILocation(line: 1758, column: 66, scope: !2716, inlinedAt: !2734)
!2940 = !DILocation(line: 1759, column: 53, scope: !2716, inlinedAt: !2734)
!2941 = !DILocation(line: 1759, column: 62, scope: !2716, inlinedAt: !2734)
!2942 = !DILocation(line: 1758, column: 24, scope: !2716, inlinedAt: !2734)
!2943 = !DILocation(line: 1760, column: 66, scope: !2716, inlinedAt: !2734)
!2944 = !DILocation(line: 1760, column: 75, scope: !2716, inlinedAt: !2734)
!2945 = !DILocation(line: 1760, column: 79, scope: !2716, inlinedAt: !2734)
!2946 = !DILocation(line: 1760, column: 29, scope: !2716, inlinedAt: !2734)
!2947 = !DILocation(line: 1760, column: 19, scope: !2716, inlinedAt: !2734)
!2948 = !DILocation(line: 1763, column: 35, scope: !2716, inlinedAt: !2734)
!2949 = !DILocation(line: 1763, column: 60, scope: !2716, inlinedAt: !2734)
!2950 = !DILocation(line: 1764, column: 26, scope: !2716, inlinedAt: !2734)
!2951 = !DILocation(line: 1764, column: 47, scope: !2716, inlinedAt: !2734)
!2952 = !DILocation(line: 1762, column: 14, scope: !2716, inlinedAt: !2734)
!2953 = !DILocation(line: 1765, column: 14, scope: !2716, inlinedAt: !2734)
!2954 = !DILocation(line: 1768, column: 5, scope: !2688, inlinedAt: !2734)
!2955 = !DILocation(line: 1767, column: 60, scope: !2688, inlinedAt: !2734)
!2956 = !DILocation(line: 1768, column: 49, scope: !2688, inlinedAt: !2734)
!2957 = !DILocation(line: 1768, column: 37, scope: !2688, inlinedAt: !2734)
!2958 = !DILocation(line: 1767, column: 27, scope: !2688, inlinedAt: !2734)
!2959 = !DILocation(line: 1769, column: 26, scope: !2688, inlinedAt: !2734)
!2960 = !DILocation(line: 1769, column: 27, scope: !2688, inlinedAt: !2734)
!2961 = !DILocation(line: 1770, column: 12, scope: !2688, inlinedAt: !2734)
!2962 = !DILocation(line: 1770, column: 18, scope: !2688, inlinedAt: !2734)
!2963 = !DILocation(line: 1771, column: 44, scope: !2688, inlinedAt: !2734)
!2964 = !DILocation(line: 1771, column: 12, scope: !2688, inlinedAt: !2734)
!2965 = !DILocation(line: 1771, column: 19, scope: !2688, inlinedAt: !2734)
!2966 = !DILocation(line: 1772, column: 27, scope: !2688, inlinedAt: !2734)
!2967 = !DILocation(line: 1772, column: 43, scope: !2688, inlinedAt: !2734)
!2968 = !DILocation(line: 1772, column: 18, scope: !2688, inlinedAt: !2734)
!2969 = !DILocation(line: 1773, column: 5, scope: !2688, inlinedAt: !2734)
!2970 = !DILocation(line: 1772, column: 50, scope: !2688, inlinedAt: !2734)
!2971 = !DILocation(line: 1772, column: 12, scope: !2688, inlinedAt: !2734)
!2972 = !DILocation(line: 1772, column: 17, scope: !2688, inlinedAt: !2734)
!2973 = !DILocation(line: 1774, column: 48, scope: !2688, inlinedAt: !2734)
!2974 = !DILocation(line: 1774, column: 24, scope: !2688, inlinedAt: !2734)
!2975 = !DILocation(line: 1774, column: 12, scope: !2688, inlinedAt: !2734)
!2976 = !DILocation(line: 1774, column: 18, scope: !2688, inlinedAt: !2734)
!2977 = !DILocation(line: 1775, column: 12, scope: !2688, inlinedAt: !2734)
!2978 = !DILocation(line: 1775, column: 23, scope: !2688, inlinedAt: !2734)
!2979 = !DILocation(line: 1776, column: 12, scope: !2688, inlinedAt: !2734)
!2980 = !DILocation(line: 1776, column: 21, scope: !2688, inlinedAt: !2734)
!2981 = !DILocation(line: 1777, column: 31, scope: !2688, inlinedAt: !2734)
!2982 = !DILocation(line: 1777, column: 19, scope: !2688, inlinedAt: !2734)
!2983 = !DILocation(line: 1777, column: 21, scope: !2688, inlinedAt: !2734)
!2984 = !DILocation(line: 1778, column: 31, scope: !2688, inlinedAt: !2734)
!2985 = !DILocation(line: 1778, column: 37, scope: !2688, inlinedAt: !2734)
!2986 = !DILocation(line: 1778, column: 19, scope: !2688, inlinedAt: !2734)
!2987 = !DILocation(line: 1778, column: 21, scope: !2688, inlinedAt: !2734)
!2988 = !DILocation(line: 1779, column: 19, scope: !2688, inlinedAt: !2734)
!2989 = !DILocation(line: 1779, column: 21, scope: !2688, inlinedAt: !2734)
!2990 = !DILocation(line: 1780, column: 12, scope: !2688, inlinedAt: !2734)
!2991 = !DILocation(line: 1780, column: 30, scope: !2688, inlinedAt: !2734)
!2992 = !DILocation(line: 1781, column: 12, scope: !2688, inlinedAt: !2734)
!2993 = !DILocation(line: 1781, column: 31, scope: !2688, inlinedAt: !2734)
!2994 = !DILocation(line: 1782, column: 18, scope: !2995, inlinedAt: !2734)
!2995 = distinct !DILexicalBlock(scope: !2688, file: !1116, line: 1782, column: 7)
!2996 = !DILocation(line: 1782, column: 25, scope: !2995, inlinedAt: !2734)
!2997 = !DILocation(line: 1782, column: 7, scope: !2688, inlinedAt: !2734)
!2998 = !DILocation(line: 1784, column: 35, scope: !2999, inlinedAt: !2734)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !1116, line: 1783, column: 5)
!3000 = !DILocation(line: 1784, column: 22, scope: !2999, inlinedAt: !2734)
!3001 = !DILocation(line: 1785, column: 7, scope: !2999, inlinedAt: !2734)
!3002 = !DILocation(line: 1787, column: 18, scope: !2720, inlinedAt: !2734)
!3003 = !DILocation(line: 1787, column: 23, scope: !2720, inlinedAt: !2734)
!3004 = !{!1243, !1223, i64 106}
!3005 = !DILocation(line: 1787, column: 31, scope: !2720, inlinedAt: !2734)
!3006 = !DILocation(line: 1787, column: 7, scope: !2688, inlinedAt: !2734)
!3007 = !DILocation(line: 1795, column: 7, scope: !2719, inlinedAt: !2734)
!3008 = !DILocation(line: 1796, column: 9, scope: !2719, inlinedAt: !2734)
!3009 = !DILocation(line: 1804, column: 18, scope: !3010, inlinedAt: !2734)
!3010 = distinct !DILexicalBlock(scope: !2719, file: !1116, line: 1804, column: 11)
!3011 = !{!1220, !1132, i64 32}
!3012 = !DILocation(line: 1804, column: 24, scope: !3010, inlinedAt: !2734)
!3013 = !DILocation(line: 1804, column: 11, scope: !2719, inlinedAt: !2734)
!3014 = !DILocation(line: 1805, column: 16, scope: !3010, inlinedAt: !2734)
!3015 = !DILocation(line: 1805, column: 9, scope: !3010, inlinedAt: !2734)
!3016 = !DILocation(line: 1806, column: 11, scope: !3017, inlinedAt: !2734)
!3017 = distinct !DILexicalBlock(scope: !2719, file: !1116, line: 1806, column: 11)
!3018 = !DILocation(line: 1806, column: 27, scope: !3017, inlinedAt: !2734)
!3019 = !DILocation(line: 1806, column: 33, scope: !3017, inlinedAt: !2734)
!3020 = !DILocation(line: 1806, column: 11, scope: !2719, inlinedAt: !2734)
!3021 = !DILocation(line: 1807, column: 16, scope: !3017, inlinedAt: !2734)
!3022 = !DILocation(line: 1810, column: 47, scope: !2719, inlinedAt: !2734)
!3023 = !DILocation(line: 1807, column: 9, scope: !3017, inlinedAt: !2734)
!3024 = !DILocation(line: 1808, column: 29, scope: !2719, inlinedAt: !2734)
!3025 = !DILocation(line: 0, scope: !2719, inlinedAt: !2734)
!3026 = !DILocation(line: 1810, column: 21, scope: !2719, inlinedAt: !2734)
!3027 = !DILocation(line: 1811, column: 31, scope: !2729, inlinedAt: !2734)
!3028 = !DILocation(line: 1811, column: 47, scope: !2729, inlinedAt: !2734)
!3029 = !{!1220, !1221, i64 48}
!3030 = !DILocation(line: 1811, column: 19, scope: !2729, inlinedAt: !2734)
!3031 = !DILocation(line: 1811, column: 7, scope: !2730, inlinedAt: !2734)
!3032 = !DILocation(line: 1811, column: 54, scope: !2729, inlinedAt: !2734)
!3033 = distinct !{!3033, !3031, !3034, !1269, !1270}
!3034 = !DILocation(line: 1837, column: 7, scope: !2730, inlinedAt: !2734)
!3035 = !DILocation(line: 1819, column: 73, scope: !2728, inlinedAt: !2734)
!3036 = !DILocation(line: 1819, column: 11, scope: !2728, inlinedAt: !2734)
!3037 = !DILocation(line: 0, scope: !2728, inlinedAt: !2734)
!3038 = !DILocation(line: 1821, column: 15, scope: !3039, inlinedAt: !2734)
!3039 = distinct !DILexicalBlock(scope: !2728, file: !1116, line: 1821, column: 13)
!3040 = !DILocation(line: 1821, column: 13, scope: !2728, inlinedAt: !2734)
!3041 = !DILocation(line: 1823, column: 33, scope: !3042, inlinedAt: !2734)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !1116, line: 1823, column: 9)
!3043 = distinct !DILexicalBlock(scope: !2728, file: !1116, line: 1823, column: 9)
!3044 = !DILocation(line: 1823, column: 49, scope: !3042, inlinedAt: !2734)
!3045 = !DILocation(line: 1823, column: 21, scope: !3042, inlinedAt: !2734)
!3046 = !DILocation(line: 1823, column: 9, scope: !3043, inlinedAt: !2734)
!3047 = !DILocalVariable(name: "draw_info", arg: 1, scope: !3048, file: !3049, line: 29, type: !1161)
!3048 = distinct !DISubprogram(name: "GetFillColor", scope: !3049, file: !3049, line: 29, type: !3050, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3049 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a80397ab3836f40b9c96191ff268033")
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!613, !1161, !3052, !3052, !690}
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!3053 = !{!3047, !3054, !3055, !3056, !3057, !3058}
!3054 = !DILocalVariable(name: "x", arg: 2, scope: !3048, file: !3049, line: 30, type: !3052)
!3055 = !DILocalVariable(name: "y", arg: 3, scope: !3048, file: !3049, line: 30, type: !3052)
!3056 = !DILocalVariable(name: "pixel", arg: 4, scope: !3048, file: !3049, line: 30, type: !690)
!3057 = !DILocalVariable(name: "pattern", scope: !3048, file: !3049, line: 33, type: !673)
!3058 = !DILocalVariable(name: "status", scope: !3048, file: !3049, line: 36, type: !613)
!3059 = !DILocation(line: 0, scope: !3048, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1825, column: 18, scope: !3061, inlinedAt: !2734)
!3061 = distinct !DILexicalBlock(scope: !3042, file: !1116, line: 1824, column: 9)
!3062 = !DILocation(line: 38, column: 22, scope: !3048, inlinedAt: !3060)
!3063 = !{!1243, !1131, i64 256}
!3064 = !DILocation(line: 39, column: 15, scope: !3065, inlinedAt: !3060)
!3065 = distinct !DILexicalBlock(scope: !3048, file: !3049, line: 39, column: 7)
!3066 = !DILocation(line: 39, column: 7, scope: !3048, inlinedAt: !3060)
!3067 = !DILocation(line: 41, column: 25, scope: !3068, inlinedAt: !3060)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !3049, line: 40, column: 5)
!3069 = !DILocation(line: 42, column: 7, scope: !3068, inlinedAt: !3060)
!3070 = !DILocation(line: 45, column: 28, scope: !3048, inlinedAt: !3060)
!3071 = !{!1220, !1221, i64 13152}
!3072 = !DILocation(line: 45, column: 6, scope: !3048, inlinedAt: !3060)
!3073 = !DILocation(line: 45, column: 53, scope: !3048, inlinedAt: !3060)
!3074 = !{!1220, !1221, i64 13160}
!3075 = !DILocation(line: 45, column: 31, scope: !3048, inlinedAt: !3060)
!3076 = !DILocation(line: 46, column: 15, scope: !3048, inlinedAt: !3060)
!3077 = !DILocation(line: 44, column: 10, scope: !3048, inlinedAt: !3060)
!3078 = !DILocation(line: 47, column: 16, scope: !3079, inlinedAt: !3060)
!3079 = distinct !DILexicalBlock(scope: !3048, file: !3049, line: 47, column: 7)
!3080 = !DILocation(line: 47, column: 22, scope: !3079, inlinedAt: !3060)
!3081 = !DILocation(line: 47, column: 7, scope: !3048, inlinedAt: !3060)
!3082 = !DILocation(line: 48, column: 19, scope: !3079, inlinedAt: !3060)
!3083 = !{!1222, !1223, i64 6}
!3084 = !DILocation(line: 48, column: 5, scope: !3079, inlinedAt: !3060)
!3085 = !DILocation(line: 1826, column: 11, scope: !3061, inlinedAt: !2734)
!3086 = !DILocalVariable(name: "value", arg: 1, scope: !3087, file: !149, line: 87, type: !3090)
!3087 = distinct !DISubprogram(name: "ClampToQuantum", scope: !149, file: !149, line: 87, type: !3088, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!644, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!3091 = !{!3086}
!3092 = !DILocation(line: 0, scope: !3087, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1826, column: 11, scope: !3061, inlinedAt: !2734)
!3094 = !DILocation(line: 92, column: 13, scope: !3095, inlinedAt: !3093)
!3095 = distinct !DILexicalBlock(scope: !3087, file: !149, line: 92, column: 7)
!3096 = !DILocation(line: 92, column: 7, scope: !3087, inlinedAt: !3093)
!3097 = !DILocation(line: 94, column: 13, scope: !3098, inlinedAt: !3093)
!3098 = distinct !DILexicalBlock(scope: !3087, file: !149, line: 94, column: 7)
!3099 = !DILocation(line: 94, column: 7, scope: !3087, inlinedAt: !3093)
!3100 = !DILocation(line: 96, column: 26, scope: !3087, inlinedAt: !3093)
!3101 = !DILocation(line: 96, column: 10, scope: !3087, inlinedAt: !3093)
!3102 = !DILocation(line: 96, column: 3, scope: !3087, inlinedAt: !3093)
!3103 = !DILocation(line: 1829, column: 11, scope: !3061, inlinedAt: !2734)
!3104 = !{!1222, !1223, i64 4}
!3105 = !DILocation(line: 1830, column: 11, scope: !3061, inlinedAt: !2734)
!3106 = !{!1222, !1223, i64 2}
!3107 = !DILocation(line: 1831, column: 11, scope: !3061, inlinedAt: !2734)
!3108 = !{!1222, !1223, i64 0}
!3109 = !DILocation(line: 1832, column: 12, scope: !3061, inlinedAt: !2734)
!3110 = !DILocation(line: 1823, column: 59, scope: !3042, inlinedAt: !2734)
!3111 = distinct !{!3111, !3046, !3112, !1269, !1270}
!3112 = !DILocation(line: 1833, column: 9, scope: !3043, inlinedAt: !2734)
!3113 = !DILocation(line: 1834, column: 14, scope: !2728, inlinedAt: !2734)
!3114 = !DILocation(line: 1835, column: 18, scope: !3115, inlinedAt: !2734)
!3115 = distinct !DILexicalBlock(scope: !2728, file: !1116, line: 1835, column: 13)
!3116 = !DILocation(line: 0, scope: !2729, inlinedAt: !2734)
!3117 = !DILocation(line: 1838, column: 21, scope: !2719, inlinedAt: !2734)
!3118 = !DILocation(line: 1839, column: 51, scope: !2719, inlinedAt: !2734)
!3119 = !DILocation(line: 1840, column: 32, scope: !2719, inlinedAt: !2734)
!3120 = !DILocation(line: 1840, column: 33, scope: !2719, inlinedAt: !2734)
!3121 = !DILocation(line: 1840, column: 19, scope: !2719, inlinedAt: !2734)
!3122 = !DILocation(line: 1840, column: 9, scope: !2719, inlinedAt: !2734)
!3123 = !DILocation(line: 1840, column: 62, scope: !2719, inlinedAt: !2734)
!3124 = !DILocation(line: 1840, column: 74, scope: !2719, inlinedAt: !2734)
!3125 = !DILocation(line: 1841, column: 18, scope: !2719, inlinedAt: !2734)
!3126 = !DILocation(line: 1840, column: 80, scope: !2719, inlinedAt: !2734)
!3127 = !DILocation(line: 1840, column: 63, scope: !2719, inlinedAt: !2734)
!3128 = !DILocation(line: 1841, column: 26, scope: !2719, inlinedAt: !2734)
!3129 = !DILocation(line: 1840, column: 49, scope: !2719, inlinedAt: !2734)
!3130 = !DILocation(line: 1840, column: 39, scope: !2719, inlinedAt: !2734)
!3131 = !DILocation(line: 1839, column: 14, scope: !2719, inlinedAt: !2734)
!3132 = !DILocation(line: 1842, column: 5, scope: !2720, inlinedAt: !2734)
!3133 = !DILocation(line: 1842, column: 5, scope: !2719, inlinedAt: !2734)
!3134 = !DILocation(line: 1843, column: 31, scope: !2688, inlinedAt: !2734)
!3135 = !DILocation(line: 1843, column: 18, scope: !2688, inlinedAt: !2734)
!3136 = !DILocation(line: 1844, column: 3, scope: !2688, inlinedAt: !2734)
!3137 = !DILocation(line: 1845, column: 1, scope: !2688, inlinedAt: !2734)
!3138 = !DILocation(line: 1541, column: 3, scope: !2672)
!3139 = !DISubprogram(name: "IsPathAccessible", scope: !3140, file: !3140, line: 53, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3140 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!613, !779}
!3143 = !DISubprogram(name: "GetTypeInfo", scope: !407, file: !407, line: 95, type: !3144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!1079, !779, !1849}
!3146 = !DISubprogram(name: "ThrowMagickException", scope: !255, file: !255, line: 156, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!613, !1849, !779, !779, !876, !3149, !779, !779, null}
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!3150 = !DISubprogram(name: "GetTypeInfoByFamily", scope: !407, file: !407, line: 96, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!1079, !779, !3153, !3154, !876, !1849}
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!3154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!3155 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !3156, file: !3156, line: 41, type: !3157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3156 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!813, !599}
!3159 = !DISubprogram(name: "fdopen", scope: !662, file: !662, line: 279, type: !3160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!878, !813, !779}
!3162 = !DISubprogram(name: "GetExceptionMessage", scope: !255, file: !255, line: 137, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!599, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!3166 = !DISubprogram(name: "FormatLocaleFile", scope: !1930, file: !1930, line: 67, type: !3167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!661, !878, !1934, null}
!3169 = !DISubprogram(name: "fclose", scope: !662, file: !662, line: 213, type: !3170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!813, !878}
!3172 = !DISubprogram(name: "AcquireImageInfo", scope: !79, file: !79, line: 520, type: !3173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!604}
!3175 = !DISubprogram(name: "ReadImage", scope: !3176, file: !3176, line: 42, type: !3177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3176 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!673, !1835, !1849}
!3179 = !DISubprogram(name: "CatchException", scope: !255, file: !255, line: 164, type: !3180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !1849}
!3182 = !DISubprogram(name: "DestroyImageInfo", scope: !79, file: !79, line: 522, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!604, !604}
!3185 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !3156, file: !3156, line: 47, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3186 = !DISubprogram(name: "TransformImage", scope: !3187, file: !3187, line: 43, type: !3188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3187 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38be0c2b8a82bf966e7f55606c3e2192")
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!613, !3190, !779, !779}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!3191 = !DISubprogram(name: "GetImageBoundingBox", scope: !3192, file: !3192, line: 40, type: !3193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3192 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!720, !872, !1849}
!3195 = !DISubprogram(name: "ExpandAffine", scope: !3196, file: !3196, line: 29, type: !3197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3196 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1c4d294250c916114ca6e5f5b31857f")
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!637, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!3201 = !DISubprogram(name: "DestroyImage", scope: !79, file: !79, line: 510, type: !3202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!673, !673}
!3204 = !DISubprogram(name: "SetImageAlphaChannel", scope: !3205, file: !3205, line: 35, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3205 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!613, !673, !3208}
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !79, line: 45, baseType: !577)
!3210 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !529, file: !529, line: 53, type: !3211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!2724, !872, !1849}
!3213 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !529, file: !529, line: 99, type: !3214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!690, !2724, !3052, !3052, !876, !876, !1849}
!3216 = !DISubprogram(name: "GetPixelIntensity", scope: !328, file: !328, line: 181, type: !3217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!999, !872, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!3222 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !529, file: !529, line: 89, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!613, !2724, !1849}
!3225 = !DISubprogram(name: "DestroyCacheView", scope: !529, file: !529, line: 57, type: !3226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!2724, !2724}
!3228 = !DISubprogram(name: "CompositeImage", scope: !170, file: !170, line: 110, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!613, !673, !3231, !872, !3052, !3052}
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!3232 = !DISubprogram(name: "GetOneVirtualMethodPixel", scope: !3233, file: !3233, line: 60, type: !3234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1127)
!3233 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!613, !872, !3236, !3052, !3052, !690, !1849}
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
