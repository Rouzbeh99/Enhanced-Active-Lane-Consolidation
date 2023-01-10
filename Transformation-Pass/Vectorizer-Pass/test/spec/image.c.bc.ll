; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/image.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }

@BackgroundColor = dso_local constant [8 x i8] c"#ffffff\00", align 1, !dbg !0
@BorderColor = dso_local constant [8 x i8] c"#dfdfdf\00", align 1, !dbg !1073
@DefaultTileFrame = dso_local local_unnamed_addr constant [10 x i8] c"15x15+3+3\00", align 1, !dbg !1079
@DefaultTileGeometry = dso_local local_unnamed_addr constant [13 x i8] c"120x120+4+3>\00", align 1, !dbg !1084
@DefaultTileLabel = dso_local local_unnamed_addr constant [9 x i8] c"%f\0A%G\0A%b\00", align 1, !dbg !1089
@ForegroundColor = dso_local local_unnamed_addr constant [5 x i8] c"#000\00", align 1, !dbg !1094
@LoadImageTag = dso_local local_unnamed_addr constant [11 x i8] c"Load/Image\00", align 1, !dbg !1099
@LoadImagesTag = dso_local local_unnamed_addr constant [12 x i8] c"Load/Images\00", align 1, !dbg !1104
@MatteColor = dso_local constant [8 x i8] c"#bdbdbd\00", align 1, !dbg !1109
@PSDensityGeometry = dso_local local_unnamed_addr constant [10 x i8] c"72.0x72.0\00", align 1, !dbg !1111
@PSPageGeometry = dso_local local_unnamed_addr constant [8 x i8] c"612x792\00", align 1, !dbg !1113
@SaveImageTag = dso_local local_unnamed_addr constant [11 x i8] c"Save/Image\00", align 1, !dbg !1115
@SaveImagesTag = dso_local local_unnamed_addr constant [12 x i8] c"Save/Images\00", align 1, !dbg !1117
@TransparentColor = dso_local constant [10 x i8] c"#00000000\00", align 1, !dbg !1119
@DefaultResolution = dso_local local_unnamed_addr constant double 7.200000e+01, align 8, !dbg !1121
@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/image.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dispose\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Append/Image\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"8BIM:1999,2998:%s\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"NoClipPathDefined\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"8BIM:1999,2998:%s\0APS\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"filename:\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@SetImageInfo.format_type_formats = internal unnamed_addr constant [18 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null], align 16, !dbg !1124
@.str.18 = private unnamed_addr constant [10 x i8] c"AUTOTRACE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"BROWSE\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"DCRAW\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"EPHEMERAL\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"LAUNCH\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"MPEG:DECODE\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MPEG:ENCODE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"PS:ALPHA\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"PS:CMYK\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"PS:COLOR\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"PS:GRAY\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"PS:MONO\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"WIN\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Smush/Image\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"date:create\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"date:modify\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"png:exclude-chunk\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"EXIF,iCCP,iTXt,sRGB,tEXt,zCCP,zTXt,date\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"black-point-compensation\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"blue-primary\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"bordercolor\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"fuzz\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"green-primary\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"interlace\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"mattecolor\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"orient\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"red-primary\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"tile-offset\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"transparent-color\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"white-point\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireImage(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1170 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %geometry = alloca %struct._RectangleInfo, align 8
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %geometry_info172 = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1174, metadata !DIExpression()), !dbg !1202
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2) #17, !dbg !1203
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 13240) #18, !dbg !1204
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1176, metadata !DIExpression()), !dbg !1202
  %cmp = icmp eq ptr %call1, null, !dbg !1205
  br i1 %cmp, label %if.then, label %if.end, !dbg !1206

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #17, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1181, metadata !DIExpression()), !dbg !1207
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1207
  %call2 = tail call ptr @__errno_location() #19, !dbg !1207
  %0 = load i32, ptr %call2, align 4, !dbg !1207, !tbaa !1208
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0) #17, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1178, metadata !DIExpression()), !dbg !1212
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call3) #17, !dbg !1207
  %call5 = call ptr @DestroyString(ptr noundef %call3) #17, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1178, metadata !DIExpression()), !dbg !1212
  call void @CatchException(ptr noundef nonnull %exception) #17, !dbg !1207
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1207
  call void @MagickCoreTerminus() #17, !dbg !1207
  call void @_exit(i32 noundef 1) #20, !dbg !1207
  unreachable, !dbg !1207

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 13240) #17, !dbg !1213
  %magick = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 55, !dbg !1214
  %call8 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull @.str.5, i64 noundef 4096) #17, !dbg !1215
  store i32 1, ptr %call1, align 8, !dbg !1216, !tbaa !1217
  %depth = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 9, !dbg !1233
  store i64 16, ptr %depth, align 8, !dbg !1234, !tbaa !1235
  %colorspace = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 1, !dbg !1236
  store i32 13, ptr %colorspace, align 4, !dbg !1237, !tbaa !1238
  %rendering_intent = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 17, !dbg !1239
  store i32 2, ptr %rendering_intent, align 8, !dbg !1240, !tbaa !1241
  %gamma = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 15, !dbg !1242
  store double 0x3FDD1745C0000000, ptr %gamma, align 8, !dbg !1243, !tbaa !1244
  %chromaticity = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, !dbg !1245
  store double 0x3FE47AE140000000, ptr %chromaticity, align 8, !dbg !1246, !tbaa !1247
  %y = getelementptr inbounds %struct._PrimaryInfo, ptr %chromaticity, i64 0, i32 1, !dbg !1248
  store double 0x3FD51EB860000000, ptr %y, align 8, !dbg !1249, !tbaa !1250
  %z = getelementptr inbounds %struct._PrimaryInfo, ptr %chromaticity, i64 0, i32 2, !dbg !1251
  store double 0x3F9EB851E0000000, ptr %z, align 8, !dbg !1252, !tbaa !1253
  %green_primary = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 1, !dbg !1254
  store double 0x3FD3333340000000, ptr %green_primary, align 8, !dbg !1255, !tbaa !1256
  %y17 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 1, i32 1, !dbg !1257
  store double 0x3FE3333340000000, ptr %y17, align 8, !dbg !1258, !tbaa !1259
  %z20 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 1, i32 2, !dbg !1260
  store double 0x3FB99999A0000000, ptr %z20, align 8, !dbg !1261, !tbaa !1262
  %blue_primary = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 2, !dbg !1263
  store double 0x3FC3333340000000, ptr %blue_primary, align 8, !dbg !1264, !tbaa !1265
  %y25 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 2, i32 1, !dbg !1266
  store double 0x3FAEB851E0000000, ptr %y25, align 8, !dbg !1267, !tbaa !1268
  %z28 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 2, i32 2, !dbg !1269
  store double 0x3FE947AE20000000, ptr %z28, align 8, !dbg !1270, !tbaa !1271
  %white_point = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 3, !dbg !1272
  store double 0x3FD40346E0000000, ptr %white_point, align 8, !dbg !1273, !tbaa !1274
  %y33 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 3, i32 1, !dbg !1275
  store double 0x3FD50E5600000000, ptr %y33, align 8, !dbg !1276, !tbaa !1277
  %z36 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 16, i32 3, i32 2, !dbg !1278
  store double 0x3FD6EE6320000000, ptr %z36, align 8, !dbg !1279, !tbaa !1280
  %interlace = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 33, !dbg !1281
  store i32 1, ptr %interlace, align 4, !dbg !1282, !tbaa !1283
  %ticks_per_second = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 41, !dbg !1284
  store i64 100, ptr %ticks_per_second, align 8, !dbg !1285, !tbaa !1286
  %compose = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 36, !dbg !1287
  store i32 40, ptr %compose, align 8, !dbg !1288, !tbaa !1289
  %blur = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 30, !dbg !1290
  store double 1.000000e+00, ptr %blur, align 8, !dbg !1291, !tbaa !1292
  %exception37 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !1293
  tail call void @GetExceptionInfo(ptr noundef nonnull %exception37) #17, !dbg !1294
  %background_color = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 12, !dbg !1295
  %call39 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %background_color, ptr noundef nonnull %exception37) #17, !dbg !1296
  %border_color = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 13, !dbg !1297
  %call41 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %border_color, ptr noundef nonnull %exception37) #17, !dbg !1298
  %matte_color = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 14, !dbg !1299
  %call43 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %matte_color, ptr noundef nonnull %exception37) #17, !dbg !1300
  %transparent_color = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 72, !dbg !1301
  %call45 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %transparent_color, ptr noundef nonnull %exception37) #17, !dbg !1302
  %timer = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 46, !dbg !1303
  tail call void @GetTimerInfo(ptr noundef nonnull %timer) #17, !dbg !1304
  %ping = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 80, !dbg !1305
  store i32 0, ptr %ping, align 8, !dbg !1306, !tbaa !1307
  %call46 = tail call ptr @AcquirePixelCache(i64 noundef 0) #17, !dbg !1308
  %cache = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 49, !dbg !1309
  store ptr %call46, ptr %cache, align 8, !dbg !1310, !tbaa !1311
  %call47 = tail call ptr @CloneBlobInfo(ptr noundef null) #17, !dbg !1312
  %blob = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 52, !dbg !1313
  store ptr %call47, ptr %blob, align 8, !dbg !1314, !tbaa !1315
  %call48 = tail call i64 @time(ptr noundef null) #17, !dbg !1316
  %timestamp = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 82, !dbg !1317
  store i64 %call48, ptr %timestamp, align 8, !dbg !1318, !tbaa !1319
  %call49 = tail call i32 @IsEventLogging() #17, !dbg !1320
  %debug = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 59, !dbg !1321
  store i32 %call49, ptr %debug, align 8, !dbg !1322, !tbaa !1323
  %reference_count = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 60, !dbg !1324
  store volatile i64 1, ptr %reference_count, align 8, !dbg !1325, !tbaa !1326
  %call50 = tail call ptr @AllocateSemaphoreInfo() #17, !dbg !1327
  %semaphore = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 61, !dbg !1328
  store ptr %call50, ptr %semaphore, align 8, !dbg !1329, !tbaa !1330
  %signature = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 66, !dbg !1331
  store i64 2880220587, ptr %signature, align 8, !dbg !1332, !tbaa !1333
  %cmp51 = icmp eq ptr %image_info, null, !dbg !1334
  br i1 %cmp51, label %cleanup, label %if.end53, !dbg !1336

if.end53:                                         ; preds = %if.end
  %file = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !1337
  %1 = load ptr, ptr %file, align 8, !dbg !1337, !tbaa !1338
  %cmp54.not = icmp ne ptr %1, null, !dbg !1340
  %cond = zext i1 %cmp54.not to i32, !dbg !1341
  tail call void @SetBlobExempt(ptr noundef nonnull %call1, i32 noundef %cond) #17, !dbg !1342
  %filename = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 53, !dbg !1343
  %filename56 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1344
  %call58 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename56, i64 noundef 4096) #17, !dbg !1345
  %magick_filename = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 54, !dbg !1346
  %call62 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick_filename, ptr noundef nonnull %filename56, i64 noundef 4096) #17, !dbg !1347
  %magick65 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !1348
  %call67 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick65, i64 noundef 4096) #17, !dbg !1349
  %size = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 6, !dbg !1350
  %2 = load ptr, ptr %size, align 8, !dbg !1350, !tbaa !1352
  %cmp68.not = icmp eq ptr %2, null, !dbg !1353
  br i1 %cmp68.not, label %if.end80, label %if.then69, !dbg !1354

if.then69:                                        ; preds = %if.end53
  %extract_info = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, !dbg !1355
  %call71 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %2, ptr noundef nonnull %extract_info) #17, !dbg !1357
  %3 = load i64, ptr %extract_info, align 8, !dbg !1358, !tbaa !1359
  %columns = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !1360
  store i64 %3, ptr %columns, align 8, !dbg !1361, !tbaa !1362
  %height = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, i32 1, !dbg !1363
  %4 = load i64, ptr %height, align 8, !dbg !1363, !tbaa !1364
  %rows = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !1365
  store i64 %4, ptr %rows, align 8, !dbg !1366, !tbaa !1367
  %x75 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, i32 2, !dbg !1368
  %5 = load i64, ptr %x75, align 8, !dbg !1368, !tbaa !1369
  %offset = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 23, !dbg !1370
  store i64 %5, ptr %offset, align 8, !dbg !1371, !tbaa !1372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x75, i8 0, i64 16, i1 false), !dbg !1373
  br label %if.end80, !dbg !1374

if.end80:                                         ; preds = %if.then69, %if.end53
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 7, !dbg !1375
  %6 = load ptr, ptr %extract, align 8, !dbg !1375, !tbaa !1376
  %cmp81.not = icmp eq ptr %6, null, !dbg !1377
  br i1 %cmp81.not, label %if.end114, label %if.then82, !dbg !1378

if.then82:                                        ; preds = %if.end80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #17, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !1182, metadata !DIExpression()), !dbg !1380
  %call84 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %6, ptr noundef nonnull %geometry) #17, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call84, metadata !1177, metadata !DIExpression()), !dbg !1202
  %7 = and i32 %call84, 3, !dbg !1382
  %8 = icmp eq i32 %7, 0, !dbg !1382
  br i1 %8, label %if.end113, label %if.then88, !dbg !1382

if.then88:                                        ; preds = %if.then82
  %extract_info89 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, !dbg !1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %extract_info89, ptr noundef nonnull align 8 dereferenceable(32) %geometry, i64 32, i1 false), !dbg !1386, !tbaa.struct !1387
  %9 = load i64, ptr %extract_info89, align 8, !dbg !1389, !tbaa !1359
  %columns92 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !1389
  %10 = load i64, ptr %columns92, align 8, !dbg !1389, !tbaa !1362
  store i64 %10, ptr %extract_info89, align 8, !dbg !1389, !tbaa !1359
  store i64 %9, ptr %columns92, align 8, !dbg !1389, !tbaa !1362
  %height102 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, i32 1, !dbg !1390
  %11 = load i64, ptr %height102, align 8, !dbg !1390, !tbaa !1364
  %rows103 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !1390
  %12 = load i64, ptr %rows103, align 8, !dbg !1390, !tbaa !1367
  store i64 %12, ptr %height102, align 8, !dbg !1390, !tbaa !1364
  store i64 %11, ptr %rows103, align 8, !dbg !1390, !tbaa !1367
  br label %if.end113, !dbg !1391

if.end113:                                        ; preds = %if.then82, %if.then88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #17, !dbg !1392
  br label %if.end114, !dbg !1393

if.end114:                                        ; preds = %if.end113, %if.end80
  %13 = load i32, ptr %image_info, align 8, !dbg !1394, !tbaa !1395
  %compression115 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 2, !dbg !1396
  store i32 %13, ptr %compression115, align 8, !dbg !1397, !tbaa !1398
  %quality = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 16, !dbg !1399
  %14 = load i64, ptr %quality, align 8, !dbg !1399, !tbaa !1400
  %quality116 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 3, !dbg !1401
  store i64 %14, ptr %quality116, align 8, !dbg !1402, !tbaa !1403
  %endian = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !1404
  %15 = load i32, ptr %endian, align 4, !dbg !1404, !tbaa !1405
  %endian117 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 34, !dbg !1406
  store i32 %15, ptr %endian117, align 8, !dbg !1407, !tbaa !1408
  %interlace118 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 13, !dbg !1409
  %16 = load i32, ptr %interlace118, align 8, !dbg !1409, !tbaa !1410
  store i32 %16, ptr %interlace, align 4, !dbg !1411, !tbaa !1283
  %units = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 15, !dbg !1412
  %17 = load i32, ptr %units, align 8, !dbg !1412, !tbaa !1413
  %units120 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 19, !dbg !1414
  store i32 %17, ptr %units120, align 8, !dbg !1415, !tbaa !1416
  %density = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 21, !dbg !1417
  %18 = load ptr, ptr %density, align 8, !dbg !1417, !tbaa !1418
  %cmp121.not = icmp eq ptr %18, null, !dbg !1419
  br i1 %cmp121.not, label %if.end131, label %if.then122, !dbg !1420

if.then122:                                       ; preds = %if.end114
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #17, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1185, metadata !DIExpression()), !dbg !1422
  %call124 = call i32 @ParseGeometry(ptr noundef nonnull %18, ptr noundef nonnull %geometry_info) #17, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %call124, metadata !1177, metadata !DIExpression()), !dbg !1202
  %19 = load double, ptr %geometry_info, align 8, !dbg !1424, !tbaa !1425
  %x_resolution = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 24, !dbg !1427
  store double %19, ptr %x_resolution, align 8, !dbg !1428, !tbaa !1429
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1430
  %20 = load double, ptr %sigma, align 8, !dbg !1430, !tbaa !1431
  %y_resolution = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 25, !dbg !1432
  %and125 = and i32 %call124, 8, !dbg !1433
  %cmp126 = icmp eq i32 %and125, 0, !dbg !1435
  %spec.store.select = select i1 %cmp126, double %19, double %20, !dbg !1436
  store double %spec.store.select, ptr %y_resolution, align 8, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #17, !dbg !1438
  br label %if.end131, !dbg !1439

if.end131:                                        ; preds = %if.then122, %if.end114
  %page = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 8, !dbg !1440
  %21 = load ptr, ptr %page, align 8, !dbg !1440, !tbaa !1441
  %cmp132.not = icmp eq ptr %21, null, !dbg !1442
  br i1 %cmp132.not, label %if.end142, label %if.then133, !dbg !1443

if.then133:                                       ; preds = %if.end131
  %page135 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !1444
  %extract_info136 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 27, !dbg !1445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page135, ptr noundef nonnull align 8 dereferenceable(32) %extract_info136, i64 32, i1 false), !dbg !1445, !tbaa.struct !1387
  %22 = load ptr, ptr %page, align 8, !dbg !1446, !tbaa !1441
  %call138 = call ptr @GetPageGeometry(ptr noundef %22) #17, !dbg !1447
  call void @llvm.dbg.value(metadata ptr %call138, metadata !1196, metadata !DIExpression()), !dbg !1448
  %call140 = call i32 @ParseAbsoluteGeometry(ptr noundef %call138, ptr noundef nonnull %page135) #17, !dbg !1449
  %call141 = call ptr @DestroyString(ptr noundef %call138) #17, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %call141, metadata !1196, metadata !DIExpression()), !dbg !1448
  br label %if.end142, !dbg !1451

if.end142:                                        ; preds = %if.then133, %if.end131
  %depth143 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 12, !dbg !1452
  %23 = load i64, ptr %depth143, align 8, !dbg !1452, !tbaa !1454
  %cmp144.not = icmp eq i64 %23, 0, !dbg !1455
  br i1 %cmp144.not, label %if.end148, label %if.then145, !dbg !1456

if.then145:                                       ; preds = %if.end142
  store i64 %23, ptr %depth, align 8, !dbg !1457, !tbaa !1235
  br label %if.end148, !dbg !1458

if.end148:                                        ; preds = %if.then145, %if.end142
  %dither = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 27, !dbg !1459
  %24 = load i32, ptr %dither, align 8, !dbg !1459, !tbaa !1460
  %dither149 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 78, !dbg !1461
  store i32 %24, ptr %dither149, align 4, !dbg !1462, !tbaa !1463
  %background_color151 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 24, !dbg !1464
  %25 = load i64, ptr %background_color151, align 8, !dbg !1464
  store i64 %25, ptr %background_color, align 8, !dbg !1464
  %border_color153 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 25, !dbg !1465
  %26 = load i64, ptr %border_color153, align 8, !dbg !1465
  store i64 %26, ptr %border_color, align 8, !dbg !1465
  %matte_color155 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 26, !dbg !1466
  %27 = load i64, ptr %matte_color155, align 8, !dbg !1466
  store i64 %27, ptr %matte_color, align 8, !dbg !1466
  %transparent_color157 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 59, !dbg !1467
  %28 = load i64, ptr %transparent_color157, align 4, !dbg !1467
  store i64 %28, ptr %transparent_color, align 8, !dbg !1467
  %ping158 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 34, !dbg !1468
  %29 = load i32, ptr %ping158, align 8, !dbg !1468, !tbaa !1469
  store i32 %29, ptr %ping, align 8, !dbg !1470, !tbaa !1307
  %progress_monitor = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 41, !dbg !1471
  %30 = load ptr, ptr %progress_monitor, align 8, !dbg !1471, !tbaa !1472
  %progress_monitor160 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 47, !dbg !1473
  store ptr %30, ptr %progress_monitor160, align 8, !dbg !1474, !tbaa !1475
  %client_data = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 42, !dbg !1476
  %31 = load ptr, ptr %client_data, align 8, !dbg !1476, !tbaa !1477
  %client_data161 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 48, !dbg !1478
  store ptr %31, ptr %client_data161, align 8, !dbg !1479, !tbaa !1480
  %cache162 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 43, !dbg !1481
  %32 = load ptr, ptr %cache162, align 8, !dbg !1481, !tbaa !1483
  %cmp163.not = icmp eq ptr %32, null, !dbg !1484
  br i1 %cmp163.not, label %if.end167, label %if.then164, !dbg !1485

if.then164:                                       ; preds = %if.end148
  %33 = load ptr, ptr %cache, align 8, !dbg !1486, !tbaa !1311
  call void @ClonePixelCacheMethods(ptr noundef %33, ptr noundef nonnull %32) #17, !dbg !1487
  br label %if.end167, !dbg !1487

if.end167:                                        ; preds = %if.then164, %if.end148
  %call168 = call i32 @SyncImageSettings(ptr noundef nonnull %image_info, ptr noundef nonnull %call1), !dbg !1488
  %call169 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.6) #17, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %call169, metadata !1175, metadata !DIExpression()), !dbg !1202
  %cmp170.not = icmp eq ptr %call169, null, !dbg !1490
  br i1 %cmp170.not, label %if.end218, label %if.then171, !dbg !1491

if.then171:                                       ; preds = %if.end167
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info172) #17, !dbg !1492
  call void @llvm.dbg.declare(metadata ptr %geometry_info172, metadata !1199, metadata !DIExpression()), !dbg !1493
  %call173 = call i32 @ParseGeometry(ptr noundef nonnull %call169, ptr noundef nonnull %geometry_info172) #17, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %call173, metadata !1177, metadata !DIExpression()), !dbg !1202
  %and174 = and i32 %call173, 32768, !dbg !1495
  %cmp175.not = icmp eq i32 %and174, 0, !dbg !1497
  br i1 %cmp175.not, label %if.else, label %if.then176, !dbg !1498

if.then176:                                       ; preds = %if.then171
  %delay = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 40, !dbg !1499
  %34 = load i64, ptr %delay, align 8, !dbg !1499, !tbaa !1502
  %35 = load double, ptr %geometry_info172, align 8, !dbg !1503, !tbaa !1425
  %add = fadd double %35, 5.000000e-01, !dbg !1504
  %36 = call double @llvm.floor.f64(double %add), !dbg !1505
  %conv = fptoui double %36 to i64, !dbg !1506
  %cmp178 = icmp ugt i64 %34, %conv, !dbg !1507
  br i1 %cmp178, label %if.then180, label %if.end208, !dbg !1508

if.then180:                                       ; preds = %if.then176
  store i64 %conv, ptr %delay, align 8, !dbg !1509, !tbaa !1502
  br label %if.end208, !dbg !1510

if.else:                                          ; preds = %if.then171
  %and186 = and i32 %call173, 16384, !dbg !1511
  %cmp187.not = icmp eq i32 %and186, 0, !dbg !1513
  br i1 %cmp187.not, label %if.else202, label %if.then189, !dbg !1514

if.then189:                                       ; preds = %if.else
  %delay190 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 40, !dbg !1515
  %37 = load i64, ptr %delay190, align 8, !dbg !1515, !tbaa !1502
  %38 = load double, ptr %geometry_info172, align 8, !dbg !1518, !tbaa !1425
  %add192 = fadd double %38, 5.000000e-01, !dbg !1519
  %39 = call double @llvm.floor.f64(double %add192), !dbg !1520
  %conv193 = fptoui double %39 to i64, !dbg !1521
  %cmp194 = icmp ult i64 %37, %conv193, !dbg !1522
  br i1 %cmp194, label %if.then196, label %if.end208, !dbg !1523

if.then196:                                       ; preds = %if.then189
  %sigma197 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info172, i64 0, i32 1, !dbg !1524
  %40 = load double, ptr %sigma197, align 8, !dbg !1524, !tbaa !1431
  %add198 = fadd double %40, 5.000000e-01, !dbg !1525
  %41 = call double @llvm.floor.f64(double %add198), !dbg !1526
  %conv199 = fptosi double %41 to i64, !dbg !1527
  store i64 %conv199, ptr %ticks_per_second, align 8, !dbg !1528, !tbaa !1286
  br label %if.end208, !dbg !1529

if.else202:                                       ; preds = %if.else
  %42 = load double, ptr %geometry_info172, align 8, !dbg !1530, !tbaa !1425
  %add204 = fadd double %42, 5.000000e-01, !dbg !1531
  %43 = call double @llvm.floor.f64(double %add204), !dbg !1532
  %conv205 = fptoui double %43 to i64, !dbg !1533
  %delay206 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 40, !dbg !1534
  store i64 %conv205, ptr %delay206, align 8, !dbg !1535, !tbaa !1502
  br label %if.end208

if.end208:                                        ; preds = %if.else202, %if.then196, %if.then189, %if.then176, %if.then180
  %and209 = and i32 %call173, 8, !dbg !1536
  %cmp210.not = icmp eq i32 %and209, 0, !dbg !1538
  br i1 %cmp210.not, label %if.end217, label %if.then212, !dbg !1539

if.then212:                                       ; preds = %if.end208
  %sigma213 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info172, i64 0, i32 1, !dbg !1540
  %44 = load double, ptr %sigma213, align 8, !dbg !1540, !tbaa !1431
  %add214 = fadd double %44, 5.000000e-01, !dbg !1541
  %45 = call double @llvm.floor.f64(double %add214), !dbg !1542
  %conv215 = fptosi double %45 to i64, !dbg !1543
  store i64 %conv215, ptr %ticks_per_second, align 8, !dbg !1544, !tbaa !1286
  br label %if.end217, !dbg !1545

if.end217:                                        ; preds = %if.then212, %if.end208
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info172) #17, !dbg !1546
  br label %if.end218, !dbg !1547

if.end218:                                        ; preds = %if.end217, %if.end167
  %call219 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.7) #17, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %call219, metadata !1175, metadata !DIExpression()), !dbg !1202
  %cmp220.not = icmp eq ptr %call219, null, !dbg !1549
  br i1 %cmp220.not, label %cleanup, label %if.then222, !dbg !1551

if.then222:                                       ; preds = %if.end218
  %call223 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %call219) #17, !dbg !1552
  %conv224 = trunc i64 %call223 to i32, !dbg !1553
  %dispose = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 37, !dbg !1554
  store i32 %conv224, ptr %dispose, align 4, !dbg !1555, !tbaa !1556
  br label %cleanup, !dbg !1557

cleanup:                                          ; preds = %if.end218, %if.then222, %if.end
  ret ptr %call1, !dbg !1558
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1559 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1565 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !1569 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1572 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1576 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1580 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1583 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1584 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1587 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !1590 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1593 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1596 i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1599 void @GetTimerInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1603 ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #3

declare !dbg !1608 ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1613 i64 @time(ptr noundef) local_unnamed_addr #7

declare !dbg !1617 i32 @IsEventLogging() local_unnamed_addr #3

declare !dbg !1620 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

declare !dbg !1623 void @SetBlobExempt(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1628 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1632 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1636 ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #3

declare !dbg !1639 void @ClonePixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImageSettings(ptr noundef %image_info, ptr noundef %image) local_unnamed_addr #0 !dbg !1643 {
entry:
  %q.i533 = alloca ptr, align 8
  %q.i = alloca ptr, align 8
  %property = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %geometry_info73 = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1645, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %image, metadata !1646, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %property) #17, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %property, metadata !1647, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #17, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1650, metadata !DIExpression()), !dbg !1666
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1667
  %0 = load i32, ptr %debug, align 8, !dbg !1667, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !1669
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1670

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1671
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3549, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !1672
  br label %if.end, !dbg !1673

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.44) #17, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp2.not = icmp eq ptr %call1, null, !dbg !1675
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1677

if.then3:                                         ; preds = %if.end
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1678
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1679
  %call4 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %call1, ptr noundef nonnull %background_color, ptr noundef nonnull %exception) #17, !dbg !1680
  br label %if.end5, !dbg !1681

if.end5:                                          ; preds = %if.then3, %if.end
  %call6 = tail call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.45) #17, !dbg !1682
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp7.not = icmp eq ptr %call6, null, !dbg !1683
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !1685

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1686, metadata !DIExpression()) #17, !dbg !1695
  call void @llvm.dbg.value(metadata double 6.553600e+04, metadata !1692, metadata !DIExpression()) #17, !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i) #17, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %q.i, metadata !1693, metadata !DIExpression(DW_OP_deref)) #17, !dbg !1695
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %call6, ptr noundef nonnull %q.i) #17, !dbg !1698
  call void @llvm.dbg.value(metadata double %call.i, metadata !1694, metadata !DIExpression()) #17, !dbg !1695
  %1 = load ptr, ptr %q.i, align 8, !dbg !1699, !tbaa !1701
  call void @llvm.dbg.value(metadata ptr %1, metadata !1693, metadata !DIExpression()) #17, !dbg !1695
  %2 = load i8, ptr %1, align 1, !dbg !1702, !tbaa !1703
  %cmp.i = icmp eq i8 %2, 37, !dbg !1704
  %mul.i = fmul double %call.i, 6.553600e+02
  %spec.select.i = select i1 %cmp.i, double %mul.i, double %call.i, !dbg !1705
  call void @llvm.dbg.value(metadata double %spec.select.i, metadata !1694, metadata !DIExpression()) #17, !dbg !1695
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i) #17, !dbg !1706
  %bias = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 29, !dbg !1707
  store double %spec.select.i, ptr %bias, align 8, !dbg !1708, !tbaa !1709
  br label %if.end10, !dbg !1710

if.end10:                                         ; preds = %if.then8, %if.end5
  %call11 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.46) #17, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp12.not = icmp eq ptr %call11, null, !dbg !1712
  br i1 %cmp12.not, label %if.end15, label %if.then13, !dbg !1714

if.then13:                                        ; preds = %if.end10
  %call14 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %call11) #17, !dbg !1715
  %conv = trunc i64 %call14 to i32, !dbg !1716
  %black_point_compensation = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 71, !dbg !1717
  store i32 %conv, ptr %black_point_compensation, align 4, !dbg !1718, !tbaa !1719
  br label %if.end15, !dbg !1720

if.end15:                                         ; preds = %if.then13, %if.end10
  %call16 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.47) #17, !dbg !1721
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp17.not = icmp eq ptr %call16, null, !dbg !1722
  br i1 %cmp17.not, label %if.end33, label %if.then19, !dbg !1724

if.then19:                                        ; preds = %if.end15
  %call20 = call i32 @ParseGeometry(ptr noundef nonnull %call16, ptr noundef nonnull %geometry_info) #17, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1651, metadata !DIExpression()), !dbg !1662
  %3 = load double, ptr %geometry_info, align 8, !dbg !1727, !tbaa !1425
  %blue_primary = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 2, !dbg !1728
  store double %3, ptr %blue_primary, align 8, !dbg !1729, !tbaa !1265
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1730
  %4 = load double, ptr %sigma, align 8, !dbg !1730, !tbaa !1431
  %y = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 2, i32 1, !dbg !1731
  %and = and i32 %call20, 8, !dbg !1732
  %cmp23 = icmp eq i32 %and, 0, !dbg !1734
  %spec.store.select = select i1 %cmp23, double %3, double %4, !dbg !1735
  store double %spec.store.select, ptr %y, align 8, !dbg !1736
  br label %if.end33, !dbg !1735

if.end33:                                         ; preds = %if.then19, %if.end15
  %call34 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.48) #17, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp35.not = icmp eq ptr %call34, null, !dbg !1738
  br i1 %cmp35.not, label %if.end40, label %if.then37, !dbg !1740

if.then37:                                        ; preds = %if.end33
  %border_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, !dbg !1741
  %exception38 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1742
  %call39 = call i32 @QueryColorDatabase(ptr noundef nonnull %call34, ptr noundef nonnull %border_color, ptr noundef nonnull %exception38) #17, !dbg !1743
  br label %if.end40, !dbg !1744

if.end40:                                         ; preds = %if.then37, %if.end33
  %call41 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.49) #17, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp42.not = icmp eq ptr %call41, null, !dbg !1746
  br i1 %cmp42.not, label %if.end46, label %if.then44, !dbg !1748

if.then44:                                        ; preds = %if.end40
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1749, metadata !DIExpression()) #17, !dbg !1755
  %call.i531 = call i64 @strtoul(ptr nocapture noundef nonnull %call41, ptr noundef null, i32 noundef 10) #17, !dbg !1757
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1758
  store i64 %call.i531, ptr %colors, align 8, !dbg !1759, !tbaa !1760
  br label %if.end46, !dbg !1761

if.end46:                                         ; preds = %if.then44, %if.end40
  %call47 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.50) #17, !dbg !1762
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp48.not = icmp eq ptr %call47, null, !dbg !1763
  br i1 %cmp48.not, label %if.end53, label %if.then50, !dbg !1765

if.then50:                                        ; preds = %if.end46
  %call51 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %call47) #17, !dbg !1766
  %conv52 = trunc i64 %call51 to i32, !dbg !1767
  %compose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !1768
  store i32 %conv52, ptr %compose, align 8, !dbg !1769, !tbaa !1289
  br label %if.end53, !dbg !1770

if.end53:                                         ; preds = %if.then50, %if.end46
  %call54 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.51) #17, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %call54, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp55.not = icmp eq ptr %call54, null, !dbg !1772
  br i1 %cmp55.not, label %if.end60, label %if.then57, !dbg !1774

if.then57:                                        ; preds = %if.end53
  %call58 = call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef nonnull %call54) #17, !dbg !1775
  %conv59 = trunc i64 %call58 to i32, !dbg !1776
  %compression = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 2, !dbg !1777
  store i32 %conv59, ptr %compression, align 8, !dbg !1778, !tbaa !1398
  br label %if.end60, !dbg !1779

if.end60:                                         ; preds = %if.then57, %if.end53
  %call61 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.52) #17, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %call61, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp62.not = icmp eq ptr %call61, null, !dbg !1781
  br i1 %cmp62.not, label %if.end68, label %if.then64, !dbg !1783

if.then64:                                        ; preds = %if.end60
  %call65 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %call61) #17, !dbg !1784
  %conv66 = trunc i64 %call65 to i32, !dbg !1785
  store i32 %conv66, ptr %debug, align 8, !dbg !1786, !tbaa !1323
  br label %if.end68, !dbg !1787

if.end68:                                         ; preds = %if.then64, %if.end60
  %call69 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.53) #17, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call69, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp70.not = icmp eq ptr %call69, null, !dbg !1789
  br i1 %cmp70.not, label %if.end84, label %if.then72, !dbg !1790

if.then72:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info73) #17, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %geometry_info73, metadata !1653, metadata !DIExpression()), !dbg !1792
  %call74 = call i32 @ParseGeometry(ptr noundef nonnull %call69, ptr noundef nonnull %geometry_info73) #17, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %call74, metadata !1651, metadata !DIExpression()), !dbg !1662
  %5 = load double, ptr %geometry_info73, align 8, !dbg !1794, !tbaa !1425
  %x_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !1795
  store double %5, ptr %x_resolution, align 8, !dbg !1796, !tbaa !1429
  %sigma76 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info73, i64 0, i32 1, !dbg !1797
  %6 = load double, ptr %sigma76, align 8, !dbg !1797, !tbaa !1431
  %y_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !1798
  %and77 = and i32 %call74, 8, !dbg !1799
  %cmp78 = icmp eq i32 %and77, 0, !dbg !1801
  %spec.store.select541 = select i1 %cmp78, double %5, double %6, !dbg !1802
  store double %spec.store.select541, ptr %y_resolution, align 8, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info73) #17, !dbg !1804
  br label %if.end84, !dbg !1805

if.end84:                                         ; preds = %if.then72, %if.end68
  %call85 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.54) #17, !dbg !1806
  call void @llvm.dbg.value(metadata ptr %call85, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp86.not = icmp eq ptr %call85, null, !dbg !1807
  br i1 %cmp86.not, label %if.end90, label %if.then88, !dbg !1809

if.then88:                                        ; preds = %if.end84
  call void @llvm.dbg.value(metadata ptr %call85, metadata !1749, metadata !DIExpression()) #17, !dbg !1810
  %call.i532 = call i64 @strtoul(ptr nocapture noundef nonnull %call85, ptr noundef null, i32 noundef 10) #17, !dbg !1812
  %depth = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1813
  store i64 %call.i532, ptr %depth, align 8, !dbg !1814, !tbaa !1235
  br label %if.end90, !dbg !1815

if.end90:                                         ; preds = %if.then88, %if.end84
  %call91 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.55) #17, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %call91, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp92.not = icmp eq ptr %call91, null, !dbg !1817
  br i1 %cmp92.not, label %if.end97, label %if.then94, !dbg !1819

if.then94:                                        ; preds = %if.end90
  %call95 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 0, ptr noundef nonnull %call91) #17, !dbg !1820
  %conv96 = trunc i64 %call95 to i32, !dbg !1821
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !1822
  store i32 %conv96, ptr %endian, align 8, !dbg !1823, !tbaa !1408
  br label %if.end97, !dbg !1824

if.end97:                                         ; preds = %if.then94, %if.end90
  %call98 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.56) #17, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %call98, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp99.not = icmp eq ptr %call98, null, !dbg !1826
  br i1 %cmp99.not, label %if.end104, label %if.then101, !dbg !1828

if.then101:                                       ; preds = %if.end97
  %call102 = call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %call98) #17, !dbg !1829
  %conv103 = trunc i64 %call102 to i32, !dbg !1830
  %filter = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 32, !dbg !1831
  store i32 %conv103, ptr %filter, align 8, !dbg !1832, !tbaa !1833
  br label %if.end104, !dbg !1834

if.end104:                                        ; preds = %if.then101, %if.end97
  %call105 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.57) #17, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call105, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp106.not = icmp eq ptr %call105, null, !dbg !1836
  br i1 %cmp106.not, label %if.end110, label %if.then108, !dbg !1838

if.then108:                                       ; preds = %if.end104
  call void @llvm.dbg.value(metadata ptr %call105, metadata !1686, metadata !DIExpression()) #17, !dbg !1839
  call void @llvm.dbg.value(metadata double 6.553600e+04, metadata !1692, metadata !DIExpression()) #17, !dbg !1839
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i533) #17, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %q.i533, metadata !1693, metadata !DIExpression(DW_OP_deref)) #17, !dbg !1839
  %call.i534 = call double @InterpretLocaleValue(ptr noundef nonnull %call105, ptr noundef nonnull %q.i533) #17, !dbg !1842
  call void @llvm.dbg.value(metadata double %call.i534, metadata !1694, metadata !DIExpression()) #17, !dbg !1839
  %7 = load ptr, ptr %q.i533, align 8, !dbg !1843, !tbaa !1701
  call void @llvm.dbg.value(metadata ptr %7, metadata !1693, metadata !DIExpression()) #17, !dbg !1839
  %8 = load i8, ptr %7, align 1, !dbg !1844, !tbaa !1703
  %cmp.i535 = icmp eq i8 %8, 37, !dbg !1845
  %mul.i536 = fmul double %call.i534, 6.553600e+02
  %spec.select.i537 = select i1 %cmp.i535, double %mul.i536, double %call.i534, !dbg !1846
  call void @llvm.dbg.value(metadata double %spec.select.i537, metadata !1694, metadata !DIExpression()) #17, !dbg !1839
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i533) #17, !dbg !1847
  %fuzz = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 31, !dbg !1848
  store double %spec.select.i537, ptr %fuzz, align 8, !dbg !1849, !tbaa !1850
  br label %if.end110, !dbg !1851

if.end110:                                        ; preds = %if.then108, %if.end104
  %call111 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.58) #17, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %call111, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp112.not = icmp eq ptr %call111, null, !dbg !1853
  br i1 %cmp112.not, label %if.end117, label %if.then114, !dbg !1855

if.then114:                                       ; preds = %if.end110
  %call115 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %call111) #17, !dbg !1856
  %conv116 = trunc i64 %call115 to i32, !dbg !1857
  %gravity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 35, !dbg !1858
  store i32 %conv116, ptr %gravity, align 4, !dbg !1859, !tbaa !1860
  br label %if.end117, !dbg !1861

if.end117:                                        ; preds = %if.then114, %if.end110
  %call118 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.59) #17, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %call118, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp119.not = icmp eq ptr %call118, null, !dbg !1863
  br i1 %cmp119.not, label %if.end141, label %if.then121, !dbg !1865

if.then121:                                       ; preds = %if.end117
  %call122 = call i32 @ParseGeometry(ptr noundef nonnull %call118, ptr noundef nonnull %geometry_info) #17, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %call122, metadata !1651, metadata !DIExpression()), !dbg !1662
  %9 = load double, ptr %geometry_info, align 8, !dbg !1868, !tbaa !1425
  %green_primary = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 1, !dbg !1869
  store double %9, ptr %green_primary, align 8, !dbg !1870, !tbaa !1256
  %sigma126 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1871
  %10 = load double, ptr %sigma126, align 8, !dbg !1871, !tbaa !1431
  %y129 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 1, i32 1, !dbg !1872
  %and130 = and i32 %call122, 8, !dbg !1873
  %cmp131 = icmp eq i32 %and130, 0, !dbg !1875
  %spec.store.select542 = select i1 %cmp131, double %9, double %10, !dbg !1876
  store double %spec.store.select542, ptr %y129, align 8, !dbg !1877
  br label %if.end141, !dbg !1876

if.end141:                                        ; preds = %if.then121, %if.end117
  %call142 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.60) #17, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %call142, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp143.not = icmp eq ptr %call142, null, !dbg !1879
  br i1 %cmp143.not, label %if.end148, label %if.then145, !dbg !1881

if.then145:                                       ; preds = %if.end141
  %call146 = call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef nonnull %call142) #17, !dbg !1882
  %conv147 = trunc i64 %call146 to i32, !dbg !1883
  %intensity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 83, !dbg !1884
  store i32 %conv147, ptr %intensity, align 8, !dbg !1885, !tbaa !1886
  br label %if.end148, !dbg !1887

if.end148:                                        ; preds = %if.then145, %if.end141
  %call149 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.61) #17, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %call149, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp150.not = icmp eq ptr %call149, null, !dbg !1889
  br i1 %cmp150.not, label %if.end155, label %if.then152, !dbg !1891

if.then152:                                       ; preds = %if.end148
  %call153 = call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %call149) #17, !dbg !1892
  %conv154 = trunc i64 %call153 to i32, !dbg !1893
  %rendering_intent = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 17, !dbg !1894
  store i32 %conv154, ptr %rendering_intent, align 8, !dbg !1895, !tbaa !1241
  br label %if.end155, !dbg !1896

if.end155:                                        ; preds = %if.then152, %if.end148
  %call156 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.62) #17, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %call156, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp157.not = icmp eq ptr %call156, null, !dbg !1898
  br i1 %cmp157.not, label %if.end162, label %if.then159, !dbg !1900

if.then159:                                       ; preds = %if.end155
  %call160 = call i64 @ParseCommandOption(i32 noundef 32, i32 noundef 0, ptr noundef nonnull %call156) #17, !dbg !1901
  %conv161 = trunc i64 %call160 to i32, !dbg !1902
  %interlace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 33, !dbg !1903
  store i32 %conv161, ptr %interlace, align 4, !dbg !1904, !tbaa !1283
  br label %if.end162, !dbg !1905

if.end162:                                        ; preds = %if.then159, %if.end155
  %call163 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.63) #17, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %call163, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp164.not = icmp eq ptr %call163, null, !dbg !1907
  br i1 %cmp164.not, label %if.end169, label %if.then166, !dbg !1909

if.then166:                                       ; preds = %if.end162
  %call167 = call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %call163) #17, !dbg !1910
  %conv168 = trunc i64 %call167 to i32, !dbg !1911
  %interpolate = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 70, !dbg !1912
  store i32 %conv168, ptr %interpolate, align 8, !dbg !1913, !tbaa !1914
  br label %if.end169, !dbg !1915

if.end169:                                        ; preds = %if.then166, %if.end162
  %call170 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.64) #17, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp171.not = icmp eq ptr %call170, null, !dbg !1917
  br i1 %cmp171.not, label %if.end175, label %if.then173, !dbg !1919

if.then173:                                       ; preds = %if.end169
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1749, metadata !DIExpression()) #17, !dbg !1920
  %call.i538 = call i64 @strtoul(ptr nocapture noundef nonnull %call170, ptr noundef null, i32 noundef 10) #17, !dbg !1922
  %iterations = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 42, !dbg !1923
  store i64 %call.i538, ptr %iterations, align 8, !dbg !1924, !tbaa !1925
  br label %if.end175, !dbg !1926

if.end175:                                        ; preds = %if.then173, %if.end169
  %call176 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.65) #17, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %call176, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp177.not = icmp eq ptr %call176, null, !dbg !1928
  br i1 %cmp177.not, label %if.end182, label %if.then179, !dbg !1930

if.then179:                                       ; preds = %if.end175
  %matte_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, !dbg !1931
  %exception180 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1932
  %call181 = call i32 @QueryColorDatabase(ptr noundef nonnull %call176, ptr noundef nonnull %matte_color, ptr noundef nonnull %exception180) #17, !dbg !1933
  br label %if.end182, !dbg !1934

if.end182:                                        ; preds = %if.then179, %if.end175
  %call183 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.66) #17, !dbg !1935
  call void @llvm.dbg.value(metadata ptr %call183, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp184.not = icmp eq ptr %call183, null, !dbg !1936
  br i1 %cmp184.not, label %if.end189, label %if.then186, !dbg !1938

if.then186:                                       ; preds = %if.end182
  %call187 = call i64 @ParseCommandOption(i32 noundef 50, i32 noundef 0, ptr noundef nonnull %call183) #17, !dbg !1939
  %conv188 = trunc i64 %call187 to i32, !dbg !1940
  %orientation = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 4, !dbg !1941
  store i32 %conv188, ptr %orientation, align 8, !dbg !1942, !tbaa !1943
  br label %if.end189, !dbg !1944

if.end189:                                        ; preds = %if.then186, %if.end182
  %call190 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.43) #17, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %call190, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp191.not = icmp eq ptr %call190, null, !dbg !1946
  br i1 %cmp191.not, label %if.end197, label %if.then193, !dbg !1947

if.then193:                                       ; preds = %if.end189
  %call194 = call ptr @GetPageGeometry(ptr noundef nonnull %call190) #17, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %call194, metadata !1656, metadata !DIExpression()), !dbg !1949
  %page = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !1950
  %call195 = call i32 @ParseAbsoluteGeometry(ptr noundef %call194, ptr noundef nonnull %page) #17, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %call195, metadata !1651, metadata !DIExpression()), !dbg !1662
  %call196 = call ptr @DestroyString(ptr noundef %call194) #17, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %call196, metadata !1656, metadata !DIExpression()), !dbg !1949
  br label %if.end197, !dbg !1953

if.end197:                                        ; preds = %if.then193, %if.end189
  %call198 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.67) #17, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %call198, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp199.not = icmp eq ptr %call198, null, !dbg !1955
  br i1 %cmp199.not, label %if.end203, label %if.then201, !dbg !1957

if.then201:                                       ; preds = %if.end197
  call void @llvm.dbg.value(metadata ptr %call198, metadata !1749, metadata !DIExpression()) #17, !dbg !1958
  %call.i539 = call i64 @strtoul(ptr nocapture noundef nonnull %call198, ptr noundef null, i32 noundef 10) #17, !dbg !1960
  %quality = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 3, !dbg !1961
  store i64 %call.i539, ptr %quality, align 8, !dbg !1962, !tbaa !1403
  br label %if.end203, !dbg !1963

if.end203:                                        ; preds = %if.then201, %if.end197
  %call204 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.68) #17, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %call204, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp205.not = icmp eq ptr %call204, null, !dbg !1965
  br i1 %cmp205.not, label %if.end227, label %if.then207, !dbg !1967

if.then207:                                       ; preds = %if.end203
  %call208 = call i32 @ParseGeometry(ptr noundef nonnull %call204, ptr noundef nonnull %geometry_info) #17, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %call208, metadata !1651, metadata !DIExpression()), !dbg !1662
  %11 = load double, ptr %geometry_info, align 8, !dbg !1970, !tbaa !1425
  %chromaticity210 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, !dbg !1971
  store double %11, ptr %chromaticity210, align 8, !dbg !1972, !tbaa !1247
  %sigma212 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1973
  %12 = load double, ptr %sigma212, align 8, !dbg !1973, !tbaa !1431
  %y215 = getelementptr inbounds %struct._PrimaryInfo, ptr %chromaticity210, i64 0, i32 1, !dbg !1974
  %and216 = and i32 %call208, 8, !dbg !1975
  %cmp217 = icmp eq i32 %and216, 0, !dbg !1977
  %spec.store.select543 = select i1 %cmp217, double %11, double %12, !dbg !1978
  store double %spec.store.select543, ptr %y215, align 8, !dbg !1979
  br label %if.end227, !dbg !1978

if.end227:                                        ; preds = %if.then207, %if.end203
  %quality228 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 16, !dbg !1980
  %13 = load i64, ptr %quality228, align 8, !dbg !1980, !tbaa !1400
  %cmp229.not = icmp eq i64 %13, 0, !dbg !1982
  br i1 %cmp229.not, label %if.end234, label %if.then231, !dbg !1983

if.then231:                                       ; preds = %if.end227
  %quality233 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 3, !dbg !1984
  store i64 %13, ptr %quality233, align 8, !dbg !1985, !tbaa !1403
  br label %if.end234, !dbg !1986

if.end234:                                        ; preds = %if.then231, %if.end227
  %call235 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.69) #17, !dbg !1987
  call void @llvm.dbg.value(metadata ptr %call235, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp236.not = icmp eq ptr %call235, null, !dbg !1988
  br i1 %cmp236.not, label %if.end240, label %if.then238, !dbg !1990

if.then238:                                       ; preds = %if.end234
  call void @llvm.dbg.value(metadata ptr %call235, metadata !1749, metadata !DIExpression()) #17, !dbg !1991
  %call.i540 = call i64 @strtoul(ptr nocapture noundef nonnull %call235, ptr noundef null, i32 noundef 10) #17, !dbg !1993
  %scene = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !1994
  store i64 %call.i540, ptr %scene, align 8, !dbg !1995, !tbaa !1996
  br label %if.end240, !dbg !1997

if.end240:                                        ; preds = %if.then238, %if.end234
  %call241 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.70) #17, !dbg !1998
  call void @llvm.dbg.value(metadata ptr %call241, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp242.not = icmp eq ptr %call241, null, !dbg !1999
  br i1 %cmp242.not, label %if.end247, label %if.then244, !dbg !2001

if.then244:                                       ; preds = %if.end240
  %call245 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %call241) #17, !dbg !2002
  %conv246 = trunc i64 %call245 to i32, !dbg !2003
  %taint = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 5, !dbg !2004
  store i32 %conv246, ptr %taint, align 4, !dbg !2005, !tbaa !2006
  br label %if.end247, !dbg !2007

if.end247:                                        ; preds = %if.then244, %if.end240
  %call248 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.71) #17, !dbg !2008
  call void @llvm.dbg.value(metadata ptr %call248, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp249.not = icmp eq ptr %call248, null, !dbg !2009
  br i1 %cmp249.not, label %if.end256, label %if.then251, !dbg !2010

if.then251:                                       ; preds = %if.end247
  %call253 = call ptr @GetPageGeometry(ptr noundef nonnull %call248) #17, !dbg !2011
  call void @llvm.dbg.value(metadata ptr %call253, metadata !1659, metadata !DIExpression()), !dbg !2012
  %tile_offset = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 74, !dbg !2013
  %call254 = call i32 @ParseAbsoluteGeometry(ptr noundef %call253, ptr noundef nonnull %tile_offset) #17, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %call254, metadata !1651, metadata !DIExpression()), !dbg !1662
  %call255 = call ptr @DestroyString(ptr noundef %call253) #17, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %call255, metadata !1659, metadata !DIExpression()), !dbg !2012
  br label %if.end256, !dbg !2016

if.end256:                                        ; preds = %if.then251, %if.end247
  %call257 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.72) #17, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %call257, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp258.not = icmp eq ptr %call257, null, !dbg !2018
  br i1 %cmp258.not, label %if.end263, label %if.then260, !dbg !2020

if.then260:                                       ; preds = %if.end256
  %transparent_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 72, !dbg !2021
  %exception261 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2022
  %call262 = call i32 @QueryColorDatabase(ptr noundef nonnull %call257, ptr noundef nonnull %transparent_color, ptr noundef nonnull %exception261) #17, !dbg !2023
  br label %if.end263, !dbg !2024

if.end263:                                        ; preds = %if.then260, %if.end256
  %call264 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.73) #17, !dbg !2025
  call void @llvm.dbg.value(metadata ptr %call264, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp265.not = icmp eq ptr %call264, null, !dbg !2026
  br i1 %cmp265.not, label %if.end270, label %if.then267, !dbg !2028

if.then267:                                       ; preds = %if.end263
  %call268 = call i64 @ParseCommandOption(i32 noundef 66, i32 noundef 0, ptr noundef nonnull %call264) #17, !dbg !2029
  %conv269 = trunc i64 %call268 to i32, !dbg !2030
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2031
  store i32 %conv269, ptr %type, align 8, !dbg !2032, !tbaa !2033
  br label %if.end270, !dbg !2034

if.end270:                                        ; preds = %if.then267, %if.end263
  %call271 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.74) #17, !dbg !2035
  call void @llvm.dbg.value(metadata ptr %call271, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp272.not = icmp eq ptr %call271, null, !dbg !2036
  br i1 %cmp272.not, label %if.else, label %if.then274, !dbg !2038

if.then274:                                       ; preds = %if.end270
  %call275 = call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef nonnull %call271) #17, !dbg !2039
  %conv276 = trunc i64 %call275 to i32, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %conv276, metadata !1652, metadata !DIExpression()), !dbg !1662
  br label %if.end278, !dbg !2041

if.else:                                          ; preds = %if.end270
  %units277 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 15, !dbg !2042
  %14 = load i32, ptr %units277, align 8, !dbg !2042, !tbaa !1413
  call void @llvm.dbg.value(metadata i32 %14, metadata !1652, metadata !DIExpression()), !dbg !1662
  br label %if.end278

if.end278:                                        ; preds = %if.else, %if.then274
  %units.0 = phi i32 [ %conv276, %if.then274 ], [ %14, %if.else ], !dbg !2043
  call void @llvm.dbg.value(metadata i32 %units.0, metadata !1652, metadata !DIExpression()), !dbg !1662
  %cmp279.not = icmp eq i32 %units.0, 0, !dbg !2044
  br i1 %cmp279.not, label %if.end311, label %if.then281, !dbg !2046

if.then281:                                       ; preds = %if.end278
  %units282 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19, !dbg !2047
  %15 = load i32, ptr %units282, align 8, !dbg !2047, !tbaa !1416
  %cmp283.not = icmp eq i32 %15, %units.0, !dbg !2050
  br i1 %cmp283.not, label %if.end309, label %if.then285, !dbg !2051

if.then285:                                       ; preds = %if.then281
  switch i32 %15, label %if.end309 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb294
  ], !dbg !2052

sw.bb:                                            ; preds = %if.then285
  %cmp287 = icmp eq i32 %units.0, 2, !dbg !2053
  br i1 %cmp287, label %if.then289, label %if.end309, !dbg !2057

if.then289:                                       ; preds = %sw.bb
  %x_resolution290 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !2058
  %16 = load double, ptr %x_resolution290, align 8, !dbg !2060, !tbaa !1429
  %div = fdiv double %16, 2.540000e+00, !dbg !2060
  store double %div, ptr %x_resolution290, align 8, !dbg !2060, !tbaa !1429
  %y_resolution291 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !2061
  %17 = load double, ptr %y_resolution291, align 8, !dbg !2062, !tbaa !2063
  %div292 = fdiv double %17, 2.540000e+00, !dbg !2062
  store double %div292, ptr %y_resolution291, align 8, !dbg !2062, !tbaa !2063
  br label %if.end309, !dbg !2064

sw.bb294:                                         ; preds = %if.then285
  %cmp295 = icmp eq i32 %units.0, 1, !dbg !2065
  br i1 %cmp295, label %if.then297, label %if.end309, !dbg !2068

if.then297:                                       ; preds = %sw.bb294
  %x_resolution298 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !2069
  %18 = load double, ptr %x_resolution298, align 8, !dbg !2069, !tbaa !1429
  %19 = call double @llvm.fmuladd.f64(double %18, double 2.540000e+02, double 5.000000e-01), !dbg !2071
  %conv299 = fptoui double %19 to i64, !dbg !2072
  %conv300 = uitofp i64 %conv299 to double, !dbg !2073
  %div301 = fdiv double %conv300, 1.000000e+02, !dbg !2074
  store double %div301, ptr %x_resolution298, align 8, !dbg !2075, !tbaa !1429
  %y_resolution303 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !2076
  %20 = load double, ptr %y_resolution303, align 8, !dbg !2076, !tbaa !2063
  %21 = call double @llvm.fmuladd.f64(double %20, double 2.540000e+02, double 5.000000e-01), !dbg !2077
  %conv304 = fptoui double %21 to i64, !dbg !2078
  %conv305 = uitofp i64 %conv304 to double, !dbg !2079
  %div306 = fdiv double %conv305, 1.000000e+02, !dbg !2080
  store double %div306, ptr %y_resolution303, align 8, !dbg !2081, !tbaa !2063
  br label %if.end309, !dbg !2082

if.end309:                                        ; preds = %if.then289, %sw.bb, %if.then297, %sw.bb294, %if.then285, %if.then281
  store i32 %units.0, ptr %units282, align 8, !dbg !2083, !tbaa !1416
  br label %if.end311, !dbg !2084

if.end311:                                        ; preds = %if.end309, %if.end278
  %call312 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.75) #17, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %call312, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp313.not = icmp eq ptr %call312, null, !dbg !2086
  br i1 %cmp313.not, label %if.end335, label %if.then315, !dbg !2088

if.then315:                                       ; preds = %if.end311
  %call316 = call i32 @ParseGeometry(ptr noundef nonnull %call312, ptr noundef nonnull %geometry_info) #17, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %call316, metadata !1651, metadata !DIExpression()), !dbg !1662
  %22 = load double, ptr %geometry_info, align 8, !dbg !2091, !tbaa !1425
  %white_point = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 3, !dbg !2092
  store double %22, ptr %white_point, align 8, !dbg !2093, !tbaa !1274
  %sigma320 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !2094
  %23 = load double, ptr %sigma320, align 8, !dbg !2094, !tbaa !1431
  %y323 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 3, i32 1, !dbg !2095
  %and324 = and i32 %call316, 8, !dbg !2096
  %cmp325 = icmp eq i32 %and324, 0, !dbg !2098
  %spec.store.select544 = select i1 %cmp325, double %22, double %23, !dbg !2099
  store double %spec.store.select544, ptr %y323, align 8, !dbg !2100
  br label %if.end335, !dbg !2099

if.end335:                                        ; preds = %if.then315, %if.end311
  call void @ResetImageOptionIterator(ptr noundef nonnull %image_info) #17, !dbg !2101
  %call336 = call ptr @GetNextImageOption(ptr noundef nonnull %image_info) #17, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %call336, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp337.not545 = icmp eq ptr %call336, null, !dbg !2104
  br i1 %cmp337.not545, label %for.end, label %for.body, !dbg !2106

for.body:                                         ; preds = %if.end335, %if.end347
  %option.0546 = phi ptr [ %call348, %if.end347 ], [ %call336, %if.end335 ]
  call void @llvm.dbg.value(metadata ptr %option.0546, metadata !1648, metadata !DIExpression()), !dbg !1662
  %call339 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull %option.0546) #17, !dbg !2107
  call void @llvm.dbg.value(metadata ptr %call339, metadata !1649, metadata !DIExpression()), !dbg !1662
  %cmp340.not = icmp eq ptr %call339, null, !dbg !2109
  br i1 %cmp340.not, label %if.end347, label %if.then342, !dbg !2111

if.then342:                                       ; preds = %for.body
  %call344 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %property, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %option.0546) #17, !dbg !2112
  %call346 = call i32 @SetImageArtifact(ptr noundef %image, ptr noundef nonnull %property, ptr noundef nonnull %call339) #17, !dbg !2114
  br label %if.end347, !dbg !2115

if.end347:                                        ; preds = %if.then342, %for.body
  %call348 = call ptr @GetNextImageOption(ptr noundef %image_info) #17, !dbg !2116
  call void @llvm.dbg.value(metadata ptr %call348, metadata !1648, metadata !DIExpression()), !dbg !1662
  %cmp337.not = icmp eq ptr %call348, null, !dbg !2104
  br i1 %cmp337.not, label %for.end, label %for.body, !dbg !2106, !llvm.loop !2117

for.end:                                          ; preds = %if.end347, %if.end335
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #17, !dbg !2121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %property) #17, !dbg !2121
  ret i32 1, !dbg !2122
}

declare !dbg !2123 ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare !dbg !2126 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireImageInfo() local_unnamed_addr #0 !dbg !2131 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 16792) #18, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %call, metadata !2135, metadata !DIExpression()), !dbg !2141
  %cmp = icmp eq ptr %call, null, !dbg !2142
  br i1 %cmp, label %if.then, label %if.end, !dbg !2143

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #17, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2139, metadata !DIExpression()), !dbg !2144
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !2144
  %call1 = tail call ptr @__errno_location() #19, !dbg !2144
  %0 = load i32, ptr %call1, align 4, !dbg !2144, !tbaa !1208
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #17, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2136, metadata !DIExpression()), !dbg !2145
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 336, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call2) #17, !dbg !2144
  %call4 = call ptr @DestroyString(ptr noundef %call2) #17, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2136, metadata !DIExpression()), !dbg !2145
  call void @CatchException(ptr noundef nonnull %exception) #17, !dbg !2144
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !2144
  call void @MagickCoreTerminus() #17, !dbg !2144
  call void @_exit(i32 noundef 1) #20, !dbg !2144
  unreachable, !dbg !2144

if.end:                                           ; preds = %entry
  tail call void @GetImageInfo(ptr noundef nonnull %call), !dbg !2146
  ret ptr %call, !dbg !2147
}

; Function Attrs: nounwind uwtable
define dso_local void @GetImageInfo(ptr noundef %image_info) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2152, metadata !DIExpression()), !dbg !2155
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1280, ptr noundef nonnull @.str.2) #17, !dbg !2156
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef %image_info, i32 noundef 0, i64 noundef 16792) #17, !dbg !2157
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !2158
  store i32 1, ptr %adjoin, align 4, !dbg !2159, !tbaa !2160
  %interlace = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 13, !dbg !2161
  store i32 1, ptr %interlace, align 8, !dbg !2162, !tbaa !1410
  %channel = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 38, !dbg !2163
  store i32 134217719, ptr %channel, align 8, !dbg !2164, !tbaa !2165
  %quality = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 16, !dbg !2166
  store i64 0, ptr %quality, align 8, !dbg !2167, !tbaa !1400
  %antialias = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 5, !dbg !2168
  store i32 1, ptr %antialias, align 4, !dbg !2169, !tbaa !2170
  %dither = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 27, !dbg !2171
  store i32 1, ptr %dither, align 8, !dbg !2172, !tbaa !1460
  %call2 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #17, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2153, metadata !DIExpression()), !dbg !2155
  %cmp.not = icmp eq ptr %call2, null, !dbg !2174
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2176

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @IsStringTrue(ptr noundef nonnull %call2) #17, !dbg !2177
  %synchronize4 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 61, !dbg !2179
  store i32 %call3, ptr %synchronize4, align 8, !dbg !2180, !tbaa !2181
  %call5 = tail call ptr @DestroyString(ptr noundef nonnull %call2) #17, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2153, metadata !DIExpression()), !dbg !2155
  br label %if.end, !dbg !2183

if.end:                                           ; preds = %if.then, %entry
  %call6 = tail call ptr @AcquireExceptionInfo() #17, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2154, metadata !DIExpression()), !dbg !2155
  %background_color = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 24, !dbg !2185
  %call7 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %background_color, ptr noundef %call6) #17, !dbg !2186
  %border_color = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 25, !dbg !2187
  %call8 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %border_color, ptr noundef %call6) #17, !dbg !2188
  %matte_color = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 26, !dbg !2189
  %call9 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %matte_color, ptr noundef %call6) #17, !dbg !2190
  %transparent_color = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 59, !dbg !2191
  %call10 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %transparent_color, ptr noundef %call6) #17, !dbg !2192
  %call11 = tail call ptr @DestroyExceptionInfo(ptr noundef %call6) #17, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2154, metadata !DIExpression()), !dbg !2155
  %call12 = tail call i32 @IsEventLogging() #17, !dbg !2194
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !2195
  store i32 %call12, ptr %debug, align 8, !dbg !2196, !tbaa !2197
  %signature = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 57, !dbg !2198
  store i64 2880220587, ptr %signature, align 8, !dbg !2199, !tbaa !2200
  ret void, !dbg !2201
}

; Function Attrs: nounwind uwtable
define dso_local void @AcquireNextImage(ptr noundef %image_info, ptr noundef %image) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2206, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr %image, metadata !2207, metadata !DIExpression()), !dbg !2208
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2209
  %0 = load i32, ptr %debug, align 8, !dbg !2209, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !2211
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2212

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2213
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !2214
  br label %if.end, !dbg !2215

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireImage(ptr noundef %image_info), !dbg !2216
  %next = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 69, !dbg !2217
  store ptr %call1, ptr %next, align 8, !dbg !2218, !tbaa !2219
  %call2 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #17, !dbg !2220
  %cmp3 = icmp eq ptr %call2, null, !dbg !2222
  br i1 %cmp3, label %return, label %if.end5, !dbg !2223

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #17, !dbg !2224
  %filename7 = getelementptr inbounds %struct._Image, ptr %call6, i64 0, i32 53, !dbg !2225
  %filename9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2226
  %call11 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename7, ptr noundef nonnull %filename9, i64 noundef 4096) #17, !dbg !2227
  %cmp12.not = icmp eq ptr %image_info, null, !dbg !2228
  br i1 %cmp12.not, label %if.end20, label %if.then13, !dbg !2230

if.then13:                                        ; preds = %if.end5
  %call14 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #17, !dbg !2231
  %filename15 = getelementptr inbounds %struct._Image, ptr %call14, i64 0, i32 53, !dbg !2232
  %filename17 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2233
  %call19 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename15, ptr noundef nonnull %filename17, i64 noundef 4096) #17, !dbg !2234
  br label %if.end20, !dbg !2235

if.end20:                                         ; preds = %if.then13, %if.end5
  %call21 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #17, !dbg !2236
  tail call void @DestroyBlob(ptr noundef %call21) #17, !dbg !2237
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2238
  %1 = load ptr, ptr %blob, align 8, !dbg !2238, !tbaa !1315
  %call22 = tail call ptr @ReferenceBlob(ptr noundef %1) #17, !dbg !2239
  %2 = load ptr, ptr %next, align 8, !dbg !2240, !tbaa !2219
  %blob24 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 52, !dbg !2241
  store ptr %call22, ptr %blob24, align 8, !dbg !2242, !tbaa !1315
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !2243
  %3 = load i32, ptr %endian, align 8, !dbg !2243, !tbaa !1408
  %endian26 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 34, !dbg !2244
  store i32 %3, ptr %endian26, align 8, !dbg !2245, !tbaa !1408
  %scene = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !2246
  %4 = load i64, ptr %scene, align 8, !dbg !2246, !tbaa !1996
  %add = add i64 %4, 1, !dbg !2247
  %scene28 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 39, !dbg !2248
  store i64 %add, ptr %scene28, align 8, !dbg !2249, !tbaa !1996
  %previous = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 67, !dbg !2250
  store ptr %image, ptr %previous, align 8, !dbg !2251, !tbaa !2252
  br label %return, !dbg !2253

return:                                           ; preds = %if.end, %if.end20
  ret void, !dbg !2253
}

declare !dbg !2254 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !2258 void @DestroyBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !2261 ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @AppendImages(ptr noundef %images, i32 noundef %stack, ptr noundef %exception) local_unnamed_addr #0 !dbg !2264 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !2268, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %stack, metadata !2269, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2270, metadata !DIExpression()), !dbg !2306
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #17, !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2279, metadata !DIExpression()), !dbg !2308
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !2309
  %0 = load i32, ptr %debug, align 8, !dbg !2309, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !2311
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2312

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !2313
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !2314
  br label %if.end, !dbg !2315

if.end:                                           ; preds = %if.then, %entry
  %matte1 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 6, !dbg !2316
  %1 = load i32, ptr %matte1, align 8, !dbg !2316, !tbaa !2317
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 1, metadata !2282, metadata !DIExpression()), !dbg !2306
  %columns = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 7, !dbg !2318
  %2 = load i64, ptr %columns, align 8, !dbg !2318, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 %2, metadata !2283, metadata !DIExpression()), !dbg !2306
  %rows = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 8, !dbg !2319
  %3 = load i64, ptr %rows, align 8, !dbg !2319, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %3, metadata !2281, metadata !DIExpression()), !dbg !2306
  %call2 = tail call ptr @GetNextImageInList(ptr noundef nonnull %images) #17, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2280, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %2, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 1, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %3, metadata !2281, metadata !DIExpression()), !dbg !2306
  %cmp3.not272 = icmp eq ptr %call2, null, !dbg !2321
  br i1 %cmp3.not272, label %for.end, label %for.body.lr.ph, !dbg !2324

for.body.lr.ph:                                   ; preds = %if.end
  %cmp8.not = icmp eq i32 %stack, 0
  br i1 %cmp8.not, label %for.body.us, label %for.body, !dbg !2325

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %matte.0278.us = phi i32 [ %spec.select.us, %for.body.us ], [ %1, %for.body.lr.ph ]
  %width.0277.us = phi i64 [ %add18.us, %for.body.us ], [ %2, %for.body.lr.ph ]
  %number_images.0276.us = phi i64 [ %inc.us, %for.body.us ], [ 1, %for.body.lr.ph ]
  %height.0275.us = phi i64 [ %7, %for.body.us ], [ %3, %for.body.lr.ph ]
  %next.0273.us = phi ptr [ %call24.us, %for.body.us ], [ %call2, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %matte.0278.us, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %width.0277.us, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %number_images.0276.us, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %height.0275.us, metadata !2281, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %next.0273.us, metadata !2280, metadata !DIExpression()), !dbg !2306
  %matte4.us = getelementptr inbounds %struct._Image, ptr %next.0273.us, i64 0, i32 6, !dbg !2327
  %4 = load i32, ptr %matte4.us, align 8, !dbg !2327, !tbaa !2317
  %cmp5.not.us = icmp eq i32 %4, 0, !dbg !2329
  %spec.select.us = select i1 %cmp5.not.us, i32 %matte.0278.us, i32 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !2276, metadata !DIExpression()), !dbg !2306
  %inc.us = add i64 %number_images.0276.us, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2282, metadata !DIExpression()), !dbg !2306
  %columns17.us = getelementptr inbounds %struct._Image, ptr %next.0273.us, i64 0, i32 7, !dbg !2332
  %5 = load i64, ptr %columns17.us, align 8, !dbg !2332, !tbaa !1362
  %add18.us = add i64 %5, %width.0277.us, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %add18.us, metadata !2283, metadata !DIExpression()), !dbg !2306
  %rows19.us = getelementptr inbounds %struct._Image, ptr %next.0273.us, i64 0, i32 8, !dbg !2334
  %6 = load i64, ptr %rows19.us, align 8, !dbg !2334, !tbaa !1367
  %7 = tail call i64 @llvm.umax.i64(i64 %6, i64 %height.0275.us), !dbg !2336
  call void @llvm.dbg.value(metadata i64 undef, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 undef, metadata !2281, metadata !DIExpression()), !dbg !2306
  %call24.us = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0273.us) #17, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %call24.us, metadata !2280, metadata !DIExpression()), !dbg !2306
  %cmp3.not.us = icmp eq ptr %call24.us, null, !dbg !2321
  br i1 %cmp3.not.us, label %for.end, label %for.body.us, !dbg !2324, !llvm.loop !2338

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %matte.0278 = phi i32 [ %spec.select, %for.body ], [ %1, %for.body.lr.ph ]
  %width.0277 = phi i64 [ %10, %for.body ], [ %2, %for.body.lr.ph ]
  %number_images.0276 = phi i64 [ %inc, %for.body ], [ 1, %for.body.lr.ph ]
  %height.0275 = phi i64 [ %add, %for.body ], [ %3, %for.body.lr.ph ]
  %next.0273 = phi ptr [ %call24, %for.body ], [ %call2, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %matte.0278, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %width.0277, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %number_images.0276, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %height.0275, metadata !2281, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %next.0273, metadata !2280, metadata !DIExpression()), !dbg !2306
  %matte4 = getelementptr inbounds %struct._Image, ptr %next.0273, i64 0, i32 6, !dbg !2327
  %8 = load i32, ptr %matte4, align 8, !dbg !2327, !tbaa !2317
  %cmp5.not = icmp eq i32 %8, 0, !dbg !2329
  %spec.select = select i1 %cmp5.not, i32 %matte.0278, i32 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2276, metadata !DIExpression()), !dbg !2306
  %inc = add i64 %number_images.0276, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2282, metadata !DIExpression()), !dbg !2306
  %columns10 = getelementptr inbounds %struct._Image, ptr %next.0273, i64 0, i32 7, !dbg !2340
  %9 = load i64, ptr %columns10, align 8, !dbg !2340, !tbaa !1362
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 %width.0277), !dbg !2344
  call void @llvm.dbg.value(metadata i64 %10, metadata !2283, metadata !DIExpression()), !dbg !2306
  %rows15 = getelementptr inbounds %struct._Image, ptr %next.0273, i64 0, i32 8, !dbg !2345
  %11 = load i64, ptr %rows15, align 8, !dbg !2345, !tbaa !1367
  %add = add i64 %11, %height.0275, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %add, metadata !2281, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %10, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %add, metadata !2281, metadata !DIExpression()), !dbg !2306
  %call24 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0273) #17, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2276, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2280, metadata !DIExpression()), !dbg !2306
  %cmp3.not = icmp eq ptr %call24, null, !dbg !2321
  br i1 %cmp3.not, label %for.end, label %for.body, !dbg !2324, !llvm.loop !2338

for.end:                                          ; preds = %for.body, %for.body.us, %if.end
  %height.0.lcssa = phi i64 [ %3, %if.end ], [ %7, %for.body.us ], [ %add, %for.body ], !dbg !2306
  %number_images.0.lcssa = phi i64 [ 1, %if.end ], [ %inc.us, %for.body.us ], [ %inc, %for.body ], !dbg !2306
  %width.0.lcssa = phi i64 [ %2, %if.end ], [ %add18.us, %for.body.us ], [ %10, %for.body ], !dbg !2306
  %matte.0.lcssa = phi i32 [ %1, %if.end ], [ %spec.select.us, %for.body.us ], [ %spec.select, %for.body ], !dbg !2306
  %call25 = tail call ptr @CloneImage(ptr noundef %images, i64 noundef %width.0.lcssa, i64 noundef %height.0.lcssa, i32 noundef 1, ptr noundef %exception), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %call25, metadata !2275, metadata !DIExpression()), !dbg !2306
  %cmp26 = icmp eq ptr %call25, null, !dbg !2348
  br i1 %cmp26, label %cleanup151, label %if.end28, !dbg !2350

if.end28:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %call25, metadata !2351, metadata !DIExpression()) #17, !dbg !2358
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !2358
  store i32 1, ptr %call25, align 8, !dbg !2361, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 58, !dbg !2362
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %call25, ptr noundef nonnull %exception.i) #17, !dbg !2363
  %cmp30 = icmp eq i32 %call.i, 0, !dbg !2364
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !2365

if.then31:                                        ; preds = %if.end28
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception.i) #17, !dbg !2366
  %call33 = tail call ptr @DestroyImage(ptr noundef nonnull %call25), !dbg !2368
  call void @llvm.dbg.value(metadata ptr %call33, metadata !2275, metadata !DIExpression()), !dbg !2306
  br label %cleanup151, !dbg !2369

if.end34:                                         ; preds = %if.end28
  %matte35 = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 6, !dbg !2370
  store i32 %matte.0.lcssa, ptr %matte35, align 8, !dbg !2371, !tbaa !2317
  %call36 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call25), !dbg !2372
  call void @llvm.dbg.value(metadata i32 1, metadata !2277, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %images, metadata !2280, metadata !DIExpression()), !dbg !2306
  %call37 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call25, ptr noundef %exception) #17, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2271, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2306
  %cmp39323 = icmp sgt i64 %number_images.0.lcssa, 0, !dbg !2374
  br i1 %cmp39323, label %for.body40.lr.ph, label %for.end144.thread344, !dbg !2375

for.end144.thread344:                             ; preds = %if.end34
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !2277, metadata !DIExpression()), !dbg !2306
  %call145346 = call ptr @DestroyCacheView(ptr noundef %call37) #17, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %call145, metadata !2271, metadata !DIExpression()), !dbg !2306
  br label %cleanup151, !dbg !2377

for.body40.lr.ph:                                 ; preds = %if.end34
  %colorspace = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 1
  %cmp51.not = icmp eq i32 %stack, 0
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %y53 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 48
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %images, metadata !2280, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 1, metadata !2277, metadata !DIExpression()), !dbg !2306
  %call41360 = call ptr @CloneImage(ptr noundef %images, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %call41360, metadata !2291, metadata !DIExpression()), !dbg !2379
  %cmp42361 = icmp eq ptr %call41360, null, !dbg !2380
  br i1 %cmp42361, label %for.end144, label %if.end44, !dbg !2382

for.body40:                                       ; preds = %for.inc142
  call void @llvm.dbg.value(metadata i64 %y_offset.2, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %x_offset.2, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %call136, metadata !2280, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %inc143, metadata !2278, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %status.1.lcssa, metadata !2277, metadata !DIExpression()), !dbg !2306
  %call41 = call ptr @CloneImage(ptr noundef %call136, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %call41, metadata !2291, metadata !DIExpression()), !dbg !2379
  %cmp42 = icmp eq ptr %call41, null, !dbg !2380
  br i1 %cmp42, label %for.end144, label %if.end44, !dbg !2382, !llvm.loop !2383

if.end44:                                         ; preds = %for.body40.lr.ph, %for.body40
  %call41366 = phi ptr [ %call41, %for.body40 ], [ %call41360, %for.body40.lr.ph ]
  %n.0325365 = phi i64 [ %inc143, %for.body40 ], [ 0, %for.body40.lr.ph ]
  %next.1327364 = phi ptr [ %call136, %for.body40 ], [ %images, %for.body40.lr.ph ]
  %x_offset.0328363 = phi i64 [ %x_offset.2, %for.body40 ], [ 0, %for.body40.lr.ph ]
  %y_offset.0329362 = phi i64 [ %y_offset.2, %for.body40 ], [ 0, %for.body40.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %n.0325365, metadata !2278, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %next.1327364, metadata !2280, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %x_offset.0328363, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %y_offset.0329362, metadata !2286, metadata !DIExpression()), !dbg !2306
  %12 = load i32, ptr %colorspace, align 4, !dbg !2385, !tbaa !1238
  %call45 = call i32 @TransformImageColorspace(ptr noundef nonnull %call41366, i32 noundef %12) #17, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %call45, metadata !2277, metadata !DIExpression()), !dbg !2306
  %cmp46 = icmp eq i32 %call45, 0, !dbg !2387
  br i1 %cmp46, label %for.end144.thread, label %if.end48, !dbg !2389

for.end144.thread:                                ; preds = %if.end44
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !2277, metadata !DIExpression()), !dbg !2306
  %call145270 = call ptr @DestroyCacheView(ptr noundef %call37) #17, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %call145, metadata !2271, metadata !DIExpression()), !dbg !2306
  br label %if.then148, !dbg !2377

if.end48:                                         ; preds = %if.end44
  call void @SetGeometry(ptr noundef nonnull %call25, ptr noundef nonnull %geometry) #17, !dbg !2390
  %columns49 = getelementptr inbounds %struct._Image, ptr %call41366, i64 0, i32 7, !dbg !2391
  %13 = load i64, ptr %columns49, align 8, !dbg !2391, !tbaa !1362
  %rows50 = getelementptr inbounds %struct._Image, ptr %call41366, i64 0, i32 8, !dbg !2392
  %14 = load i64, ptr %rows50, align 8, !dbg !2392, !tbaa !1367
  %gravity = getelementptr inbounds %struct._Image, ptr %call41366, i64 0, i32 35, !dbg !2393
  %15 = load i32, ptr %gravity, align 4, !dbg !2393, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %13, i64 noundef %14, i32 noundef %15, ptr noundef nonnull %geometry) #17, !dbg !2394
  br i1 %cmp51.not, label %if.else, label %if.then52, !dbg !2395

if.then52:                                        ; preds = %if.end48
  %16 = load i64, ptr %x, align 8, !dbg !2396, !tbaa !2398
  %sub = sub nsw i64 %x_offset.0328363, %16, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2284, metadata !DIExpression()), !dbg !2306
  br label %if.end55, !dbg !2400

if.else:                                          ; preds = %if.end48
  %17 = load i64, ptr %y53, align 8, !dbg !2401, !tbaa !2402
  %sub54 = sub nsw i64 %y_offset.0329362, %17, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %sub54, metadata !2286, metadata !DIExpression()), !dbg !2306
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  %x_offset.1 = phi i64 [ %sub, %if.then52 ], [ %x_offset.0328363, %if.else ], !dbg !2306
  %y_offset.1 = phi i64 [ %y_offset.0329362, %if.then52 ], [ %sub54, %if.else ], !dbg !2306
  call void @llvm.dbg.value(metadata i64 %y_offset.1, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %x_offset.1, metadata !2284, metadata !DIExpression()), !dbg !2306
  %call56 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call41366, ptr noundef %exception) #17, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %call56, metadata !2287, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 0, metadata !2285, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %call45, metadata !2277, metadata !DIExpression()), !dbg !2306
  %18 = load i64, ptr %rows50, align 8, !dbg !2405, !tbaa !1367
  %cmp59319 = icmp sgt i64 %18, 0, !dbg !2406
  br i1 %cmp59319, label %for.body60.lr.ph, label %for.end119, !dbg !2407

for.body60.lr.ph:                                 ; preds = %if.end55
  %matte83 = getelementptr inbounds %struct._Image, ptr %call41366, i64 0, i32 6
  %colorspace89 = getelementptr inbounds %struct._Image, ptr %call41366, i64 0, i32 1
  br label %for.body60, !dbg !2407

for.body60:                                       ; preds = %for.body60.lr.ph, %cleanup
  %y.0321 = phi i64 [ 0, %for.body60.lr.ph ], [ %inc118, %cleanup ]
  %status.1320 = phi i32 [ %call45, %for.body60.lr.ph ], [ %status.3, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0321, metadata !2285, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %status.1320, metadata !2277, metadata !DIExpression()), !dbg !2306
  %cmp62 = icmp eq i32 %status.1320, 0, !dbg !2408
  br i1 %cmp62, label %cleanup, label %if.end64, !dbg !2410

if.end64:                                         ; preds = %for.body60
  %19 = load i64, ptr %columns49, align 8, !dbg !2411, !tbaa !1362
  %call66 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call56, i64 noundef 0, i64 noundef %y.0321, i64 noundef %19, i64 noundef 1, ptr noundef %exception) #21, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2299, metadata !DIExpression()), !dbg !2413
  %add67 = add nsw i64 %y.0321, %y_offset.1, !dbg !2414
  %20 = load i64, ptr %columns49, align 8, !dbg !2415, !tbaa !1362
  %call69 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call37, i64 noundef %x_offset.1, i64 noundef %add67, i64 noundef %20, i64 noundef 1, ptr noundef %exception) #21, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %call69, metadata !2303, metadata !DIExpression()), !dbg !2413
  %cmp70 = icmp eq ptr %call66, null, !dbg !2417
  %cmp71 = icmp eq ptr %call69, null
  %or.cond = select i1 %cmp70, i1 true, i1 %cmp71, !dbg !2419
  br i1 %or.cond, label %cleanup, label %if.end73, !dbg !2419

if.end73:                                         ; preds = %if.end64
  %call74 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call56) #17, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %call74, metadata !2297, metadata !DIExpression()), !dbg !2413
  %call75 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call37) #17, !dbg !2421
  call void @llvm.dbg.value(metadata ptr %call75, metadata !2301, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2305, metadata !DIExpression()), !dbg !2413
  %21 = load i64, ptr %columns49, align 8, !tbaa !1362
  call void @llvm.dbg.value(metadata ptr %call69, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2299, metadata !DIExpression()), !dbg !2413
  %cmp78285 = icmp sgt i64 %21, 0, !dbg !2422
  br i1 %cmp78285, label %for.body79.lr.ph, label %for.end106, !dbg !2425

for.body79.lr.ph:                                 ; preds = %if.end73
  %22 = load i32, ptr %matte83, align 8, !tbaa !2317
  %cmp84.not = icmp eq i32 %22, 0
  %23 = load i32, ptr %colorspace89, align 4, !tbaa !1238
  %cmp90 = icmp eq i32 %23, 12
  %cmp94.not = icmp eq ptr %call75, null
  %cmp97 = icmp eq ptr %call74, null
  br i1 %cmp90, label %for.body79.lr.ph.split.us, label %for.body79.lr.ph.split, !dbg !2426

for.body79.lr.ph.split.us:                        ; preds = %for.body79.lr.ph
  %24 = load i32, ptr %colorspace, align 4, !tbaa !1238
  %cmp92.us = icmp eq i32 %24, 12
  br i1 %cmp92.us, label %for.body79.us.us, label %for.body79.lr.ph.split.us.split, !dbg !2429

for.body79.us.us:                                 ; preds = %for.body79.lr.ph.split.us, %if.end102.us.us
  %x61.0288.us.us = phi i64 [ %inc105.us.us, %if.end102.us.us ], [ 0, %for.body79.lr.ph.split.us ]
  %q.0287.us.us = phi ptr [ %incdec.ptr103.us.us, %if.end102.us.us ], [ %call69, %for.body79.lr.ph.split.us ]
  %p.0286.us.us = phi ptr [ %incdec.ptr.us.us, %if.end102.us.us ], [ %call66, %for.body79.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %x61.0288.us.us, metadata !2305, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %q.0287.us.us, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %p.0286.us.us, metadata !2299, metadata !DIExpression()), !dbg !2413
  %red.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us, i64 0, i32 2, !dbg !2430
  %25 = load i16, ptr %red.us.us, align 2, !dbg !2430, !tbaa !2431
  %red80.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us, i64 0, i32 2, !dbg !2430
  store i16 %25, ptr %red80.us.us, align 2, !dbg !2430, !tbaa !2431
  %green.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us, i64 0, i32 1, !dbg !2432
  %26 = load i16, ptr %green.us.us, align 2, !dbg !2432, !tbaa !2433
  %green81.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us, i64 0, i32 1, !dbg !2432
  store i16 %26, ptr %green81.us.us, align 2, !dbg !2432, !tbaa !2433
  %27 = load i16, ptr %p.0286.us.us, align 2, !dbg !2434, !tbaa !2435
  store i16 %27, ptr %q.0287.us.us, align 2, !dbg !2434, !tbaa !2435
  %opacity.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us, i64 0, i32 3, !dbg !2436
  store i16 0, ptr %opacity.us.us, align 2, !dbg !2436, !tbaa !2437
  br i1 %cmp84.not, label %if.end88.us.us, label %if.then85.us.us, !dbg !2438

if.then85.us.us:                                  ; preds = %for.body79.us.us
  %opacity86.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us, i64 0, i32 3, !dbg !2439
  %28 = load i16, ptr %opacity86.us.us, align 2, !dbg !2439, !tbaa !2437
  store i16 %28, ptr %opacity.us.us, align 2, !dbg !2439, !tbaa !2437
  br label %if.end88.us.us, !dbg !2439

if.end88.us.us:                                   ; preds = %if.then85.us.us, %for.body79.us.us
  %add.ptr.us.us = getelementptr inbounds i16, ptr %call75, i64 %x61.0288.us.us, !dbg !2441
  br i1 %cmp94.not, label %if.end102.us.us, label %if.then95.us.us, !dbg !2444

if.then95.us.us:                                  ; preds = %if.end88.us.us
  br i1 %cmp97, label %cond.end.us.us, label %cond.false.us.us, !dbg !2441

cond.false.us.us:                                 ; preds = %if.then95.us.us
  %add.ptr96.us.us = getelementptr inbounds i16, ptr %call74, i64 %x61.0288.us.us, !dbg !2441
  %29 = load i16, ptr %add.ptr96.us.us, align 2, !dbg !2441, !tbaa !2445
  br label %cond.end.us.us, !dbg !2441

cond.end.us.us:                                   ; preds = %cond.false.us.us, %if.then95.us.us
  %cond.us.us = phi i16 [ %29, %cond.false.us.us ], [ 0, %if.then95.us.us ], !dbg !2441
  store i16 %cond.us.us, ptr %add.ptr.us.us, align 2, !dbg !2441, !tbaa !2445
  br label %if.end102.us.us, !dbg !2441

if.end102.us.us:                                  ; preds = %cond.end.us.us, %if.end88.us.us
  %incdec.ptr.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us, metadata !2299, metadata !DIExpression()), !dbg !2413
  %incdec.ptr103.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103.us.us, metadata !2303, metadata !DIExpression()), !dbg !2413
  %inc105.us.us = add nuw nsw i64 %x61.0288.us.us, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %inc105.us.us, metadata !2305, metadata !DIExpression()), !dbg !2413
  %exitcond342.not = icmp eq i64 %inc105.us.us, %21, !dbg !2422
  br i1 %exitcond342.not, label %for.end106, label %for.body79.us.us, !dbg !2425, !llvm.loop !2449

for.body79.lr.ph.split.us.split:                  ; preds = %for.body79.lr.ph.split.us
  br i1 %cmp84.not, label %for.body79.us.us305, label %for.body79.us, !dbg !2438

for.body79.us.us305:                              ; preds = %for.body79.lr.ph.split.us.split, %for.body79.us.us305
  %x61.0288.us.us306 = phi i64 [ %inc105.us.us317, %for.body79.us.us305 ], [ 0, %for.body79.lr.ph.split.us.split ]
  %q.0287.us.us307 = phi ptr [ %incdec.ptr103.us.us316, %for.body79.us.us305 ], [ %call69, %for.body79.lr.ph.split.us.split ]
  %p.0286.us.us308 = phi ptr [ %incdec.ptr.us.us315, %for.body79.us.us305 ], [ %call66, %for.body79.lr.ph.split.us.split ]
  call void @llvm.dbg.value(metadata i64 %x61.0288.us.us306, metadata !2305, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %q.0287.us.us307, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %p.0286.us.us308, metadata !2299, metadata !DIExpression()), !dbg !2413
  %red.us.us309 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us308, i64 0, i32 2, !dbg !2430
  %30 = load i16, ptr %red.us.us309, align 2, !dbg !2430, !tbaa !2431
  %red80.us.us310 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us307, i64 0, i32 2, !dbg !2430
  store i16 %30, ptr %red80.us.us310, align 2, !dbg !2430, !tbaa !2431
  %green.us.us311 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us308, i64 0, i32 1, !dbg !2432
  %31 = load i16, ptr %green.us.us311, align 2, !dbg !2432, !tbaa !2433
  %green81.us.us312 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us307, i64 0, i32 1, !dbg !2432
  store i16 %31, ptr %green81.us.us312, align 2, !dbg !2432, !tbaa !2433
  %32 = load i16, ptr %p.0286.us.us308, align 2, !dbg !2434, !tbaa !2435
  store i16 %32, ptr %q.0287.us.us307, align 2, !dbg !2434, !tbaa !2435
  %opacity.us.us313 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us307, i64 0, i32 3, !dbg !2436
  store i16 0, ptr %opacity.us.us313, align 2, !dbg !2436, !tbaa !2437
  %incdec.ptr.us.us315 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us.us308, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us315, metadata !2299, metadata !DIExpression()), !dbg !2413
  %incdec.ptr103.us.us316 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us.us307, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103.us.us316, metadata !2303, metadata !DIExpression()), !dbg !2413
  %inc105.us.us317 = add nuw nsw i64 %x61.0288.us.us306, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %inc105.us.us317, metadata !2305, metadata !DIExpression()), !dbg !2413
  %exitcond341.not = icmp eq i64 %inc105.us.us317, %21, !dbg !2422
  br i1 %exitcond341.not, label %for.end106, label %for.body79.us.us305, !dbg !2425, !llvm.loop !2449

for.body79.us:                                    ; preds = %for.body79.lr.ph.split.us.split, %for.body79.us
  %x61.0288.us = phi i64 [ %inc105.us, %for.body79.us ], [ 0, %for.body79.lr.ph.split.us.split ]
  %q.0287.us = phi ptr [ %incdec.ptr103.us, %for.body79.us ], [ %call69, %for.body79.lr.ph.split.us.split ]
  %p.0286.us = phi ptr [ %incdec.ptr.us, %for.body79.us ], [ %call66, %for.body79.lr.ph.split.us.split ]
  call void @llvm.dbg.value(metadata i64 %x61.0288.us, metadata !2305, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %q.0287.us, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %p.0286.us, metadata !2299, metadata !DIExpression()), !dbg !2413
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us, i64 0, i32 2, !dbg !2430
  %33 = load i16, ptr %red.us, align 2, !dbg !2430, !tbaa !2431
  %red80.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us, i64 0, i32 2, !dbg !2430
  store i16 %33, ptr %red80.us, align 2, !dbg !2430, !tbaa !2431
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us, i64 0, i32 1, !dbg !2432
  %34 = load i16, ptr %green.us, align 2, !dbg !2432, !tbaa !2433
  %green81.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us, i64 0, i32 1, !dbg !2432
  store i16 %34, ptr %green81.us, align 2, !dbg !2432, !tbaa !2433
  %35 = load i16, ptr %p.0286.us, align 2, !dbg !2434, !tbaa !2435
  store i16 %35, ptr %q.0287.us, align 2, !dbg !2434, !tbaa !2435
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us, i64 0, i32 3, !dbg !2436
  store i16 0, ptr %opacity.us, align 2, !dbg !2436, !tbaa !2437
  %opacity86.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us, i64 0, i32 3, !dbg !2439
  %36 = load i16, ptr %opacity86.us, align 2, !dbg !2439, !tbaa !2437
  store i16 %36, ptr %opacity.us, align 2, !dbg !2439, !tbaa !2437
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2299, metadata !DIExpression()), !dbg !2413
  %incdec.ptr103.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103.us, metadata !2303, metadata !DIExpression()), !dbg !2413
  %inc105.us = add nuw nsw i64 %x61.0288.us, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %inc105.us, metadata !2305, metadata !DIExpression()), !dbg !2413
  %exitcond340.not = icmp eq i64 %inc105.us, %21, !dbg !2422
  br i1 %exitcond340.not, label %for.end106, label %for.body79.us, !dbg !2425, !llvm.loop !2449

for.body79.lr.ph.split:                           ; preds = %for.body79.lr.ph
  br i1 %cmp84.not, label %for.body79.us291, label %for.body79, !dbg !2438

for.body79.us291:                                 ; preds = %for.body79.lr.ph.split, %for.body79.us291
  %x61.0288.us292 = phi i64 [ %inc105.us303, %for.body79.us291 ], [ 0, %for.body79.lr.ph.split ]
  %q.0287.us293 = phi ptr [ %incdec.ptr103.us302, %for.body79.us291 ], [ %call69, %for.body79.lr.ph.split ]
  %p.0286.us294 = phi ptr [ %incdec.ptr.us301, %for.body79.us291 ], [ %call66, %for.body79.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x61.0288.us292, metadata !2305, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %q.0287.us293, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %p.0286.us294, metadata !2299, metadata !DIExpression()), !dbg !2413
  %red.us295 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us294, i64 0, i32 2, !dbg !2430
  %37 = load i16, ptr %red.us295, align 2, !dbg !2430, !tbaa !2431
  %red80.us296 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us293, i64 0, i32 2, !dbg !2430
  store i16 %37, ptr %red80.us296, align 2, !dbg !2430, !tbaa !2431
  %green.us297 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us294, i64 0, i32 1, !dbg !2432
  %38 = load i16, ptr %green.us297, align 2, !dbg !2432, !tbaa !2433
  %green81.us298 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us293, i64 0, i32 1, !dbg !2432
  store i16 %38, ptr %green81.us298, align 2, !dbg !2432, !tbaa !2433
  %39 = load i16, ptr %p.0286.us294, align 2, !dbg !2434, !tbaa !2435
  store i16 %39, ptr %q.0287.us293, align 2, !dbg !2434, !tbaa !2435
  %opacity.us299 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us293, i64 0, i32 3, !dbg !2436
  store i16 0, ptr %opacity.us299, align 2, !dbg !2436, !tbaa !2437
  %incdec.ptr.us301 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286.us294, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us301, metadata !2299, metadata !DIExpression()), !dbg !2413
  %incdec.ptr103.us302 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287.us293, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103.us302, metadata !2303, metadata !DIExpression()), !dbg !2413
  %inc105.us303 = add nuw nsw i64 %x61.0288.us292, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %inc105.us303, metadata !2305, metadata !DIExpression()), !dbg !2413
  %exitcond339.not = icmp eq i64 %inc105.us303, %21, !dbg !2422
  br i1 %exitcond339.not, label %for.end106, label %for.body79.us291, !dbg !2425, !llvm.loop !2449

for.body79:                                       ; preds = %for.body79.lr.ph.split, %for.body79
  %x61.0288 = phi i64 [ %inc105, %for.body79 ], [ 0, %for.body79.lr.ph.split ]
  %q.0287 = phi ptr [ %incdec.ptr103, %for.body79 ], [ %call69, %for.body79.lr.ph.split ]
  %p.0286 = phi ptr [ %incdec.ptr, %for.body79 ], [ %call66, %for.body79.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x61.0288, metadata !2305, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %q.0287, metadata !2303, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %p.0286, metadata !2299, metadata !DIExpression()), !dbg !2413
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0286, i64 0, i32 2, !dbg !2430
  %40 = load i16, ptr %red, align 2, !dbg !2430, !tbaa !2431
  %red80 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287, i64 0, i32 2, !dbg !2430
  store i16 %40, ptr %red80, align 2, !dbg !2430, !tbaa !2431
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0286, i64 0, i32 1, !dbg !2432
  %41 = load i16, ptr %green, align 2, !dbg !2432, !tbaa !2433
  %green81 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287, i64 0, i32 1, !dbg !2432
  store i16 %41, ptr %green81, align 2, !dbg !2432, !tbaa !2433
  %42 = load i16, ptr %p.0286, align 2, !dbg !2434, !tbaa !2435
  store i16 %42, ptr %q.0287, align 2, !dbg !2434, !tbaa !2435
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.0287, i64 0, i32 3, !dbg !2436
  store i16 0, ptr %opacity, align 2, !dbg !2436, !tbaa !2437
  %opacity86 = getelementptr inbounds %struct._PixelPacket, ptr %p.0286, i64 0, i32 3, !dbg !2439
  %43 = load i16, ptr %opacity86, align 2, !dbg !2439, !tbaa !2437
  store i16 %43, ptr %opacity, align 2, !dbg !2439, !tbaa !2437
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0286, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2299, metadata !DIExpression()), !dbg !2413
  %incdec.ptr103 = getelementptr inbounds %struct._PixelPacket, ptr %q.0287, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !2303, metadata !DIExpression()), !dbg !2413
  %inc105 = add nuw nsw i64 %x61.0288, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !2305, metadata !DIExpression()), !dbg !2413
  %exitcond.not = icmp eq i64 %inc105, %21, !dbg !2422
  br i1 %exitcond.not, label %for.end106, label %for.body79, !dbg !2425, !llvm.loop !2449

for.end106:                                       ; preds = %for.body79, %for.body79.us291, %for.body79.us, %for.body79.us.us305, %if.end102.us.us, %if.end73
  %call107 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call37, ptr noundef %exception) #21, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %call107, metadata !2293, metadata !DIExpression()), !dbg !2413
  %cmp108 = icmp eq i32 %call107, 0, !dbg !2452
  %spec.select259 = select i1 %cmp108, i32 0, i32 %status.1320, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %spec.select259, metadata !2277, metadata !DIExpression()), !dbg !2306
  br label %cleanup, !dbg !2455

cleanup:                                          ; preds = %if.end64, %for.body60, %for.end106
  %status.3 = phi i32 [ %spec.select259, %for.end106 ], [ 0, %for.body60 ], [ 0, %if.end64 ], !dbg !2379
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2277, metadata !DIExpression()), !dbg !2306
  %inc118 = add nuw nsw i64 %y.0321, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %inc118, metadata !2285, metadata !DIExpression()), !dbg !2306
  %44 = load i64, ptr %rows50, align 8, !dbg !2405, !tbaa !1367
  %cmp59 = icmp slt i64 %inc118, %44, !dbg !2406
  br i1 %cmp59, label %for.body60, label %for.end119, !dbg !2407, !llvm.loop !2457

for.end119:                                       ; preds = %cleanup, %if.end55
  %status.1.lcssa = phi i32 [ %call45, %if.end55 ], [ %status.3, %cleanup ], !dbg !2459
  %call120 = call ptr @DestroyCacheView(ptr noundef %call56) #17, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %call120, metadata !2287, metadata !DIExpression()), !dbg !2379
  br i1 %cmp51.not, label %if.then123, label %if.else126, !dbg !2461

if.then123:                                       ; preds = %for.end119
  %45 = load i64, ptr %columns49, align 8, !dbg !2462, !tbaa !1362
  %add125 = add nsw i64 %45, %x_offset.1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %add125, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2306
  br label %if.end129, !dbg !2466

if.else126:                                       ; preds = %for.end119
  call void @llvm.dbg.value(metadata i64 0, metadata !2284, metadata !DIExpression()), !dbg !2306
  %46 = load i64, ptr %rows50, align 8, !dbg !2467, !tbaa !1367
  %add128 = add nsw i64 %46, %y_offset.1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %add128, metadata !2286, metadata !DIExpression()), !dbg !2306
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then123
  %x_offset.2 = phi i64 [ %add125, %if.then123 ], [ 0, %if.else126 ], !dbg !2470
  %y_offset.2 = phi i64 [ 0, %if.then123 ], [ %add128, %if.else126 ], !dbg !2470
  call void @llvm.dbg.value(metadata i64 %y_offset.2, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %x_offset.2, metadata !2284, metadata !DIExpression()), !dbg !2306
  %call130 = call ptr @DestroyImage(ptr noundef nonnull %call41366), !dbg !2471
  call void @llvm.dbg.value(metadata ptr %call130, metadata !2291, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %call25, metadata !2472, metadata !DIExpression()) #17, !dbg !2482
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !2478, metadata !DIExpression()) #17, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %n.0325365, metadata !2479, metadata !DIExpression()) #17, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %number_images.0.lcssa, metadata !2480, metadata !DIExpression()) #17, !dbg !2482
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2481, metadata !DIExpression()) #17, !dbg !2485
  %47 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2486, !tbaa !1475
  %cmp.i = icmp eq ptr %47, null, !dbg !2488
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2489

SetImageProgress.exit.thread:                     ; preds = %if.end129
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2292, metadata !DIExpression()), !dbg !2379
  br label %for.inc142, !dbg !2491

SetImageProgress.exit:                            ; preds = %if.end129
  %call.i260 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i) #17, !dbg !2492
  %48 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2493, !tbaa !1475
  %49 = load ptr, ptr %client_data.i, align 8, !dbg !2494, !tbaa !1480
  %call4.i = call i32 %48(ptr noundef nonnull %message.i, i64 noundef %n.0325365, i64 noundef %number_images.0.lcssa, ptr noundef %49) #17, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2292, metadata !DIExpression()), !dbg !2379
  %cmp132 = icmp eq i32 %call4.i, 0, !dbg !2496
  br i1 %cmp132, label %for.end144, label %for.inc142, !dbg !2491

for.inc142:                                       ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  %call136 = call ptr @GetNextImageInList(ptr noundef %next.1327364) #17, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %y_offset.2, metadata !2286, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %x_offset.2, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %call136, metadata !2280, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %status.1.lcssa, metadata !2277, metadata !DIExpression()), !dbg !2306
  %inc143 = add nuw nsw i64 %n.0325365, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %inc143, metadata !2278, metadata !DIExpression()), !dbg !2306
  %exitcond343.not = icmp eq i64 %inc143, %number_images.0.lcssa, !dbg !2374
  br i1 %exitcond343.not, label %for.end144, label %for.body40, !dbg !2375, !llvm.loop !2383

for.end144:                                       ; preds = %SetImageProgress.exit, %for.body40, %for.inc142, %for.body40.lr.ph
  %status.5 = phi i32 [ 1, %for.body40.lr.ph ], [ %status.1.lcssa, %for.inc142 ], [ %status.1.lcssa, %for.body40 ], [ %status.1.lcssa, %SetImageProgress.exit ], !dbg !2500
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !2277, metadata !DIExpression()), !dbg !2306
  %call145 = call ptr @DestroyCacheView(ptr noundef %call37) #17, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %call145, metadata !2271, metadata !DIExpression()), !dbg !2306
  %cmp146 = icmp eq i32 %status.5, 0, !dbg !2501
  br i1 %cmp146, label %if.then148, label %cleanup151, !dbg !2377

if.then148:                                       ; preds = %for.end144.thread, %for.end144
  %call149 = call ptr @DestroyImage(ptr noundef nonnull %call25), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %call149, metadata !2275, metadata !DIExpression()), !dbg !2306
  br label %cleanup151, !dbg !2504

cleanup151:                                       ; preds = %for.end144.thread344, %for.end144, %if.then148, %for.end, %if.then31
  %retval.0 = phi ptr [ null, %if.then31 ], [ null, %for.end ], [ %call149, %if.then148 ], [ %call25, %for.end144 ], [ %call25, %for.end144.thread344 ], !dbg !2306
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #17, !dbg !2505
  ret ptr %retval.0, !dbg !2505
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, i32 noundef %detach, ptr noundef %exception) local_unnamed_addr #0 !dbg !2506 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2510, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2511, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2512, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %detach, metadata !2513, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2514, metadata !DIExpression()), !dbg !2518
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2519
  %0 = load i32, ptr %debug, align 8, !dbg !2519, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !2521
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2522

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2523
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !2524
  br label %if.end, !dbg !2525

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 13240) #18, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2516, metadata !DIExpression()), !dbg !2518
  %cmp2 = icmp eq ptr %call1, null, !dbg !2527
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2529

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2530
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 806, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #17, !dbg !2530
  br label %cleanup, !dbg !2530

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 13240) #17, !dbg !2532
  %signature = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 66, !dbg !2533
  store i64 2880220587, ptr %signature, align 8, !dbg !2534, !tbaa !1333
  %1 = load i32, ptr %image, align 8, !dbg !2535, !tbaa !1217
  store i32 %1, ptr %call1, align 8, !dbg !2536, !tbaa !1217
  %channels = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 81, !dbg !2537
  %2 = load i64, ptr %channels, align 8, !dbg !2537, !tbaa !2538
  %channels10 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 81, !dbg !2539
  store i64 %2, ptr %channels10, align 8, !dbg !2540, !tbaa !2538
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2541
  %3 = load i32, ptr %colorspace, align 4, !dbg !2541, !tbaa !1238
  %colorspace11 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 1, !dbg !2542
  store i32 %3, ptr %colorspace11, align 4, !dbg !2543, !tbaa !1238
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2544
  %4 = load i32, ptr %matte, align 8, !dbg !2544, !tbaa !2317
  %matte12 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 6, !dbg !2545
  store i32 %4, ptr %matte12, align 8, !dbg !2546, !tbaa !2317
  %columns13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2547
  %5 = load i64, ptr %columns13, align 8, !dbg !2547, !tbaa !1362
  %columns14 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !2548
  store i64 %5, ptr %columns14, align 8, !dbg !2549, !tbaa !1362
  %rows15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2550
  %6 = load i64, ptr %rows15, align 8, !dbg !2550, !tbaa !1367
  %rows16 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !2551
  store i64 %6, ptr %rows16, align 8, !dbg !2552, !tbaa !1367
  %dither = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 78, !dbg !2553
  %7 = load i32, ptr %dither, align 4, !dbg !2553, !tbaa !1463
  %dither17 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 78, !dbg !2554
  store i32 %7, ptr %dither17, align 4, !dbg !2555, !tbaa !1463
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !2556
  %8 = load ptr, ptr %colormap, align 8, !dbg !2556, !tbaa !2558
  %cmp18.not = icmp eq ptr %8, null, !dbg !2559
  br i1 %cmp18.not, label %if.end34, label %if.then19, !dbg !2560

if.then19:                                        ; preds = %if.end7
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !2561
  %9 = load i64, ptr %colors, align 8, !dbg !2561, !tbaa !1760
  %colors20 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 10, !dbg !2563
  store i64 %9, ptr %colors20, align 8, !dbg !2564, !tbaa !1760
  %10 = load i64, ptr %colors, align 8, !dbg !2565, !tbaa !1760
  call void @llvm.dbg.value(metadata i64 %10, metadata !2517, metadata !DIExpression()), !dbg !2518
  %call22 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #22, !dbg !2566
  %colormap23 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 11, !dbg !2567
  store ptr %call22, ptr %colormap23, align 8, !dbg !2568, !tbaa !2558
  %cmp25 = icmp eq ptr %call22, null, !dbg !2569
  br i1 %cmp25, label %if.then26, label %if.end30, !dbg !2571

if.then26:                                        ; preds = %if.then19
  %filename27 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2572
  %call29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 826, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename27) #17, !dbg !2572
  br label %cleanup, !dbg !2572

if.end30:                                         ; preds = %if.then19
  %11 = load ptr, ptr %colormap, align 8, !dbg !2574, !tbaa !2558
  %mul = shl i64 %10, 3, !dbg !2575
  %call33 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call22, ptr noundef %11, i64 noundef %mul) #17, !dbg !2576
  br label %if.end34, !dbg !2577

if.end34:                                         ; preds = %if.end30, %if.end7
  %call35 = tail call i32 @CloneImageProfiles(ptr noundef nonnull %call1, ptr noundef nonnull %image) #17, !dbg !2578
  %call36 = tail call i32 @CloneImageProperties(ptr noundef nonnull %call1, ptr noundef nonnull %image) #17, !dbg !2579
  %call37 = tail call i32 @CloneImageArtifacts(ptr noundef nonnull %call1, ptr noundef nonnull %image) #17, !dbg !2580
  %timer = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 46, !dbg !2581
  tail call void @GetTimerInfo(ptr noundef nonnull %timer) #17, !dbg !2582
  %exception38 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !2583
  tail call void @GetExceptionInfo(ptr noundef nonnull %exception38) #17, !dbg !2584
  %exception40 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2585
  tail call void @InheritException(ptr noundef nonnull %exception38, ptr noundef nonnull %exception40) #17, !dbg !2586
  %ascii85 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51, !dbg !2587
  %12 = load ptr, ptr %ascii85, align 8, !dbg !2587, !tbaa !2589
  %cmp41.not = icmp eq ptr %12, null, !dbg !2590
  br i1 %cmp41.not, label %if.end43, label %if.then42, !dbg !2591

if.then42:                                        ; preds = %if.end34
  tail call void @Ascii85Initialize(ptr noundef nonnull %call1) #17, !dbg !2592
  br label %if.end43, !dbg !2592

if.end43:                                         ; preds = %if.then42, %if.end34
  %magick_columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 56, !dbg !2593
  %13 = load i64, ptr %magick_columns, align 8, !dbg !2593, !tbaa !2594
  %magick_columns44 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 56, !dbg !2595
  store i64 %13, ptr %magick_columns44, align 8, !dbg !2596, !tbaa !2594
  %magick_rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57, !dbg !2597
  %14 = load i64, ptr %magick_rows, align 8, !dbg !2597, !tbaa !2598
  %magick_rows45 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 57, !dbg !2599
  store i64 %14, ptr %magick_rows45, align 8, !dbg !2600, !tbaa !2598
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2601
  %15 = load i32, ptr %type, align 8, !dbg !2601, !tbaa !2033
  %type46 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 77, !dbg !2602
  store i32 %15, ptr %type46, align 8, !dbg !2603, !tbaa !2033
  %magick_filename = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 54, !dbg !2604
  %magick_filename48 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 54, !dbg !2605
  %call50 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick_filename, ptr noundef nonnull %magick_filename48, i64 noundef 4096) #17, !dbg !2606
  %magick = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 55, !dbg !2607
  %magick52 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !2608
  %call54 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick52, i64 noundef 4096) #17, !dbg !2609
  %filename55 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 53, !dbg !2610
  %filename57 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2611
  %call59 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename55, ptr noundef nonnull %filename57, i64 noundef 4096) #17, !dbg !2612
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !2613
  %16 = load ptr, ptr %progress_monitor, align 8, !dbg !2613, !tbaa !1475
  %progress_monitor60 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 47, !dbg !2614
  store ptr %16, ptr %progress_monitor60, align 8, !dbg !2615, !tbaa !1475
  %client_data = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2616
  %17 = load ptr, ptr %client_data, align 8, !dbg !2616, !tbaa !1480
  %client_data61 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 48, !dbg !2617
  store ptr %17, ptr %client_data61, align 8, !dbg !2618, !tbaa !1480
  %reference_count = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 60, !dbg !2619
  store volatile i64 1, ptr %reference_count, align 8, !dbg !2620, !tbaa !1326
  %next = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 69, !dbg !2621
  %18 = load ptr, ptr %next, align 8, !dbg !2621, !tbaa !2219
  %next62 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 69, !dbg !2622
  store ptr %18, ptr %next62, align 8, !dbg !2623, !tbaa !2219
  %previous = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 67, !dbg !2624
  %19 = load ptr, ptr %previous, align 8, !dbg !2624, !tbaa !2252
  %previous63 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 67, !dbg !2625
  store ptr %19, ptr %previous63, align 8, !dbg !2626, !tbaa !2252
  %call64 = tail call ptr @NewImageList() #17, !dbg !2627
  %list = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 68, !dbg !2628
  store ptr %call64, ptr %list, align 8, !dbg !2629, !tbaa !2630
  %call65 = tail call ptr @NewImageList() #17, !dbg !2631
  %clip_mask = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 38, !dbg !2632
  store ptr %call65, ptr %clip_mask, align 8, !dbg !2633, !tbaa !2634
  %call66 = tail call ptr @NewImageList() #17, !dbg !2635
  %mask = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 73, !dbg !2636
  store ptr %call66, ptr %mask, align 8, !dbg !2637, !tbaa !2638
  %cmp67 = icmp eq i32 %detach, 0, !dbg !2639
  br i1 %cmp67, label %if.then68, label %if.else, !dbg !2641

if.then68:                                        ; preds = %if.end43
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2642
  %20 = load ptr, ptr %blob, align 8, !dbg !2642, !tbaa !1315
  %call69 = tail call ptr @ReferenceBlob(ptr noundef %20) #17, !dbg !2643
  br label %if.end77, !dbg !2644

if.else:                                          ; preds = %if.end43
  %call71 = tail call ptr @NewImageList() #17, !dbg !2645
  store ptr %call71, ptr %next62, align 8, !dbg !2647, !tbaa !2219
  %call73 = tail call ptr @NewImageList() #17, !dbg !2648
  store ptr %call73, ptr %previous63, align 8, !dbg !2649, !tbaa !2252
  %call75 = tail call ptr @CloneBlobInfo(ptr noundef null) #17, !dbg !2650
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then68
  %call75.sink = phi ptr [ %call69, %if.then68 ], [ %call75, %if.else ], !dbg !2651
  %21 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 52, !dbg !2652
  store ptr %call75.sink, ptr %21, align 8, !dbg !2653
  %ping = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 80, !dbg !2654
  %22 = load i32, ptr %ping, align 8, !dbg !2654, !tbaa !1307
  %ping78 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 80, !dbg !2655
  store i32 %22, ptr %ping78, align 8, !dbg !2656, !tbaa !1307
  %call79 = tail call i32 @IsEventLogging() #17, !dbg !2657
  %debug80 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 59, !dbg !2658
  store i32 %call79, ptr %debug80, align 8, !dbg !2659, !tbaa !1323
  %call81 = tail call ptr @AllocateSemaphoreInfo() #17, !dbg !2660
  %semaphore = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 61, !dbg !2661
  store ptr %call81, ptr %semaphore, align 8, !dbg !2662, !tbaa !1330
  %23 = or i64 %rows, %columns, !dbg !2663
  %24 = icmp eq i64 %23, 0, !dbg !2663
  br i1 %24, label %if.then84, label %if.end113, !dbg !2663

if.then84:                                        ; preds = %if.end77
  %montage = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 20, !dbg !2665
  %25 = load ptr, ptr %montage, align 8, !dbg !2665, !tbaa !2668
  %cmp85.not = icmp eq ptr %25, null, !dbg !2669
  br i1 %cmp85.not, label %if.end90, label %if.then86, !dbg !2670

if.then86:                                        ; preds = %if.then84
  %montage87 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 20, !dbg !2671
  %call89 = tail call ptr @CloneString(ptr noundef nonnull %montage87, ptr noundef nonnull %25) #17, !dbg !2672
  br label %if.end90, !dbg !2673

if.end90:                                         ; preds = %if.then86, %if.then84
  %directory = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 21, !dbg !2674
  %26 = load ptr, ptr %directory, align 8, !dbg !2674, !tbaa !2676
  %cmp91.not = icmp eq ptr %26, null, !dbg !2677
  br i1 %cmp91.not, label %if.end96, label %if.then92, !dbg !2678

if.then92:                                        ; preds = %if.end90
  %directory93 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 21, !dbg !2679
  %call95 = tail call ptr @CloneString(ptr noundef nonnull %directory93, ptr noundef nonnull %26) #17, !dbg !2680
  br label %if.end96, !dbg !2681

if.end96:                                         ; preds = %if.then92, %if.end90
  %clip_mask97 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !2682
  %27 = load ptr, ptr %clip_mask97, align 8, !dbg !2682, !tbaa !2634
  %cmp98.not = icmp eq ptr %27, null, !dbg !2684
  br i1 %cmp98.not, label %if.end103, label %if.then99, !dbg !2685

if.then99:                                        ; preds = %if.end96
  %call101 = tail call ptr @CloneImage(ptr noundef nonnull %27, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2686
  store ptr %call101, ptr %clip_mask, align 8, !dbg !2687, !tbaa !2634
  br label %if.end103, !dbg !2688

if.end103:                                        ; preds = %if.then99, %if.end96
  %mask104 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 73, !dbg !2689
  %28 = load ptr, ptr %mask104, align 8, !dbg !2689, !tbaa !2638
  %cmp105.not = icmp eq ptr %28, null, !dbg !2691
  br i1 %cmp105.not, label %if.end110, label %if.then106, !dbg !2692

if.then106:                                       ; preds = %if.end103
  %call108 = tail call ptr @CloneImage(ptr noundef nonnull %28, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2693
  store ptr %call108, ptr %mask, align 8, !dbg !2694, !tbaa !2638
  br label %if.end110, !dbg !2695

if.end110:                                        ; preds = %if.then106, %if.end103
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !2696
  %29 = load ptr, ptr %cache, align 8, !dbg !2696, !tbaa !1311
  %call111 = tail call ptr @ReferencePixelCache(ptr noundef %29) #17, !dbg !2697
  %cache112 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 49, !dbg !2698
  store ptr %call111, ptr %cache112, align 8, !dbg !2699, !tbaa !1311
  br label %cleanup, !dbg !2700

if.end113:                                        ; preds = %if.end77
  %30 = load i64, ptr %columns13, align 8, !dbg !2701, !tbaa !1362
  %cmp115 = icmp eq i64 %30, %columns, !dbg !2703
  br i1 %cmp115, label %land.lhs.true116, label %if.end134, !dbg !2704

land.lhs.true116:                                 ; preds = %if.end113
  %31 = load i64, ptr %rows15, align 8, !dbg !2705, !tbaa !1367
  %cmp118 = icmp eq i64 %31, %rows, !dbg !2706
  br i1 %cmp118, label %if.then119, label %if.end134, !dbg !2707

if.then119:                                       ; preds = %land.lhs.true116
  %clip_mask120 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !2708
  %32 = load ptr, ptr %clip_mask120, align 8, !dbg !2708, !tbaa !2634
  %cmp121.not = icmp eq ptr %32, null, !dbg !2711
  br i1 %cmp121.not, label %if.end126, label %if.then122, !dbg !2712

if.then122:                                       ; preds = %if.then119
  %call124 = tail call ptr @CloneImage(ptr noundef nonnull %32, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2713
  store ptr %call124, ptr %clip_mask, align 8, !dbg !2714, !tbaa !2634
  br label %if.end126, !dbg !2715

if.end126:                                        ; preds = %if.then122, %if.then119
  %mask127 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 73, !dbg !2716
  %33 = load ptr, ptr %mask127, align 8, !dbg !2716, !tbaa !2638
  %cmp128.not = icmp eq ptr %33, null, !dbg !2718
  br i1 %cmp128.not, label %if.end134, label %if.then129, !dbg !2719

if.then129:                                       ; preds = %if.end126
  %call131 = tail call ptr @CloneImage(ptr noundef nonnull %33, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !2720
  store ptr %call131, ptr %mask, align 8, !dbg !2721, !tbaa !2638
  br label %if.end134, !dbg !2722

if.end134:                                        ; preds = %if.end126, %if.then129, %land.lhs.true116, %if.end113
  %conv = uitofp i64 %columns to double, !dbg !2723
  %34 = load i64, ptr %columns13, align 8, !dbg !2724, !tbaa !1362
  %conv136 = uitofp i64 %34 to double, !dbg !2725
  %div = fdiv double %conv, %conv136, !dbg !2726
  call void @llvm.dbg.value(metadata double %div, metadata !2515, metadata !DIExpression()), !dbg !2518
  %page = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !2727
  %35 = load i64, ptr %page, align 8, !dbg !2728, !tbaa !2729
  %conv137 = uitofp i64 %35 to double, !dbg !2730
  %36 = tail call double @llvm.fmuladd.f64(double %div, double %conv137, double 5.000000e-01), !dbg !2731
  %37 = tail call double @llvm.floor.f64(double %36), !dbg !2732
  %conv139 = fptoui double %37 to i64, !dbg !2733
  %page140 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, !dbg !2734
  store i64 %conv139, ptr %page140, align 8, !dbg !2735, !tbaa !2729
  %x = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !2736
  %38 = load i64, ptr %x, align 8, !dbg !2736, !tbaa !2737
  %conv143 = sitofp i64 %38 to double, !dbg !2738
  %39 = tail call double @llvm.fmuladd.f64(double %div, double %conv143, double -5.000000e-01), !dbg !2739
  %40 = tail call double @llvm.ceil.f64(double %39), !dbg !2740
  %conv145 = fptosi double %40 to i64, !dbg !2741
  %x147 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 2, !dbg !2742
  store i64 %conv145, ptr %x147, align 8, !dbg !2743, !tbaa !2737
  %x148 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 74, i32 2, !dbg !2744
  %41 = load i64, ptr %x148, align 8, !dbg !2744, !tbaa !2745
  %conv149 = sitofp i64 %41 to double, !dbg !2746
  %42 = tail call double @llvm.fmuladd.f64(double %div, double %conv149, double -5.000000e-01), !dbg !2747
  %43 = tail call double @llvm.ceil.f64(double %42), !dbg !2748
  %conv151 = fptosi double %43 to i64, !dbg !2749
  %x153 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 74, i32 2, !dbg !2750
  store i64 %conv151, ptr %x153, align 8, !dbg !2751, !tbaa !2745
  %conv154 = uitofp i64 %rows to double, !dbg !2752
  %44 = load i64, ptr %rows15, align 8, !dbg !2753, !tbaa !1367
  %conv156 = uitofp i64 %44 to double, !dbg !2754
  %div157 = fdiv double %conv154, %conv156, !dbg !2755
  call void @llvm.dbg.value(metadata double %div157, metadata !2515, metadata !DIExpression()), !dbg !2518
  %height = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !2756
  %45 = load i64, ptr %height, align 8, !dbg !2756, !tbaa !2757
  %conv159 = uitofp i64 %45 to double, !dbg !2758
  %46 = tail call double @llvm.fmuladd.f64(double %div157, double %conv159, double 5.000000e-01), !dbg !2759
  %47 = tail call double @llvm.floor.f64(double %46), !dbg !2760
  %conv161 = fptoui double %47 to i64, !dbg !2761
  %height163 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 1, !dbg !2762
  store i64 %conv161, ptr %height163, align 8, !dbg !2763, !tbaa !2757
  %y = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2764
  %48 = load i64, ptr %y, align 8, !dbg !2764, !tbaa !2765
  %conv165 = sitofp i64 %48 to double, !dbg !2766
  %49 = tail call double @llvm.fmuladd.f64(double %div157, double %conv165, double -5.000000e-01), !dbg !2767
  %50 = tail call double @llvm.ceil.f64(double %49), !dbg !2768
  %conv167 = fptosi double %50 to i64, !dbg !2769
  %y169 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 26, i32 3, !dbg !2770
  store i64 %conv167, ptr %y169, align 8, !dbg !2771, !tbaa !2765
  %y171 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 74, i32 3, !dbg !2772
  %51 = load i64, ptr %y171, align 8, !dbg !2772, !tbaa !2773
  %conv172 = sitofp i64 %51 to double, !dbg !2774
  %52 = tail call double @llvm.fmuladd.f64(double %div157, double %conv172, double -5.000000e-01), !dbg !2775
  %53 = tail call double @llvm.ceil.f64(double %52), !dbg !2776
  %conv174 = fptosi double %53 to i64, !dbg !2777
  %y176 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 74, i32 3, !dbg !2778
  store i64 %conv174, ptr %y176, align 8, !dbg !2779, !tbaa !2773
  store i64 %columns, ptr %columns14, align 8, !dbg !2780, !tbaa !1362
  store i64 %rows, ptr %rows16, align 8, !dbg !2781, !tbaa !1367
  %cache179 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !2782
  %54 = load ptr, ptr %cache179, align 8, !dbg !2782, !tbaa !1311
  %call180 = tail call ptr @ClonePixelCache(ptr noundef %54) #17, !dbg !2783
  %cache181 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 49, !dbg !2784
  store ptr %call180, ptr %cache181, align 8, !dbg !2785, !tbaa !1311
  br label %cleanup, !dbg !2786

cleanup:                                          ; preds = %if.end134, %if.end110, %if.then26, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then26 ], [ %call1, %if.end110 ], [ %call1, %if.end134 ], !dbg !2518
  ret ptr %retval.0, !dbg !2787
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageStorageClass(ptr noundef %image, i32 noundef %storage_class) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2351, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %storage_class, metadata !2357, metadata !DIExpression()), !dbg !2788
  store i32 %storage_class, ptr %image, align 8, !dbg !2789, !tbaa !1217
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2790
  %call = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef nonnull %exception) #17, !dbg !2791
  ret i32 %call, !dbg !2792
}

declare !dbg !2793 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyImage(ptr noundef %image) local_unnamed_addr #0 !dbg !2798 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2802, metadata !DIExpression()), !dbg !2804
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2805
  %0 = load i32, ptr %debug, align 8, !dbg !2805, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !2807
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2808

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2809
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1031, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !2810
  br label %if.end, !dbg !2811

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression()), !dbg !2804
  %semaphore = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 61, !dbg !2812
  %1 = load ptr, ptr %semaphore, align 8, !dbg !2812, !tbaa !1330
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !2813
  %reference_count = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 60, !dbg !2814
  %2 = load volatile i64, ptr %reference_count, align 8, !dbg !2815, !tbaa !1326
  %dec = add nsw i64 %2, -1, !dbg !2815
  store volatile i64 %dec, ptr %reference_count, align 8, !dbg !2815, !tbaa !1326
  %3 = load volatile i64, ptr %reference_count, align 8, !dbg !2816, !tbaa !1326
  %cmp2 = icmp eq i64 %3, 0, !dbg !2818
  call void @llvm.dbg.value(metadata i32 undef, metadata !2803, metadata !DIExpression()), !dbg !2804
  %4 = load ptr, ptr %semaphore, align 8, !dbg !2819, !tbaa !1330
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #17, !dbg !2820
  br i1 %cmp2, label %if.end8, label %cleanup, !dbg !2821

if.end8:                                          ; preds = %if.end
  tail call void @DestroyImagePixels(ptr noundef nonnull %image) #17, !dbg !2822
  %clip_mask = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !2823
  %5 = load ptr, ptr %clip_mask, align 8, !dbg !2823, !tbaa !2634
  %cmp9.not = icmp eq ptr %5, null, !dbg !2825
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !2826

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyImage(ptr noundef nonnull %5), !dbg !2827
  store ptr %call12, ptr %clip_mask, align 8, !dbg !2828, !tbaa !2634
  br label %if.end14, !dbg !2829

if.end14:                                         ; preds = %if.then10, %if.end8
  %mask = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 73, !dbg !2830
  %6 = load ptr, ptr %mask, align 8, !dbg !2830, !tbaa !2638
  %cmp15.not = icmp eq ptr %6, null, !dbg !2832
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !2833

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @DestroyImage(ptr noundef nonnull %6), !dbg !2834
  store ptr %call18, ptr %mask, align 8, !dbg !2835, !tbaa !2638
  br label %if.end20, !dbg !2836

if.end20:                                         ; preds = %if.then16, %if.end14
  %montage = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 20, !dbg !2837
  %7 = load ptr, ptr %montage, align 8, !dbg !2837, !tbaa !2668
  %cmp21.not = icmp eq ptr %7, null, !dbg !2839
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !2840

if.then22:                                        ; preds = %if.end20
  %call24 = tail call ptr @DestroyString(ptr noundef nonnull %7) #17, !dbg !2841
  store ptr %call24, ptr %montage, align 8, !dbg !2842, !tbaa !2668
  br label %if.end26, !dbg !2843

if.end26:                                         ; preds = %if.then22, %if.end20
  %directory = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 21, !dbg !2844
  %8 = load ptr, ptr %directory, align 8, !dbg !2844, !tbaa !2676
  %cmp27.not = icmp eq ptr %8, null, !dbg !2846
  br i1 %cmp27.not, label %if.end32, label %if.then28, !dbg !2847

if.then28:                                        ; preds = %if.end26
  %call30 = tail call ptr @DestroyString(ptr noundef nonnull %8) #17, !dbg !2848
  store ptr %call30, ptr %directory, align 8, !dbg !2849, !tbaa !2676
  br label %if.end32, !dbg !2850

if.end32:                                         ; preds = %if.then28, %if.end26
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !2851
  %9 = load ptr, ptr %colormap, align 8, !dbg !2851, !tbaa !2558
  %cmp33.not = icmp eq ptr %9, null, !dbg !2853
  br i1 %cmp33.not, label %if.end38, label %if.then34, !dbg !2854

if.then34:                                        ; preds = %if.end32
  %call36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #17, !dbg !2855
  store ptr %call36, ptr %colormap, align 8, !dbg !2856, !tbaa !2558
  br label %if.end38, !dbg !2857

if.end38:                                         ; preds = %if.then34, %if.end32
  %geometry = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 22, !dbg !2858
  %10 = load ptr, ptr %geometry, align 8, !dbg !2858, !tbaa !2860
  %cmp39.not = icmp eq ptr %10, null, !dbg !2861
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !2862

if.then40:                                        ; preds = %if.end38
  %call42 = tail call ptr @DestroyString(ptr noundef nonnull %10) #17, !dbg !2863
  store ptr %call42, ptr %geometry, align 8, !dbg !2864, !tbaa !2860
  br label %if.end44, !dbg !2865

if.end44:                                         ; preds = %if.then40, %if.end38
  tail call void @DestroyImageProfiles(ptr noundef nonnull %image) #17, !dbg !2866
  tail call void @DestroyImageProperties(ptr noundef nonnull %image) #17, !dbg !2867
  tail call void @DestroyImageArtifacts(ptr noundef nonnull %image) #17, !dbg !2868
  %ascii85 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51, !dbg !2869
  %11 = load ptr, ptr %ascii85, align 8, !dbg !2869, !tbaa !2589
  %cmp45.not = icmp eq ptr %11, null, !dbg !2871
  br i1 %cmp45.not, label %if.end50, label %if.then46, !dbg !2872

if.then46:                                        ; preds = %if.end44
  %call48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #17, !dbg !2873
  store ptr %call48, ptr %ascii85, align 8, !dbg !2874, !tbaa !2589
  br label %if.end50, !dbg !2875

if.end50:                                         ; preds = %if.then46, %if.end44
  tail call void @DestroyBlob(ptr noundef nonnull %image) #17, !dbg !2876
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2877
  %call51 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !2878
  %12 = load ptr, ptr %semaphore, align 8, !dbg !2879, !tbaa !1330
  %cmp53.not = icmp eq ptr %12, null, !dbg !2881
  br i1 %cmp53.not, label %if.end56, label %if.then54, !dbg !2882

if.then54:                                        ; preds = %if.end50
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #17, !dbg !2883
  br label %if.end56, !dbg !2883

if.end56:                                         ; preds = %if.then54, %if.end50
  %signature = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 66, !dbg !2884
  store i64 -2880220588, ptr %signature, align 8, !dbg !2885, !tbaa !1333
  %call57 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %image) #17, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %call57, metadata !2802, metadata !DIExpression()), !dbg !2804
  br label %cleanup, !dbg !2887

cleanup:                                          ; preds = %if.end, %if.end56
  %retval.0 = phi ptr [ %call57, %if.end56 ], [ null, %if.end ], !dbg !2804
  ret ptr %retval.0, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageBackgroundColor(ptr noundef %image) local_unnamed_addr #0 !dbg !2889 {
entry:
  %background = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2893, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background) #17, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %background, metadata !2898, metadata !DIExpression()), !dbg !2924
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2925
  %0 = load i32, ptr %debug, align 8, !dbg !2925, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !2927
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2928

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2151, ptr noundef nonnull @.str.2) #17, !dbg !2929
  br label %if.end, !dbg !2930

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %image, metadata !2351, metadata !DIExpression()) #17, !dbg !2931
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !2931
  store i32 1, ptr %image, align 8, !dbg !2934, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2935
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef nonnull %exception.i) #17, !dbg !2936
  %cmp2 = icmp eq i32 %call.i, 0, !dbg !2937
  br i1 %cmp2, label %cleanup74, label %if.end4, !dbg !2938

if.end4:                                          ; preds = %if.end
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %background_color, metadata !2941, metadata !DIExpression()), !dbg !2950
  %red1.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !2952
  %1 = load i16, ptr %red1.i, align 2, !dbg !2952, !tbaa !2431
  %conv.i = uitofp i16 %1 to float, !dbg !2953
  call void @llvm.dbg.value(metadata float %conv.i, metadata !2949, metadata !DIExpression()), !dbg !2950
  %green2.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !2954
  %2 = load i16, ptr %green2.i, align 2, !dbg !2954, !tbaa !2433
  %conv3.i = uitofp i16 %2 to float, !dbg !2955
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !2948, metadata !DIExpression()), !dbg !2950
  %3 = load i16, ptr %background_color, align 2, !dbg !2956, !tbaa !2435
  call void @llvm.dbg.value(metadata float undef, metadata !2947, metadata !DIExpression()), !dbg !2950
  %sub.i = fsub float %conv.i, %conv3.i, !dbg !2957
  call void @llvm.dbg.value(metadata float %sub.i, metadata !2959, metadata !DIExpression()), !dbg !2965
  %cmp.i.i = fcmp olt float %sub.i, 0.000000e+00, !dbg !2967
  br i1 %cmp.i.i, label %cond.true.i.i, label %AbsolutePixelValue.exit.i, !dbg !2968

cond.true.i.i:                                    ; preds = %if.end4
  %fneg.i.i = fneg float %sub.i, !dbg !2969
  br label %AbsolutePixelValue.exit.i, !dbg !2968

AbsolutePixelValue.exit.i:                        ; preds = %cond.true.i.i, %if.end4
  %cond.i.i = phi float [ %fneg.i.i, %cond.true.i.i ], [ %sub.i, %if.end4 ], !dbg !2968
  %conv6.i = fpext float %cond.i.i to double, !dbg !2970
  %cmp.i = fcmp olt double %conv6.i, 1.000000e-15, !dbg !2971
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true, !dbg !2972

land.lhs.true.i:                                  ; preds = %AbsolutePixelValue.exit.i
  %conv5.i = uitofp i16 %3 to float, !dbg !2973
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !2947, metadata !DIExpression()), !dbg !2950
  %sub8.i = fsub float %conv3.i, %conv5.i, !dbg !2974
  call void @llvm.dbg.value(metadata float %sub8.i, metadata !2959, metadata !DIExpression()), !dbg !2975
  %cmp.i18.i = fcmp olt float %sub8.i, 0.000000e+00, !dbg !2977
  br i1 %cmp.i18.i, label %cond.true.i20.i, label %AbsolutePixelValue.exit22.i, !dbg !2978

cond.true.i20.i:                                  ; preds = %land.lhs.true.i
  %fneg.i19.i = fneg float %sub8.i, !dbg !2979
  br label %AbsolutePixelValue.exit22.i, !dbg !2978

AbsolutePixelValue.exit22.i:                      ; preds = %cond.true.i20.i, %land.lhs.true.i
  %cond.i21.i = phi float [ %fneg.i19.i, %cond.true.i20.i ], [ %sub8.i, %land.lhs.true.i ], !dbg !2978
  %conv10.i = fpext float %cond.i21.i to double, !dbg !2980
  %cmp11.i = fcmp olt double %conv10.i, 1.000000e-15, !dbg !2981
  br i1 %cmp11.i, label %if.end11, label %land.lhs.true, !dbg !2982

land.lhs.true:                                    ; preds = %AbsolutePixelValue.exit.i, %AbsolutePixelValue.exit22.i
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2983
  %4 = load i32, ptr %colorspace, align 4, !dbg !2983, !tbaa !1238
  call void @llvm.dbg.value(metadata i32 %4, metadata !2984, metadata !DIExpression()), !dbg !2991
  switch i32 %4, label %if.end11 [
    i32 19, label %if.then9
    i32 17, label %if.then9
    i32 2, label %if.then9
  ], !dbg !2993

if.then9:                                         ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %call10 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 1) #17, !dbg !2995
  br label %if.end11, !dbg !2996

if.end11:                                         ; preds = %land.lhs.true, %AbsolutePixelValue.exit22.i, %if.then9
  %opacity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !2997
  %5 = load i16, ptr %opacity, align 2, !dbg !2997, !tbaa !2999
  %cmp13.not = icmp eq i16 %5, 0, !dbg !3000
  br i1 %cmp13.not, label %if.end20, label %land.lhs.true15, !dbg !3001

land.lhs.true15:                                  ; preds = %if.end11
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !3002
  %6 = load i32, ptr %matte, align 8, !dbg !3002, !tbaa !2317
  %cmp16 = icmp eq i32 %6, 0, !dbg !3003
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !3004

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #17, !dbg !3005
  br label %if.end20, !dbg !3006

if.end20:                                         ; preds = %if.then18, %land.lhs.true15, %if.end11
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background) #17, !dbg !3007
  call void @llvm.dbg.value(metadata ptr undef, metadata !3008, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %background_color, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr null, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %background, metadata !3017, metadata !DIExpression()), !dbg !3018
  %7 = load i16, ptr %red1.i, align 2, !dbg !3020, !tbaa !2431
  %conv.i117 = uitofp i16 %7 to float, !dbg !3021
  %red1.i118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 5, !dbg !3022
  store float %conv.i117, ptr %red1.i118, align 8, !dbg !3023, !tbaa !3024
  %8 = load i16, ptr %green2.i, align 2, !dbg !3027, !tbaa !2433
  %conv2.i = uitofp i16 %8 to float, !dbg !3028
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 6, !dbg !3029
  store float %conv2.i, ptr %green3.i, align 4, !dbg !3030, !tbaa !3031
  %9 = load i16, ptr %background_color, align 2, !dbg !3032, !tbaa !2435
  %conv4.i = uitofp i16 %9 to float, !dbg !3033
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 7, !dbg !3034
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !3035, !tbaa !3036
  %10 = load i16, ptr %opacity, align 2, !dbg !3037, !tbaa !2437
  %conv6.i119 = uitofp i16 %10 to float, !dbg !3038
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 8, !dbg !3039
  store float %conv6.i119, ptr %opacity7.i, align 4, !dbg !3040, !tbaa !3041
  %colorspace22 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3042
  %11 = load i32, ptr %colorspace22, align 4, !dbg !3042, !tbaa !1238
  %cmp23 = icmp eq i32 %11, 12, !dbg !3044
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3045

if.then25:                                        ; preds = %if.end20
  call void @llvm.dbg.value(metadata ptr %background, metadata !3046, metadata !DIExpression()) #17, !dbg !3058
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1, !dbg !3060
  %12 = load i32, ptr %colorspace.i, align 4, !dbg !3060, !tbaa !3062
  %cmp.not.i = icmp eq i32 %12, 13, !dbg !3063
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !3064

if.then.i:                                        ; preds = %if.then25
  %conv.i120 = uitofp i16 %7 to double, !dbg !3065
  %mul.i = fmul double %conv.i120, 0x3EF0001000100010, !dbg !3067
  %conv2.i121 = fptrunc double %mul.i to float, !dbg !3068
  call void @llvm.dbg.value(metadata float %conv2.i121, metadata !3056, metadata !DIExpression()) #17, !dbg !3058
  %conv4.i123 = uitofp i16 %8 to double, !dbg !3069
  %mul5.i = fmul double %conv4.i123, 0x3EF0001000100010, !dbg !3070
  %conv6.i124 = fptrunc double %mul5.i to float, !dbg !3071
  call void @llvm.dbg.value(metadata float %conv6.i124, metadata !3054, metadata !DIExpression()) #17, !dbg !3058
  %conv8.i = uitofp i16 %9 to double, !dbg !3072
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !3073
  %conv10.i125 = fptrunc double %mul9.i to float, !dbg !3074
  call void @llvm.dbg.value(metadata float %conv10.i125, metadata !3052, metadata !DIExpression()) #17, !dbg !3058
  br label %if.end.i127, !dbg !3075

if.else.i:                                        ; preds = %if.then25
  %call.i126 = call float @DecodePixelGamma(float noundef %conv.i117) #21, !dbg !3076
  call void @llvm.dbg.value(metadata float %call.i126, metadata !3056, metadata !DIExpression()) #17, !dbg !3058
  %13 = load float, ptr %green3.i, align 4, !dbg !3078, !tbaa !3031
  %call13.i = call float @DecodePixelGamma(float noundef %13) #21, !dbg !3079
  call void @llvm.dbg.value(metadata float %call13.i, metadata !3054, metadata !DIExpression()) #17, !dbg !3058
  %14 = load float, ptr %blue5.i, align 8, !dbg !3080, !tbaa !3036
  %call15.i = call float @DecodePixelGamma(float noundef %14) #21, !dbg !3081
  call void @llvm.dbg.value(metadata float %call15.i, metadata !3052, metadata !DIExpression()) #17, !dbg !3058
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.else.i, %if.then.i
  %blue.0.i = phi float [ %conv10.i125, %if.then.i ], [ %call15.i, %if.else.i ], !dbg !3082
  %green.0.i = phi float [ %conv6.i124, %if.then.i ], [ %call13.i, %if.else.i ], !dbg !3082
  %red.0.i = phi float [ %conv2.i121, %if.then.i ], [ %call.i126, %if.else.i ], !dbg !3082
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !3056, metadata !DIExpression()) #17, !dbg !3058
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !3054, metadata !DIExpression()) #17, !dbg !3058
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !3052, metadata !DIExpression()) #17, !dbg !3058
  %15 = call float @llvm.fabs.f32(float %red.0.i) #17, !dbg !3083
  %16 = fpext float %15 to double, !dbg !3083
  %cmp17.i = fcmp olt double %16, 1.000000e-15, !dbg !3085
  br i1 %cmp17.i, label %land.lhs.true.i128, label %if.end27.i, !dbg !3086

land.lhs.true.i128:                               ; preds = %if.end.i127
  %17 = call float @llvm.fabs.f32(float %green.0.i) #17, !dbg !3087
  %18 = fpext float %17 to double, !dbg !3087
  %cmp20.i = fcmp olt double %18, 1.000000e-15, !dbg !3088
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !3089

land.lhs.true22.i:                                ; preds = %land.lhs.true.i128
  %19 = call float @llvm.fabs.f32(float %blue.0.i) #17, !dbg !3090
  %20 = fpext float %19 to double, !dbg !3090
  %cmp24.i = fcmp olt double %20, 1.000000e-15, !dbg !3091
  br i1 %cmp24.i, label %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge, label %if.end27.i, !dbg !3092

land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge: ; preds = %land.lhs.true22.i
  %.pre.pre = load float, ptr %red1.i118, align 8, !dbg !3093, !tbaa !3024
  br label %ConvertRGBToCMYK.exit, !dbg !3092

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i128, %if.end.i127
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !3105
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !3053, metadata !DIExpression()) #17, !dbg !3058
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !3106
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !3055, metadata !DIExpression()) #17, !dbg !3058
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !3107
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !3057, metadata !DIExpression()) #17, !dbg !3058
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !3051, metadata !DIExpression()) #17, !dbg !3058
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !3108
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !3110

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !3051, metadata !DIExpression()) #17, !dbg !3058
  br label %if.end39.i, !dbg !3111

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !3058
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !3051, metadata !DIExpression()) #17, !dbg !3058
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !3112
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !3114

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !3051, metadata !DIExpression()) #17, !dbg !3058
  br label %if.end43.i, !dbg !3115

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !3058
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !3051, metadata !DIExpression()) #17, !dbg !3058
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !3116
  %conv45.i = fpext float %sub44.i to double, !dbg !3117
  %conv46.i = fpext float %black.1.i to double, !dbg !3118
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !3119
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !3120
  %conv48.i = fptrunc double %div.i to float, !dbg !3121
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !3053, metadata !DIExpression()) #17, !dbg !3058
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !3122
  %conv50.i = fpext float %sub49.i to double, !dbg !3123
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !3124
  %conv54.i = fptrunc double %div53.i to float, !dbg !3125
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !3055, metadata !DIExpression()) #17, !dbg !3058
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !3126
  %conv56.i = fpext float %sub55.i to double, !dbg !3127
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !3128
  %conv60.i = fptrunc double %div59.i to float, !dbg !3129
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !3057, metadata !DIExpression()) #17, !dbg !3058
  store i32 12, ptr %colorspace.i, align 4, !dbg !3130, !tbaa !3062
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !3131
  store float %mul62.i, ptr %red1.i118, align 8, !dbg !3132, !tbaa !3024
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !3133
  store float %mul64.i, ptr %green3.i, align 4, !dbg !3134, !tbaa !3031
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !3135
  store float %mul66.i, ptr %blue5.i, align 8, !dbg !3136, !tbaa !3036
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !3137
  br label %ConvertRGBToCMYK.exit, !dbg !3138

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge, %if.end43.i
  %.pre = phi float [ %mul62.i, %if.end43.i ], [ %.pre.pre, %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge ], !dbg !3093
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9, !dbg !3058
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !3058, !tbaa !3139
  br label %if.end26, !dbg !3140

if.end26:                                         ; preds = %ConvertRGBToCMYK.exit, %if.end20
  %21 = phi float [ %.pre, %ConvertRGBToCMYK.exit ], [ %conv.i117, %if.end20 ], !dbg !3093
  call void @llvm.dbg.value(metadata i16 0, metadata !2896, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %image, metadata !3100, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %background, metadata !3101, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr undef, metadata !3102, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr undef, metadata !3103, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata float %21, metadata !3142, metadata !DIExpression()), !dbg !3147
  %cmp.i.i130 = fcmp ugt float %21, 0.000000e+00, !dbg !3149
  br i1 %cmp.i.i130, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !3151

if.end.i.i:                                       ; preds = %if.end26
  %cmp1.i.i = fcmp ult float %21, 6.553500e+04, !dbg !3152
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !3154

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %21, 5.000000e-01, !dbg !3155
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !3156
  %phi.cast143 = zext i16 %conv.i.i to i64, !dbg !3157
  %phi.bo144 = shl nuw nsw i64 %phi.cast143, 32, !dbg !3157
  br label %ClampToQuantum.exit.i, !dbg !3157

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %if.end26
  %retval.0.i.i = phi i64 [ %phi.bo144, %if.end3.i.i ], [ 0, %if.end26 ], [ 281470681743360, %if.end.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !2922
  %22 = load float, ptr %green3.i, align 4, !dbg !3158, !tbaa !3031
  call void @llvm.dbg.value(metadata float %22, metadata !3142, metadata !DIExpression()), !dbg !3159
  %cmp.i23.i = fcmp ugt float %22, 0.000000e+00, !dbg !3161
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !3162

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %22, 6.553500e+04, !dbg !3163
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !3164

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %22, 5.000000e-01, !dbg !3165
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !3166
  %phi.cast145 = zext i16 %conv.i27.i to i64, !dbg !3167
  %phi.bo146 = shl nuw nsw i64 %phi.cast145, 16, !dbg !3167
  br label %ClampToQuantum.exit30.i, !dbg !3167

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i64 [ %phi.bo146, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ 4294901760, %if.end.i25.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !2922
  %23 = load float, ptr %blue5.i, align 8, !dbg !3168, !tbaa !3036
  call void @llvm.dbg.value(metadata float %23, metadata !3142, metadata !DIExpression()), !dbg !3169
  %cmp.i31.i = fcmp ugt float %23, 0.000000e+00, !dbg !3171
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !3172

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %23, 6.553500e+04, !dbg !3173
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !3174

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %23, 5.000000e-01, !dbg !3175
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !3176
  %phi.cast147 = zext i16 %conv.i35.i to i64, !dbg !3177
  br label %ClampToQuantum.exit38.i, !dbg !3177

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i64 [ %phi.cast147, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ 65535, %if.end.i33.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !2922
  %24 = load float, ptr %opacity7.i, align 4, !dbg !3178, !tbaa !3041
  call void @llvm.dbg.value(metadata float %24, metadata !3142, metadata !DIExpression()), !dbg !3179
  %cmp.i39.i = fcmp ugt float %24, 0.000000e+00, !dbg !3181
  br i1 %cmp.i39.i, label %if.end.i41.i, label %ClampToQuantum.exit46.i, !dbg !3182

if.end.i41.i:                                     ; preds = %ClampToQuantum.exit38.i
  %cmp1.i40.i = fcmp ult float %24, 6.553500e+04, !dbg !3183
  br i1 %cmp1.i40.i, label %if.end3.i44.i, label %ClampToQuantum.exit46.i, !dbg !3184

if.end3.i44.i:                                    ; preds = %if.end.i41.i
  %add.i42.i = fadd float %24, 5.000000e-01, !dbg !3185
  %conv.i43.i = fptoui float %add.i42.i to i16, !dbg !3186
  %phi.cast = zext i16 %conv.i43.i to i64, !dbg !3187
  %phi.bo = shl nuw i64 %phi.cast, 48, !dbg !3187
  br label %ClampToQuantum.exit46.i, !dbg !3187

ClampToQuantum.exit46.i:                          ; preds = %if.end3.i44.i, %if.end.i41.i, %ClampToQuantum.exit38.i
  %retval.0.i45.i = phi i64 [ %phi.bo, %if.end3.i44.i ], [ 0, %ClampToQuantum.exit38.i ], [ -281474976710656, %if.end.i41.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !2922
  %25 = load i32, ptr %colorspace22, align 4, !dbg !3188, !tbaa !1238
  %cmp.i137 = icmp eq i32 %25, 12, !dbg !3190
  br i1 %cmp.i137, label %if.then10.i, label %lor.lhs.false.i, !dbg !3191

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit46.i
  %26 = load i32, ptr %image, align 8, !dbg !3192, !tbaa !1217
  %cmp8.i = icmp eq i32 %26, 2, !dbg !3193
  br i1 %cmp8.i, label %if.then10.i, label %SetPixelPacket.exit, !dbg !3194

if.then10.i:                                      ; preds = %ClampToQuantum.exit46.i, %lor.lhs.false.i
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9, !dbg !3195
  %27 = load float, ptr %index11.i, align 8, !dbg !3195, !tbaa !3139
  call void @llvm.dbg.value(metadata float %27, metadata !3142, metadata !DIExpression()), !dbg !3198
  %cmp.i47.i = fcmp ugt float %27, 0.000000e+00, !dbg !3200
  br i1 %cmp.i47.i, label %if.end.i49.i, label %SetPixelPacket.exit, !dbg !3201

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %27, 6.553500e+04, !dbg !3202
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %SetPixelPacket.exit, !dbg !3203

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %27, 5.000000e-01, !dbg !3204
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !3205
  br label %SetPixelPacket.exit, !dbg !3206

SetPixelPacket.exit:                              ; preds = %if.then10.i, %if.end.i49.i, %if.end3.i52.i, %lor.lhs.false.i
  %index.0 = phi i16 [ 0, %lor.lhs.false.i ], [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 1, metadata !2897, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %exception.i, metadata !2895, metadata !DIExpression()), !dbg !2922
  %call28 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception.i) #17, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2894, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 0, metadata !2913, metadata !DIExpression()), !dbg !2922
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2913, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 1, metadata !2897, metadata !DIExpression()), !dbg !2922
  %28 = load i64, ptr %rows, align 8, !dbg !3208, !tbaa !1367
  %cmp29154 = icmp sgt i64 %28, 0, !dbg !3209
  br i1 %cmp29154, label %for.body.lr.ph, label %for.end72, !dbg !3210

for.body.lr.ph:                                   ; preds = %SetPixelPacket.exit
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %pixel.sroa.5.0.insert.insert = or i64 %retval.0.i29.i, %retval.0.i.i
  %pixel.sroa.4.0.insert.insert = or i64 %pixel.sroa.5.0.insert.insert, %retval.0.i37.i
  %pixel.sroa.0.0.insert.insert = or i64 %pixel.sroa.4.0.insert.insert, %retval.0.i45.i
  br label %for.body, !dbg !3210

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0156 = phi i64 [ 0, %for.body.lr.ph ], [ %inc71, %cleanup ]
  %status.0155 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0156, metadata !2913, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %status.0155, metadata !2897, metadata !DIExpression()), !dbg !2922
  %cmp31 = icmp eq i32 %status.0155, 0, !dbg !3211
  br i1 %cmp31, label %cleanup, label %if.end34, !dbg !3213

if.end34:                                         ; preds = %for.body
  %29 = load i64, ptr %columns, align 8, !dbg !3214, !tbaa !1362
  %call35 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call28, i64 noundef 0, i64 noundef %y.0156, i64 noundef %29, i64 noundef 1, ptr noundef nonnull %exception.i) #21, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %call35, metadata !2914, metadata !DIExpression()), !dbg !3216
  %cmp36 = icmp eq ptr %call35, null, !dbg !3217
  br i1 %cmp36, label %cleanup, label %for.cond40.preheader, !dbg !3219

for.cond40.preheader:                             ; preds = %if.end34
  call void @llvm.dbg.value(metadata i64 0, metadata !2918, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %call35, metadata !2914, metadata !DIExpression()), !dbg !3216
  %30 = load i64, ptr %columns, align 8, !dbg !3220, !tbaa !1362
  %cmp42148 = icmp sgt i64 %30, 0, !dbg !3223
  br i1 %cmp42148, label %for.body44, label %for.end, !dbg !3224

for.body44:                                       ; preds = %for.cond40.preheader, %for.body44
  %x.0150 = phi i64 [ %inc, %for.body44 ], [ 0, %for.cond40.preheader ]
  %q.0149 = phi ptr [ %incdec.ptr, %for.body44 ], [ %call35, %for.cond40.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0150, metadata !2918, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %q.0149, metadata !2914, metadata !DIExpression()), !dbg !3216
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0149, i64 1, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2914, metadata !DIExpression()), !dbg !3216
  store i64 %pixel.sroa.0.0.insert.insert, ptr %q.0149, align 2, !dbg !3226
  %inc = add nuw nsw i64 %x.0150, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2918, metadata !DIExpression()), !dbg !3216
  %31 = load i64, ptr %columns, align 8, !dbg !3220, !tbaa !1362
  %cmp42 = icmp slt i64 %inc, %31, !dbg !3223
  br i1 %cmp42, label %for.body44, label %for.end, !dbg !3224, !llvm.loop !3228

for.end:                                          ; preds = %for.body44, %for.cond40.preheader
  %32 = load i32, ptr %colorspace22, align 4, !dbg !3230, !tbaa !1238
  %cmp46 = icmp eq i32 %32, 12, !dbg !3231
  br i1 %cmp46, label %if.then48, label %if.end63, !dbg !3232

if.then48:                                        ; preds = %for.end
  %call49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call28) #17, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %call49, metadata !2919, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 0, metadata !2918, metadata !DIExpression()), !dbg !3216
  %33 = load i64, ptr %columns, align 8, !tbaa !1362
  %cmp52151 = icmp slt i64 %33, 1, !dbg !3235
  %cmp55.not = icmp eq ptr %call49, null
  %or.cond = select i1 %cmp52151, i1 true, i1 %cmp55.not, !dbg !3238
  br i1 %or.cond, label %if.end63, label %for.body54, !dbg !3238

for.body54:                                       ; preds = %if.then48, %for.body54
  %x.1152 = phi i64 [ %inc61, %for.body54 ], [ 0, %if.then48 ]
  call void @llvm.dbg.value(metadata i64 %x.1152, metadata !2918, metadata !DIExpression()), !dbg !3216
  %add.ptr = getelementptr inbounds i16, ptr %call49, i64 %x.1152, !dbg !3239
  call void @llvm.dbg.value(metadata i16 %index.0, metadata !2896, metadata !DIExpression()), !dbg !2922
  store i16 %index.0, ptr %add.ptr, align 2, !dbg !3239, !tbaa !2445
  %inc61 = add nuw nsw i64 %x.1152, 1, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %inc61, metadata !2918, metadata !DIExpression()), !dbg !3216
  %exitcond.not = icmp eq i64 %inc61, %33, !dbg !3235
  br i1 %exitcond.not, label %if.end63, label %for.body54, !dbg !3238, !llvm.loop !3243

if.end63:                                         ; preds = %for.body54, %if.then48, %for.end
  %call64 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call28, ptr noundef nonnull %exception.i) #21, !dbg !3245
  %cmp65 = icmp ne i32 %call64, 0, !dbg !3247
  %spec.select = zext i1 %cmp65 to i32, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2897, metadata !DIExpression()), !dbg !2922
  br label %cleanup, !dbg !3249

cleanup:                                          ; preds = %if.end34, %for.body, %if.end63
  %status.2 = phi i32 [ %spec.select, %if.end63 ], [ 0, %for.body ], [ 0, %if.end34 ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2897, metadata !DIExpression()), !dbg !2922
  %inc71 = add nuw nsw i64 %y.0156, 1, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %inc71, metadata !2913, metadata !DIExpression()), !dbg !2922
  %34 = load i64, ptr %rows, align 8, !dbg !3208, !tbaa !1367
  %cmp29 = icmp slt i64 %inc71, %34, !dbg !3209
  br i1 %cmp29, label %for.body, label %for.end72, !dbg !3210, !llvm.loop !3251

for.end72:                                        ; preds = %cleanup, %SetPixelPacket.exit
  %status.0.lcssa = phi i32 [ 1, %SetPixelPacket.exit ], [ %status.2, %cleanup ], !dbg !3253
  %call73 = call ptr @DestroyCacheView(ptr noundef %call28) #17, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2894, metadata !DIExpression()), !dbg !2922
  br label %cleanup74, !dbg !3255

cleanup74:                                        ; preds = %if.end, %for.end72
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end72 ], [ 0, %if.end ], !dbg !2922
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background) #17, !dbg !3256
  ret i32 %retval.0, !dbg !3256
}

declare !dbg !3257 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3260 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3263 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3266 void @GravityAdjustGeometry(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3270 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !3271 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare !dbg !3277 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !3280 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !3283 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !3286 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !3289 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CatchImageException(ptr noundef %image) local_unnamed_addr #0 !dbg !3292 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3296, metadata !DIExpression()), !dbg !3299
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3300
  %0 = load i32, ptr %debug, align 8, !dbg !3300, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !3302
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3303

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3304
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !3305
  br label %if.end, !dbg !3306

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireExceptionInfo() #17, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %image, metadata !3308, metadata !DIExpression()) #17, !dbg !3315
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3313, metadata !DIExpression()) #17, !dbg !3315
  %1 = load i32, ptr %debug, align 8, !dbg !3317, !tbaa !1323
  %cmp.not.i = icmp eq i32 %1, 0, !dbg !3319
  br i1 %cmp.not.i, label %for.body.i.preheader, label %if.then.i, !dbg !3320

if.then.i:                                        ; preds = %if.end
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3321
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !3322
  br label %for.body.i.preheader, !dbg !3323

for.body.i.preheader:                             ; preds = %if.then.i, %if.end
  br label %for.body.i, !dbg !3324

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %next.025.i = phi ptr [ %call15.i, %for.inc.i ], [ %image, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %next.025.i, metadata !3314, metadata !DIExpression()) #17, !dbg !3315
  %exception2.i = getelementptr inbounds %struct._Image, ptr %next.025.i, i64 0, i32 58, !dbg !3326
  %2 = load i32, ptr %exception2.i, align 8, !dbg !3330, !tbaa !3331
  %cmp3.i = icmp eq i32 %2, 0, !dbg !3332
  br i1 %cmp3.i, label %for.inc.i, label %if.end5.i, !dbg !3333

if.end5.i:                                        ; preds = %for.body.i
  %3 = load i32, ptr %call1, align 8, !dbg !3334, !tbaa !3336
  %cmp9.i = icmp ugt i32 %2, %3, !dbg !3337
  br i1 %cmp9.i, label %if.then10.i, label %if.end12.i, !dbg !3338

if.then10.i:                                      ; preds = %if.end5.i
  tail call void @InheritException(ptr noundef nonnull %call1, ptr noundef nonnull %exception2.i) #17, !dbg !3339
  br label %if.end12.i, !dbg !3339

if.end12.i:                                       ; preds = %if.then10.i, %if.end5.i
  store i32 0, ptr %exception2.i, align 8, !dbg !3340, !tbaa !3331
  br label %for.inc.i, !dbg !3341

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i
  %call15.i = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.025.i) #17, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !3314, metadata !DIExpression()) #17, !dbg !3315
  %cmp1.not.i = icmp eq ptr %call15.i, null, !dbg !3343
  br i1 %cmp1.not.i, label %GetImageException.exit, label %for.body.i, !dbg !3324, !llvm.loop !3344

GetImageException.exit:                           ; preds = %for.inc.i
  tail call void @CatchException(ptr noundef %call1) #17, !dbg !3346
  %4 = load i32, ptr %call1, align 8, !dbg !3347, !tbaa !3336
  call void @llvm.dbg.value(metadata i32 %4, metadata !3298, metadata !DIExpression()), !dbg !3299
  %call3 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %call1) #17, !dbg !3348
  call void @llvm.dbg.value(metadata ptr %call3, metadata !3297, metadata !DIExpression()), !dbg !3299
  ret i32 %4, !dbg !3349
}

declare !dbg !3350 ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetImageException(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !3309 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3308, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3313, metadata !DIExpression()), !dbg !3353
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3354
  %0 = load i32, ptr %debug, align 8, !dbg !3354, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !3355
  br i1 %cmp.not, label %for.body.preheader, label %if.then, !dbg !3356

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3357
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !3358
  br label %for.body.preheader, !dbg !3359

for.body.preheader:                               ; preds = %entry, %if.then
  br label %for.body, !dbg !3360

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %next.025 = phi ptr [ %call15, %for.inc ], [ %image, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %next.025, metadata !3314, metadata !DIExpression()), !dbg !3353
  %exception2 = getelementptr inbounds %struct._Image, ptr %next.025, i64 0, i32 58, !dbg !3361
  %1 = load i32, ptr %exception2, align 8, !dbg !3362, !tbaa !3331
  %cmp3 = icmp eq i32 %1, 0, !dbg !3363
  br i1 %cmp3, label %for.inc, label %if.end5, !dbg !3364

if.end5:                                          ; preds = %for.body
  %2 = load i32, ptr %exception, align 8, !dbg !3365, !tbaa !3336
  %cmp9 = icmp ugt i32 %1, %2, !dbg !3366
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3367

if.then10:                                        ; preds = %if.end5
  tail call void @InheritException(ptr noundef nonnull %exception, ptr noundef nonnull %exception2) #17, !dbg !3368
  br label %if.end12, !dbg !3368

if.end12:                                         ; preds = %if.then10, %if.end5
  store i32 0, ptr %exception2, align 8, !dbg !3369, !tbaa !3331
  br label %for.inc, !dbg !3370

for.inc:                                          ; preds = %for.body, %if.end12
  %call15 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.025) #17, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %call15, metadata !3314, metadata !DIExpression()), !dbg !3353
  %cmp1.not = icmp eq ptr %call15, null, !dbg !3372
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !3360, !llvm.loop !3373

for.end:                                          ; preds = %for.inc
  ret void, !dbg !3375
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ClipImage(ptr noundef %image) local_unnamed_addr #0 !dbg !3376 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3378, metadata !DIExpression()), !dbg !3379
  %call = tail call i32 @ClipImagePath(ptr noundef %image, ptr noundef nonnull @.str.10, i32 noundef 1), !dbg !3380
  ret i32 %call, !dbg !3381
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ClipImagePath(ptr noundef %image, ptr noundef %pathname, i32 noundef %inside) local_unnamed_addr #0 !dbg !3382 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3386, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %pathname, metadata !3387, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %inside, metadata !3388, metadata !DIExpression()), !dbg !3397
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3398
  %0 = load i32, ptr %debug, align 8, !dbg !3398, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !3400
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3401

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3402
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 709, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !3403
  br label %if.end, !dbg !3404

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireString(ptr noundef %pathname) #17, !dbg !3405
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3389, metadata !DIExpression()), !dbg !3397
  %call2 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %call1, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %pathname) #17, !dbg !3406
  %call3 = tail call ptr @GetImageProperty(ptr noundef nonnull %image, ptr noundef %call1) #17, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %call3, metadata !3390, metadata !DIExpression()), !dbg !3397
  %call4 = tail call ptr @DestroyString(ptr noundef %call1) #17, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %call4, metadata !3389, metadata !DIExpression()), !dbg !3397
  %cmp5 = icmp eq ptr %call3, null, !dbg !3409
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !3410

if.then6:                                         ; preds = %if.end
  %call7 = tail call ptr @__errno_location() #19, !dbg !3411
  %1 = load i32, ptr %call7, align 4, !dbg !3411, !tbaa !1208
  %call8 = tail call ptr @GetExceptionMessage(i32 noundef %1) #17, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %call8, metadata !3393, metadata !DIExpression()), !dbg !3412
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3411
  %filename9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3411
  %call11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, i32 noundef 410, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %filename9, ptr noundef %call8) #17, !dbg !3411
  %call12 = tail call ptr @DestroyString(ptr noundef %call8) #17, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %call12, metadata !3393, metadata !DIExpression()), !dbg !3412
  br label %cleanup, !dbg !3413

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @AcquireImageInfo(), !dbg !3414
  call void @llvm.dbg.value(metadata ptr %call14, metadata !3392, metadata !DIExpression()), !dbg !3397
  %filename15 = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 51, !dbg !3415
  %filename17 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3416
  %call19 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename15, ptr noundef nonnull %filename17, i64 noundef 4096) #17, !dbg !3417
  %call22 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %filename15, ptr noundef %pathname, i64 noundef 4096) #17, !dbg !3418
  %call23 = tail call i64 @strlen(ptr noundef nonnull %call3) #23, !dbg !3419
  %exception24 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3420
  %call25 = tail call ptr @BlobToImage(ptr noundef %call14, ptr noundef nonnull %call3, i64 noundef %call23, ptr noundef nonnull %exception24) #17, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %call25, metadata !3391, metadata !DIExpression()), !dbg !3397
  %call26 = tail call ptr @DestroyImageInfo(ptr noundef %call14), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %call26, metadata !3392, metadata !DIExpression()), !dbg !3397
  %cmp27 = icmp eq ptr %call25, null, !dbg !3423
  br i1 %cmp27, label %cleanup, label %if.end29, !dbg !3425

if.end29:                                         ; preds = %if.end13
  %2 = load i32, ptr %call25, align 8, !dbg !3426, !tbaa !1217
  %cmp30 = icmp eq i32 %2, 2, !dbg !3428
  br i1 %cmp30, label %if.then31, label %if.end37, !dbg !3429

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 @SyncImage(ptr noundef nonnull %call25), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %call25, metadata !2351, metadata !DIExpression()) #17, !dbg !3432
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !3432
  store i32 1, ptr %call25, align 8, !dbg !3435, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 58, !dbg !3436
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %call25, ptr noundef nonnull %exception.i) #17, !dbg !3437
  %cmp34 = icmp eq i32 %call.i, 0, !dbg !3438
  br i1 %cmp34, label %cleanup, label %if.end37, !dbg !3439

if.end37:                                         ; preds = %if.then31, %if.end29
  %cmp38 = icmp eq i32 %inside, 0, !dbg !3440
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !3442

if.then39:                                        ; preds = %if.end37
  %call40 = tail call i32 @NegateImage(ptr noundef nonnull %call25, i32 noundef 0) #17, !dbg !3443
  br label %if.end41, !dbg !3444

if.end41:                                         ; preds = %if.then39, %if.end37
  %magick_filename = getelementptr inbounds %struct._Image, ptr %call25, i64 0, i32 54, !dbg !3445
  %call43 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %magick_filename, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %pathname) #17, !dbg !3446
  %call44 = tail call i32 @SetImageClipMask(ptr noundef nonnull %image, ptr noundef nonnull %call25), !dbg !3447
  %call45 = tail call ptr @DestroyImage(ptr noundef nonnull %call25), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %call45, metadata !3391, metadata !DIExpression()), !dbg !3397
  br label %cleanup, !dbg !3449

cleanup:                                          ; preds = %if.then31, %if.end13, %if.end41, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.end41 ], [ 0, %if.end13 ], [ 0, %if.then31 ], !dbg !3397
  ret i32 %retval.0, !dbg !3450
}

declare !dbg !3451 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !3452 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3457 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3461 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3462 ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyImageInfo(ptr noundef %image_info) local_unnamed_addr #0 !dbg !3465 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3469, metadata !DIExpression()), !dbg !3470
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !3471
  %0 = load i32, ptr %debug, align 8, !dbg !3471, !tbaa !2197
  %cmp.not = icmp eq i32 %0, 0, !dbg !3473
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3474

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3475
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !3476
  br label %if.end, !dbg !3477

if.end:                                           ; preds = %if.then, %entry
  %size = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 6, !dbg !3478
  %1 = load ptr, ptr %size, align 8, !dbg !3478, !tbaa !1352
  %cmp1.not = icmp eq ptr %1, null, !dbg !3480
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !3481

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @DestroyString(ptr noundef nonnull %1) #17, !dbg !3482
  store ptr %call4, ptr %size, align 8, !dbg !3483, !tbaa !1352
  br label %if.end6, !dbg !3484

if.end6:                                          ; preds = %if.then2, %if.end
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 7, !dbg !3485
  %2 = load ptr, ptr %extract, align 8, !dbg !3485, !tbaa !1376
  %cmp7.not = icmp eq ptr %2, null, !dbg !3487
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !3488

if.then8:                                         ; preds = %if.end6
  %call10 = tail call ptr @DestroyString(ptr noundef nonnull %2) #17, !dbg !3489
  store ptr %call10, ptr %extract, align 8, !dbg !3490, !tbaa !1376
  br label %if.end12, !dbg !3491

if.end12:                                         ; preds = %if.then8, %if.end6
  %scenes = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 9, !dbg !3492
  %3 = load ptr, ptr %scenes, align 8, !dbg !3492, !tbaa !3494
  %cmp13.not = icmp eq ptr %3, null, !dbg !3495
  br i1 %cmp13.not, label %if.end18, label %if.then14, !dbg !3496

if.then14:                                        ; preds = %if.end12
  %call16 = tail call ptr @DestroyString(ptr noundef nonnull %3) #17, !dbg !3497
  store ptr %call16, ptr %scenes, align 8, !dbg !3498, !tbaa !3494
  br label %if.end18, !dbg !3499

if.end18:                                         ; preds = %if.then14, %if.end12
  %page = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 8, !dbg !3500
  %4 = load ptr, ptr %page, align 8, !dbg !3500, !tbaa !1441
  %cmp19.not = icmp eq ptr %4, null, !dbg !3502
  br i1 %cmp19.not, label %if.end24, label %if.then20, !dbg !3503

if.then20:                                        ; preds = %if.end18
  %call22 = tail call ptr @DestroyString(ptr noundef nonnull %4) #17, !dbg !3504
  store ptr %call22, ptr %page, align 8, !dbg !3505, !tbaa !1441
  br label %if.end24, !dbg !3506

if.end24:                                         ; preds = %if.then20, %if.end18
  %sampling_factor = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 17, !dbg !3507
  %5 = load ptr, ptr %sampling_factor, align 8, !dbg !3507, !tbaa !3509
  %cmp25.not = icmp eq ptr %5, null, !dbg !3510
  br i1 %cmp25.not, label %if.end30, label %if.then26, !dbg !3511

if.then26:                                        ; preds = %if.end24
  %call28 = tail call ptr @DestroyString(ptr noundef nonnull %5) #17, !dbg !3512
  store ptr %call28, ptr %sampling_factor, align 8, !dbg !3513, !tbaa !3509
  br label %if.end30, !dbg !3514

if.end30:                                         ; preds = %if.then26, %if.end24
  %server_name = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 18, !dbg !3515
  %6 = load ptr, ptr %server_name, align 8, !dbg !3515, !tbaa !3517
  %cmp31.not = icmp eq ptr %6, null, !dbg !3518
  br i1 %cmp31.not, label %if.end36, label %if.then32, !dbg !3519

if.then32:                                        ; preds = %if.end30
  %call34 = tail call ptr @DestroyString(ptr noundef nonnull %6) #17, !dbg !3520
  store ptr %call34, ptr %server_name, align 8, !dbg !3521, !tbaa !3517
  br label %if.end36, !dbg !3522

if.end36:                                         ; preds = %if.then32, %if.end30
  %font = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 19, !dbg !3523
  %7 = load ptr, ptr %font, align 8, !dbg !3523, !tbaa !3525
  %cmp37.not = icmp eq ptr %7, null, !dbg !3526
  br i1 %cmp37.not, label %if.end42, label %if.then38, !dbg !3527

if.then38:                                        ; preds = %if.end36
  %call40 = tail call ptr @DestroyString(ptr noundef nonnull %7) #17, !dbg !3528
  store ptr %call40, ptr %font, align 8, !dbg !3529, !tbaa !3525
  br label %if.end42, !dbg !3530

if.end42:                                         ; preds = %if.then38, %if.end36
  %texture = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 20, !dbg !3531
  %8 = load ptr, ptr %texture, align 8, !dbg !3531, !tbaa !3533
  %cmp43.not = icmp eq ptr %8, null, !dbg !3534
  br i1 %cmp43.not, label %if.end48, label %if.then44, !dbg !3535

if.then44:                                        ; preds = %if.end42
  %call46 = tail call ptr @DestroyString(ptr noundef nonnull %8) #17, !dbg !3536
  store ptr %call46, ptr %texture, align 8, !dbg !3537, !tbaa !3533
  br label %if.end48, !dbg !3538

if.end48:                                         ; preds = %if.then44, %if.end42
  %density = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 21, !dbg !3539
  %9 = load ptr, ptr %density, align 8, !dbg !3539, !tbaa !1418
  %cmp49.not = icmp eq ptr %9, null, !dbg !3541
  br i1 %cmp49.not, label %if.end54, label %if.then50, !dbg !3542

if.then50:                                        ; preds = %if.end48
  %call52 = tail call ptr @DestroyString(ptr noundef nonnull %9) #17, !dbg !3543
  store ptr %call52, ptr %density, align 8, !dbg !3544, !tbaa !1418
  br label %if.end54, !dbg !3545

if.end54:                                         ; preds = %if.then50, %if.end48
  %view = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 36, !dbg !3546
  %10 = load ptr, ptr %view, align 8, !dbg !3546, !tbaa !3548
  %cmp55.not = icmp eq ptr %10, null, !dbg !3549
  br i1 %cmp55.not, label %if.end60, label %if.then56, !dbg !3550

if.then56:                                        ; preds = %if.end54
  %call58 = tail call ptr @DestroyString(ptr noundef nonnull %10) #17, !dbg !3551
  store ptr %call58, ptr %view, align 8, !dbg !3552, !tbaa !3548
  br label %if.end60, !dbg !3553

if.end60:                                         ; preds = %if.then56, %if.end54
  %authenticate = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 37, !dbg !3554
  %11 = load ptr, ptr %authenticate, align 8, !dbg !3554, !tbaa !3556
  %cmp61.not = icmp eq ptr %11, null, !dbg !3557
  br i1 %cmp61.not, label %if.end66, label %if.then62, !dbg !3558

if.then62:                                        ; preds = %if.end60
  %call64 = tail call ptr @DestroyString(ptr noundef nonnull %11) #17, !dbg !3559
  store ptr %call64, ptr %authenticate, align 8, !dbg !3560, !tbaa !3556
  br label %if.end66, !dbg !3561

if.end66:                                         ; preds = %if.then62, %if.end60
  tail call void @DestroyImageOptions(ptr noundef nonnull %image_info) #17, !dbg !3562
  %cache = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 43, !dbg !3563
  %12 = load ptr, ptr %cache, align 8, !dbg !3563, !tbaa !1483
  %cmp67.not = icmp eq ptr %12, null, !dbg !3565
  br i1 %cmp67.not, label %if.end72, label %if.then68, !dbg !3566

if.then68:                                        ; preds = %if.end66
  %call70 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %12) #17, !dbg !3567
  store ptr %call70, ptr %cache, align 8, !dbg !3568, !tbaa !1483
  br label %if.end72, !dbg !3569

if.end72:                                         ; preds = %if.then68, %if.end66
  %profile = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 60, !dbg !3570
  %13 = load ptr, ptr %profile, align 8, !dbg !3570, !tbaa !3572
  %cmp73.not = icmp eq ptr %13, null, !dbg !3573
  br i1 %cmp73.not, label %if.end78, label %if.then74, !dbg !3574

if.then74:                                        ; preds = %if.end72
  %call76 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %13) #17, !dbg !3575
  store ptr %call76, ptr %profile, align 8, !dbg !3576, !tbaa !3572
  br label %if.end78, !dbg !3577

if.end78:                                         ; preds = %if.then74, %if.end72
  %signature = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 57, !dbg !3578
  store i64 -2880220588, ptr %signature, align 8, !dbg !3579, !tbaa !2200
  %call79 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %image_info) #17, !dbg !3580
  call void @llvm.dbg.value(metadata ptr %call79, metadata !3469, metadata !DIExpression()), !dbg !3470
  ret ptr %call79, !dbg !3581
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImage(ptr noundef %image) local_unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3584, metadata !DIExpression()), !dbg !3597
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3598
  %0 = load i32, ptr %debug, align 8, !dbg !3598, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !3600
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3601

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3420, ptr noundef nonnull @.str.2) #17, !dbg !3602
  br label %if.end, !dbg !3603

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !3604, !tbaa !1217
  %cmp1 = icmp eq i32 %1, 1, !dbg !3606
  br i1 %cmp1, label %cleanup77, label %if.end3, !dbg !3607

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !3588, metadata !DIExpression()), !dbg !3597
  %exception4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3608
  call void @llvm.dbg.value(metadata ptr %exception4, metadata !3586, metadata !DIExpression()), !dbg !3597
  %call5 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception4) #17, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %call5, metadata !3585, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 0, metadata !3589, metadata !DIExpression()), !dbg !3597
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !3588, metadata !DIExpression()), !dbg !3597
  %2 = load i64, ptr %rows, align 8, !dbg !3610, !tbaa !1367
  %cmp6150 = icmp sgt i64 %2, 0, !dbg !3611
  br i1 %cmp6150, label %for.body.lr.ph, label %for.end67, !dbg !3612

for.body.lr.ph:                                   ; preds = %if.end3
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %3 = getelementptr i8, ptr %image, i64 64
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colormap37 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  br label %for.body, !dbg !3612

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0153 = phi i64 [ 0, %for.body.lr.ph ], [ %inc66, %cleanup ]
  %status.0152 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  %range_exception.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %range_exception.3, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0153, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %status.0152, metadata !3588, metadata !DIExpression()), !dbg !3597
  %cmp7 = icmp eq i32 %status.0152, 0, !dbg !3613
  br i1 %cmp7, label %cleanup, label %if.end9, !dbg !3615

if.end9:                                          ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !dbg !3616, !tbaa !1362
  %call10 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call5, i64 noundef 0, i64 noundef %y.0153, i64 noundef %4, i64 noundef 1, ptr noundef nonnull %exception4) #21, !dbg !3617
  call void @llvm.dbg.value(metadata ptr %call10, metadata !3595, metadata !DIExpression()), !dbg !3618
  %cmp11 = icmp eq ptr %call10, null, !dbg !3619
  br i1 %cmp11, label %cleanup, label %if.end13, !dbg !3621

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call5) #17, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %call14, metadata !3594, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 0, metadata !3596, metadata !DIExpression()), !dbg !3618
  %5 = load i64, ptr %columns, align 8, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 0, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %call10, metadata !3595, metadata !DIExpression()), !dbg !3618
  %cmp17128 = icmp sgt i64 %5, 0, !dbg !3623
  br i1 %cmp17128, label %for.body18.lr.ph, label %for.end, !dbg !3626

for.body18.lr.ph:                                 ; preds = %if.end13
  %cmp19 = icmp eq ptr %call14, null
  %image.val = load i64, ptr %3, align 8, !tbaa !1760
  %6 = load i32, ptr %matte, align 8, !tbaa !2317
  %cmp23 = icmp eq i32 %6, 0
  %7 = load ptr, ptr %colormap37, align 8, !tbaa !2558
  br i1 %cmp23, label %for.body18.lr.ph.split.us, label %for.body18.lr.ph.split, !dbg !3627

for.body18.lr.ph.split.us:                        ; preds = %for.body18.lr.ph
  br i1 %cmp19, label %for.body18.lr.ph.split.us.split.us, label %for.body18.us, !dbg !3629

for.body18.lr.ph.split.us.split.us:               ; preds = %for.body18.lr.ph.split.us
  %cmp.i.us.us.not = icmp eq i64 %image.val, 0
  %red.us.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %green.us.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  br label %for.body18.us.us, !dbg !3626

for.body18.us.us:                                 ; preds = %for.body18.us.us, %for.body18.lr.ph.split.us.split.us
  %x.0132.us.us = phi i64 [ 0, %for.body18.lr.ph.split.us.split.us ], [ %inc.us.us, %for.body18.us.us ]
  %q.0130.us.us = phi ptr [ %call10, %for.body18.lr.ph.split.us.split.us ], [ %incdec.ptr.us.us, %for.body18.us.us ]
  %range_exception.1129.us.us = phi i32 [ %range_exception.0151, %for.body18.lr.ph.split.us.split.us ], [ %spec.select126.us.us, %for.body18.us.us ]
  call void @llvm.dbg.value(metadata i64 %x.0132.us.us, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %q.0130.us.us, metadata !3595, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr undef, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 undef, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr undef, metadata !3637, metadata !DIExpression()), !dbg !3638
  %spec.select126.us.us = select i1 %cmp.i.us.us.not, i32 1, i32 %range_exception.1129.us.us, !dbg !3640
  call void @llvm.dbg.value(metadata i16 undef, metadata !3590, metadata !DIExpression()), !dbg !3618
  %8 = load i16, ptr %red.us.us, align 2, !dbg !3641, !tbaa !2431
  %red28.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us.us, i64 0, i32 2, !dbg !3641
  store i16 %8, ptr %red28.us.us, align 2, !dbg !3641, !tbaa !2431
  %9 = load i16, ptr %green.us.us, align 2, !dbg !3641, !tbaa !2433
  %green32.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us.us, i64 0, i32 1, !dbg !3641
  store i16 %9, ptr %green32.us.us, align 2, !dbg !3641, !tbaa !2433
  %10 = load i16, ptr %7, align 2, !dbg !3641, !tbaa !2435
  store i16 %10, ptr %q.0130.us.us, align 2, !dbg !3641, !tbaa !2435
  %incdec.ptr.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us.us, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us, metadata !3595, metadata !DIExpression()), !dbg !3618
  %inc.us.us = add nuw nsw i64 %x.0132.us.us, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %inc.us.us, metadata !3596, metadata !DIExpression()), !dbg !3618
  %exitcond161.not = icmp eq i64 %inc.us.us, %5, !dbg !3623
  br i1 %exitcond161.not, label %for.end, label %for.body18.us.us, !dbg !3626, !llvm.loop !3646

for.body18.us:                                    ; preds = %for.body18.lr.ph.split.us, %for.body18.us
  %x.0132.us = phi i64 [ %inc.us, %for.body18.us ], [ 0, %for.body18.lr.ph.split.us ]
  %q.0130.us = phi ptr [ %incdec.ptr.us, %for.body18.us ], [ %call10, %for.body18.lr.ph.split.us ]
  %range_exception.1129.us = phi i32 [ %spec.select126.us, %for.body18.us ], [ %range_exception.0151, %for.body18.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata i64 %x.0132.us, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %q.0130.us, metadata !3595, metadata !DIExpression()), !dbg !3618
  %add.ptr.us = getelementptr inbounds i16, ptr %call14, i64 %x.0132.us, !dbg !3629
  %11 = load i16, ptr %add.ptr.us, align 2, !dbg !3629, !tbaa !2445
  %conv.us = zext i16 %11 to i64, !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 undef, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr undef, metadata !3637, metadata !DIExpression()), !dbg !3638
  %cmp.i.us = icmp ugt i64 %image.val, %conv.us, !dbg !3648
  %spec.select126.us = select i1 %cmp.i.us, i32 %range_exception.1129.us, i32 1, !dbg !3640
  call void @llvm.dbg.value(metadata i16 undef, metadata !3590, metadata !DIExpression()), !dbg !3618
  %conv26.us = select i1 %cmp.i.us, i64 %conv.us, i64 0, !dbg !3641
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv26.us, i32 2, !dbg !3641
  %12 = load i16, ptr %red.us, align 2, !dbg !3641, !tbaa !2431
  %red28.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us, i64 0, i32 2, !dbg !3641
  store i16 %12, ptr %red28.us, align 2, !dbg !3641, !tbaa !2431
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv26.us, i32 1, !dbg !3641
  %13 = load i16, ptr %green.us, align 2, !dbg !3641, !tbaa !2433
  %green32.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us, i64 0, i32 1, !dbg !3641
  store i16 %13, ptr %green32.us, align 2, !dbg !3641, !tbaa !2433
  %add.ptr35.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv26.us, !dbg !3641
  %14 = load i16, ptr %add.ptr35.us, align 2, !dbg !3641, !tbaa !2435
  store i16 %14, ptr %q.0130.us, align 2, !dbg !3641, !tbaa !2435
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !3595, metadata !DIExpression()), !dbg !3618
  %inc.us = add nuw nsw i64 %x.0132.us, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !3596, metadata !DIExpression()), !dbg !3618
  %exitcond160.not = icmp eq i64 %inc.us, %5, !dbg !3623
  br i1 %exitcond160.not, label %for.end, label %for.body18.us, !dbg !3626, !llvm.loop !3646

for.body18.lr.ph.split:                           ; preds = %for.body18.lr.ph
  br i1 %cmp19, label %for.body18.lr.ph.split.split.us, label %for.body18, !dbg !3629

for.body18.lr.ph.split.split.us:                  ; preds = %for.body18.lr.ph.split
  %cmp.i.us140.not = icmp eq i64 %image.val, 0
  %red40.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %green45.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  br label %for.body18.us134, !dbg !3626

for.body18.us134:                                 ; preds = %for.body18.us134, %for.body18.lr.ph.split.split.us
  %x.0132.us135 = phi i64 [ 0, %for.body18.lr.ph.split.split.us ], [ %inc.us145, %for.body18.us134 ]
  %q.0130.us136 = phi ptr [ %call10, %for.body18.lr.ph.split.split.us ], [ %incdec.ptr.us144, %for.body18.us134 ]
  %range_exception.1129.us137 = phi i32 [ %range_exception.0151, %for.body18.lr.ph.split.split.us ], [ %spec.select126.us142, %for.body18.us134 ]
  call void @llvm.dbg.value(metadata i64 %x.0132.us135, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %q.0130.us136, metadata !3595, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr undef, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 undef, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr undef, metadata !3637, metadata !DIExpression()), !dbg !3638
  %spec.select126.us142 = select i1 %cmp.i.us140.not, i32 1, i32 %range_exception.1129.us137, !dbg !3640
  call void @llvm.dbg.value(metadata i16 undef, metadata !3590, metadata !DIExpression()), !dbg !3618
  %15 = load i16, ptr %red40.us, align 2, !dbg !3650, !tbaa !2431
  %red41.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us136, i64 0, i32 2, !dbg !3650
  store i16 %15, ptr %red41.us, align 2, !dbg !3650, !tbaa !2431
  %16 = load i16, ptr %green45.us, align 2, !dbg !3650, !tbaa !2433
  %green46.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us136, i64 0, i32 1, !dbg !3650
  store i16 %16, ptr %green46.us, align 2, !dbg !3650, !tbaa !2433
  %17 = load i16, ptr %7, align 2, !dbg !3650, !tbaa !2435
  store i16 %17, ptr %q.0130.us136, align 2, !dbg !3650, !tbaa !2435
  %18 = load i16, ptr %opacity.us, align 2, !dbg !3650, !tbaa !2437
  %opacity55.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us136, i64 0, i32 3, !dbg !3650
  store i16 %18, ptr %opacity55.us, align 2, !dbg !3650, !tbaa !2437
  %incdec.ptr.us144 = getelementptr inbounds %struct._PixelPacket, ptr %q.0130.us136, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us144, metadata !3595, metadata !DIExpression()), !dbg !3618
  %inc.us145 = add nuw nsw i64 %x.0132.us135, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %inc.us145, metadata !3596, metadata !DIExpression()), !dbg !3618
  %exitcond159.not = icmp eq i64 %inc.us145, %5, !dbg !3623
  br i1 %exitcond159.not, label %for.end, label %for.body18.us134, !dbg !3626, !llvm.loop !3646

for.body18:                                       ; preds = %for.body18.lr.ph.split, %for.body18
  %x.0132 = phi i64 [ %inc, %for.body18 ], [ 0, %for.body18.lr.ph.split ]
  %q.0130 = phi ptr [ %incdec.ptr, %for.body18 ], [ %call10, %for.body18.lr.ph.split ]
  %range_exception.1129 = phi i32 [ %spec.select126, %for.body18 ], [ %range_exception.0151, %for.body18.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x.0132, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %q.0130, metadata !3595, metadata !DIExpression()), !dbg !3618
  %add.ptr = getelementptr inbounds i16, ptr %call14, i64 %x.0132, !dbg !3629
  %19 = load i16, ptr %add.ptr, align 2, !dbg !3629, !tbaa !2445
  %conv = zext i16 %19 to i64, !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 undef, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr undef, metadata !3637, metadata !DIExpression()), !dbg !3638
  %cmp.i = icmp ugt i64 %image.val, %conv, !dbg !3648
  %spec.select126 = select i1 %cmp.i, i32 %range_exception.1129, i32 1, !dbg !3640
  call void @llvm.dbg.value(metadata i16 undef, metadata !3590, metadata !DIExpression()), !dbg !3618
  %conv38 = select i1 %cmp.i, i64 %conv, i64 0, !dbg !3650
  %red40 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv38, i32 2, !dbg !3650
  %20 = load i16, ptr %red40, align 2, !dbg !3650, !tbaa !2431
  %red41 = getelementptr inbounds %struct._PixelPacket, ptr %q.0130, i64 0, i32 2, !dbg !3650
  store i16 %20, ptr %red41, align 2, !dbg !3650, !tbaa !2431
  %green45 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv38, i32 1, !dbg !3650
  %21 = load i16, ptr %green45, align 2, !dbg !3650, !tbaa !2433
  %green46 = getelementptr inbounds %struct._PixelPacket, ptr %q.0130, i64 0, i32 1, !dbg !3650
  store i16 %21, ptr %green46, align 2, !dbg !3650, !tbaa !2433
  %add.ptr49 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv38, !dbg !3650
  %22 = load i16, ptr %add.ptr49, align 2, !dbg !3650, !tbaa !2435
  store i16 %22, ptr %q.0130, align 2, !dbg !3650, !tbaa !2435
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %conv38, i32 3, !dbg !3650
  %23 = load i16, ptr %opacity, align 2, !dbg !3650, !tbaa !2437
  %opacity55 = getelementptr inbounds %struct._PixelPacket, ptr %q.0130, i64 0, i32 3, !dbg !3650
  store i16 %23, ptr %opacity55, align 2, !dbg !3650, !tbaa !2437
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0130, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3595, metadata !DIExpression()), !dbg !3618
  %inc = add nuw nsw i64 %x.0132, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3596, metadata !DIExpression()), !dbg !3618
  %exitcond.not = icmp eq i64 %inc, %5, !dbg !3623
  br i1 %exitcond.not, label %for.end, label %for.body18, !dbg !3626, !llvm.loop !3646

for.end:                                          ; preds = %for.body18, %for.body18.us134, %for.body18.us, %for.body18.us.us, %if.end13
  %range_exception.1.lcssa = phi i32 [ %range_exception.0151, %if.end13 ], [ %spec.select126.us.us, %for.body18.us.us ], [ %spec.select126.us, %for.body18.us ], [ %spec.select126.us142, %for.body18.us134 ], [ %spec.select126, %for.body18 ], !dbg !3652
  %call57 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call5, ptr noundef nonnull %exception4) #21, !dbg !3653
  %cmp58 = icmp ne i32 %call57, 0, !dbg !3655
  %spec.select = zext i1 %cmp58 to i32, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3588, metadata !DIExpression()), !dbg !3597
  br label %cleanup, !dbg !3657

cleanup:                                          ; preds = %if.end9, %for.body, %for.end
  %range_exception.3 = phi i32 [ %range_exception.0151, %for.body ], [ %range_exception.0151, %if.end9 ], [ %range_exception.1.lcssa, %for.end ], !dbg !3652
  %status.2 = phi i32 [ 0, %for.body ], [ 0, %if.end9 ], [ %spec.select, %for.end ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !3588, metadata !DIExpression()), !dbg !3597
  %inc66 = add nuw nsw i64 %y.0153, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %inc66, metadata !3589, metadata !DIExpression()), !dbg !3597
  %24 = load i64, ptr %rows, align 8, !dbg !3610, !tbaa !1367
  %cmp6 = icmp slt i64 %inc66, %24, !dbg !3611
  br i1 %cmp6, label %for.body, label %for.end67, !dbg !3612, !llvm.loop !3659

for.end67:                                        ; preds = %cleanup, %if.end3
  %range_exception.0.lcssa = phi i32 [ 0, %if.end3 ], [ %range_exception.3, %cleanup ], !dbg !3652
  %status.0.lcssa = phi i32 [ 1, %if.end3 ], [ %status.2, %cleanup ], !dbg !3661
  %call68 = tail call ptr @DestroyCacheView(ptr noundef %call5) #17, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %call68, metadata !3585, metadata !DIExpression()), !dbg !3597
  %ping = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 80, !dbg !3663
  %25 = load i32, ptr %ping, align 8, !dbg !3663, !tbaa !1307
  %cmp69 = icmp eq i32 %25, 0, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %range_exception.0.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3597
  %cmp71 = icmp ne i32 %range_exception.0.lcssa, 0
  %or.cond = select i1 %cmp69, i1 %cmp71, i1 false, !dbg !3666
  br i1 %or.cond, label %if.then73, label %cleanup77, !dbg !3666

if.then73:                                        ; preds = %for.end67
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3667
  %call75 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3470, i32 noundef 425, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #17, !dbg !3668
  br label %cleanup77, !dbg !3669

cleanup77:                                        ; preds = %for.end67, %if.then73, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %status.0.lcssa, %if.then73 ], [ %status.0.lcssa, %for.end67 ], !dbg !3597
  ret i32 %retval.0, !dbg !3670
}

declare !dbg !3671 i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageClipMask(ptr noundef %image, ptr noundef %clip_mask) local_unnamed_addr #0 !dbg !3675 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %clip_mask, metadata !3680, metadata !DIExpression()), !dbg !3681
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3682
  %0 = load i32, ptr %debug, align 8, !dbg !3682, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !3684
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3685

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2393, ptr noundef nonnull @.str.2) #17, !dbg !3686
  br label %if.end, !dbg !3687

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq ptr %clip_mask, null, !dbg !3688
  br i1 %cmp1.not, label %if.end13, label %if.then2, !dbg !3690

if.then2:                                         ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %clip_mask, i64 0, i32 7, !dbg !3691
  %1 = load i64, ptr %columns, align 8, !dbg !3691, !tbaa !1362
  %columns3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3693
  %2 = load i64, ptr %columns3, align 8, !dbg !3693, !tbaa !1362
  %cmp4.not = icmp eq i64 %1, %2, !dbg !3694
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then9, !dbg !3695

lor.lhs.false:                                    ; preds = %if.then2
  %rows = getelementptr inbounds %struct._Image, ptr %clip_mask, i64 0, i32 8, !dbg !3696
  %3 = load i64, ptr %rows, align 8, !dbg !3696, !tbaa !1367
  %rows5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3697
  %4 = load i64, ptr %rows5, align 8, !dbg !3697, !tbaa !1367
  %cmp6.not = icmp eq i64 %3, %4, !dbg !3698
  br i1 %cmp6.not, label %if.end13, label %if.then9, !dbg !3699

if.then9:                                         ; preds = %if.then2, %lor.lhs.false
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3700
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3700
  %call10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2398, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #17, !dbg !3700
  br label %return, !dbg !3700

if.end13:                                         ; preds = %lor.lhs.false, %if.end
  %clip_mask14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !3703
  %5 = load ptr, ptr %clip_mask14, align 8, !dbg !3703, !tbaa !2634
  %cmp15.not = icmp eq ptr %5, null, !dbg !3705
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !3706

if.then16:                                        ; preds = %if.end13
  %call18 = tail call ptr @DestroyImage(ptr noundef nonnull %5), !dbg !3707
  store ptr %call18, ptr %clip_mask14, align 8, !dbg !3708, !tbaa !2634
  br label %if.end20, !dbg !3709

if.end20:                                         ; preds = %if.then16, %if.end13
  %call21 = tail call ptr @NewImageList() #17, !dbg !3710
  store ptr %call21, ptr %clip_mask14, align 8, !dbg !3711, !tbaa !2634
  br i1 %cmp1.not, label %return, label %if.end25, !dbg !3712

if.end25:                                         ; preds = %if.end20
  call void @llvm.dbg.value(metadata ptr %image, metadata !2351, metadata !DIExpression()) #17, !dbg !3713
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !3713
  store i32 1, ptr %image, align 8, !dbg !3716, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3717
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef nonnull %exception.i) #17, !dbg !3718
  %cmp27 = icmp eq i32 %call.i, 0, !dbg !3719
  br i1 %cmp27, label %return, label %if.end29, !dbg !3720

if.end29:                                         ; preds = %if.end25
  %call31 = tail call ptr @CloneImage(ptr noundef nonnull %clip_mask, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %exception.i), !dbg !3721
  store ptr %call31, ptr %clip_mask14, align 8, !dbg !3722, !tbaa !2634
  %cmp34 = icmp ne ptr %call31, null, !dbg !3723
  %. = zext i1 %cmp34 to i32, !dbg !3681
  br label %return, !dbg !3681

return:                                           ; preds = %if.end29, %if.end25, %if.end20, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end20 ], [ 0, %if.end25 ], [ %., %if.end29 ], !dbg !3681
  ret i32 %retval.0, !dbg !3725
}

; Function Attrs: allocsize(0,1)
declare !dbg !3726 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !3729 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3732 i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3733 i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3734 i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3736 void @Ascii85Initialize(ptr noundef) local_unnamed_addr #3

declare !dbg !3737 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !3740 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3743 ptr @ReferencePixelCache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare !dbg !3746 ptr @ClonePixelCache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImageInfo(ptr noundef %image_info) local_unnamed_addr #0 !dbg !3749 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3753, metadata !DIExpression()), !dbg !3755
  %call = tail call ptr @AcquireImageInfo(), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %call, metadata !3754, metadata !DIExpression()), !dbg !3755
  %cmp = icmp eq ptr %image_info, null, !dbg !3757
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3759

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %image_info, align 8, !dbg !3760, !tbaa !1395
  store i32 %0, ptr %call, align 8, !dbg !3761, !tbaa !1395
  %temporary = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 2, !dbg !3762
  %1 = load i32, ptr %temporary, align 8, !dbg !3762, !tbaa !3763
  %temporary2 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 2, !dbg !3764
  store i32 %1, ptr %temporary2, align 8, !dbg !3765, !tbaa !3763
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !3766
  %2 = load i32, ptr %adjoin, align 4, !dbg !3766, !tbaa !2160
  %adjoin3 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 3, !dbg !3767
  store i32 %2, ptr %adjoin3, align 4, !dbg !3768, !tbaa !2160
  %antialias = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 5, !dbg !3769
  %3 = load i32, ptr %antialias, align 4, !dbg !3769, !tbaa !2170
  %antialias4 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 5, !dbg !3770
  store i32 %3, ptr %antialias4, align 4, !dbg !3771, !tbaa !2170
  %scene = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 10, !dbg !3772
  %4 = load i64, ptr %scene, align 8, !dbg !3772, !tbaa !3773
  %scene5 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 10, !dbg !3774
  store i64 %4, ptr %scene5, align 8, !dbg !3775, !tbaa !3773
  %number_scenes = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 11, !dbg !3776
  %5 = load i64, ptr %number_scenes, align 8, !dbg !3776, !tbaa !3777
  %number_scenes6 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 11, !dbg !3778
  store i64 %5, ptr %number_scenes6, align 8, !dbg !3779, !tbaa !3777
  %depth = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 12, !dbg !3780
  %6 = load i64, ptr %depth, align 8, !dbg !3780, !tbaa !1454
  %depth7 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 12, !dbg !3781
  store i64 %6, ptr %depth7, align 8, !dbg !3782, !tbaa !1454
  %size = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 6, !dbg !3783
  %size8 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 6, !dbg !3784
  %7 = load ptr, ptr %size8, align 8, !dbg !3784, !tbaa !1352
  %call9 = tail call ptr @CloneString(ptr noundef nonnull %size, ptr noundef %7) #17, !dbg !3785
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 7, !dbg !3786
  %extract10 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 7, !dbg !3787
  %8 = load ptr, ptr %extract10, align 8, !dbg !3787, !tbaa !1376
  %call11 = tail call ptr @CloneString(ptr noundef nonnull %extract, ptr noundef %8) #17, !dbg !3788
  %scenes = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 9, !dbg !3789
  %scenes12 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 9, !dbg !3790
  %9 = load ptr, ptr %scenes12, align 8, !dbg !3790, !tbaa !3494
  %call13 = tail call ptr @CloneString(ptr noundef nonnull %scenes, ptr noundef %9) #17, !dbg !3791
  %page = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 8, !dbg !3792
  %page14 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 8, !dbg !3793
  %10 = load ptr, ptr %page14, align 8, !dbg !3793, !tbaa !1441
  %call15 = tail call ptr @CloneString(ptr noundef nonnull %page, ptr noundef %10) #17, !dbg !3794
  %interlace = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 13, !dbg !3795
  %11 = load i32, ptr %interlace, align 8, !dbg !3795, !tbaa !1410
  %interlace16 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 13, !dbg !3796
  store i32 %11, ptr %interlace16, align 8, !dbg !3797, !tbaa !1410
  %endian = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !3798
  %12 = load i32, ptr %endian, align 4, !dbg !3798, !tbaa !1405
  %endian17 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 14, !dbg !3799
  store i32 %12, ptr %endian17, align 4, !dbg !3800, !tbaa !1405
  %units = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 15, !dbg !3801
  %13 = load i32, ptr %units, align 8, !dbg !3801, !tbaa !1413
  %units18 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 15, !dbg !3802
  store i32 %13, ptr %units18, align 8, !dbg !3803, !tbaa !1413
  %quality = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 16, !dbg !3804
  %14 = load i64, ptr %quality, align 8, !dbg !3804, !tbaa !1400
  %quality19 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 16, !dbg !3805
  store i64 %14, ptr %quality19, align 8, !dbg !3806, !tbaa !1400
  %sampling_factor = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 17, !dbg !3807
  %sampling_factor20 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 17, !dbg !3808
  %15 = load ptr, ptr %sampling_factor20, align 8, !dbg !3808, !tbaa !3509
  %call21 = tail call ptr @CloneString(ptr noundef nonnull %sampling_factor, ptr noundef %15) #17, !dbg !3809
  %server_name = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 18, !dbg !3810
  %server_name22 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 18, !dbg !3811
  %16 = load ptr, ptr %server_name22, align 8, !dbg !3811, !tbaa !3517
  %call23 = tail call ptr @CloneString(ptr noundef nonnull %server_name, ptr noundef %16) #17, !dbg !3812
  %font = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 19, !dbg !3813
  %font24 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 19, !dbg !3814
  %17 = load ptr, ptr %font24, align 8, !dbg !3814, !tbaa !3525
  %call25 = tail call ptr @CloneString(ptr noundef nonnull %font, ptr noundef %17) #17, !dbg !3815
  %texture = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 20, !dbg !3816
  %texture26 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 20, !dbg !3817
  %18 = load ptr, ptr %texture26, align 8, !dbg !3817, !tbaa !3533
  %call27 = tail call ptr @CloneString(ptr noundef nonnull %texture, ptr noundef %18) #17, !dbg !3818
  %density = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 21, !dbg !3819
  %density28 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 21, !dbg !3820
  %19 = load ptr, ptr %density28, align 8, !dbg !3820, !tbaa !1418
  %call29 = tail call ptr @CloneString(ptr noundef nonnull %density, ptr noundef %19) #17, !dbg !3821
  %pointsize = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 22, !dbg !3822
  %20 = load double, ptr %pointsize, align 8, !dbg !3822, !tbaa !3823
  %pointsize30 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 22, !dbg !3824
  store double %20, ptr %pointsize30, align 8, !dbg !3825, !tbaa !3823
  %fuzz = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 23, !dbg !3826
  %21 = load double, ptr %fuzz, align 8, !dbg !3826, !tbaa !3827
  %fuzz31 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 23, !dbg !3828
  store double %21, ptr %fuzz31, align 8, !dbg !3829, !tbaa !3827
  %pen = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 56, !dbg !3830
  %pen32 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 56, !dbg !3831
  %22 = load i64, ptr %pen32, align 8, !dbg !3831
  store i64 %22, ptr %pen, align 8, !dbg !3831
  %background_color = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 24, !dbg !3832
  %background_color33 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 24, !dbg !3833
  %23 = load i64, ptr %background_color33, align 8, !dbg !3833
  store i64 %23, ptr %background_color, align 8, !dbg !3833
  %border_color = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 25, !dbg !3834
  %border_color34 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 25, !dbg !3835
  %24 = load i64, ptr %border_color34, align 8, !dbg !3835
  store i64 %24, ptr %border_color, align 8, !dbg !3835
  %matte_color = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 26, !dbg !3836
  %matte_color35 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 26, !dbg !3837
  %25 = load i64, ptr %matte_color35, align 8, !dbg !3837
  store i64 %25, ptr %matte_color, align 8, !dbg !3837
  %transparent_color = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 59, !dbg !3838
  %transparent_color36 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 59, !dbg !3839
  %26 = load i64, ptr %transparent_color36, align 4, !dbg !3839
  store i64 %26, ptr %transparent_color, align 4, !dbg !3839
  %dither = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 27, !dbg !3840
  %27 = load i32, ptr %dither, align 8, !dbg !3840, !tbaa !1460
  %dither37 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 27, !dbg !3841
  store i32 %27, ptr %dither37, align 8, !dbg !3842, !tbaa !1460
  %monochrome = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 28, !dbg !3843
  %28 = load i32, ptr %monochrome, align 4, !dbg !3843, !tbaa !3844
  %monochrome38 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 28, !dbg !3845
  store i32 %28, ptr %monochrome38, align 4, !dbg !3846, !tbaa !3844
  %colors = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 29, !dbg !3847
  %29 = load i64, ptr %colors, align 8, !dbg !3847, !tbaa !3848
  %colors39 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 29, !dbg !3849
  store i64 %29, ptr %colors39, align 8, !dbg !3850, !tbaa !3848
  %colorspace = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 30, !dbg !3851
  %30 = load i32, ptr %colorspace, align 8, !dbg !3851, !tbaa !3852
  %colorspace40 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 30, !dbg !3853
  store i32 %30, ptr %colorspace40, align 8, !dbg !3854, !tbaa !3852
  %type = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 31, !dbg !3855
  %31 = load i32, ptr %type, align 4, !dbg !3855, !tbaa !3856
  %type41 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 31, !dbg !3857
  store i32 %31, ptr %type41, align 4, !dbg !3858, !tbaa !3856
  %orientation = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 1, !dbg !3859
  %32 = load i32, ptr %orientation, align 4, !dbg !3859, !tbaa !3860
  %orientation42 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 1, !dbg !3861
  store i32 %32, ptr %orientation42, align 4, !dbg !3862, !tbaa !3860
  %preview_type = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 32, !dbg !3863
  %33 = load i32, ptr %preview_type, align 8, !dbg !3863, !tbaa !3864
  %preview_type43 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 32, !dbg !3865
  store i32 %33, ptr %preview_type43, align 8, !dbg !3866, !tbaa !3864
  %group = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 33, !dbg !3867
  %34 = load i64, ptr %group, align 8, !dbg !3867, !tbaa !3868
  %group44 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 33, !dbg !3869
  store i64 %34, ptr %group44, align 8, !dbg !3870, !tbaa !3868
  %ping = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 34, !dbg !3871
  %35 = load i32, ptr %ping, align 8, !dbg !3871, !tbaa !1469
  %ping45 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 34, !dbg !3872
  store i32 %35, ptr %ping45, align 8, !dbg !3873, !tbaa !1469
  %verbose = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 35, !dbg !3874
  %36 = load i32, ptr %verbose, align 4, !dbg !3874, !tbaa !3875
  %verbose46 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 35, !dbg !3876
  store i32 %36, ptr %verbose46, align 4, !dbg !3877, !tbaa !3875
  %view = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 36, !dbg !3878
  %view47 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 36, !dbg !3879
  %37 = load ptr, ptr %view47, align 8, !dbg !3879, !tbaa !3548
  %call48 = tail call ptr @CloneString(ptr noundef nonnull %view, ptr noundef %37) #17, !dbg !3880
  %authenticate = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 37, !dbg !3881
  %authenticate49 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 37, !dbg !3882
  %38 = load ptr, ptr %authenticate49, align 8, !dbg !3882, !tbaa !3556
  %call50 = tail call ptr @CloneString(ptr noundef nonnull %authenticate, ptr noundef %38) #17, !dbg !3883
  %call51 = tail call i32 @CloneImageOptions(ptr noundef nonnull %call, ptr noundef nonnull %image_info) #17, !dbg !3884
  %progress_monitor = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 41, !dbg !3885
  %39 = load ptr, ptr %progress_monitor, align 8, !dbg !3885, !tbaa !1472
  %progress_monitor52 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 41, !dbg !3886
  store ptr %39, ptr %progress_monitor52, align 8, !dbg !3887, !tbaa !1472
  %client_data = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 42, !dbg !3888
  %40 = load ptr, ptr %client_data, align 8, !dbg !3888, !tbaa !1477
  %client_data53 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 42, !dbg !3889
  store ptr %40, ptr %client_data53, align 8, !dbg !3890, !tbaa !1477
  %cache = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 43, !dbg !3891
  %41 = load ptr, ptr %cache, align 8, !dbg !3891, !tbaa !1483
  %cache54 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 43, !dbg !3892
  store ptr %41, ptr %cache54, align 8, !dbg !3893, !tbaa !1483
  %42 = load ptr, ptr %cache, align 8, !dbg !3894, !tbaa !1483
  %cmp56.not = icmp eq ptr %42, null, !dbg !3896
  br i1 %cmp56.not, label %if.end61, label %if.then57, !dbg !3897

if.then57:                                        ; preds = %if.end
  %call59 = tail call ptr @ReferencePixelCache(ptr noundef nonnull %42) #17, !dbg !3898
  store ptr %call59, ptr %cache54, align 8, !dbg !3899, !tbaa !1483
  br label %if.end61, !dbg !3900

if.end61:                                         ; preds = %if.then57, %if.end
  %profile = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 60, !dbg !3901
  %43 = load ptr, ptr %profile, align 8, !dbg !3901, !tbaa !3572
  %cmp62.not = icmp eq ptr %43, null, !dbg !3903
  br i1 %cmp62.not, label %if.end67, label %if.then63, !dbg !3904

if.then63:                                        ; preds = %if.end61
  %call65 = tail call ptr @CloneStringInfo(ptr noundef nonnull %43) #17, !dbg !3905
  %profile66 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 60, !dbg !3906
  store ptr %call65, ptr %profile66, align 8, !dbg !3907, !tbaa !3572
  br label %if.end67, !dbg !3908

if.end67:                                         ; preds = %if.then63, %if.end61
  %file = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !3909
  %44 = load ptr, ptr %file, align 8, !dbg !3909, !tbaa !1338
  call void @llvm.dbg.value(metadata ptr %call, metadata !3910, metadata !DIExpression()) #17, !dbg !3916
  call void @llvm.dbg.value(metadata ptr %44, metadata !3915, metadata !DIExpression()) #17, !dbg !3916
  %debug.i = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 52, !dbg !3918
  %45 = load i32, ptr %debug.i, align 8, !dbg !3918, !tbaa !2197
  %cmp.not.i = icmp eq i32 %45, 0, !dbg !3920
  br i1 %cmp.not.i, label %SetImageInfoFile.exit.thread, label %SetImageInfoFile.exit, !dbg !3921

SetImageInfoFile.exit.thread:                     ; preds = %if.end67
  %file1.i215 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 45, !dbg !3922
  store ptr %44, ptr %file1.i215, align 8, !dbg !3923, !tbaa !1338
  %blob216 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 46, !dbg !3924
  %46 = load ptr, ptr %blob216, align 8, !dbg !3924, !tbaa !3925
  %length217 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 47, !dbg !3926
  %47 = load i64, ptr %length217, align 8, !dbg !3926, !tbaa !3927
  call void @llvm.dbg.value(metadata ptr %call, metadata !3928, metadata !DIExpression()) #17, !dbg !3935
  call void @llvm.dbg.value(metadata ptr %48, metadata !3933, metadata !DIExpression()) #17, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %49, metadata !3934, metadata !DIExpression()) #17, !dbg !3935
  br label %SetImageInfoBlob.exit, !dbg !3937

SetImageInfoFile.exit:                            ; preds = %if.end67
  %filename.i = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 51, !dbg !3938
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !3939
  %.pr = load i32, ptr %debug.i, align 8, !dbg !3940, !tbaa !2197
  %file1.i = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 45, !dbg !3922
  store ptr %44, ptr %file1.i, align 8, !dbg !3923, !tbaa !1338
  %blob = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 46, !dbg !3924
  %48 = load ptr, ptr %blob, align 8, !dbg !3924, !tbaa !3925
  %length = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 47, !dbg !3926
  %49 = load i64, ptr %length, align 8, !dbg !3926, !tbaa !3927
  call void @llvm.dbg.value(metadata ptr %call, metadata !3928, metadata !DIExpression()) #17, !dbg !3935
  call void @llvm.dbg.value(metadata ptr %48, metadata !3933, metadata !DIExpression()) #17, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %49, metadata !3934, metadata !DIExpression()) #17, !dbg !3935
  %cmp.not.i211 = icmp eq i32 %.pr, 0, !dbg !3942
  br i1 %cmp.not.i211, label %SetImageInfoBlob.exit, label %if.then.i214, !dbg !3937

if.then.i214:                                     ; preds = %SetImageInfoFile.exit
  %call.i213 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !3943
  br label %SetImageInfoBlob.exit, !dbg !3944

SetImageInfoBlob.exit:                            ; preds = %SetImageInfoFile.exit.thread, %SetImageInfoFile.exit, %if.then.i214
  %50 = phi i64 [ %47, %SetImageInfoFile.exit.thread ], [ %49, %SetImageInfoFile.exit ], [ %49, %if.then.i214 ]
  %51 = phi ptr [ %46, %SetImageInfoFile.exit.thread ], [ %48, %SetImageInfoFile.exit ], [ %48, %if.then.i214 ]
  %blob1.i = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 46, !dbg !3945
  store ptr %51, ptr %blob1.i, align 8, !dbg !3946, !tbaa !3925
  %length2.i = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 47, !dbg !3947
  store i64 %50, ptr %length2.i, align 8, !dbg !3948, !tbaa !3927
  %stream = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 44, !dbg !3949
  %52 = load ptr, ptr %stream, align 8, !dbg !3949, !tbaa !3950
  %stream68 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 44, !dbg !3951
  store ptr %52, ptr %stream68, align 8, !dbg !3952, !tbaa !3950
  %virtual_pixel_method = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 58, !dbg !3953
  %53 = load i32, ptr %virtual_pixel_method, align 8, !dbg !3953, !tbaa !3954
  %virtual_pixel_method69 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 58, !dbg !3955
  store i32 %53, ptr %virtual_pixel_method69, align 8, !dbg !3956, !tbaa !3954
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 48, !dbg !3957
  %magick70 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !3958
  %call72 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick70, i64 noundef 4096) #17, !dbg !3959
  %unique = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 49, !dbg !3960
  %unique74 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 49, !dbg !3961
  %call76 = tail call i64 @CopyMagickString(ptr noundef nonnull %unique, ptr noundef nonnull %unique74, i64 noundef 4096) #17, !dbg !3962
  %zero = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 50, !dbg !3963
  %zero78 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 50, !dbg !3964
  %call80 = tail call i64 @CopyMagickString(ptr noundef nonnull %zero, ptr noundef nonnull %zero78, i64 noundef 4096) #17, !dbg !3965
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 51, !dbg !3966
  %filename82 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3967
  %call84 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename82, i64 noundef 4096) #17, !dbg !3968
  %54 = load i64, ptr %scene, align 8, !dbg !3969, !tbaa !3773
  %subimage = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 54, !dbg !3970
  store i64 %54, ptr %subimage, align 8, !dbg !3971, !tbaa !3972
  %55 = load i64, ptr %number_scenes, align 8, !dbg !3973, !tbaa !3777
  %subrange = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 55, !dbg !3974
  store i64 %55, ptr %subrange, align 8, !dbg !3975, !tbaa !3976
  %channel = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 38, !dbg !3977
  %56 = load i32, ptr %channel, align 8, !dbg !3977, !tbaa !2165
  %channel87 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 38, !dbg !3978
  store i32 %56, ptr %channel87, align 8, !dbg !3979, !tbaa !2165
  %call88 = tail call i32 @IsEventLogging() #17, !dbg !3980
  store i32 %call88, ptr %debug.i, align 8, !dbg !3981, !tbaa !2197
  %signature = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 57, !dbg !3982
  %57 = load i64, ptr %signature, align 8, !dbg !3982, !tbaa !2200
  %signature89 = getelementptr inbounds %struct._ImageInfo, ptr %call, i64 0, i32 57, !dbg !3983
  store i64 %57, ptr %signature89, align 8, !dbg !3984, !tbaa !2200
  br label %cleanup, !dbg !3985

cleanup:                                          ; preds = %entry, %SetImageInfoBlob.exit
  ret ptr %call, !dbg !3986
}

declare !dbg !3987 i32 @CloneImageOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3990 ptr @CloneStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SetImageInfoFile(ptr noundef %image_info, ptr noundef %file) local_unnamed_addr #0 !dbg !3911 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3910, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %file, metadata !3915, metadata !DIExpression()), !dbg !3995
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !3996
  %0 = load i32, ptr %debug, align 8, !dbg !3996, !tbaa !2197
  %cmp.not = icmp eq i32 %0, 0, !dbg !3997
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3998

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3999
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4000
  br label %if.end, !dbg !4001

if.end:                                           ; preds = %if.then, %entry
  %file1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !4002
  store ptr %file, ptr %file1, align 8, !dbg !4003, !tbaa !1338
  ret void, !dbg !4004
}

; Function Attrs: nounwind uwtable
define dso_local void @SetImageInfoBlob(ptr noundef %image_info, ptr noundef %blob, i64 noundef %length) local_unnamed_addr #0 !dbg !3929 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3928, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %blob, metadata !3933, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %length, metadata !3934, metadata !DIExpression()), !dbg !4005
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !4006
  %0 = load i32, ptr %debug, align 8, !dbg !4006, !tbaa !2197
  %cmp.not = icmp eq i32 %0, 0, !dbg !4007
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4008

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !4009
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4010
  br label %if.end, !dbg !4011

if.end:                                           ; preds = %if.then, %entry
  %blob1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 46, !dbg !4012
  store ptr %blob, ptr %blob1, align 8, !dbg !4013, !tbaa !3925
  %length2 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 47, !dbg !4014
  store i64 %length, ptr %length2, align 8, !dbg !4015, !tbaa !3927
  ret void, !dbg !4016
}

declare !dbg !4017 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !4020 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !4021 void @DestroyImagePixels(ptr noundef) local_unnamed_addr #3

declare !dbg !4022 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare !dbg !4025 void @DestroyImageProfiles(ptr noundef) local_unnamed_addr #3

declare !dbg !4026 void @DestroyImageProperties(ptr noundef) local_unnamed_addr #3

declare !dbg !4027 void @DestroyImageArtifacts(ptr noundef) local_unnamed_addr #3

declare !dbg !4028 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !4032 void @DestroyImageOptions(ptr noundef) local_unnamed_addr #3

declare !dbg !4033 ptr @DestroyPixelCache(ptr noundef) local_unnamed_addr #3

declare !dbg !4034 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DisassociateImageStream(ptr noundef %image) local_unnamed_addr #0 !dbg !4037 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4039, metadata !DIExpression()), !dbg !4040
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4041
  %0 = load i32, ptr %debug, align 8, !dbg !4041, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4043
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4044

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4045
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4046
  br label %if.end, !dbg !4047

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4048
  %1 = load ptr, ptr %blob, align 8, !dbg !4048, !tbaa !1315
  %call1 = tail call ptr @DetachBlob(ptr noundef %1) #17, !dbg !4049
  ret void, !dbg !4050
}

declare !dbg !4051 ptr @DetachBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageClipMask(ptr nocapture noundef readonly %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !4054 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4059, metadata !DIExpression()), !dbg !4060
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4061
  %0 = load i32, ptr %debug, align 8, !dbg !4061, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4063
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4064

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, ptr noundef nonnull @.str.2) #17, !dbg !4065
  br label %if.end, !dbg !4066

if.end:                                           ; preds = %if.then, %entry
  %clip_mask = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !4067
  %1 = load ptr, ptr %clip_mask, align 8, !dbg !4067, !tbaa !2634
  %cmp1 = icmp eq ptr %1, null, !dbg !4069
  br i1 %cmp1, label %return, label %if.end3, !dbg !4070

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !4071
  br label %return, !dbg !4072

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !4060
  ret ptr %retval.0, !dbg !4073
}

declare !dbg !4074 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare !dbg !4075 i32 @IsStringTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetImageInfoFile(ptr nocapture noundef readonly %image_info) local_unnamed_addr #12 !dbg !4078 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !4082, metadata !DIExpression()), !dbg !4083
  %file = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !4084
  %0 = load ptr, ptr %file, align 8, !dbg !4084, !tbaa !1338
  ret ptr %0, !dbg !4085
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageMask(ptr nocapture noundef readonly %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !4086 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4089, metadata !DIExpression()), !dbg !4090
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4091
  %0 = load i32, ptr %debug, align 8, !dbg !4091, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4093
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4094

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1360, ptr noundef nonnull @.str.2) #17, !dbg !4095
  br label %if.end, !dbg !4096

if.end:                                           ; preds = %if.then, %entry
  %mask = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 73, !dbg !4097
  %1 = load ptr, ptr %mask, align 8, !dbg !4097, !tbaa !2638
  %cmp1 = icmp eq ptr %1, null, !dbg !4099
  br i1 %cmp1, label %return, label %if.end3, !dbg !4100

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !4101
  br label %return, !dbg !4102

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !4090
  ret ptr %retval.0, !dbg !4103
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageChannels(ptr noundef %image) local_unnamed_addr #0 !dbg !4104 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4108, metadata !DIExpression()), !dbg !4109
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4110
  %0 = load i32, ptr %debug, align 8, !dbg !4110, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4112
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4113

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4114
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1395, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4115
  br label %if.end, !dbg !4116

if.end:                                           ; preds = %if.then, %entry
  %channels = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 81, !dbg !4117
  %1 = load i64, ptr %channels, align 8, !dbg !4117, !tbaa !2538
  ret i64 %1, !dbg !4118
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageReferenceCount(ptr noundef %image) local_unnamed_addr #0 !dbg !4119 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4123, metadata !DIExpression()), !dbg !4125
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4126
  %0 = load i32, ptr %debug, align 8, !dbg !4126, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4128
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4129

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4130
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4131
  br label %if.end, !dbg !4132

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 61, !dbg !4133
  %1 = load ptr, ptr %semaphore, align 8, !dbg !4133, !tbaa !1330
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !4134
  %reference_count1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 60, !dbg !4135
  %2 = load volatile i64, ptr %reference_count1, align 8, !dbg !4135, !tbaa !1326
  call void @llvm.dbg.value(metadata i64 %2, metadata !4124, metadata !DIExpression()), !dbg !4125
  %3 = load ptr, ptr %semaphore, align 8, !dbg !4136, !tbaa !1330
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #17, !dbg !4137
  ret i64 %2, !dbg !4138
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageVirtualPixelMethod(ptr noundef %image) local_unnamed_addr #0 !dbg !4139 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4143, metadata !DIExpression()), !dbg !4144
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4145
  %0 = load i32, ptr %debug, align 8, !dbg !4145, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4147
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4148

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4149
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1465, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4150
  br label %if.end, !dbg !4151

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef nonnull %image) #17, !dbg !4152
  ret i32 %call1, !dbg !4153
}

declare !dbg !4154 i32 @GetPixelCacheVirtualMethod(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @InterpretImageFilename(ptr noundef %image_info, ptr noundef %image, ptr noundef %format, i32 noundef %value, ptr noundef %filename) local_unnamed_addr #0 !dbg !4156 {
entry:
  %q = alloca ptr, align 8
  %pattern = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !4160, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %image, metadata !4161, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %format, metadata !4162, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %value, metadata !4163, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %filename, metadata !4164, metadata !DIExpression()), !dbg !4183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #17, !dbg !4184
  call void @llvm.dbg.value(metadata i32 0, metadata !4167, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 0, metadata !4169, metadata !DIExpression()), !dbg !4183
  %call = tail call i64 @CopyMagickString(ptr noundef %filename, ptr noundef %format, i64 noundef 4096) #17, !dbg !4185
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %format, i32 noundef 37) #23, !dbg !4186
  call void @llvm.dbg.value(metadata ptr %call1, metadata !4168, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 0, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4167, metadata !DIExpression()), !dbg !4183
  %cmp.not215 = icmp eq ptr %call1, null, !dbg !4187
  br i1 %cmp.not215, label %for.cond126.preheader, label %for.body.lr.ph, !dbg !4188

for.body.lr.ph:                                   ; preds = %entry
  %cmp65.not = icmp eq ptr %image, null
  %cmp82 = icmp ne ptr %image_info, null
  %sub.ptr.rhs.cast95 = ptrtoint ptr %format to i64
  br label %for.body, !dbg !4188

for.cond126.preheader:                            ; preds = %for.inc122, %entry
  %canonical.0.lcssa = phi i32 [ 0, %entry ], [ %canonical.2, %for.inc122 ], !dbg !4189
  %sub.ptr.rhs.cast142 = ptrtoint ptr %filename to i64
  %sub.ptr.sub143.neg = add i64 %sub.ptr.rhs.cast142, 4096
  br label %for.cond126, !dbg !4190

for.body:                                         ; preds = %for.body.lr.ph, %for.inc122
  %length.0218 = phi i64 [ 0, %for.body.lr.ph ], [ %length.2, %for.inc122 ]
  %p.0217 = phi ptr [ %call1, %for.body.lr.ph ], [ %call124, %for.inc122 ]
  %canonical.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %canonical.2, %for.inc122 ]
  call void @llvm.dbg.value(metadata i64 %length.0218, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %p.0217, metadata !4168, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %canonical.0216, metadata !4167, metadata !DIExpression()), !dbg !4183
  %add.ptr = getelementptr inbounds i8, ptr %p.0217, i64 1, !dbg !4192
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4165, metadata !DIExpression()), !dbg !4183
  store ptr %add.ptr, ptr %q, align 8, !dbg !4193, !tbaa !1701
  %0 = load i8, ptr %add.ptr, align 1, !dbg !4194, !tbaa !1703
  switch i8 %0, label %if.end11 [
    i8 37, label %if.then
    i8 48, label %if.then8
  ], !dbg !4196

if.then:                                          ; preds = %for.body
  %add.ptr4 = getelementptr inbounds i8, ptr %p.0217, i64 2, !dbg !4197
  call void @llvm.dbg.value(metadata ptr %add.ptr4, metadata !4168, metadata !DIExpression()), !dbg !4183
  br label %for.inc122, !dbg !4199

if.then8:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %q, metadata !4165, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  %call10 = call i64 @strtol(ptr noundef nonnull %add.ptr, ptr noundef nonnull %q, i32 noundef 10) #17, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %call10, metadata !4170, metadata !DIExpression()), !dbg !4201
  %.pre = load ptr, ptr %q, align 8, !dbg !4202, !tbaa !1701
  %.pre219 = load i8, ptr %.pre, align 1, !dbg !4203, !tbaa !1703
  br label %if.end11, !dbg !4204

if.end11:                                         ; preds = %for.body, %if.then8
  %1 = phi i8 [ %0, %for.body ], [ %.pre219, %if.then8 ], !dbg !4203
  %2 = phi ptr [ %add.ptr, %for.body ], [ %.pre, %if.then8 ], !dbg !4202
  call void @llvm.dbg.value(metadata ptr %2, metadata !4165, metadata !DIExpression()), !dbg !4183
  %conv12 = sext i8 %1 to i32, !dbg !4203
  switch i32 %conv12, label %for.inc122 [
    i32 100, label %sw.bb
    i32 111, label %sw.bb
    i32 120, label %sw.bb
    i32 91, label %sw.bb28
  ], !dbg !4205

sw.bb:                                            ; preds = %if.end11, %if.end11, %if.end11
  call void @llvm.dbg.value(metadata ptr %2, metadata !4165, metadata !DIExpression()), !dbg !4183
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1, !dbg !4206
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4165, metadata !DIExpression()), !dbg !4183
  store ptr %incdec.ptr, ptr %q, align 8, !dbg !4206, !tbaa !1701
  %3 = load i8, ptr %incdec.ptr, align 1, !dbg !4208, !tbaa !1703
  call void @llvm.dbg.value(metadata i8 %3, metadata !4166, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !4183
  store i8 0, ptr %incdec.ptr, align 1, !dbg !4209, !tbaa !1703
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0217 to i64, !dbg !4210
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast95, !dbg !4210
  %add.ptr14 = getelementptr inbounds i8, ptr %filename, i64 %sub.ptr.sub, !dbg !4211
  %sub = sub nsw i64 4096, %sub.ptr.sub, !dbg !4212
  %call18 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr14, i64 noundef %sub, ptr noundef nonnull %p.0217, i32 noundef %value) #17, !dbg !4213
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !4214, !tbaa !1703
  %call20 = call i64 @ConcatenateMagickString(ptr noundef %filename, ptr noundef nonnull %incdec.ptr, i64 noundef 4096) #17, !dbg !4215
  call void @llvm.dbg.value(metadata i32 1, metadata !4167, metadata !DIExpression()), !dbg !4183
  %4 = load i8, ptr %2, align 1, !dbg !4216, !tbaa !1703
  %cmp23.not = icmp eq i8 %4, 37, !dbg !4218
  %spec.select = select i1 %cmp23.not, ptr %add.ptr, ptr %p.0217, !dbg !4219
  br label %for.inc122, !dbg !4219

sw.bb28:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %pattern) #17, !dbg !4220
  call void @llvm.dbg.declare(metadata ptr %pattern, metadata !4176, metadata !DIExpression()), !dbg !4221
  %call30 = call ptr @strchr(ptr noundef nonnull %p.0217, i32 noundef 93) #23, !dbg !4222
  %cmp31 = icmp eq ptr %call30, null, !dbg !4224
  br i1 %cmp31, label %cleanup, label %land.rhs, !dbg !4225

land.rhs:                                         ; preds = %sw.bb28, %if.end56
  %depth.0213 = phi i64 [ %spec.select205, %if.end56 ], [ 1, %sw.bb28 ]
  %i.0212 = phi i64 [ %inc58, %if.end56 ], [ 0, %sw.bb28 ]
  %.pn211 = phi ptr [ %r.0214, %if.end56 ], [ %2, %sw.bb28 ]
  %r.0214 = getelementptr inbounds i8, ptr %.pn211, i64 1, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %depth.0213, metadata !4182, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %i.0212, metadata !4181, metadata !DIExpression()), !dbg !4226
  %5 = load i8, ptr %r.0214, align 1, !dbg !4227, !tbaa !1703
  switch i8 %5, label %if.end47 [
    i8 0, label %for.end
    i8 91, label %if.then46
  ], !dbg !4230

if.then46:                                        ; preds = %land.rhs
  %inc = add nuw nsw i64 %depth.0213, 1, !dbg !4231
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4182, metadata !DIExpression()), !dbg !4226
  br label %if.end47, !dbg !4234

if.end47:                                         ; preds = %land.rhs, %if.then46
  %depth.1 = phi i64 [ %inc, %if.then46 ], [ %depth.0213, %land.rhs ], !dbg !4226
  call void @llvm.dbg.value(metadata i64 %depth.1, metadata !4182, metadata !DIExpression()), !dbg !4226
  %cmp49 = icmp eq i8 %5, 93, !dbg !4235
  %dec = sext i1 %cmp49 to i64, !dbg !4237
  %spec.select205 = add nsw i64 %depth.1, %dec, !dbg !4237
  call void @llvm.dbg.value(metadata i64 %spec.select205, metadata !4182, metadata !DIExpression()), !dbg !4226
  %cmp53 = icmp eq i64 %spec.select205, 0, !dbg !4238
  br i1 %cmp53, label %for.end, label %if.end56, !dbg !4240

if.end56:                                         ; preds = %if.end47
  call void @llvm.dbg.value(metadata ptr %r.0214, metadata !4180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4226
  %arrayidx = getelementptr inbounds [4096 x i8], ptr %pattern, i64 0, i64 %i.0212, !dbg !4241
  store i8 %5, ptr %arrayidx, align 1, !dbg !4242, !tbaa !1703
  %inc58 = add nuw nsw i64 %i.0212, 1, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %inc58, metadata !4181, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %spec.select205, metadata !4182, metadata !DIExpression()), !dbg !4226
  %exitcond.not = icmp eq i64 %inc58, 4095, !dbg !4244
  br i1 %exitcond.not, label %for.end, label %land.rhs, !dbg !4245, !llvm.loop !4246

for.end:                                          ; preds = %land.rhs, %if.end56, %if.end47
  %.pn.lcssa = phi ptr [ %.pn211, %land.rhs ], [ %r.0214, %if.end56 ], [ %.pn211, %if.end47 ]
  %i.0.lcssa = phi i64 [ %i.0212, %land.rhs ], [ 4095, %if.end56 ], [ %i.0212, %if.end47 ], !dbg !4248
  %arrayidx59 = getelementptr inbounds [4096 x i8], ptr %pattern, i64 0, i64 %i.0.lcssa, !dbg !4249
  store i8 0, ptr %arrayidx59, align 1, !dbg !4250, !tbaa !1703
  %call60 = call i32 @LocaleNCompare(ptr noundef nonnull %pattern, ptr noundef nonnull @.str.16, i64 noundef 9) #17, !dbg !4251
  %cmp61.not = icmp eq i32 %call60, 0, !dbg !4253
  br i1 %cmp61.not, label %if.end64, label %cleanup, !dbg !4254

if.end64:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr null, metadata !4179, metadata !DIExpression()), !dbg !4226
  br i1 %cmp65.not, label %if.end78, label %if.end70, !dbg !4255

if.end70:                                         ; preds = %if.end64
  %call69 = call ptr @GetImageProperty(ptr noundef nonnull %image, ptr noundef nonnull %pattern) #17, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %call69, metadata !4179, metadata !DIExpression()), !dbg !4226
  %cmp71 = icmp eq ptr %call69, null, !dbg !4258
  br i1 %cmp71, label %if.then75, label %if.end91, !dbg !4260

if.then75:                                        ; preds = %if.end70
  %call77 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull %pattern) #17, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %call77, metadata !4179, metadata !DIExpression()), !dbg !4226
  br label %if.end78, !dbg !4262

if.end78:                                         ; preds = %if.end64, %if.then75
  %value29.1 = phi ptr [ %call77, %if.then75 ], [ null, %if.end64 ], !dbg !4226
  call void @llvm.dbg.value(metadata ptr %value29.1, metadata !4179, metadata !DIExpression()), !dbg !4226
  %cmp79 = icmp eq ptr %value29.1, null, !dbg !4263
  %or.cond161 = and i1 %cmp82, %cmp79, !dbg !4265
  br i1 %or.cond161, label %if.then84, label %if.end87, !dbg !4265

if.then84:                                        ; preds = %if.end78
  %call86 = call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull %pattern) #17, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %call86, metadata !4179, metadata !DIExpression()), !dbg !4226
  br label %if.end87, !dbg !4267

if.end87:                                         ; preds = %if.then84, %if.end78
  %value29.2 = phi ptr [ %call86, %if.then84 ], [ %value29.1, %if.end78 ], !dbg !4226
  call void @llvm.dbg.value(metadata ptr %value29.2, metadata !4179, metadata !DIExpression()), !dbg !4226
  %cmp88 = icmp eq ptr %value29.2, null, !dbg !4268
  br i1 %cmp88, label %cleanup, label %if.end91, !dbg !4270

if.end91:                                         ; preds = %if.end70, %if.end87
  %value29.2225 = phi ptr [ %value29.2, %if.end87 ], [ %call69, %if.end70 ]
  call void @llvm.dbg.value(metadata ptr %2, metadata !4165, metadata !DIExpression()), !dbg !4183
  %incdec.ptr92 = getelementptr inbounds i8, ptr %2, i64 -1, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %incdec.ptr92, metadata !4165, metadata !DIExpression()), !dbg !4183
  store ptr %incdec.ptr92, ptr %q, align 8, !dbg !4271, !tbaa !1701
  %6 = load i8, ptr %incdec.ptr92, align 1, !dbg !4272, !tbaa !1703
  call void @llvm.dbg.value(metadata i8 %6, metadata !4166, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !4183
  store i8 0, ptr %incdec.ptr92, align 1, !dbg !4273, !tbaa !1703
  %sub.ptr.lhs.cast94 = ptrtoint ptr %p.0217 to i64, !dbg !4274
  %7 = add i64 %length.0218, %sub.ptr.rhs.cast95, !dbg !4275
  %sub97 = sub i64 %sub.ptr.lhs.cast94, %7, !dbg !4275
  %add.ptr98 = getelementptr inbounds i8, ptr %filename, i64 %sub97, !dbg !4276
  %sub103 = sub i64 4096, %sub97, !dbg !4277
  %call104 = call i64 @CopyMagickString(ptr noundef %add.ptr98, ptr noundef nonnull %value29.2225, i64 noundef %sub103) #17, !dbg !4278
  %call106 = call i64 @strlen(ptr noundef nonnull %pattern) #23, !dbg !4279
  %sub107 = add i64 %length.0218, -1, !dbg !4280
  %add = add i64 %sub107, %call106, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %add, metadata !4169, metadata !DIExpression()), !dbg !4183
  store i8 %6, ptr %incdec.ptr92, align 1, !dbg !4282, !tbaa !1703
  %add.ptr109 = getelementptr inbounds i8, ptr %.pn.lcssa, i64 2, !dbg !4283
  %call110 = call i64 @ConcatenateMagickString(ptr noundef %filename, ptr noundef nonnull %add.ptr109, i64 noundef 4096) #17, !dbg !4284
  call void @llvm.dbg.value(metadata i32 1, metadata !4167, metadata !DIExpression()), !dbg !4183
  %add.ptr111 = getelementptr inbounds i8, ptr %2, i64 -2, !dbg !4285
  %8 = load i8, ptr %add.ptr111, align 1, !dbg !4287, !tbaa !1703
  %cmp113.not = icmp eq i8 %8, 37, !dbg !4288
  %spec.select206 = select i1 %cmp113.not, ptr %add.ptr, ptr %p.0217, !dbg !4289
  br label %cleanup, !dbg !4289

cleanup:                                          ; preds = %if.end91, %if.end87, %for.end, %sw.bb28
  %canonical.1 = phi i32 [ %canonical.0216, %sw.bb28 ], [ %canonical.0216, %for.end ], [ %canonical.0216, %if.end87 ], [ 1, %if.end91 ], !dbg !4183
  %p.1 = phi ptr [ %p.0217, %sw.bb28 ], [ %p.0217, %for.end ], [ %p.0217, %if.end87 ], [ %spec.select206, %if.end91 ], !dbg !4290
  %length.1 = phi i64 [ %length.0218, %sw.bb28 ], [ %length.0218, %for.end ], [ %length.0218, %if.end87 ], [ %add, %if.end91 ], !dbg !4183
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !4168, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %canonical.1, metadata !4167, metadata !DIExpression()), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %pattern) #17, !dbg !4291
  br label %for.inc122

for.inc122:                                       ; preds = %sw.bb, %cleanup, %if.end11, %if.then
  %canonical.2 = phi i32 [ %canonical.0216, %if.then ], [ %canonical.0216, %if.end11 ], [ %canonical.1, %cleanup ], [ 1, %sw.bb ], !dbg !4183
  %p.2 = phi ptr [ %add.ptr4, %if.then ], [ %p.0217, %if.end11 ], [ %p.1, %cleanup ], [ %spec.select, %sw.bb ], !dbg !4290
  %length.2 = phi i64 [ %length.0218, %if.then ], [ %length.0218, %if.end11 ], [ %length.1, %cleanup ], [ %length.0218, %sw.bb ], !dbg !4292
  call void @llvm.dbg.value(metadata i64 %length.2, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !4168, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %canonical.2, metadata !4167, metadata !DIExpression()), !dbg !4183
  %add.ptr123 = getelementptr inbounds i8, ptr %p.2, i64 1, !dbg !4293
  %call124 = call ptr @strchr(ptr noundef nonnull %add.ptr123, i32 noundef 37) #23, !dbg !4294
  call void @llvm.dbg.value(metadata ptr %call124, metadata !4168, metadata !DIExpression()), !dbg !4183
  %cmp.not = icmp eq ptr %call124, null, !dbg !4187
  br i1 %cmp.not, label %for.cond126.preheader, label %for.body, !dbg !4188, !llvm.loop !4295

for.cond126:                                      ; preds = %for.cond126.preheader, %for.inc147
  %storemerge = phi ptr [ %incdec.ptr148, %for.inc147 ], [ %filename, %for.cond126.preheader ], !dbg !4297
  %canonical.3 = phi i32 [ %canonical.4, %for.inc147 ], [ %canonical.0.lcssa, %for.cond126.preheader ], !dbg !4183
  call void @llvm.dbg.value(metadata i32 %canonical.3, metadata !4167, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !4165, metadata !DIExpression()), !dbg !4183
  %9 = load i8, ptr %storemerge, align 1, !dbg !4298, !tbaa !1703
  switch i8 %9, label %for.inc147 [
    i8 0, label %for.end149
    i8 37, label %land.lhs.true134
  ], !dbg !4190

land.lhs.true134:                                 ; preds = %for.cond126
  %add.ptr135 = getelementptr inbounds i8, ptr %storemerge, i64 1, !dbg !4300
  %10 = load i8, ptr %add.ptr135, align 1, !dbg !4302, !tbaa !1703
  %cmp137 = icmp eq i8 %10, 37, !dbg !4303
  br i1 %cmp137, label %if.then139, label %for.inc147, !dbg !4304

if.then139:                                       ; preds = %land.lhs.true134
  %sub.ptr.lhs.cast141 = ptrtoint ptr %storemerge to i64, !dbg !4305
  %sub144 = sub i64 %sub.ptr.sub143.neg, %sub.ptr.lhs.cast141, !dbg !4307
  %call145 = call i64 @CopyMagickString(ptr noundef nonnull %storemerge, ptr noundef nonnull %add.ptr135, i64 noundef %sub144) #17, !dbg !4308
  call void @llvm.dbg.value(metadata i32 1, metadata !4167, metadata !DIExpression()), !dbg !4183
  br label %for.inc147, !dbg !4309

for.inc147:                                       ; preds = %for.cond126, %land.lhs.true134, %if.then139
  %canonical.4 = phi i32 [ 1, %if.then139 ], [ %canonical.3, %land.lhs.true134 ], [ %canonical.3, %for.cond126 ], !dbg !4183
  call void @llvm.dbg.value(metadata i32 %canonical.4, metadata !4167, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !4165, metadata !DIExpression()), !dbg !4183
  %incdec.ptr148 = getelementptr inbounds i8, ptr %storemerge, i64 1, !dbg !4310
  call void @llvm.dbg.value(metadata ptr %incdec.ptr148, metadata !4165, metadata !DIExpression()), !dbg !4183
  br label %for.cond126, !dbg !4311, !llvm.loop !4312

for.end149:                                       ; preds = %for.cond126
  %cmp150 = icmp eq i32 %canonical.3, 0, !dbg !4314
  br i1 %cmp150, label %if.then152, label %if.end154, !dbg !4316

if.then152:                                       ; preds = %for.end149
  %call153 = call i64 @CopyMagickString(ptr noundef %filename, ptr noundef %format, i64 noundef 4096) #17, !dbg !4317
  br label %if.end154, !dbg !4318

if.end154:                                        ; preds = %if.then152, %for.end149
  %call155 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %filename) #23, !dbg !4319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #17, !dbg !4320
  ret i64 %call155, !dbg !4321
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !4322 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !4325 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @IsHighDynamicRangeImage(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %exception) local_unnamed_addr #14 !dbg !4326 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4330, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4331, metadata !DIExpression()), !dbg !4332
  ret i32 0, !dbg !4333
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsImageObject(ptr noundef %image) local_unnamed_addr #0 !dbg !4334 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4338, metadata !DIExpression()), !dbg !4340
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4341
  %0 = load i32, ptr %debug, align 8, !dbg !4341, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4343
  br i1 %cmp.not, label %for.body.preheader, label %if.then, !dbg !4344

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2) #17, !dbg !4345
  br label %for.body.preheader, !dbg !4346

for.body.preheader:                               ; preds = %entry, %if.then
  br label %for.body, !dbg !4347

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.010 = phi ptr [ %call5, %for.inc ], [ %image, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.010, metadata !4339, metadata !DIExpression()), !dbg !4340
  %signature = getelementptr inbounds %struct._Image, ptr %p.010, i64 0, i32 66, !dbg !4349
  %1 = load i64, ptr %signature, align 8, !dbg !4349, !tbaa !1333
  %cmp2.not = icmp eq i64 %1, 2880220587, !dbg !4352
  br i1 %cmp2.not, label %for.inc, label %cleanup, !dbg !4353

for.inc:                                          ; preds = %for.body
  %call5 = tail call ptr @GetNextImageInList(ptr noundef nonnull %p.010) #17, !dbg !4354
  call void @llvm.dbg.value(metadata ptr %call5, metadata !4339, metadata !DIExpression()), !dbg !4340
  %cmp1.not = icmp eq ptr %call5, null, !dbg !4355
  br i1 %cmp1.not, label %cleanup, label %for.body, !dbg !4347, !llvm.loop !4356

cleanup:                                          ; preds = %for.body, %for.inc
  %retval.0 = phi i32 [ 0, %for.body ], [ 1, %for.inc ], !dbg !4340
  ret i32 %retval.0, !dbg !4358
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsTaintImage(ptr noundef %image) local_unnamed_addr #0 !dbg !4359 {
entry:
  %magick = alloca [4096 x i8], align 16
  %filename = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !4361, metadata !DIExpression()), !dbg !4365
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick) #17, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !4362, metadata !DIExpression()), !dbg !4367
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #17, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !4363, metadata !DIExpression()), !dbg !4368
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4369
  %0 = load i32, ptr %debug, align 8, !dbg !4369, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4371
  br i1 %cmp.not, label %for.body.preheader, label %if.then, !dbg !4372

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, ptr noundef nonnull @.str.2) #17, !dbg !4373
  br label %for.body.preheader, !dbg !4374

for.body.preheader:                               ; preds = %entry, %if.then
  %magick1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !4375
  %call3 = call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick1, i64 noundef 4096) #17, !dbg !4376
  %filename5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4377
  %call7 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename5, i64 noundef 4096) #17, !dbg !4378
  call void @llvm.dbg.value(metadata ptr %image, metadata !4364, metadata !DIExpression()), !dbg !4365
  br label %for.body, !dbg !4379

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.037 = phi ptr [ %call26, %for.inc ], [ %image, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.037, metadata !4364, metadata !DIExpression()), !dbg !4365
  %taint = getelementptr inbounds %struct._Image, ptr %p.037, i64 0, i32 5, !dbg !4381
  %1 = load i32, ptr %taint, align 4, !dbg !4381, !tbaa !2006
  %cmp9.not = icmp eq i32 %1, 0, !dbg !4385
  br i1 %cmp9.not, label %if.end11, label %cleanup, !dbg !4386

if.end11:                                         ; preds = %for.body
  %magick12 = getelementptr inbounds %struct._Image, ptr %p.037, i64 0, i32 55, !dbg !4387
  %call15 = call i32 @LocaleCompare(ptr noundef nonnull %magick12, ptr noundef nonnull %magick) #17, !dbg !4389
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !4390
  br i1 %cmp16.not, label %if.end18, label %cleanup, !dbg !4391

if.end18:                                         ; preds = %if.end11
  %filename19 = getelementptr inbounds %struct._Image, ptr %p.037, i64 0, i32 53, !dbg !4392
  %call22 = call i32 @LocaleCompare(ptr noundef nonnull %filename19, ptr noundef nonnull %filename) #17, !dbg !4394
  %cmp23.not = icmp eq i32 %call22, 0, !dbg !4395
  br i1 %cmp23.not, label %for.inc, label %cleanup, !dbg !4396

for.inc:                                          ; preds = %if.end18
  %call26 = call ptr @GetNextImageInList(ptr noundef nonnull %p.037) #17, !dbg !4397
  call void @llvm.dbg.value(metadata ptr %call26, metadata !4364, metadata !DIExpression()), !dbg !4365
  %cmp8.not = icmp eq ptr %call26, null, !dbg !4398
  br i1 %cmp8.not, label %cleanup, label %for.body, !dbg !4379, !llvm.loop !4399

cleanup:                                          ; preds = %for.body, %if.end11, %if.end18, %for.inc
  %retval.0 = phi i32 [ 1, %for.body ], [ 1, %if.end11 ], [ 1, %if.end18 ], [ 0, %for.inc ], !dbg !4365
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #17, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick) #17, !dbg !4401
  ret i32 %retval.0, !dbg !4401
}

declare !dbg !4402 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ModifyImage(ptr nocapture noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !4405 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4410, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4411, metadata !DIExpression()), !dbg !4413
  %0 = load ptr, ptr %image, align 8, !dbg !4414, !tbaa !1701
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !4416
  %1 = load i32, ptr %debug, align 8, !dbg !4416, !tbaa !1323
  %cmp.not = icmp eq i32 %1, 0, !dbg !4417
  br i1 %cmp.not, label %GetImageReferenceCount.exit, label %if.end, !dbg !4418

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !4419
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1884, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4420
  %.pre = load ptr, ptr %image, align 8, !dbg !4421, !tbaa !1701
  %debug.i.phi.trans.insert = getelementptr inbounds %struct._Image, ptr %.pre, i64 0, i32 59
  %.pre14 = load i32, ptr %debug.i.phi.trans.insert, align 8, !dbg !4423, !tbaa !1323
  %phi.cmp = icmp eq i32 %.pre14, 0, !dbg !4425
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !4123, metadata !DIExpression()) #17, !dbg !4426
  br i1 %phi.cmp, label %GetImageReferenceCount.exit, label %if.then.i, !dbg !4427

if.then.i:                                        ; preds = %if.end
  %filename.i = getelementptr inbounds %struct._Image, ptr %.pre, i64 0, i32 53, !dbg !4428
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !4429
  br label %GetImageReferenceCount.exit, !dbg !4430

GetImageReferenceCount.exit:                      ; preds = %entry, %if.end, %if.then.i
  %2 = phi ptr [ %.pre, %if.end ], [ %.pre, %if.then.i ], [ %0, %entry ]
  %semaphore.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 61, !dbg !4431
  %3 = load ptr, ptr %semaphore.i, align 8, !dbg !4431, !tbaa !1330
  tail call void @LockSemaphoreInfo(ptr noundef %3) #17, !dbg !4432
  %reference_count1.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 60, !dbg !4433
  %4 = load volatile i64, ptr %reference_count1.i, align 8, !dbg !4433, !tbaa !1326
  call void @llvm.dbg.value(metadata i64 %4, metadata !4124, metadata !DIExpression()) #17, !dbg !4426
  %5 = load ptr, ptr %semaphore.i, align 8, !dbg !4434, !tbaa !1330
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #17, !dbg !4435
  %cmp2 = icmp slt i64 %4, 2, !dbg !4436
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !4437

if.end4:                                          ; preds = %GetImageReferenceCount.exit
  %6 = load ptr, ptr %image, align 8, !dbg !4438, !tbaa !1701
  %call5 = tail call ptr @CloneImage(ptr noundef %6, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception), !dbg !4439
  call void @llvm.dbg.value(metadata ptr %call5, metadata !4412, metadata !DIExpression()), !dbg !4413
  %7 = load ptr, ptr %image, align 8, !dbg !4440, !tbaa !1701
  %semaphore = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 61, !dbg !4441
  %8 = load ptr, ptr %semaphore, align 8, !dbg !4441, !tbaa !1330
  tail call void @LockSemaphoreInfo(ptr noundef %8) #17, !dbg !4442
  %9 = load ptr, ptr %image, align 8, !dbg !4443, !tbaa !1701
  %reference_count = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 60, !dbg !4444
  %10 = load volatile i64, ptr %reference_count, align 8, !dbg !4445, !tbaa !1326
  %dec = add nsw i64 %10, -1, !dbg !4445
  store volatile i64 %dec, ptr %reference_count, align 8, !dbg !4445, !tbaa !1326
  %semaphore6 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 61, !dbg !4446
  %11 = load ptr, ptr %semaphore6, align 8, !dbg !4446, !tbaa !1330
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #17, !dbg !4447
  store ptr %call5, ptr %image, align 8, !dbg !4448, !tbaa !1701
  br label %cleanup, !dbg !4449

cleanup:                                          ; preds = %GetImageReferenceCount.exit, %if.end4
  ret i32 1, !dbg !4450
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NewMagickImage(ptr noundef %image_info, i64 noundef %width, i64 noundef %height, ptr nocapture noundef readonly %background) local_unnamed_addr #0 !dbg !4451 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !4455, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %width, metadata !4456, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %height, metadata !4457, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %background, metadata !4458, metadata !DIExpression()), !dbg !4470
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !4471
  %0 = load i32, ptr %debug, align 8, !dbg !4471, !tbaa !2197
  %cmp.not = icmp eq i32 %0, 0, !dbg !4473
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4474

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, ptr noundef nonnull @.str.2) #17, !dbg !4475
  br label %if.end, !dbg !4476

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireImage(ptr noundef nonnull %image_info), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %call1, metadata !4461, metadata !DIExpression()), !dbg !4470
  %columns = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !4478
  store i64 %width, ptr %columns, align 8, !dbg !4479, !tbaa !1362
  %rows = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !4480
  store i64 %height, ptr %rows, align 8, !dbg !4481, !tbaa !1367
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1, !dbg !4482
  %1 = load i32, ptr %colorspace, align 4, !dbg !4482, !tbaa !3062
  %colorspace2 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 1, !dbg !4483
  store i32 %1, ptr %colorspace2, align 4, !dbg !4484, !tbaa !1238
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 2, !dbg !4485
  %2 = load i32, ptr %matte, align 8, !dbg !4485, !tbaa !4486
  %matte3 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 6, !dbg !4487
  store i32 %2, ptr %matte3, align 8, !dbg !4488, !tbaa !2317
  %fuzz = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 3, !dbg !4489
  %3 = load double, ptr %fuzz, align 8, !dbg !4489, !tbaa !4490
  %fuzz4 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 31, !dbg !4491
  store double %3, ptr %fuzz4, align 8, !dbg !4492, !tbaa !1850
  %depth = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 4, !dbg !4493
  %4 = load i64, ptr %depth, align 8, !dbg !4493, !tbaa !4494
  %depth5 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 9, !dbg !4495
  store i64 %4, ptr %depth5, align 8, !dbg !4496, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 1, metadata !4463, metadata !DIExpression()), !dbg !4470
  %exception6 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !4497
  call void @llvm.dbg.value(metadata ptr %exception6, metadata !4460, metadata !DIExpression()), !dbg !4470
  %call7 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %call1, ptr noundef nonnull %exception6) #17, !dbg !4498
  call void @llvm.dbg.value(metadata ptr %call7, metadata !4459, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 0, metadata !4462, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i32 1, metadata !4463, metadata !DIExpression()), !dbg !4470
  %5 = load i64, ptr %rows, align 8, !dbg !4499, !tbaa !1367
  %cmp975 = icmp sgt i64 %5, 0, !dbg !4500
  br i1 %cmp975, label %for.body.lr.ph, label %for.end31.thread, !dbg !4501

for.end31.thread:                                 ; preds = %if.end
  %call3289 = tail call ptr @DestroyCacheView(ptr noundef %call7) #17, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %call32, metadata !4459, metadata !DIExpression()), !dbg !4470
  br label %if.end36, !dbg !4503

for.body.lr.ph:                                   ; preds = %if.end
  %red.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 5
  %green.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 6
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 7
  %opacity.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 8
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9
  br label %for.body, !dbg !4501

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.077 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  %y.076 = phi i64 [ 0, %for.body.lr.ph ], [ %inc30, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.077, metadata !4463, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %y.076, metadata !4462, metadata !DIExpression()), !dbg !4470
  %cmp10 = icmp eq i32 %status.077, 0, !dbg !4504
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !4506

if.end12:                                         ; preds = %for.body
  %6 = load i64, ptr %columns, align 8, !dbg !4507, !tbaa !1362
  %call14 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call7, i64 noundef 0, i64 noundef %y.076, i64 noundef %6, i64 noundef 1, ptr noundef nonnull %exception6) #21, !dbg !4508
  call void @llvm.dbg.value(metadata ptr %call14, metadata !4468, metadata !DIExpression()), !dbg !4509
  %cmp15 = icmp eq ptr %call14, null, !dbg !4510
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !4512

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call7) #17, !dbg !4513
  call void @llvm.dbg.value(metadata ptr %call18, metadata !4464, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 0, metadata !4469, metadata !DIExpression()), !dbg !4509
  %7 = load i64, ptr %columns, align 8, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 0, metadata !4469, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata ptr %call14, metadata !4468, metadata !DIExpression()), !dbg !4509
  %cmp2172 = icmp sgt i64 %7, 0, !dbg !4514
  br i1 %cmp2172, label %for.body22.lr.ph, label %for.end, !dbg !4517

for.body22.lr.ph:                                 ; preds = %if.end17
  %8 = load float, ptr %red.i, align 8, !tbaa !3024
  %cmp.i.i = fcmp ole float %8, 0.000000e+00
  %cmp1.i.i = fcmp oge float %8, 6.553500e+04
  %add.i.i = fadd float %8, 5.000000e-01
  %conv.i.i = fptoui float %add.i.i to i16
  %9 = load float, ptr %green.i, align 4, !tbaa !3031
  %cmp.i23.i = fcmp ole float %9, 0.000000e+00
  %cmp1.i24.i = fcmp oge float %9, 6.553500e+04
  %add.i26.i = fadd float %9, 5.000000e-01
  %conv.i27.i = fptoui float %add.i26.i to i16
  %10 = load float, ptr %blue.i, align 8, !tbaa !3036
  %cmp.i31.i = fcmp ole float %10, 0.000000e+00
  %cmp1.i32.i = fcmp oge float %10, 6.553500e+04
  %add.i34.i = fadd float %10, 5.000000e-01
  %conv.i35.i = fptoui float %add.i34.i to i16
  %11 = load float, ptr %opacity.i, align 4, !tbaa !3041
  %cmp.i39.i = fcmp ole float %11, 0.000000e+00
  %cmp1.i40.i = fcmp oge float %11, 6.553500e+04
  %add.i42.i = fadd float %11, 5.000000e-01
  %conv.i43.i = fptoui float %add.i42.i to i16
  %12 = load i32, ptr %colorspace2, align 4, !tbaa !1238
  %cmp.i = icmp eq i32 %12, 12
  %cmp9.i = icmp ne ptr %call18, null
  %cmp9.old.not.i = icmp eq ptr %call18, null
  %brmerge = or i1 %cmp.i.i, %cmp1.i.i
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %.mux = sext i1 %not.cmp.i.i to i16
  %spec.select84 = select i1 %brmerge, i16 %.mux, i16 %conv.i.i
  %brmerge78 = or i1 %cmp.i23.i, %cmp1.i24.i
  %not.cmp.i23.i = xor i1 %cmp.i23.i, true
  %.mux79 = sext i1 %not.cmp.i23.i to i16
  %spec.select86 = select i1 %brmerge78, i16 %.mux79, i16 %conv.i27.i
  %brmerge80 = or i1 %cmp.i31.i, %cmp1.i32.i
  %not.cmp.i31.i = xor i1 %cmp.i31.i, true
  %.mux81 = sext i1 %not.cmp.i31.i to i16
  %spec.select85 = select i1 %brmerge80, i16 %.mux81, i16 %conv.i35.i
  %brmerge82 = or i1 %cmp.i39.i, %cmp1.i40.i
  %not.cmp.i39.i = xor i1 %cmp.i39.i, true
  %.mux83 = sext i1 %not.cmp.i39.i to i16
  %spec.select87 = select i1 %brmerge82, i16 %.mux83, i16 %conv.i43.i
  br label %for.body22, !dbg !4517

for.body22:                                       ; preds = %for.body22.lr.ph, %SetPixelPacket.exit
  %x.074 = phi i64 [ 0, %for.body22.lr.ph ], [ %inc, %SetPixelPacket.exit ]
  %q.073 = phi ptr [ %call14, %for.body22.lr.ph ], [ %incdec.ptr, %SetPixelPacket.exit ]
  call void @llvm.dbg.value(metadata i64 %x.074, metadata !4469, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata ptr %q.073, metadata !4468, metadata !DIExpression()), !dbg !4509
  %add.ptr = getelementptr inbounds i16, ptr %call18, i64 %x.074, !dbg !4518
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3100, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %background, metadata !3101, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %q.073, metadata !3102, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3103, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata float %8, metadata !3142, metadata !DIExpression()), !dbg !4522
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %q.073, i64 0, i32 2, !dbg !4524
  store i16 %spec.select84, ptr %red1.i, align 2, !dbg !4524, !tbaa !2431
  call void @llvm.dbg.value(metadata float %9, metadata !3142, metadata !DIExpression()), !dbg !4525
  %green3.i = getelementptr inbounds %struct._PixelPacket, ptr %q.073, i64 0, i32 1, !dbg !4527
  store i16 %spec.select86, ptr %green3.i, align 2, !dbg !4527, !tbaa !2433
  call void @llvm.dbg.value(metadata float %10, metadata !3142, metadata !DIExpression()), !dbg !4528
  store i16 %spec.select85, ptr %q.073, align 2, !dbg !4530, !tbaa !2435
  call void @llvm.dbg.value(metadata float %11, metadata !3142, metadata !DIExpression()), !dbg !4531
  %opacity7.i = getelementptr inbounds %struct._PixelPacket, ptr %q.073, i64 0, i32 3, !dbg !4533
  store i16 %spec.select87, ptr %opacity7.i, align 2, !dbg !4533, !tbaa !2437
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !4534

lor.lhs.false.i:                                  ; preds = %for.body22
  %13 = load i32, ptr %call1, align 8, !dbg !4535, !tbaa !1217
  %cmp8.i = icmp eq i32 %13, 2, !dbg !4536
  %or.cond.i = and i1 %cmp9.i, %cmp8.i, !dbg !4537
  br i1 %or.cond.i, label %if.then10.i, label %SetPixelPacket.exit, !dbg !4537

if.then.i:                                        ; preds = %for.body22
  br i1 %cmp9.old.not.i, label %SetPixelPacket.exit, label %if.then10.i, !dbg !4538

if.then10.i:                                      ; preds = %if.then.i, %lor.lhs.false.i
  %14 = load float, ptr %index11.i, align 8, !dbg !4539, !tbaa !3139
  call void @llvm.dbg.value(metadata float %14, metadata !3142, metadata !DIExpression()), !dbg !4540
  %cmp.i47.i = fcmp ugt float %14, 0.000000e+00, !dbg !4542
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !4543

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %14, 6.553500e+04, !dbg !4544
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !4545

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %14, 5.000000e-01, !dbg !4546
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !4547
  br label %ClampToQuantum.exit54.i, !dbg !4548

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !4540
  store i16 %retval.0.i53.i, ptr %add.ptr, align 2, !dbg !4539, !tbaa !2445
  br label %SetPixelPacket.exit, !dbg !4539

SetPixelPacket.exit:                              ; preds = %lor.lhs.false.i, %if.then.i, %ClampToQuantum.exit54.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.073, i64 1, !dbg !4549
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4468, metadata !DIExpression()), !dbg !4509
  %inc = add nuw nsw i64 %x.074, 1, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4469, metadata !DIExpression()), !dbg !4509
  %exitcond.not = icmp eq i64 %inc, %7, !dbg !4514
  br i1 %exitcond.not, label %for.end, label %for.body22, !dbg !4517, !llvm.loop !4551

for.end:                                          ; preds = %SetPixelPacket.exit, %if.end17
  %call23 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call7, ptr noundef nonnull %exception6) #21, !dbg !4553
  %cmp24 = icmp ne i32 %call23, 0, !dbg !4555
  %spec.select = zext i1 %cmp24 to i32, !dbg !4556
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4463, metadata !DIExpression()), !dbg !4470
  br label %cleanup, !dbg !4557

cleanup:                                          ; preds = %if.end12, %for.body, %for.end
  %status.2 = phi i32 [ %spec.select, %for.end ], [ 0, %for.body ], [ 0, %if.end12 ], !dbg !4470
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !4463, metadata !DIExpression()), !dbg !4470
  %inc30 = add nuw nsw i64 %y.076, 1, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !4462, metadata !DIExpression()), !dbg !4470
  %15 = load i64, ptr %rows, align 8, !dbg !4499, !tbaa !1367
  %cmp9 = icmp slt i64 %inc30, %15, !dbg !4500
  br i1 %cmp9, label %for.body, label %for.end31, !dbg !4501, !llvm.loop !4559

for.end31:                                        ; preds = %cleanup
  %call32 = tail call ptr @DestroyCacheView(ptr noundef %call7) #17, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %call32, metadata !4459, metadata !DIExpression()), !dbg !4470
  %cmp33 = icmp eq i32 %status.2, 0, !dbg !4561
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !4503

if.then34:                                        ; preds = %for.end31
  %call35 = tail call ptr @DestroyImage(ptr noundef nonnull %call1), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %call35, metadata !4461, metadata !DIExpression()), !dbg !4470
  br label %if.end36, !dbg !4564

if.end36:                                         ; preds = %for.end31.thread, %if.then34, %for.end31
  %image.0 = phi ptr [ %call35, %if.then34 ], [ %call1, %for.end31 ], [ %call1, %for.end31.thread ], !dbg !4470
  call void @llvm.dbg.value(metadata ptr %image.0, metadata !4461, metadata !DIExpression()), !dbg !4470
  ret ptr %image.0, !dbg !4565
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ReferenceImage(ptr noundef returned %image) local_unnamed_addr #0 !dbg !4566 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4568, metadata !DIExpression()), !dbg !4569
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4570
  %0 = load i32, ptr %debug, align 8, !dbg !4570, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4572
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4573

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2025, ptr noundef nonnull @.str.2) #17, !dbg !4574
  br label %if.end, !dbg !4575

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 61, !dbg !4576
  %1 = load ptr, ptr %semaphore, align 8, !dbg !4576, !tbaa !1330
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !4577
  %reference_count = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 60, !dbg !4578
  %2 = load volatile i64, ptr %reference_count, align 8, !dbg !4579, !tbaa !1326
  %inc = add nsw i64 %2, 1, !dbg !4579
  store volatile i64 %inc, ptr %reference_count, align 8, !dbg !4579, !tbaa !1326
  %3 = load ptr, ptr %semaphore, align 8, !dbg !4580, !tbaa !1330
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #17, !dbg !4581
  ret ptr %image, !dbg !4582
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ResetImagePage(ptr noundef %image, ptr noundef %page) local_unnamed_addr #0 !dbg !4583 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !4587, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata ptr %page, metadata !4588, metadata !DIExpression()), !dbg !4591
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #17, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !4590, metadata !DIExpression()), !dbg !4593
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4594
  %0 = load i32, ptr %debug, align 8, !dbg !4594, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4596
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4597

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4598
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2068, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !4599
  br label %if.end, !dbg !4600

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @ParseAbsoluteGeometry(ptr noundef %page, ptr noundef nonnull %geometry) #17, !dbg !4601
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4589, metadata !DIExpression()), !dbg !4591
  %and = and i32 %call1, 4, !dbg !4602
  %cmp2.not = icmp eq i32 %and, 0, !dbg !4604
  br i1 %cmp2.not, label %if.end14, label %if.then3, !dbg !4605

if.then3:                                         ; preds = %if.end
  %and4 = and i32 %call1, 8, !dbg !4606
  %cmp5 = icmp eq i32 %and4, 0, !dbg !4609
  %1 = load i64, ptr %geometry, align 8, !dbg !4610, !tbaa !4611
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  br i1 %cmp5, label %if.then6, label %if.then3.if.end7_crit_edge, !dbg !4612

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  %.pre90 = load i64, ptr %height, align 8, !dbg !4613, !tbaa !4614
  br label %if.end7, !dbg !4612

if.then6:                                         ; preds = %if.then3
  store i64 %1, ptr %height, align 8, !dbg !4615, !tbaa !4614
  br label %if.end7, !dbg !4616

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.then6
  %2 = phi i64 [ %.pre90, %if.then3.if.end7_crit_edge ], [ %1, %if.then6 ], !dbg !4613
  %page9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !4617
  store i64 %1, ptr %page9, align 8, !dbg !4618, !tbaa !2729
  %height13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !4619
  store i64 %2, ptr %height13, align 8, !dbg !4620, !tbaa !2757
  br label %if.end14, !dbg !4621

if.end14:                                         ; preds = %if.end7, %if.end
  %and15 = and i32 %call1, 8192, !dbg !4622
  %cmp16.not = icmp eq i32 %and15, 0, !dbg !4624
  %and31 = and i32 %call1, 1, !dbg !4625
  %cmp32.not = icmp eq i32 %and31, 0, !dbg !4625
  br i1 %cmp16.not, label %if.else, label %if.then17, !dbg !4626

if.then17:                                        ; preds = %if.end14
  br i1 %cmp32.not, label %if.end23, label %if.then20, !dbg !4627

if.then20:                                        ; preds = %if.then17
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !4629
  %3 = load i64, ptr %x, align 8, !dbg !4629, !tbaa !2398
  %x22 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !4631
  %4 = load i64, ptr %x22, align 8, !dbg !4632, !tbaa !2737
  %add = add nsw i64 %4, %3, !dbg !4632
  store i64 %add, ptr %x22, align 8, !dbg !4632, !tbaa !2737
  br label %if.end23, !dbg !4633

if.end23:                                         ; preds = %if.then20, %if.then17
  %and24 = and i32 %call1, 2, !dbg !4634
  %cmp25.not = icmp eq i32 %and24, 0, !dbg !4636
  br i1 %cmp25.not, label %if.end68, label %if.then26, !dbg !4637

if.then26:                                        ; preds = %if.end23
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !4638
  %5 = load i64, ptr %y, align 8, !dbg !4638, !tbaa !2402
  %y28 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !4639
  br label %if.end68.sink.split, !dbg !4640

if.else:                                          ; preds = %if.end14
  br i1 %cmp32.not, label %if.end48, label %if.then33, !dbg !4641

if.then33:                                        ; preds = %if.else
  %x34 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !4643
  %6 = load i64, ptr %x34, align 8, !dbg !4643
  %page35 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !4646
  %x36 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !4647
  store i64 %6, ptr %x36, align 8, !dbg !4648, !tbaa !2737
  %7 = load i64, ptr %page35, align 8, !dbg !4649, !tbaa !2729
  %cmp39 = icmp eq i64 %7, 0, !dbg !4651
  %cmp41 = icmp sgt i64 %6, 0
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false, !dbg !4652
  br i1 %or.cond, label %if.then42, label %if.end48, !dbg !4652

if.then42:                                        ; preds = %if.then33
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4653
  %8 = load i64, ptr %columns, align 8, !dbg !4653, !tbaa !1362
  %add44 = add i64 %8, %6, !dbg !4654
  store i64 %add44, ptr %page35, align 8, !dbg !4655, !tbaa !2729
  br label %if.end48, !dbg !4656

if.end48:                                         ; preds = %if.then33, %if.then42, %if.else
  %and49 = and i32 %call1, 2, !dbg !4657
  %cmp50.not = icmp eq i32 %and49, 0, !dbg !4659
  br i1 %cmp50.not, label %if.end68, label %if.then51, !dbg !4660

if.then51:                                        ; preds = %if.end48
  %y52 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !4661
  %9 = load i64, ptr %y52, align 8, !dbg !4661
  %y54 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !4663
  store i64 %9, ptr %y54, align 8, !dbg !4664, !tbaa !2765
  %height56 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !4665
  %10 = load i64, ptr %height56, align 8, !dbg !4665, !tbaa !2757
  %cmp57 = icmp eq i64 %10, 0, !dbg !4667
  %cmp60 = icmp sgt i64 %9, 0
  %or.cond69 = select i1 %cmp57, i1 %cmp60, i1 false, !dbg !4668
  br i1 %or.cond69, label %if.then61, label %if.end68, !dbg !4668

if.then61:                                        ; preds = %if.then51
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4669
  br label %if.end68.sink.split, !dbg !4670

if.end68.sink.split:                              ; preds = %if.then26, %if.then61
  %rows.sink = phi ptr [ %rows, %if.then61 ], [ %y28, %if.then26 ]
  %.sink91 = phi i64 [ %9, %if.then61 ], [ %5, %if.then26 ]
  %height56.sink = phi ptr [ %height56, %if.then61 ], [ %y28, %if.then26 ]
  %11 = load i64, ptr %rows.sink, align 8, !dbg !4625, !tbaa !1388
  %add63 = add i64 %11, %.sink91, !dbg !4625
  store i64 %add63, ptr %height56.sink, align 8, !dbg !4625, !tbaa !1388
  br label %if.end68, !dbg !4671

if.end68:                                         ; preds = %if.end68.sink.split, %if.end48, %if.then51, %if.end23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #17, !dbg !4671
  ret i32 1, !dbg !4672
}

declare !dbg !4673 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4679 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local i32 @SetImageChannels(ptr nocapture noundef writeonly %image, i64 noundef %channels) local_unnamed_addr #15 !dbg !4682 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4686, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %channels, metadata !4687, metadata !DIExpression()), !dbg !4688
  %channels1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 81, !dbg !4689
  store i64 %channels, ptr %channels1, align 8, !dbg !4690, !tbaa !2538
  ret i32 1, !dbg !4691
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageColor(ptr noundef %image, ptr nocapture noundef readonly %color) local_unnamed_addr #0 !dbg !4692 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4696, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata ptr %color, metadata !4697, metadata !DIExpression()), !dbg !4708
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4709
  %0 = load i32, ptr %debug, align 8, !dbg !4709, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !4711
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4712

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2) #17, !dbg !4713
  br label %if.end, !dbg !4714

if.end:                                           ; preds = %if.then, %entry
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1, !dbg !4715
  %1 = load i32, ptr %colorspace, align 4, !dbg !4715, !tbaa !3062
  %colorspace1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !4716
  store i32 %1, ptr %colorspace1, align 4, !dbg !4717, !tbaa !1238
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2, !dbg !4718
  %2 = load i32, ptr %matte, align 8, !dbg !4718, !tbaa !4486
  %matte2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !4719
  store i32 %2, ptr %matte2, align 8, !dbg !4720, !tbaa !2317
  %fuzz = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 3, !dbg !4721
  %3 = load double, ptr %fuzz, align 8, !dbg !4721, !tbaa !4490
  %fuzz3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 31, !dbg !4722
  store double %3, ptr %fuzz3, align 8, !dbg !4723, !tbaa !1850
  %depth = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 4, !dbg !4724
  %4 = load i64, ptr %depth, align 8, !dbg !4724, !tbaa !4494
  %depth4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !4725
  store i64 %4, ptr %depth4, align 8, !dbg !4726, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 1, metadata !4700, metadata !DIExpression()), !dbg !4708
  %exception5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !4727
  call void @llvm.dbg.value(metadata ptr %exception5, metadata !4699, metadata !DIExpression()), !dbg !4708
  %call6 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception5) #17, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %call6, metadata !4698, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 0, metadata !4701, metadata !DIExpression()), !dbg !4708
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4701, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i32 1, metadata !4700, metadata !DIExpression()), !dbg !4708
  %5 = load i64, ptr %rows, align 8, !dbg !4729, !tbaa !1367
  %cmp763 = icmp sgt i64 %5, 0, !dbg !4730
  br i1 %cmp763, label %for.body.lr.ph, label %for.end28, !dbg !4731

for.body.lr.ph:                                   ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %red.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5
  %green.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7
  %opacity.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 9
  br label %for.body, !dbg !4731

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.065 = phi i64 [ 0, %for.body.lr.ph ], [ %inc27, %cleanup ]
  %status.064 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.065, metadata !4701, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i32 %status.064, metadata !4700, metadata !DIExpression()), !dbg !4708
  %cmp8 = icmp eq i32 %status.064, 0, !dbg !4732
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !4734

if.end10:                                         ; preds = %for.body
  %6 = load i64, ptr %columns, align 8, !dbg !4735, !tbaa !1362
  %call11 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call6, i64 noundef 0, i64 noundef %y.065, i64 noundef %6, i64 noundef 1, ptr noundef nonnull %exception5) #21, !dbg !4736
  call void @llvm.dbg.value(metadata ptr %call11, metadata !4706, metadata !DIExpression()), !dbg !4737
  %cmp12 = icmp eq ptr %call11, null, !dbg !4738
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !4740

if.end14:                                         ; preds = %if.end10
  %call15 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call6) #17, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %call15, metadata !4702, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata i64 0, metadata !4707, metadata !DIExpression()), !dbg !4737
  %7 = load i64, ptr %columns, align 8, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 0, metadata !4707, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata ptr %call11, metadata !4706, metadata !DIExpression()), !dbg !4737
  %cmp1860 = icmp sgt i64 %7, 0, !dbg !4742
  br i1 %cmp1860, label %for.body19.lr.ph, label %for.end, !dbg !4745

for.body19.lr.ph:                                 ; preds = %if.end14
  %8 = load float, ptr %red.i, align 8, !tbaa !3024
  %cmp.i.i = fcmp ole float %8, 0.000000e+00
  %cmp1.i.i = fcmp oge float %8, 6.553500e+04
  %add.i.i = fadd float %8, 5.000000e-01
  %conv.i.i = fptoui float %add.i.i to i16
  %9 = load float, ptr %green.i, align 4, !tbaa !3031
  %cmp.i23.i = fcmp ole float %9, 0.000000e+00
  %cmp1.i24.i = fcmp oge float %9, 6.553500e+04
  %add.i26.i = fadd float %9, 5.000000e-01
  %conv.i27.i = fptoui float %add.i26.i to i16
  %10 = load float, ptr %blue.i, align 8, !tbaa !3036
  %cmp.i31.i = fcmp ole float %10, 0.000000e+00
  %cmp1.i32.i = fcmp oge float %10, 6.553500e+04
  %add.i34.i = fadd float %10, 5.000000e-01
  %conv.i35.i = fptoui float %add.i34.i to i16
  %11 = load float, ptr %opacity.i, align 4, !tbaa !3041
  %cmp.i39.i = fcmp ole float %11, 0.000000e+00
  %cmp1.i40.i = fcmp oge float %11, 6.553500e+04
  %add.i42.i = fadd float %11, 5.000000e-01
  %conv.i43.i = fptoui float %add.i42.i to i16
  %12 = load i32, ptr %colorspace1, align 4, !tbaa !1238
  %cmp.i = icmp eq i32 %12, 12
  %cmp9.i = icmp ne ptr %call15, null
  %cmp9.old.not.i = icmp eq ptr %call15, null
  %brmerge = or i1 %cmp.i.i, %cmp1.i.i
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %.mux = sext i1 %not.cmp.i.i to i16
  %spec.select72 = select i1 %brmerge, i16 %.mux, i16 %conv.i.i
  %brmerge66 = or i1 %cmp.i23.i, %cmp1.i24.i
  %not.cmp.i23.i = xor i1 %cmp.i23.i, true
  %.mux67 = sext i1 %not.cmp.i23.i to i16
  %spec.select74 = select i1 %brmerge66, i16 %.mux67, i16 %conv.i27.i
  %brmerge68 = or i1 %cmp.i31.i, %cmp1.i32.i
  %not.cmp.i31.i = xor i1 %cmp.i31.i, true
  %.mux69 = sext i1 %not.cmp.i31.i to i16
  %spec.select73 = select i1 %brmerge68, i16 %.mux69, i16 %conv.i35.i
  %brmerge70 = or i1 %cmp.i39.i, %cmp1.i40.i
  %not.cmp.i39.i = xor i1 %cmp.i39.i, true
  %.mux71 = sext i1 %not.cmp.i39.i to i16
  %spec.select75 = select i1 %brmerge70, i16 %.mux71, i16 %conv.i43.i
  br label %for.body19, !dbg !4745

for.body19:                                       ; preds = %for.body19.lr.ph, %SetPixelPacket.exit
  %x.062 = phi i64 [ 0, %for.body19.lr.ph ], [ %inc, %SetPixelPacket.exit ]
  %q.061 = phi ptr [ %call11, %for.body19.lr.ph ], [ %incdec.ptr, %SetPixelPacket.exit ]
  call void @llvm.dbg.value(metadata i64 %x.062, metadata !4707, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata ptr %q.061, metadata !4706, metadata !DIExpression()), !dbg !4737
  %add.ptr = getelementptr inbounds i16, ptr %call15, i64 %x.062, !dbg !4746
  call void @llvm.dbg.value(metadata ptr %image, metadata !3100, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata ptr %color, metadata !3101, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata ptr %q.061, metadata !3102, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3103, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata float %8, metadata !3142, metadata !DIExpression()), !dbg !4750
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %q.061, i64 0, i32 2, !dbg !4752
  store i16 %spec.select72, ptr %red1.i, align 2, !dbg !4752, !tbaa !2431
  call void @llvm.dbg.value(metadata float %9, metadata !3142, metadata !DIExpression()), !dbg !4753
  %green3.i = getelementptr inbounds %struct._PixelPacket, ptr %q.061, i64 0, i32 1, !dbg !4755
  store i16 %spec.select74, ptr %green3.i, align 2, !dbg !4755, !tbaa !2433
  call void @llvm.dbg.value(metadata float %10, metadata !3142, metadata !DIExpression()), !dbg !4756
  store i16 %spec.select73, ptr %q.061, align 2, !dbg !4758, !tbaa !2435
  call void @llvm.dbg.value(metadata float %11, metadata !3142, metadata !DIExpression()), !dbg !4759
  %opacity7.i = getelementptr inbounds %struct._PixelPacket, ptr %q.061, i64 0, i32 3, !dbg !4761
  store i16 %spec.select75, ptr %opacity7.i, align 2, !dbg !4761, !tbaa !2437
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !4762

lor.lhs.false.i:                                  ; preds = %for.body19
  %13 = load i32, ptr %image, align 8, !dbg !4763, !tbaa !1217
  %cmp8.i = icmp eq i32 %13, 2, !dbg !4764
  %or.cond.i = and i1 %cmp9.i, %cmp8.i, !dbg !4765
  br i1 %or.cond.i, label %if.then10.i, label %SetPixelPacket.exit, !dbg !4765

if.then.i:                                        ; preds = %for.body19
  br i1 %cmp9.old.not.i, label %SetPixelPacket.exit, label %if.then10.i, !dbg !4766

if.then10.i:                                      ; preds = %if.then.i, %lor.lhs.false.i
  %14 = load float, ptr %index11.i, align 8, !dbg !4767, !tbaa !3139
  call void @llvm.dbg.value(metadata float %14, metadata !3142, metadata !DIExpression()), !dbg !4768
  %cmp.i47.i = fcmp ugt float %14, 0.000000e+00, !dbg !4770
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !4771

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %14, 6.553500e+04, !dbg !4772
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !4773

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %14, 5.000000e-01, !dbg !4774
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !4775
  br label %ClampToQuantum.exit54.i, !dbg !4776

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !4768
  store i16 %retval.0.i53.i, ptr %add.ptr, align 2, !dbg !4767, !tbaa !2445
  br label %SetPixelPacket.exit, !dbg !4767

SetPixelPacket.exit:                              ; preds = %lor.lhs.false.i, %if.then.i, %ClampToQuantum.exit54.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.061, i64 1, !dbg !4777
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4706, metadata !DIExpression()), !dbg !4737
  %inc = add nuw nsw i64 %x.062, 1, !dbg !4778
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4707, metadata !DIExpression()), !dbg !4737
  %exitcond.not = icmp eq i64 %inc, %7, !dbg !4742
  br i1 %exitcond.not, label %for.end, label %for.body19, !dbg !4745, !llvm.loop !4779

for.end:                                          ; preds = %SetPixelPacket.exit, %if.end14
  %call20 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call6, ptr noundef nonnull %exception5) #21, !dbg !4781
  %cmp21 = icmp ne i32 %call20, 0, !dbg !4783
  %spec.select = zext i1 %cmp21 to i32, !dbg !4784
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4700, metadata !DIExpression()), !dbg !4708
  br label %cleanup, !dbg !4785

cleanup:                                          ; preds = %if.end10, %for.body, %for.end
  %status.2 = phi i32 [ %spec.select, %for.end ], [ 0, %for.body ], [ 0, %if.end10 ], !dbg !4708
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !4700, metadata !DIExpression()), !dbg !4708
  %inc27 = add nuw nsw i64 %y.065, 1, !dbg !4786
  call void @llvm.dbg.value(metadata i64 %inc27, metadata !4701, metadata !DIExpression()), !dbg !4708
  %15 = load i64, ptr %rows, align 8, !dbg !4729, !tbaa !1367
  %cmp7 = icmp slt i64 %inc27, %15, !dbg !4730
  br i1 %cmp7, label %for.body, label %for.end28, !dbg !4731, !llvm.loop !4787

for.end28:                                        ; preds = %cleanup, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.2, %cleanup ], !dbg !4789
  %call29 = tail call ptr @DestroyCacheView(ptr noundef %call6) #17, !dbg !4790
  call void @llvm.dbg.value(metadata ptr %call29, metadata !4698, metadata !DIExpression()), !dbg !4708
  ret i32 %status.0.lcssa, !dbg !4791
}

declare !dbg !4792 hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageExtent(ptr noundef %image, i64 noundef %columns, i64 noundef %rows) local_unnamed_addr #0 !dbg !4795 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4799, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %columns, metadata !4800, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %rows, metadata !4801, metadata !DIExpression()), !dbg !4802
  %cmp = icmp eq i64 %columns, 0, !dbg !4803
  %cmp1 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp, %cmp1, !dbg !4805
  br i1 %or.cond, label %return, label %if.end, !dbg !4805

if.end:                                           ; preds = %entry
  %columns2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4806
  store i64 %columns, ptr %columns2, align 8, !dbg !4807, !tbaa !1362
  %rows3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4808
  store i64 %rows, ptr %rows3, align 8, !dbg !4809, !tbaa !1367
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !4810
  %call = tail call i32 @SyncImagePixelCache(ptr noundef %image, ptr noundef nonnull %exception) #17, !dbg !4811
  br label %return, !dbg !4812

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !4802
  ret i32 %retval.0, !dbg !4813
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageInfo(ptr noundef %image_info, i32 noundef %frames, ptr noundef %exception) local_unnamed_addr #0 !dbg !1126 {
entry:
  %extension = alloca [4096 x i8], align 16
  %filename = alloca [4096 x i8], align 16
  %magic = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %subimage = alloca [4096 x i8], align 16
  %magick = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1131, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %frames, metadata !1132, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1133, metadata !DIExpression()), !dbg !4814
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %extension) #17, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %extension, metadata !1134, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #17, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !1135, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magic) #17, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !1136, metadata !DIExpression()), !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #17, !dbg !4815
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %subimage) #17, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %subimage, metadata !1138, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %magick) #17, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !1146, metadata !DIExpression()), !dbg !4821
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !4822
  %0 = load i32, ptr %debug, align 8, !dbg !4822, !tbaa !2197
  %cmp.not = icmp eq i32 %0, 0, !dbg !4824
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4825

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !4826
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename1) #17, !dbg !4827
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %if.then, %entry
  store i8 0, ptr %subimage, align 16, !dbg !4829, !tbaa !1703
  %filename3 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !4830
  call void @GetPathComponent(ptr noundef nonnull %filename3, i32 noundef 7, ptr noundef nonnull %subimage) #17, !dbg !4831
  %1 = load i8, ptr %subimage, align 16, !dbg !4832, !tbaa !1703
  %cmp7.not = icmp eq i8 %1, 0, !dbg !4833
  br i1 %cmp7.not, label %if.end86, label %if.then9, !dbg !4834

if.then9:                                         ; preds = %if.end
  %call11 = call i32 @IsSceneGeometry(ptr noundef nonnull %subimage, i32 noundef 0) #17, !dbg !4835
  %cmp12 = icmp eq i32 %call11, 0, !dbg !4836
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4837

if.then14:                                        ; preds = %if.then9
  %call16 = call i32 @IsGeometry(ptr noundef nonnull %subimage) #17, !dbg !4838
  %cmp17.not = icmp eq i32 %call16, 0, !dbg !4841
  br i1 %cmp17.not, label %if.end86, label %if.then19, !dbg !4842

if.then19:                                        ; preds = %if.then14
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 7, !dbg !4843
  %call21 = call ptr @CloneString(ptr noundef nonnull %extract, ptr noundef nonnull %subimage) #17, !dbg !4844
  br label %if.end86, !dbg !4845

if.else:                                          ; preds = %if.then9
  %scenes = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 9, !dbg !4846
  %call24 = call ptr @CloneString(ptr noundef nonnull %scenes, ptr noundef nonnull %subimage) #17, !dbg !4847
  %2 = load ptr, ptr %scenes, align 8, !dbg !4848, !tbaa !3494
  call void @llvm.dbg.value(metadata ptr %2, metadata !1749, metadata !DIExpression()) #17, !dbg !4849
  %call.i = call i64 @strtoul(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #17, !dbg !4851
  %scene = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 10, !dbg !4852
  store i64 %call.i, ptr %scene, align 8, !dbg !4853, !tbaa !3773
  %number_scenes = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 11, !dbg !4854
  store i64 %call.i, ptr %number_scenes, align 8, !dbg !4855, !tbaa !3777
  %3 = load ptr, ptr %scenes, align 8, !dbg !4856, !tbaa !3494
  call void @llvm.dbg.value(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %3, metadata !1137, metadata !DIExpression()), !dbg !4814
  store ptr %3, ptr %q, align 8, !dbg !4857, !tbaa !1701
  call void @llvm.dbg.value(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %3, metadata !1137, metadata !DIExpression()), !dbg !4814
  %4 = load i8, ptr %3, align 1, !dbg !4859, !tbaa !1703
  %cmp31.not502 = icmp eq i8 %4, 0, !dbg !4861
  br i1 %cmp31.not502, label %for.end, label %while.cond.preheader.lr.ph, !dbg !4862

while.cond.preheader.lr.ph:                       ; preds = %if.else
  %call33 = tail call ptr @__ctype_b_loc() #19, !dbg !4814
  br label %while.cond.preheader, !dbg !4862

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %if.end77
  %p.0503 = phi ptr [ %3, %while.cond.preheader.lr.ph ], [ %incdec.ptr78, %if.end77 ]
  call void @llvm.dbg.value(metadata ptr %p.0503, metadata !1144, metadata !DIExpression()), !dbg !4814
  %5 = load ptr, ptr %call33, align 8, !tbaa !1701
  br label %while.cond, !dbg !4863

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %p.1 = phi ptr [ %incdec.ptr, %while.cond ], [ %p.0503, %while.cond.preheader ], !dbg !4865
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1144, metadata !DIExpression()), !dbg !4814
  %6 = load i8, ptr %p.1, align 1, !dbg !4866, !tbaa !1703
  %7 = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %7, !dbg !4866
  %8 = load i16, ptr %arrayidx, align 2, !dbg !4866, !tbaa !2445
  %9 = and i16 %8, 8192, !dbg !4866
  %cmp36.not = icmp ne i16 %9, 0, !dbg !4867
  %cmp39 = icmp eq i8 %6, 44
  %or.cond490 = select i1 %cmp36.not, i1 true, i1 %cmp39, !dbg !4868
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !4869
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1144, metadata !DIExpression()), !dbg !4814
  br i1 %or.cond490, label %while.cond, label %while.end, !dbg !4868, !llvm.loop !4870

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata ptr %q, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !4814
  %call41 = call i64 @strtol(ptr noundef nonnull %p.1, ptr noundef nonnull %q, i32 noundef 10) #17, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %call41, metadata !1150, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.value(metadata i64 %call41, metadata !1155, metadata !DIExpression()), !dbg !4865
  %10 = load ptr, ptr %call33, align 8, !tbaa !1701
  %q.promoted = load ptr, ptr %q, align 8, !tbaa !1701
  br label %while.cond42, !dbg !4872

while.cond42:                                     ; preds = %while.cond42, %while.end
  %incdec.ptr52501 = phi ptr [ %incdec.ptr52, %while.cond42 ], [ %q.promoted, %while.end ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr52501, metadata !1137, metadata !DIExpression()), !dbg !4814
  %11 = load i8, ptr %incdec.ptr52501, align 1, !dbg !4873, !tbaa !1703
  %12 = zext i8 %11 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %10, i64 %12, !dbg !4873
  %13 = load i16, ptr %arrayidx46, align 2, !dbg !4873, !tbaa !2445
  %14 = and i16 %13, 8192, !dbg !4873
  %cmp49.not = icmp eq i16 %14, 0, !dbg !4874
  %incdec.ptr52 = getelementptr inbounds i8, ptr %incdec.ptr52501, i64 1, !dbg !4875
  call void @llvm.dbg.value(metadata ptr %incdec.ptr52, metadata !1137, metadata !DIExpression()), !dbg !4814
  br i1 %cmp49.not, label %while.end53, label %while.cond42, !dbg !4872, !llvm.loop !4876

while.end53:                                      ; preds = %while.cond42
  store ptr %incdec.ptr52501, ptr %q, align 8, !dbg !4877, !tbaa !1701
  %cmp55 = icmp eq i8 %11, 45, !dbg !4878
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !4880

if.then57:                                        ; preds = %while.end53
  call void @llvm.dbg.value(metadata ptr %q, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !4814
  %call58 = call i64 @strtol(ptr noundef nonnull %incdec.ptr52, ptr noundef nonnull %q, i32 noundef 10) #17, !dbg !4881
  call void @llvm.dbg.value(metadata i64 %call58, metadata !1155, metadata !DIExpression()), !dbg !4865
  br label %if.end59, !dbg !4882

if.end59:                                         ; preds = %if.then57, %while.end53
  %last.0 = phi i64 [ %call58, %if.then57 ], [ %call41, %while.end53 ], !dbg !4877
  call void @llvm.dbg.value(metadata i64 %last.0, metadata !1155, metadata !DIExpression()), !dbg !4865
  %15 = call i64 @llvm.umin.i64(i64 %call41, i64 %last.0), !dbg !4883
  %16 = call i64 @llvm.umax.i64(i64 %call41, i64 %last.0), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %16, metadata !1155, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.value(metadata i64 %15, metadata !1150, metadata !DIExpression()), !dbg !4865
  %17 = load i64, ptr %scene, align 8, !dbg !4884, !tbaa !3773
  %cmp67 = icmp ult i64 %15, %17, !dbg !4886
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !4887

if.then69:                                        ; preds = %if.end59
  store i64 %15, ptr %scene, align 8, !dbg !4888, !tbaa !3773
  br label %if.end71, !dbg !4889

if.end71:                                         ; preds = %if.then69, %if.end59
  %18 = phi i64 [ %15, %if.then69 ], [ %17, %if.end59 ]
  %19 = load i64, ptr %number_scenes, align 8, !dbg !4890, !tbaa !3777
  %cmp73 = icmp ugt i64 %16, %19, !dbg !4892
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !4893

if.then75:                                        ; preds = %if.end71
  store i64 %16, ptr %number_scenes, align 8, !dbg !4894, !tbaa !3777
  br label %if.end77, !dbg !4895

if.end77:                                         ; preds = %if.then75, %if.end71
  %20 = phi i64 [ %16, %if.then75 ], [ %19, %if.end71 ]
  %21 = load ptr, ptr %q, align 8, !dbg !4896, !tbaa !1701
  call void @llvm.dbg.value(metadata ptr %21, metadata !1137, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %21, metadata !1144, metadata !DIExpression()), !dbg !4814
  %incdec.ptr78 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !4897
  call void @llvm.dbg.value(metadata ptr %incdec.ptr78, metadata !1144, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %21, metadata !1137, metadata !DIExpression()), !dbg !4814
  %22 = load i8, ptr %21, align 1, !dbg !4859, !tbaa !1703
  %cmp31.not = icmp eq i8 %22, 0, !dbg !4861
  br i1 %cmp31.not, label %for.end, label %while.cond.preheader, !dbg !4862, !llvm.loop !4898

for.end:                                          ; preds = %if.end77, %if.else
  %23 = phi i64 [ %call.i, %if.else ], [ %20, %if.end77 ], !dbg !4900
  %24 = phi i64 [ %call.i, %if.else ], [ %18, %if.end77 ], !dbg !4901
  %sub.neg = sub i64 1, %24, !dbg !4902
  %sub81 = add i64 %sub.neg, %23, !dbg !4900
  store i64 %sub81, ptr %number_scenes, align 8, !dbg !4900, !tbaa !3777
  %subimage83 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 54, !dbg !4903
  store i64 %24, ptr %subimage83, align 8, !dbg !4904, !tbaa !3972
  %subrange = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 55, !dbg !4905
  store i64 %sub81, ptr %subrange, align 8, !dbg !4906, !tbaa !3976
  br label %if.end86

if.end86:                                         ; preds = %for.end, %if.then19, %if.then14, %if.end
  store i8 0, ptr %extension, align 16, !dbg !4907, !tbaa !1703
  call void @GetPathComponent(ptr noundef nonnull %filename3, i32 noundef 6, ptr noundef nonnull %extension) #17, !dbg !4908
  %affirm = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 4, !dbg !4909
  store i32 0, ptr %affirm, align 8, !dbg !4910, !tbaa !4911
  %call91 = call ptr @AcquireExceptionInfo() #17, !dbg !4912
  call void @llvm.dbg.value(metadata ptr %call91, metadata !1141, metadata !DIExpression()), !dbg !4814
  %25 = load i8, ptr %extension, align 16, !dbg !4913, !tbaa !1703
  %cmp94.not = icmp eq i8 %25, 0, !dbg !4914
  br i1 %cmp94.not, label %if.end158, label %if.then96, !dbg !4915

if.then96:                                        ; preds = %if.end86
  %call99 = call i64 @CopyMagickString(ptr noundef nonnull %magic, ptr noundef nonnull %extension, i64 noundef 4096) #17, !dbg !4916
  call void @LocaleUpper(ptr noundef nonnull %magic) #17, !dbg !4917
  call void @llvm.dbg.value(metadata i32 0, metadata !1156, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i64 0, metadata !1159, metadata !DIExpression()), !dbg !4918
  br label %while.body107, !dbg !4919

while.body107:                                    ; preds = %if.then96, %if.end120
  %26 = phi ptr [ @.str.18, %if.then96 ], [ %29, %if.end120 ]
  %i.0505514 = phi i64 [ 0, %if.then96 ], [ %inc, %if.end120 ]
  call void @llvm.dbg.value(metadata i64 %i.0505514, metadata !1159, metadata !DIExpression()), !dbg !4918
  %27 = load i8, ptr %magic, align 16, !dbg !4920, !tbaa !1703
  %28 = load i8, ptr %26, align 1, !dbg !4923, !tbaa !1703
  %cmp112 = icmp eq i8 %27, %28, !dbg !4924
  br i1 %cmp112, label %land.lhs.true, label %if.end120, !dbg !4925

land.lhs.true:                                    ; preds = %while.body107
  %call116 = call i32 @LocaleCompare(ptr noundef nonnull %magic, ptr noundef nonnull %26) #17, !dbg !4926
  %cmp117 = icmp eq i32 %call116, 0, !dbg !4927
  br i1 %cmp117, label %while.end121, label %if.end120, !dbg !4928

if.end120:                                        ; preds = %land.lhs.true, %while.body107
  call void @llvm.dbg.value(metadata i32 0, metadata !1156, metadata !DIExpression()), !dbg !4918
  %inc = add nuw nsw i64 %i.0505514, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1159, metadata !DIExpression()), !dbg !4918
  %arrayidx104 = getelementptr inbounds [18 x ptr], ptr @SetImageInfo.format_type_formats, i64 0, i64 %inc, !dbg !4930
  %29 = load ptr, ptr %arrayidx104, align 8, !dbg !4930, !tbaa !1701
  %cmp105.not = icmp eq i64 %inc, 17, !dbg !4931
  br i1 %cmp105.not, label %while.end121, label %while.body107, !dbg !4919

while.end121:                                     ; preds = %land.lhs.true, %if.end120
  %format_type.0.lcssa = phi i32 [ 0, %if.end120 ], [ 2, %land.lhs.true ], !dbg !4918
  %call123 = call ptr @GetMagickInfo(ptr noundef nonnull %magic, ptr noundef %call91) #17, !dbg !4932
  call void @llvm.dbg.value(metadata ptr %call123, metadata !1140, metadata !DIExpression()), !dbg !4814
  %cmp124.not = icmp eq ptr %call123, null, !dbg !4933
  br i1 %cmp124.not, label %if.end132, label %land.lhs.true126, !dbg !4935

land.lhs.true126:                                 ; preds = %while.end121
  %format_type127 = getelementptr inbounds %struct._MagickInfo, ptr %call123, i64 0, i32 15, !dbg !4936
  %30 = load i32, ptr %format_type127, align 4, !dbg !4936, !tbaa !4937
  %cmp128.not = icmp eq i32 %30, 0, !dbg !4939
  %spec.select = select i1 %cmp128.not, i32 %format_type.0.lcssa, i32 %30, !dbg !4940
  br label %if.end132, !dbg !4940

if.end132:                                        ; preds = %land.lhs.true126, %while.end121
  %format_type.2 = phi i32 [ %format_type.0.lcssa, %while.end121 ], [ %spec.select, %land.lhs.true126 ], !dbg !4918
  call void @llvm.dbg.value(metadata i32 %format_type.2, metadata !1156, metadata !DIExpression()), !dbg !4918
  switch i32 %format_type.2, label %if.end150 [
    i32 0, label %if.end150.sink.split
    i32 2, label %if.then143
  ], !dbg !4941

if.then143:                                       ; preds = %if.end132
  store i32 1, ptr %affirm, align 8, !dbg !4942, !tbaa !4911
  br label %if.end150.sink.split, !dbg !4946

if.end150.sink.split:                             ; preds = %if.end132, %if.then143
  %magick145 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !4947
  %call148 = call i64 @CopyMagickString(ptr noundef nonnull %magick145, ptr noundef nonnull %magic, i64 noundef 4096) #17, !dbg !4947
  br label %if.end150, !dbg !4948

if.end150:                                        ; preds = %if.end150.sink.split, %if.end132
  %call152 = call i32 @LocaleCompare(ptr noundef nonnull %magic, ptr noundef nonnull @.str.35) #17, !dbg !4948
  %cmp153 = icmp eq i32 %call152, 0, !dbg !4950
  br i1 %cmp153, label %if.then155, label %if.end158, !dbg !4951

if.then155:                                       ; preds = %if.end150
  store i32 0, ptr %affirm, align 8, !dbg !4952, !tbaa !4911
  br label %if.end158, !dbg !4953

if.end158:                                        ; preds = %if.end150, %if.then155, %if.end86
  store i8 0, ptr %magic, align 16, !dbg !4954, !tbaa !1703
  call void @GetPathComponent(ptr noundef nonnull %filename3, i32 noundef 1, ptr noundef nonnull %magic) #17, !dbg !4955
  %31 = load i8, ptr %magic, align 16, !dbg !4956, !tbaa !1703
  %cmp165 = icmp eq i8 %31, 0, !dbg !4958
  br i1 %cmp165, label %if.then167, label %if.else172, !dbg !4959

if.then167:                                       ; preds = %if.end158
  %magick169 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !4960
  %call171 = call i64 @CopyMagickString(ptr noundef nonnull %magic, ptr noundef nonnull %magick169, i64 noundef 4096) #17, !dbg !4961
  br label %if.end192, !dbg !4962

if.else172:                                       ; preds = %if.end158
  call void @LocaleUpper(ptr noundef nonnull %magic) #17, !dbg !4963
  %call175 = call i32 @IsMagickConflict(ptr noundef nonnull %magic) #17, !dbg !4965
  %cmp176 = icmp eq i32 %call175, 0, !dbg !4967
  br i1 %cmp176, label %if.then178, label %if.end192, !dbg !4968

if.then178:                                       ; preds = %if.else172
  %magick179 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !4969
  %call182 = call i64 @CopyMagickString(ptr noundef nonnull %magick179, ptr noundef nonnull %magic, i64 noundef 4096) #17, !dbg !4971
  %call184 = call i32 @LocaleCompare(ptr noundef nonnull %magic, ptr noundef nonnull @.str.22) #17, !dbg !4972
  %cmp185.not = icmp eq i32 %call184, 0, !dbg !4974
  br i1 %cmp185.not, label %if.else189, label %if.then187, !dbg !4975

if.then187:                                       ; preds = %if.then178
  store i32 1, ptr %affirm, align 8, !dbg !4976, !tbaa !4911
  br label %if.end192, !dbg !4977

if.else189:                                       ; preds = %if.then178
  %temporary = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 2, !dbg !4978
  store i32 1, ptr %temporary, align 8, !dbg !4979, !tbaa !3763
  br label %if.end192

if.end192:                                        ; preds = %if.else172, %if.else189, %if.then187, %if.then167
  %call194 = call ptr @GetMagickInfo(ptr noundef nonnull %magic, ptr noundef %call91) #17, !dbg !4980
  call void @llvm.dbg.value(metadata ptr %call194, metadata !1140, metadata !DIExpression()), !dbg !4814
  %call195 = call ptr @DestroyExceptionInfo(ptr noundef %call91) #17, !dbg !4981
  call void @llvm.dbg.value(metadata ptr %call195, metadata !1141, metadata !DIExpression()), !dbg !4814
  %cmp196 = icmp eq ptr %call194, null, !dbg !4982
  br i1 %cmp196, label %if.then201, label %lor.lhs.false, !dbg !4984

lor.lhs.false:                                    ; preds = %if.end192
  %call198 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %call194) #17, !dbg !4985
  %cmp199 = icmp eq i32 %call198, 0, !dbg !4986
  br i1 %cmp199, label %if.then201, label %if.end202, !dbg !4987

if.then201:                                       ; preds = %lor.lhs.false, %if.end192
  %endian = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !4988
  store i32 0, ptr %endian, align 4, !dbg !4989, !tbaa !1405
  br label %if.end202, !dbg !4990

if.end202:                                        ; preds = %if.then201, %lor.lhs.false
  call void @GetPathComponent(ptr noundef nonnull %filename3, i32 noundef 8, ptr noundef nonnull %filename) #17, !dbg !4991
  %call209 = call i64 @CopyMagickString(ptr noundef nonnull %filename3, ptr noundef nonnull %filename, i64 noundef 4096) #17, !dbg !4992
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !4993
  %32 = load i32, ptr %adjoin, align 4, !dbg !4993, !tbaa !2160
  %cmp210 = icmp ne i32 %32, 0, !dbg !4995
  %cmp213 = icmp ugt i32 %frames, 1
  %or.cond = and i1 %cmp213, %cmp210, !dbg !4996
  br i1 %or.cond, label %if.then215, label %if.end236, !dbg !4996

if.then215:                                       ; preds = %if.end202
  %scene218 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 10, !dbg !4997
  %33 = load i64, ptr %scene218, align 8, !dbg !4997, !tbaa !3773
  %conv219 = trunc i64 %33 to i32, !dbg !4999
  %call221 = call i64 @InterpretImageFilename(ptr noundef nonnull %image_info, ptr noundef null, ptr noundef nonnull %filename3, i32 noundef %conv219, ptr noundef nonnull %filename), !dbg !5000
  %call225 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull %filename3) #17, !dbg !5001
  %cmp226.not = icmp eq i32 %call225, 0, !dbg !5003
  br i1 %cmp226.not, label %if.end236, label %land.lhs.true228, !dbg !5004

land.lhs.true228:                                 ; preds = %if.then215
  %call230 = call ptr @strchr(ptr noundef nonnull %filename, i32 noundef 37) #23, !dbg !5005
  %cmp231 = icmp eq ptr %call230, null, !dbg !5006
  br i1 %cmp231, label %if.then233, label %if.end236, !dbg !5007

if.then233:                                       ; preds = %land.lhs.true228
  store i32 0, ptr %adjoin, align 4, !dbg !5008, !tbaa !2160
  br label %if.end236, !dbg !5009

if.end236:                                        ; preds = %if.then215, %land.lhs.true228, %if.then233, %if.end202
  %34 = load i32, ptr %adjoin, align 4, !dbg !5010, !tbaa !2160
  %cmp238 = icmp ne i32 %34, 0, !dbg !5012
  %cmp241 = icmp ne i32 %frames, 0
  %or.cond372 = and i1 %cmp241, %cmp238, !dbg !5013
  br i1 %or.cond372, label %if.then243, label %if.end256, !dbg !5013

if.then243:                                       ; preds = %if.end236
  %call245 = call ptr @GetMagickInfo(ptr noundef nonnull %magic, ptr noundef %exception) #17, !dbg !5014
  call void @llvm.dbg.value(metadata ptr %call245, metadata !1140, metadata !DIExpression()), !dbg !4814
  %cmp246.not = icmp eq ptr %call245, null, !dbg !5016
  br i1 %cmp246.not, label %cleanup, label %if.then248, !dbg !5018

if.then248:                                       ; preds = %if.then243
  %call249 = call i32 @GetMagickAdjoin(ptr noundef nonnull %call245) #17, !dbg !5019
  %cmp250 = icmp eq i32 %call249, 0, !dbg !5021
  br i1 %cmp250, label %if.then252, label %cleanup, !dbg !5022

if.then252:                                       ; preds = %if.then248
  store i32 0, ptr %adjoin, align 4, !dbg !5023, !tbaa !2160
  br label %cleanup, !dbg !5024

if.end256:                                        ; preds = %if.end236
  %35 = load i32, ptr %affirm, align 8, !dbg !5025, !tbaa !4911
  %36 = or i32 %35, %frames, !dbg !5027
  %37 = icmp eq i32 %36, 0, !dbg !5027
  br i1 %37, label %if.then264, label %cleanup, !dbg !5027

if.then264:                                       ; preds = %if.end256
  %call265 = call ptr @AcquireImage(ptr noundef nonnull %image_info), !dbg !5028
  call void @llvm.dbg.value(metadata ptr %call265, metadata !1142, metadata !DIExpression()), !dbg !4814
  %filename266 = getelementptr inbounds %struct._Image, ptr %call265, i64 0, i32 53, !dbg !5031
  %call270 = call i64 @CopyMagickString(ptr noundef nonnull %filename266, ptr noundef nonnull %filename3, i64 noundef 4096) #17, !dbg !5032
  %call271 = call i32 @OpenBlob(ptr noundef nonnull %image_info, ptr noundef %call265, i32 noundef 2, ptr noundef %exception) #17, !dbg !5033
  call void @llvm.dbg.value(metadata i32 %call271, metadata !1143, metadata !DIExpression()), !dbg !4814
  %cmp272 = icmp eq i32 %call271, 0, !dbg !5034
  br i1 %cmp272, label %if.then274, label %if.end276, !dbg !5036

if.then274:                                       ; preds = %if.then264
  %call275 = call ptr @DestroyImage(ptr noundef %call265), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %call275, metadata !1142, metadata !DIExpression()), !dbg !4814
  br label %cleanup, !dbg !5039

if.end276:                                        ; preds = %if.then264
  %call277 = call i32 @IsBlobSeekable(ptr noundef %call265) #17, !dbg !5040
  %cmp278 = icmp eq i32 %call277, 0, !dbg !5042
  br i1 %cmp278, label %if.then284, label %lor.lhs.false280, !dbg !5043

lor.lhs.false280:                                 ; preds = %if.end276
  %call281 = call i32 @IsBlobExempt(ptr noundef %call265) #17, !dbg !5044
  %cmp282.not = icmp eq i32 %call281, 0, !dbg !5045
  br i1 %cmp282.not, label %if.end309, label %if.then284, !dbg !5046

if.then284:                                       ; preds = %lor.lhs.false280, %if.end276
  store i8 0, ptr %filename, align 16, !dbg !5047, !tbaa !1703
  %call287 = call i32 @ImageToFile(ptr noundef %call265, ptr noundef nonnull %filename, ptr noundef %exception) #17, !dbg !5049
  call void @llvm.dbg.value(metadata i32 %call287, metadata !1143, metadata !DIExpression()), !dbg !4814
  %call288 = call i32 @CloseBlob(ptr noundef %call265) #17, !dbg !5050
  %cmp289 = icmp eq i32 %call287, 0, !dbg !5051
  br i1 %cmp289, label %if.then291, label %if.end293, !dbg !5053

if.then291:                                       ; preds = %if.then284
  %call292 = call ptr @DestroyImage(ptr noundef %call265), !dbg !5054
  call void @llvm.dbg.value(metadata ptr %call292, metadata !1142, metadata !DIExpression()), !dbg !4814
  br label %cleanup, !dbg !5056

if.end293:                                        ; preds = %if.then284
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3910, metadata !DIExpression()) #17, !dbg !5057
  call void @llvm.dbg.value(metadata ptr null, metadata !3915, metadata !DIExpression()) #17, !dbg !5057
  %38 = load i32, ptr %debug, align 8, !dbg !5059, !tbaa !2197
  %cmp.not.i = icmp eq i32 %38, 0, !dbg !5060
  br i1 %cmp.not.i, label %SetImageInfoFile.exit, label %if.then.i, !dbg !5061

if.then.i:                                        ; preds = %if.end293
  %call.i495 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename3) #17, !dbg !5062
  br label %SetImageInfoFile.exit, !dbg !5063

SetImageInfoFile.exit:                            ; preds = %if.end293, %if.then.i
  %file1.i = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !5064
  store ptr null, ptr %file1.i, align 8, !dbg !5065, !tbaa !1338
  %call297 = call i64 @CopyMagickString(ptr noundef nonnull %filename266, ptr noundef nonnull %filename, i64 noundef 4096) #17, !dbg !5066
  %call298 = call i32 @OpenBlob(ptr noundef nonnull %image_info, ptr noundef %call265, i32 noundef 2, ptr noundef %exception) #17, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %call298, metadata !1143, metadata !DIExpression()), !dbg !4814
  %cmp299 = icmp eq i32 %call298, 0, !dbg !5068
  br i1 %cmp299, label %if.then301, label %if.end303, !dbg !5070

if.then301:                                       ; preds = %SetImageInfoFile.exit
  %call302 = call ptr @DestroyImage(ptr noundef %call265), !dbg !5071
  call void @llvm.dbg.value(metadata ptr %call302, metadata !1142, metadata !DIExpression()), !dbg !4814
  br label %cleanup, !dbg !5073

if.end303:                                        ; preds = %SetImageInfoFile.exit
  %call307 = call i64 @CopyMagickString(ptr noundef nonnull %filename3, ptr noundef nonnull %filename, i64 noundef 4096) #17, !dbg !5074
  %temporary308 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 2, !dbg !5075
  store i32 1, ptr %temporary308, align 8, !dbg !5076, !tbaa !3763
  br label %if.end309, !dbg !5077

if.end309:                                        ; preds = %if.end303, %lor.lhs.false280
  %call311 = call ptr @ResetMagickMemory(ptr noundef nonnull %magick, i32 noundef 0, i64 noundef 8192) #17, !dbg !5078
  %call313 = call i64 @ReadBlob(ptr noundef %call265, i64 noundef 8192, ptr noundef nonnull %magick) #17, !dbg !5079
  call void @llvm.dbg.value(metadata i64 %call313, metadata !1145, metadata !DIExpression()), !dbg !4814
  %sub314 = sub nsw i64 0, %call313, !dbg !5080
  %call315 = call i64 @SeekBlob(ptr noundef %call265, i64 noundef %sub314, i32 noundef 1) #17, !dbg !5081
  %call316 = call i32 @CloseBlob(ptr noundef %call265) #17, !dbg !5082
  %call317 = call ptr @DestroyImage(ptr noundef %call265), !dbg !5083
  call void @llvm.dbg.value(metadata ptr %call317, metadata !1142, metadata !DIExpression()), !dbg !4814
  %call318 = call ptr @AcquireExceptionInfo() #17, !dbg !5084
  call void @llvm.dbg.value(metadata ptr %call318, metadata !1141, metadata !DIExpression()), !dbg !4814
  %call320 = call ptr @GetMagicInfo(ptr noundef nonnull %magick, i64 noundef %call313, ptr noundef %call318) #17, !dbg !5085
  call void @llvm.dbg.value(metadata ptr %call320, metadata !1139, metadata !DIExpression()), !dbg !4814
  %cmp321.not = icmp eq ptr %call320, null, !dbg !5086
  br i1 %cmp321.not, label %if.end345, label %land.lhs.true323, !dbg !5088

land.lhs.true323:                                 ; preds = %if.end309
  %call324 = call ptr @GetMagicName(ptr noundef nonnull %call320) #17, !dbg !5089
  %cmp325.not = icmp eq ptr %call324, null, !dbg !5090
  br i1 %cmp325.not, label %if.end345, label %if.then327, !dbg !5091

if.then327:                                       ; preds = %land.lhs.true323
  %magick328 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !5092
  %call330 = call ptr @GetMagicName(ptr noundef nonnull %call320) #17, !dbg !5094
  %call331 = call i64 @CopyMagickString(ptr noundef nonnull %magick328, ptr noundef %call330, i64 noundef 4096) #17, !dbg !5095
  %call334 = call ptr @GetMagickInfo(ptr noundef nonnull %magick328, ptr noundef %call318) #17, !dbg !5096
  call void @llvm.dbg.value(metadata ptr %call334, metadata !1140, metadata !DIExpression()), !dbg !4814
  %cmp335 = icmp eq ptr %call334, null, !dbg !5097
  br i1 %cmp335, label %if.then341, label %lor.lhs.false337, !dbg !5099

lor.lhs.false337:                                 ; preds = %if.then327
  %call338 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %call334) #17, !dbg !5100
  %cmp339 = icmp eq i32 %call338, 0, !dbg !5101
  br i1 %cmp339, label %if.then341, label %if.end343, !dbg !5102

if.then341:                                       ; preds = %lor.lhs.false337, %if.then327
  %endian342 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !5103
  store i32 0, ptr %endian342, align 4, !dbg !5104, !tbaa !1405
  br label %if.end343, !dbg !5105

if.end343:                                        ; preds = %if.then341, %lor.lhs.false337
  %call344 = call ptr @DestroyExceptionInfo(ptr noundef %call318) #17, !dbg !5106
  call void @llvm.dbg.value(metadata ptr %call344, metadata !1141, metadata !DIExpression()), !dbg !4814
  br label %cleanup, !dbg !5107

if.end345:                                        ; preds = %land.lhs.true323, %if.end309
  %magick346 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !5108
  %call348 = call ptr @GetMagickInfo(ptr noundef nonnull %magick346, ptr noundef %call318) #17, !dbg !5109
  call void @llvm.dbg.value(metadata ptr %call348, metadata !1140, metadata !DIExpression()), !dbg !4814
  %cmp349 = icmp eq ptr %call348, null, !dbg !5110
  br i1 %cmp349, label %if.then355, label %lor.lhs.false351, !dbg !5112

lor.lhs.false351:                                 ; preds = %if.end345
  %call352 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %call348) #17, !dbg !5113
  %cmp353 = icmp eq i32 %call352, 0, !dbg !5114
  br i1 %cmp353, label %if.then355, label %if.end357, !dbg !5115

if.then355:                                       ; preds = %lor.lhs.false351, %if.end345
  %endian356 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !5116
  store i32 0, ptr %endian356, align 4, !dbg !5117, !tbaa !1405
  br label %if.end357, !dbg !5118

if.end357:                                        ; preds = %if.then355, %lor.lhs.false351
  %call358 = call ptr @DestroyExceptionInfo(ptr noundef %call318) #17, !dbg !5119
  call void @llvm.dbg.value(metadata ptr %call358, metadata !1141, metadata !DIExpression()), !dbg !4814
  br label %cleanup, !dbg !5120

cleanup:                                          ; preds = %if.then248, %if.then252, %if.then243, %if.end357, %if.end256, %if.end343, %if.then301, %if.then291, %if.then274
  %retval.0 = phi i32 [ 0, %if.then274 ], [ 0, %if.then291 ], [ 0, %if.then301 ], [ 1, %if.end343 ], [ 1, %if.end256 ], [ 1, %if.end357 ], [ 1, %if.then243 ], [ 1, %if.then252 ], [ 1, %if.then248 ], !dbg !4814
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %magick) #17, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subimage) #17, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #17, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magic) #17, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #17, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %extension) #17, !dbg !5121
  ret i32 %retval.0, !dbg !5121
}

declare !dbg !5122 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5126 i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !5129 i32 @IsGeometry(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare !dbg !5130 void @LocaleUpper(ptr noundef) local_unnamed_addr #3

declare !dbg !5133 ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5136 i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #3

declare !dbg !5137 i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !5140 i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #3

declare !dbg !5141 i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5146 i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #3

declare !dbg !5147 i32 @IsBlobExempt(ptr noundef) local_unnamed_addr #3

declare !dbg !5148 i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5151 i32 @CloseBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !5152 i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5155 i64 @SeekBlob(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !5158 ptr @GetMagicInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5161 ptr @GetMagicName(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageMask(ptr noundef %image, ptr noundef %mask) local_unnamed_addr #0 !dbg !5164 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !5166, metadata !DIExpression()), !dbg !5168
  call void @llvm.dbg.value(metadata ptr %mask, metadata !5167, metadata !DIExpression()), !dbg !5168
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !5169
  %0 = load i32, ptr %debug, align 8, !dbg !5169, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5171
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5172

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2889, ptr noundef nonnull @.str.2) #17, !dbg !5173
  br label %if.end, !dbg !5174

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq ptr %mask, null, !dbg !5175
  br i1 %cmp1.not, label %if.end13, label %if.then2, !dbg !5177

if.then2:                                         ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %mask, i64 0, i32 7, !dbg !5178
  %1 = load i64, ptr %columns, align 8, !dbg !5178, !tbaa !1362
  %columns3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !5180
  %2 = load i64, ptr %columns3, align 8, !dbg !5180, !tbaa !1362
  %cmp4.not = icmp eq i64 %1, %2, !dbg !5181
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then9, !dbg !5182

lor.lhs.false:                                    ; preds = %if.then2
  %rows = getelementptr inbounds %struct._Image, ptr %mask, i64 0, i32 8, !dbg !5183
  %3 = load i64, ptr %rows, align 8, !dbg !5183, !tbaa !1367
  %rows5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !5184
  %4 = load i64, ptr %rows5, align 8, !dbg !5184, !tbaa !1367
  %cmp6.not = icmp eq i64 %3, %4, !dbg !5185
  br i1 %cmp6.not, label %if.end13, label %if.then9, !dbg !5186

if.then9:                                         ; preds = %if.then2, %lor.lhs.false
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !5187
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !5187
  %call10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2893, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #17, !dbg !5187
  br label %return, !dbg !5187

if.end13:                                         ; preds = %lor.lhs.false, %if.end
  %mask14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 73, !dbg !5190
  %5 = load ptr, ptr %mask14, align 8, !dbg !5190, !tbaa !2638
  %cmp15.not = icmp eq ptr %5, null, !dbg !5192
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !5193

if.then16:                                        ; preds = %if.end13
  %call18 = tail call ptr @DestroyImage(ptr noundef nonnull %5), !dbg !5194
  store ptr %call18, ptr %mask14, align 8, !dbg !5195, !tbaa !2638
  br label %if.end20, !dbg !5196

if.end20:                                         ; preds = %if.then16, %if.end13
  %call21 = tail call ptr @NewImageList() #17, !dbg !5197
  store ptr %call21, ptr %mask14, align 8, !dbg !5198, !tbaa !2638
  br i1 %cmp1.not, label %return, label %if.end25, !dbg !5199

if.end25:                                         ; preds = %if.end20
  call void @llvm.dbg.value(metadata ptr %image, metadata !2351, metadata !DIExpression()) #17, !dbg !5200
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !5200
  store i32 1, ptr %image, align 8, !dbg !5203, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !5204
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef nonnull %exception.i) #17, !dbg !5205
  %cmp27 = icmp eq i32 %call.i, 0, !dbg !5206
  br i1 %cmp27, label %return, label %if.end29, !dbg !5207

if.end29:                                         ; preds = %if.end25
  %call31 = tail call ptr @CloneImage(ptr noundef nonnull %mask, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %exception.i), !dbg !5208
  store ptr %call31, ptr %mask14, align 8, !dbg !5209, !tbaa !2638
  %cmp34 = icmp ne ptr %call31, null, !dbg !5210
  %. = zext i1 %cmp34 to i32, !dbg !5168
  br label %return, !dbg !5168

return:                                           ; preds = %if.end29, %if.end25, %if.end20, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end20 ], [ 0, %if.end25 ], [ %., %if.end29 ], !dbg !5168
  ret i32 %retval.0, !dbg !5212
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageOpacity(ptr noundef %image, i16 noundef zeroext %opacity) local_unnamed_addr #0 !dbg !5213 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !5218, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.value(metadata i16 %opacity, metadata !5219, metadata !DIExpression()), !dbg !5229
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !5230
  %0 = load i32, ptr %debug, align 8, !dbg !5230, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5232
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5233

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2949, ptr noundef nonnull @.str.2) #17, !dbg !5234
  br label %if.end, !dbg !5235

if.end:                                           ; preds = %if.then, %entry
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !5236
  store i32 1, ptr %matte, align 8, !dbg !5237, !tbaa !2317
  call void @llvm.dbg.value(metadata i32 1, metadata !5222, metadata !DIExpression()), !dbg !5229
  %exception1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !5238
  call void @llvm.dbg.value(metadata ptr %exception1, metadata !5221, metadata !DIExpression()), !dbg !5229
  %call2 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception1) #17, !dbg !5239
  call void @llvm.dbg.value(metadata ptr %call2, metadata !5220, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.value(metadata i64 0, metadata !5223, metadata !DIExpression()), !dbg !5229
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !5223, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.value(metadata i32 1, metadata !5222, metadata !DIExpression()), !dbg !5229
  %1 = load i64, ptr %rows, align 8, !dbg !5240, !tbaa !1367
  %cmp348 = icmp sgt i64 %1, 0, !dbg !5241
  br i1 %cmp348, label %for.body.lr.ph, label %for.end23, !dbg !5242

for.body.lr.ph:                                   ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  br label %for.body, !dbg !5242

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.050 = phi i64 [ 0, %for.body.lr.ph ], [ %inc22, %cleanup ]
  %status.049 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.050, metadata !5223, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.value(metadata i32 %status.049, metadata !5222, metadata !DIExpression()), !dbg !5229
  %cmp4 = icmp eq i32 %status.049, 0, !dbg !5243
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !5245

if.end6:                                          ; preds = %for.body
  %2 = load i64, ptr %columns, align 8, !dbg !5246, !tbaa !1362
  %call7 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call2, i64 noundef 0, i64 noundef %y.050, i64 noundef %2, i64 noundef 1, ptr noundef nonnull %exception1) #21, !dbg !5247
  call void @llvm.dbg.value(metadata ptr %call7, metadata !5224, metadata !DIExpression()), !dbg !5248
  %cmp8 = icmp eq ptr %call7, null, !dbg !5249
  br i1 %cmp8, label %cleanup, label %for.cond11.preheader, !dbg !5251

for.cond11.preheader:                             ; preds = %if.end6
  %3 = load i64, ptr %columns, align 8, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 0, metadata !5228, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.value(metadata ptr %call7, metadata !5224, metadata !DIExpression()), !dbg !5248
  %cmp1345 = icmp sgt i64 %3, 0, !dbg !5252
  br i1 %cmp1345, label %for.body14, label %for.end, !dbg !5255

for.body14:                                       ; preds = %for.cond11.preheader, %for.body14
  %x.047 = phi i64 [ %inc, %for.body14 ], [ 0, %for.cond11.preheader ]
  %q.046 = phi ptr [ %incdec.ptr, %for.body14 ], [ %call7, %for.cond11.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.047, metadata !5228, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.value(metadata ptr %q.046, metadata !5224, metadata !DIExpression()), !dbg !5248
  %opacity15 = getelementptr inbounds %struct._PixelPacket, ptr %q.046, i64 0, i32 3, !dbg !5256
  store i16 %opacity, ptr %opacity15, align 2, !dbg !5256, !tbaa !2437
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.046, i64 1, !dbg !5258
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !5224, metadata !DIExpression()), !dbg !5248
  %inc = add nuw nsw i64 %x.047, 1, !dbg !5259
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5228, metadata !DIExpression()), !dbg !5248
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !5252
  br i1 %exitcond.not, label %for.end, label %for.body14, !dbg !5255, !llvm.loop !5260

for.end:                                          ; preds = %for.body14, %for.cond11.preheader
  %call16 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call2, ptr noundef nonnull %exception1) #21, !dbg !5262
  %cmp17 = icmp ne i32 %call16, 0, !dbg !5264
  %spec.select = zext i1 %cmp17 to i32, !dbg !5265
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5222, metadata !DIExpression()), !dbg !5229
  br label %cleanup, !dbg !5266

cleanup:                                          ; preds = %if.end6, %for.body, %for.end
  %status.2 = phi i32 [ %spec.select, %for.end ], [ 0, %for.body ], [ 0, %if.end6 ], !dbg !5229
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !5222, metadata !DIExpression()), !dbg !5229
  %inc22 = add nuw nsw i64 %y.050, 1, !dbg !5267
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !5223, metadata !DIExpression()), !dbg !5229
  %4 = load i64, ptr %rows, align 8, !dbg !5240, !tbaa !1367
  %cmp3 = icmp slt i64 %inc22, %4, !dbg !5241
  br i1 %cmp3, label %for.body, label %for.end23, !dbg !5242, !llvm.loop !5268

for.end23:                                        ; preds = %cleanup, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.2, %cleanup ], !dbg !5270
  %call24 = tail call ptr @DestroyCacheView(ptr noundef %call2) #17, !dbg !5271
  call void @llvm.dbg.value(metadata ptr %call24, metadata !5220, metadata !DIExpression()), !dbg !5229
  ret i32 %status.0.lcssa, !dbg !5272
}

; Function Attrs: hot
declare !dbg !5273 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageVirtualPixelMethod(ptr noundef %image, i32 noundef %virtual_pixel_method) local_unnamed_addr #0 !dbg !5274 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !5279, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.value(metadata i32 %virtual_pixel_method, metadata !5280, metadata !DIExpression()), !dbg !5281
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !5282
  %0 = load i32, ptr %debug, align 8, !dbg !5282, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5284
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5285

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !5286
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3020, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !5287
  br label %if.end, !dbg !5288

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetPixelCacheVirtualMethod(ptr noundef nonnull %image, i32 noundef %virtual_pixel_method) #17, !dbg !5289
  ret i32 %call1, !dbg !5290
}

declare !dbg !5291 i32 @SetPixelCacheVirtualMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SmushImages(ptr noundef %images, i32 noundef %stack, i64 noundef %offset, ptr noundef %exception) local_unnamed_addr #0 !dbg !5292 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %left_geometry.i = alloca %struct._RectangleInfo, align 8
  %right_geometry.i = alloca %struct._RectangleInfo, align 8
  %bottom_geometry.i = alloca %struct._RectangleInfo, align 8
  %top_geometry.i = alloca %struct._RectangleInfo, align 8
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !5296, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %stack, metadata !5297, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %offset, metadata !5298, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %exception, metadata !5299, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #17, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !5307, metadata !DIExpression()), !dbg !5316
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !5317
  %0 = load i32, ptr %debug, align 8, !dbg !5317, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5319
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5320

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !5321
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !5322
  br label %if.end, !dbg !5323

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %images, metadata !5301, metadata !DIExpression()), !dbg !5314
  %matte1 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 6, !dbg !5324
  %1 = load i32, ptr %matte1, align 8, !dbg !5324, !tbaa !2317
  call void @llvm.dbg.value(metadata i32 %1, metadata !5303, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 1, metadata !5310, metadata !DIExpression()), !dbg !5314
  %columns = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 7, !dbg !5325
  %2 = load i64, ptr %columns, align 8, !dbg !5325, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 %2, metadata !5311, metadata !DIExpression()), !dbg !5314
  %rows = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 8, !dbg !5326
  %3 = load i64, ptr %rows, align 8, !dbg !5326, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %3, metadata !5309, metadata !DIExpression()), !dbg !5314
  %call2 = tail call ptr @GetNextImageInList(ptr noundef nonnull %images) #17, !dbg !5327
  call void @llvm.dbg.value(metadata ptr %call2, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %2, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 1, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %3, metadata !5309, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %1, metadata !5303, metadata !DIExpression()), !dbg !5314
  %cmp3.not237 = icmp eq ptr %call2, null, !dbg !5328
  br i1 %cmp3.not237, label %for.end, label %for.body.lr.ph, !dbg !5331

for.body.lr.ph:                                   ; preds = %if.end
  %cmp8.not = icmp eq i32 %stack, 0
  br i1 %cmp8.not, label %for.body.us, label %for.body, !dbg !5332

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %width.0243.us = phi i64 [ %spec.select171.us, %for.body.us ], [ %2, %for.body.lr.ph ]
  %number_images.0242.us = phi i64 [ %inc.us, %for.body.us ], [ 1, %for.body.lr.ph ]
  %height.0241.us = phi i64 [ %8, %for.body.us ], [ %3, %for.body.lr.ph ]
  %next.0239.us = phi ptr [ %call33.us, %for.body.us ], [ %call2, %for.body.lr.ph ]
  %matte.0238.us = phi i32 [ %spec.select.us, %for.body.us ], [ %1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %width.0243.us, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %number_images.0242.us, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %height.0241.us, metadata !5309, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %next.0239.us, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %matte.0238.us, metadata !5303, metadata !DIExpression()), !dbg !5314
  %matte4.us = getelementptr inbounds %struct._Image, ptr %next.0239.us, i64 0, i32 6, !dbg !5334
  %4 = load i32, ptr %matte4.us, align 8, !dbg !5334, !tbaa !2317
  %cmp5.not.us = icmp eq i32 %4, 0, !dbg !5336
  %spec.select.us = select i1 %cmp5.not.us, i32 %matte.0238.us, i32 1, !dbg !5337
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !5303, metadata !DIExpression()), !dbg !5314
  %inc.us = add i64 %number_images.0242.us, 1, !dbg !5338
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !5310, metadata !DIExpression()), !dbg !5314
  %columns21.us = getelementptr inbounds %struct._Image, ptr %next.0239.us, i64 0, i32 7, !dbg !5339
  %5 = load i64, ptr %columns21.us, align 8, !dbg !5339, !tbaa !1362
  %add22.us = add i64 %5, %width.0243.us, !dbg !5340
  call void @llvm.dbg.value(metadata i64 %add22.us, metadata !5311, metadata !DIExpression()), !dbg !5314
  %previous23.us = getelementptr inbounds %struct._Image, ptr %next.0239.us, i64 0, i32 67, !dbg !5341
  %6 = load ptr, ptr %previous23.us, align 8, !dbg !5341, !tbaa !2252
  %cmp24.not.us = icmp eq ptr %6, null, !dbg !5343
  %add26.us = select i1 %cmp24.not.us, i64 0, i64 %offset, !dbg !5344
  %spec.select171.us = add i64 %add22.us, %add26.us, !dbg !5344
  call void @llvm.dbg.value(metadata i64 %spec.select171.us, metadata !5311, metadata !DIExpression()), !dbg !5314
  %rows28.us = getelementptr inbounds %struct._Image, ptr %next.0239.us, i64 0, i32 8, !dbg !5345
  %7 = load i64, ptr %rows28.us, align 8, !dbg !5345, !tbaa !1367
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %height.0241.us), !dbg !5347
  call void @llvm.dbg.value(metadata i64 undef, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 undef, metadata !5309, metadata !DIExpression()), !dbg !5314
  %call33.us = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0239.us) #17, !dbg !5348
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %call33.us, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !5303, metadata !DIExpression()), !dbg !5314
  %cmp3.not.us = icmp eq ptr %call33.us, null, !dbg !5328
  br i1 %cmp3.not.us, label %for.end, label %for.body.us, !dbg !5331, !llvm.loop !5349

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %width.0243 = phi i64 [ %11, %for.body ], [ %2, %for.body.lr.ph ]
  %number_images.0242 = phi i64 [ %inc, %for.body ], [ 1, %for.body.lr.ph ]
  %height.0241 = phi i64 [ %spec.select172, %for.body ], [ %3, %for.body.lr.ph ]
  %next.0239 = phi ptr [ %call33, %for.body ], [ %call2, %for.body.lr.ph ]
  %matte.0238 = phi i32 [ %spec.select, %for.body ], [ %1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %width.0243, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %number_images.0242, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %height.0241, metadata !5309, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %next.0239, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %matte.0238, metadata !5303, metadata !DIExpression()), !dbg !5314
  %matte4 = getelementptr inbounds %struct._Image, ptr %next.0239, i64 0, i32 6, !dbg !5334
  %9 = load i32, ptr %matte4, align 8, !dbg !5334, !tbaa !2317
  %cmp5.not = icmp eq i32 %9, 0, !dbg !5336
  %spec.select = select i1 %cmp5.not, i32 %matte.0238, i32 1, !dbg !5337
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5303, metadata !DIExpression()), !dbg !5314
  %inc = add i64 %number_images.0242, 1, !dbg !5338
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5310, metadata !DIExpression()), !dbg !5314
  %columns10 = getelementptr inbounds %struct._Image, ptr %next.0239, i64 0, i32 7, !dbg !5351
  %10 = load i64, ptr %columns10, align 8, !dbg !5351, !tbaa !1362
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 %width.0243), !dbg !5355
  call void @llvm.dbg.value(metadata i64 %11, metadata !5311, metadata !DIExpression()), !dbg !5314
  %rows15 = getelementptr inbounds %struct._Image, ptr %next.0239, i64 0, i32 8, !dbg !5356
  %12 = load i64, ptr %rows15, align 8, !dbg !5356, !tbaa !1367
  %add = add i64 %12, %height.0241, !dbg !5357
  call void @llvm.dbg.value(metadata i64 %add, metadata !5309, metadata !DIExpression()), !dbg !5314
  %previous = getelementptr inbounds %struct._Image, ptr %next.0239, i64 0, i32 67, !dbg !5358
  %13 = load ptr, ptr %previous, align 8, !dbg !5358, !tbaa !2252
  %cmp16.not = icmp eq ptr %13, null, !dbg !5360
  %add18 = select i1 %cmp16.not, i64 0, i64 %offset, !dbg !5361
  %spec.select172 = add i64 %add, %add18, !dbg !5361
  call void @llvm.dbg.value(metadata i64 %11, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %spec.select172, metadata !5309, metadata !DIExpression()), !dbg !5314
  %call33 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0239) #17, !dbg !5348
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %call33, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5303, metadata !DIExpression()), !dbg !5314
  %cmp3.not = icmp eq ptr %call33, null, !dbg !5328
  br i1 %cmp3.not, label %for.end, label %for.body, !dbg !5331, !llvm.loop !5349

for.end:                                          ; preds = %for.body, %for.body.us, %if.end
  %matte.0.lcssa = phi i32 [ %1, %if.end ], [ %spec.select.us, %for.body.us ], [ %spec.select, %for.body ], !dbg !5314
  %height.0.lcssa = phi i64 [ %3, %if.end ], [ %8, %for.body.us ], [ %spec.select172, %for.body ], !dbg !5314
  %number_images.0.lcssa = phi i64 [ 1, %if.end ], [ %inc.us, %for.body.us ], [ %inc, %for.body ], !dbg !5314
  %width.0.lcssa = phi i64 [ %2, %if.end ], [ %spec.select171.us, %for.body.us ], [ %11, %for.body ], !dbg !5314
  %call34 = tail call ptr @CloneImage(ptr noundef %images, i64 noundef %width.0.lcssa, i64 noundef %height.0.lcssa, i32 noundef 1, ptr noundef %exception), !dbg !5362
  call void @llvm.dbg.value(metadata ptr %call34, metadata !5302, metadata !DIExpression()), !dbg !5314
  %cmp35 = icmp eq ptr %call34, null, !dbg !5363
  br i1 %cmp35, label %cleanup, label %if.end37, !dbg !5365

if.end37:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2351, metadata !DIExpression()) #17, !dbg !5366
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()) #17, !dbg !5366
  store i32 1, ptr %call34, align 8, !dbg !5369, !tbaa !1217
  %exception.i = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 58, !dbg !5370
  %call.i = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %call34, ptr noundef nonnull %exception.i) #17, !dbg !5371
  %cmp39 = icmp eq i32 %call.i, 0, !dbg !5372
  br i1 %cmp39, label %if.then40, label %if.end43, !dbg !5373

if.then40:                                        ; preds = %if.end37
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception.i) #17, !dbg !5374
  %call42 = tail call ptr @DestroyImage(ptr noundef nonnull %call34), !dbg !5376
  call void @llvm.dbg.value(metadata ptr %call42, metadata !5302, metadata !DIExpression()), !dbg !5314
  br label %cleanup, !dbg !5377

if.end43:                                         ; preds = %if.end37
  %matte44 = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 6, !dbg !5378
  store i32 %matte.0.lcssa, ptr %matte44, align 8, !dbg !5379, !tbaa !2317
  %call45 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call34), !dbg !5380
  call void @llvm.dbg.value(metadata i32 1, metadata !5305, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 0, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 0, metadata !5313, metadata !DIExpression()), !dbg !5314
  %call46 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call34, ptr noundef %exception) #17, !dbg !5381
  call void @llvm.dbg.value(metadata ptr %call46, metadata !5300, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 0, metadata !5306, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %images, metadata !5301, metadata !DIExpression()), !dbg !5314
  %cmp48250 = icmp sgt i64 %number_images.0.lcssa, 0, !dbg !5382
  br i1 %cmp48250, label %for.body49.lr.ph, label %for.end76, !dbg !5385

for.body49.lr.ph:                                 ; preds = %if.end43
  %cmp52.not = icmp eq i32 %stack, 0
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %columns7.i = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 7
  %x13.i = getelementptr inbounds %struct._RectangleInfo, ptr %top_geometry.i, i64 0, i32 2
  %x34.i = getelementptr inbounds %struct._RectangleInfo, ptr %bottom_geometry.i, i64 0, i32 2
  %rows7.i = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 8
  %y13.i = getelementptr inbounds %struct._RectangleInfo, ptr %left_geometry.i, i64 0, i32 3
  %y34.i = getelementptr inbounds %struct._RectangleInfo, ptr %right_geometry.i, i64 0, i32 3
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  br i1 %cmp52.not, label %for.body49.us, label %for.body49, !dbg !5386

for.body49.us:                                    ; preds = %for.body49.lr.ph, %if.end64.us
  %x_offset.0255.us = phi i64 [ %add68.us, %if.end64.us ], [ 0, %for.body49.lr.ph ]
  %n.0253.us = phi i64 [ %inc75.us, %if.end64.us ], [ 0, %for.body49.lr.ph ]
  %image.0251.us = phi ptr [ %call73.us, %if.end64.us ], [ %images, %for.body49.lr.ph ]
  call void @llvm.dbg.value(metadata i64 0, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %x_offset.0255.us, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %n.0253.us, metadata !5306, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %image.0251.us, metadata !5301, metadata !DIExpression()), !dbg !5314
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %geometry) #17, !dbg !5388
  %columns50.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 7, !dbg !5389
  %14 = load i64, ptr %columns50.us, align 8, !dbg !5389, !tbaa !1362
  %rows51.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 8, !dbg !5390
  %15 = load i64, ptr %rows51.us, align 8, !dbg !5390, !tbaa !1367
  %gravity.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 35, !dbg !5391
  %16 = load i32, ptr %gravity.us, align 4, !dbg !5391, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %14, i64 noundef %15, i32 noundef %16, ptr noundef nonnull %geometry) #17, !dbg !5392
  call void @llvm.dbg.value(metadata ptr %call34, metadata !5393, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata ptr %image.0251.us, metadata !5398, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata i64 %offset, metadata !5399, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata ptr %exception, metadata !5400, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %left_geometry.i) #17, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %left_geometry.i, metadata !5405, metadata !DIExpression()) #17, !dbg !5417
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %right_geometry.i) #17, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %right_geometry.i, metadata !5406, metadata !DIExpression()) #17, !dbg !5418
  %previous.i175.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 67, !dbg !5419
  %17 = load ptr, ptr %previous.i175.us, align 8, !dbg !5419, !tbaa !2252
  %cmp.i176.us = icmp eq ptr %17, null, !dbg !5421
  br i1 %cmp.i176.us, label %SmushXGap.exit.us, label %if.end.i186.us, !dbg !5422

if.end.i186.us:                                   ; preds = %for.body49.us
  call void @llvm.dbg.value(metadata ptr %image.0251.us, metadata !5404, metadata !DIExpression()) #17, !dbg !5412
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %right_geometry.i) #17, !dbg !5423
  %18 = load i64, ptr %columns50.us, align 8, !dbg !5424, !tbaa !1362
  %19 = load i64, ptr %rows51.us, align 8, !dbg !5425, !tbaa !1367
  %20 = load i32, ptr %gravity.us, align 4, !dbg !5426, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %18, i64 noundef %19, i32 noundef %20, ptr noundef nonnull %right_geometry.i) #17, !dbg !5427
  %21 = load ptr, ptr %previous.i175.us, align 8, !dbg !5428, !tbaa !2252
  call void @llvm.dbg.value(metadata ptr %21, metadata !5403, metadata !DIExpression()) #17, !dbg !5412
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %left_geometry.i) #17, !dbg !5429
  %columns2.i180.us = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 7, !dbg !5430
  %22 = load i64, ptr %columns2.i180.us, align 8, !dbg !5430, !tbaa !1362
  %rows3.i181.us = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8, !dbg !5431
  %23 = load i64, ptr %rows3.i181.us, align 8, !dbg !5431, !tbaa !1367
  %gravity4.i182.us = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 35, !dbg !5432
  %24 = load i32, ptr %gravity4.i182.us, align 4, !dbg !5432, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %22, i64 noundef %23, i32 noundef %24, ptr noundef nonnull %left_geometry.i) #17, !dbg !5433
  %25 = load i64, ptr %columns50.us, align 8, !dbg !5434, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 %25, metadata !5410, metadata !DIExpression()) #17, !dbg !5412
  %call.i183.us = call ptr @AcquireVirtualCacheView(ptr noundef %21, ptr noundef %exception) #17, !dbg !5435
  call void @llvm.dbg.value(metadata ptr %call.i183.us, metadata !5401, metadata !DIExpression()) #17, !dbg !5412
  %call6.i184.us = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image.0251.us, ptr noundef %exception) #17, !dbg !5436
  call void @llvm.dbg.value(metadata ptr %call6.i184.us, metadata !5402, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata i64 0, metadata !5409, metadata !DIExpression()) #17, !dbg !5412
  %26 = load i64, ptr %rows7.i, align 8, !dbg !5437, !tbaa !1367
  %cmp8128.i185.us = icmp sgt i64 %26, 0, !dbg !5440
  br i1 %cmp8128.i185.us, label %for.body.i189.us, label %for.end60.i228.us, !dbg !5441

for.body.i189.us:                                 ; preds = %if.end.i186.us, %for.end51.i221.us
  %gap.0132.i188.us = phi i64 [ %36, %for.end51.i221.us ], [ %25, %if.end.i186.us ]
  %y.0129.i.us = phi i64 [ %inc59.i219.us, %for.end51.i221.us ], [ 0, %if.end.i186.us ]
  call void @llvm.dbg.value(metadata i64 %gap.0132.i188.us, metadata !5410, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata i64 %y.0129.i.us, metadata !5409, metadata !DIExpression()) #17, !dbg !5412
  %27 = load i64, ptr %columns2.i180.us, align 8, !dbg !5442, !tbaa !1362
  call void @llvm.dbg.value(metadata i64 %27, metadata !5411, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !5412
  br label %for.cond10.i191.us, !dbg !5445

for.cond10.i191.us:                               ; preds = %lor.lhs.false18.i201.us, %for.body.i189.us
  %x.0.in.i.us = phi i64 [ %27, %for.body.i189.us ], [ %x.0.i.us, %lor.lhs.false18.i201.us ]
  %x.0.i.us = add nsw i64 %x.0.in.i.us, -1, !dbg !5446
  call void @llvm.dbg.value(metadata i64 %x.0.i.us, metadata !5411, metadata !DIExpression()) #17, !dbg !5412
  %cmp11.i190.us = icmp sgt i64 %x.0.in.i.us, 1, !dbg !5447
  br i1 %cmp11.i190.us, label %for.body12.i195.us, label %for.end.i204.us, !dbg !5449

for.body12.i195.us:                               ; preds = %for.cond10.i191.us
  %28 = load i64, ptr %y13.i, align 8, !dbg !5450, !tbaa !2402
  %add.i192.us = add nsw i64 %28, %y.0129.i.us, !dbg !5452
  %call14.i193.us = call ptr @GetCacheViewVirtualPixels(ptr noundef %call.i183.us, i64 noundef %x.0.i.us, i64 noundef %add.i192.us, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !5453
  call void @llvm.dbg.value(metadata ptr %call14.i193.us, metadata !5407, metadata !DIExpression()) #17, !dbg !5412
  %cmp15.i194.us = icmp eq ptr %call14.i193.us, null, !dbg !5454
  br i1 %cmp15.i194.us, label %for.end.i204.us, label %lor.lhs.false.i198.us, !dbg !5456

lor.lhs.false.i198.us:                            ; preds = %for.body12.i195.us
  %opacity.i196.us = getelementptr inbounds %struct._PixelPacket, ptr %call14.i193.us, i64 0, i32 3, !dbg !5457
  %29 = load i16, ptr %opacity.i196.us, align 2, !dbg !5457, !tbaa !2437
  %cmp16.not.i197.us = icmp eq i16 %29, -1, !dbg !5458
  br i1 %cmp16.not.i197.us, label %lor.lhs.false18.i201.us, label %for.end.i204.us, !dbg !5459

lor.lhs.false18.i201.us:                          ; preds = %lor.lhs.false.i198.us
  %30 = load i64, ptr %columns2.i180.us, align 8, !dbg !5460, !tbaa !1362
  %sub21.i199.us = sub i64 %30, %x.0.in.i.us, !dbg !5461
  %cmp22.not.i200.us = icmp ult i64 %sub21.i199.us, %gap.0132.i188.us, !dbg !5462
  br i1 %cmp22.not.i200.us, label %for.cond10.i191.us, label %for.end.i204.us, !dbg !5463, !llvm.loop !5464

for.end.i204.us:                                  ; preds = %lor.lhs.false18.i201.us, %lor.lhs.false.i198.us, %for.body12.i195.us, %for.cond10.i191.us
  %31 = load i64, ptr %columns2.i180.us, align 8, !dbg !5466, !tbaa !1362
  %sub28.i202.us = sub i64 %31, %x.0.in.i.us, !dbg !5467
  call void @llvm.dbg.value(metadata i64 %sub28.i202.us, metadata !5408, metadata !DIExpression()) #17, !dbg !5412
  call void @llvm.dbg.value(metadata i64 0, metadata !5411, metadata !DIExpression()) #17, !dbg !5412
  %32 = load i64, ptr %columns50.us, align 8, !dbg !5468, !tbaa !1362
  %cmp31124.i203.us = icmp sgt i64 %32, 0, !dbg !5471
  br i1 %cmp31124.i203.us, label %for.body33.i208.us, label %for.end51.i221.us, !dbg !5472

for.body33.i208.us:                               ; preds = %for.end.i204.us, %for.inc50.i217.us
  %x.1125.i.us = phi i64 [ %inc.i215.us, %for.inc50.i217.us ], [ 0, %for.end.i204.us ]
  call void @llvm.dbg.value(metadata i64 %x.1125.i.us, metadata !5411, metadata !DIExpression()) #17, !dbg !5412
  %33 = load i64, ptr %y34.i, align 8, !dbg !5473, !tbaa !2402
  %add35.i205.us = add nsw i64 %33, %y.0129.i.us, !dbg !5475
  %call36.i206.us = call ptr @GetCacheViewVirtualPixels(ptr noundef %call6.i184.us, i64 noundef %x.1125.i.us, i64 noundef %add35.i205.us, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !5476
  call void @llvm.dbg.value(metadata ptr %call36.i206.us, metadata !5407, metadata !DIExpression()) #17, !dbg !5412
  %cmp37.i207.us = icmp eq ptr %call36.i206.us, null, !dbg !5477
  br i1 %cmp37.i207.us, label %for.end51.i221.us, label %lor.lhs.false39.i214.us, !dbg !5479

lor.lhs.false39.i214.us:                          ; preds = %for.body33.i208.us
  %opacity40.i209.us = getelementptr inbounds %struct._PixelPacket, ptr %call36.i206.us, i64 0, i32 3, !dbg !5480
  %34 = load i16, ptr %opacity40.i209.us, align 2, !dbg !5480, !tbaa !2437
  %cmp42.not.i210.us = icmp eq i16 %34, -1, !dbg !5481
  %add45.i211.us = add nsw i64 %x.1125.i.us, %sub28.i202.us
  %cmp46.not.i212.us = icmp slt i64 %add45.i211.us, %gap.0132.i188.us
  %or.cond.i213.us = select i1 %cmp42.not.i210.us, i1 %cmp46.not.i212.us, i1 false, !dbg !5482
  br i1 %or.cond.i213.us, label %for.inc50.i217.us, label %for.end51.i221.us, !dbg !5482

for.inc50.i217.us:                                ; preds = %lor.lhs.false39.i214.us
  %inc.i215.us = add nuw nsw i64 %x.1125.i.us, 1, !dbg !5483
  call void @llvm.dbg.value(metadata i64 %inc.i215.us, metadata !5411, metadata !DIExpression()) #17, !dbg !5412
  %35 = load i64, ptr %columns50.us, align 8, !dbg !5468, !tbaa !1362
  %cmp31.i216.us = icmp slt i64 %inc.i215.us, %35, !dbg !5471
  br i1 %cmp31.i216.us, label %for.body33.i208.us, label %for.end51.i221.us, !dbg !5472, !llvm.loop !5484

for.end51.i221.us:                                ; preds = %for.body33.i208.us, %lor.lhs.false39.i214.us, %for.inc50.i217.us, %for.end.i204.us
  %x.1.lcssa.i.us = phi i64 [ 0, %for.end.i204.us ], [ %inc.i215.us, %for.inc50.i217.us ], [ %x.1125.i.us, %lor.lhs.false39.i214.us ], [ %x.1125.i.us, %for.body33.i208.us ], !dbg !5486
  %add52.i218.us = add nsw i64 %x.1.lcssa.i.us, %sub28.i202.us, !dbg !5487
  %36 = call i64 @llvm.smin.i64(i64 %add52.i218.us, i64 %gap.0132.i188.us) #17, !dbg !5489
  call void @llvm.dbg.value(metadata i64 %36, metadata !5410, metadata !DIExpression()) #17, !dbg !5412
  %inc59.i219.us = add nuw nsw i64 %y.0129.i.us, 1, !dbg !5490
  call void @llvm.dbg.value(metadata i64 %inc59.i219.us, metadata !5409, metadata !DIExpression()) #17, !dbg !5412
  %37 = load i64, ptr %rows7.i, align 8, !dbg !5437, !tbaa !1367
  %cmp8.i220.us = icmp slt i64 %inc59.i219.us, %37, !dbg !5440
  br i1 %cmp8.i220.us, label %for.body.i189.us, label %for.end60.i228.us, !dbg !5441, !llvm.loop !5491

for.end60.i228.us:                                ; preds = %for.end51.i221.us, %if.end.i186.us
  %y.0.lcssa.i.us = phi i64 [ 0, %if.end.i186.us ], [ %inc59.i219.us, %for.end51.i221.us ], !dbg !5493
  %gap.0.lcssa.i222.us = phi i64 [ %25, %if.end.i186.us ], [ %36, %for.end51.i221.us ], !dbg !5412
  %call61.i223.us = call ptr @DestroyCacheView(ptr noundef %call6.i184.us) #17, !dbg !5494
  call void @llvm.dbg.value(metadata ptr %call61.i223.us, metadata !5402, metadata !DIExpression()) #17, !dbg !5412
  %call62.i224.us = call ptr @DestroyCacheView(ptr noundef %call.i183.us) #17, !dbg !5495
  call void @llvm.dbg.value(metadata ptr %call62.i224.us, metadata !5401, metadata !DIExpression()) #17, !dbg !5412
  %38 = load i64, ptr %rows7.i, align 8, !dbg !5496, !tbaa !1367
  %cmp64.i225.us = icmp slt i64 %y.0.lcssa.i.us, %38, !dbg !5498
  %sub68.i226.us = sub nsw i64 %gap.0.lcssa.i222.us, %offset
  %spec.select123.i227.us = select i1 %cmp64.i225.us, i64 %offset, i64 %sub68.i226.us, !dbg !5499
  br label %SmushXGap.exit.us, !dbg !5499

SmushXGap.exit.us:                                ; preds = %for.end60.i228.us, %for.body49.us
  %retval.0.i229.us = phi i64 [ 0, %for.body49.us ], [ %spec.select123.i227.us, %for.end60.i228.us ], !dbg !5412
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %right_geometry.i) #17, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %left_geometry.i) #17, !dbg !5500
  call void @llvm.dbg.value(metadata !DIArgList(i64 %x_offset.0255.us, i64 %retval.0.i229.us), metadata !5312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5314
  %39 = load i64, ptr %y, align 8, !dbg !5501, !tbaa !2402
  call void @llvm.dbg.value(metadata !DIArgList(i64 0, i64 %39), metadata !5313, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5314
  %y_offset.1.us = sub nsw i64 0, %39, !dbg !5502
  %x_offset.1.us = sub nsw i64 %x_offset.0255.us, %retval.0.i229.us, !dbg !5502
  call void @llvm.dbg.value(metadata i64 %y_offset.1.us, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %x_offset.1.us, metadata !5312, metadata !DIExpression()), !dbg !5314
  %call60.us = call i32 @CompositeImage(ptr noundef nonnull %call34, i32 noundef 40, ptr noundef %image.0251.us, i64 noundef %x_offset.1.us, i64 noundef %y_offset.1.us) #17, !dbg !5503
  call void @llvm.dbg.value(metadata i32 %call60.us, metadata !5305, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %image.0251.us, metadata !2472, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !2478, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %n.0253.us, metadata !2479, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %number_images.0.lcssa, metadata !2480, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2481, metadata !DIExpression()) #17, !dbg !5507
  %progress_monitor.i.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 47, !dbg !5508
  %40 = load ptr, ptr %progress_monitor.i.us, align 8, !dbg !5508, !tbaa !1475
  %cmp.i230.us = icmp eq ptr %40, null, !dbg !5509
  br i1 %cmp.i230.us, label %SetImageProgress.exit.thread.us, label %SetImageProgress.exit.us, !dbg !5510

SetImageProgress.exit.us:                         ; preds = %SmushXGap.exit.us
  %filename.i.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 53, !dbg !5511
  %call.i231.us = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.36, ptr noundef nonnull %filename.i.us) #17, !dbg !5512
  %41 = load ptr, ptr %progress_monitor.i.us, align 8, !dbg !5513, !tbaa !1475
  %client_data.i.us = getelementptr inbounds %struct._Image, ptr %image.0251.us, i64 0, i32 48, !dbg !5514
  %42 = load ptr, ptr %client_data.i.us, align 8, !dbg !5514, !tbaa !1480
  %call4.i.us = call i32 %41(ptr noundef nonnull %message.i, i64 noundef %n.0253.us, i64 noundef %number_images.0.lcssa, ptr noundef %42) #17, !dbg !5515
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5516
  call void @llvm.dbg.value(metadata i32 %call4.i.us, metadata !5304, metadata !DIExpression()), !dbg !5314
  %cmp62.us = icmp eq i32 %call4.i.us, 0, !dbg !5517
  br i1 %cmp62.us, label %for.end76, label %if.end64.us, !dbg !5519

SetImageProgress.exit.thread.us:                  ; preds = %SmushXGap.exit.us
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5516
  call void @llvm.dbg.value(metadata i32 %call4.i.us, metadata !5304, metadata !DIExpression()), !dbg !5314
  br label %if.end64.us, !dbg !5519

if.end64.us:                                      ; preds = %SetImageProgress.exit.thread.us, %SetImageProgress.exit.us
  %43 = load i64, ptr %columns50.us, align 8, !dbg !5520, !tbaa !1362
  %add68.us = add nsw i64 %43, %x_offset.1.us, !dbg !5523
  call void @llvm.dbg.value(metadata i64 0, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %add68.us, metadata !5312, metadata !DIExpression()), !dbg !5314
  %call73.us = call ptr @GetNextImageInList(ptr noundef nonnull %image.0251.us) #17, !dbg !5524
  call void @llvm.dbg.value(metadata ptr %call73.us, metadata !5301, metadata !DIExpression()), !dbg !5314
  %inc75.us = add nuw nsw i64 %n.0253.us, 1, !dbg !5525
  call void @llvm.dbg.value(metadata i64 %inc75.us, metadata !5306, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %call60.us, metadata !5305, metadata !DIExpression()), !dbg !5314
  %exitcond276.not = icmp eq i64 %inc75.us, %number_images.0.lcssa, !dbg !5382
  br i1 %exitcond276.not, label %for.end76, label %for.body49.us, !dbg !5385, !llvm.loop !5526

for.body49:                                       ; preds = %for.body49.lr.ph, %if.end64
  %y_offset.0256 = phi i64 [ %add71, %if.end64 ], [ 0, %for.body49.lr.ph ]
  %n.0253 = phi i64 [ %inc75, %if.end64 ], [ 0, %for.body49.lr.ph ]
  %image.0251 = phi ptr [ %call73, %if.end64 ], [ %images, %for.body49.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y_offset.0256, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 0, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %n.0253, metadata !5306, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %image.0251, metadata !5301, metadata !DIExpression()), !dbg !5314
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %geometry) #17, !dbg !5388
  %columns50 = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 7, !dbg !5389
  %44 = load i64, ptr %columns50, align 8, !dbg !5389, !tbaa !1362
  %rows51 = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 8, !dbg !5390
  %45 = load i64, ptr %rows51, align 8, !dbg !5390, !tbaa !1367
  %gravity = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 35, !dbg !5391
  %46 = load i32, ptr %gravity, align 4, !dbg !5391, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %44, i64 noundef %45, i32 noundef %46, ptr noundef nonnull %geometry) #17, !dbg !5392
  %47 = load i64, ptr %x, align 8, !dbg !5528, !tbaa !2398
  call void @llvm.dbg.value(metadata !DIArgList(i64 0, i64 %47), metadata !5312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %call34, metadata !5530, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata ptr %image.0251, metadata !5533, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata i64 %offset, metadata !5534, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata ptr %exception, metadata !5535, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bottom_geometry.i) #17, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %bottom_geometry.i, metadata !5540, metadata !DIExpression()) #17, !dbg !5550
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %top_geometry.i) #17, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %top_geometry.i, metadata !5541, metadata !DIExpression()) #17, !dbg !5551
  %previous.i = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 67, !dbg !5552
  %48 = load ptr, ptr %previous.i, align 8, !dbg !5552, !tbaa !2252
  %cmp.i = icmp eq ptr %48, null, !dbg !5554
  br i1 %cmp.i, label %SmushYGap.exit, label %if.end.i, !dbg !5555

if.end.i:                                         ; preds = %for.body49
  call void @llvm.dbg.value(metadata ptr %image.0251, metadata !5538, metadata !DIExpression()) #17, !dbg !5547
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %bottom_geometry.i) #17, !dbg !5556
  %49 = load i64, ptr %columns50, align 8, !dbg !5557, !tbaa !1362
  %50 = load i64, ptr %rows51, align 8, !dbg !5558, !tbaa !1367
  %51 = load i32, ptr %gravity, align 4, !dbg !5559, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %49, i64 noundef %50, i32 noundef %51, ptr noundef nonnull %bottom_geometry.i) #17, !dbg !5560
  %52 = load ptr, ptr %previous.i, align 8, !dbg !5561, !tbaa !2252
  call void @llvm.dbg.value(metadata ptr %52, metadata !5539, metadata !DIExpression()) #17, !dbg !5547
  call void @SetGeometry(ptr noundef nonnull %call34, ptr noundef nonnull %top_geometry.i) #17, !dbg !5562
  %columns2.i = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7, !dbg !5563
  %53 = load i64, ptr %columns2.i, align 8, !dbg !5563, !tbaa !1362
  %rows3.i = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 8, !dbg !5564
  %54 = load i64, ptr %rows3.i, align 8, !dbg !5564, !tbaa !1367
  %gravity4.i = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 35, !dbg !5565
  %55 = load i32, ptr %gravity4.i, align 4, !dbg !5565, !tbaa !1860
  call void @GravityAdjustGeometry(i64 noundef %53, i64 noundef %54, i32 noundef %55, ptr noundef nonnull %top_geometry.i) #17, !dbg !5566
  %56 = load i64, ptr %rows51, align 8, !dbg !5567, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %56, metadata !5545, metadata !DIExpression()) #17, !dbg !5547
  %call.i174 = call ptr @AcquireVirtualCacheView(ptr noundef %52, ptr noundef %exception) #17, !dbg !5568
  call void @llvm.dbg.value(metadata ptr %call.i174, metadata !5537, metadata !DIExpression()) #17, !dbg !5547
  %call6.i = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image.0251, ptr noundef %exception) #17, !dbg !5569
  call void @llvm.dbg.value(metadata ptr %call6.i, metadata !5536, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata i64 0, metadata !5544, metadata !DIExpression()) #17, !dbg !5547
  %57 = load i64, ptr %columns7.i, align 8, !dbg !5570, !tbaa !1362
  %cmp8128.i = icmp sgt i64 %57, 0, !dbg !5573
  br i1 %cmp8128.i, label %for.body.i, label %for.end60.i, !dbg !5574

for.body.i:                                       ; preds = %if.end.i, %for.end51.i
  %gap.0132.i = phi i64 [ %67, %for.end51.i ], [ %56, %if.end.i ]
  %x.0129.i = phi i64 [ %inc59.i, %for.end51.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 %gap.0132.i, metadata !5545, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata i64 %x.0129.i, metadata !5544, metadata !DIExpression()) #17, !dbg !5547
  %58 = load i64, ptr %rows3.i, align 8, !dbg !5575, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %58, metadata !5546, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !5547
  br label %for.cond10.i, !dbg !5578

for.cond10.i:                                     ; preds = %lor.lhs.false18.i, %for.body.i
  %y.0.in.i = phi i64 [ %58, %for.body.i ], [ %y.0.i, %lor.lhs.false18.i ]
  %y.0.i = add nsw i64 %y.0.in.i, -1, !dbg !5579
  call void @llvm.dbg.value(metadata i64 %y.0.i, metadata !5546, metadata !DIExpression()) #17, !dbg !5547
  %cmp11.i = icmp sgt i64 %y.0.in.i, 1, !dbg !5580
  br i1 %cmp11.i, label %for.body12.i, label %for.end.i, !dbg !5582

for.body12.i:                                     ; preds = %for.cond10.i
  %59 = load i64, ptr %x13.i, align 8, !dbg !5583, !tbaa !2398
  %add.i = add nsw i64 %59, %x.0129.i, !dbg !5585
  %call14.i = call ptr @GetCacheViewVirtualPixels(ptr noundef %call.i174, i64 noundef %add.i, i64 noundef %y.0.i, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !5586
  call void @llvm.dbg.value(metadata ptr %call14.i, metadata !5542, metadata !DIExpression()) #17, !dbg !5547
  %cmp15.i = icmp eq ptr %call14.i, null, !dbg !5587
  br i1 %cmp15.i, label %for.end.i, label %lor.lhs.false.i, !dbg !5589

lor.lhs.false.i:                                  ; preds = %for.body12.i
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %call14.i, i64 0, i32 3, !dbg !5590
  %60 = load i16, ptr %opacity.i, align 2, !dbg !5590, !tbaa !2437
  %cmp16.not.i = icmp eq i16 %60, -1, !dbg !5591
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %for.end.i, !dbg !5592

lor.lhs.false18.i:                                ; preds = %lor.lhs.false.i
  %61 = load i64, ptr %rows3.i, align 8, !dbg !5593, !tbaa !1367
  %sub21.i = sub i64 %61, %y.0.in.i, !dbg !5594
  %cmp22.not.i = icmp ult i64 %sub21.i, %gap.0132.i, !dbg !5595
  br i1 %cmp22.not.i, label %for.cond10.i, label %for.end.i, !dbg !5596, !llvm.loop !5597

for.end.i:                                        ; preds = %lor.lhs.false18.i, %lor.lhs.false.i, %for.body12.i, %for.cond10.i
  %62 = load i64, ptr %rows3.i, align 8, !dbg !5599, !tbaa !1367
  %sub28.i = sub i64 %62, %y.0.in.i, !dbg !5600
  call void @llvm.dbg.value(metadata i64 %sub28.i, metadata !5543, metadata !DIExpression()) #17, !dbg !5547
  call void @llvm.dbg.value(metadata i64 0, metadata !5546, metadata !DIExpression()) #17, !dbg !5547
  %63 = load i64, ptr %rows51, align 8, !dbg !5601, !tbaa !1367
  %cmp31124.i = icmp sgt i64 %63, 0, !dbg !5604
  br i1 %cmp31124.i, label %for.body33.i, label %for.end51.i, !dbg !5605

for.body33.i:                                     ; preds = %for.end.i, %for.inc50.i
  %y.1125.i = phi i64 [ %inc.i, %for.inc50.i ], [ 0, %for.end.i ]
  call void @llvm.dbg.value(metadata i64 %y.1125.i, metadata !5546, metadata !DIExpression()) #17, !dbg !5547
  %64 = load i64, ptr %x34.i, align 8, !dbg !5606, !tbaa !2398
  %add35.i = add nsw i64 %64, %x.0129.i, !dbg !5608
  %call36.i = call ptr @GetCacheViewVirtualPixels(ptr noundef %call6.i, i64 noundef %add35.i, i64 noundef %y.1125.i, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !5609
  call void @llvm.dbg.value(metadata ptr %call36.i, metadata !5542, metadata !DIExpression()) #17, !dbg !5547
  %cmp37.i = icmp eq ptr %call36.i, null, !dbg !5610
  br i1 %cmp37.i, label %for.end51.i, label %lor.lhs.false39.i, !dbg !5612

lor.lhs.false39.i:                                ; preds = %for.body33.i
  %opacity40.i = getelementptr inbounds %struct._PixelPacket, ptr %call36.i, i64 0, i32 3, !dbg !5613
  %65 = load i16, ptr %opacity40.i, align 2, !dbg !5613, !tbaa !2437
  %cmp42.not.i = icmp eq i16 %65, -1, !dbg !5614
  %add45.i = add nsw i64 %y.1125.i, %sub28.i
  %cmp46.not.i = icmp slt i64 %add45.i, %gap.0132.i
  %or.cond.i = select i1 %cmp42.not.i, i1 %cmp46.not.i, i1 false, !dbg !5615
  br i1 %or.cond.i, label %for.inc50.i, label %for.end51.i, !dbg !5615

for.inc50.i:                                      ; preds = %lor.lhs.false39.i
  %inc.i = add nuw nsw i64 %y.1125.i, 1, !dbg !5616
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !5546, metadata !DIExpression()) #17, !dbg !5547
  %66 = load i64, ptr %rows51, align 8, !dbg !5601, !tbaa !1367
  %cmp31.i = icmp slt i64 %inc.i, %66, !dbg !5604
  br i1 %cmp31.i, label %for.body33.i, label %for.end51.i, !dbg !5605, !llvm.loop !5617

for.end51.i:                                      ; preds = %for.inc50.i, %lor.lhs.false39.i, %for.body33.i, %for.end.i
  %y.1.lcssa.i = phi i64 [ 0, %for.end.i ], [ %inc.i, %for.inc50.i ], [ %y.1125.i, %lor.lhs.false39.i ], [ %y.1125.i, %for.body33.i ], !dbg !5619
  %add52.i = add nsw i64 %y.1.lcssa.i, %sub28.i, !dbg !5620
  %67 = call i64 @llvm.smin.i64(i64 %add52.i, i64 %gap.0132.i) #17, !dbg !5622
  call void @llvm.dbg.value(metadata i64 %67, metadata !5545, metadata !DIExpression()) #17, !dbg !5547
  %inc59.i = add nuw nsw i64 %x.0129.i, 1, !dbg !5623
  call void @llvm.dbg.value(metadata i64 %inc59.i, metadata !5544, metadata !DIExpression()) #17, !dbg !5547
  %68 = load i64, ptr %columns7.i, align 8, !dbg !5570, !tbaa !1362
  %cmp8.i = icmp slt i64 %inc59.i, %68, !dbg !5573
  br i1 %cmp8.i, label %for.body.i, label %for.end60.i, !dbg !5574, !llvm.loop !5624

for.end60.i:                                      ; preds = %for.end51.i, %if.end.i
  %x.0.lcssa.i = phi i64 [ 0, %if.end.i ], [ %inc59.i, %for.end51.i ], !dbg !5626
  %gap.0.lcssa.i = phi i64 [ %56, %if.end.i ], [ %67, %for.end51.i ], !dbg !5547
  %call61.i = call ptr @DestroyCacheView(ptr noundef %call6.i) #17, !dbg !5627
  call void @llvm.dbg.value(metadata ptr %call61.i, metadata !5536, metadata !DIExpression()) #17, !dbg !5547
  %call62.i = call ptr @DestroyCacheView(ptr noundef %call.i174) #17, !dbg !5628
  call void @llvm.dbg.value(metadata ptr %call62.i, metadata !5537, metadata !DIExpression()) #17, !dbg !5547
  %69 = load i64, ptr %columns7.i, align 8, !dbg !5629, !tbaa !1362
  %cmp64.i = icmp slt i64 %x.0.lcssa.i, %69, !dbg !5631
  %sub68.i = sub nsw i64 %gap.0.lcssa.i, %offset
  %spec.select123.i = select i1 %cmp64.i, i64 %offset, i64 %sub68.i, !dbg !5632
  br label %SmushYGap.exit, !dbg !5632

SmushYGap.exit:                                   ; preds = %for.body49, %for.end60.i
  %retval.0.i = phi i64 [ 0, %for.body49 ], [ %spec.select123.i, %for.end60.i ], !dbg !5547
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %top_geometry.i) #17, !dbg !5633
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bottom_geometry.i) #17, !dbg !5633
  call void @llvm.dbg.value(metadata !DIArgList(i64 %y_offset.0256, i64 %retval.0.i), metadata !5313, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5314
  %y_offset.1 = sub nsw i64 %y_offset.0256, %retval.0.i, !dbg !5502
  %x_offset.1 = sub nsw i64 0, %47, !dbg !5502
  call void @llvm.dbg.value(metadata i64 %y_offset.1, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %x_offset.1, metadata !5312, metadata !DIExpression()), !dbg !5314
  %call60 = call i32 @CompositeImage(ptr noundef nonnull %call34, i32 noundef 40, ptr noundef %image.0251, i64 noundef %x_offset.1, i64 noundef %y_offset.1) #17, !dbg !5503
  call void @llvm.dbg.value(metadata i32 %call60, metadata !5305, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata ptr %image.0251, metadata !2472, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !2478, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %n.0253, metadata !2479, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %number_images.0.lcssa, metadata !2480, metadata !DIExpression()) #17, !dbg !5504
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2481, metadata !DIExpression()) #17, !dbg !5507
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 47, !dbg !5508
  %70 = load ptr, ptr %progress_monitor.i, align 8, !dbg !5508, !tbaa !1475
  %cmp.i230 = icmp eq ptr %70, null, !dbg !5509
  br i1 %cmp.i230, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !5510

SetImageProgress.exit.thread:                     ; preds = %SmushYGap.exit
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5516
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !5304, metadata !DIExpression()), !dbg !5314
  br label %if.end64, !dbg !5519

SetImageProgress.exit:                            ; preds = %SmushYGap.exit
  %filename.i = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 53, !dbg !5511
  %call.i231 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.36, ptr noundef nonnull %filename.i) #17, !dbg !5512
  %71 = load ptr, ptr %progress_monitor.i, align 8, !dbg !5513, !tbaa !1475
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image.0251, i64 0, i32 48, !dbg !5514
  %72 = load ptr, ptr %client_data.i, align 8, !dbg !5514, !tbaa !1480
  %call4.i = call i32 %71(ptr noundef nonnull %message.i, i64 noundef %n.0253, i64 noundef %number_images.0.lcssa, ptr noundef %72) #17, !dbg !5515
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5516
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !5304, metadata !DIExpression()), !dbg !5314
  %cmp62 = icmp eq i32 %call4.i, 0, !dbg !5517
  br i1 %cmp62, label %for.end76, label %if.end64, !dbg !5519

if.end64:                                         ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !5312, metadata !DIExpression()), !dbg !5314
  %73 = load i64, ptr %rows51, align 8, !dbg !5634, !tbaa !1367
  %add71 = add nsw i64 %73, %y_offset.1, !dbg !5636
  call void @llvm.dbg.value(metadata i64 %add71, metadata !5313, metadata !DIExpression()), !dbg !5314
  %call73 = call ptr @GetNextImageInList(ptr noundef nonnull %image.0251) #17, !dbg !5524
  call void @llvm.dbg.value(metadata ptr %call73, metadata !5301, metadata !DIExpression()), !dbg !5314
  %inc75 = add nuw nsw i64 %n.0253, 1, !dbg !5525
  call void @llvm.dbg.value(metadata i64 %inc75, metadata !5306, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %call60, metadata !5305, metadata !DIExpression()), !dbg !5314
  %exitcond.not = icmp eq i64 %inc75, %number_images.0.lcssa, !dbg !5382
  br i1 %exitcond.not, label %for.end76, label %for.body49, !dbg !5385, !llvm.loop !5526

for.end76:                                        ; preds = %if.end64, %SetImageProgress.exit, %if.end64.us, %SetImageProgress.exit.us, %if.end43
  %status.1 = phi i32 [ 1, %if.end43 ], [ %call60.us, %SetImageProgress.exit.us ], [ %call60.us, %if.end64.us ], [ %call60, %SetImageProgress.exit ], [ %call60, %if.end64 ], !dbg !5314
  %x_offset.3 = phi i64 [ 0, %if.end43 ], [ %add68.us, %if.end64.us ], [ %x_offset.1.us, %SetImageProgress.exit.us ], [ 0, %if.end64 ], [ %x_offset.1, %SetImageProgress.exit ], !dbg !5314
  %y_offset.3 = phi i64 [ 0, %if.end43 ], [ 0, %if.end64.us ], [ %y_offset.1.us, %SetImageProgress.exit.us ], [ %add71, %if.end64 ], [ %y_offset.1, %SetImageProgress.exit ], !dbg !5314
  call void @llvm.dbg.value(metadata i64 %y_offset.3, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i64 %x_offset.3, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !5305, metadata !DIExpression()), !dbg !5314
  %cmp77 = icmp eq i32 %stack, 0, !dbg !5637
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !5639

if.then78:                                        ; preds = %for.end76
  %columns79 = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 7, !dbg !5640
  store i64 %x_offset.3, ptr %columns79, align 8, !dbg !5641, !tbaa !1362
  br label %if.end82, !dbg !5642

if.else80:                                        ; preds = %for.end76
  %rows81 = getelementptr inbounds %struct._Image, ptr %call34, i64 0, i32 8, !dbg !5643
  store i64 %y_offset.3, ptr %rows81, align 8, !dbg !5644, !tbaa !1367
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  %call83 = call ptr @DestroyCacheView(ptr noundef %call46) #17, !dbg !5645
  call void @llvm.dbg.value(metadata ptr %call83, metadata !5300, metadata !DIExpression()), !dbg !5314
  %cmp84 = icmp eq i32 %status.1, 0, !dbg !5646
  br i1 %cmp84, label %if.then85, label %cleanup, !dbg !5648

if.then85:                                        ; preds = %if.end82
  %call86 = call ptr @DestroyImage(ptr noundef nonnull %call34), !dbg !5649
  call void @llvm.dbg.value(metadata ptr %call86, metadata !5302, metadata !DIExpression()), !dbg !5314
  br label %cleanup, !dbg !5650

cleanup:                                          ; preds = %if.end82, %if.then85, %for.end, %if.then40
  %retval.0 = phi ptr [ null, %if.then40 ], [ null, %for.end ], [ %call86, %if.then85 ], [ %call34, %if.end82 ], !dbg !5314
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #17, !dbg !5651
  ret ptr %retval.0, !dbg !5651
}

declare !dbg !5652 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @StripImage(ptr noundef %image) local_unnamed_addr #0 !dbg !5656 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !5658, metadata !DIExpression()), !dbg !5660
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !5661
  %0 = load i32, ptr %debug, align 8, !dbg !5661, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5663
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5664

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3360, ptr noundef nonnull @.str.2) #17, !dbg !5665
  br label %if.end, !dbg !5666

if.end:                                           ; preds = %if.then, %entry
  tail call void @DestroyImageProfiles(ptr noundef nonnull %image) #17, !dbg !5667
  %call1 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.37) #17, !dbg !5668
  %call2 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.38) #17, !dbg !5669
  %call3 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.39) #17, !dbg !5670
  %call4 = tail call i32 @SetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #17, !dbg !5671
  call void @llvm.dbg.value(metadata i32 %call4, metadata !5659, metadata !DIExpression()), !dbg !5660
  ret i32 %call4, !dbg !5672
}

declare !dbg !5673 i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5674 i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImagesSettings(ptr noundef %image_info, ptr noundef %images) local_unnamed_addr #0 !dbg !5677 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !5681, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.value(metadata ptr %images, metadata !5682, metadata !DIExpression()), !dbg !5684
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !5685
  %0 = load i32, ptr %debug, align 8, !dbg !5685, !tbaa !1323
  %cmp.not = icmp eq i32 %0, 0, !dbg !5687
  br i1 %cmp.not, label %for.body.preheader, label %if.then, !dbg !5688

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !5689
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3514, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename) #17, !dbg !5690
  br label %for.body.preheader, !dbg !5691

for.body.preheader:                               ; preds = %entry, %if.then
  br label %for.body, !dbg !5692

for.body:                                         ; preds = %for.body.preheader, %for.body
  %image.011 = phi ptr [ %call3, %for.body ], [ %images, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %image.011, metadata !5683, metadata !DIExpression()), !dbg !5684
  %call2 = tail call i32 @SyncImageSettings(ptr noundef %image_info, ptr noundef nonnull %image.011), !dbg !5694
  %call3 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image.011) #17, !dbg !5696
  call void @llvm.dbg.value(metadata ptr %call3, metadata !5683, metadata !DIExpression()), !dbg !5684
  %cmp1.not = icmp eq ptr %call3, null, !dbg !5697
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !5692, !llvm.loop !5698

for.end:                                          ; preds = %for.body
  %call4 = tail call i32 @DeleteImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.43) #17, !dbg !5700
  ret i32 1, !dbg !5701
}

declare !dbg !5702 i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !5705 void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !5708 ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !5711 float @DecodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !5712 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { hot nounwind }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1163, !1164, !1165, !1166, !1167, !1168}
!llvm.ident = !{!1169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BackgroundColor", scope: !2, file: !1075, line: 106, type: !1076, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !633, globals: !1072, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/image.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "342b093e9a737344b5735c8778224656")
!4 = !{!5, !12, !49, !74, !86, !90, !98, !103, !138, !148, !154, !169, !240, !248, !254, !327, !344, !358, !370, !403, !425, !446, !471, !499, !575, !590, !596, !608, !623}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UndefinedClass", value: 0)
!10 = !DIEnumerator(name: "DirectClass", value: 1)
!11 = !DIEnumerator(name: "PseudoClass", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 25, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!15 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!16 = !DIEnumerator(name: "RGBColorspace", value: 1)
!17 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!18 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!19 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!20 = !DIEnumerator(name: "LabColorspace", value: 5)
!21 = !DIEnumerator(name: "XYZColorspace", value: 6)
!22 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!23 = !DIEnumerator(name: "YCCColorspace", value: 8)
!24 = !DIEnumerator(name: "YIQColorspace", value: 9)
!25 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!26 = !DIEnumerator(name: "YUVColorspace", value: 11)
!27 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!28 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!29 = !DIEnumerator(name: "HSBColorspace", value: 14)
!30 = !DIEnumerator(name: "HSLColorspace", value: 15)
!31 = !DIEnumerator(name: "HWBColorspace", value: 16)
!32 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!33 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!34 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!35 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!36 = !DIEnumerator(name: "LogColorspace", value: 21)
!37 = !DIEnumerator(name: "CMYColorspace", value: 22)
!38 = !DIEnumerator(name: "LuvColorspace", value: 23)
!39 = !DIEnumerator(name: "HCLColorspace", value: 24)
!40 = !DIEnumerator(name: "LCHColorspace", value: 25)
!41 = !DIEnumerator(name: "LMSColorspace", value: 26)
!42 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!43 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!44 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!45 = !DIEnumerator(name: "HSIColorspace", value: 30)
!46 = !DIEnumerator(name: "HSVColorspace", value: 31)
!47 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!48 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 25, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!52 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!53 = !DIEnumerator(name: "NoCompression", value: 1)
!54 = !DIEnumerator(name: "BZipCompression", value: 2)
!55 = !DIEnumerator(name: "DXT1Compression", value: 3)
!56 = !DIEnumerator(name: "DXT3Compression", value: 4)
!57 = !DIEnumerator(name: "DXT5Compression", value: 5)
!58 = !DIEnumerator(name: "FaxCompression", value: 6)
!59 = !DIEnumerator(name: "Group4Compression", value: 7)
!60 = !DIEnumerator(name: "JPEGCompression", value: 8)
!61 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!62 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!63 = !DIEnumerator(name: "LZWCompression", value: 11)
!64 = !DIEnumerator(name: "RLECompression", value: 12)
!65 = !DIEnumerator(name: "ZipCompression", value: 13)
!66 = !DIEnumerator(name: "ZipSCompression", value: 14)
!67 = !DIEnumerator(name: "PizCompression", value: 15)
!68 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!69 = !DIEnumerator(name: "B44Compression", value: 17)
!70 = !DIEnumerator(name: "B44ACompression", value: 18)
!71 = !DIEnumerator(name: "LZMACompression", value: 19)
!72 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!73 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 75, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85}
!77 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!78 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!79 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!80 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!81 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!82 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!83 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!84 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!85 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "MagickFalse", value: 0)
!89 = !DIEnumerator(name: "MagickTrue", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 42, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!94 = !DIEnumerator(name: "SaturationIntent", value: 1)
!95 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!96 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!97 = !DIEnumerator(name: "RelativeIntent", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 88, baseType: !7, size: 32, elements: !99)
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
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 63, baseType: !7, size: 32, elements: !139)
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
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 47, baseType: !7, size: 32, elements: !345)
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
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 27, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!373 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!374 = !DIEnumerator(name: "RotatePreview", value: 1)
!375 = !DIEnumerator(name: "ShearPreview", value: 2)
!376 = !DIEnumerator(name: "RollPreview", value: 3)
!377 = !DIEnumerator(name: "HuePreview", value: 4)
!378 = !DIEnumerator(name: "SaturationPreview", value: 5)
!379 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!380 = !DIEnumerator(name: "GammaPreview", value: 7)
!381 = !DIEnumerator(name: "SpiffPreview", value: 8)
!382 = !DIEnumerator(name: "DullPreview", value: 9)
!383 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!384 = !DIEnumerator(name: "QuantizePreview", value: 11)
!385 = !DIEnumerator(name: "DespecklePreview", value: 12)
!386 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!387 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!388 = !DIEnumerator(name: "SharpenPreview", value: 15)
!389 = !DIEnumerator(name: "BlurPreview", value: 16)
!390 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!391 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!392 = !DIEnumerator(name: "SpreadPreview", value: 19)
!393 = !DIEnumerator(name: "SolarizePreview", value: 20)
!394 = !DIEnumerator(name: "ShadePreview", value: 21)
!395 = !DIEnumerator(name: "RaisePreview", value: 22)
!396 = !DIEnumerator(name: "SegmentPreview", value: 23)
!397 = !DIEnumerator(name: "SwirlPreview", value: 24)
!398 = !DIEnumerator(name: "ImplodePreview", value: 25)
!399 = !DIEnumerator(name: "WavePreview", value: 26)
!400 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!401 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!402 = !DIEnumerator(name: "JPEGPreview", value: 29)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!405 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!406 = !DIEnumerator(name: "RedChannel", value: 1)
!407 = !DIEnumerator(name: "GrayChannel", value: 1)
!408 = !DIEnumerator(name: "CyanChannel", value: 1)
!409 = !DIEnumerator(name: "GreenChannel", value: 2)
!410 = !DIEnumerator(name: "MagentaChannel", value: 2)
!411 = !DIEnumerator(name: "BlueChannel", value: 4)
!412 = !DIEnumerator(name: "YellowChannel", value: 4)
!413 = !DIEnumerator(name: "AlphaChannel", value: 8)
!414 = !DIEnumerator(name: "OpacityChannel", value: 8)
!415 = !DIEnumerator(name: "MatteChannel", value: 8)
!416 = !DIEnumerator(name: "BlackChannel", value: 32)
!417 = !DIEnumerator(name: "IndexChannel", value: 32)
!418 = !DIEnumerator(name: "CompositeChannels", value: 47)
!419 = !DIEnumerator(name: "AllChannels", value: 134217727)
!420 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!421 = !DIEnumerator(name: "RGBChannels", value: 128)
!422 = !DIEnumerator(name: "GrayChannels", value: 128)
!423 = !DIEnumerator(name: "SyncChannels", value: 256)
!424 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !426, line: 27, baseType: !7, size: 32, elements: !427)
!426 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!428 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!429 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!430 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!431 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!432 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!433 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!434 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!435 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!436 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!437 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!438 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!439 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!440 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!441 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!442 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!443 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!444 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!445 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 34, baseType: !7, size: 32, elements: !448)
!447 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!449 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!450 = !DIEnumerator(name: "NoEvents", value: 0)
!451 = !DIEnumerator(name: "TraceEvent", value: 1)
!452 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!453 = !DIEnumerator(name: "BlobEvent", value: 4)
!454 = !DIEnumerator(name: "CacheEvent", value: 8)
!455 = !DIEnumerator(name: "CoderEvent", value: 16)
!456 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!457 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!458 = !DIEnumerator(name: "DrawEvent", value: 128)
!459 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!460 = !DIEnumerator(name: "ImageEvent", value: 512)
!461 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!462 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!463 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!464 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!465 = !DIEnumerator(name: "TransformEvent", value: 16384)
!466 = !DIEnumerator(name: "UserEvent", value: 36864)
!467 = !DIEnumerator(name: "WandEvent", value: 65536)
!468 = !DIEnumerator(name: "X11Event", value: 131072)
!469 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!470 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 25, baseType: !7, size: 32, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!473 = !DIEnumerator(name: "NoValue", value: 0)
!474 = !DIEnumerator(name: "XValue", value: 1)
!475 = !DIEnumerator(name: "XiValue", value: 1)
!476 = !DIEnumerator(name: "YValue", value: 2)
!477 = !DIEnumerator(name: "PsiValue", value: 2)
!478 = !DIEnumerator(name: "WidthValue", value: 4)
!479 = !DIEnumerator(name: "RhoValue", value: 4)
!480 = !DIEnumerator(name: "HeightValue", value: 8)
!481 = !DIEnumerator(name: "SigmaValue", value: 8)
!482 = !DIEnumerator(name: "ChiValue", value: 16)
!483 = !DIEnumerator(name: "XiNegative", value: 32)
!484 = !DIEnumerator(name: "XNegative", value: 32)
!485 = !DIEnumerator(name: "PsiNegative", value: 64)
!486 = !DIEnumerator(name: "YNegative", value: 64)
!487 = !DIEnumerator(name: "ChiNegative", value: 128)
!488 = !DIEnumerator(name: "PercentValue", value: 4096)
!489 = !DIEnumerator(name: "AspectValue", value: 8192)
!490 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!491 = !DIEnumerator(name: "LessValue", value: 16384)
!492 = !DIEnumerator(name: "GreaterValue", value: 32768)
!493 = !DIEnumerator(name: "MinimumValue", value: 65536)
!494 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!495 = !DIEnumerator(name: "AreaValue", value: 131072)
!496 = !DIEnumerator(name: "DecimalValue", value: 262144)
!497 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!498 = !DIEnumerator(name: "AllValues", value: 2147483647)
!499 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !500, line: 25, baseType: !501, size: 32, elements: !502)
!500 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!501 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!503 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!504 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!505 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!506 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!507 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!508 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!509 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!510 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!511 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!512 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!513 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!514 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!515 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!516 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!517 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!518 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!519 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!520 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!521 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!522 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!523 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!524 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!525 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!526 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!527 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!528 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!529 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!530 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!531 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!532 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!533 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!534 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!535 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!536 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!537 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!538 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!539 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!540 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!541 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!542 = !DIEnumerator(name: "MagickListOptions", value: 38)
!543 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!544 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!545 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!546 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!547 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!548 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!549 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!550 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!551 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!552 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!553 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!554 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!555 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!556 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!557 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!558 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!559 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!560 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!561 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!562 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!563 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!564 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!565 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!566 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!567 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!568 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!569 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!570 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!571 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!572 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!573 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!574 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 30, baseType: !7, size: 32, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!577 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!578 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!579 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!580 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!581 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!582 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!583 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!584 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!585 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!586 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!587 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!588 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!589 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !591, line: 28, baseType: !7, size: 32, elements: !592)
!591 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!592 = !{!593, !594, !595}
!593 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!594 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!595 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!596 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !597, line: 25, baseType: !7, size: 32, elements: !598)
!597 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607}
!599 = !DIEnumerator(name: "UndefinedPath", value: 0)
!600 = !DIEnumerator(name: "MagickPath", value: 1)
!601 = !DIEnumerator(name: "RootPath", value: 2)
!602 = !DIEnumerator(name: "HeadPath", value: 3)
!603 = !DIEnumerator(name: "TailPath", value: 4)
!604 = !DIEnumerator(name: "BasePath", value: 5)
!605 = !DIEnumerator(name: "ExtensionPath", value: 6)
!606 = !DIEnumerator(name: "SubimagePath", value: 7)
!607 = !DIEnumerator(name: "CanonicalPath", value: 8)
!608 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !609, line: 46, baseType: !7, size: 32, elements: !610)
!609 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!611 = !DIEnumerator(name: "_ISupper", value: 256)
!612 = !DIEnumerator(name: "_ISlower", value: 512)
!613 = !DIEnumerator(name: "_ISalpha", value: 1024)
!614 = !DIEnumerator(name: "_ISdigit", value: 2048)
!615 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!616 = !DIEnumerator(name: "_ISspace", value: 8192)
!617 = !DIEnumerator(name: "_ISprint", value: 16384)
!618 = !DIEnumerator(name: "_ISgraph", value: 32768)
!619 = !DIEnumerator(name: "_ISblank", value: 1)
!620 = !DIEnumerator(name: "_IScntrl", value: 2)
!621 = !DIEnumerator(name: "_ISpunct", value: 4)
!622 = !DIEnumerator(name: "_ISalnum", value: 8)
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !624, line: 35, baseType: !7, size: 32, elements: !625)
!624 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!625 = !{!626, !627, !628, !629, !630, !631, !632}
!626 = !DIEnumerator(name: "UndefinedBlobMode", value: 0)
!627 = !DIEnumerator(name: "ReadBlobMode", value: 1)
!628 = !DIEnumerator(name: "ReadBinaryBlobMode", value: 2)
!629 = !DIEnumerator(name: "WriteBlobMode", value: 3)
!630 = !DIEnumerator(name: "WriteBinaryBlobMode", value: 4)
!631 = !DIEnumerator(name: "AppendBlobMode", value: 5)
!632 = !DIEnumerator(name: "AppendBinaryBlobMode", value: 6)
!633 = !{!634, !635, !690, !501, !784, !855, !856, !918, !694, !768, !646, !699, !730, !771, !988, !658, !663, !990, !991, !992, !672, !994, !780, !807, !912, !824, !664, !1003, !1051, !651, !728, !644, !724, !720, !726, !853, !688, !722, !835, !649, !843, !692, !763, !1069, !1071}
!634 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !75, line: 150, size: 105920, elements: !638)
!638 = !{!639, !641, !643, !645, !648, !650, !652, !653, !654, !655, !656, !657, !668, !669, !670, !671, !673, !687, !689, !691, !693, !696, !697, !698, !704, !705, !706, !714, !715, !716, !717, !718, !719, !721, !723, !725, !727, !729, !731, !733, !734, !735, !736, !737, !738, !739, !747, !762, !776, !777, !778, !779, !783, !787, !791, !792, !793, !794, !795, !812, !813, !815, !816, !826, !827, !829, !830, !831, !832, !833, !834, !836, !837, !838, !839, !840, !841, !842, !844, !845, !846, !847, !848, !852, !854}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !637, file: !75, line: 153, baseType: !640, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !5)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !637, file: !75, line: 156, baseType: !642, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !13, line: 61, baseType: !12)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !637, file: !75, line: 159, baseType: !644, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !50, line: 49, baseType: !49)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !637, file: !75, line: 162, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !647, line: 46, baseType: !634)
!647 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !637, file: !75, line: 165, baseType: !649, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !75, line: 86, baseType: !74)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !637, file: !75, line: 168, baseType: !651, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !86)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !637, file: !75, line: 169, baseType: !651, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !637, file: !75, line: 172, baseType: !646, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !637, file: !75, line: 173, baseType: !646, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !637, file: !75, line: 174, baseType: !646, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !637, file: !75, line: 175, baseType: !646, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !637, file: !75, line: 178, baseType: !658, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !328, line: 148, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !328, line: 131, size: 64, elements: !661)
!661 = !{!662, !665, !666, !667}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !660, file: !328, line: 143, baseType: !663, size: 16)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !664)
!664 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !660, file: !328, line: 144, baseType: !663, size: 16, offset: 16)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !660, file: !328, line: 145, baseType: !663, size: 16, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !660, file: !328, line: 146, baseType: !663, size: 16, offset: 48)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !637, file: !75, line: 179, baseType: !659, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !637, file: !75, line: 180, baseType: !659, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !637, file: !75, line: 181, baseType: !659, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !637, file: !75, line: 184, baseType: !672, size: 64, offset: 832)
!672 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !637, file: !75, line: 187, baseType: !674, size: 768, offset: 896)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !75, line: 128, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !75, line: 121, size: 768, elements: !676)
!676 = !{!677, !684, !685, !686}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !675, file: !75, line: 124, baseType: !678, size: 192)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !75, line: 101, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !75, line: 95, size: 192, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !679, file: !75, line: 98, baseType: !672, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !679, file: !75, line: 99, baseType: !672, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !679, file: !75, line: 100, baseType: !672, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !675, file: !75, line: 125, baseType: !678, size: 192, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !675, file: !75, line: 126, baseType: !678, size: 192, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !675, file: !75, line: 127, baseType: !678, size: 192, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !637, file: !75, line: 190, baseType: !688, size: 32, offset: 1664)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !91, line: 49, baseType: !90)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !637, file: !75, line: 193, baseType: !690, size: 64, offset: 1728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !637, file: !75, line: 196, baseType: !692, size: 32, offset: 1792)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !75, line: 93, baseType: !98)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !637, file: !75, line: 199, baseType: !694, size: 64, offset: 1856)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !637, file: !75, line: 200, baseType: !694, size: 64, offset: 1920)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !637, file: !75, line: 201, baseType: !694, size: 64, offset: 1984)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !637, file: !75, line: 204, baseType: !699, size: 64, offset: 2048)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !700, line: 77, baseType: !701)
!700 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !702, line: 193, baseType: !703)
!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!703 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !637, file: !75, line: 207, baseType: !672, size: 64, offset: 2112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !637, file: !75, line: 208, baseType: !672, size: 64, offset: 2176)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !637, file: !75, line: 211, baseType: !707, size: 256, offset: 2240)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !155, line: 130, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !155, line: 121, size: 256, elements: !709)
!709 = !{!710, !711, !712, !713}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !708, file: !155, line: 124, baseType: !646, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !708, file: !155, line: 125, baseType: !646, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !708, file: !155, line: 128, baseType: !699, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !708, file: !155, line: 129, baseType: !699, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !637, file: !75, line: 212, baseType: !707, size: 256, offset: 2496)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !637, file: !75, line: 213, baseType: !707, size: 256, offset: 2752)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !637, file: !75, line: 216, baseType: !672, size: 64, offset: 3008)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !637, file: !75, line: 217, baseType: !672, size: 64, offset: 3072)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !637, file: !75, line: 218, baseType: !672, size: 64, offset: 3136)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !637, file: !75, line: 221, baseType: !720, size: 32, offset: 3200)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !104, line: 66, baseType: !103)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !637, file: !75, line: 224, baseType: !722, size: 32, offset: 3232)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !75, line: 73, baseType: !138)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !637, file: !75, line: 227, baseType: !724, size: 32, offset: 3264)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !149, line: 35, baseType: !148)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !637, file: !75, line: 230, baseType: !726, size: 32, offset: 3296)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !155, line: 91, baseType: !154)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !637, file: !75, line: 233, baseType: !728, size: 32, offset: 3328)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !170, line: 99, baseType: !169)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !637, file: !75, line: 236, baseType: !730, size: 32, offset: 3360)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !241, line: 32, baseType: !240)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !637, file: !75, line: 239, baseType: !732, size: 64, offset: 3392)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !637, file: !75, line: 242, baseType: !646, size: 64, offset: 3456)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !637, file: !75, line: 243, baseType: !646, size: 64, offset: 3520)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !637, file: !75, line: 246, baseType: !699, size: 64, offset: 3584)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !637, file: !75, line: 249, baseType: !646, size: 64, offset: 3648)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !637, file: !75, line: 250, baseType: !646, size: 64, offset: 3712)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !637, file: !75, line: 253, baseType: !699, size: 64, offset: 3776)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !637, file: !75, line: 256, baseType: !740, size: 192, offset: 3840)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !741, line: 68, baseType: !742)
!741 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !741, line: 62, size: 192, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !742, file: !741, line: 65, baseType: !672, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !742, file: !741, line: 66, baseType: !672, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !742, file: !741, line: 67, baseType: !672, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !637, file: !75, line: 259, baseType: !748, size: 512, offset: 4032)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !249, line: 51, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !249, line: 40, size: 512, elements: !750)
!750 = !{!751, !758, !759, !761}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !749, file: !249, line: 43, baseType: !752, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !249, line: 38, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !249, line: 32, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !753, file: !249, line: 35, baseType: !672, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !753, file: !249, line: 36, baseType: !672, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !753, file: !249, line: 37, baseType: !672, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !749, file: !249, line: 44, baseType: !752, size: 192, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !749, file: !249, line: 47, baseType: !760, size: 32, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !249, line: 30, baseType: !248)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !749, file: !249, line: 50, baseType: !646, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !637, file: !75, line: 262, baseType: !763, size: 64, offset: 4544)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !764, line: 26, baseType: !765)
!764 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!651, !768, !770, !773, !690}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !772)
!772 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !775)
!775 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !637, file: !75, line: 265, baseType: !690, size: 64, offset: 4608)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !637, file: !75, line: 266, baseType: !690, size: 64, offset: 4672)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !637, file: !75, line: 267, baseType: !690, size: 64, offset: 4736)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !637, file: !75, line: 270, baseType: !780, size: 64, offset: 4800)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !50, line: 52, baseType: !782)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !50, line: 51, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !637, file: !75, line: 273, baseType: !784, size: 64, offset: 4864)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !786)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !637, file: !75, line: 276, baseType: !788, size: 32768, offset: 4928)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 32768, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 4096)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !637, file: !75, line: 277, baseType: !788, size: 32768, offset: 37696)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !637, file: !75, line: 278, baseType: !788, size: 32768, offset: 70464)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !637, file: !75, line: 281, baseType: !646, size: 64, offset: 103232)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !637, file: !75, line: 282, baseType: !646, size: 64, offset: 103296)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !637, file: !75, line: 285, baseType: !796, size: 448, offset: 103360)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !255, line: 102, size: 448, elements: !798)
!798 = !{!799, !801, !802, !803, !804, !805, !806, !811}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !797, file: !255, line: 105, baseType: !800, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !255, line: 100, baseType: !254)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !797, file: !255, line: 108, baseType: !501, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !797, file: !255, line: 111, baseType: !694, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !797, file: !255, line: 112, baseType: !694, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !797, file: !255, line: 115, baseType: !690, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !797, file: !255, line: 118, baseType: !651, size: 32, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !797, file: !255, line: 121, baseType: !807, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !809, line: 26, baseType: !810)
!809 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !809, line: 25, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !797, file: !255, line: 124, baseType: !646, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !637, file: !75, line: 288, baseType: !651, size: 32, offset: 103808)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !75, line: 291, baseType: !814, size: 64, offset: 103872)
!814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !699)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !637, file: !75, line: 294, baseType: !807, size: 64, offset: 103936)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !637, file: !75, line: 297, baseType: !817, size: 256, offset: 104000)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !91, line: 40, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !91, line: 27, size: 256, elements: !819)
!819 = !{!820, !821, !822, !825}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !818, file: !91, line: 30, baseType: !694, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !818, file: !91, line: 33, baseType: !646, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !818, file: !91, line: 36, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !818, file: !91, line: 39, baseType: !646, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !637, file: !75, line: 298, baseType: !817, size: 256, offset: 104256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !637, file: !75, line: 299, baseType: !828, size: 64, offset: 104512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !637, file: !75, line: 302, baseType: !646, size: 64, offset: 104576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !637, file: !75, line: 305, baseType: !646, size: 64, offset: 104640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !637, file: !75, line: 308, baseType: !732, size: 64, offset: 104704)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !637, file: !75, line: 309, baseType: !732, size: 64, offset: 104768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !75, line: 310, baseType: !732, size: 64, offset: 104832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !637, file: !75, line: 313, baseType: !835, size: 32, offset: 104896)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !328, line: 47, baseType: !327)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !637, file: !75, line: 316, baseType: !651, size: 32, offset: 104928)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !637, file: !75, line: 319, baseType: !659, size: 64, offset: 104960)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !637, file: !75, line: 322, baseType: !732, size: 64, offset: 105024)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !637, file: !75, line: 325, baseType: !707, size: 256, offset: 105088)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !637, file: !75, line: 328, baseType: !690, size: 64, offset: 105344)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !637, file: !75, line: 329, baseType: !690, size: 64, offset: 105408)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !75, line: 332, baseType: !843, size: 32, offset: 105472)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !75, line: 61, baseType: !344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !637, file: !75, line: 335, baseType: !651, size: 32, offset: 105504)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !637, file: !75, line: 338, baseType: !774, size: 64, offset: 105536)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !637, file: !75, line: 341, baseType: !651, size: 32, offset: 105600)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !637, file: !75, line: 344, baseType: !646, size: 64, offset: 105664)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !637, file: !75, line: 347, baseType: !849, size: 64, offset: 105728)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !850, line: 7, baseType: !851)
!850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !702, line: 160, baseType: !703)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !637, file: !75, line: 350, baseType: !853, size: 32, offset: 105792)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !328, line: 79, baseType: !358)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !637, file: !75, line: 353, baseType: !646, size: 64, offset: 105856)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !75, line: 356, size: 134336, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !894, !895, !896, !897, !898, !899, !901, !902, !903, !904, !905, !906, !917, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !985, !986, !987}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !858, file: !75, line: 359, baseType: !644, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !858, file: !75, line: 362, baseType: !649, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !858, file: !75, line: 365, baseType: !651, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !858, file: !75, line: 366, baseType: !651, size: 32, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !858, file: !75, line: 367, baseType: !651, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !858, file: !75, line: 368, baseType: !651, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !858, file: !75, line: 371, baseType: !694, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !858, file: !75, line: 372, baseType: !694, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !858, file: !75, line: 373, baseType: !694, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !858, file: !75, line: 374, baseType: !694, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !858, file: !75, line: 377, baseType: !646, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !858, file: !75, line: 378, baseType: !646, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !858, file: !75, line: 379, baseType: !646, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !858, file: !75, line: 382, baseType: !722, size: 32, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !858, file: !75, line: 385, baseType: !724, size: 32, offset: 672)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !858, file: !75, line: 388, baseType: !692, size: 32, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !858, file: !75, line: 391, baseType: !646, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !858, file: !75, line: 394, baseType: !694, size: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !858, file: !75, line: 395, baseType: !694, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !858, file: !75, line: 396, baseType: !694, size: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !858, file: !75, line: 397, baseType: !694, size: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !858, file: !75, line: 398, baseType: !694, size: 64, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !858, file: !75, line: 401, baseType: !672, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !858, file: !75, line: 402, baseType: !672, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !858, file: !75, line: 405, baseType: !659, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !858, file: !75, line: 406, baseType: !659, size: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !858, file: !75, line: 407, baseType: !659, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !858, file: !75, line: 410, baseType: !651, size: 32, offset: 1472)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !858, file: !75, line: 411, baseType: !651, size: 32, offset: 1504)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !858, file: !75, line: 414, baseType: !646, size: 64, offset: 1536)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !858, file: !75, line: 417, baseType: !642, size: 32, offset: 1600)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !75, line: 420, baseType: !843, size: 32, offset: 1632)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !858, file: !75, line: 423, baseType: !893, size: 32, offset: 1664)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !371, line: 59, baseType: !370)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !858, file: !75, line: 426, baseType: !699, size: 64, offset: 1728)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !858, file: !75, line: 429, baseType: !651, size: 32, offset: 1792)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !858, file: !75, line: 430, baseType: !651, size: 32, offset: 1824)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !858, file: !75, line: 433, baseType: !694, size: 64, offset: 1856)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !858, file: !75, line: 434, baseType: !694, size: 64, offset: 1920)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !858, file: !75, line: 437, baseType: !900, size: 32, offset: 1984)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !403)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !858, file: !75, line: 440, baseType: !635, size: 64, offset: 2048)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !858, file: !75, line: 443, baseType: !690, size: 64, offset: 2112)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !858, file: !75, line: 446, baseType: !763, size: 64, offset: 2176)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !858, file: !75, line: 449, baseType: !690, size: 64, offset: 2240)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !858, file: !75, line: 450, baseType: !690, size: 64, offset: 2304)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !858, file: !75, line: 453, baseType: !907, size: 64, offset: 2368)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !908, line: 26, baseType: !909)
!908 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!646, !912, !914, !916}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !858, file: !75, line: 456, baseType: !918, size: 64, offset: 2432)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !920, line: 7, baseType: !921)
!920 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !922, line: 49, size: 1728, elements: !923)
!922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !939, !941, !942, !943, !945, !946, !948, !952, !955, !957, !960, !963, !964, !965, !966, !967}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !921, file: !922, line: 51, baseType: !501, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !921, file: !922, line: 54, baseType: !694, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !921, file: !922, line: 55, baseType: !694, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !921, file: !922, line: 56, baseType: !694, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !921, file: !922, line: 57, baseType: !694, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !921, file: !922, line: 58, baseType: !694, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !921, file: !922, line: 59, baseType: !694, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !921, file: !922, line: 60, baseType: !694, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !921, file: !922, line: 61, baseType: !694, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !921, file: !922, line: 64, baseType: !694, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !921, file: !922, line: 65, baseType: !694, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !921, file: !922, line: 66, baseType: !694, size: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !921, file: !922, line: 68, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !922, line: 36, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !921, file: !922, line: 70, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !921, file: !922, line: 72, baseType: !501, size: 32, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !921, file: !922, line: 73, baseType: !501, size: 32, offset: 928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !921, file: !922, line: 74, baseType: !944, size: 64, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !702, line: 152, baseType: !703)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !921, file: !922, line: 77, baseType: !664, size: 16, offset: 1024)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !921, file: !922, line: 78, baseType: !947, size: 8, offset: 1040)
!947 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !921, file: !922, line: 79, baseType: !949, size: 8, offset: 1048)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 8, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 1)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !921, file: !922, line: 81, baseType: !953, size: 64, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !922, line: 43, baseType: null)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !921, file: !922, line: 89, baseType: !956, size: 64, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !702, line: 153, baseType: !703)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !921, file: !922, line: 91, baseType: !958, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !922, line: 37, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !921, file: !922, line: 92, baseType: !961, size: 64, offset: 1280)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !922, line: 38, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !921, file: !922, line: 93, baseType: !940, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !921, file: !922, line: 94, baseType: !690, size: 64, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !921, file: !922, line: 95, baseType: !646, size: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !921, file: !922, line: 96, baseType: !501, size: 32, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !921, file: !922, line: 98, baseType: !968, size: 160, offset: 1568)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 160, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 20)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !858, file: !75, line: 459, baseType: !690, size: 64, offset: 2496)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !858, file: !75, line: 462, baseType: !646, size: 64, offset: 2560)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !858, file: !75, line: 465, baseType: !788, size: 32768, offset: 2624)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !858, file: !75, line: 466, baseType: !788, size: 32768, offset: 35392)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !858, file: !75, line: 467, baseType: !788, size: 32768, offset: 68160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !858, file: !75, line: 468, baseType: !788, size: 32768, offset: 100928)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !858, file: !75, line: 471, baseType: !651, size: 32, offset: 133696)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !858, file: !75, line: 474, baseType: !694, size: 64, offset: 133760)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !858, file: !75, line: 477, baseType: !646, size: 64, offset: 133824)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !858, file: !75, line: 478, baseType: !646, size: 64, offset: 133888)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !858, file: !75, line: 481, baseType: !659, size: 64, offset: 133952)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !858, file: !75, line: 484, baseType: !646, size: 64, offset: 134016)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !858, file: !75, line: 487, baseType: !984, size: 32, offset: 134080)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !426, line: 47, baseType: !425)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !858, file: !75, line: 490, baseType: !659, size: 64, offset: 134112)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !858, file: !75, line: 493, baseType: !690, size: 64, offset: 134208)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !858, file: !75, line: 496, baseType: !651, size: 32, offset: 134272)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !328, line: 129, baseType: !663)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !996, line: 40, baseType: !997)
!996 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !996, line: 29, size: 32960, elements: !998)
!998 = !{!999, !1000, !1001, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !997, file: !996, line: 32, baseType: !788, size: 32768)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !997, file: !996, line: 35, baseType: !823, size: 64, offset: 32768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !997, file: !996, line: 38, baseType: !646, size: 64, offset: 32832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !997, file: !996, line: 39, baseType: !646, size: 64, offset: 32896)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !591, line: 103, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !591, line: 51, size: 1216, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1022, !1027, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1042, !1044, !1045, !1047, !1048, !1049, !1050}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !591, line: 54, baseType: !694, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1006, file: !591, line: 55, baseType: !694, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1006, file: !591, line: 56, baseType: !694, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !1006, file: !591, line: 57, baseType: !694, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1006, file: !591, line: 58, baseType: !694, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !1006, file: !591, line: 61, baseType: !856, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !1006, file: !591, line: 64, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !591, line: 43, baseType: !1017)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!635, !1019, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !1006, file: !591, line: 67, baseType: !1023, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !591, line: 46, baseType: !1025)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!651, !1019, !635}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !1006, file: !591, line: 70, baseType: !1028, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !591, line: 49, baseType: !1030)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!651, !1032, !916}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1006, file: !591, line: 73, baseType: !690, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !1006, file: !591, line: 76, baseType: !651, size: 32, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1006, file: !591, line: 77, baseType: !651, size: 32, offset: 672)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !1006, file: !591, line: 78, baseType: !651, size: 32, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !1006, file: !591, line: 79, baseType: !651, size: 32, offset: 736)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !1006, file: !591, line: 80, baseType: !651, size: 32, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !1006, file: !591, line: 83, baseType: !1041, size: 32, offset: 800)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !591, line: 33, baseType: !590)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !1006, file: !591, line: 86, baseType: !1043, size: 32, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !1006, file: !591, line: 89, baseType: !651, size: 32, offset: 864)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1006, file: !591, line: 92, baseType: !1046, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1006, file: !591, line: 93, baseType: !1046, size: 64, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1006, file: !591, line: 96, baseType: !646, size: 64, offset: 1024)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !1006, file: !591, line: 99, baseType: !694, size: 64, offset: 1088)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1006, file: !591, line: 102, baseType: !807, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagicInfo", file: !1054, line: 51, baseType: !1055)
!1054 = !DIFile(filename: "apps/538.imagick_r/src/magick/magic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d9fc918f002155e81e1a13ea7935e933")
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagicInfo", file: !1054, line: 25, size: 640, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1067, !1068}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1055, file: !1054, line: 28, baseType: !694, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1055, file: !1054, line: 29, baseType: !694, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1055, file: !1054, line: 30, baseType: !694, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1055, file: !1054, line: 33, baseType: !823, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1055, file: !1054, line: 36, baseType: !646, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1055, file: !1054, line: 39, baseType: !771, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !1055, file: !1054, line: 42, baseType: !651, size: 32, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !1055, file: !1054, line: 43, baseType: !651, size: 32, offset: 416)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1055, file: !1054, line: 46, baseType: !1066, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !1054, line: 47, baseType: !1066, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1055, file: !1054, line: 50, baseType: !646, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !6, line: 78, baseType: !1070)
!1070 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!1072 = !{!0, !1073, !1079, !1084, !1089, !1094, !1099, !1104, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1124}
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(name: "BorderColor", scope: !2, file: !1075, line: 107, type: !1076, isLocal: false, isDefinition: true)
!1075 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "342b093e9a737344b5735c8778224656")
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 8)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(name: "DefaultTileFrame", scope: !2, file: !1075, line: 108, type: !1081, isLocal: false, isDefinition: true)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 80, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 10)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "DefaultTileGeometry", scope: !2, file: !1075, line: 109, type: !1086, isLocal: false, isDefinition: true)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 104, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 13)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(name: "DefaultTileLabel", scope: !2, file: !1075, line: 110, type: !1091, isLocal: false, isDefinition: true)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 72, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 9)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "ForegroundColor", scope: !2, file: !1075, line: 111, type: !1096, isLocal: false, isDefinition: true)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 40, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 5)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(name: "LoadImageTag", scope: !2, file: !1075, line: 112, type: !1101, isLocal: false, isDefinition: true)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 88, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 11)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "LoadImagesTag", scope: !2, file: !1075, line: 113, type: !1106, isLocal: false, isDefinition: true)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 96, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 12)
!1109 = !DIGlobalVariableExpression(var: !1110, expr: !DIExpression())
!1110 = distinct !DIGlobalVariable(name: "MatteColor", scope: !2, file: !1075, line: 114, type: !1076, isLocal: false, isDefinition: true)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(name: "PSDensityGeometry", scope: !2, file: !1075, line: 115, type: !1081, isLocal: false, isDefinition: true)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(name: "PSPageGeometry", scope: !2, file: !1075, line: 116, type: !1076, isLocal: false, isDefinition: true)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(name: "SaveImageTag", scope: !2, file: !1075, line: 117, type: !1101, isLocal: false, isDefinition: true)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(name: "SaveImagesTag", scope: !2, file: !1075, line: 118, type: !1106, isLocal: false, isDefinition: true)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(name: "TransparentColor", scope: !2, file: !1075, line: 119, type: !1081, isLocal: false, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(name: "DefaultResolution", scope: !2, file: !1075, line: 122, type: !1123, isLocal: false, isDefinition: true)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "format_type_formats", scope: !1126, file: !1075, line: 2610, type: !1160, isLocal: true, isDefinition: true)
!1126 = distinct !DISubprogram(name: "SetImageInfo", scope: !1075, file: !1075, line: 2483, type: !1127, scopeLine: 2485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!651, !856, !1129, !1021}
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1150, !1155, !1156, !1159}
!1131 = !DILocalVariable(name: "image_info", arg: 1, scope: !1126, file: !1075, line: 2483, type: !856)
!1132 = !DILocalVariable(name: "frames", arg: 2, scope: !1126, file: !1075, line: 2484, type: !1129)
!1133 = !DILocalVariable(name: "exception", arg: 3, scope: !1126, file: !1075, line: 2484, type: !1021)
!1134 = !DILocalVariable(name: "extension", scope: !1126, file: !1075, line: 2487, type: !788)
!1135 = !DILocalVariable(name: "filename", scope: !1126, file: !1075, line: 2488, type: !788)
!1136 = !DILocalVariable(name: "magic", scope: !1126, file: !1075, line: 2489, type: !788)
!1137 = !DILocalVariable(name: "q", scope: !1126, file: !1075, line: 2490, type: !694)
!1138 = !DILocalVariable(name: "subimage", scope: !1126, file: !1075, line: 2491, type: !788)
!1139 = !DILocalVariable(name: "magic_info", scope: !1126, file: !1075, line: 2494, type: !1051)
!1140 = !DILocalVariable(name: "magick_info", scope: !1126, file: !1075, line: 2497, type: !1003)
!1141 = !DILocalVariable(name: "sans_exception", scope: !1126, file: !1075, line: 2500, type: !1021)
!1142 = !DILocalVariable(name: "image", scope: !1126, file: !1075, line: 2503, type: !635)
!1143 = !DILocalVariable(name: "status", scope: !1126, file: !1075, line: 2506, type: !651)
!1144 = !DILocalVariable(name: "p", scope: !1126, file: !1075, line: 2509, type: !768)
!1145 = !DILocalVariable(name: "count", scope: !1126, file: !1075, line: 2512, type: !699)
!1146 = !DILocalVariable(name: "magick", scope: !1126, file: !1075, line: 2515, type: !1147)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 65536, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 8192)
!1150 = !DILocalVariable(name: "first", scope: !1151, file: !1075, line: 2540, type: !646)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1075, line: 2538, column: 9)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1075, line: 2532, column: 11)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1075, line: 2528, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2527, column: 7)
!1155 = !DILocalVariable(name: "last", scope: !1151, file: !1075, line: 2541, type: !646)
!1156 = !DILocalVariable(name: "format_type", scope: !1157, file: !1075, line: 2604, type: !1041)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !1075, line: 2602, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2601, column: 7)
!1159 = !DILocalVariable(name: "i", scope: !1157, file: !1075, line: 2607, type: !699)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 1152, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 18)
!1163 = !{i32 7, !"Dwarf Version", i32 5}
!1164 = !{i32 2, !"Debug Info Version", i32 3}
!1165 = !{i32 1, !"wchar_size", i32 4}
!1166 = !{i32 7, !"PIC Level", i32 2}
!1167 = !{i32 7, !"PIE Level", i32 2}
!1168 = !{i32 7, !"uwtable", i32 2}
!1169 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1170 = distinct !DISubprogram(name: "AcquireImage", scope: !1075, file: !1075, line: 149, type: !1171, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!635, !1019}
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1181, !1182, !1185, !1196, !1199}
!1174 = !DILocalVariable(name: "image_info", arg: 1, scope: !1170, file: !1075, line: 149, type: !1019)
!1175 = !DILocalVariable(name: "option", scope: !1170, file: !1075, line: 152, type: !768)
!1176 = !DILocalVariable(name: "image", scope: !1170, file: !1075, line: 155, type: !635)
!1177 = !DILocalVariable(name: "flags", scope: !1170, file: !1075, line: 158, type: !1043)
!1178 = !DILocalVariable(name: "message", scope: !1179, file: !1075, line: 166, type: !694)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !1075, line: 166, column: 5)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 165, column: 7)
!1181 = !DILocalVariable(name: "exception", scope: !1179, file: !1075, line: 166, type: !796)
!1182 = !DILocalVariable(name: "geometry", scope: !1183, file: !1075, line: 232, type: !707)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !1075, line: 230, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 229, column: 7)
!1185 = !DILocalVariable(name: "geometry_info", scope: !1186, file: !1075, line: 250, type: !1188)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1075, line: 248, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 247, column: 7)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !155, line: 112, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !155, line: 104, size: 320, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !1189, file: !155, line: 107, baseType: !672, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !1189, file: !155, line: 108, baseType: !672, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !1189, file: !155, line: 109, baseType: !672, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1189, file: !155, line: 110, baseType: !672, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !1189, file: !155, line: 111, baseType: !672, size: 64, offset: 256)
!1196 = !DILocalVariable(name: "geometry", scope: !1197, file: !1075, line: 261, type: !694)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1075, line: 259, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 258, column: 7)
!1199 = !DILocalVariable(name: "geometry_info", scope: !1200, file: !1075, line: 285, type: !1188)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1075, line: 283, column: 5)
!1201 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 282, column: 7)
!1202 = !DILocation(line: 0, scope: !1170)
!1203 = !DILocation(line: 163, column: 10, scope: !1170)
!1204 = !DILocation(line: 164, column: 19, scope: !1170)
!1205 = !DILocation(line: 165, column: 13, scope: !1180)
!1206 = !DILocation(line: 165, column: 7, scope: !1170)
!1207 = !DILocation(line: 166, column: 5, scope: !1179)
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"int", !1210, i64 0}
!1210 = !{!"omnipotent char", !1211, i64 0}
!1211 = !{!"Simple C/C++ TBAA"}
!1212 = !DILocation(line: 0, scope: !1179)
!1213 = !DILocation(line: 167, column: 10, scope: !1170)
!1214 = !DILocation(line: 171, column: 34, scope: !1170)
!1215 = !DILocation(line: 171, column: 10, scope: !1170)
!1216 = !DILocation(line: 172, column: 23, scope: !1170)
!1217 = !{!1218, !1210, i64 0}
!1218 = !{!"_Image", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1219, i64 16, !1210, i64 24, !1210, i64 28, !1210, i64 32, !1219, i64 40, !1219, i64 48, !1219, i64 56, !1219, i64 64, !1220, i64 72, !1221, i64 80, !1221, i64 88, !1221, i64 96, !1223, i64 104, !1224, i64 112, !1210, i64 208, !1220, i64 216, !1210, i64 224, !1220, i64 232, !1220, i64 240, !1220, i64 248, !1219, i64 256, !1223, i64 264, !1223, i64 272, !1226, i64 280, !1226, i64 312, !1226, i64 344, !1223, i64 376, !1223, i64 384, !1223, i64 392, !1210, i64 400, !1210, i64 404, !1210, i64 408, !1210, i64 412, !1210, i64 416, !1210, i64 420, !1220, i64 424, !1219, i64 432, !1219, i64 440, !1219, i64 448, !1219, i64 456, !1219, i64 464, !1219, i64 472, !1227, i64 480, !1228, i64 504, !1220, i64 568, !1220, i64 576, !1220, i64 584, !1220, i64 592, !1220, i64 600, !1220, i64 608, !1210, i64 616, !1210, i64 4712, !1210, i64 8808, !1219, i64 12904, !1219, i64 12912, !1230, i64 12920, !1210, i64 12976, !1219, i64 12984, !1220, i64 12992, !1231, i64 13000, !1231, i64 13032, !1220, i64 13064, !1219, i64 13072, !1219, i64 13080, !1220, i64 13088, !1220, i64 13096, !1220, i64 13104, !1210, i64 13112, !1210, i64 13116, !1221, i64 13120, !1220, i64 13128, !1226, i64 13136, !1220, i64 13168, !1220, i64 13176, !1210, i64 13184, !1210, i64 13188, !1232, i64 13192, !1210, i64 13200, !1219, i64 13208, !1219, i64 13216, !1210, i64 13224, !1219, i64 13232}
!1219 = !{!"long", !1210, i64 0}
!1220 = !{!"any pointer", !1210, i64 0}
!1221 = !{!"_PixelPacket", !1222, i64 0, !1222, i64 2, !1222, i64 4, !1222, i64 6}
!1222 = !{!"short", !1210, i64 0}
!1223 = !{!"double", !1210, i64 0}
!1224 = !{!"_ChromaticityInfo", !1225, i64 0, !1225, i64 24, !1225, i64 48, !1225, i64 72}
!1225 = !{!"_PrimaryInfo", !1223, i64 0, !1223, i64 8, !1223, i64 16}
!1226 = !{!"_RectangleInfo", !1219, i64 0, !1219, i64 8, !1219, i64 16, !1219, i64 24}
!1227 = !{!"_ErrorInfo", !1223, i64 0, !1223, i64 8, !1223, i64 16}
!1228 = !{!"_TimerInfo", !1229, i64 0, !1229, i64 24, !1210, i64 48, !1219, i64 56}
!1229 = !{!"_Timer", !1223, i64 0, !1223, i64 8, !1223, i64 16}
!1230 = !{!"_ExceptionInfo", !1210, i64 0, !1209, i64 4, !1220, i64 8, !1220, i64 16, !1220, i64 24, !1210, i64 32, !1220, i64 40, !1219, i64 48}
!1231 = !{!"_ProfileInfo", !1220, i64 0, !1219, i64 8, !1220, i64 16, !1219, i64 24}
!1232 = !{!"long long", !1210, i64 0}
!1233 = !DILocation(line: 173, column: 10, scope: !1170)
!1234 = !DILocation(line: 173, column: 15, scope: !1170)
!1235 = !{!1218, !1219, i64 56}
!1236 = !DILocation(line: 174, column: 10, scope: !1170)
!1237 = !DILocation(line: 174, column: 20, scope: !1170)
!1238 = !{!1218, !1210, i64 4}
!1239 = !DILocation(line: 175, column: 10, scope: !1170)
!1240 = !DILocation(line: 175, column: 26, scope: !1170)
!1241 = !{!1218, !1210, i64 208}
!1242 = !DILocation(line: 176, column: 10, scope: !1170)
!1243 = !DILocation(line: 176, column: 15, scope: !1170)
!1244 = !{!1218, !1223, i64 104}
!1245 = !DILocation(line: 177, column: 10, scope: !1170)
!1246 = !DILocation(line: 177, column: 36, scope: !1170)
!1247 = !{!1218, !1223, i64 112}
!1248 = !DILocation(line: 178, column: 35, scope: !1170)
!1249 = !DILocation(line: 178, column: 36, scope: !1170)
!1250 = !{!1218, !1223, i64 120}
!1251 = !DILocation(line: 179, column: 35, scope: !1170)
!1252 = !DILocation(line: 179, column: 36, scope: !1170)
!1253 = !{!1218, !1223, i64 128}
!1254 = !DILocation(line: 180, column: 23, scope: !1170)
!1255 = !DILocation(line: 180, column: 38, scope: !1170)
!1256 = !{!1218, !1223, i64 136}
!1257 = !DILocation(line: 181, column: 37, scope: !1170)
!1258 = !DILocation(line: 181, column: 38, scope: !1170)
!1259 = !{!1218, !1223, i64 144}
!1260 = !DILocation(line: 182, column: 37, scope: !1170)
!1261 = !DILocation(line: 182, column: 38, scope: !1170)
!1262 = !{!1218, !1223, i64 152}
!1263 = !DILocation(line: 183, column: 23, scope: !1170)
!1264 = !DILocation(line: 183, column: 37, scope: !1170)
!1265 = !{!1218, !1223, i64 160}
!1266 = !DILocation(line: 184, column: 36, scope: !1170)
!1267 = !DILocation(line: 184, column: 37, scope: !1170)
!1268 = !{!1218, !1223, i64 168}
!1269 = !DILocation(line: 185, column: 36, scope: !1170)
!1270 = !DILocation(line: 185, column: 37, scope: !1170)
!1271 = !{!1218, !1223, i64 176}
!1272 = !DILocation(line: 186, column: 23, scope: !1170)
!1273 = !DILocation(line: 186, column: 36, scope: !1170)
!1274 = !{!1218, !1223, i64 184}
!1275 = !DILocation(line: 187, column: 35, scope: !1170)
!1276 = !DILocation(line: 187, column: 36, scope: !1170)
!1277 = !{!1218, !1223, i64 192}
!1278 = !DILocation(line: 188, column: 35, scope: !1170)
!1279 = !DILocation(line: 188, column: 36, scope: !1170)
!1280 = !{!1218, !1223, i64 200}
!1281 = !DILocation(line: 189, column: 10, scope: !1170)
!1282 = !DILocation(line: 189, column: 19, scope: !1170)
!1283 = !{!1218, !1210, i64 404}
!1284 = !DILocation(line: 190, column: 10, scope: !1170)
!1285 = !DILocation(line: 190, column: 26, scope: !1170)
!1286 = !{!1218, !1219, i64 448}
!1287 = !DILocation(line: 191, column: 10, scope: !1170)
!1288 = !DILocation(line: 191, column: 17, scope: !1170)
!1289 = !{!1218, !1210, i64 416}
!1290 = !DILocation(line: 192, column: 10, scope: !1170)
!1291 = !DILocation(line: 192, column: 14, scope: !1170)
!1292 = !{!1218, !1223, i64 384}
!1293 = !DILocation(line: 193, column: 28, scope: !1170)
!1294 = !DILocation(line: 193, column: 3, scope: !1170)
!1295 = !DILocation(line: 194, column: 53, scope: !1170)
!1296 = !DILocation(line: 194, column: 10, scope: !1170)
!1297 = !DILocation(line: 196, column: 49, scope: !1170)
!1298 = !DILocation(line: 196, column: 10, scope: !1170)
!1299 = !DILocation(line: 197, column: 48, scope: !1170)
!1300 = !DILocation(line: 197, column: 10, scope: !1170)
!1301 = !DILocation(line: 198, column: 54, scope: !1170)
!1302 = !DILocation(line: 198, column: 10, scope: !1170)
!1303 = !DILocation(line: 200, column: 24, scope: !1170)
!1304 = !DILocation(line: 200, column: 3, scope: !1170)
!1305 = !DILocation(line: 201, column: 10, scope: !1170)
!1306 = !DILocation(line: 201, column: 14, scope: !1170)
!1307 = !{!1218, !1210, i64 13200}
!1308 = !DILocation(line: 202, column: 16, scope: !1170)
!1309 = !DILocation(line: 202, column: 10, scope: !1170)
!1310 = !DILocation(line: 202, column: 15, scope: !1170)
!1311 = !{!1218, !1220, i64 584}
!1312 = !DILocation(line: 203, column: 15, scope: !1170)
!1313 = !DILocation(line: 203, column: 10, scope: !1170)
!1314 = !DILocation(line: 203, column: 14, scope: !1170)
!1315 = !{!1218, !1220, i64 608}
!1316 = !DILocation(line: 204, column: 20, scope: !1170)
!1317 = !DILocation(line: 204, column: 10, scope: !1170)
!1318 = !DILocation(line: 204, column: 19, scope: !1170)
!1319 = !{!1218, !1219, i64 13216}
!1320 = !DILocation(line: 205, column: 16, scope: !1170)
!1321 = !DILocation(line: 205, column: 10, scope: !1170)
!1322 = !DILocation(line: 205, column: 15, scope: !1170)
!1323 = !{!1218, !1210, i64 12976}
!1324 = !DILocation(line: 206, column: 10, scope: !1170)
!1325 = !DILocation(line: 206, column: 25, scope: !1170)
!1326 = !{!1218, !1219, i64 12984}
!1327 = !DILocation(line: 207, column: 20, scope: !1170)
!1328 = !DILocation(line: 207, column: 10, scope: !1170)
!1329 = !DILocation(line: 207, column: 19, scope: !1170)
!1330 = !{!1218, !1220, i64 12992}
!1331 = !DILocation(line: 208, column: 10, scope: !1170)
!1332 = !DILocation(line: 208, column: 19, scope: !1170)
!1333 = !{!1218, !1219, i64 13080}
!1334 = !DILocation(line: 209, column: 18, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 209, column: 7)
!1336 = !DILocation(line: 209, column: 7, scope: !1170)
!1337 = !DILocation(line: 214, column: 35, scope: !1170)
!1338 = !{!1339, !1220, i64 304}
!1339 = !{!"_ImageInfo", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1220, i64 24, !1220, i64 32, !1220, i64 40, !1220, i64 48, !1219, i64 56, !1219, i64 64, !1219, i64 72, !1210, i64 80, !1210, i64 84, !1210, i64 88, !1219, i64 96, !1220, i64 104, !1220, i64 112, !1220, i64 120, !1220, i64 128, !1220, i64 136, !1223, i64 144, !1223, i64 152, !1221, i64 160, !1221, i64 168, !1221, i64 176, !1210, i64 184, !1210, i64 188, !1219, i64 192, !1210, i64 200, !1210, i64 204, !1210, i64 208, !1219, i64 216, !1210, i64 224, !1210, i64 228, !1220, i64 232, !1220, i64 240, !1210, i64 248, !1220, i64 256, !1220, i64 264, !1220, i64 272, !1220, i64 280, !1220, i64 288, !1220, i64 296, !1220, i64 304, !1220, i64 312, !1219, i64 320, !1210, i64 328, !1210, i64 4424, !1210, i64 8520, !1210, i64 12616, !1210, i64 16712, !1220, i64 16720, !1219, i64 16728, !1219, i64 16736, !1221, i64 16744, !1219, i64 16752, !1210, i64 16760, !1221, i64 16764, !1220, i64 16776, !1210, i64 16784}
!1340 = !DILocation(line: 214, column: 40, scope: !1170)
!1341 = !DILocation(line: 214, column: 23, scope: !1170)
!1342 = !DILocation(line: 214, column: 3, scope: !1170)
!1343 = !DILocation(line: 216, column: 34, scope: !1170)
!1344 = !DILocation(line: 216, column: 55, scope: !1170)
!1345 = !DILocation(line: 216, column: 10, scope: !1170)
!1346 = !DILocation(line: 217, column: 34, scope: !1170)
!1347 = !DILocation(line: 217, column: 10, scope: !1170)
!1348 = !DILocation(line: 219, column: 53, scope: !1170)
!1349 = !DILocation(line: 219, column: 10, scope: !1170)
!1350 = !DILocation(line: 220, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 220, column: 7)
!1352 = !{!1339, !1220, i64 24}
!1353 = !DILocation(line: 220, column: 24, scope: !1351)
!1354 = !DILocation(line: 220, column: 7, scope: !1170)
!1355 = !DILocation(line: 222, column: 61, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !1075, line: 221, column: 5)
!1357 = !DILocation(line: 222, column: 14, scope: !1356)
!1358 = !DILocation(line: 223, column: 42, scope: !1356)
!1359 = !{!1218, !1219, i64 312}
!1360 = !DILocation(line: 223, column: 14, scope: !1356)
!1361 = !DILocation(line: 223, column: 21, scope: !1356)
!1362 = !{!1218, !1219, i64 40}
!1363 = !DILocation(line: 224, column: 39, scope: !1356)
!1364 = !{!1218, !1219, i64 320}
!1365 = !DILocation(line: 224, column: 14, scope: !1356)
!1366 = !DILocation(line: 224, column: 18, scope: !1356)
!1367 = !{!1218, !1219, i64 48}
!1368 = !DILocation(line: 225, column: 41, scope: !1356)
!1369 = !{!1218, !1219, i64 328}
!1370 = !DILocation(line: 225, column: 14, scope: !1356)
!1371 = !DILocation(line: 225, column: 20, scope: !1356)
!1372 = !{!1218, !1219, i64 256}
!1373 = !DILocation(line: 227, column: 28, scope: !1356)
!1374 = !DILocation(line: 228, column: 5, scope: !1356)
!1375 = !DILocation(line: 229, column: 19, scope: !1184)
!1376 = !{!1339, !1220, i64 32}
!1377 = !DILocation(line: 229, column: 27, scope: !1184)
!1378 = !DILocation(line: 229, column: 7, scope: !1170)
!1379 = !DILocation(line: 231, column: 7, scope: !1183)
!1380 = !DILocation(line: 232, column: 9, scope: !1183)
!1381 = !DILocation(line: 234, column: 13, scope: !1183)
!1382 = !DILocation(line: 235, column: 35, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1183, file: !1075, line: 235, column: 11)
!1384 = !DILocation(line: 237, column: 18, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !1075, line: 236, column: 9)
!1386 = !DILocation(line: 237, column: 31, scope: !1385)
!1387 = !{i64 0, i64 8, !1388, i64 8, i64 8, !1388, i64 16, i64 8, !1388, i64 24, i64 8, !1388}
!1388 = !{!1219, !1219, i64 0}
!1389 = !DILocation(line: 238, column: 11, scope: !1385)
!1390 = !DILocation(line: 239, column: 11, scope: !1385)
!1391 = !DILocation(line: 240, column: 9, scope: !1385)
!1392 = !DILocation(line: 241, column: 5, scope: !1184)
!1393 = !DILocation(line: 241, column: 5, scope: !1183)
!1394 = !DILocation(line: 242, column: 34, scope: !1170)
!1395 = !{!1339, !1210, i64 0}
!1396 = !DILocation(line: 242, column: 10, scope: !1170)
!1397 = !DILocation(line: 242, column: 21, scope: !1170)
!1398 = !{!1218, !1210, i64 8}
!1399 = !DILocation(line: 243, column: 30, scope: !1170)
!1400 = !{!1339, !1219, i64 96}
!1401 = !DILocation(line: 243, column: 10, scope: !1170)
!1402 = !DILocation(line: 243, column: 17, scope: !1170)
!1403 = !{!1218, !1219, i64 16}
!1404 = !DILocation(line: 244, column: 29, scope: !1170)
!1405 = !{!1339, !1210, i64 84}
!1406 = !DILocation(line: 244, column: 10, scope: !1170)
!1407 = !DILocation(line: 244, column: 16, scope: !1170)
!1408 = !{!1218, !1210, i64 408}
!1409 = !DILocation(line: 245, column: 32, scope: !1170)
!1410 = !{!1339, !1210, i64 80}
!1411 = !DILocation(line: 245, column: 19, scope: !1170)
!1412 = !DILocation(line: 246, column: 28, scope: !1170)
!1413 = !{!1339, !1210, i64 88}
!1414 = !DILocation(line: 246, column: 10, scope: !1170)
!1415 = !DILocation(line: 246, column: 15, scope: !1170)
!1416 = !{!1218, !1210, i64 224}
!1417 = !DILocation(line: 247, column: 19, scope: !1187)
!1418 = !{!1339, !1220, i64 136}
!1419 = !DILocation(line: 247, column: 27, scope: !1187)
!1420 = !DILocation(line: 247, column: 7, scope: !1170)
!1421 = !DILocation(line: 249, column: 7, scope: !1186)
!1422 = !DILocation(line: 250, column: 9, scope: !1186)
!1423 = !DILocation(line: 252, column: 13, scope: !1186)
!1424 = !DILocation(line: 253, column: 41, scope: !1186)
!1425 = !{!1426, !1223, i64 0}
!1426 = !{!"_GeometryInfo", !1223, i64 0, !1223, i64 8, !1223, i64 16, !1223, i64 24, !1223, i64 32}
!1427 = !DILocation(line: 253, column: 14, scope: !1186)
!1428 = !DILocation(line: 253, column: 26, scope: !1186)
!1429 = !{!1218, !1223, i64 264}
!1430 = !DILocation(line: 254, column: 41, scope: !1186)
!1431 = !{!1426, !1223, i64 8}
!1432 = !DILocation(line: 254, column: 14, scope: !1186)
!1433 = !DILocation(line: 255, column: 18, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1186, file: !1075, line: 255, column: 11)
!1435 = !DILocation(line: 255, column: 32, scope: !1434)
!1436 = !DILocation(line: 255, column: 11, scope: !1186)
!1437 = !DILocation(line: 0, scope: !1186)
!1438 = !DILocation(line: 257, column: 5, scope: !1187)
!1439 = !DILocation(line: 257, column: 5, scope: !1186)
!1440 = !DILocation(line: 258, column: 19, scope: !1198)
!1441 = !{!1339, !1220, i64 40}
!1442 = !DILocation(line: 258, column: 24, scope: !1198)
!1443 = !DILocation(line: 258, column: 7, scope: !1170)
!1444 = !DILocation(line: 263, column: 14, scope: !1197)
!1445 = !DILocation(line: 263, column: 26, scope: !1197)
!1446 = !DILocation(line: 264, column: 44, scope: !1197)
!1447 = !DILocation(line: 264, column: 16, scope: !1197)
!1448 = !DILocation(line: 0, scope: !1197)
!1449 = !DILocation(line: 265, column: 14, scope: !1197)
!1450 = !DILocation(line: 266, column: 16, scope: !1197)
!1451 = !DILocation(line: 267, column: 5, scope: !1197)
!1452 = !DILocation(line: 268, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 268, column: 7)
!1454 = !{!1339, !1219, i64 72}
!1455 = !DILocation(line: 268, column: 25, scope: !1453)
!1456 = !DILocation(line: 268, column: 7, scope: !1170)
!1457 = !DILocation(line: 269, column: 17, scope: !1453)
!1458 = !DILocation(line: 269, column: 5, scope: !1453)
!1459 = !DILocation(line: 270, column: 29, scope: !1170)
!1460 = !{!1339, !1210, i64 184}
!1461 = !DILocation(line: 270, column: 10, scope: !1170)
!1462 = !DILocation(line: 270, column: 16, scope: !1170)
!1463 = !{!1218, !1210, i64 13188}
!1464 = !DILocation(line: 271, column: 39, scope: !1170)
!1465 = !DILocation(line: 272, column: 35, scope: !1170)
!1466 = !DILocation(line: 273, column: 34, scope: !1170)
!1467 = !DILocation(line: 274, column: 40, scope: !1170)
!1468 = !DILocation(line: 275, column: 27, scope: !1170)
!1469 = !{!1339, !1210, i64 224}
!1470 = !DILocation(line: 275, column: 14, scope: !1170)
!1471 = !DILocation(line: 276, column: 39, scope: !1170)
!1472 = !{!1339, !1220, i64 272}
!1473 = !DILocation(line: 276, column: 10, scope: !1170)
!1474 = !DILocation(line: 276, column: 26, scope: !1170)
!1475 = !{!1218, !1220, i64 568}
!1476 = !DILocation(line: 277, column: 34, scope: !1170)
!1477 = !{!1339, !1220, i64 280}
!1478 = !DILocation(line: 277, column: 10, scope: !1170)
!1479 = !DILocation(line: 277, column: 21, scope: !1170)
!1480 = !{!1218, !1220, i64 576}
!1481 = !DILocation(line: 278, column: 19, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 278, column: 7)
!1483 = !{!1339, !1220, i64 288}
!1484 = !DILocation(line: 278, column: 25, scope: !1482)
!1485 = !DILocation(line: 278, column: 7, scope: !1170)
!1486 = !DILocation(line: 279, column: 35, scope: !1482)
!1487 = !DILocation(line: 279, column: 5, scope: !1482)
!1488 = !DILocation(line: 280, column: 10, scope: !1170)
!1489 = !DILocation(line: 281, column: 10, scope: !1170)
!1490 = !DILocation(line: 282, column: 14, scope: !1201)
!1491 = !DILocation(line: 282, column: 7, scope: !1170)
!1492 = !DILocation(line: 284, column: 7, scope: !1200)
!1493 = !DILocation(line: 285, column: 9, scope: !1200)
!1494 = !DILocation(line: 287, column: 13, scope: !1200)
!1495 = !DILocation(line: 288, column: 18, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1200, file: !1075, line: 288, column: 11)
!1497 = !DILocation(line: 288, column: 34, scope: !1496)
!1498 = !DILocation(line: 288, column: 11, scope: !1200)
!1499 = !DILocation(line: 290, column: 22, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !1075, line: 290, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !1075, line: 289, column: 9)
!1502 = !{!1218, !1219, i64 440}
!1503 = !DILocation(line: 290, column: 59, scope: !1500)
!1504 = !DILocation(line: 290, column: 62, scope: !1500)
!1505 = !DILocation(line: 290, column: 39, scope: !1500)
!1506 = !DILocation(line: 290, column: 30, scope: !1500)
!1507 = !DILocation(line: 290, column: 28, scope: !1500)
!1508 = !DILocation(line: 290, column: 15, scope: !1501)
!1509 = !DILocation(line: 291, column: 25, scope: !1500)
!1510 = !DILocation(line: 291, column: 13, scope: !1500)
!1511 = !DILocation(line: 294, column: 20, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1496, file: !1075, line: 294, column: 13)
!1513 = !DILocation(line: 294, column: 33, scope: !1512)
!1514 = !DILocation(line: 294, column: 13, scope: !1496)
!1515 = !DILocation(line: 296, column: 24, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !1075, line: 296, column: 17)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !1075, line: 295, column: 11)
!1518 = !DILocation(line: 296, column: 61, scope: !1516)
!1519 = !DILocation(line: 296, column: 64, scope: !1516)
!1520 = !DILocation(line: 296, column: 41, scope: !1516)
!1521 = !DILocation(line: 296, column: 32, scope: !1516)
!1522 = !DILocation(line: 296, column: 30, scope: !1516)
!1523 = !DILocation(line: 296, column: 17, scope: !1517)
!1524 = !DILocation(line: 297, column: 69, scope: !1516)
!1525 = !DILocation(line: 297, column: 74, scope: !1516)
!1526 = !DILocation(line: 297, column: 49, scope: !1516)
!1527 = !DILocation(line: 297, column: 39, scope: !1516)
!1528 = !DILocation(line: 297, column: 38, scope: !1516)
!1529 = !DILocation(line: 297, column: 15, scope: !1516)
!1530 = !DILocation(line: 300, column: 53, scope: !1512)
!1531 = !DILocation(line: 300, column: 56, scope: !1512)
!1532 = !DILocation(line: 300, column: 33, scope: !1512)
!1533 = !DILocation(line: 300, column: 24, scope: !1512)
!1534 = !DILocation(line: 300, column: 18, scope: !1512)
!1535 = !DILocation(line: 300, column: 23, scope: !1512)
!1536 = !DILocation(line: 301, column: 18, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1200, file: !1075, line: 301, column: 11)
!1538 = !DILocation(line: 301, column: 32, scope: !1537)
!1539 = !DILocation(line: 301, column: 11, scope: !1200)
!1540 = !DILocation(line: 302, column: 63, scope: !1537)
!1541 = !DILocation(line: 302, column: 68, scope: !1537)
!1542 = !DILocation(line: 302, column: 43, scope: !1537)
!1543 = !DILocation(line: 302, column: 33, scope: !1537)
!1544 = !DILocation(line: 302, column: 32, scope: !1537)
!1545 = !DILocation(line: 302, column: 9, scope: !1537)
!1546 = !DILocation(line: 303, column: 5, scope: !1201)
!1547 = !DILocation(line: 303, column: 5, scope: !1200)
!1548 = !DILocation(line: 304, column: 10, scope: !1170)
!1549 = !DILocation(line: 305, column: 14, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1170, file: !1075, line: 305, column: 7)
!1551 = !DILocation(line: 305, column: 7, scope: !1170)
!1552 = !DILocation(line: 306, column: 34, scope: !1550)
!1553 = !DILocation(line: 306, column: 20, scope: !1550)
!1554 = !DILocation(line: 306, column: 12, scope: !1550)
!1555 = !DILocation(line: 306, column: 19, scope: !1550)
!1556 = !{!1218, !1210, i64 420}
!1557 = !DILocation(line: 306, column: 5, scope: !1550)
!1558 = !DILocation(line: 309, column: 1, scope: !1170)
!1559 = !DISubprogram(name: "LogMagickEvent", scope: !447, file: !447, line: 83, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!651, !1562, !768, !768, !916, !768, null}
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !447, line: 58, baseType: !446)
!1564 = !{}
!1565 = !DISubprogram(name: "AcquireMagickMemory", scope: !1566, file: !1566, line: 40, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1566 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!690, !916}
!1569 = !DISubprogram(name: "GetExceptionInfo", scope: !255, file: !255, line: 166, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1021}
!1572 = !DISubprogram(name: "GetExceptionMessage", scope: !255, file: !255, line: 137, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!694, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!1576 = !DISubprogram(name: "ThrowMagickException", scope: !255, file: !255, line: 156, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!651, !1021, !768, !768, !916, !1579, !768, !768, null}
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!1580 = !DISubprogram(name: "DestroyString", scope: !996, file: !996, line: 46, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!694, !694}
!1583 = !DISubprogram(name: "CatchException", scope: !255, file: !255, line: 164, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1584 = !DISubprogram(name: "DestroyExceptionInfo", scope: !255, file: !255, line: 148, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1021, !1021}
!1587 = !DISubprogram(name: "MagickCoreTerminus", scope: !591, file: !591, line: 147, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null}
!1590 = !DISubprogram(name: "ResetMagickMemory", scope: !1566, file: !1566, line: 52, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!690, !690, !501, !916}
!1593 = !DISubprogram(name: "CopyMagickString", scope: !996, file: !996, line: 78, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!646, !694, !768, !916}
!1596 = !DISubprogram(name: "QueryColorDatabase", scope: !741, file: !741, line: 87, type: !1597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!651, !768, !658, !1021}
!1599 = !DISubprogram(name: "GetTimerInfo", scope: !249, file: !249, line: 65, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1603 = !DISubprogram(name: "AcquirePixelCache", scope: !1604, file: !1604, line: 220, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1604 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1607, !916}
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cache", file: !1604, line: 33, baseType: !690)
!1608 = !DISubprogram(name: "CloneBlobInfo", scope: !624, file: !624, line: 62, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!784, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!1613 = !DISubprogram(name: "time", scope: !1614, file: !1614, line: 75, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1614 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!849, !855}
!1617 = !DISubprogram(name: "IsEventLogging", scope: !447, file: !447, line: 80, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!651}
!1620 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !809, file: !809, line: 32, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!807}
!1623 = !DISubprogram(name: "SetBlobExempt", scope: !1624, file: !1624, line: 70, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1624 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !635, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!1628 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !155, file: !155, line: 141, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1043, !768, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1632 = !DISubprogram(name: "ParseGeometry", scope: !155, file: !155, line: 143, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1043, !768, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1636 = !DISubprogram(name: "GetPageGeometry", scope: !155, file: !155, line: 133, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!694, !768}
!1639 = !DISubprogram(name: "ClonePixelCacheMethods", scope: !1604, file: !1604, line: 267, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1607, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!1643 = distinct !DISubprogram(name: "SyncImageSettings", scope: !1075, file: !1075, line: 3522, type: !1025, scopeLine: 3524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1656, !1659}
!1645 = !DILocalVariable(name: "image_info", arg: 1, scope: !1643, file: !1075, line: 3522, type: !1019)
!1646 = !DILocalVariable(name: "image", arg: 2, scope: !1643, file: !1075, line: 3523, type: !635)
!1647 = !DILocalVariable(name: "property", scope: !1643, file: !1075, line: 3526, type: !788)
!1648 = !DILocalVariable(name: "option", scope: !1643, file: !1075, line: 3529, type: !768)
!1649 = !DILocalVariable(name: "value", scope: !1643, file: !1075, line: 3530, type: !768)
!1650 = !DILocalVariable(name: "geometry_info", scope: !1643, file: !1075, line: 3533, type: !1188)
!1651 = !DILocalVariable(name: "flags", scope: !1643, file: !1075, line: 3536, type: !1043)
!1652 = !DILocalVariable(name: "units", scope: !1643, file: !1075, line: 3539, type: !692)
!1653 = !DILocalVariable(name: "geometry_info", scope: !1654, file: !1075, line: 3592, type: !1188)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !1075, line: 3590, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3589, column: 7)
!1656 = !DILocalVariable(name: "geometry", scope: !1657, file: !1075, line: 3660, type: !694)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1075, line: 3658, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3657, column: 7)
!1659 = !DILocalVariable(name: "geometry", scope: !1660, file: !1075, line: 3691, type: !694)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !1075, line: 3689, column: 5)
!1661 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3688, column: 7)
!1662 = !DILocation(line: 0, scope: !1643)
!1663 = !DILocation(line: 3525, column: 3, scope: !1643)
!1664 = !DILocation(line: 3526, column: 5, scope: !1643)
!1665 = !DILocation(line: 3532, column: 3, scope: !1643)
!1666 = !DILocation(line: 3533, column: 5, scope: !1643)
!1667 = !DILocation(line: 3548, column: 14, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3548, column: 7)
!1669 = !DILocation(line: 3548, column: 20, scope: !1668)
!1670 = !DILocation(line: 3548, column: 7, scope: !1643)
!1671 = !DILocation(line: 3549, column: 68, scope: !1668)
!1672 = !DILocation(line: 3549, column: 12, scope: !1668)
!1673 = !DILocation(line: 3549, column: 5, scope: !1668)
!1674 = !DILocation(line: 3550, column: 10, scope: !1643)
!1675 = !DILocation(line: 3551, column: 14, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3551, column: 7)
!1677 = !DILocation(line: 3551, column: 7, scope: !1643)
!1678 = !DILocation(line: 3552, column: 46, scope: !1676)
!1679 = !DILocation(line: 3553, column: 15, scope: !1676)
!1680 = !DILocation(line: 3552, column: 12, scope: !1676)
!1681 = !DILocation(line: 3552, column: 5, scope: !1676)
!1682 = !DILocation(line: 3554, column: 10, scope: !1643)
!1683 = !DILocation(line: 3555, column: 14, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3555, column: 7)
!1685 = !DILocation(line: 3555, column: 7, scope: !1643)
!1686 = !DILocalVariable(name: "string", arg: 1, scope: !1687, file: !1688, line: 48, type: !768)
!1687 = distinct !DISubprogram(name: "StringToDoubleInterval", scope: !1688, file: !1688, line: 48, type: !1689, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1691)
!1688 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!672, !768, !1123}
!1691 = !{!1686, !1692, !1693, !1694}
!1692 = !DILocalVariable(name: "interval", arg: 2, scope: !1687, file: !1688, line: 49, type: !1123)
!1693 = !DILocalVariable(name: "q", scope: !1687, file: !1688, line: 52, type: !694)
!1694 = !DILocalVariable(name: "value", scope: !1687, file: !1688, line: 55, type: !672)
!1695 = !DILocation(line: 0, scope: !1687, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 3556, column: 17, scope: !1684)
!1697 = !DILocation(line: 51, column: 3, scope: !1687, inlinedAt: !1696)
!1698 = !DILocation(line: 57, column: 9, scope: !1687, inlinedAt: !1696)
!1699 = !DILocation(line: 58, column: 8, scope: !1700, inlinedAt: !1696)
!1700 = distinct !DILexicalBlock(scope: !1687, file: !1688, line: 58, column: 7)
!1701 = !{!1220, !1220, i64 0}
!1702 = !DILocation(line: 58, column: 7, scope: !1700, inlinedAt: !1696)
!1703 = !{!1210, !1210, i64 0}
!1704 = !DILocation(line: 58, column: 10, scope: !1700, inlinedAt: !1696)
!1705 = !DILocation(line: 58, column: 7, scope: !1687, inlinedAt: !1696)
!1706 = !DILocation(line: 61, column: 1, scope: !1687, inlinedAt: !1696)
!1707 = !DILocation(line: 3556, column: 12, scope: !1684)
!1708 = !DILocation(line: 3556, column: 16, scope: !1684)
!1709 = !{!1218, !1223, i64 376}
!1710 = !DILocation(line: 3556, column: 5, scope: !1684)
!1711 = !DILocation(line: 3557, column: 10, scope: !1643)
!1712 = !DILocation(line: 3558, column: 14, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3558, column: 7)
!1714 = !DILocation(line: 3558, column: 7, scope: !1643)
!1715 = !DILocation(line: 3559, column: 57, scope: !1713)
!1716 = !DILocation(line: 3559, column: 37, scope: !1713)
!1717 = !DILocation(line: 3559, column: 12, scope: !1713)
!1718 = !DILocation(line: 3559, column: 36, scope: !1713)
!1719 = !{!1218, !1210, i64 13116}
!1720 = !DILocation(line: 3559, column: 5, scope: !1713)
!1721 = !DILocation(line: 3561, column: 10, scope: !1643)
!1722 = !DILocation(line: 3562, column: 14, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3562, column: 7)
!1724 = !DILocation(line: 3562, column: 7, scope: !1643)
!1725 = !DILocation(line: 3564, column: 13, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !1075, line: 3563, column: 5)
!1727 = !DILocation(line: 3565, column: 56, scope: !1726)
!1728 = !DILocation(line: 3565, column: 27, scope: !1726)
!1729 = !DILocation(line: 3565, column: 41, scope: !1726)
!1730 = !DILocation(line: 3566, column: 56, scope: !1726)
!1731 = !DILocation(line: 3566, column: 40, scope: !1726)
!1732 = !DILocation(line: 3567, column: 18, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !1075, line: 3567, column: 11)
!1734 = !DILocation(line: 3567, column: 32, scope: !1733)
!1735 = !DILocation(line: 3567, column: 11, scope: !1726)
!1736 = !DILocation(line: 0, scope: !1726)
!1737 = !DILocation(line: 3570, column: 10, scope: !1643)
!1738 = !DILocation(line: 3571, column: 14, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3571, column: 7)
!1740 = !DILocation(line: 3571, column: 7, scope: !1643)
!1741 = !DILocation(line: 3572, column: 46, scope: !1739)
!1742 = !DILocation(line: 3572, column: 67, scope: !1739)
!1743 = !DILocation(line: 3572, column: 12, scope: !1739)
!1744 = !DILocation(line: 3572, column: 5, scope: !1739)
!1745 = !DILocation(line: 3573, column: 10, scope: !1643)
!1746 = !DILocation(line: 3574, column: 14, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3574, column: 7)
!1748 = !DILocation(line: 3574, column: 7, scope: !1643)
!1749 = !DILocalVariable(name: "value", arg: 1, scope: !1750, file: !1688, line: 73, type: !1753)
!1750 = distinct !DISubprogram(name: "StringToUnsignedLong", scope: !1688, file: !1688, line: 73, type: !1751, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!634, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !768)
!1754 = !{!1749}
!1755 = !DILocation(line: 0, scope: !1750, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 3575, column: 19, scope: !1747)
!1757 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !1756)
!1758 = !DILocation(line: 3575, column: 12, scope: !1747)
!1759 = !DILocation(line: 3575, column: 18, scope: !1747)
!1760 = !{!1218, !1219, i64 64}
!1761 = !DILocation(line: 3575, column: 5, scope: !1747)
!1762 = !DILocation(line: 3576, column: 10, scope: !1643)
!1763 = !DILocation(line: 3577, column: 14, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3577, column: 7)
!1765 = !DILocation(line: 3577, column: 7, scope: !1643)
!1766 = !DILocation(line: 3578, column: 40, scope: !1764)
!1767 = !DILocation(line: 3578, column: 20, scope: !1764)
!1768 = !DILocation(line: 3578, column: 12, scope: !1764)
!1769 = !DILocation(line: 3578, column: 19, scope: !1764)
!1770 = !DILocation(line: 3578, column: 5, scope: !1764)
!1771 = !DILocation(line: 3580, column: 10, scope: !1643)
!1772 = !DILocation(line: 3581, column: 14, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3581, column: 7)
!1774 = !DILocation(line: 3581, column: 7, scope: !1643)
!1775 = !DILocation(line: 3582, column: 42, scope: !1773)
!1776 = !DILocation(line: 3582, column: 24, scope: !1773)
!1777 = !DILocation(line: 3582, column: 12, scope: !1773)
!1778 = !DILocation(line: 3582, column: 23, scope: !1773)
!1779 = !DILocation(line: 3582, column: 5, scope: !1773)
!1780 = !DILocation(line: 3584, column: 10, scope: !1643)
!1781 = !DILocation(line: 3585, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3585, column: 7)
!1783 = !DILocation(line: 3585, column: 7, scope: !1643)
!1784 = !DILocation(line: 3586, column: 38, scope: !1782)
!1785 = !DILocation(line: 3586, column: 18, scope: !1782)
!1786 = !DILocation(line: 3586, column: 17, scope: !1782)
!1787 = !DILocation(line: 3586, column: 5, scope: !1782)
!1788 = !DILocation(line: 3588, column: 10, scope: !1643)
!1789 = !DILocation(line: 3589, column: 14, scope: !1655)
!1790 = !DILocation(line: 3589, column: 7, scope: !1643)
!1791 = !DILocation(line: 3591, column: 7, scope: !1654)
!1792 = !DILocation(line: 3592, column: 9, scope: !1654)
!1793 = !DILocation(line: 3597, column: 13, scope: !1654)
!1794 = !DILocation(line: 3598, column: 41, scope: !1654)
!1795 = !DILocation(line: 3598, column: 14, scope: !1654)
!1796 = !DILocation(line: 3598, column: 26, scope: !1654)
!1797 = !DILocation(line: 3599, column: 41, scope: !1654)
!1798 = !DILocation(line: 3599, column: 14, scope: !1654)
!1799 = !DILocation(line: 3600, column: 18, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1654, file: !1075, line: 3600, column: 11)
!1801 = !DILocation(line: 3600, column: 32, scope: !1800)
!1802 = !DILocation(line: 3600, column: 11, scope: !1654)
!1803 = !DILocation(line: 0, scope: !1654)
!1804 = !DILocation(line: 3602, column: 5, scope: !1655)
!1805 = !DILocation(line: 3602, column: 5, scope: !1654)
!1806 = !DILocation(line: 3603, column: 10, scope: !1643)
!1807 = !DILocation(line: 3604, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3604, column: 7)
!1809 = !DILocation(line: 3604, column: 7, scope: !1643)
!1810 = !DILocation(line: 0, scope: !1750, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 3605, column: 18, scope: !1808)
!1812 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !1811)
!1813 = !DILocation(line: 3605, column: 12, scope: !1808)
!1814 = !DILocation(line: 3605, column: 17, scope: !1808)
!1815 = !DILocation(line: 3605, column: 5, scope: !1808)
!1816 = !DILocation(line: 3606, column: 10, scope: !1643)
!1817 = !DILocation(line: 3607, column: 14, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3607, column: 7)
!1819 = !DILocation(line: 3607, column: 7, scope: !1643)
!1820 = !DILocation(line: 3608, column: 32, scope: !1818)
!1821 = !DILocation(line: 3608, column: 19, scope: !1818)
!1822 = !DILocation(line: 3608, column: 12, scope: !1818)
!1823 = !DILocation(line: 3608, column: 18, scope: !1818)
!1824 = !DILocation(line: 3608, column: 5, scope: !1818)
!1825 = !DILocation(line: 3610, column: 10, scope: !1643)
!1826 = !DILocation(line: 3611, column: 14, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3611, column: 7)
!1828 = !DILocation(line: 3611, column: 7, scope: !1643)
!1829 = !DILocation(line: 3612, column: 33, scope: !1827)
!1830 = !DILocation(line: 3612, column: 19, scope: !1827)
!1831 = !DILocation(line: 3612, column: 12, scope: !1827)
!1832 = !DILocation(line: 3612, column: 18, scope: !1827)
!1833 = !{!1218, !1210, i64 400}
!1834 = !DILocation(line: 3612, column: 5, scope: !1827)
!1835 = !DILocation(line: 3614, column: 10, scope: !1643)
!1836 = !DILocation(line: 3615, column: 14, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3615, column: 7)
!1838 = !DILocation(line: 3615, column: 7, scope: !1643)
!1839 = !DILocation(line: 0, scope: !1687, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 3616, column: 17, scope: !1837)
!1841 = !DILocation(line: 51, column: 3, scope: !1687, inlinedAt: !1840)
!1842 = !DILocation(line: 57, column: 9, scope: !1687, inlinedAt: !1840)
!1843 = !DILocation(line: 58, column: 8, scope: !1700, inlinedAt: !1840)
!1844 = !DILocation(line: 58, column: 7, scope: !1700, inlinedAt: !1840)
!1845 = !DILocation(line: 58, column: 10, scope: !1700, inlinedAt: !1840)
!1846 = !DILocation(line: 58, column: 7, scope: !1687, inlinedAt: !1840)
!1847 = !DILocation(line: 61, column: 1, scope: !1687, inlinedAt: !1840)
!1848 = !DILocation(line: 3616, column: 12, scope: !1837)
!1849 = !DILocation(line: 3616, column: 16, scope: !1837)
!1850 = !{!1218, !1223, i64 392}
!1851 = !DILocation(line: 3616, column: 5, scope: !1837)
!1852 = !DILocation(line: 3617, column: 10, scope: !1643)
!1853 = !DILocation(line: 3618, column: 14, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3618, column: 7)
!1855 = !DILocation(line: 3618, column: 7, scope: !1643)
!1856 = !DILocation(line: 3619, column: 34, scope: !1854)
!1857 = !DILocation(line: 3619, column: 20, scope: !1854)
!1858 = !DILocation(line: 3619, column: 12, scope: !1854)
!1859 = !DILocation(line: 3619, column: 19, scope: !1854)
!1860 = !{!1218, !1210, i64 412}
!1861 = !DILocation(line: 3619, column: 5, scope: !1854)
!1862 = !DILocation(line: 3621, column: 10, scope: !1643)
!1863 = !DILocation(line: 3622, column: 14, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3622, column: 7)
!1865 = !DILocation(line: 3622, column: 7, scope: !1643)
!1866 = !DILocation(line: 3624, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !1075, line: 3623, column: 5)
!1868 = !DILocation(line: 3625, column: 57, scope: !1867)
!1869 = !DILocation(line: 3625, column: 27, scope: !1867)
!1870 = !DILocation(line: 3625, column: 42, scope: !1867)
!1871 = !DILocation(line: 3626, column: 57, scope: !1867)
!1872 = !DILocation(line: 3626, column: 41, scope: !1867)
!1873 = !DILocation(line: 3627, column: 18, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1867, file: !1075, line: 3627, column: 11)
!1875 = !DILocation(line: 3627, column: 32, scope: !1874)
!1876 = !DILocation(line: 3627, column: 11, scope: !1867)
!1877 = !DILocation(line: 0, scope: !1867)
!1878 = !DILocation(line: 3630, column: 10, scope: !1643)
!1879 = !DILocation(line: 3631, column: 14, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3631, column: 7)
!1881 = !DILocation(line: 3631, column: 7, scope: !1643)
!1882 = !DILocation(line: 3632, column: 45, scope: !1880)
!1883 = !DILocation(line: 3632, column: 22, scope: !1880)
!1884 = !DILocation(line: 3632, column: 12, scope: !1880)
!1885 = !DILocation(line: 3632, column: 21, scope: !1880)
!1886 = !{!1218, !1210, i64 13224}
!1887 = !DILocation(line: 3632, column: 5, scope: !1880)
!1888 = !DILocation(line: 3634, column: 10, scope: !1643)
!1889 = !DILocation(line: 3635, column: 14, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3635, column: 7)
!1891 = !DILocation(line: 3635, column: 7, scope: !1643)
!1892 = !DILocation(line: 3636, column: 47, scope: !1890)
!1893 = !DILocation(line: 3636, column: 29, scope: !1890)
!1894 = !DILocation(line: 3636, column: 12, scope: !1890)
!1895 = !DILocation(line: 3636, column: 28, scope: !1890)
!1896 = !DILocation(line: 3636, column: 5, scope: !1890)
!1897 = !DILocation(line: 3638, column: 10, scope: !1643)
!1898 = !DILocation(line: 3639, column: 14, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3639, column: 7)
!1900 = !DILocation(line: 3639, column: 7, scope: !1643)
!1901 = !DILocation(line: 3640, column: 38, scope: !1899)
!1902 = !DILocation(line: 3640, column: 22, scope: !1899)
!1903 = !DILocation(line: 3640, column: 12, scope: !1899)
!1904 = !DILocation(line: 3640, column: 21, scope: !1899)
!1905 = !DILocation(line: 3640, column: 5, scope: !1899)
!1906 = !DILocation(line: 3642, column: 10, scope: !1643)
!1907 = !DILocation(line: 3643, column: 14, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3643, column: 7)
!1909 = !DILocation(line: 3643, column: 7, scope: !1643)
!1910 = !DILocation(line: 3644, column: 49, scope: !1908)
!1911 = !DILocation(line: 3644, column: 24, scope: !1908)
!1912 = !DILocation(line: 3644, column: 12, scope: !1908)
!1913 = !DILocation(line: 3644, column: 23, scope: !1908)
!1914 = !{!1218, !1210, i64 13112}
!1915 = !DILocation(line: 3644, column: 5, scope: !1908)
!1916 = !DILocation(line: 3646, column: 10, scope: !1643)
!1917 = !DILocation(line: 3647, column: 14, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3647, column: 7)
!1919 = !DILocation(line: 3647, column: 7, scope: !1643)
!1920 = !DILocation(line: 0, scope: !1750, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 3648, column: 23, scope: !1918)
!1922 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !1921)
!1923 = !DILocation(line: 3648, column: 12, scope: !1918)
!1924 = !DILocation(line: 3648, column: 22, scope: !1918)
!1925 = !{!1218, !1219, i64 456}
!1926 = !DILocation(line: 3648, column: 5, scope: !1918)
!1927 = !DILocation(line: 3649, column: 10, scope: !1643)
!1928 = !DILocation(line: 3650, column: 14, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3650, column: 7)
!1930 = !DILocation(line: 3650, column: 7, scope: !1643)
!1931 = !DILocation(line: 3651, column: 46, scope: !1929)
!1932 = !DILocation(line: 3651, column: 66, scope: !1929)
!1933 = !DILocation(line: 3651, column: 12, scope: !1929)
!1934 = !DILocation(line: 3651, column: 5, scope: !1929)
!1935 = !DILocation(line: 3652, column: 10, scope: !1643)
!1936 = !DILocation(line: 3653, column: 14, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3653, column: 7)
!1938 = !DILocation(line: 3653, column: 7, scope: !1643)
!1939 = !DILocation(line: 3654, column: 42, scope: !1937)
!1940 = !DILocation(line: 3654, column: 24, scope: !1937)
!1941 = !DILocation(line: 3654, column: 12, scope: !1937)
!1942 = !DILocation(line: 3654, column: 23, scope: !1937)
!1943 = !{!1218, !1210, i64 24}
!1944 = !DILocation(line: 3654, column: 5, scope: !1937)
!1945 = !DILocation(line: 3656, column: 10, scope: !1643)
!1946 = !DILocation(line: 3657, column: 14, scope: !1658)
!1947 = !DILocation(line: 3657, column: 7, scope: !1643)
!1948 = !DILocation(line: 3662, column: 16, scope: !1657)
!1949 = !DILocation(line: 0, scope: !1657)
!1950 = !DILocation(line: 3663, column: 52, scope: !1657)
!1951 = !DILocation(line: 3663, column: 13, scope: !1657)
!1952 = !DILocation(line: 3664, column: 16, scope: !1657)
!1953 = !DILocation(line: 3665, column: 5, scope: !1657)
!1954 = !DILocation(line: 3666, column: 10, scope: !1643)
!1955 = !DILocation(line: 3667, column: 14, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3667, column: 7)
!1957 = !DILocation(line: 3667, column: 7, scope: !1643)
!1958 = !DILocation(line: 0, scope: !1750, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 3668, column: 20, scope: !1956)
!1960 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !1959)
!1961 = !DILocation(line: 3668, column: 12, scope: !1956)
!1962 = !DILocation(line: 3668, column: 19, scope: !1956)
!1963 = !DILocation(line: 3668, column: 5, scope: !1956)
!1964 = !DILocation(line: 3669, column: 10, scope: !1643)
!1965 = !DILocation(line: 3670, column: 14, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3670, column: 7)
!1967 = !DILocation(line: 3670, column: 7, scope: !1643)
!1968 = !DILocation(line: 3672, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !1075, line: 3671, column: 5)
!1970 = !DILocation(line: 3673, column: 55, scope: !1969)
!1971 = !DILocation(line: 3673, column: 14, scope: !1969)
!1972 = !DILocation(line: 3673, column: 40, scope: !1969)
!1973 = !DILocation(line: 3674, column: 55, scope: !1969)
!1974 = !DILocation(line: 3674, column: 39, scope: !1969)
!1975 = !DILocation(line: 3675, column: 18, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !1075, line: 3675, column: 11)
!1977 = !DILocation(line: 3675, column: 32, scope: !1976)
!1978 = !DILocation(line: 3675, column: 11, scope: !1969)
!1979 = !DILocation(line: 0, scope: !1969)
!1980 = !DILocation(line: 3678, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3678, column: 7)
!1982 = !DILocation(line: 3678, column: 27, scope: !1981)
!1983 = !DILocation(line: 3678, column: 7, scope: !1643)
!1984 = !DILocation(line: 3679, column: 12, scope: !1981)
!1985 = !DILocation(line: 3679, column: 19, scope: !1981)
!1986 = !DILocation(line: 3679, column: 5, scope: !1981)
!1987 = !DILocation(line: 3680, column: 10, scope: !1643)
!1988 = !DILocation(line: 3681, column: 14, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3681, column: 7)
!1990 = !DILocation(line: 3681, column: 7, scope: !1643)
!1991 = !DILocation(line: 0, scope: !1750, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 3682, column: 18, scope: !1989)
!1993 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !1992)
!1994 = !DILocation(line: 3682, column: 12, scope: !1989)
!1995 = !DILocation(line: 3682, column: 17, scope: !1989)
!1996 = !{!1218, !1219, i64 432}
!1997 = !DILocation(line: 3682, column: 5, scope: !1989)
!1998 = !DILocation(line: 3683, column: 10, scope: !1643)
!1999 = !DILocation(line: 3684, column: 14, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3684, column: 7)
!2001 = !DILocation(line: 3684, column: 7, scope: !1643)
!2002 = !DILocation(line: 3685, column: 38, scope: !2000)
!2003 = !DILocation(line: 3685, column: 18, scope: !2000)
!2004 = !DILocation(line: 3685, column: 12, scope: !2000)
!2005 = !DILocation(line: 3685, column: 17, scope: !2000)
!2006 = !{!1218, !1210, i64 28}
!2007 = !DILocation(line: 3685, column: 5, scope: !2000)
!2008 = !DILocation(line: 3687, column: 10, scope: !1643)
!2009 = !DILocation(line: 3688, column: 14, scope: !1661)
!2010 = !DILocation(line: 3688, column: 7, scope: !1643)
!2011 = !DILocation(line: 3693, column: 16, scope: !1660)
!2012 = !DILocation(line: 0, scope: !1660)
!2013 = !DILocation(line: 3694, column: 52, scope: !1660)
!2014 = !DILocation(line: 3694, column: 13, scope: !1660)
!2015 = !DILocation(line: 3695, column: 16, scope: !1660)
!2016 = !DILocation(line: 3696, column: 5, scope: !1660)
!2017 = !DILocation(line: 3697, column: 10, scope: !1643)
!2018 = !DILocation(line: 3698, column: 14, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3698, column: 7)
!2020 = !DILocation(line: 3698, column: 7, scope: !1643)
!2021 = !DILocation(line: 3699, column: 46, scope: !2019)
!2022 = !DILocation(line: 3700, column: 15, scope: !2019)
!2023 = !DILocation(line: 3699, column: 12, scope: !2019)
!2024 = !DILocation(line: 3699, column: 5, scope: !2019)
!2025 = !DILocation(line: 3701, column: 10, scope: !1643)
!2026 = !DILocation(line: 3702, column: 14, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3702, column: 7)
!2028 = !DILocation(line: 3702, column: 7, scope: !1643)
!2029 = !DILocation(line: 3703, column: 29, scope: !2027)
!2030 = !DILocation(line: 3703, column: 17, scope: !2027)
!2031 = !DILocation(line: 3703, column: 12, scope: !2027)
!2032 = !DILocation(line: 3703, column: 16, scope: !2027)
!2033 = !{!1218, !1210, i64 13184}
!2034 = !DILocation(line: 3703, column: 5, scope: !2027)
!2035 = !DILocation(line: 3705, column: 10, scope: !1643)
!2036 = !DILocation(line: 3706, column: 14, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3706, column: 7)
!2038 = !DILocation(line: 3706, column: 7, scope: !1643)
!2039 = !DILocation(line: 3707, column: 28, scope: !2037)
!2040 = !DILocation(line: 3707, column: 11, scope: !2037)
!2041 = !DILocation(line: 3707, column: 5, scope: !2037)
!2042 = !DILocation(line: 3710, column: 25, scope: !2037)
!2043 = !DILocation(line: 0, scope: !2037)
!2044 = !DILocation(line: 3711, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3711, column: 7)
!2046 = !DILocation(line: 3711, column: 7, scope: !1643)
!2047 = !DILocation(line: 3713, column: 18, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1075, line: 3713, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !1075, line: 3712, column: 5)
!2050 = !DILocation(line: 3713, column: 24, scope: !2048)
!2051 = !DILocation(line: 3713, column: 11, scope: !2049)
!2052 = !DILocation(line: 3714, column: 9, scope: !2048)
!2053 = !DILocation(line: 3718, column: 23, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !1075, line: 3718, column: 17)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !1075, line: 3717, column: 11)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !1075, line: 3715, column: 9)
!2057 = !DILocation(line: 3718, column: 17, scope: !2055)
!2058 = !DILocation(line: 3720, column: 24, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !1075, line: 3719, column: 15)
!2060 = !DILocation(line: 3720, column: 36, scope: !2059)
!2061 = !DILocation(line: 3721, column: 24, scope: !2059)
!2062 = !DILocation(line: 3721, column: 36, scope: !2059)
!2063 = !{!1218, !1223, i64 272}
!2064 = !DILocation(line: 3722, column: 15, scope: !2059)
!2065 = !DILocation(line: 3727, column: 23, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1075, line: 3727, column: 17)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !1075, line: 3726, column: 11)
!2068 = !DILocation(line: 3727, column: 17, scope: !2067)
!2069 = !DILocation(line: 3730, column: 26, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !1075, line: 3728, column: 15)
!2071 = !DILocation(line: 3730, column: 38, scope: !2070)
!2072 = !DILocation(line: 3729, column: 47, scope: !2070)
!2073 = !DILocation(line: 3729, column: 37, scope: !2070)
!2074 = !DILocation(line: 3730, column: 44, scope: !2070)
!2075 = !DILocation(line: 3729, column: 36, scope: !2070)
!2076 = !DILocation(line: 3732, column: 26, scope: !2070)
!2077 = !DILocation(line: 3732, column: 38, scope: !2070)
!2078 = !DILocation(line: 3731, column: 47, scope: !2070)
!2079 = !DILocation(line: 3731, column: 37, scope: !2070)
!2080 = !DILocation(line: 3732, column: 44, scope: !2070)
!2081 = !DILocation(line: 3731, column: 36, scope: !2070)
!2082 = !DILocation(line: 3733, column: 15, scope: !2070)
!2083 = !DILocation(line: 3739, column: 19, scope: !2049)
!2084 = !DILocation(line: 3740, column: 5, scope: !2049)
!2085 = !DILocation(line: 3741, column: 10, scope: !1643)
!2086 = !DILocation(line: 3742, column: 14, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3742, column: 7)
!2088 = !DILocation(line: 3742, column: 7, scope: !1643)
!2089 = !DILocation(line: 3744, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !1075, line: 3743, column: 5)
!2091 = !DILocation(line: 3745, column: 55, scope: !2090)
!2092 = !DILocation(line: 3745, column: 27, scope: !2090)
!2093 = !DILocation(line: 3745, column: 40, scope: !2090)
!2094 = !DILocation(line: 3746, column: 55, scope: !2090)
!2095 = !DILocation(line: 3746, column: 39, scope: !2090)
!2096 = !DILocation(line: 3747, column: 18, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2090, file: !1075, line: 3747, column: 11)
!2098 = !DILocation(line: 3747, column: 32, scope: !2097)
!2099 = !DILocation(line: 3747, column: 11, scope: !2090)
!2100 = !DILocation(line: 0, scope: !2090)
!2101 = !DILocation(line: 3750, column: 3, scope: !1643)
!2102 = !DILocation(line: 3751, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1643, file: !1075, line: 3751, column: 3)
!2104 = !DILocation(line: 3751, column: 54, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !1075, line: 3751, column: 3)
!2106 = !DILocation(line: 3751, column: 3, scope: !2103)
!2107 = !DILocation(line: 3753, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !1075, line: 3752, column: 3)
!2109 = !DILocation(line: 3754, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !1075, line: 3754, column: 9)
!2111 = !DILocation(line: 3754, column: 9, scope: !2108)
!2112 = !DILocation(line: 3756, column: 16, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !1075, line: 3755, column: 7)
!2114 = !DILocation(line: 3757, column: 16, scope: !2113)
!2115 = !DILocation(line: 3758, column: 7, scope: !2113)
!2116 = !DILocation(line: 3759, column: 12, scope: !2108)
!2117 = distinct !{!2117, !2106, !2118, !2119, !2120}
!2118 = !DILocation(line: 3760, column: 3, scope: !2103)
!2119 = !{!"llvm.loop.mustprogress"}
!2120 = !{!"llvm.loop.unroll.disable"}
!2121 = !DILocation(line: 3762, column: 1, scope: !1643)
!2122 = !DILocation(line: 3761, column: 3, scope: !1643)
!2123 = !DISubprogram(name: "GetImageOption", scope: !500, file: !500, line: 158, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!768, !1019, !768}
!2126 = !DISubprogram(name: "ParseCommandOption", scope: !500, file: !500, line: 172, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!699, !2129, !1627, !768}
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !500, line: 99, baseType: !499)
!2131 = distinct !DISubprogram(name: "AcquireImageInfo", scope: !1075, file: !1075, line: 329, type: !2132, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!856}
!2134 = !{!2135, !2136, !2139}
!2135 = !DILocalVariable(name: "image_info", scope: !2131, file: !1075, line: 332, type: !856)
!2136 = !DILocalVariable(name: "message", scope: !2137, file: !1075, line: 336, type: !694)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !1075, line: 336, column: 5)
!2138 = distinct !DILexicalBlock(scope: !2131, file: !1075, line: 335, column: 7)
!2139 = !DILocalVariable(name: "exception", scope: !2137, file: !1075, line: 336, type: !796)
!2140 = !DILocation(line: 334, column: 28, scope: !2131)
!2141 = !DILocation(line: 0, scope: !2131)
!2142 = !DILocation(line: 335, column: 18, scope: !2138)
!2143 = !DILocation(line: 335, column: 7, scope: !2131)
!2144 = !DILocation(line: 336, column: 5, scope: !2137)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 337, column: 3, scope: !2131)
!2147 = !DILocation(line: 338, column: 3, scope: !2131)
!2148 = distinct !DISubprogram(name: "GetImageInfo", scope: !1075, file: !1075, line: 1269, type: !2149, scopeLine: 1270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !856}
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "image_info", arg: 1, scope: !2148, file: !1075, line: 1269, type: !856)
!2153 = !DILocalVariable(name: "synchronize", scope: !2148, file: !1075, line: 1272, type: !694)
!2154 = !DILocalVariable(name: "exception", scope: !2148, file: !1075, line: 1275, type: !1021)
!2155 = !DILocation(line: 0, scope: !2148)
!2156 = !DILocation(line: 1280, column: 10, scope: !2148)
!2157 = !DILocation(line: 1282, column: 10, scope: !2148)
!2158 = !DILocation(line: 1283, column: 15, scope: !2148)
!2159 = !DILocation(line: 1283, column: 21, scope: !2148)
!2160 = !{!1339, !1210, i64 12}
!2161 = !DILocation(line: 1284, column: 15, scope: !2148)
!2162 = !DILocation(line: 1284, column: 24, scope: !2148)
!2163 = !DILocation(line: 1285, column: 15, scope: !2148)
!2164 = !DILocation(line: 1285, column: 22, scope: !2148)
!2165 = !{!1339, !1210, i64 248}
!2166 = !DILocation(line: 1286, column: 15, scope: !2148)
!2167 = !DILocation(line: 1286, column: 22, scope: !2148)
!2168 = !DILocation(line: 1287, column: 15, scope: !2148)
!2169 = !DILocation(line: 1287, column: 24, scope: !2148)
!2170 = !{!1339, !1210, i64 20}
!2171 = !DILocation(line: 1288, column: 15, scope: !2148)
!2172 = !DILocation(line: 1288, column: 21, scope: !2148)
!2173 = !DILocation(line: 1289, column: 15, scope: !2148)
!2174 = !DILocation(line: 1290, column: 19, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2148, file: !1075, line: 1290, column: 7)
!2176 = !DILocation(line: 1290, column: 7, scope: !2148)
!2177 = !DILocation(line: 1292, column: 31, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !1075, line: 1291, column: 5)
!2179 = !DILocation(line: 1292, column: 19, scope: !2178)
!2180 = !DILocation(line: 1292, column: 30, scope: !2178)
!2181 = !{!1339, !1210, i64 16784}
!2182 = !DILocation(line: 1293, column: 19, scope: !2178)
!2183 = !DILocation(line: 1294, column: 5, scope: !2178)
!2184 = !DILocation(line: 1295, column: 13, scope: !2148)
!2185 = !DILocation(line: 1296, column: 58, scope: !2148)
!2186 = !DILocation(line: 1296, column: 10, scope: !2148)
!2187 = !DILocation(line: 1298, column: 54, scope: !2148)
!2188 = !DILocation(line: 1298, column: 10, scope: !2148)
!2189 = !DILocation(line: 1299, column: 53, scope: !2148)
!2190 = !DILocation(line: 1299, column: 10, scope: !2148)
!2191 = !DILocation(line: 1300, column: 59, scope: !2148)
!2192 = !DILocation(line: 1300, column: 10, scope: !2148)
!2193 = !DILocation(line: 1302, column: 13, scope: !2148)
!2194 = !DILocation(line: 1303, column: 21, scope: !2148)
!2195 = !DILocation(line: 1303, column: 15, scope: !2148)
!2196 = !DILocation(line: 1303, column: 20, scope: !2148)
!2197 = !{!1339, !1210, i64 16712}
!2198 = !DILocation(line: 1304, column: 15, scope: !2148)
!2199 = !DILocation(line: 1304, column: 24, scope: !2148)
!2200 = !{!1339, !1219, i64 16752}
!2201 = !DILocation(line: 1305, column: 1, scope: !2148)
!2202 = distinct !DISubprogram(name: "AcquireNextImage", scope: !1075, file: !1075, line: 369, type: !2203, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !1019, !635}
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "image_info", arg: 1, scope: !2202, file: !1075, line: 369, type: !1019)
!2207 = !DILocalVariable(name: "image", arg: 2, scope: !2202, file: !1075, line: 369, type: !635)
!2208 = !DILocation(line: 0, scope: !2202)
!2209 = !DILocation(line: 376, column: 14, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !1075, line: 376, column: 7)
!2211 = !DILocation(line: 376, column: 20, scope: !2210)
!2212 = !DILocation(line: 376, column: 7, scope: !2202)
!2213 = !DILocation(line: 377, column: 68, scope: !2210)
!2214 = !DILocation(line: 377, column: 12, scope: !2210)
!2215 = !DILocation(line: 377, column: 5, scope: !2210)
!2216 = !DILocation(line: 378, column: 15, scope: !2202)
!2217 = !DILocation(line: 378, column: 10, scope: !2202)
!2218 = !DILocation(line: 378, column: 14, scope: !2202)
!2219 = !{!1218, !1220, i64 13104}
!2220 = !DILocation(line: 379, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2202, file: !1075, line: 379, column: 7)
!2222 = !DILocation(line: 379, column: 33, scope: !2221)
!2223 = !DILocation(line: 379, column: 7, scope: !2202)
!2224 = !DILocation(line: 381, column: 27, scope: !2202)
!2225 = !DILocation(line: 381, column: 54, scope: !2202)
!2226 = !DILocation(line: 381, column: 70, scope: !2202)
!2227 = !DILocation(line: 381, column: 10, scope: !2202)
!2228 = !DILocation(line: 383, column: 18, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2202, file: !1075, line: 383, column: 7)
!2230 = !DILocation(line: 383, column: 7, scope: !2202)
!2231 = !DILocation(line: 384, column: 29, scope: !2229)
!2232 = !DILocation(line: 384, column: 56, scope: !2229)
!2233 = !DILocation(line: 385, column: 19, scope: !2229)
!2234 = !DILocation(line: 384, column: 12, scope: !2229)
!2235 = !DILocation(line: 384, column: 5, scope: !2229)
!2236 = !DILocation(line: 386, column: 15, scope: !2202)
!2237 = !DILocation(line: 386, column: 3, scope: !2202)
!2238 = !DILocation(line: 387, column: 42, scope: !2202)
!2239 = !DILocation(line: 387, column: 21, scope: !2202)
!2240 = !DILocation(line: 387, column: 10, scope: !2202)
!2241 = !DILocation(line: 387, column: 16, scope: !2202)
!2242 = !DILocation(line: 387, column: 20, scope: !2202)
!2243 = !DILocation(line: 388, column: 30, scope: !2202)
!2244 = !DILocation(line: 388, column: 16, scope: !2202)
!2245 = !DILocation(line: 388, column: 22, scope: !2202)
!2246 = !DILocation(line: 389, column: 29, scope: !2202)
!2247 = !DILocation(line: 389, column: 34, scope: !2202)
!2248 = !DILocation(line: 389, column: 16, scope: !2202)
!2249 = !DILocation(line: 389, column: 21, scope: !2202)
!2250 = !DILocation(line: 390, column: 16, scope: !2202)
!2251 = !DILocation(line: 390, column: 24, scope: !2202)
!2252 = !{!1218, !1220, i64 13088}
!2253 = !DILocation(line: 391, column: 1, scope: !2202)
!2254 = !DISubprogram(name: "GetNextImageInList", scope: !2255, file: !2255, line: 33, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2255 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!635, !912}
!2258 = !DISubprogram(name: "DestroyBlob", scope: !1624, file: !1624, line: 68, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !635}
!2261 = !DISubprogram(name: "ReferenceBlob", scope: !624, file: !624, line: 63, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!784, !784}
!2264 = distinct !DISubprogram(name: "AppendImages", scope: !1075, file: !1075, line: 425, type: !2265, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!635, !912, !1627, !1021}
!2267 = !{!2268, !2269, !2270, !2271, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2291, !2292, !2293, !2297, !2299, !2301, !2303, !2305}
!2268 = !DILocalVariable(name: "images", arg: 1, scope: !2264, file: !1075, line: 425, type: !912)
!2269 = !DILocalVariable(name: "stack", arg: 2, scope: !2264, file: !1075, line: 426, type: !1627)
!2270 = !DILocalVariable(name: "exception", arg: 3, scope: !2264, file: !1075, line: 426, type: !1021)
!2271 = !DILocalVariable(name: "append_view", scope: !2264, file: !1075, line: 431, type: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !426, line: 50, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !328, line: 160, flags: DIFlagFwdDecl)
!2275 = !DILocalVariable(name: "append_image", scope: !2264, file: !1075, line: 434, type: !635)
!2276 = !DILocalVariable(name: "matte", scope: !2264, file: !1075, line: 437, type: !651)
!2277 = !DILocalVariable(name: "status", scope: !2264, file: !1075, line: 438, type: !651)
!2278 = !DILocalVariable(name: "n", scope: !2264, file: !1075, line: 441, type: !771)
!2279 = !DILocalVariable(name: "geometry", scope: !2264, file: !1075, line: 444, type: !707)
!2280 = !DILocalVariable(name: "next", scope: !2264, file: !1075, line: 447, type: !912)
!2281 = !DILocalVariable(name: "height", scope: !2264, file: !1075, line: 450, type: !646)
!2282 = !DILocalVariable(name: "number_images", scope: !2264, file: !1075, line: 451, type: !646)
!2283 = !DILocalVariable(name: "width", scope: !2264, file: !1075, line: 452, type: !646)
!2284 = !DILocalVariable(name: "x_offset", scope: !2264, file: !1075, line: 455, type: !699)
!2285 = !DILocalVariable(name: "y", scope: !2264, file: !1075, line: 456, type: !699)
!2286 = !DILocalVariable(name: "y_offset", scope: !2264, file: !1075, line: 457, type: !699)
!2287 = !DILocalVariable(name: "image_view", scope: !2288, file: !1075, line: 511, type: !2272)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !1075, line: 509, column: 3)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !1075, line: 508, column: 3)
!2290 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 508, column: 3)
!2291 = !DILocalVariable(name: "image", scope: !2288, file: !1075, line: 514, type: !635)
!2292 = !DILocalVariable(name: "proceed", scope: !2288, file: !1075, line: 517, type: !651)
!2293 = !DILocalVariable(name: "sync", scope: !2294, file: !1075, line: 539, type: !651)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !1075, line: 537, column: 5)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !1075, line: 536, column: 5)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 536, column: 5)
!2297 = !DILocalVariable(name: "indexes", scope: !2294, file: !1075, line: 542, type: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !992)
!2299 = !DILocalVariable(name: "p", scope: !2294, file: !1075, line: 545, type: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !988)
!2301 = !DILocalVariable(name: "append_indexes", scope: !2294, file: !1075, line: 548, type: !2302)
!2302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !990)
!2303 = !DILocalVariable(name: "q", scope: !2294, file: !1075, line: 551, type: !2304)
!2304 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !658)
!2305 = !DILocalVariable(name: "x", scope: !2294, file: !1075, line: 554, type: !699)
!2306 = !DILocation(line: 0, scope: !2264)
!2307 = !DILocation(line: 443, column: 3, scope: !2264)
!2308 = !DILocation(line: 444, column: 5, scope: !2264)
!2309 = !DILocation(line: 464, column: 15, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 464, column: 7)
!2311 = !DILocation(line: 464, column: 21, scope: !2310)
!2312 = !DILocation(line: 464, column: 7, scope: !2264)
!2313 = !DILocation(line: 465, column: 69, scope: !2310)
!2314 = !DILocation(line: 465, column: 12, scope: !2310)
!2315 = !DILocation(line: 465, column: 5, scope: !2310)
!2316 = !DILocation(line: 468, column: 17, scope: !2264)
!2317 = !{!1218, !1210, i64 32}
!2318 = !DILocation(line: 470, column: 17, scope: !2264)
!2319 = !DILocation(line: 471, column: 18, scope: !2264)
!2320 = !DILocation(line: 472, column: 8, scope: !2264)
!2321 = !DILocation(line: 473, column: 16, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !1075, line: 473, column: 3)
!2323 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 473, column: 3)
!2324 = !DILocation(line: 473, column: 3, scope: !2323)
!2325 = !DILocation(line: 478, column: 9, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !1075, line: 474, column: 3)
!2327 = !DILocation(line: 475, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2326, file: !1075, line: 475, column: 9)
!2329 = !DILocation(line: 475, column: 21, scope: !2328)
!2330 = !DILocation(line: 475, column: 9, scope: !2326)
!2331 = !DILocation(line: 477, column: 18, scope: !2326)
!2332 = !DILocation(line: 485, column: 18, scope: !2326)
!2333 = !DILocation(line: 485, column: 10, scope: !2326)
!2334 = !DILocation(line: 486, column: 15, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2326, file: !1075, line: 486, column: 9)
!2336 = !DILocation(line: 486, column: 9, scope: !2326)
!2337 = !DILocation(line: 473, column: 40, scope: !2322)
!2338 = distinct !{!2338, !2324, !2339, !2119, !2120}
!2339 = !DILocation(line: 488, column: 3, scope: !2323)
!2340 = !DILocation(line: 480, column: 19, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !1075, line: 480, column: 13)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !1075, line: 479, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2326, file: !1075, line: 478, column: 9)
!2344 = !DILocation(line: 480, column: 13, scope: !2342)
!2345 = !DILocation(line: 482, column: 23, scope: !2342)
!2346 = !DILocation(line: 482, column: 15, scope: !2342)
!2347 = !DILocation(line: 492, column: 16, scope: !2264)
!2348 = !DILocation(line: 493, column: 20, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 493, column: 7)
!2350 = !DILocation(line: 493, column: 7, scope: !2264)
!2351 = !DILocalVariable(name: "image", arg: 1, scope: !2352, file: !1075, line: 2354, type: !635)
!2352 = distinct !DISubprogram(name: "SetImageStorageClass", scope: !1075, file: !1075, line: 2354, type: !2353, scopeLine: 2356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!651, !635, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!2356 = !{!2351, !2357}
!2357 = !DILocalVariable(name: "storage_class", arg: 2, scope: !2352, file: !1075, line: 2355, type: !2355)
!2358 = !DILocation(line: 0, scope: !2352, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 495, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 495, column: 7)
!2361 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !2359)
!2362 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !2359)
!2363 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !2359)
!2364 = !DILocation(line: 495, column: 54, scope: !2360)
!2365 = !DILocation(line: 495, column: 7, scope: !2264)
!2366 = !DILocation(line: 497, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !1075, line: 496, column: 5)
!2368 = !DILocation(line: 498, column: 20, scope: !2367)
!2369 = !DILocation(line: 499, column: 7, scope: !2367)
!2370 = !DILocation(line: 501, column: 17, scope: !2264)
!2371 = !DILocation(line: 501, column: 22, scope: !2264)
!2372 = !DILocation(line: 502, column: 10, scope: !2264)
!2373 = !DILocation(line: 507, column: 15, scope: !2264)
!2374 = !DILocation(line: 508, column: 15, scope: !2289)
!2375 = !DILocation(line: 508, column: 3, scope: !2290)
!2376 = !DILocation(line: 603, column: 15, scope: !2264)
!2377 = !DILocation(line: 604, column: 7, scope: !2264)
!2378 = !DILocation(line: 519, column: 11, scope: !2288)
!2379 = !DILocation(line: 0, scope: !2288)
!2380 = !DILocation(line: 520, column: 15, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 520, column: 9)
!2382 = !DILocation(line: 520, column: 9, scope: !2288)
!2383 = distinct !{!2383, !2375, !2384, !2119, !2120}
!2384 = !DILocation(line: 602, column: 3, scope: !2290)
!2385 = !DILocation(line: 522, column: 57, scope: !2288)
!2386 = !DILocation(line: 522, column: 12, scope: !2288)
!2387 = !DILocation(line: 523, column: 16, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 523, column: 9)
!2389 = !DILocation(line: 523, column: 9, scope: !2288)
!2390 = !DILocation(line: 525, column: 5, scope: !2288)
!2391 = !DILocation(line: 526, column: 34, scope: !2288)
!2392 = !DILocation(line: 526, column: 49, scope: !2288)
!2393 = !DILocation(line: 526, column: 61, scope: !2288)
!2394 = !DILocation(line: 526, column: 5, scope: !2288)
!2395 = !DILocation(line: 527, column: 9, scope: !2288)
!2396 = !DILocation(line: 528, column: 26, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 527, column: 9)
!2398 = !{!1226, !1219, i64 16}
!2399 = !DILocation(line: 528, column: 15, scope: !2397)
!2400 = !DILocation(line: 528, column: 7, scope: !2397)
!2401 = !DILocation(line: 530, column: 26, scope: !2397)
!2402 = !{!1226, !1219, i64 24}
!2403 = !DILocation(line: 530, column: 15, scope: !2397)
!2404 = !DILocation(line: 531, column: 16, scope: !2288)
!2405 = !DILocation(line: 536, column: 36, scope: !2295)
!2406 = !DILocation(line: 536, column: 17, scope: !2295)
!2407 = !DILocation(line: 536, column: 5, scope: !2296)
!2408 = !DILocation(line: 556, column: 18, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2294, file: !1075, line: 556, column: 11)
!2410 = !DILocation(line: 556, column: 11, scope: !2294)
!2411 = !DILocation(line: 558, column: 57, scope: !2294)
!2412 = !DILocation(line: 558, column: 9, scope: !2294)
!2413 = !DILocation(line: 0, scope: !2294)
!2414 = !DILocation(line: 559, column: 61, scope: !2294)
!2415 = !DILocation(line: 560, column: 16, scope: !2294)
!2416 = !DILocation(line: 559, column: 9, scope: !2294)
!2417 = !DILocation(line: 561, column: 14, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2294, file: !1075, line: 561, column: 11)
!2419 = !DILocation(line: 561, column: 45, scope: !2418)
!2420 = !DILocation(line: 566, column: 15, scope: !2294)
!2421 = !DILocation(line: 567, column: 22, scope: !2294)
!2422 = !DILocation(line: 568, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !1075, line: 568, column: 7)
!2424 = distinct !DILexicalBlock(scope: !2294, file: !1075, line: 568, column: 7)
!2425 = !DILocation(line: 568, column: 7, scope: !2424)
!2426 = !DILocation(line: 576, column: 51, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !1075, line: 576, column: 13)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !1075, line: 569, column: 7)
!2429 = !DILocation(line: 576, column: 13, scope: !2428)
!2430 = !DILocation(line: 570, column: 9, scope: !2428)
!2431 = !{!1221, !1222, i64 4}
!2432 = !DILocation(line: 571, column: 9, scope: !2428)
!2433 = !{!1221, !1222, i64 2}
!2434 = !DILocation(line: 572, column: 9, scope: !2428)
!2435 = !{!1221, !1222, i64 0}
!2436 = !DILocation(line: 573, column: 9, scope: !2428)
!2437 = !{!1221, !1222, i64 6}
!2438 = !DILocation(line: 574, column: 13, scope: !2428)
!2439 = !DILocation(line: 575, column: 11, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !1075, line: 574, column: 13)
!2441 = !DILocation(line: 578, column: 11, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !1075, line: 578, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2427, file: !1075, line: 578, column: 11)
!2444 = !DILocation(line: 578, column: 11, scope: !2443)
!2445 = !{!1222, !1222, i64 0}
!2446 = !DILocation(line: 579, column: 10, scope: !2428)
!2447 = !DILocation(line: 580, column: 10, scope: !2428)
!2448 = !DILocation(line: 568, column: 48, scope: !2423)
!2449 = distinct !{!2449, !2425, !2450, !2119, !2120}
!2450 = !DILocation(line: 581, column: 7, scope: !2424)
!2451 = !DILocation(line: 582, column: 12, scope: !2294)
!2452 = !DILocation(line: 583, column: 16, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2294, file: !1075, line: 583, column: 11)
!2454 = !DILocation(line: 583, column: 11, scope: !2294)
!2455 = !DILocation(line: 585, column: 5, scope: !2295)
!2456 = !DILocation(line: 536, column: 43, scope: !2295)
!2457 = distinct !{!2457, !2407, !2458, !2119, !2120}
!2458 = !DILocation(line: 585, column: 5, scope: !2296)
!2459 = !DILocation(line: 522, column: 11, scope: !2288)
!2460 = !DILocation(line: 586, column: 16, scope: !2288)
!2461 = !DILocation(line: 587, column: 9, scope: !2288)
!2462 = !DILocation(line: 589, column: 36, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !1075, line: 588, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 587, column: 9)
!2465 = !DILocation(line: 589, column: 17, scope: !2463)
!2466 = !DILocation(line: 591, column: 7, scope: !2463)
!2467 = !DILocation(line: 595, column: 36, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !1075, line: 593, column: 7)
!2469 = !DILocation(line: 595, column: 17, scope: !2468)
!2470 = !DILocation(line: 0, scope: !2464)
!2471 = !DILocation(line: 597, column: 11, scope: !2288)
!2472 = !DILocalVariable(name: "image", arg: 1, scope: !2473, file: !2474, line: 27, type: !912)
!2473 = distinct !DISubprogram(name: "SetImageProgress", scope: !2474, file: !2474, line: 27, type: !2475, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2474 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!651, !912, !768, !770, !773}
!2477 = !{!2472, !2478, !2479, !2480, !2481}
!2478 = !DILocalVariable(name: "tag", arg: 2, scope: !2473, file: !2474, line: 28, type: !768)
!2479 = !DILocalVariable(name: "offset", arg: 3, scope: !2473, file: !2474, line: 28, type: !770)
!2480 = !DILocalVariable(name: "extent", arg: 4, scope: !2473, file: !2474, line: 28, type: !773)
!2481 = !DILocalVariable(name: "message", scope: !2473, file: !2474, line: 31, type: !788)
!2482 = !DILocation(line: 0, scope: !2473, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 598, column: 13, scope: !2288)
!2484 = !DILocation(line: 30, column: 3, scope: !2473, inlinedAt: !2483)
!2485 = !DILocation(line: 31, column: 5, scope: !2473, inlinedAt: !2483)
!2486 = !DILocation(line: 33, column: 14, scope: !2487, inlinedAt: !2483)
!2487 = distinct !DILexicalBlock(scope: !2473, file: !2474, line: 33, column: 7)
!2488 = !DILocation(line: 33, column: 31, scope: !2487, inlinedAt: !2483)
!2489 = !DILocation(line: 33, column: 7, scope: !2473, inlinedAt: !2483)
!2490 = !DILocation(line: 37, column: 1, scope: !2473, inlinedAt: !2483)
!2491 = !DILocation(line: 599, column: 9, scope: !2288)
!2492 = !DILocation(line: 35, column: 10, scope: !2473, inlinedAt: !2483)
!2493 = !DILocation(line: 36, column: 17, scope: !2473, inlinedAt: !2483)
!2494 = !DILocation(line: 36, column: 63, scope: !2473, inlinedAt: !2483)
!2495 = !DILocation(line: 36, column: 10, scope: !2473, inlinedAt: !2483)
!2496 = !DILocation(line: 599, column: 17, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2288, file: !1075, line: 599, column: 9)
!2498 = !DILocation(line: 601, column: 10, scope: !2288)
!2499 = !DILocation(line: 508, column: 52, scope: !2289)
!2500 = !DILocation(line: 503, column: 9, scope: !2264)
!2501 = !DILocation(line: 604, column: 14, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2264, file: !1075, line: 604, column: 7)
!2503 = !DILocation(line: 605, column: 18, scope: !2502)
!2504 = !DILocation(line: 605, column: 5, scope: !2502)
!2505 = !DILocation(line: 607, column: 1, scope: !2264)
!2506 = distinct !DISubprogram(name: "CloneImage", scope: !1075, file: !1075, line: 783, type: !2507, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!635, !912, !916, !916, !1627, !1021}
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2510 = !DILocalVariable(name: "image", arg: 1, scope: !2506, file: !1075, line: 783, type: !912)
!2511 = !DILocalVariable(name: "columns", arg: 2, scope: !2506, file: !1075, line: 783, type: !916)
!2512 = !DILocalVariable(name: "rows", arg: 3, scope: !2506, file: !1075, line: 784, type: !916)
!2513 = !DILocalVariable(name: "detach", arg: 4, scope: !2506, file: !1075, line: 784, type: !1627)
!2514 = !DILocalVariable(name: "exception", arg: 5, scope: !2506, file: !1075, line: 784, type: !1021)
!2515 = !DILocalVariable(name: "scale", scope: !2506, file: !1075, line: 787, type: !672)
!2516 = !DILocalVariable(name: "clone_image", scope: !2506, file: !1075, line: 790, type: !635)
!2517 = !DILocalVariable(name: "length", scope: !2506, file: !1075, line: 793, type: !646)
!2518 = !DILocation(line: 0, scope: !2506)
!2519 = !DILocation(line: 800, column: 14, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 800, column: 7)
!2521 = !DILocation(line: 800, column: 20, scope: !2520)
!2522 = !DILocation(line: 800, column: 7, scope: !2506)
!2523 = !DILocation(line: 801, column: 68, scope: !2520)
!2524 = !DILocation(line: 801, column: 12, scope: !2520)
!2525 = !DILocation(line: 801, column: 5, scope: !2520)
!2526 = !DILocation(line: 804, column: 25, scope: !2506)
!2527 = !DILocation(line: 805, column: 19, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 805, column: 7)
!2529 = !DILocation(line: 805, column: 7, scope: !2506)
!2530 = !DILocation(line: 806, column: 5, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !1075, line: 806, column: 5)
!2532 = !DILocation(line: 807, column: 10, scope: !2506)
!2533 = !DILocation(line: 808, column: 16, scope: !2506)
!2534 = !DILocation(line: 808, column: 25, scope: !2506)
!2535 = !DILocation(line: 809, column: 37, scope: !2506)
!2536 = !DILocation(line: 809, column: 29, scope: !2506)
!2537 = !DILocation(line: 810, column: 32, scope: !2506)
!2538 = !{!1218, !1219, i64 13208}
!2539 = !DILocation(line: 810, column: 16, scope: !2506)
!2540 = !DILocation(line: 810, column: 24, scope: !2506)
!2541 = !DILocation(line: 811, column: 34, scope: !2506)
!2542 = !DILocation(line: 811, column: 16, scope: !2506)
!2543 = !DILocation(line: 811, column: 26, scope: !2506)
!2544 = !DILocation(line: 812, column: 29, scope: !2506)
!2545 = !DILocation(line: 812, column: 16, scope: !2506)
!2546 = !DILocation(line: 812, column: 21, scope: !2506)
!2547 = !DILocation(line: 813, column: 31, scope: !2506)
!2548 = !DILocation(line: 813, column: 16, scope: !2506)
!2549 = !DILocation(line: 813, column: 23, scope: !2506)
!2550 = !DILocation(line: 814, column: 28, scope: !2506)
!2551 = !DILocation(line: 814, column: 16, scope: !2506)
!2552 = !DILocation(line: 814, column: 20, scope: !2506)
!2553 = !DILocation(line: 815, column: 30, scope: !2506)
!2554 = !DILocation(line: 815, column: 16, scope: !2506)
!2555 = !DILocation(line: 815, column: 22, scope: !2506)
!2556 = !DILocation(line: 816, column: 14, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 816, column: 7)
!2558 = !{!1218, !1220, i64 72}
!2559 = !DILocation(line: 816, column: 23, scope: !2557)
!2560 = !DILocation(line: 816, column: 7, scope: !2506)
!2561 = !DILocation(line: 821, column: 34, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !1075, line: 817, column: 5)
!2563 = !DILocation(line: 821, column: 20, scope: !2562)
!2564 = !DILocation(line: 821, column: 26, scope: !2562)
!2565 = !DILocation(line: 822, column: 30, scope: !2562)
!2566 = !DILocation(line: 823, column: 45, scope: !2562)
!2567 = !DILocation(line: 823, column: 20, scope: !2562)
!2568 = !DILocation(line: 823, column: 28, scope: !2562)
!2569 = !DILocation(line: 825, column: 33, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2562, file: !1075, line: 825, column: 11)
!2571 = !DILocation(line: 825, column: 11, scope: !2562)
!2572 = !DILocation(line: 826, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !1075, line: 826, column: 9)
!2574 = !DILocation(line: 827, column: 60, scope: !2562)
!2575 = !DILocation(line: 827, column: 75, scope: !2562)
!2576 = !DILocation(line: 827, column: 14, scope: !2562)
!2577 = !DILocation(line: 829, column: 5, scope: !2562)
!2578 = !DILocation(line: 830, column: 10, scope: !2506)
!2579 = !DILocation(line: 831, column: 10, scope: !2506)
!2580 = !DILocation(line: 832, column: 10, scope: !2506)
!2581 = !DILocation(line: 833, column: 30, scope: !2506)
!2582 = !DILocation(line: 833, column: 3, scope: !2506)
!2583 = !DILocation(line: 834, column: 34, scope: !2506)
!2584 = !DILocation(line: 834, column: 3, scope: !2506)
!2585 = !DILocation(line: 835, column: 52, scope: !2506)
!2586 = !DILocation(line: 835, column: 3, scope: !2506)
!2587 = !DILocation(line: 836, column: 14, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 836, column: 7)
!2589 = !{!1218, !1220, i64 600}
!2590 = !DILocation(line: 836, column: 22, scope: !2588)
!2591 = !DILocation(line: 836, column: 7, scope: !2506)
!2592 = !DILocation(line: 837, column: 5, scope: !2588)
!2593 = !DILocation(line: 838, column: 38, scope: !2506)
!2594 = !{!1218, !1219, i64 12904}
!2595 = !DILocation(line: 838, column: 16, scope: !2506)
!2596 = !DILocation(line: 838, column: 30, scope: !2506)
!2597 = !DILocation(line: 839, column: 35, scope: !2506)
!2598 = !{!1218, !1219, i64 12912}
!2599 = !DILocation(line: 839, column: 16, scope: !2506)
!2600 = !DILocation(line: 839, column: 27, scope: !2506)
!2601 = !DILocation(line: 840, column: 28, scope: !2506)
!2602 = !DILocation(line: 840, column: 16, scope: !2506)
!2603 = !DILocation(line: 840, column: 20, scope: !2506)
!2604 = !DILocation(line: 841, column: 40, scope: !2506)
!2605 = !DILocation(line: 841, column: 63, scope: !2506)
!2606 = !DILocation(line: 841, column: 10, scope: !2506)
!2607 = !DILocation(line: 843, column: 40, scope: !2506)
!2608 = !DILocation(line: 843, column: 54, scope: !2506)
!2609 = !DILocation(line: 843, column: 10, scope: !2506)
!2610 = !DILocation(line: 844, column: 40, scope: !2506)
!2611 = !DILocation(line: 844, column: 56, scope: !2506)
!2612 = !DILocation(line: 844, column: 10, scope: !2506)
!2613 = !DILocation(line: 845, column: 40, scope: !2506)
!2614 = !DILocation(line: 845, column: 16, scope: !2506)
!2615 = !DILocation(line: 845, column: 32, scope: !2506)
!2616 = !DILocation(line: 846, column: 35, scope: !2506)
!2617 = !DILocation(line: 846, column: 16, scope: !2506)
!2618 = !DILocation(line: 846, column: 27, scope: !2506)
!2619 = !DILocation(line: 847, column: 16, scope: !2506)
!2620 = !DILocation(line: 847, column: 31, scope: !2506)
!2621 = !DILocation(line: 848, column: 28, scope: !2506)
!2622 = !DILocation(line: 848, column: 16, scope: !2506)
!2623 = !DILocation(line: 848, column: 20, scope: !2506)
!2624 = !DILocation(line: 849, column: 32, scope: !2506)
!2625 = !DILocation(line: 849, column: 16, scope: !2506)
!2626 = !DILocation(line: 849, column: 24, scope: !2506)
!2627 = !DILocation(line: 850, column: 21, scope: !2506)
!2628 = !DILocation(line: 850, column: 16, scope: !2506)
!2629 = !DILocation(line: 850, column: 20, scope: !2506)
!2630 = !{!1218, !1220, i64 13096}
!2631 = !DILocation(line: 851, column: 26, scope: !2506)
!2632 = !DILocation(line: 851, column: 16, scope: !2506)
!2633 = !DILocation(line: 851, column: 25, scope: !2506)
!2634 = !{!1218, !1220, i64 424}
!2635 = !DILocation(line: 852, column: 21, scope: !2506)
!2636 = !DILocation(line: 852, column: 16, scope: !2506)
!2637 = !DILocation(line: 852, column: 20, scope: !2506)
!2638 = !{!1218, !1220, i64 13128}
!2639 = !DILocation(line: 853, column: 14, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 853, column: 7)
!2641 = !DILocation(line: 853, column: 7, scope: !2506)
!2642 = !DILocation(line: 854, column: 44, scope: !2640)
!2643 = !DILocation(line: 854, column: 23, scope: !2640)
!2644 = !DILocation(line: 854, column: 5, scope: !2640)
!2645 = !DILocation(line: 857, column: 25, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2640, file: !1075, line: 856, column: 5)
!2647 = !DILocation(line: 857, column: 24, scope: !2646)
!2648 = !DILocation(line: 858, column: 29, scope: !2646)
!2649 = !DILocation(line: 858, column: 28, scope: !2646)
!2650 = !DILocation(line: 859, column: 25, scope: !2646)
!2651 = !DILocation(line: 0, scope: !2640)
!2652 = !DILocation(line: 854, column: 18, scope: !2640)
!2653 = !DILocation(line: 854, column: 22, scope: !2640)
!2654 = !DILocation(line: 861, column: 28, scope: !2506)
!2655 = !DILocation(line: 861, column: 16, scope: !2506)
!2656 = !DILocation(line: 861, column: 20, scope: !2506)
!2657 = !DILocation(line: 862, column: 22, scope: !2506)
!2658 = !DILocation(line: 862, column: 16, scope: !2506)
!2659 = !DILocation(line: 862, column: 21, scope: !2506)
!2660 = !DILocation(line: 863, column: 26, scope: !2506)
!2661 = !DILocation(line: 863, column: 16, scope: !2506)
!2662 = !DILocation(line: 863, column: 25, scope: !2506)
!2663 = !DILocation(line: 864, column: 22, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 864, column: 7)
!2665 = !DILocation(line: 866, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !1075, line: 866, column: 11)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !1075, line: 865, column: 5)
!2668 = !{!1218, !1220, i64 232}
!2669 = !DILocation(line: 866, column: 26, scope: !2666)
!2670 = !DILocation(line: 866, column: 11, scope: !2667)
!2671 = !DILocation(line: 867, column: 42, scope: !2666)
!2672 = !DILocation(line: 867, column: 16, scope: !2666)
!2673 = !DILocation(line: 867, column: 9, scope: !2666)
!2674 = !DILocation(line: 868, column: 18, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2667, file: !1075, line: 868, column: 11)
!2676 = !{!1218, !1220, i64 240}
!2677 = !DILocation(line: 868, column: 28, scope: !2675)
!2678 = !DILocation(line: 868, column: 11, scope: !2667)
!2679 = !DILocation(line: 869, column: 42, scope: !2675)
!2680 = !DILocation(line: 869, column: 16, scope: !2675)
!2681 = !DILocation(line: 869, column: 9, scope: !2675)
!2682 = !DILocation(line: 870, column: 18, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2667, file: !1075, line: 870, column: 11)
!2684 = !DILocation(line: 870, column: 28, scope: !2683)
!2685 = !DILocation(line: 870, column: 11, scope: !2667)
!2686 = !DILocation(line: 871, column: 32, scope: !2683)
!2687 = !DILocation(line: 871, column: 31, scope: !2683)
!2688 = !DILocation(line: 871, column: 9, scope: !2683)
!2689 = !DILocation(line: 873, column: 18, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2667, file: !1075, line: 873, column: 11)
!2691 = !DILocation(line: 873, column: 23, scope: !2690)
!2692 = !DILocation(line: 873, column: 11, scope: !2667)
!2693 = !DILocation(line: 874, column: 27, scope: !2690)
!2694 = !DILocation(line: 874, column: 26, scope: !2690)
!2695 = !DILocation(line: 874, column: 9, scope: !2690)
!2696 = !DILocation(line: 875, column: 53, scope: !2667)
!2697 = !DILocation(line: 875, column: 26, scope: !2667)
!2698 = !DILocation(line: 875, column: 20, scope: !2667)
!2699 = !DILocation(line: 875, column: 25, scope: !2667)
!2700 = !DILocation(line: 876, column: 7, scope: !2667)
!2701 = !DILocation(line: 878, column: 26, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2506, file: !1075, line: 878, column: 7)
!2703 = !DILocation(line: 878, column: 16, scope: !2702)
!2704 = !DILocation(line: 878, column: 35, scope: !2702)
!2705 = !DILocation(line: 878, column: 54, scope: !2702)
!2706 = !DILocation(line: 878, column: 44, scope: !2702)
!2707 = !DILocation(line: 878, column: 7, scope: !2506)
!2708 = !DILocation(line: 880, column: 18, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !1075, line: 880, column: 11)
!2710 = distinct !DILexicalBlock(scope: !2702, file: !1075, line: 879, column: 5)
!2711 = !DILocation(line: 880, column: 28, scope: !2709)
!2712 = !DILocation(line: 880, column: 11, scope: !2710)
!2713 = !DILocation(line: 881, column: 32, scope: !2709)
!2714 = !DILocation(line: 881, column: 31, scope: !2709)
!2715 = !DILocation(line: 881, column: 9, scope: !2709)
!2716 = !DILocation(line: 883, column: 18, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !1075, line: 883, column: 11)
!2718 = !DILocation(line: 883, column: 23, scope: !2717)
!2719 = !DILocation(line: 883, column: 11, scope: !2710)
!2720 = !DILocation(line: 884, column: 27, scope: !2717)
!2721 = !DILocation(line: 884, column: 26, scope: !2717)
!2722 = !DILocation(line: 884, column: 9, scope: !2717)
!2723 = !DILocation(line: 886, column: 9, scope: !2506)
!2724 = !DILocation(line: 886, column: 42, scope: !2506)
!2725 = !DILocation(line: 886, column: 26, scope: !2506)
!2726 = !DILocation(line: 886, column: 25, scope: !2506)
!2727 = !DILocation(line: 887, column: 55, scope: !2506)
!2728 = !DILocation(line: 887, column: 60, scope: !2506)
!2729 = !{!1218, !1219, i64 280}
!2730 = !DILocation(line: 887, column: 48, scope: !2506)
!2731 = !DILocation(line: 887, column: 65, scope: !2506)
!2732 = !DILocation(line: 887, column: 36, scope: !2506)
!2733 = !DILocation(line: 887, column: 27, scope: !2506)
!2734 = !DILocation(line: 887, column: 16, scope: !2506)
!2735 = !DILocation(line: 887, column: 26, scope: !2506)
!2736 = !DILocation(line: 888, column: 56, scope: !2506)
!2737 = !{!1218, !1219, i64 296}
!2738 = !DILocation(line: 888, column: 44, scope: !2506)
!2739 = !DILocation(line: 888, column: 57, scope: !2506)
!2740 = !DILocation(line: 888, column: 33, scope: !2506)
!2741 = !DILocation(line: 888, column: 23, scope: !2506)
!2742 = !DILocation(line: 888, column: 21, scope: !2506)
!2743 = !DILocation(line: 888, column: 22, scope: !2506)
!2744 = !DILocation(line: 889, column: 70, scope: !2506)
!2745 = !{!1218, !1219, i64 13152}
!2746 = !DILocation(line: 889, column: 51, scope: !2506)
!2747 = !DILocation(line: 889, column: 71, scope: !2506)
!2748 = !DILocation(line: 889, column: 40, scope: !2506)
!2749 = !DILocation(line: 889, column: 30, scope: !2506)
!2750 = !DILocation(line: 889, column: 28, scope: !2506)
!2751 = !DILocation(line: 889, column: 29, scope: !2506)
!2752 = !DILocation(line: 890, column: 9, scope: !2506)
!2753 = !DILocation(line: 890, column: 39, scope: !2506)
!2754 = !DILocation(line: 890, column: 23, scope: !2506)
!2755 = !DILocation(line: 890, column: 22, scope: !2506)
!2756 = !DILocation(line: 891, column: 61, scope: !2506)
!2757 = !{!1218, !1219, i64 288}
!2758 = !DILocation(line: 891, column: 49, scope: !2506)
!2759 = !DILocation(line: 891, column: 67, scope: !2506)
!2760 = !DILocation(line: 891, column: 37, scope: !2506)
!2761 = !DILocation(line: 891, column: 28, scope: !2506)
!2762 = !DILocation(line: 891, column: 21, scope: !2506)
!2763 = !DILocation(line: 891, column: 27, scope: !2506)
!2764 = !DILocation(line: 892, column: 56, scope: !2506)
!2765 = !{!1218, !1219, i64 304}
!2766 = !DILocation(line: 892, column: 44, scope: !2506)
!2767 = !DILocation(line: 892, column: 57, scope: !2506)
!2768 = !DILocation(line: 892, column: 33, scope: !2506)
!2769 = !DILocation(line: 892, column: 23, scope: !2506)
!2770 = !DILocation(line: 892, column: 21, scope: !2506)
!2771 = !DILocation(line: 892, column: 22, scope: !2506)
!2772 = !DILocation(line: 893, column: 70, scope: !2506)
!2773 = !{!1218, !1219, i64 13160}
!2774 = !DILocation(line: 893, column: 51, scope: !2506)
!2775 = !DILocation(line: 893, column: 71, scope: !2506)
!2776 = !DILocation(line: 893, column: 40, scope: !2506)
!2777 = !DILocation(line: 893, column: 30, scope: !2506)
!2778 = !DILocation(line: 893, column: 28, scope: !2506)
!2779 = !DILocation(line: 893, column: 29, scope: !2506)
!2780 = !DILocation(line: 894, column: 23, scope: !2506)
!2781 = !DILocation(line: 895, column: 20, scope: !2506)
!2782 = !DILocation(line: 896, column: 45, scope: !2506)
!2783 = !DILocation(line: 896, column: 22, scope: !2506)
!2784 = !DILocation(line: 896, column: 16, scope: !2506)
!2785 = !DILocation(line: 896, column: 21, scope: !2506)
!2786 = !DILocation(line: 897, column: 3, scope: !2506)
!2787 = !DILocation(line: 898, column: 1, scope: !2506)
!2788 = !DILocation(line: 0, scope: !2352)
!2789 = !DILocation(line: 2357, column: 23, scope: !2352)
!2790 = !DILocation(line: 2358, column: 44, scope: !2352)
!2791 = !DILocation(line: 2358, column: 10, scope: !2352)
!2792 = !DILocation(line: 2358, column: 3, scope: !2352)
!2793 = !DISubprogram(name: "InheritException", scope: !255, file: !255, line: 167, type: !2794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !1021, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!2798 = distinct !DISubprogram(name: "DestroyImage", scope: !1075, file: !1075, line: 1020, type: !2799, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!635, !635}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "image", arg: 1, scope: !2798, file: !1075, line: 1020, type: !635)
!2803 = !DILocalVariable(name: "destroy", scope: !2798, file: !1075, line: 1023, type: !651)
!2804 = !DILocation(line: 0, scope: !2798)
!2805 = !DILocation(line: 1030, column: 14, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1030, column: 7)
!2807 = !DILocation(line: 1030, column: 20, scope: !2806)
!2808 = !DILocation(line: 1030, column: 7, scope: !2798)
!2809 = !DILocation(line: 1031, column: 68, scope: !2806)
!2810 = !DILocation(line: 1031, column: 12, scope: !2806)
!2811 = !DILocation(line: 1031, column: 5, scope: !2806)
!2812 = !DILocation(line: 1033, column: 28, scope: !2798)
!2813 = !DILocation(line: 1033, column: 3, scope: !2798)
!2814 = !DILocation(line: 1034, column: 10, scope: !2798)
!2815 = !DILocation(line: 1034, column: 25, scope: !2798)
!2816 = !DILocation(line: 1035, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1035, column: 7)
!2818 = !DILocation(line: 1035, column: 30, scope: !2817)
!2819 = !DILocation(line: 1037, column: 30, scope: !2798)
!2820 = !DILocation(line: 1037, column: 3, scope: !2798)
!2821 = !DILocation(line: 1038, column: 7, scope: !2798)
!2822 = !DILocation(line: 1043, column: 3, scope: !2798)
!2823 = !DILocation(line: 1044, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1044, column: 7)
!2825 = !DILocation(line: 1044, column: 24, scope: !2824)
!2826 = !DILocation(line: 1044, column: 7, scope: !2798)
!2827 = !DILocation(line: 1045, column: 22, scope: !2824)
!2828 = !DILocation(line: 1045, column: 21, scope: !2824)
!2829 = !DILocation(line: 1045, column: 5, scope: !2824)
!2830 = !DILocation(line: 1046, column: 14, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1046, column: 7)
!2832 = !DILocation(line: 1046, column: 19, scope: !2831)
!2833 = !DILocation(line: 1046, column: 7, scope: !2798)
!2834 = !DILocation(line: 1047, column: 17, scope: !2831)
!2835 = !DILocation(line: 1047, column: 16, scope: !2831)
!2836 = !DILocation(line: 1047, column: 5, scope: !2831)
!2837 = !DILocation(line: 1048, column: 14, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1048, column: 7)
!2839 = !DILocation(line: 1048, column: 22, scope: !2838)
!2840 = !DILocation(line: 1048, column: 7, scope: !2798)
!2841 = !DILocation(line: 1049, column: 20, scope: !2838)
!2842 = !DILocation(line: 1049, column: 19, scope: !2838)
!2843 = !DILocation(line: 1049, column: 5, scope: !2838)
!2844 = !DILocation(line: 1050, column: 14, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1050, column: 7)
!2846 = !DILocation(line: 1050, column: 24, scope: !2845)
!2847 = !DILocation(line: 1050, column: 7, scope: !2798)
!2848 = !DILocation(line: 1051, column: 22, scope: !2845)
!2849 = !DILocation(line: 1051, column: 21, scope: !2845)
!2850 = !DILocation(line: 1051, column: 5, scope: !2845)
!2851 = !DILocation(line: 1052, column: 14, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1052, column: 7)
!2853 = !DILocation(line: 1052, column: 23, scope: !2852)
!2854 = !DILocation(line: 1052, column: 7, scope: !2798)
!2855 = !DILocation(line: 1053, column: 37, scope: !2852)
!2856 = !DILocation(line: 1053, column: 20, scope: !2852)
!2857 = !DILocation(line: 1053, column: 5, scope: !2852)
!2858 = !DILocation(line: 1054, column: 14, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1054, column: 7)
!2860 = !{!1218, !1220, i64 248}
!2861 = !DILocation(line: 1054, column: 23, scope: !2859)
!2862 = !DILocation(line: 1054, column: 7, scope: !2798)
!2863 = !DILocation(line: 1055, column: 21, scope: !2859)
!2864 = !DILocation(line: 1055, column: 20, scope: !2859)
!2865 = !DILocation(line: 1055, column: 5, scope: !2859)
!2866 = !DILocation(line: 1056, column: 3, scope: !2798)
!2867 = !DILocation(line: 1057, column: 3, scope: !2798)
!2868 = !DILocation(line: 1058, column: 3, scope: !2798)
!2869 = !DILocation(line: 1059, column: 14, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1059, column: 7)
!2871 = !DILocation(line: 1059, column: 22, scope: !2870)
!2872 = !DILocation(line: 1059, column: 7, scope: !2798)
!2873 = !DILocation(line: 1060, column: 36, scope: !2870)
!2874 = !DILocation(line: 1060, column: 19, scope: !2870)
!2875 = !DILocation(line: 1060, column: 5, scope: !2870)
!2876 = !DILocation(line: 1061, column: 3, scope: !2798)
!2877 = !DILocation(line: 1062, column: 39, scope: !2798)
!2878 = !DILocation(line: 1062, column: 10, scope: !2798)
!2879 = !DILocation(line: 1063, column: 14, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1063, column: 7)
!2881 = !DILocation(line: 1063, column: 24, scope: !2880)
!2882 = !DILocation(line: 1063, column: 7, scope: !2798)
!2883 = !DILocation(line: 1064, column: 5, scope: !2880)
!2884 = !DILocation(line: 1065, column: 10, scope: !2798)
!2885 = !DILocation(line: 1065, column: 19, scope: !2798)
!2886 = !DILocation(line: 1066, column: 19, scope: !2798)
!2887 = !DILocation(line: 1067, column: 3, scope: !2798)
!2888 = !DILocation(line: 1068, column: 1, scope: !2798)
!2889 = distinct !DISubprogram(name: "SetImageBackgroundColor", scope: !1075, file: !1075, line: 2126, type: !2890, scopeLine: 2127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!651, !635}
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2912, !2913, !2914, !2918, !2919}
!2893 = !DILocalVariable(name: "image", arg: 1, scope: !2889, file: !1075, line: 2126, type: !635)
!2894 = !DILocalVariable(name: "image_view", scope: !2889, file: !1075, line: 2129, type: !2272)
!2895 = !DILocalVariable(name: "exception", scope: !2889, file: !1075, line: 2132, type: !1021)
!2896 = !DILocalVariable(name: "index", scope: !2889, file: !1075, line: 2135, type: !991)
!2897 = !DILocalVariable(name: "status", scope: !2889, file: !1075, line: 2138, type: !651)
!2898 = !DILocalVariable(name: "background", scope: !2889, file: !1075, line: 2141, type: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !328, line: 127, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !328, line: 104, size: 448, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !2900, file: !328, line: 107, baseType: !640, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !2900, file: !328, line: 110, baseType: !642, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !2900, file: !328, line: 113, baseType: !651, size: 32, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2900, file: !328, line: 116, baseType: !672, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2900, file: !328, line: 119, baseType: !646, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !2900, file: !328, line: 122, baseType: !1069, size: 32, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !2900, file: !328, line: 123, baseType: !1069, size: 32, offset: 288)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !2900, file: !328, line: 124, baseType: !1069, size: 32, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !2900, file: !328, line: 125, baseType: !1069, size: 32, offset: 352)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2900, file: !328, line: 126, baseType: !1069, size: 32, offset: 384)
!2912 = !DILocalVariable(name: "pixel", scope: !2889, file: !1075, line: 2144, type: !659)
!2913 = !DILocalVariable(name: "y", scope: !2889, file: !1075, line: 2147, type: !699)
!2914 = !DILocalVariable(name: "q", scope: !2915, file: !1075, line: 2177, type: !2304)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !1075, line: 2175, column: 3)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !1075, line: 2174, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2174, column: 3)
!2918 = !DILocalVariable(name: "x", scope: !2915, file: !1075, line: 2180, type: !699)
!2919 = !DILocalVariable(name: "indexes", scope: !2920, file: !1075, line: 2195, type: !2302)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !1075, line: 2193, column: 7)
!2921 = distinct !DILexicalBlock(scope: !2915, file: !1075, line: 2192, column: 9)
!2922 = !DILocation(line: 0, scope: !2889)
!2923 = !DILocation(line: 2140, column: 3, scope: !2889)
!2924 = !DILocation(line: 2141, column: 5, scope: !2889)
!2925 = !DILocation(line: 2150, column: 14, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2150, column: 7)
!2927 = !DILocation(line: 2150, column: 20, scope: !2926)
!2928 = !DILocation(line: 2150, column: 7, scope: !2889)
!2929 = !DILocation(line: 2151, column: 12, scope: !2926)
!2930 = !DILocation(line: 2151, column: 5, scope: !2926)
!2931 = !DILocation(line: 0, scope: !2352, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 2153, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2153, column: 7)
!2934 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !2932)
!2935 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !2932)
!2936 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !2932)
!2937 = !DILocation(line: 2153, column: 47, scope: !2933)
!2938 = !DILocation(line: 2153, column: 7, scope: !2889)
!2939 = !DILocation(line: 2155, column: 28, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2155, column: 7)
!2941 = !DILocalVariable(name: "pixel", arg: 1, scope: !2942, file: !2943, line: 158, type: !988)
!2942 = distinct !DISubprogram(name: "IsPixelGray", scope: !2943, file: !2943, line: 158, type: !2944, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2946)
!2943 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!651, !988}
!2946 = !{!2941, !2947, !2948, !2949}
!2947 = !DILocalVariable(name: "blue", scope: !2942, file: !2943, line: 161, type: !1069)
!2948 = !DILocalVariable(name: "green", scope: !2942, file: !2943, line: 162, type: !1069)
!2949 = !DILocalVariable(name: "red", scope: !2942, file: !2943, line: 163, type: !1069)
!2950 = !DILocation(line: 0, scope: !2942, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 2155, column: 8, scope: !2940)
!2952 = !DILocation(line: 165, column: 31, scope: !2942, inlinedAt: !2951)
!2953 = !DILocation(line: 165, column: 7, scope: !2942, inlinedAt: !2951)
!2954 = !DILocation(line: 166, column: 33, scope: !2942, inlinedAt: !2951)
!2955 = !DILocation(line: 166, column: 9, scope: !2942, inlinedAt: !2951)
!2956 = !DILocation(line: 167, column: 32, scope: !2942, inlinedAt: !2951)
!2957 = !DILocation(line: 168, column: 30, scope: !2958, inlinedAt: !2951)
!2958 = distinct !DILexicalBlock(scope: !2942, file: !2943, line: 168, column: 7)
!2959 = !DILocalVariable(name: "x", arg: 1, scope: !2960, file: !2943, line: 111, type: !2963)
!2960 = distinct !DISubprogram(name: "AbsolutePixelValue", scope: !2943, file: !2943, line: 111, type: !2961, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2964)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!1069, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!2964 = !{!2959}
!2965 = !DILocation(line: 0, scope: !2960, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 168, column: 8, scope: !2958, inlinedAt: !2951)
!2967 = !DILocation(line: 113, column: 12, scope: !2960, inlinedAt: !2966)
!2968 = !DILocation(line: 113, column: 10, scope: !2960, inlinedAt: !2966)
!2969 = !DILocation(line: 113, column: 21, scope: !2960, inlinedAt: !2966)
!2970 = !DILocation(line: 168, column: 8, scope: !2958, inlinedAt: !2951)
!2971 = !DILocation(line: 168, column: 38, scope: !2958, inlinedAt: !2951)
!2972 = !DILocation(line: 168, column: 55, scope: !2958, inlinedAt: !2951)
!2973 = !DILocation(line: 167, column: 8, scope: !2942, inlinedAt: !2951)
!2974 = !DILocation(line: 169, column: 32, scope: !2958, inlinedAt: !2951)
!2975 = !DILocation(line: 0, scope: !2960, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 169, column: 8, scope: !2958, inlinedAt: !2951)
!2977 = !DILocation(line: 113, column: 12, scope: !2960, inlinedAt: !2976)
!2978 = !DILocation(line: 113, column: 10, scope: !2960, inlinedAt: !2976)
!2979 = !DILocation(line: 113, column: 21, scope: !2960, inlinedAt: !2976)
!2980 = !DILocation(line: 169, column: 8, scope: !2958, inlinedAt: !2951)
!2981 = !DILocation(line: 169, column: 39, scope: !2958, inlinedAt: !2951)
!2982 = !DILocation(line: 168, column: 7, scope: !2942, inlinedAt: !2951)
!2983 = !DILocation(line: 2156, column: 32, scope: !2940)
!2984 = !DILocalVariable(name: "colorspace", arg: 1, scope: !2985, file: !2986, line: 86, type: !2989)
!2985 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !2986, file: !2986, line: 85, type: !2987, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2986 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!651, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!2990 = !{!2984}
!2991 = !DILocation(line: 0, scope: !2985, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 2156, column: 8, scope: !2940)
!2993 = !DILocation(line: 88, column: 38, scope: !2994, inlinedAt: !2992)
!2994 = distinct !DILexicalBlock(scope: !2985, file: !2986, line: 88, column: 7)
!2995 = !DILocation(line: 2157, column: 12, scope: !2940)
!2996 = !DILocation(line: 2157, column: 5, scope: !2940)
!2997 = !DILocation(line: 2158, column: 32, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2158, column: 7)
!2999 = !{!1218, !1222, i64 86}
!3000 = !DILocation(line: 2158, column: 40, scope: !2998)
!3001 = !DILocation(line: 2158, column: 58, scope: !2998)
!3002 = !DILocation(line: 2159, column: 15, scope: !2998)
!3003 = !DILocation(line: 2159, column: 21, scope: !2998)
!3004 = !DILocation(line: 2158, column: 7, scope: !2889)
!3005 = !DILocation(line: 2160, column: 12, scope: !2998)
!3006 = !DILocation(line: 2160, column: 5, scope: !2998)
!3007 = !DILocation(line: 2161, column: 3, scope: !2889)
!3008 = !DILocalVariable(name: "image", arg: 1, scope: !3009, file: !3010, line: 92, type: !912)
!3009 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !3010, file: !3010, line: 92, type: !3011, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!3010 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !912, !988, !992, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!3014 = !{!3008, !3015, !3016, !3017}
!3015 = !DILocalVariable(name: "color", arg: 2, scope: !3009, file: !3010, line: 93, type: !988)
!3016 = !DILocalVariable(name: "index", arg: 3, scope: !3009, file: !3010, line: 93, type: !992)
!3017 = !DILocalVariable(name: "pixel", arg: 4, scope: !3009, file: !3010, line: 93, type: !3013)
!3018 = !DILocation(line: 0, scope: !3009, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 2162, column: 3, scope: !2889)
!3020 = !DILocation(line: 95, column: 31, scope: !3009, inlinedAt: !3019)
!3021 = !DILocation(line: 95, column: 14, scope: !3009, inlinedAt: !3019)
!3022 = !DILocation(line: 95, column: 10, scope: !3009, inlinedAt: !3019)
!3023 = !DILocation(line: 95, column: 13, scope: !3009, inlinedAt: !3019)
!3024 = !{!3025, !3026, i64 32}
!3025 = !{!"_MagickPixelPacket", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1223, i64 16, !1219, i64 24, !3026, i64 32, !3026, i64 36, !3026, i64 40, !3026, i64 44, !3026, i64 48}
!3026 = !{!"float", !1210, i64 0}
!3027 = !DILocation(line: 96, column: 33, scope: !3009, inlinedAt: !3019)
!3028 = !DILocation(line: 96, column: 16, scope: !3009, inlinedAt: !3019)
!3029 = !DILocation(line: 96, column: 10, scope: !3009, inlinedAt: !3019)
!3030 = !DILocation(line: 96, column: 15, scope: !3009, inlinedAt: !3019)
!3031 = !{!3025, !3026, i64 36}
!3032 = !DILocation(line: 97, column: 32, scope: !3009, inlinedAt: !3019)
!3033 = !DILocation(line: 97, column: 15, scope: !3009, inlinedAt: !3019)
!3034 = !DILocation(line: 97, column: 10, scope: !3009, inlinedAt: !3019)
!3035 = !DILocation(line: 97, column: 14, scope: !3009, inlinedAt: !3019)
!3036 = !{!3025, !3026, i64 40}
!3037 = !DILocation(line: 98, column: 35, scope: !3009, inlinedAt: !3019)
!3038 = !DILocation(line: 98, column: 18, scope: !3009, inlinedAt: !3019)
!3039 = !DILocation(line: 98, column: 10, scope: !3009, inlinedAt: !3019)
!3040 = !DILocation(line: 98, column: 17, scope: !3009, inlinedAt: !3019)
!3041 = !{!3025, !3026, i64 44}
!3042 = !DILocation(line: 2164, column: 14, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2889, file: !1075, line: 2164, column: 7)
!3044 = !DILocation(line: 2164, column: 25, scope: !3043)
!3045 = !DILocation(line: 2164, column: 7, scope: !2889)
!3046 = !DILocalVariable(name: "pixel", arg: 1, scope: !3047, file: !2986, line: 30, type: !3013)
!3047 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !2986, file: !2986, line: 30, type: !3048, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3013}
!3050 = !{!3046, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3051 = !DILocalVariable(name: "black", scope: !3047, file: !2986, line: 33, type: !1069)
!3052 = !DILocalVariable(name: "blue", scope: !3047, file: !2986, line: 34, type: !1069)
!3053 = !DILocalVariable(name: "cyan", scope: !3047, file: !2986, line: 35, type: !1069)
!3054 = !DILocalVariable(name: "green", scope: !3047, file: !2986, line: 36, type: !1069)
!3055 = !DILocalVariable(name: "magenta", scope: !3047, file: !2986, line: 37, type: !1069)
!3056 = !DILocalVariable(name: "red", scope: !3047, file: !2986, line: 38, type: !1069)
!3057 = !DILocalVariable(name: "yellow", scope: !3047, file: !2986, line: 39, type: !1069)
!3058 = !DILocation(line: 0, scope: !3047, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 2165, column: 5, scope: !3043)
!3060 = !DILocation(line: 41, column: 14, scope: !3061, inlinedAt: !3059)
!3061 = distinct !DILexicalBlock(scope: !3047, file: !2986, line: 41, column: 7)
!3062 = !{!3025, !1210, i64 4}
!3063 = !DILocation(line: 41, column: 25, scope: !3061, inlinedAt: !3059)
!3064 = !DILocation(line: 41, column: 7, scope: !3047, inlinedAt: !3059)
!3065 = !DILocation(line: 43, column: 24, scope: !3066, inlinedAt: !3059)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !2986, line: 42, column: 5)
!3067 = !DILocation(line: 43, column: 23, scope: !3066, inlinedAt: !3059)
!3068 = !DILocation(line: 43, column: 11, scope: !3066, inlinedAt: !3059)
!3069 = !DILocation(line: 44, column: 26, scope: !3066, inlinedAt: !3059)
!3070 = !DILocation(line: 44, column: 25, scope: !3066, inlinedAt: !3059)
!3071 = !DILocation(line: 44, column: 13, scope: !3066, inlinedAt: !3059)
!3072 = !DILocation(line: 45, column: 25, scope: !3066, inlinedAt: !3059)
!3073 = !DILocation(line: 45, column: 24, scope: !3066, inlinedAt: !3059)
!3074 = !DILocation(line: 45, column: 12, scope: !3066, inlinedAt: !3059)
!3075 = !DILocation(line: 46, column: 5, scope: !3066, inlinedAt: !3059)
!3076 = !DILocation(line: 49, column: 11, scope: !3077, inlinedAt: !3059)
!3077 = distinct !DILexicalBlock(scope: !3061, file: !2986, line: 48, column: 5)
!3078 = !DILocation(line: 50, column: 37, scope: !3077, inlinedAt: !3059)
!3079 = !DILocation(line: 50, column: 13, scope: !3077, inlinedAt: !3059)
!3080 = !DILocation(line: 51, column: 36, scope: !3077, inlinedAt: !3059)
!3081 = !DILocation(line: 51, column: 12, scope: !3077, inlinedAt: !3059)
!3082 = !DILocation(line: 0, scope: !3061, inlinedAt: !3059)
!3083 = !DILocation(line: 53, column: 8, scope: !3084, inlinedAt: !3059)
!3084 = distinct !DILexicalBlock(scope: !3047, file: !2986, line: 53, column: 7)
!3085 = !DILocation(line: 53, column: 18, scope: !3084, inlinedAt: !3059)
!3086 = !DILocation(line: 53, column: 35, scope: !3084, inlinedAt: !3059)
!3087 = !DILocation(line: 53, column: 39, scope: !3084, inlinedAt: !3059)
!3088 = !DILocation(line: 53, column: 51, scope: !3084, inlinedAt: !3059)
!3089 = !DILocation(line: 53, column: 68, scope: !3084, inlinedAt: !3059)
!3090 = !DILocation(line: 54, column: 8, scope: !3084, inlinedAt: !3059)
!3091 = !DILocation(line: 54, column: 19, scope: !3084, inlinedAt: !3059)
!3092 = !DILocation(line: 53, column: 7, scope: !3047, inlinedAt: !3059)
!3093 = !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !3104)
!3094 = distinct !DISubprogram(name: "SetPixelPacket", scope: !3010, file: !3010, line: 117, type: !3095, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !912, !3097, !658, !990}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2899)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DILocalVariable(name: "image", arg: 1, scope: !3094, file: !3010, line: 117, type: !912)
!3101 = !DILocalVariable(name: "pixel", arg: 2, scope: !3094, file: !3010, line: 118, type: !3097)
!3102 = !DILocalVariable(name: "color", arg: 3, scope: !3094, file: !3010, line: 118, type: !658)
!3103 = !DILocalVariable(name: "index", arg: 4, scope: !3094, file: !3010, line: 118, type: !990)
!3104 = distinct !DILocation(line: 2167, column: 3, scope: !2889)
!3105 = !DILocation(line: 59, column: 8, scope: !3047, inlinedAt: !3059)
!3106 = !DILocation(line: 60, column: 11, scope: !3047, inlinedAt: !3059)
!3107 = !DILocation(line: 61, column: 10, scope: !3047, inlinedAt: !3059)
!3108 = !DILocation(line: 63, column: 15, scope: !3109, inlinedAt: !3059)
!3109 = distinct !DILexicalBlock(scope: !3047, file: !2986, line: 63, column: 7)
!3110 = !DILocation(line: 63, column: 7, scope: !3047, inlinedAt: !3059)
!3111 = !DILocation(line: 64, column: 5, scope: !3109, inlinedAt: !3059)
!3112 = !DILocation(line: 65, column: 14, scope: !3113, inlinedAt: !3059)
!3113 = distinct !DILexicalBlock(scope: !3047, file: !2986, line: 65, column: 7)
!3114 = !DILocation(line: 65, column: 7, scope: !3047, inlinedAt: !3059)
!3115 = !DILocation(line: 66, column: 5, scope: !3113, inlinedAt: !3059)
!3116 = !DILocation(line: 67, column: 31, scope: !3047, inlinedAt: !3059)
!3117 = !DILocation(line: 67, column: 26, scope: !3047, inlinedAt: !3059)
!3118 = !DILocation(line: 67, column: 44, scope: !3047, inlinedAt: !3059)
!3119 = !DILocation(line: 67, column: 43, scope: !3047, inlinedAt: !3059)
!3120 = !DILocation(line: 67, column: 38, scope: !3047, inlinedAt: !3059)
!3121 = !DILocation(line: 67, column: 8, scope: !3047, inlinedAt: !3059)
!3122 = !DILocation(line: 68, column: 37, scope: !3047, inlinedAt: !3059)
!3123 = !DILocation(line: 68, column: 29, scope: !3047, inlinedAt: !3059)
!3124 = !DILocation(line: 68, column: 44, scope: !3047, inlinedAt: !3059)
!3125 = !DILocation(line: 68, column: 11, scope: !3047, inlinedAt: !3059)
!3126 = !DILocation(line: 69, column: 35, scope: !3047, inlinedAt: !3059)
!3127 = !DILocation(line: 69, column: 28, scope: !3047, inlinedAt: !3059)
!3128 = !DILocation(line: 69, column: 42, scope: !3047, inlinedAt: !3059)
!3129 = !DILocation(line: 69, column: 10, scope: !3047, inlinedAt: !3059)
!3130 = !DILocation(line: 70, column: 20, scope: !3047, inlinedAt: !3059)
!3131 = !DILocation(line: 71, column: 26, scope: !3047, inlinedAt: !3059)
!3132 = !DILocation(line: 71, column: 13, scope: !3047, inlinedAt: !3059)
!3133 = !DILocation(line: 72, column: 28, scope: !3047, inlinedAt: !3059)
!3134 = !DILocation(line: 72, column: 15, scope: !3047, inlinedAt: !3059)
!3135 = !DILocation(line: 73, column: 27, scope: !3047, inlinedAt: !3059)
!3136 = !DILocation(line: 73, column: 14, scope: !3047, inlinedAt: !3059)
!3137 = !DILocation(line: 74, column: 28, scope: !3047, inlinedAt: !3059)
!3138 = !DILocation(line: 75, column: 1, scope: !3047, inlinedAt: !3059)
!3139 = !{!3025, !3026, i64 48}
!3140 = !DILocation(line: 2165, column: 5, scope: !3043)
!3141 = !DILocation(line: 0, scope: !3094, inlinedAt: !3104)
!3142 = !DILocalVariable(name: "value", arg: 1, scope: !3143, file: !149, line: 87, type: !2963)
!3143 = distinct !DISubprogram(name: "ClampToQuantum", scope: !149, file: !149, line: 87, type: !3144, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!663, !2963}
!3146 = !{!3142}
!3147 = !DILocation(line: 0, scope: !3143, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !3104)
!3149 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !3148)
!3150 = distinct !DILexicalBlock(scope: !3143, file: !149, line: 92, column: 7)
!3151 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !3148)
!3152 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !3148)
!3153 = distinct !DILexicalBlock(scope: !3143, file: !149, line: 94, column: 7)
!3154 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !3148)
!3155 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !3148)
!3156 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !3148)
!3157 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !3148)
!3158 = !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !3104)
!3159 = !DILocation(line: 0, scope: !3143, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !3104)
!3161 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !3160)
!3162 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !3160)
!3163 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !3160)
!3164 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !3160)
!3165 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !3160)
!3166 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !3160)
!3167 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !3160)
!3168 = !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !3104)
!3169 = !DILocation(line: 0, scope: !3143, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !3104)
!3171 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !3170)
!3172 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !3170)
!3173 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !3170)
!3174 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !3170)
!3175 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !3170)
!3176 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !3170)
!3177 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !3170)
!3178 = !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !3104)
!3179 = !DILocation(line: 0, scope: !3143, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !3104)
!3181 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !3180)
!3182 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !3180)
!3183 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !3180)
!3184 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !3180)
!3185 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !3180)
!3186 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !3180)
!3187 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !3180)
!3188 = !DILocation(line: 124, column: 15, scope: !3189, inlinedAt: !3104)
!3189 = distinct !DILexicalBlock(scope: !3094, file: !3010, line: 124, column: 7)
!3190 = !DILocation(line: 124, column: 26, scope: !3189, inlinedAt: !3104)
!3191 = !DILocation(line: 124, column: 45, scope: !3189, inlinedAt: !3104)
!3192 = !DILocation(line: 125, column: 15, scope: !3189, inlinedAt: !3104)
!3193 = !DILocation(line: 125, column: 29, scope: !3189, inlinedAt: !3104)
!3194 = !DILocation(line: 124, column: 7, scope: !3094, inlinedAt: !3104)
!3195 = !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !3104)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3010, line: 126, column: 5)
!3197 = distinct !DILexicalBlock(scope: !3189, file: !3010, line: 126, column: 5)
!3198 = !DILocation(line: 0, scope: !3143, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !3104)
!3200 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !3199)
!3201 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !3199)
!3202 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !3199)
!3203 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !3199)
!3204 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !3199)
!3205 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !3199)
!3206 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !3199)
!3207 = !DILocation(line: 2173, column: 14, scope: !2889)
!3208 = !DILocation(line: 2174, column: 34, scope: !2916)
!3209 = !DILocation(line: 2174, column: 15, scope: !2916)
!3210 = !DILocation(line: 2174, column: 3, scope: !2917)
!3211 = !DILocation(line: 2182, column: 16, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !2915, file: !1075, line: 2182, column: 9)
!3213 = !DILocation(line: 2182, column: 9, scope: !2915)
!3214 = !DILocation(line: 2184, column: 59, scope: !2915)
!3215 = !DILocation(line: 2184, column: 7, scope: !2915)
!3216 = !DILocation(line: 0, scope: !2915)
!3217 = !DILocation(line: 2185, column: 11, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !2915, file: !1075, line: 2185, column: 9)
!3219 = !DILocation(line: 2185, column: 9, scope: !2915)
!3220 = !DILocation(line: 2190, column: 36, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !1075, line: 2190, column: 5)
!3222 = distinct !DILexicalBlock(scope: !2915, file: !1075, line: 2190, column: 5)
!3223 = !DILocation(line: 2190, column: 17, scope: !3221)
!3224 = !DILocation(line: 2190, column: 5, scope: !3222)
!3225 = !DILocation(line: 2191, column: 9, scope: !3221)
!3226 = !DILocation(line: 2191, column: 12, scope: !3221)
!3227 = !DILocation(line: 2190, column: 46, scope: !3221)
!3228 = distinct !{!3228, !3224, !3229, !2119, !2120}
!3229 = !DILocation(line: 2191, column: 12, scope: !3222)
!3230 = !DILocation(line: 2192, column: 16, scope: !2921)
!3231 = !DILocation(line: 2192, column: 27, scope: !2921)
!3232 = !DILocation(line: 2192, column: 9, scope: !2915)
!3233 = !DILocation(line: 2197, column: 17, scope: !2920)
!3234 = !DILocation(line: 0, scope: !2920)
!3235 = !DILocation(line: 2198, column: 21, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !1075, line: 2198, column: 9)
!3237 = distinct !DILexicalBlock(scope: !2920, file: !1075, line: 2198, column: 9)
!3238 = !DILocation(line: 2198, column: 9, scope: !3237)
!3239 = !DILocation(line: 2199, column: 11, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !1075, line: 2199, column: 11)
!3241 = distinct !DILexicalBlock(scope: !3236, file: !1075, line: 2199, column: 11)
!3242 = !DILocation(line: 2198, column: 50, scope: !3236)
!3243 = distinct !{!3243, !3238, !3244, !2119, !2120}
!3244 = !DILocation(line: 2199, column: 11, scope: !3237)
!3245 = !DILocation(line: 2201, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2915, file: !1075, line: 2201, column: 9)
!3247 = !DILocation(line: 2201, column: 60, scope: !3246)
!3248 = !DILocation(line: 2201, column: 9, scope: !2915)
!3249 = !DILocation(line: 2203, column: 3, scope: !2916)
!3250 = !DILocation(line: 2174, column: 41, scope: !2916)
!3251 = distinct !{!3251, !3210, !3252, !2119, !2120}
!3252 = !DILocation(line: 2203, column: 3, scope: !2917)
!3253 = !DILocation(line: 2171, column: 9, scope: !2889)
!3254 = !DILocation(line: 2204, column: 14, scope: !2889)
!3255 = !DILocation(line: 2205, column: 3, scope: !2889)
!3256 = !DILocation(line: 2206, column: 1, scope: !2889)
!3257 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !426, file: !426, line: 53, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2272, !912, !1021}
!3260 = !DISubprogram(name: "TransformImageColorspace", scope: !13, file: !13, line: 66, type: !3261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!651, !635, !2989}
!3263 = !DISubprogram(name: "SetGeometry", scope: !155, file: !155, line: 154, type: !3264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !912, !1631}
!3266 = !DISubprogram(name: "GravityAdjustGeometry", scope: !155, file: !155, line: 152, type: !3267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !916, !916, !3269, !1631}
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!3270 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !426, file: !426, line: 55, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3271 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !426, file: !426, line: 69, type: !3272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!988, !3274, !3276, !3276, !916, !916, !1021}
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!3277 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !426, file: !426, line: 101, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!658, !2272, !3276, !3276, !916, !916, !1021}
!3280 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !426, file: !426, line: 66, type: !3281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!992, !3274}
!3283 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !426, file: !426, line: 77, type: !3284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!990, !2272}
!3286 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !426, file: !426, line: 89, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!651, !2272, !1021}
!3289 = !DISubprogram(name: "DestroyCacheView", scope: !426, file: !426, line: 57, type: !3290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!2272, !2272}
!3292 = distinct !DISubprogram(name: "CatchImageException", scope: !1075, file: !1075, line: 633, type: !3293, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!800, !635}
!3295 = !{!3296, !3297, !3298}
!3296 = !DILocalVariable(name: "image", arg: 1, scope: !3292, file: !1075, line: 633, type: !635)
!3297 = !DILocalVariable(name: "exception", scope: !3292, file: !1075, line: 636, type: !1021)
!3298 = !DILocalVariable(name: "severity", scope: !3292, file: !1075, line: 639, type: !800)
!3299 = !DILocation(line: 0, scope: !3292)
!3300 = !DILocation(line: 643, column: 14, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3292, file: !1075, line: 643, column: 7)
!3302 = !DILocation(line: 643, column: 20, scope: !3301)
!3303 = !DILocation(line: 643, column: 7, scope: !3292)
!3304 = !DILocation(line: 644, column: 68, scope: !3301)
!3305 = !DILocation(line: 644, column: 12, scope: !3301)
!3306 = !DILocation(line: 644, column: 5, scope: !3301)
!3307 = !DILocation(line: 645, column: 13, scope: !3292)
!3308 = !DILocalVariable(name: "image", arg: 1, scope: !3309, file: !1075, line: 1226, type: !635)
!3309 = distinct !DISubprogram(name: "GetImageException", scope: !1075, file: !1075, line: 1226, type: !3310, scopeLine: 1227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !635, !1021}
!3312 = !{!3308, !3313, !3314}
!3313 = !DILocalVariable(name: "exception", arg: 2, scope: !3309, file: !1075, line: 1226, type: !1021)
!3314 = !DILocalVariable(name: "next", scope: !3309, file: !1075, line: 1229, type: !635)
!3315 = !DILocation(line: 0, scope: !3309, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 646, column: 3, scope: !3292)
!3317 = !DILocation(line: 1233, column: 14, scope: !3318, inlinedAt: !3316)
!3318 = distinct !DILexicalBlock(scope: !3309, file: !1075, line: 1233, column: 7)
!3319 = !DILocation(line: 1233, column: 20, scope: !3318, inlinedAt: !3316)
!3320 = !DILocation(line: 1233, column: 7, scope: !3309, inlinedAt: !3316)
!3321 = !DILocation(line: 1234, column: 68, scope: !3318, inlinedAt: !3316)
!3322 = !DILocation(line: 1234, column: 12, scope: !3318, inlinedAt: !3316)
!3323 = !DILocation(line: 1234, column: 5, scope: !3318, inlinedAt: !3316)
!3324 = !DILocation(line: 1237, column: 3, scope: !3325, inlinedAt: !3316)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !1075, line: 1237, column: 3)
!3326 = !DILocation(line: 1239, column: 15, scope: !3327, inlinedAt: !3316)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !1075, line: 1239, column: 9)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !1075, line: 1238, column: 3)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !1075, line: 1237, column: 3)
!3330 = !DILocation(line: 1239, column: 25, scope: !3327, inlinedAt: !3316)
!3331 = !{!1218, !1210, i64 12920}
!3332 = !DILocation(line: 1239, column: 34, scope: !3327, inlinedAt: !3316)
!3333 = !DILocation(line: 1239, column: 9, scope: !3328, inlinedAt: !3316)
!3334 = !DILocation(line: 1241, column: 47, scope: !3335, inlinedAt: !3316)
!3335 = distinct !DILexicalBlock(scope: !3328, file: !1075, line: 1241, column: 9)
!3336 = !{!1230, !1210, i64 0}
!3337 = !DILocation(line: 1241, column: 34, scope: !3335, inlinedAt: !3316)
!3338 = !DILocation(line: 1241, column: 9, scope: !3328, inlinedAt: !3316)
!3339 = !DILocation(line: 1242, column: 7, scope: !3335, inlinedAt: !3316)
!3340 = !DILocation(line: 1243, column: 29, scope: !3328, inlinedAt: !3316)
!3341 = !DILocation(line: 1244, column: 3, scope: !3328, inlinedAt: !3316)
!3342 = !DILocation(line: 1237, column: 49, scope: !3329, inlinedAt: !3316)
!3343 = !DILocation(line: 1237, column: 25, scope: !3329, inlinedAt: !3316)
!3344 = distinct !{!3344, !3324, !3345, !2119, !2120}
!3345 = !DILocation(line: 1244, column: 3, scope: !3325, inlinedAt: !3316)
!3346 = !DILocation(line: 647, column: 3, scope: !3292)
!3347 = !DILocation(line: 648, column: 23, scope: !3292)
!3348 = !DILocation(line: 649, column: 13, scope: !3292)
!3349 = !DILocation(line: 650, column: 3, scope: !3292)
!3350 = !DISubprogram(name: "AcquireExceptionInfo", scope: !255, file: !255, line: 146, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!1021}
!3353 = !DILocation(line: 0, scope: !3309)
!3354 = !DILocation(line: 1233, column: 14, scope: !3318)
!3355 = !DILocation(line: 1233, column: 20, scope: !3318)
!3356 = !DILocation(line: 1233, column: 7, scope: !3309)
!3357 = !DILocation(line: 1234, column: 68, scope: !3318)
!3358 = !DILocation(line: 1234, column: 12, scope: !3318)
!3359 = !DILocation(line: 1234, column: 5, scope: !3318)
!3360 = !DILocation(line: 1237, column: 3, scope: !3325)
!3361 = !DILocation(line: 1239, column: 15, scope: !3327)
!3362 = !DILocation(line: 1239, column: 25, scope: !3327)
!3363 = !DILocation(line: 1239, column: 34, scope: !3327)
!3364 = !DILocation(line: 1239, column: 9, scope: !3328)
!3365 = !DILocation(line: 1241, column: 47, scope: !3335)
!3366 = !DILocation(line: 1241, column: 34, scope: !3335)
!3367 = !DILocation(line: 1241, column: 9, scope: !3328)
!3368 = !DILocation(line: 1242, column: 7, scope: !3335)
!3369 = !DILocation(line: 1243, column: 29, scope: !3328)
!3370 = !DILocation(line: 1244, column: 3, scope: !3328)
!3371 = !DILocation(line: 1237, column: 49, scope: !3329)
!3372 = !DILocation(line: 1237, column: 25, scope: !3329)
!3373 = distinct !{!3373, !3360, !3374, !2119, !2120}
!3374 = !DILocation(line: 1244, column: 3, scope: !3325)
!3375 = !DILocation(line: 1245, column: 1, scope: !3309)
!3376 = distinct !DISubprogram(name: "ClipImage", scope: !1075, file: !1075, line: 684, type: !2890, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3377)
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "image", arg: 1, scope: !3376, file: !1075, line: 684, type: !635)
!3379 = !DILocation(line: 0, scope: !3376)
!3380 = !DILocation(line: 686, column: 10, scope: !3376)
!3381 = !DILocation(line: 686, column: 3, scope: !3376)
!3382 = distinct !DISubprogram(name: "ClipImagePath", scope: !1075, file: !1075, line: 689, type: !3383, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!651, !635, !768, !1627}
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3386 = !DILocalVariable(name: "image", arg: 1, scope: !3382, file: !1075, line: 689, type: !635)
!3387 = !DILocalVariable(name: "pathname", arg: 2, scope: !3382, file: !1075, line: 689, type: !768)
!3388 = !DILocalVariable(name: "inside", arg: 3, scope: !3382, file: !1075, line: 690, type: !1627)
!3389 = !DILocalVariable(name: "property", scope: !3382, file: !1075, line: 695, type: !694)
!3390 = !DILocalVariable(name: "value", scope: !3382, file: !1075, line: 698, type: !768)
!3391 = !DILocalVariable(name: "clip_mask", scope: !3382, file: !1075, line: 701, type: !635)
!3392 = !DILocalVariable(name: "image_info", scope: !3382, file: !1075, line: 704, type: !856)
!3393 = !DILocalVariable(name: "message", scope: !3394, file: !1075, line: 718, type: !694)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !1075, line: 718, column: 7)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !1075, line: 717, column: 5)
!3396 = distinct !DILexicalBlock(scope: !3382, file: !1075, line: 716, column: 7)
!3397 = !DILocation(line: 0, scope: !3382)
!3398 = !DILocation(line: 708, column: 14, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3382, file: !1075, line: 708, column: 7)
!3400 = !DILocation(line: 708, column: 20, scope: !3399)
!3401 = !DILocation(line: 708, column: 7, scope: !3382)
!3402 = !DILocation(line: 709, column: 68, scope: !3399)
!3403 = !DILocation(line: 709, column: 12, scope: !3399)
!3404 = !DILocation(line: 709, column: 5, scope: !3399)
!3405 = !DILocation(line: 711, column: 12, scope: !3382)
!3406 = !DILocation(line: 712, column: 10, scope: !3382)
!3407 = !DILocation(line: 714, column: 9, scope: !3382)
!3408 = !DILocation(line: 715, column: 12, scope: !3382)
!3409 = !DILocation(line: 716, column: 13, scope: !3396)
!3410 = !DILocation(line: 716, column: 7, scope: !3382)
!3411 = !DILocation(line: 718, column: 7, scope: !3394)
!3412 = !DILocation(line: 0, scope: !3394)
!3413 = !DILocation(line: 720, column: 7, scope: !3395)
!3414 = !DILocation(line: 722, column: 14, scope: !3382)
!3415 = !DILocation(line: 723, column: 39, scope: !3382)
!3416 = !DILocation(line: 723, column: 55, scope: !3382)
!3417 = !DILocation(line: 723, column: 10, scope: !3382)
!3418 = !DILocation(line: 724, column: 10, scope: !3382)
!3419 = !DILocation(line: 725, column: 42, scope: !3382)
!3420 = !DILocation(line: 725, column: 64, scope: !3382)
!3421 = !DILocation(line: 725, column: 13, scope: !3382)
!3422 = !DILocation(line: 726, column: 14, scope: !3382)
!3423 = !DILocation(line: 727, column: 17, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3382, file: !1075, line: 727, column: 7)
!3425 = !DILocation(line: 727, column: 7, scope: !3382)
!3426 = !DILocation(line: 729, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3382, file: !1075, line: 729, column: 7)
!3428 = !DILocation(line: 729, column: 32, scope: !3427)
!3429 = !DILocation(line: 729, column: 7, scope: !3382)
!3430 = !DILocation(line: 731, column: 14, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3427, file: !1075, line: 730, column: 5)
!3432 = !DILocation(line: 0, scope: !2352, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 732, column: 11, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3431, file: !1075, line: 732, column: 11)
!3435 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !3433)
!3436 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !3433)
!3437 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !3433)
!3438 = !DILocation(line: 732, column: 55, scope: !3434)
!3439 = !DILocation(line: 732, column: 11, scope: !3431)
!3440 = !DILocation(line: 735, column: 14, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3382, file: !1075, line: 735, column: 7)
!3442 = !DILocation(line: 735, column: 7, scope: !3382)
!3443 = !DILocation(line: 736, column: 12, scope: !3441)
!3444 = !DILocation(line: 736, column: 5, scope: !3441)
!3445 = !DILocation(line: 737, column: 40, scope: !3382)
!3446 = !DILocation(line: 737, column: 10, scope: !3382)
!3447 = !DILocation(line: 739, column: 10, scope: !3382)
!3448 = !DILocation(line: 740, column: 13, scope: !3382)
!3449 = !DILocation(line: 741, column: 3, scope: !3382)
!3450 = !DILocation(line: 742, column: 1, scope: !3382)
!3451 = !DISubprogram(name: "AcquireString", scope: !996, file: !996, line: 43, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3452 = !DISubprogram(name: "FormatLocaleString", scope: !3453, file: !3453, line: 71, type: !3454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3453 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!699, !3456, !916, !1753, null}
!3456 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !694)
!3457 = !DISubprogram(name: "GetImageProperty", scope: !3458, file: !3458, line: 31, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3458 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!768, !912, !768}
!3461 = !DISubprogram(name: "ConcatenateMagickString", scope: !996, file: !996, line: 76, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3462 = !DISubprogram(name: "BlobToImage", scope: !1624, file: !1624, line: 41, type: !3463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!635, !1019, !914, !916, !1021}
!3465 = distinct !DISubprogram(name: "DestroyImageInfo", scope: !1075, file: !1075, line: 1093, type: !3466, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!856, !856}
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "image_info", arg: 1, scope: !3465, file: !1075, line: 1093, type: !856)
!3470 = !DILocation(line: 0, scope: !3465)
!3471 = !DILocation(line: 1097, column: 19, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1097, column: 7)
!3473 = !DILocation(line: 1097, column: 25, scope: !3472)
!3474 = !DILocation(line: 1097, column: 7, scope: !3465)
!3475 = !DILocation(line: 1099, column: 19, scope: !3472)
!3476 = !DILocation(line: 1098, column: 12, scope: !3472)
!3477 = !DILocation(line: 1098, column: 5, scope: !3472)
!3478 = !DILocation(line: 1100, column: 19, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1100, column: 7)
!3480 = !DILocation(line: 1100, column: 24, scope: !3479)
!3481 = !DILocation(line: 1100, column: 7, scope: !3465)
!3482 = !DILocation(line: 1101, column: 22, scope: !3479)
!3483 = !DILocation(line: 1101, column: 21, scope: !3479)
!3484 = !DILocation(line: 1101, column: 5, scope: !3479)
!3485 = !DILocation(line: 1102, column: 19, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1102, column: 7)
!3487 = !DILocation(line: 1102, column: 27, scope: !3486)
!3488 = !DILocation(line: 1102, column: 7, scope: !3465)
!3489 = !DILocation(line: 1103, column: 25, scope: !3486)
!3490 = !DILocation(line: 1103, column: 24, scope: !3486)
!3491 = !DILocation(line: 1103, column: 5, scope: !3486)
!3492 = !DILocation(line: 1104, column: 19, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1104, column: 7)
!3494 = !{!1339, !1220, i64 48}
!3495 = !DILocation(line: 1104, column: 26, scope: !3493)
!3496 = !DILocation(line: 1104, column: 7, scope: !3465)
!3497 = !DILocation(line: 1105, column: 24, scope: !3493)
!3498 = !DILocation(line: 1105, column: 23, scope: !3493)
!3499 = !DILocation(line: 1105, column: 5, scope: !3493)
!3500 = !DILocation(line: 1106, column: 19, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1106, column: 7)
!3502 = !DILocation(line: 1106, column: 24, scope: !3501)
!3503 = !DILocation(line: 1106, column: 7, scope: !3465)
!3504 = !DILocation(line: 1107, column: 22, scope: !3501)
!3505 = !DILocation(line: 1107, column: 21, scope: !3501)
!3506 = !DILocation(line: 1107, column: 5, scope: !3501)
!3507 = !DILocation(line: 1108, column: 19, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1108, column: 7)
!3509 = !{!1339, !1220, i64 104}
!3510 = !DILocation(line: 1108, column: 35, scope: !3508)
!3511 = !DILocation(line: 1108, column: 7, scope: !3465)
!3512 = !DILocation(line: 1109, column: 33, scope: !3508)
!3513 = !DILocation(line: 1109, column: 32, scope: !3508)
!3514 = !DILocation(line: 1109, column: 5, scope: !3508)
!3515 = !DILocation(line: 1111, column: 19, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1111, column: 7)
!3517 = !{!1339, !1220, i64 112}
!3518 = !DILocation(line: 1111, column: 31, scope: !3516)
!3519 = !DILocation(line: 1111, column: 7, scope: !3465)
!3520 = !DILocation(line: 1112, column: 29, scope: !3516)
!3521 = !DILocation(line: 1112, column: 28, scope: !3516)
!3522 = !DILocation(line: 1112, column: 5, scope: !3516)
!3523 = !DILocation(line: 1114, column: 19, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1114, column: 7)
!3525 = !{!1339, !1220, i64 120}
!3526 = !DILocation(line: 1114, column: 24, scope: !3524)
!3527 = !DILocation(line: 1114, column: 7, scope: !3465)
!3528 = !DILocation(line: 1115, column: 22, scope: !3524)
!3529 = !DILocation(line: 1115, column: 21, scope: !3524)
!3530 = !DILocation(line: 1115, column: 5, scope: !3524)
!3531 = !DILocation(line: 1116, column: 19, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1116, column: 7)
!3533 = !{!1339, !1220, i64 128}
!3534 = !DILocation(line: 1116, column: 27, scope: !3532)
!3535 = !DILocation(line: 1116, column: 7, scope: !3465)
!3536 = !DILocation(line: 1117, column: 25, scope: !3532)
!3537 = !DILocation(line: 1117, column: 24, scope: !3532)
!3538 = !DILocation(line: 1117, column: 5, scope: !3532)
!3539 = !DILocation(line: 1118, column: 19, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1118, column: 7)
!3541 = !DILocation(line: 1118, column: 27, scope: !3540)
!3542 = !DILocation(line: 1118, column: 7, scope: !3465)
!3543 = !DILocation(line: 1119, column: 25, scope: !3540)
!3544 = !DILocation(line: 1119, column: 24, scope: !3540)
!3545 = !DILocation(line: 1119, column: 5, scope: !3540)
!3546 = !DILocation(line: 1120, column: 19, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1120, column: 7)
!3548 = !{!1339, !1220, i64 232}
!3549 = !DILocation(line: 1120, column: 24, scope: !3547)
!3550 = !DILocation(line: 1120, column: 7, scope: !3465)
!3551 = !DILocation(line: 1121, column: 22, scope: !3547)
!3552 = !DILocation(line: 1121, column: 21, scope: !3547)
!3553 = !DILocation(line: 1121, column: 5, scope: !3547)
!3554 = !DILocation(line: 1122, column: 19, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1122, column: 7)
!3556 = !{!1339, !1220, i64 240}
!3557 = !DILocation(line: 1122, column: 32, scope: !3555)
!3558 = !DILocation(line: 1122, column: 7, scope: !3465)
!3559 = !DILocation(line: 1123, column: 30, scope: !3555)
!3560 = !DILocation(line: 1123, column: 29, scope: !3555)
!3561 = !DILocation(line: 1123, column: 5, scope: !3555)
!3562 = !DILocation(line: 1125, column: 3, scope: !3465)
!3563 = !DILocation(line: 1126, column: 19, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1126, column: 7)
!3565 = !DILocation(line: 1126, column: 25, scope: !3564)
!3566 = !DILocation(line: 1126, column: 7, scope: !3465)
!3567 = !DILocation(line: 1127, column: 23, scope: !3564)
!3568 = !DILocation(line: 1127, column: 22, scope: !3564)
!3569 = !DILocation(line: 1127, column: 5, scope: !3564)
!3570 = !DILocation(line: 1128, column: 19, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3465, file: !1075, line: 1128, column: 7)
!3572 = !{!1339, !1220, i64 16776}
!3573 = !DILocation(line: 1128, column: 27, scope: !3571)
!3574 = !DILocation(line: 1128, column: 7, scope: !3465)
!3575 = !DILocation(line: 1129, column: 34, scope: !3571)
!3576 = !DILocation(line: 1129, column: 24, scope: !3571)
!3577 = !DILocation(line: 1129, column: 5, scope: !3571)
!3578 = !DILocation(line: 1131, column: 15, scope: !3465)
!3579 = !DILocation(line: 1131, column: 24, scope: !3465)
!3580 = !DILocation(line: 1132, column: 28, scope: !3465)
!3581 = !DILocation(line: 1133, column: 3, scope: !3465)
!3582 = distinct !DISubprogram(name: "SyncImage", scope: !1075, file: !1075, line: 3403, type: !2890, scopeLine: 3404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3596}
!3584 = !DILocalVariable(name: "image", arg: 1, scope: !3582, file: !1075, line: 3403, type: !635)
!3585 = !DILocalVariable(name: "image_view", scope: !3582, file: !1075, line: 3406, type: !2272)
!3586 = !DILocalVariable(name: "exception", scope: !3582, file: !1075, line: 3409, type: !1021)
!3587 = !DILocalVariable(name: "range_exception", scope: !3582, file: !1075, line: 3412, type: !651)
!3588 = !DILocalVariable(name: "status", scope: !3582, file: !1075, line: 3413, type: !651)
!3589 = !DILocalVariable(name: "y", scope: !3582, file: !1075, line: 3416, type: !699)
!3590 = !DILocalVariable(name: "index", scope: !3591, file: !1075, line: 3435, type: !991)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !1075, line: 3433, column: 3)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !1075, line: 3432, column: 3)
!3593 = distinct !DILexicalBlock(scope: !3582, file: !1075, line: 3432, column: 3)
!3594 = !DILocalVariable(name: "indexes", scope: !3591, file: !1075, line: 3438, type: !2302)
!3595 = !DILocalVariable(name: "q", scope: !3591, file: !1075, line: 3441, type: !2304)
!3596 = !DILocalVariable(name: "x", scope: !3591, file: !1075, line: 3444, type: !699)
!3597 = !DILocation(line: 0, scope: !3582)
!3598 = !DILocation(line: 3419, column: 14, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3582, file: !1075, line: 3419, column: 7)
!3600 = !DILocation(line: 3419, column: 20, scope: !3599)
!3601 = !DILocation(line: 3419, column: 7, scope: !3582)
!3602 = !DILocation(line: 3420, column: 12, scope: !3599)
!3603 = !DILocation(line: 3420, column: 5, scope: !3599)
!3604 = !DILocation(line: 3422, column: 14, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3582, file: !1075, line: 3422, column: 7)
!3606 = !DILocation(line: 3422, column: 28, scope: !3605)
!3607 = !DILocation(line: 3422, column: 7, scope: !3582)
!3608 = !DILocation(line: 3426, column: 22, scope: !3582)
!3609 = !DILocation(line: 3427, column: 14, scope: !3582)
!3610 = !DILocation(line: 3432, column: 34, scope: !3592)
!3611 = !DILocation(line: 3432, column: 15, scope: !3592)
!3612 = !DILocation(line: 3432, column: 3, scope: !3593)
!3613 = !DILocation(line: 3446, column: 16, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3591, file: !1075, line: 3446, column: 9)
!3615 = !DILocation(line: 3446, column: 9, scope: !3591)
!3616 = !DILocation(line: 3448, column: 57, scope: !3591)
!3617 = !DILocation(line: 3448, column: 7, scope: !3591)
!3618 = !DILocation(line: 0, scope: !3591)
!3619 = !DILocation(line: 3449, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3591, file: !1075, line: 3449, column: 9)
!3621 = !DILocation(line: 3449, column: 9, scope: !3591)
!3622 = !DILocation(line: 3454, column: 13, scope: !3591)
!3623 = !DILocation(line: 3455, column: 17, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !1075, line: 3455, column: 5)
!3625 = distinct !DILexicalBlock(scope: !3591, file: !1075, line: 3455, column: 5)
!3626 = !DILocation(line: 3455, column: 5, scope: !3625)
!3627 = !DILocation(line: 3459, column: 11, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3624, file: !1075, line: 3456, column: 5)
!3629 = !DILocation(line: 3457, column: 46, scope: !3628)
!3630 = !DILocalVariable(name: "image", arg: 1, scope: !3631, file: !1075, line: 3394, type: !635)
!3631 = distinct !DISubprogram(name: "PushColormapIndex", scope: !1075, file: !1075, line: 3394, type: !3632, scopeLine: 3396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!991, !635, !916, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!3635 = !{!3630, !3636, !3637}
!3636 = !DILocalVariable(name: "index", arg: 2, scope: !3631, file: !1075, line: 3395, type: !916)
!3637 = !DILocalVariable(name: "range_exception", arg: 3, scope: !3631, file: !1075, line: 3395, type: !3634)
!3638 = !DILocation(line: 0, scope: !3631, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 3457, column: 13, scope: !3628)
!3640 = !DILocation(line: 3397, column: 7, scope: !3631, inlinedAt: !3639)
!3641 = !DILocation(line: 3460, column: 9, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !1075, line: 3460, column: 9)
!3643 = distinct !DILexicalBlock(scope: !3628, file: !1075, line: 3459, column: 11)
!3644 = !DILocation(line: 3463, column: 8, scope: !3628)
!3645 = !DILocation(line: 3455, column: 46, scope: !3624)
!3646 = distinct !{!3646, !3626, !3647, !2119, !2120}
!3647 = !DILocation(line: 3464, column: 5, scope: !3625)
!3648 = !DILocation(line: 3397, column: 13, scope: !3649, inlinedAt: !3639)
!3649 = distinct !DILexicalBlock(scope: !3631, file: !1075, line: 3397, column: 7)
!3650 = !DILocation(line: 3462, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !1075, line: 3462, column: 9)
!3652 = !DILocation(line: 3424, column: 18, scope: !3582)
!3653 = !DILocation(line: 3465, column: 9, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3591, file: !1075, line: 3465, column: 9)
!3655 = !DILocation(line: 3465, column: 60, scope: !3654)
!3656 = !DILocation(line: 3465, column: 9, scope: !3591)
!3657 = !DILocation(line: 3467, column: 3, scope: !3592)
!3658 = !DILocation(line: 3432, column: 41, scope: !3592)
!3659 = distinct !{!3659, !3612, !3660, !2119, !2120}
!3660 = !DILocation(line: 3467, column: 3, scope: !3593)
!3661 = !DILocation(line: 3425, column: 9, scope: !3582)
!3662 = !DILocation(line: 3468, column: 14, scope: !3582)
!3663 = !DILocation(line: 3469, column: 15, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3582, file: !1075, line: 3469, column: 7)
!3665 = !DILocation(line: 3469, column: 20, scope: !3664)
!3666 = !DILocation(line: 3469, column: 36, scope: !3664)
!3667 = !DILocation(line: 3471, column: 62, scope: !3664)
!3668 = !DILocation(line: 3470, column: 12, scope: !3664)
!3669 = !DILocation(line: 3470, column: 5, scope: !3664)
!3670 = !DILocation(line: 3473, column: 1, scope: !3582)
!3671 = !DISubprogram(name: "NegateImage", scope: !3672, file: !3672, line: 61, type: !3673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3672 = !DIFile(filename: "apps/538.imagick_r/src/magick/enhance.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a9430b6e6c4409433b996fd04287515")
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!651, !635, !1627}
!3675 = distinct !DISubprogram(name: "SetImageClipMask", scope: !1075, file: !1075, line: 2388, type: !3676, scopeLine: 2390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!651, !635, !912}
!3678 = !{!3679, !3680}
!3679 = !DILocalVariable(name: "image", arg: 1, scope: !3675, file: !1075, line: 2388, type: !635)
!3680 = !DILocalVariable(name: "clip_mask", arg: 2, scope: !3675, file: !1075, line: 2389, type: !912)
!3681 = !DILocation(line: 0, scope: !3675)
!3682 = !DILocation(line: 2392, column: 14, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3675, file: !1075, line: 2392, column: 7)
!3684 = !DILocation(line: 2392, column: 20, scope: !3683)
!3685 = !DILocation(line: 2392, column: 7, scope: !3675)
!3686 = !DILocation(line: 2393, column: 12, scope: !3683)
!3687 = !DILocation(line: 2393, column: 5, scope: !3683)
!3688 = !DILocation(line: 2395, column: 17, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3675, file: !1075, line: 2395, column: 7)
!3690 = !DILocation(line: 2395, column: 7, scope: !3675)
!3691 = !DILocation(line: 2396, column: 21, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3689, file: !1075, line: 2396, column: 9)
!3693 = !DILocation(line: 2396, column: 39, scope: !3692)
!3694 = !DILocation(line: 2396, column: 29, scope: !3692)
!3695 = !DILocation(line: 2396, column: 48, scope: !3692)
!3696 = !DILocation(line: 2397, column: 21, scope: !3692)
!3697 = !DILocation(line: 2397, column: 36, scope: !3692)
!3698 = !DILocation(line: 2397, column: 26, scope: !3692)
!3699 = !DILocation(line: 2396, column: 9, scope: !3689)
!3700 = !DILocation(line: 2398, column: 7, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !1075, line: 2398, column: 7)
!3702 = distinct !DILexicalBlock(scope: !3692, file: !1075, line: 2398, column: 7)
!3703 = !DILocation(line: 2399, column: 14, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3675, file: !1075, line: 2399, column: 7)
!3705 = !DILocation(line: 2399, column: 24, scope: !3704)
!3706 = !DILocation(line: 2399, column: 7, scope: !3675)
!3707 = !DILocation(line: 2400, column: 22, scope: !3704)
!3708 = !DILocation(line: 2400, column: 21, scope: !3704)
!3709 = !DILocation(line: 2400, column: 5, scope: !3704)
!3710 = !DILocation(line: 2401, column: 20, scope: !3675)
!3711 = !DILocation(line: 2401, column: 19, scope: !3675)
!3712 = !DILocation(line: 2402, column: 7, scope: !3675)
!3713 = !DILocation(line: 0, scope: !2352, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 2404, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3675, file: !1075, line: 2404, column: 7)
!3716 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !3714)
!3717 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !3714)
!3718 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !3714)
!3719 = !DILocation(line: 2404, column: 47, scope: !3715)
!3720 = !DILocation(line: 2404, column: 7, scope: !3675)
!3721 = !DILocation(line: 2406, column: 20, scope: !3675)
!3722 = !DILocation(line: 2406, column: 19, scope: !3675)
!3723 = !DILocation(line: 2407, column: 24, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3675, file: !1075, line: 2407, column: 7)
!3725 = !DILocation(line: 2410, column: 1, scope: !3675)
!3726 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1566, file: !1566, line: 42, type: !3727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!690, !916, !916}
!3729 = !DISubprogram(name: "CopyMagickMemory", scope: !1566, file: !1566, line: 44, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!690, !690, !914, !916}
!3732 = !DISubprogram(name: "CloneImageProfiles", scope: !91, file: !91, line: 58, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3733 = !DISubprogram(name: "CloneImageProperties", scope: !3458, file: !3458, line: 35, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3734 = !DISubprogram(name: "CloneImageArtifacts", scope: !3735, file: !3735, line: 33, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3735 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!3736 = !DISubprogram(name: "Ascii85Initialize", scope: !50, file: !50, line: 64, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3737 = !DISubprogram(name: "NewImageList", scope: !2255, file: !2255, line: 36, type: !3738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!635}
!3740 = !DISubprogram(name: "CloneString", scope: !996, file: !996, line: 44, type: !3741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!694, !1071, !768}
!3743 = !DISubprogram(name: "ReferencePixelCache", scope: !1604, file: !1604, line: 223, type: !3744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!1607, !1607}
!3746 = !DISubprogram(name: "ClonePixelCache", scope: !1604, file: !1604, line: 221, type: !3747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!1607, !1642}
!3749 = distinct !DISubprogram(name: "CloneImageInfo", scope: !1075, file: !1075, line: 924, type: !3750, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!856, !1019}
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "image_info", arg: 1, scope: !3749, file: !1075, line: 924, type: !1019)
!3754 = !DILocalVariable(name: "clone_info", scope: !3749, file: !1075, line: 927, type: !856)
!3755 = !DILocation(line: 0, scope: !3749)
!3756 = !DILocation(line: 929, column: 14, scope: !3749)
!3757 = !DILocation(line: 930, column: 18, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3749, file: !1075, line: 930, column: 7)
!3759 = !DILocation(line: 930, column: 7, scope: !3749)
!3760 = !DILocation(line: 932, column: 39, scope: !3749)
!3761 = !DILocation(line: 932, column: 26, scope: !3749)
!3762 = !DILocation(line: 933, column: 37, scope: !3749)
!3763 = !{!1339, !1210, i64 8}
!3764 = !DILocation(line: 933, column: 15, scope: !3749)
!3765 = !DILocation(line: 933, column: 24, scope: !3749)
!3766 = !DILocation(line: 934, column: 34, scope: !3749)
!3767 = !DILocation(line: 934, column: 15, scope: !3749)
!3768 = !DILocation(line: 934, column: 21, scope: !3749)
!3769 = !DILocation(line: 935, column: 37, scope: !3749)
!3770 = !DILocation(line: 935, column: 15, scope: !3749)
!3771 = !DILocation(line: 935, column: 24, scope: !3749)
!3772 = !DILocation(line: 936, column: 33, scope: !3749)
!3773 = !{!1339, !1219, i64 56}
!3774 = !DILocation(line: 936, column: 15, scope: !3749)
!3775 = !DILocation(line: 936, column: 20, scope: !3749)
!3776 = !DILocation(line: 937, column: 41, scope: !3749)
!3777 = !{!1339, !1219, i64 64}
!3778 = !DILocation(line: 937, column: 15, scope: !3749)
!3779 = !DILocation(line: 937, column: 28, scope: !3749)
!3780 = !DILocation(line: 938, column: 33, scope: !3749)
!3781 = !DILocation(line: 938, column: 15, scope: !3749)
!3782 = !DILocation(line: 938, column: 20, scope: !3749)
!3783 = !DILocation(line: 939, column: 35, scope: !3749)
!3784 = !DILocation(line: 939, column: 52, scope: !3749)
!3785 = !DILocation(line: 939, column: 10, scope: !3749)
!3786 = !DILocation(line: 940, column: 35, scope: !3749)
!3787 = !DILocation(line: 940, column: 55, scope: !3749)
!3788 = !DILocation(line: 940, column: 10, scope: !3749)
!3789 = !DILocation(line: 941, column: 35, scope: !3749)
!3790 = !DILocation(line: 941, column: 54, scope: !3749)
!3791 = !DILocation(line: 941, column: 10, scope: !3749)
!3792 = !DILocation(line: 942, column: 35, scope: !3749)
!3793 = !DILocation(line: 942, column: 52, scope: !3749)
!3794 = !DILocation(line: 942, column: 10, scope: !3749)
!3795 = !DILocation(line: 943, column: 37, scope: !3749)
!3796 = !DILocation(line: 943, column: 15, scope: !3749)
!3797 = !DILocation(line: 943, column: 24, scope: !3749)
!3798 = !DILocation(line: 944, column: 34, scope: !3749)
!3799 = !DILocation(line: 944, column: 15, scope: !3749)
!3800 = !DILocation(line: 944, column: 21, scope: !3749)
!3801 = !DILocation(line: 945, column: 33, scope: !3749)
!3802 = !DILocation(line: 945, column: 15, scope: !3749)
!3803 = !DILocation(line: 945, column: 20, scope: !3749)
!3804 = !DILocation(line: 946, column: 35, scope: !3749)
!3805 = !DILocation(line: 946, column: 15, scope: !3749)
!3806 = !DILocation(line: 946, column: 22, scope: !3749)
!3807 = !DILocation(line: 947, column: 35, scope: !3749)
!3808 = !DILocation(line: 947, column: 63, scope: !3749)
!3809 = !DILocation(line: 947, column: 10, scope: !3749)
!3810 = !DILocation(line: 948, column: 35, scope: !3749)
!3811 = !DILocation(line: 948, column: 59, scope: !3749)
!3812 = !DILocation(line: 948, column: 10, scope: !3749)
!3813 = !DILocation(line: 949, column: 35, scope: !3749)
!3814 = !DILocation(line: 949, column: 52, scope: !3749)
!3815 = !DILocation(line: 949, column: 10, scope: !3749)
!3816 = !DILocation(line: 950, column: 35, scope: !3749)
!3817 = !DILocation(line: 950, column: 55, scope: !3749)
!3818 = !DILocation(line: 950, column: 10, scope: !3749)
!3819 = !DILocation(line: 951, column: 35, scope: !3749)
!3820 = !DILocation(line: 951, column: 55, scope: !3749)
!3821 = !DILocation(line: 951, column: 10, scope: !3749)
!3822 = !DILocation(line: 952, column: 37, scope: !3749)
!3823 = !{!1339, !1223, i64 144}
!3824 = !DILocation(line: 952, column: 15, scope: !3749)
!3825 = !DILocation(line: 952, column: 24, scope: !3749)
!3826 = !DILocation(line: 953, column: 32, scope: !3749)
!3827 = !{!1339, !1223, i64 152}
!3828 = !DILocation(line: 953, column: 15, scope: !3749)
!3829 = !DILocation(line: 953, column: 19, scope: !3749)
!3830 = !DILocation(line: 954, column: 15, scope: !3749)
!3831 = !DILocation(line: 954, column: 31, scope: !3749)
!3832 = !DILocation(line: 955, column: 15, scope: !3749)
!3833 = !DILocation(line: 955, column: 44, scope: !3749)
!3834 = !DILocation(line: 956, column: 15, scope: !3749)
!3835 = !DILocation(line: 956, column: 40, scope: !3749)
!3836 = !DILocation(line: 957, column: 15, scope: !3749)
!3837 = !DILocation(line: 957, column: 39, scope: !3749)
!3838 = !DILocation(line: 958, column: 15, scope: !3749)
!3839 = !DILocation(line: 958, column: 45, scope: !3749)
!3840 = !DILocation(line: 959, column: 34, scope: !3749)
!3841 = !DILocation(line: 959, column: 15, scope: !3749)
!3842 = !DILocation(line: 959, column: 21, scope: !3749)
!3843 = !DILocation(line: 960, column: 38, scope: !3749)
!3844 = !{!1339, !1210, i64 188}
!3845 = !DILocation(line: 960, column: 15, scope: !3749)
!3846 = !DILocation(line: 960, column: 25, scope: !3749)
!3847 = !DILocation(line: 961, column: 34, scope: !3749)
!3848 = !{!1339, !1219, i64 192}
!3849 = !DILocation(line: 961, column: 15, scope: !3749)
!3850 = !DILocation(line: 961, column: 21, scope: !3749)
!3851 = !DILocation(line: 962, column: 38, scope: !3749)
!3852 = !{!1339, !1210, i64 200}
!3853 = !DILocation(line: 962, column: 15, scope: !3749)
!3854 = !DILocation(line: 962, column: 25, scope: !3749)
!3855 = !DILocation(line: 963, column: 32, scope: !3749)
!3856 = !{!1339, !1210, i64 204}
!3857 = !DILocation(line: 963, column: 15, scope: !3749)
!3858 = !DILocation(line: 963, column: 19, scope: !3749)
!3859 = !DILocation(line: 964, column: 39, scope: !3749)
!3860 = !{!1339, !1210, i64 4}
!3861 = !DILocation(line: 964, column: 15, scope: !3749)
!3862 = !DILocation(line: 964, column: 26, scope: !3749)
!3863 = !DILocation(line: 965, column: 40, scope: !3749)
!3864 = !{!1339, !1210, i64 208}
!3865 = !DILocation(line: 965, column: 15, scope: !3749)
!3866 = !DILocation(line: 965, column: 27, scope: !3749)
!3867 = !DILocation(line: 966, column: 33, scope: !3749)
!3868 = !{!1339, !1219, i64 216}
!3869 = !DILocation(line: 966, column: 15, scope: !3749)
!3870 = !DILocation(line: 966, column: 20, scope: !3749)
!3871 = !DILocation(line: 967, column: 32, scope: !3749)
!3872 = !DILocation(line: 967, column: 15, scope: !3749)
!3873 = !DILocation(line: 967, column: 19, scope: !3749)
!3874 = !DILocation(line: 968, column: 35, scope: !3749)
!3875 = !{!1339, !1210, i64 228}
!3876 = !DILocation(line: 968, column: 15, scope: !3749)
!3877 = !DILocation(line: 968, column: 22, scope: !3749)
!3878 = !DILocation(line: 969, column: 35, scope: !3749)
!3879 = !DILocation(line: 969, column: 52, scope: !3749)
!3880 = !DILocation(line: 969, column: 10, scope: !3749)
!3881 = !DILocation(line: 970, column: 35, scope: !3749)
!3882 = !DILocation(line: 970, column: 60, scope: !3749)
!3883 = !DILocation(line: 970, column: 10, scope: !3749)
!3884 = !DILocation(line: 971, column: 10, scope: !3749)
!3885 = !DILocation(line: 972, column: 44, scope: !3749)
!3886 = !DILocation(line: 972, column: 15, scope: !3749)
!3887 = !DILocation(line: 972, column: 31, scope: !3749)
!3888 = !DILocation(line: 973, column: 39, scope: !3749)
!3889 = !DILocation(line: 973, column: 15, scope: !3749)
!3890 = !DILocation(line: 973, column: 26, scope: !3749)
!3891 = !DILocation(line: 974, column: 33, scope: !3749)
!3892 = !DILocation(line: 974, column: 15, scope: !3749)
!3893 = !DILocation(line: 974, column: 20, scope: !3749)
!3894 = !DILocation(line: 975, column: 19, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3749, file: !1075, line: 975, column: 7)
!3896 = !DILocation(line: 975, column: 25, scope: !3895)
!3897 = !DILocation(line: 975, column: 7, scope: !3749)
!3898 = !DILocation(line: 976, column: 23, scope: !3895)
!3899 = !DILocation(line: 976, column: 22, scope: !3895)
!3900 = !DILocation(line: 976, column: 5, scope: !3895)
!3901 = !DILocation(line: 977, column: 19, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3749, file: !1075, line: 977, column: 7)
!3903 = !DILocation(line: 977, column: 27, scope: !3902)
!3904 = !DILocation(line: 977, column: 7, scope: !3749)
!3905 = !DILocation(line: 978, column: 34, scope: !3902)
!3906 = !DILocation(line: 978, column: 17, scope: !3902)
!3907 = !DILocation(line: 978, column: 24, scope: !3902)
!3908 = !DILocation(line: 978, column: 5, scope: !3902)
!3909 = !DILocation(line: 980, column: 43, scope: !3749)
!3910 = !DILocalVariable(name: "image_info", arg: 1, scope: !3911, file: !1075, line: 2850, type: !856)
!3911 = distinct !DISubprogram(name: "SetImageInfoFile", scope: !1075, file: !1075, line: 2850, type: !3912, scopeLine: 2851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !856, !918}
!3914 = !{!3910, !3915}
!3915 = !DILocalVariable(name: "file", arg: 2, scope: !3911, file: !1075, line: 2850, type: !918)
!3916 = !DILocation(line: 0, scope: !3911, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 980, column: 3, scope: !3749)
!3918 = !DILocation(line: 2854, column: 19, scope: !3919, inlinedAt: !3917)
!3919 = distinct !DILexicalBlock(scope: !3911, file: !1075, line: 2854, column: 7)
!3920 = !DILocation(line: 2854, column: 25, scope: !3919, inlinedAt: !3917)
!3921 = !DILocation(line: 2854, column: 7, scope: !3911, inlinedAt: !3917)
!3922 = !DILocation(line: 2857, column: 15, scope: !3911, inlinedAt: !3917)
!3923 = !DILocation(line: 2857, column: 19, scope: !3911, inlinedAt: !3917)
!3924 = !DILocation(line: 981, column: 43, scope: !3749)
!3925 = !{!1339, !1220, i64 312}
!3926 = !DILocation(line: 981, column: 60, scope: !3749)
!3927 = !{!1339, !1219, i64 320}
!3928 = !DILocalVariable(name: "image_info", arg: 1, scope: !3929, file: !1075, line: 2814, type: !856)
!3929 = distinct !DISubprogram(name: "SetImageInfoBlob", scope: !1075, file: !1075, line: 2814, type: !3930, scopeLine: 2816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !856, !914, !916}
!3932 = !{!3928, !3933, !3934}
!3933 = !DILocalVariable(name: "blob", arg: 2, scope: !3929, file: !1075, line: 2814, type: !914)
!3934 = !DILocalVariable(name: "length", arg: 3, scope: !3929, file: !1075, line: 2815, type: !916)
!3935 = !DILocation(line: 0, scope: !3929, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 981, column: 3, scope: !3749)
!3937 = !DILocation(line: 2819, column: 7, scope: !3929, inlinedAt: !3936)
!3938 = !DILocation(line: 2856, column: 19, scope: !3919, inlinedAt: !3917)
!3939 = !DILocation(line: 2855, column: 12, scope: !3919, inlinedAt: !3917)
!3940 = !DILocation(line: 2819, column: 19, scope: !3941, inlinedAt: !3936)
!3941 = distinct !DILexicalBlock(scope: !3929, file: !1075, line: 2819, column: 7)
!3942 = !DILocation(line: 2819, column: 25, scope: !3941, inlinedAt: !3936)
!3943 = !DILocation(line: 2820, column: 12, scope: !3941, inlinedAt: !3936)
!3944 = !DILocation(line: 2820, column: 5, scope: !3941, inlinedAt: !3936)
!3945 = !DILocation(line: 2822, column: 15, scope: !3929, inlinedAt: !3936)
!3946 = !DILocation(line: 2822, column: 19, scope: !3929, inlinedAt: !3936)
!3947 = !DILocation(line: 2823, column: 15, scope: !3929, inlinedAt: !3936)
!3948 = !DILocation(line: 2823, column: 21, scope: !3929, inlinedAt: !3936)
!3949 = !DILocation(line: 982, column: 34, scope: !3749)
!3950 = !{!1339, !1220, i64 296}
!3951 = !DILocation(line: 982, column: 15, scope: !3749)
!3952 = !DILocation(line: 982, column: 21, scope: !3749)
!3953 = !DILocation(line: 983, column: 48, scope: !3749)
!3954 = !{!1339, !1210, i64 16760}
!3955 = !DILocation(line: 983, column: 15, scope: !3749)
!3956 = !DILocation(line: 983, column: 35, scope: !3749)
!3957 = !DILocation(line: 984, column: 39, scope: !3749)
!3958 = !DILocation(line: 984, column: 58, scope: !3749)
!3959 = !DILocation(line: 984, column: 10, scope: !3749)
!3960 = !DILocation(line: 985, column: 39, scope: !3749)
!3961 = !DILocation(line: 985, column: 58, scope: !3749)
!3962 = !DILocation(line: 985, column: 10, scope: !3749)
!3963 = !DILocation(line: 986, column: 39, scope: !3749)
!3964 = !DILocation(line: 986, column: 56, scope: !3749)
!3965 = !DILocation(line: 986, column: 10, scope: !3749)
!3966 = !DILocation(line: 987, column: 39, scope: !3749)
!3967 = !DILocation(line: 987, column: 60, scope: !3749)
!3968 = !DILocation(line: 987, column: 10, scope: !3749)
!3969 = !DILocation(line: 989, column: 36, scope: !3749)
!3970 = !DILocation(line: 989, column: 15, scope: !3749)
!3971 = !DILocation(line: 989, column: 23, scope: !3749)
!3972 = !{!1339, !1219, i64 16728}
!3973 = !DILocation(line: 990, column: 36, scope: !3749)
!3974 = !DILocation(line: 990, column: 15, scope: !3749)
!3975 = !DILocation(line: 990, column: 23, scope: !3749)
!3976 = !{!1339, !1219, i64 16736}
!3977 = !DILocation(line: 991, column: 35, scope: !3749)
!3978 = !DILocation(line: 991, column: 15, scope: !3749)
!3979 = !DILocation(line: 991, column: 22, scope: !3749)
!3980 = !DILocation(line: 992, column: 21, scope: !3749)
!3981 = !DILocation(line: 992, column: 20, scope: !3749)
!3982 = !DILocation(line: 993, column: 37, scope: !3749)
!3983 = !DILocation(line: 993, column: 15, scope: !3749)
!3984 = !DILocation(line: 993, column: 24, scope: !3749)
!3985 = !DILocation(line: 994, column: 3, scope: !3749)
!3986 = !DILocation(line: 995, column: 1, scope: !3749)
!3987 = !DISubprogram(name: "CloneImageOptions", scope: !500, file: !500, line: 161, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!651, !856, !1019}
!3990 = !DISubprogram(name: "CloneStringInfo", scope: !996, file: !996, line: 89, type: !3991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!994, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!3995 = !DILocation(line: 0, scope: !3911)
!3996 = !DILocation(line: 2854, column: 19, scope: !3919)
!3997 = !DILocation(line: 2854, column: 25, scope: !3919)
!3998 = !DILocation(line: 2854, column: 7, scope: !3911)
!3999 = !DILocation(line: 2856, column: 19, scope: !3919)
!4000 = !DILocation(line: 2855, column: 12, scope: !3919)
!4001 = !DILocation(line: 2855, column: 5, scope: !3919)
!4002 = !DILocation(line: 2857, column: 15, scope: !3911)
!4003 = !DILocation(line: 2857, column: 19, scope: !3911)
!4004 = !DILocation(line: 2858, column: 1, scope: !3911)
!4005 = !DILocation(line: 0, scope: !3929)
!4006 = !DILocation(line: 2819, column: 19, scope: !3941)
!4007 = !DILocation(line: 2819, column: 25, scope: !3941)
!4008 = !DILocation(line: 2819, column: 7, scope: !3929)
!4009 = !DILocation(line: 2821, column: 19, scope: !3941)
!4010 = !DILocation(line: 2820, column: 12, scope: !3941)
!4011 = !DILocation(line: 2820, column: 5, scope: !3941)
!4012 = !DILocation(line: 2822, column: 15, scope: !3929)
!4013 = !DILocation(line: 2822, column: 19, scope: !3929)
!4014 = !DILocation(line: 2823, column: 15, scope: !3929)
!4015 = !DILocation(line: 2823, column: 21, scope: !3929)
!4016 = !DILocation(line: 2824, column: 1, scope: !3929)
!4017 = !DISubprogram(name: "LockSemaphoreInfo", scope: !809, file: !809, line: 37, type: !4018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !807}
!4020 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !809, file: !809, line: 39, type: !4018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4021 = !DISubprogram(name: "DestroyImagePixels", scope: !75, file: !75, line: 563, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4022 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1566, file: !1566, line: 51, type: !4023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!690, !690}
!4025 = !DISubprogram(name: "DestroyImageProfiles", scope: !91, file: !91, line: 69, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4026 = !DISubprogram(name: "DestroyImageProperties", scope: !3458, file: !3458, line: 43, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4027 = !DISubprogram(name: "DestroyImageArtifacts", scope: !3735, file: !3735, line: 39, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4028 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !809, file: !809, line: 36, type: !4029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!4032 = !DISubprogram(name: "DestroyImageOptions", scope: !500, file: !500, line: 175, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4033 = !DISubprogram(name: "DestroyPixelCache", scope: !1604, file: !1604, line: 222, type: !3744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4034 = !DISubprogram(name: "DestroyStringInfo", scope: !996, file: !996, line: 91, type: !4035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!994, !994}
!4037 = distinct !DISubprogram(name: "DisassociateImageStream", scope: !1075, file: !1075, line: 1158, type: !2259, scopeLine: 1159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4038)
!4038 = !{!4039}
!4039 = !DILocalVariable(name: "image", arg: 1, scope: !4037, file: !1075, line: 1158, type: !635)
!4040 = !DILocation(line: 0, scope: !4037)
!4041 = !DILocation(line: 1162, column: 14, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4037, file: !1075, line: 1162, column: 7)
!4043 = !DILocation(line: 1162, column: 20, scope: !4042)
!4044 = !DILocation(line: 1162, column: 7, scope: !4037)
!4045 = !DILocation(line: 1163, column: 68, scope: !4042)
!4046 = !DILocation(line: 1163, column: 12, scope: !4042)
!4047 = !DILocation(line: 1163, column: 5, scope: !4042)
!4048 = !DILocation(line: 1164, column: 28, scope: !4037)
!4049 = !DILocation(line: 1164, column: 10, scope: !4037)
!4050 = !DILocation(line: 1165, column: 1, scope: !4037)
!4051 = !DISubprogram(name: "DetachBlob", scope: !624, file: !624, line: 111, type: !4052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!823, !784}
!4054 = distinct !DISubprogram(name: "GetImageClipMask", scope: !1075, file: !1075, line: 1189, type: !4055, scopeLine: 1191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!635, !912, !1021}
!4057 = !{!4058, !4059}
!4058 = !DILocalVariable(name: "image", arg: 1, scope: !4054, file: !1075, line: 1189, type: !912)
!4059 = !DILocalVariable(name: "exception", arg: 2, scope: !4054, file: !1075, line: 1190, type: !1021)
!4060 = !DILocation(line: 0, scope: !4054)
!4061 = !DILocation(line: 1193, column: 14, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4054, file: !1075, line: 1193, column: 7)
!4063 = !DILocation(line: 1193, column: 20, scope: !4062)
!4064 = !DILocation(line: 1193, column: 7, scope: !4054)
!4065 = !DILocation(line: 1194, column: 12, scope: !4062)
!4066 = !DILocation(line: 1194, column: 5, scope: !4062)
!4067 = !DILocation(line: 1196, column: 14, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4054, file: !1075, line: 1196, column: 7)
!4069 = !DILocation(line: 1196, column: 24, scope: !4068)
!4070 = !DILocation(line: 1196, column: 7, scope: !4054)
!4071 = !DILocation(line: 1198, column: 10, scope: !4054)
!4072 = !DILocation(line: 1198, column: 3, scope: !4054)
!4073 = !DILocation(line: 1199, column: 1, scope: !4054)
!4074 = !DISubprogram(name: "GetEnvironmentValue", scope: !996, file: !996, line: 50, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4075 = !DISubprogram(name: "IsStringTrue", scope: !996, file: !996, line: 71, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!651, !768}
!4078 = distinct !DISubprogram(name: "GetImageInfoFile", scope: !1075, file: !1075, line: 1329, type: !4079, scopeLine: 1330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!918, !1019}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "image_info", arg: 1, scope: !4078, file: !1075, line: 1329, type: !1019)
!4083 = !DILocation(line: 0, scope: !4078)
!4084 = !DILocation(line: 1331, column: 22, scope: !4078)
!4085 = !DILocation(line: 1331, column: 3, scope: !4078)
!4086 = distinct !DISubprogram(name: "GetImageMask", scope: !1075, file: !1075, line: 1356, type: !4055, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "image", arg: 1, scope: !4086, file: !1075, line: 1356, type: !912)
!4089 = !DILocalVariable(name: "exception", arg: 2, scope: !4086, file: !1075, line: 1356, type: !1021)
!4090 = !DILocation(line: 0, scope: !4086)
!4091 = !DILocation(line: 1359, column: 14, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4086, file: !1075, line: 1359, column: 7)
!4093 = !DILocation(line: 1359, column: 20, scope: !4092)
!4094 = !DILocation(line: 1359, column: 7, scope: !4086)
!4095 = !DILocation(line: 1360, column: 12, scope: !4092)
!4096 = !DILocation(line: 1360, column: 5, scope: !4092)
!4097 = !DILocation(line: 1362, column: 14, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4086, file: !1075, line: 1362, column: 7)
!4099 = !DILocation(line: 1362, column: 19, scope: !4098)
!4100 = !DILocation(line: 1362, column: 7, scope: !4086)
!4101 = !DILocation(line: 1364, column: 10, scope: !4086)
!4102 = !DILocation(line: 1364, column: 3, scope: !4086)
!4103 = !DILocation(line: 1365, column: 1, scope: !4086)
!4104 = distinct !DISubprogram(name: "GetImageChannels", scope: !1075, file: !1075, line: 1390, type: !4105, scopeLine: 1391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!646, !635}
!4107 = !{!4108}
!4108 = !DILocalVariable(name: "image", arg: 1, scope: !4104, file: !1075, line: 1390, type: !635)
!4109 = !DILocation(line: 0, scope: !4104)
!4110 = !DILocation(line: 1394, column: 14, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4104, file: !1075, line: 1394, column: 7)
!4112 = !DILocation(line: 1394, column: 20, scope: !4111)
!4113 = !DILocation(line: 1394, column: 7, scope: !4104)
!4114 = !DILocation(line: 1395, column: 68, scope: !4111)
!4115 = !DILocation(line: 1395, column: 12, scope: !4111)
!4116 = !DILocation(line: 1395, column: 5, scope: !4111)
!4117 = !DILocation(line: 1396, column: 17, scope: !4104)
!4118 = !DILocation(line: 1396, column: 3, scope: !4104)
!4119 = distinct !DISubprogram(name: "GetImageReferenceCount", scope: !1075, file: !1075, line: 1421, type: !4120, scopeLine: 1422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!699, !635}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "image", arg: 1, scope: !4119, file: !1075, line: 1421, type: !635)
!4124 = !DILocalVariable(name: "reference_count", scope: !4119, file: !1075, line: 1424, type: !699)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 1428, column: 14, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4119, file: !1075, line: 1428, column: 7)
!4128 = !DILocation(line: 1428, column: 20, scope: !4127)
!4129 = !DILocation(line: 1428, column: 7, scope: !4119)
!4130 = !DILocation(line: 1429, column: 68, scope: !4127)
!4131 = !DILocation(line: 1429, column: 12, scope: !4127)
!4132 = !DILocation(line: 1429, column: 5, scope: !4127)
!4133 = !DILocation(line: 1430, column: 28, scope: !4119)
!4134 = !DILocation(line: 1430, column: 3, scope: !4119)
!4135 = !DILocation(line: 1431, column: 26, scope: !4119)
!4136 = !DILocation(line: 1432, column: 30, scope: !4119)
!4137 = !DILocation(line: 1432, column: 3, scope: !4119)
!4138 = !DILocation(line: 1433, column: 3, scope: !4119)
!4139 = distinct !DISubprogram(name: "GetImageVirtualPixelMethod", scope: !1075, file: !1075, line: 1460, type: !4140, scopeLine: 1461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!984, !912}
!4142 = !{!4143}
!4143 = !DILocalVariable(name: "image", arg: 1, scope: !4139, file: !1075, line: 1460, type: !912)
!4144 = !DILocation(line: 0, scope: !4139)
!4145 = !DILocation(line: 1464, column: 14, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4139, file: !1075, line: 1464, column: 7)
!4147 = !DILocation(line: 1464, column: 20, scope: !4146)
!4148 = !DILocation(line: 1464, column: 7, scope: !4139)
!4149 = !DILocation(line: 1465, column: 68, scope: !4146)
!4150 = !DILocation(line: 1465, column: 12, scope: !4146)
!4151 = !DILocation(line: 1465, column: 5, scope: !4146)
!4152 = !DILocation(line: 1466, column: 10, scope: !4139)
!4153 = !DILocation(line: 1466, column: 3, scope: !4139)
!4154 = !DISubprogram(name: "GetPixelCacheVirtualMethod", scope: !4155, file: !4155, line: 79, type: !4140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4155 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!4156 = distinct !DISubprogram(name: "InterpretImageFilename", scope: !1075, file: !1075, line: 1502, type: !4157, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!646, !1019, !635, !768, !501, !694}
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4176, !4179, !4180, !4181, !4182}
!4160 = !DILocalVariable(name: "image_info", arg: 1, scope: !4156, file: !1075, line: 1502, type: !1019)
!4161 = !DILocalVariable(name: "image", arg: 2, scope: !4156, file: !1075, line: 1503, type: !635)
!4162 = !DILocalVariable(name: "format", arg: 3, scope: !4156, file: !1075, line: 1503, type: !768)
!4163 = !DILocalVariable(name: "value", arg: 4, scope: !4156, file: !1075, line: 1503, type: !501)
!4164 = !DILocalVariable(name: "filename", arg: 5, scope: !4156, file: !1075, line: 1503, type: !694)
!4165 = !DILocalVariable(name: "q", scope: !4156, file: !1075, line: 1506, type: !694)
!4166 = !DILocalVariable(name: "c", scope: !4156, file: !1075, line: 1509, type: !501)
!4167 = !DILocalVariable(name: "canonical", scope: !4156, file: !1075, line: 1512, type: !651)
!4168 = !DILocalVariable(name: "p", scope: !4156, file: !1075, line: 1515, type: !768)
!4169 = !DILocalVariable(name: "length", scope: !4156, file: !1075, line: 1518, type: !646)
!4170 = !DILocalVariable(name: "value", scope: !4171, file: !1075, line: 1534, type: !699)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !1075, line: 1532, column: 7)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !1075, line: 1531, column: 9)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !1075, line: 1524, column: 3)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !1075, line: 1523, column: 3)
!4175 = distinct !DILexicalBlock(scope: !4156, file: !1075, line: 1523, column: 3)
!4176 = !DILocalVariable(name: "pattern", scope: !4177, file: !1075, line: 1561, type: !788)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !1075, line: 1559, column: 7)
!4178 = distinct !DILexicalBlock(scope: !4173, file: !1075, line: 1540, column: 5)
!4179 = !DILocalVariable(name: "value", scope: !4177, file: !1075, line: 1564, type: !768)
!4180 = !DILocalVariable(name: "r", scope: !4177, file: !1075, line: 1567, type: !694)
!4181 = !DILocalVariable(name: "i", scope: !4177, file: !1075, line: 1570, type: !699)
!4182 = !DILocalVariable(name: "depth", scope: !4177, file: !1075, line: 1573, type: !699)
!4183 = !DILocation(line: 0, scope: !4156)
!4184 = !DILocation(line: 1505, column: 3, scope: !4156)
!4185 = !DILocation(line: 1522, column: 10, scope: !4156)
!4186 = !DILocation(line: 1523, column: 10, scope: !4175)
!4187 = !DILocation(line: 1523, column: 32, scope: !4174)
!4188 = !DILocation(line: 1523, column: 3, scope: !4175)
!4189 = !DILocation(line: 1520, column: 12, scope: !4156)
!4190 = !DILocation(line: 1634, column: 3, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4156, file: !1075, line: 1634, column: 3)
!4192 = !DILocation(line: 1525, column: 17, scope: !4173)
!4193 = !DILocation(line: 1525, column: 6, scope: !4173)
!4194 = !DILocation(line: 1526, column: 9, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4173, file: !1075, line: 1526, column: 9)
!4196 = !DILocation(line: 1526, column: 9, scope: !4173)
!4197 = !DILocation(line: 1528, column: 12, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4195, file: !1075, line: 1527, column: 7)
!4199 = !DILocation(line: 1529, column: 9, scope: !4198)
!4200 = !DILocation(line: 1536, column: 25, scope: !4171)
!4201 = !DILocation(line: 0, scope: !4171)
!4202 = !DILocation(line: 1539, column: 14, scope: !4173)
!4203 = !DILocation(line: 1539, column: 13, scope: !4173)
!4204 = !DILocation(line: 1538, column: 7, scope: !4171)
!4205 = !DILocation(line: 1539, column: 5, scope: !4173)
!4206 = !DILocation(line: 1545, column: 10, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4178, file: !1075, line: 1544, column: 7)
!4208 = !DILocation(line: 1546, column: 12, scope: !4207)
!4209 = !DILocation(line: 1547, column: 11, scope: !4207)
!4210 = !DILocation(line: 1548, column: 46, scope: !4207)
!4211 = !DILocation(line: 1548, column: 43, scope: !4207)
!4212 = !DILocation(line: 1548, column: 78, scope: !4207)
!4213 = !DILocation(line: 1548, column: 16, scope: !4207)
!4214 = !DILocation(line: 1550, column: 11, scope: !4207)
!4215 = !DILocation(line: 1551, column: 16, scope: !4207)
!4216 = !DILocation(line: 1553, column: 13, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !1075, line: 1553, column: 13)
!4218 = !DILocation(line: 1553, column: 20, scope: !4217)
!4219 = !DILocation(line: 1553, column: 13, scope: !4207)
!4220 = !DILocation(line: 1560, column: 9, scope: !4177)
!4221 = !DILocation(line: 1561, column: 11, scope: !4177)
!4222 = !DILocation(line: 1578, column: 13, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1578, column: 13)
!4224 = !DILocation(line: 1578, column: 27, scope: !4223)
!4225 = !DILocation(line: 1578, column: 13, scope: !4177)
!4226 = !DILocation(line: 0, scope: !4177)
!4227 = !DILocation(line: 1582, column: 48, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !1075, line: 1582, column: 9)
!4229 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1582, column: 9)
!4230 = !DILocation(line: 1582, column: 9, scope: !4229)
!4231 = !DILocation(line: 1585, column: 18, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !1075, line: 1584, column: 15)
!4233 = distinct !DILexicalBlock(scope: !4228, file: !1075, line: 1583, column: 9)
!4234 = !DILocation(line: 1585, column: 13, scope: !4232)
!4235 = !DILocation(line: 1586, column: 18, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4233, file: !1075, line: 1586, column: 15)
!4237 = !DILocation(line: 1586, column: 15, scope: !4233)
!4238 = !DILocation(line: 1588, column: 21, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4233, file: !1075, line: 1588, column: 15)
!4240 = !DILocation(line: 1588, column: 15, scope: !4233)
!4241 = !DILocation(line: 1590, column: 11, scope: !4233)
!4242 = !DILocation(line: 1590, column: 21, scope: !4233)
!4243 = !DILocation(line: 1582, column: 62, scope: !4228)
!4244 = !DILocation(line: 1582, column: 22, scope: !4228)
!4245 = !DILocation(line: 1582, column: 44, scope: !4228)
!4246 = distinct !{!4246, !4230, !4247, !2119, !2120}
!4247 = !DILocation(line: 1591, column: 9, scope: !4229)
!4248 = !DILocation(line: 0, scope: !4229)
!4249 = !DILocation(line: 1592, column: 9, scope: !4177)
!4250 = !DILocation(line: 1592, column: 19, scope: !4177)
!4251 = !DILocation(line: 1593, column: 13, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1593, column: 13)
!4253 = !DILocation(line: 1593, column: 51, scope: !4252)
!4254 = !DILocation(line: 1593, column: 13, scope: !4177)
!4255 = !DILocation(line: 1606, column: 13, scope: !4177)
!4256 = !DILocation(line: 1607, column: 17, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1606, column: 13)
!4258 = !DILocation(line: 1608, column: 20, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1608, column: 13)
!4260 = !DILocation(line: 1608, column: 44, scope: !4259)
!4261 = !DILocation(line: 1610, column: 17, scope: !4259)
!4262 = !DILocation(line: 1610, column: 11, scope: !4259)
!4263 = !DILocation(line: 1611, column: 20, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1611, column: 13)
!4265 = !DILocation(line: 1611, column: 44, scope: !4264)
!4266 = !DILocation(line: 1613, column: 17, scope: !4264)
!4267 = !DILocation(line: 1613, column: 11, scope: !4264)
!4268 = !DILocation(line: 1614, column: 19, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1614, column: 13)
!4270 = !DILocation(line: 1614, column: 13, scope: !4177)
!4271 = !DILocation(line: 1616, column: 10, scope: !4177)
!4272 = !DILocation(line: 1617, column: 12, scope: !4177)
!4273 = !DILocation(line: 1618, column: 11, scope: !4177)
!4274 = !DILocation(line: 1619, column: 44, scope: !4177)
!4275 = !DILocation(line: 1619, column: 51, scope: !4177)
!4276 = !DILocation(line: 1619, column: 41, scope: !4177)
!4277 = !DILocation(line: 1620, column: 25, scope: !4177)
!4278 = !DILocation(line: 1619, column: 16, scope: !4177)
!4279 = !DILocation(line: 1621, column: 17, scope: !4177)
!4280 = !DILocation(line: 1621, column: 32, scope: !4177)
!4281 = !DILocation(line: 1621, column: 15, scope: !4177)
!4282 = !DILocation(line: 1622, column: 11, scope: !4177)
!4283 = !DILocation(line: 1623, column: 50, scope: !4177)
!4284 = !DILocation(line: 1623, column: 16, scope: !4177)
!4285 = !DILocation(line: 1625, column: 16, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4177, file: !1075, line: 1625, column: 13)
!4287 = !DILocation(line: 1625, column: 13, scope: !4286)
!4288 = !DILocation(line: 1625, column: 20, scope: !4286)
!4289 = !DILocation(line: 1625, column: 13, scope: !4177)
!4290 = !DILocation(line: 0, scope: !4175)
!4291 = !DILocation(line: 1629, column: 7, scope: !4178)
!4292 = !DILocation(line: 1521, column: 9, scope: !4156)
!4293 = !DILocation(line: 1523, column: 60, scope: !4174)
!4294 = !DILocation(line: 1523, column: 52, scope: !4174)
!4295 = distinct !{!4295, !4188, !4296, !2119, !2120}
!4296 = !DILocation(line: 1633, column: 3, scope: !4175)
!4297 = !DILocation(line: 0, scope: !4191)
!4298 = !DILocation(line: 1634, column: 20, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4191, file: !1075, line: 1634, column: 3)
!4300 = !DILocation(line: 1635, column: 28, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4299, file: !1075, line: 1635, column: 9)
!4302 = !DILocation(line: 1635, column: 25, scope: !4301)
!4303 = !DILocation(line: 1635, column: 32, scope: !4301)
!4304 = !DILocation(line: 1635, column: 9, scope: !4299)
!4305 = !DILocation(line: 1637, column: 65, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4301, file: !1075, line: 1636, column: 7)
!4307 = !DILocation(line: 1637, column: 62, scope: !4306)
!4308 = !DILocation(line: 1637, column: 16, scope: !4306)
!4309 = !DILocation(line: 1639, column: 7, scope: !4306)
!4310 = !DILocation(line: 1634, column: 33, scope: !4299)
!4311 = !DILocation(line: 1634, column: 3, scope: !4299)
!4312 = distinct !{!4312, !4190, !4313, !2119, !2120}
!4313 = !DILocation(line: 1639, column: 7, scope: !4191)
!4314 = !DILocation(line: 1640, column: 17, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4156, file: !1075, line: 1640, column: 7)
!4316 = !DILocation(line: 1640, column: 7, scope: !4156)
!4317 = !DILocation(line: 1641, column: 12, scope: !4315)
!4318 = !DILocation(line: 1641, column: 5, scope: !4315)
!4319 = !DILocation(line: 1642, column: 10, scope: !4156)
!4320 = !DILocation(line: 1643, column: 1, scope: !4156)
!4321 = !DILocation(line: 1642, column: 3, scope: !4156)
!4322 = !DISubprogram(name: "LocaleNCompare", scope: !996, file: !996, line: 67, type: !4323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!501, !768, !768, !916}
!4325 = !DISubprogram(name: "GetImageArtifact", scope: !3735, file: !3735, line: 30, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4326 = distinct !DISubprogram(name: "IsHighDynamicRangeImage", scope: !1075, file: !1075, line: 1672, type: !4327, scopeLine: 1674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!651, !912, !1021}
!4329 = !{!4330, !4331}
!4330 = !DILocalVariable(name: "image", arg: 1, scope: !4326, file: !1075, line: 1672, type: !912)
!4331 = !DILocalVariable(name: "exception", arg: 2, scope: !4326, file: !1075, line: 1673, type: !1021)
!4332 = !DILocation(line: 0, scope: !4326)
!4333 = !DILocation(line: 1678, column: 3, scope: !4326)
!4334 = distinct !DISubprogram(name: "IsImageObject", scope: !1075, file: !1075, line: 1784, type: !4335, scopeLine: 1785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!651, !912}
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "image", arg: 1, scope: !4334, file: !1075, line: 1784, type: !912)
!4339 = !DILocalVariable(name: "p", scope: !4334, file: !1075, line: 1787, type: !912)
!4340 = !DILocation(line: 0, scope: !4334)
!4341 = !DILocation(line: 1790, column: 14, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4334, file: !1075, line: 1790, column: 7)
!4343 = !DILocation(line: 1790, column: 20, scope: !4342)
!4344 = !DILocation(line: 1790, column: 7, scope: !4334)
!4345 = !DILocation(line: 1791, column: 12, scope: !4342)
!4346 = !DILocation(line: 1791, column: 5, scope: !4342)
!4347 = !DILocation(line: 1792, column: 3, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4334, file: !1075, line: 1792, column: 3)
!4349 = !DILocation(line: 1793, column: 12, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !1075, line: 1793, column: 9)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !1075, line: 1792, column: 3)
!4352 = !DILocation(line: 1793, column: 22, scope: !4350)
!4353 = !DILocation(line: 1793, column: 9, scope: !4351)
!4354 = !DILocation(line: 1792, column: 40, scope: !4351)
!4355 = !DILocation(line: 1792, column: 19, scope: !4351)
!4356 = distinct !{!4356, !4347, !4357, !2119, !2120}
!4357 = !DILocation(line: 1794, column: 25, scope: !4348)
!4358 = !DILocation(line: 1796, column: 1, scope: !4334)
!4359 = distinct !DISubprogram(name: "IsTaintImage", scope: !1075, file: !1075, line: 1821, type: !4335, scopeLine: 1822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4360)
!4360 = !{!4361, !4362, !4363, !4364}
!4361 = !DILocalVariable(name: "image", arg: 1, scope: !4359, file: !1075, line: 1821, type: !912)
!4362 = !DILocalVariable(name: "magick", scope: !4359, file: !1075, line: 1824, type: !788)
!4363 = !DILocalVariable(name: "filename", scope: !4359, file: !1075, line: 1825, type: !788)
!4364 = !DILocalVariable(name: "p", scope: !4359, file: !1075, line: 1828, type: !912)
!4365 = !DILocation(line: 0, scope: !4359)
!4366 = !DILocation(line: 1823, column: 3, scope: !4359)
!4367 = !DILocation(line: 1824, column: 5, scope: !4359)
!4368 = !DILocation(line: 1825, column: 5, scope: !4359)
!4369 = !DILocation(line: 1831, column: 14, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4359, file: !1075, line: 1831, column: 7)
!4371 = !DILocation(line: 1831, column: 20, scope: !4370)
!4372 = !DILocation(line: 1831, column: 7, scope: !4359)
!4373 = !DILocation(line: 1832, column: 12, scope: !4370)
!4374 = !DILocation(line: 1832, column: 5, scope: !4370)
!4375 = !DILocation(line: 1834, column: 41, scope: !4359)
!4376 = !DILocation(line: 1834, column: 10, scope: !4359)
!4377 = !DILocation(line: 1835, column: 43, scope: !4359)
!4378 = !DILocation(line: 1835, column: 10, scope: !4359)
!4379 = !DILocation(line: 1836, column: 3, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4359, file: !1075, line: 1836, column: 3)
!4381 = !DILocation(line: 1838, column: 12, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !1075, line: 1838, column: 9)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !1075, line: 1837, column: 3)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !1075, line: 1836, column: 3)
!4385 = !DILocation(line: 1838, column: 18, scope: !4382)
!4386 = !DILocation(line: 1838, column: 9, scope: !4383)
!4387 = !DILocation(line: 1840, column: 26, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4383, file: !1075, line: 1840, column: 9)
!4389 = !DILocation(line: 1840, column: 9, scope: !4388)
!4390 = !DILocation(line: 1840, column: 41, scope: !4388)
!4391 = !DILocation(line: 1840, column: 9, scope: !4383)
!4392 = !DILocation(line: 1842, column: 26, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4383, file: !1075, line: 1842, column: 9)
!4394 = !DILocation(line: 1842, column: 9, scope: !4393)
!4395 = !DILocation(line: 1842, column: 45, scope: !4393)
!4396 = !DILocation(line: 1842, column: 9, scope: !4383)
!4397 = !DILocation(line: 1836, column: 40, scope: !4384)
!4398 = !DILocation(line: 1836, column: 19, scope: !4384)
!4399 = distinct !{!4399, !4379, !4400, !2119, !2120}
!4400 = !DILocation(line: 1844, column: 3, scope: !4380)
!4401 = !DILocation(line: 1846, column: 1, scope: !4359)
!4402 = !DISubprogram(name: "LocaleCompare", scope: !996, file: !996, line: 66, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!501, !768, !768}
!4405 = distinct !DISubprogram(name: "ModifyImage", scope: !1075, file: !1075, line: 1874, type: !4406, scopeLine: 1876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4409)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!651, !4408, !1021}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!4409 = !{!4410, !4411, !4412}
!4410 = !DILocalVariable(name: "image", arg: 1, scope: !4405, file: !1075, line: 1874, type: !4408)
!4411 = !DILocalVariable(name: "exception", arg: 2, scope: !4405, file: !1075, line: 1875, type: !1021)
!4412 = !DILocalVariable(name: "clone_image", scope: !4405, file: !1075, line: 1878, type: !635)
!4413 = !DILocation(line: 0, scope: !4405)
!4414 = !DILocation(line: 1883, column: 8, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4405, file: !1075, line: 1883, column: 7)
!4416 = !DILocation(line: 1883, column: 17, scope: !4415)
!4417 = !DILocation(line: 1883, column: 23, scope: !4415)
!4418 = !DILocation(line: 1883, column: 7, scope: !4405)
!4419 = !DILocation(line: 1884, column: 71, scope: !4415)
!4420 = !DILocation(line: 1884, column: 12, scope: !4415)
!4421 = !DILocation(line: 1885, column: 30, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4405, file: !1075, line: 1885, column: 7)
!4423 = !DILocation(line: 1428, column: 14, scope: !4127, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 1885, column: 7, scope: !4422)
!4425 = !DILocation(line: 1884, column: 5, scope: !4415)
!4426 = !DILocation(line: 0, scope: !4119, inlinedAt: !4424)
!4427 = !DILocation(line: 1428, column: 7, scope: !4119, inlinedAt: !4424)
!4428 = !DILocation(line: 1429, column: 68, scope: !4127, inlinedAt: !4424)
!4429 = !DILocation(line: 1429, column: 12, scope: !4127, inlinedAt: !4424)
!4430 = !DILocation(line: 1429, column: 5, scope: !4127, inlinedAt: !4424)
!4431 = !DILocation(line: 1430, column: 28, scope: !4119, inlinedAt: !4424)
!4432 = !DILocation(line: 1430, column: 3, scope: !4119, inlinedAt: !4424)
!4433 = !DILocation(line: 1431, column: 26, scope: !4119, inlinedAt: !4424)
!4434 = !DILocation(line: 1432, column: 30, scope: !4119, inlinedAt: !4424)
!4435 = !DILocation(line: 1432, column: 3, scope: !4119, inlinedAt: !4424)
!4436 = !DILocation(line: 1885, column: 38, scope: !4422)
!4437 = !DILocation(line: 1885, column: 7, scope: !4405)
!4438 = !DILocation(line: 1887, column: 26, scope: !4405)
!4439 = !DILocation(line: 1887, column: 15, scope: !4405)
!4440 = !DILocation(line: 1888, column: 22, scope: !4405)
!4441 = !DILocation(line: 1888, column: 31, scope: !4405)
!4442 = !DILocation(line: 1888, column: 3, scope: !4405)
!4443 = !DILocation(line: 1889, column: 4, scope: !4405)
!4444 = !DILocation(line: 1889, column: 13, scope: !4405)
!4445 = !DILocation(line: 1889, column: 28, scope: !4405)
!4446 = !DILocation(line: 1890, column: 33, scope: !4405)
!4447 = !DILocation(line: 1890, column: 3, scope: !4405)
!4448 = !DILocation(line: 1891, column: 9, scope: !4405)
!4449 = !DILocation(line: 1892, column: 3, scope: !4405)
!4450 = !DILocation(line: 1893, column: 1, scope: !4405)
!4451 = distinct !DISubprogram(name: "NewMagickImage", scope: !1075, file: !1075, line: 1926, type: !4452, scopeLine: 1929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!635, !1019, !916, !916, !3097}
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4468, !4469}
!4455 = !DILocalVariable(name: "image_info", arg: 1, scope: !4451, file: !1075, line: 1926, type: !1019)
!4456 = !DILocalVariable(name: "width", arg: 2, scope: !4451, file: !1075, line: 1927, type: !916)
!4457 = !DILocalVariable(name: "height", arg: 3, scope: !4451, file: !1075, line: 1927, type: !916)
!4458 = !DILocalVariable(name: "background", arg: 4, scope: !4451, file: !1075, line: 1928, type: !3097)
!4459 = !DILocalVariable(name: "image_view", scope: !4451, file: !1075, line: 1931, type: !2272)
!4460 = !DILocalVariable(name: "exception", scope: !4451, file: !1075, line: 1934, type: !1021)
!4461 = !DILocalVariable(name: "image", scope: !4451, file: !1075, line: 1937, type: !635)
!4462 = !DILocalVariable(name: "y", scope: !4451, file: !1075, line: 1940, type: !699)
!4463 = !DILocalVariable(name: "status", scope: !4451, file: !1075, line: 1943, type: !651)
!4464 = !DILocalVariable(name: "indexes", scope: !4465, file: !1075, line: 1967, type: !2302)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !1075, line: 1965, column: 3)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !1075, line: 1964, column: 3)
!4467 = distinct !DILexicalBlock(scope: !4451, file: !1075, line: 1964, column: 3)
!4468 = !DILocalVariable(name: "q", scope: !4465, file: !1075, line: 1970, type: !2304)
!4469 = !DILocalVariable(name: "x", scope: !4465, file: !1075, line: 1973, type: !699)
!4470 = !DILocation(line: 0, scope: !4451)
!4471 = !DILocation(line: 1946, column: 19, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4451, file: !1075, line: 1946, column: 7)
!4473 = !DILocation(line: 1946, column: 25, scope: !4472)
!4474 = !DILocation(line: 1946, column: 7, scope: !4451)
!4475 = !DILocation(line: 1947, column: 12, scope: !4472)
!4476 = !DILocation(line: 1947, column: 5, scope: !4472)
!4477 = !DILocation(line: 1950, column: 9, scope: !4451)
!4478 = !DILocation(line: 1951, column: 10, scope: !4451)
!4479 = !DILocation(line: 1951, column: 17, scope: !4451)
!4480 = !DILocation(line: 1952, column: 10, scope: !4451)
!4481 = !DILocation(line: 1952, column: 14, scope: !4451)
!4482 = !DILocation(line: 1953, column: 33, scope: !4451)
!4483 = !DILocation(line: 1953, column: 10, scope: !4451)
!4484 = !DILocation(line: 1953, column: 20, scope: !4451)
!4485 = !DILocation(line: 1954, column: 28, scope: !4451)
!4486 = !{!3025, !1210, i64 8}
!4487 = !DILocation(line: 1954, column: 10, scope: !4451)
!4488 = !DILocation(line: 1954, column: 15, scope: !4451)
!4489 = !DILocation(line: 1955, column: 27, scope: !4451)
!4490 = !{!3025, !1223, i64 16}
!4491 = !DILocation(line: 1955, column: 10, scope: !4451)
!4492 = !DILocation(line: 1955, column: 14, scope: !4451)
!4493 = !DILocation(line: 1956, column: 28, scope: !4451)
!4494 = !{!3025, !1219, i64 24}
!4495 = !DILocation(line: 1956, column: 10, scope: !4451)
!4496 = !DILocation(line: 1956, column: 15, scope: !4451)
!4497 = !DILocation(line: 1958, column: 22, scope: !4451)
!4498 = !DILocation(line: 1959, column: 14, scope: !4451)
!4499 = !DILocation(line: 1964, column: 34, scope: !4466)
!4500 = !DILocation(line: 1964, column: 15, scope: !4466)
!4501 = !DILocation(line: 1964, column: 3, scope: !4467)
!4502 = !DILocation(line: 1992, column: 14, scope: !4451)
!4503 = !DILocation(line: 1993, column: 7, scope: !4451)
!4504 = !DILocation(line: 1975, column: 16, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4465, file: !1075, line: 1975, column: 9)
!4506 = !DILocation(line: 1975, column: 9, scope: !4465)
!4507 = !DILocation(line: 1977, column: 59, scope: !4465)
!4508 = !DILocation(line: 1977, column: 7, scope: !4465)
!4509 = !DILocation(line: 0, scope: !4465)
!4510 = !DILocation(line: 1978, column: 11, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4465, file: !1075, line: 1978, column: 9)
!4512 = !DILocation(line: 1978, column: 9, scope: !4465)
!4513 = !DILocation(line: 1983, column: 13, scope: !4465)
!4514 = !DILocation(line: 1984, column: 17, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !1075, line: 1984, column: 5)
!4516 = distinct !DILexicalBlock(scope: !4465, file: !1075, line: 1984, column: 5)
!4517 = !DILocation(line: 1984, column: 5, scope: !4516)
!4518 = !DILocation(line: 1986, column: 48, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !1075, line: 1985, column: 5)
!4520 = !DILocation(line: 0, scope: !3094, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 1986, column: 7, scope: !4519)
!4522 = !DILocation(line: 0, scope: !3143, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !4521)
!4524 = !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !4521)
!4525 = !DILocation(line: 0, scope: !3143, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !4521)
!4527 = !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !4521)
!4528 = !DILocation(line: 0, scope: !3143, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !4521)
!4530 = !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !4521)
!4531 = !DILocation(line: 0, scope: !3143, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !4521)
!4533 = !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !4521)
!4534 = !DILocation(line: 124, column: 45, scope: !3189, inlinedAt: !4521)
!4535 = !DILocation(line: 125, column: 15, scope: !3189, inlinedAt: !4521)
!4536 = !DILocation(line: 125, column: 29, scope: !3189, inlinedAt: !4521)
!4537 = !DILocation(line: 124, column: 7, scope: !3094, inlinedAt: !4521)
!4538 = !DILocation(line: 126, column: 5, scope: !3197, inlinedAt: !4521)
!4539 = !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !4521)
!4540 = !DILocation(line: 0, scope: !3143, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !4521)
!4542 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !4541)
!4543 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !4541)
!4544 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !4541)
!4545 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !4541)
!4546 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !4541)
!4547 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !4541)
!4548 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !4541)
!4549 = !DILocation(line: 1987, column: 8, scope: !4519)
!4550 = !DILocation(line: 1984, column: 46, scope: !4515)
!4551 = distinct !{!4551, !4517, !4552, !2119, !2120}
!4552 = !DILocation(line: 1988, column: 5, scope: !4516)
!4553 = !DILocation(line: 1989, column: 9, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4465, file: !1075, line: 1989, column: 9)
!4555 = !DILocation(line: 1989, column: 60, scope: !4554)
!4556 = !DILocation(line: 1989, column: 9, scope: !4465)
!4557 = !DILocation(line: 1991, column: 3, scope: !4466)
!4558 = !DILocation(line: 1964, column: 41, scope: !4466)
!4559 = distinct !{!4559, !4501, !4560, !2119, !2120}
!4560 = !DILocation(line: 1991, column: 3, scope: !4467)
!4561 = !DILocation(line: 1993, column: 14, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4451, file: !1075, line: 1993, column: 7)
!4563 = !DILocation(line: 1994, column: 11, scope: !4562)
!4564 = !DILocation(line: 1994, column: 5, scope: !4562)
!4565 = !DILocation(line: 1995, column: 3, scope: !4451)
!4566 = distinct !DISubprogram(name: "ReferenceImage", scope: !1075, file: !1075, line: 2021, type: !2799, scopeLine: 2022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4567 = !{!4568}
!4568 = !DILocalVariable(name: "image", arg: 1, scope: !4566, file: !1075, line: 2021, type: !635)
!4569 = !DILocation(line: 0, scope: !4566)
!4570 = !DILocation(line: 2024, column: 14, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4566, file: !1075, line: 2024, column: 7)
!4572 = !DILocation(line: 2024, column: 20, scope: !4571)
!4573 = !DILocation(line: 2024, column: 7, scope: !4566)
!4574 = !DILocation(line: 2025, column: 12, scope: !4571)
!4575 = !DILocation(line: 2025, column: 5, scope: !4571)
!4576 = !DILocation(line: 2027, column: 28, scope: !4566)
!4577 = !DILocation(line: 2027, column: 3, scope: !4566)
!4578 = !DILocation(line: 2028, column: 10, scope: !4566)
!4579 = !DILocation(line: 2028, column: 25, scope: !4566)
!4580 = !DILocation(line: 2029, column: 30, scope: !4566)
!4581 = !DILocation(line: 2029, column: 3, scope: !4566)
!4582 = !DILocation(line: 2030, column: 3, scope: !4566)
!4583 = distinct !DISubprogram(name: "ResetImagePage", scope: !1075, file: !1075, line: 2057, type: !4584, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!651, !635, !768}
!4586 = !{!4587, !4588, !4589, !4590}
!4587 = !DILocalVariable(name: "image", arg: 1, scope: !4583, file: !1075, line: 2057, type: !635)
!4588 = !DILocalVariable(name: "page", arg: 2, scope: !4583, file: !1075, line: 2057, type: !768)
!4589 = !DILocalVariable(name: "flags", scope: !4583, file: !1075, line: 2060, type: !1043)
!4590 = !DILocalVariable(name: "geometry", scope: !4583, file: !1075, line: 2063, type: !707)
!4591 = !DILocation(line: 0, scope: !4583)
!4592 = !DILocation(line: 2062, column: 3, scope: !4583)
!4593 = !DILocation(line: 2063, column: 5, scope: !4583)
!4594 = !DILocation(line: 2067, column: 14, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4583, file: !1075, line: 2067, column: 7)
!4596 = !DILocation(line: 2067, column: 20, scope: !4595)
!4597 = !DILocation(line: 2067, column: 7, scope: !4583)
!4598 = !DILocation(line: 2068, column: 68, scope: !4595)
!4599 = !DILocation(line: 2068, column: 12, scope: !4595)
!4600 = !DILocation(line: 2068, column: 5, scope: !4595)
!4601 = !DILocation(line: 2069, column: 9, scope: !4583)
!4602 = !DILocation(line: 2070, column: 14, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4583, file: !1075, line: 2070, column: 7)
!4604 = !DILocation(line: 2070, column: 28, scope: !4603)
!4605 = !DILocation(line: 2070, column: 7, scope: !4583)
!4606 = !DILocation(line: 2072, column: 18, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !1075, line: 2072, column: 11)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !1075, line: 2071, column: 5)
!4609 = !DILocation(line: 2072, column: 33, scope: !4607)
!4610 = !DILocation(line: 0, scope: !4608)
!4611 = !{!1226, !1219, i64 0}
!4612 = !DILocation(line: 2072, column: 11, scope: !4608)
!4613 = !DILocation(line: 2075, column: 35, scope: !4608)
!4614 = !{!1226, !1219, i64 8}
!4615 = !DILocation(line: 2073, column: 24, scope: !4607)
!4616 = !DILocation(line: 2073, column: 9, scope: !4607)
!4617 = !DILocation(line: 2074, column: 14, scope: !4608)
!4618 = !DILocation(line: 2074, column: 24, scope: !4608)
!4619 = !DILocation(line: 2075, column: 19, scope: !4608)
!4620 = !DILocation(line: 2075, column: 25, scope: !4608)
!4621 = !DILocation(line: 2076, column: 5, scope: !4608)
!4622 = !DILocation(line: 2077, column: 14, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4583, file: !1075, line: 2077, column: 7)
!4624 = !DILocation(line: 2077, column: 29, scope: !4623)
!4625 = !DILocation(line: 0, scope: !4623)
!4626 = !DILocation(line: 2077, column: 7, scope: !4583)
!4627 = !DILocation(line: 2079, column: 11, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4623, file: !1075, line: 2078, column: 5)
!4629 = !DILocation(line: 2080, column: 33, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4628, file: !1075, line: 2079, column: 11)
!4631 = !DILocation(line: 2080, column: 21, scope: !4630)
!4632 = !DILocation(line: 2080, column: 22, scope: !4630)
!4633 = !DILocation(line: 2080, column: 9, scope: !4630)
!4634 = !DILocation(line: 2081, column: 18, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4628, file: !1075, line: 2081, column: 11)
!4636 = !DILocation(line: 2081, column: 28, scope: !4635)
!4637 = !DILocation(line: 2081, column: 11, scope: !4628)
!4638 = !DILocation(line: 2082, column: 33, scope: !4635)
!4639 = !DILocation(line: 2082, column: 21, scope: !4635)
!4640 = !DILocation(line: 2082, column: 9, scope: !4635)
!4641 = !DILocation(line: 2086, column: 11, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4623, file: !1075, line: 2085, column: 5)
!4643 = !DILocation(line: 2088, column: 34, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !1075, line: 2087, column: 9)
!4645 = distinct !DILexicalBlock(scope: !4642, file: !1075, line: 2086, column: 11)
!4646 = !DILocation(line: 2088, column: 18, scope: !4644)
!4647 = !DILocation(line: 2088, column: 23, scope: !4644)
!4648 = !DILocation(line: 2088, column: 24, scope: !4644)
!4649 = !DILocation(line: 2089, column: 28, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4644, file: !1075, line: 2089, column: 15)
!4651 = !DILocation(line: 2089, column: 34, scope: !4650)
!4652 = !DILocation(line: 2089, column: 40, scope: !4650)
!4653 = !DILocation(line: 2090, column: 38, scope: !4650)
!4654 = !DILocation(line: 2090, column: 45, scope: !4650)
!4655 = !DILocation(line: 2090, column: 30, scope: !4650)
!4656 = !DILocation(line: 2090, column: 13, scope: !4650)
!4657 = !DILocation(line: 2092, column: 18, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4642, file: !1075, line: 2092, column: 11)
!4659 = !DILocation(line: 2092, column: 28, scope: !4658)
!4660 = !DILocation(line: 2092, column: 11, scope: !4642)
!4661 = !DILocation(line: 2094, column: 34, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !1075, line: 2093, column: 9)
!4663 = !DILocation(line: 2094, column: 23, scope: !4662)
!4664 = !DILocation(line: 2094, column: 24, scope: !4662)
!4665 = !DILocation(line: 2095, column: 28, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4662, file: !1075, line: 2095, column: 15)
!4667 = !DILocation(line: 2095, column: 35, scope: !4666)
!4668 = !DILocation(line: 2095, column: 41, scope: !4666)
!4669 = !DILocation(line: 2096, column: 39, scope: !4666)
!4670 = !DILocation(line: 2096, column: 13, scope: !4666)
!4671 = !DILocation(line: 2100, column: 1, scope: !4583)
!4672 = !DILocation(line: 2099, column: 3, scope: !4583)
!4673 = !DISubprogram(name: "SetImageAlphaChannel", scope: !4674, file: !4674, line: 35, type: !4675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4674 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!651, !635, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !75, line: 45, baseType: !575)
!4679 = !DISubprogram(name: "GetMagickPixelPacket", scope: !328, file: !328, line: 185, type: !4680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !912, !3013}
!4682 = distinct !DISubprogram(name: "SetImageChannels", scope: !1075, file: !1075, line: 2233, type: !4683, scopeLine: 2235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!651, !635, !916}
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "image", arg: 1, scope: !4682, file: !1075, line: 2233, type: !635)
!4687 = !DILocalVariable(name: "channels", arg: 2, scope: !4682, file: !1075, line: 2234, type: !916)
!4688 = !DILocation(line: 0, scope: !4682)
!4689 = !DILocation(line: 2236, column: 10, scope: !4682)
!4690 = !DILocation(line: 2236, column: 18, scope: !4682)
!4691 = !DILocation(line: 2237, column: 3, scope: !4682)
!4692 = distinct !DISubprogram(name: "SetImageColor", scope: !1075, file: !1075, line: 2265, type: !4693, scopeLine: 2267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!651, !635, !3097}
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701, !4702, !4706, !4707}
!4696 = !DILocalVariable(name: "image", arg: 1, scope: !4692, file: !1075, line: 2265, type: !635)
!4697 = !DILocalVariable(name: "color", arg: 2, scope: !4692, file: !1075, line: 2266, type: !3097)
!4698 = !DILocalVariable(name: "image_view", scope: !4692, file: !1075, line: 2269, type: !2272)
!4699 = !DILocalVariable(name: "exception", scope: !4692, file: !1075, line: 2272, type: !1021)
!4700 = !DILocalVariable(name: "status", scope: !4692, file: !1075, line: 2275, type: !651)
!4701 = !DILocalVariable(name: "y", scope: !4692, file: !1075, line: 2278, type: !699)
!4702 = !DILocalVariable(name: "indexes", scope: !4703, file: !1075, line: 2299, type: !2302)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !1075, line: 2297, column: 3)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !1075, line: 2296, column: 3)
!4705 = distinct !DILexicalBlock(scope: !4692, file: !1075, line: 2296, column: 3)
!4706 = !DILocalVariable(name: "q", scope: !4703, file: !1075, line: 2302, type: !2304)
!4707 = !DILocalVariable(name: "x", scope: !4703, file: !1075, line: 2305, type: !699)
!4708 = !DILocation(line: 0, scope: !4692)
!4709 = !DILocation(line: 2281, column: 14, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4692, file: !1075, line: 2281, column: 7)
!4711 = !DILocation(line: 2281, column: 20, scope: !4710)
!4712 = !DILocation(line: 2281, column: 7, scope: !4692)
!4713 = !DILocation(line: 2282, column: 12, scope: !4710)
!4714 = !DILocation(line: 2282, column: 5, scope: !4710)
!4715 = !DILocation(line: 2285, column: 28, scope: !4692)
!4716 = !DILocation(line: 2285, column: 10, scope: !4692)
!4717 = !DILocation(line: 2285, column: 20, scope: !4692)
!4718 = !DILocation(line: 2286, column: 23, scope: !4692)
!4719 = !DILocation(line: 2286, column: 10, scope: !4692)
!4720 = !DILocation(line: 2286, column: 15, scope: !4692)
!4721 = !DILocation(line: 2287, column: 22, scope: !4692)
!4722 = !DILocation(line: 2287, column: 10, scope: !4692)
!4723 = !DILocation(line: 2287, column: 14, scope: !4692)
!4724 = !DILocation(line: 2288, column: 23, scope: !4692)
!4725 = !DILocation(line: 2288, column: 10, scope: !4692)
!4726 = !DILocation(line: 2288, column: 15, scope: !4692)
!4727 = !DILocation(line: 2290, column: 22, scope: !4692)
!4728 = !DILocation(line: 2291, column: 14, scope: !4692)
!4729 = !DILocation(line: 2296, column: 34, scope: !4704)
!4730 = !DILocation(line: 2296, column: 15, scope: !4704)
!4731 = !DILocation(line: 2296, column: 3, scope: !4705)
!4732 = !DILocation(line: 2307, column: 16, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4703, file: !1075, line: 2307, column: 9)
!4734 = !DILocation(line: 2307, column: 9, scope: !4703)
!4735 = !DILocation(line: 2309, column: 59, scope: !4703)
!4736 = !DILocation(line: 2309, column: 7, scope: !4703)
!4737 = !DILocation(line: 0, scope: !4703)
!4738 = !DILocation(line: 2310, column: 11, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4703, file: !1075, line: 2310, column: 9)
!4740 = !DILocation(line: 2310, column: 9, scope: !4703)
!4741 = !DILocation(line: 2315, column: 13, scope: !4703)
!4742 = !DILocation(line: 2316, column: 17, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !1075, line: 2316, column: 5)
!4744 = distinct !DILexicalBlock(scope: !4703, file: !1075, line: 2316, column: 5)
!4745 = !DILocation(line: 2316, column: 5, scope: !4744)
!4746 = !DILocation(line: 2318, column: 43, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !1075, line: 2317, column: 5)
!4748 = !DILocation(line: 0, scope: !3094, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 2318, column: 7, scope: !4747)
!4750 = !DILocation(line: 0, scope: !3143, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !4749)
!4752 = !DILocation(line: 120, column: 3, scope: !3094, inlinedAt: !4749)
!4753 = !DILocation(line: 0, scope: !3143, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !4749)
!4755 = !DILocation(line: 121, column: 3, scope: !3094, inlinedAt: !4749)
!4756 = !DILocation(line: 0, scope: !3143, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !4749)
!4758 = !DILocation(line: 122, column: 3, scope: !3094, inlinedAt: !4749)
!4759 = !DILocation(line: 0, scope: !3143, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !4749)
!4761 = !DILocation(line: 123, column: 3, scope: !3094, inlinedAt: !4749)
!4762 = !DILocation(line: 124, column: 45, scope: !3189, inlinedAt: !4749)
!4763 = !DILocation(line: 125, column: 15, scope: !3189, inlinedAt: !4749)
!4764 = !DILocation(line: 125, column: 29, scope: !3189, inlinedAt: !4749)
!4765 = !DILocation(line: 124, column: 7, scope: !3094, inlinedAt: !4749)
!4766 = !DILocation(line: 126, column: 5, scope: !3197, inlinedAt: !4749)
!4767 = !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !4749)
!4768 = !DILocation(line: 0, scope: !3143, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 126, column: 5, scope: !3196, inlinedAt: !4749)
!4770 = !DILocation(line: 92, column: 13, scope: !3150, inlinedAt: !4769)
!4771 = !DILocation(line: 92, column: 7, scope: !3143, inlinedAt: !4769)
!4772 = !DILocation(line: 94, column: 13, scope: !3153, inlinedAt: !4769)
!4773 = !DILocation(line: 94, column: 7, scope: !3143, inlinedAt: !4769)
!4774 = !DILocation(line: 96, column: 26, scope: !3143, inlinedAt: !4769)
!4775 = !DILocation(line: 96, column: 10, scope: !3143, inlinedAt: !4769)
!4776 = !DILocation(line: 96, column: 3, scope: !3143, inlinedAt: !4769)
!4777 = !DILocation(line: 2319, column: 8, scope: !4747)
!4778 = !DILocation(line: 2316, column: 46, scope: !4743)
!4779 = distinct !{!4779, !4745, !4780, !2119, !2120}
!4780 = !DILocation(line: 2320, column: 5, scope: !4744)
!4781 = !DILocation(line: 2321, column: 9, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4703, file: !1075, line: 2321, column: 9)
!4783 = !DILocation(line: 2321, column: 60, scope: !4782)
!4784 = !DILocation(line: 2321, column: 9, scope: !4703)
!4785 = !DILocation(line: 2323, column: 3, scope: !4704)
!4786 = !DILocation(line: 2296, column: 41, scope: !4704)
!4787 = distinct !{!4787, !4731, !4788, !2119, !2120}
!4788 = !DILocation(line: 2323, column: 3, scope: !4705)
!4789 = !DILocation(line: 2289, column: 9, scope: !4692)
!4790 = !DILocation(line: 2324, column: 14, scope: !4692)
!4791 = !DILocation(line: 2325, column: 3, scope: !4692)
!4792 = !DISubprogram(name: "SyncImagePixelCache", scope: !1604, file: !1604, line: 273, type: !4793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!651, !635, !1021}
!4795 = distinct !DISubprogram(name: "SetImageExtent", scope: !1075, file: !1075, line: 2439, type: !4796, scopeLine: 2441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!651, !635, !916, !916}
!4798 = !{!4799, !4800, !4801}
!4799 = !DILocalVariable(name: "image", arg: 1, scope: !4795, file: !1075, line: 2439, type: !635)
!4800 = !DILocalVariable(name: "columns", arg: 2, scope: !4795, file: !1075, line: 2440, type: !916)
!4801 = !DILocalVariable(name: "rows", arg: 3, scope: !4795, file: !1075, line: 2440, type: !916)
!4802 = !DILocation(line: 0, scope: !4795)
!4803 = !DILocation(line: 2442, column: 16, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4795, file: !1075, line: 2442, column: 7)
!4805 = !DILocation(line: 2442, column: 22, scope: !4804)
!4806 = !DILocation(line: 2444, column: 10, scope: !4795)
!4807 = !DILocation(line: 2444, column: 17, scope: !4795)
!4808 = !DILocation(line: 2445, column: 10, scope: !4795)
!4809 = !DILocation(line: 2445, column: 14, scope: !4795)
!4810 = !DILocation(line: 2446, column: 44, scope: !4795)
!4811 = !DILocation(line: 2446, column: 10, scope: !4795)
!4812 = !DILocation(line: 2446, column: 3, scope: !4795)
!4813 = !DILocation(line: 2447, column: 1, scope: !4795)
!4814 = !DILocation(line: 0, scope: !1126)
!4815 = !DILocation(line: 2486, column: 3, scope: !1126)
!4816 = !DILocation(line: 2487, column: 5, scope: !1126)
!4817 = !DILocation(line: 2488, column: 5, scope: !1126)
!4818 = !DILocation(line: 2489, column: 5, scope: !1126)
!4819 = !DILocation(line: 2491, column: 5, scope: !1126)
!4820 = !DILocation(line: 2514, column: 3, scope: !1126)
!4821 = !DILocation(line: 2515, column: 5, scope: !1126)
!4822 = !DILocation(line: 2522, column: 19, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2522, column: 7)
!4824 = !DILocation(line: 2522, column: 25, scope: !4823)
!4825 = !DILocation(line: 2522, column: 7, scope: !1126)
!4826 = !DILocation(line: 2524, column: 19, scope: !4823)
!4827 = !DILocation(line: 2523, column: 12, scope: !4823)
!4828 = !DILocation(line: 2523, column: 5, scope: !4823)
!4829 = !DILocation(line: 2525, column: 12, scope: !1126)
!4830 = !DILocation(line: 2526, column: 32, scope: !1126)
!4831 = !DILocation(line: 2526, column: 3, scope: !1126)
!4832 = !DILocation(line: 2527, column: 7, scope: !1154)
!4833 = !DILocation(line: 2527, column: 17, scope: !1154)
!4834 = !DILocation(line: 2527, column: 7, scope: !1126)
!4835 = !DILocation(line: 2532, column: 11, scope: !1152)
!4836 = !DILocation(line: 2532, column: 49, scope: !1152)
!4837 = !DILocation(line: 2532, column: 11, scope: !1153)
!4838 = !DILocation(line: 2534, column: 15, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !1075, line: 2534, column: 15)
!4840 = distinct !DILexicalBlock(scope: !1152, file: !1075, line: 2533, column: 9)
!4841 = !DILocation(line: 2534, column: 36, scope: !4839)
!4842 = !DILocation(line: 2534, column: 15, scope: !4840)
!4843 = !DILocation(line: 2535, column: 45, scope: !4839)
!4844 = !DILocation(line: 2535, column: 20, scope: !4839)
!4845 = !DILocation(line: 2535, column: 13, scope: !4839)
!4846 = !DILocation(line: 2543, column: 43, scope: !1151)
!4847 = !DILocation(line: 2543, column: 18, scope: !1151)
!4848 = !DILocation(line: 2544, column: 62, scope: !1151)
!4849 = !DILocation(line: 0, scope: !1750, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 2544, column: 29, scope: !1151)
!4851 = !DILocation(line: 75, column: 10, scope: !1750, inlinedAt: !4850)
!4852 = !DILocation(line: 2544, column: 23, scope: !1151)
!4853 = !DILocation(line: 2544, column: 28, scope: !1151)
!4854 = !DILocation(line: 2545, column: 23, scope: !1151)
!4855 = !DILocation(line: 2545, column: 36, scope: !1151)
!4856 = !DILocation(line: 2546, column: 25, scope: !1151)
!4857 = !DILocation(line: 2547, column: 17, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !1151, file: !1075, line: 2547, column: 11)
!4859 = !DILocation(line: 2547, column: 47, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4858, file: !1075, line: 2547, column: 11)
!4861 = !DILocation(line: 2547, column: 50, scope: !4860)
!4862 = !DILocation(line: 2547, column: 11, scope: !4858)
!4863 = !DILocation(line: 2549, column: 13, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4860, file: !1075, line: 2548, column: 11)
!4865 = !DILocation(line: 0, scope: !1151)
!4866 = !DILocation(line: 2549, column: 21, scope: !4864)
!4867 = !DILocation(line: 2549, column: 57, scope: !4864)
!4868 = !DILocation(line: 2549, column: 63, scope: !4864)
!4869 = !DILocation(line: 2550, column: 16, scope: !4864)
!4870 = distinct !{!4870, !4863, !4869, !2119, !2120}
!4871 = !DILocation(line: 2551, column: 28, scope: !4864)
!4872 = !DILocation(line: 2553, column: 13, scope: !4864)
!4873 = !DILocation(line: 2553, column: 20, scope: !4864)
!4874 = !DILocation(line: 2553, column: 56, scope: !4864)
!4875 = !DILocation(line: 2554, column: 16, scope: !4864)
!4876 = distinct !{!4876, !4872, !4875, !2119, !2120}
!4877 = !DILocation(line: 0, scope: !4864)
!4878 = !DILocation(line: 2555, column: 20, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4864, file: !1075, line: 2555, column: 17)
!4880 = !DILocation(line: 2555, column: 17, scope: !4864)
!4881 = !DILocation(line: 2556, column: 29, scope: !4879)
!4882 = !DILocation(line: 2556, column: 15, scope: !4879)
!4883 = !DILocation(line: 2557, column: 17, scope: !4864)
!4884 = !DILocation(line: 2559, column: 37, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4864, file: !1075, line: 2559, column: 17)
!4886 = !DILocation(line: 2559, column: 23, scope: !4885)
!4887 = !DILocation(line: 2559, column: 17, scope: !4864)
!4888 = !DILocation(line: 2560, column: 32, scope: !4885)
!4889 = !DILocation(line: 2560, column: 15, scope: !4885)
!4890 = !DILocation(line: 2561, column: 36, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4864, file: !1075, line: 2561, column: 17)
!4892 = !DILocation(line: 2561, column: 22, scope: !4891)
!4893 = !DILocation(line: 2561, column: 17, scope: !4864)
!4894 = !DILocation(line: 2562, column: 40, scope: !4891)
!4895 = !DILocation(line: 2562, column: 15, scope: !4891)
!4896 = !DILocation(line: 2563, column: 15, scope: !4864)
!4897 = !DILocation(line: 2547, column: 60, scope: !4860)
!4898 = distinct !{!4898, !4862, !4899, !2119, !2120}
!4899 = !DILocation(line: 2564, column: 11, scope: !4858)
!4900 = !DILocation(line: 2565, column: 36, scope: !1151)
!4901 = !DILocation(line: 2565, column: 50, scope: !1151)
!4902 = !DILocation(line: 2565, column: 55, scope: !1151)
!4903 = !DILocation(line: 2566, column: 23, scope: !1151)
!4904 = !DILocation(line: 2566, column: 31, scope: !1151)
!4905 = !DILocation(line: 2567, column: 23, scope: !1151)
!4906 = !DILocation(line: 2567, column: 31, scope: !1151)
!4907 = !DILocation(line: 2570, column: 13, scope: !1126)
!4908 = !DILocation(line: 2571, column: 3, scope: !1126)
!4909 = !DILocation(line: 2599, column: 15, scope: !1126)
!4910 = !DILocation(line: 2599, column: 21, scope: !1126)
!4911 = !{!1339, !1210, i64 16}
!4912 = !DILocation(line: 2600, column: 18, scope: !1126)
!4913 = !DILocation(line: 2601, column: 7, scope: !1158)
!4914 = !DILocation(line: 2601, column: 18, scope: !1158)
!4915 = !DILocation(line: 2601, column: 7, scope: !1126)
!4916 = !DILocation(line: 2635, column: 14, scope: !1157)
!4917 = !DILocation(line: 2636, column: 7, scope: !1157)
!4918 = !DILocation(line: 0, scope: !1157)
!4919 = !DILocation(line: 2642, column: 7, scope: !1157)
!4920 = !DILocation(line: 2645, column: 14, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !1075, line: 2645, column: 13)
!4922 = distinct !DILexicalBlock(scope: !1157, file: !1075, line: 2644, column: 7)
!4923 = !DILocation(line: 2645, column: 24, scope: !4921)
!4924 = !DILocation(line: 2645, column: 21, scope: !4921)
!4925 = !DILocation(line: 2645, column: 49, scope: !4921)
!4926 = !DILocation(line: 2646, column: 14, scope: !4921)
!4927 = !DILocation(line: 2646, column: 58, scope: !4921)
!4928 = !DILocation(line: 2645, column: 13, scope: !4922)
!4929 = !DILocation(line: 2648, column: 10, scope: !4922)
!4930 = !DILocation(line: 2643, column: 15, scope: !1157)
!4931 = !DILocation(line: 2643, column: 38, scope: !1157)
!4932 = !DILocation(line: 2650, column: 19, scope: !1157)
!4933 = !DILocation(line: 2651, column: 24, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !1157, file: !1075, line: 2651, column: 11)
!4935 = !DILocation(line: 2651, column: 54, scope: !4934)
!4936 = !DILocation(line: 2652, column: 25, scope: !4934)
!4937 = !{!4938, !1210, i64 100}
!4938 = !{!"_MagickInfo", !1220, i64 0, !1220, i64 8, !1220, i64 16, !1220, i64 24, !1220, i64 32, !1220, i64 40, !1220, i64 48, !1220, i64 56, !1220, i64 64, !1220, i64 72, !1210, i64 80, !1210, i64 84, !1210, i64 88, !1210, i64 92, !1210, i64 96, !1210, i64 100, !1209, i64 104, !1210, i64 108, !1220, i64 112, !1220, i64 120, !1219, i64 128, !1220, i64 136, !1220, i64 144}
!4939 = !DILocation(line: 2652, column: 37, scope: !4934)
!4940 = !DILocation(line: 2651, column: 11, scope: !1157)
!4941 = !DILocation(line: 2654, column: 11, scope: !1157)
!4942 = !DILocation(line: 2659, column: 31, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !1075, line: 2658, column: 11)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !1075, line: 2657, column: 13)
!4945 = distinct !DILexicalBlock(scope: !1157, file: !1075, line: 2654, column: 11)
!4946 = !DILocation(line: 2661, column: 11, scope: !4943)
!4947 = !DILocation(line: 0, scope: !4945)
!4948 = !DILocation(line: 2662, column: 11, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !1157, file: !1075, line: 2662, column: 11)
!4950 = !DILocation(line: 2662, column: 38, scope: !4949)
!4951 = !DILocation(line: 2662, column: 11, scope: !1157)
!4952 = !DILocation(line: 2663, column: 27, scope: !4949)
!4953 = !DILocation(line: 2663, column: 9, scope: !4949)
!4954 = !DILocation(line: 2668, column: 9, scope: !1126)
!4955 = !DILocation(line: 2669, column: 3, scope: !1126)
!4956 = !DILocation(line: 2670, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2670, column: 7)
!4958 = !DILocation(line: 2670, column: 14, scope: !4957)
!4959 = !DILocation(line: 2670, column: 7, scope: !1126)
!4960 = !DILocation(line: 2671, column: 47, scope: !4957)
!4961 = !DILocation(line: 2671, column: 12, scope: !4957)
!4962 = !DILocation(line: 2671, column: 5, scope: !4957)
!4963 = !DILocation(line: 2677, column: 7, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !1075, line: 2673, column: 5)
!4965 = !DILocation(line: 2678, column: 11, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4964, file: !1075, line: 2678, column: 11)
!4967 = !DILocation(line: 2678, column: 35, scope: !4966)
!4968 = !DILocation(line: 2678, column: 11, scope: !4964)
!4969 = !DILocation(line: 2680, column: 47, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4966, file: !1075, line: 2679, column: 9)
!4971 = !DILocation(line: 2680, column: 18, scope: !4970)
!4972 = !DILocation(line: 2681, column: 15, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4970, file: !1075, line: 2681, column: 15)
!4974 = !DILocation(line: 2681, column: 48, scope: !4973)
!4975 = !DILocation(line: 2681, column: 15, scope: !4970)
!4976 = !DILocation(line: 2682, column: 31, scope: !4973)
!4977 = !DILocation(line: 2682, column: 13, scope: !4973)
!4978 = !DILocation(line: 2684, column: 25, scope: !4973)
!4979 = !DILocation(line: 2684, column: 34, scope: !4973)
!4980 = !DILocation(line: 2687, column: 15, scope: !1126)
!4981 = !DILocation(line: 2688, column: 18, scope: !1126)
!4982 = !DILocation(line: 2689, column: 20, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2689, column: 7)
!4984 = !DILocation(line: 2689, column: 50, scope: !4983)
!4985 = !DILocation(line: 2690, column: 8, scope: !4983)
!4986 = !DILocation(line: 2690, column: 44, scope: !4983)
!4987 = !DILocation(line: 2689, column: 7, scope: !1126)
!4988 = !DILocation(line: 2691, column: 17, scope: !4983)
!4989 = !DILocation(line: 2691, column: 23, scope: !4983)
!4990 = !DILocation(line: 2691, column: 5, scope: !4983)
!4991 = !DILocation(line: 2692, column: 3, scope: !1126)
!4992 = !DILocation(line: 2693, column: 10, scope: !1126)
!4993 = !DILocation(line: 2694, column: 20, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2694, column: 7)
!4995 = !DILocation(line: 2694, column: 27, scope: !4994)
!4996 = !DILocation(line: 2694, column: 43, scope: !4994)
!4997 = !DILocation(line: 2700, column: 48, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4994, file: !1075, line: 2695, column: 5)
!4999 = !DILocation(line: 2700, column: 30, scope: !4998)
!5000 = !DILocation(line: 2699, column: 14, scope: !4998)
!5001 = !DILocation(line: 2701, column: 12, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !1075, line: 2701, column: 11)
!5003 = !DILocation(line: 2701, column: 57, scope: !5002)
!5004 = !DILocation(line: 2701, column: 63, scope: !5002)
!5005 = !DILocation(line: 2702, column: 12, scope: !5002)
!5006 = !DILocation(line: 2702, column: 33, scope: !5002)
!5007 = !DILocation(line: 2701, column: 11, scope: !4998)
!5008 = !DILocation(line: 2703, column: 27, scope: !5002)
!5009 = !DILocation(line: 2703, column: 9, scope: !5002)
!5010 = !DILocation(line: 2705, column: 20, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2705, column: 7)
!5012 = !DILocation(line: 2705, column: 27, scope: !5011)
!5013 = !DILocation(line: 2705, column: 43, scope: !5011)
!5014 = !DILocation(line: 2710, column: 19, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5011, file: !1075, line: 2706, column: 5)
!5016 = !DILocation(line: 2711, column: 23, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5015, file: !1075, line: 2711, column: 11)
!5018 = !DILocation(line: 2711, column: 11, scope: !5015)
!5019 = !DILocation(line: 2712, column: 13, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5017, file: !1075, line: 2712, column: 13)
!5021 = !DILocation(line: 2712, column: 42, scope: !5020)
!5022 = !DILocation(line: 2712, column: 13, scope: !5017)
!5023 = !DILocation(line: 2713, column: 29, scope: !5020)
!5024 = !DILocation(line: 2713, column: 11, scope: !5020)
!5025 = !DILocation(line: 2715, column: 19, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2715, column: 7)
!5027 = !DILocation(line: 2715, column: 7, scope: !1126)
!5028 = !DILocation(line: 2722, column: 13, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !1075, line: 2718, column: 5)
!5030 = distinct !DILexicalBlock(scope: !1126, file: !1075, line: 2717, column: 7)
!5031 = !DILocation(line: 2723, column: 38, scope: !5029)
!5032 = !DILocation(line: 2723, column: 14, scope: !5029)
!5033 = !DILocation(line: 2725, column: 14, scope: !5029)
!5034 = !DILocation(line: 2726, column: 18, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5029, file: !1075, line: 2726, column: 11)
!5036 = !DILocation(line: 2726, column: 11, scope: !5029)
!5037 = !DILocation(line: 2728, column: 17, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5035, file: !1075, line: 2727, column: 9)
!5039 = !DILocation(line: 2729, column: 11, scope: !5038)
!5040 = !DILocation(line: 2731, column: 12, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5029, file: !1075, line: 2731, column: 11)
!5042 = !DILocation(line: 2731, column: 34, scope: !5041)
!5043 = !DILocation(line: 2731, column: 50, scope: !5041)
!5044 = !DILocation(line: 2732, column: 12, scope: !5041)
!5045 = !DILocation(line: 2732, column: 32, scope: !5041)
!5046 = !DILocation(line: 2731, column: 11, scope: !5029)
!5047 = !DILocation(line: 2737, column: 20, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5041, file: !1075, line: 2733, column: 9)
!5049 = !DILocation(line: 2738, column: 18, scope: !5048)
!5050 = !DILocation(line: 2739, column: 18, scope: !5048)
!5051 = !DILocation(line: 2740, column: 22, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5048, file: !1075, line: 2740, column: 15)
!5053 = !DILocation(line: 2740, column: 15, scope: !5048)
!5054 = !DILocation(line: 2742, column: 21, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !1075, line: 2741, column: 13)
!5056 = !DILocation(line: 2743, column: 15, scope: !5055)
!5057 = !DILocation(line: 0, scope: !3911, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 2745, column: 11, scope: !5048)
!5059 = !DILocation(line: 2854, column: 19, scope: !3919, inlinedAt: !5058)
!5060 = !DILocation(line: 2854, column: 25, scope: !3919, inlinedAt: !5058)
!5061 = !DILocation(line: 2854, column: 7, scope: !3911, inlinedAt: !5058)
!5062 = !DILocation(line: 2855, column: 12, scope: !3919, inlinedAt: !5058)
!5063 = !DILocation(line: 2855, column: 5, scope: !3919, inlinedAt: !5058)
!5064 = !DILocation(line: 2857, column: 15, scope: !3911, inlinedAt: !5058)
!5065 = !DILocation(line: 2857, column: 19, scope: !3911, inlinedAt: !5058)
!5066 = !DILocation(line: 2746, column: 18, scope: !5048)
!5067 = !DILocation(line: 2747, column: 18, scope: !5048)
!5068 = !DILocation(line: 2748, column: 22, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5048, file: !1075, line: 2748, column: 15)
!5070 = !DILocation(line: 2748, column: 15, scope: !5048)
!5071 = !DILocation(line: 2750, column: 21, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5069, file: !1075, line: 2749, column: 13)
!5073 = !DILocation(line: 2751, column: 15, scope: !5072)
!5074 = !DILocation(line: 2753, column: 18, scope: !5048)
!5075 = !DILocation(line: 2754, column: 23, scope: !5048)
!5076 = !DILocation(line: 2754, column: 32, scope: !5048)
!5077 = !DILocation(line: 2755, column: 9, scope: !5048)
!5078 = !DILocation(line: 2756, column: 14, scope: !5029)
!5079 = !DILocation(line: 2757, column: 13, scope: !5029)
!5080 = !DILocation(line: 2758, column: 29, scope: !5029)
!5081 = !DILocation(line: 2758, column: 14, scope: !5029)
!5082 = !DILocation(line: 2759, column: 14, scope: !5029)
!5083 = !DILocation(line: 2760, column: 13, scope: !5029)
!5084 = !DILocation(line: 2764, column: 22, scope: !5029)
!5085 = !DILocation(line: 2765, column: 18, scope: !5029)
!5086 = !DILocation(line: 2766, column: 23, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5029, file: !1075, line: 2766, column: 11)
!5088 = !DILocation(line: 2766, column: 52, scope: !5087)
!5089 = !DILocation(line: 2767, column: 12, scope: !5087)
!5090 = !DILocation(line: 2767, column: 37, scope: !5087)
!5091 = !DILocation(line: 2766, column: 11, scope: !5029)
!5092 = !DILocation(line: 2769, column: 47, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5087, file: !1075, line: 2768, column: 9)
!5094 = !DILocation(line: 2769, column: 54, scope: !5093)
!5095 = !DILocation(line: 2769, column: 18, scope: !5093)
!5096 = !DILocation(line: 2771, column: 23, scope: !5093)
!5097 = !DILocation(line: 2772, column: 28, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5093, file: !1075, line: 2772, column: 15)
!5099 = !DILocation(line: 2772, column: 58, scope: !5098)
!5100 = !DILocation(line: 2773, column: 16, scope: !5098)
!5101 = !DILocation(line: 2773, column: 52, scope: !5098)
!5102 = !DILocation(line: 2772, column: 15, scope: !5093)
!5103 = !DILocation(line: 2774, column: 25, scope: !5098)
!5104 = !DILocation(line: 2774, column: 31, scope: !5098)
!5105 = !DILocation(line: 2774, column: 13, scope: !5098)
!5106 = !DILocation(line: 2775, column: 26, scope: !5093)
!5107 = !DILocation(line: 2776, column: 11, scope: !5093)
!5108 = !DILocation(line: 2778, column: 45, scope: !5029)
!5109 = !DILocation(line: 2778, column: 19, scope: !5029)
!5110 = !DILocation(line: 2779, column: 24, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5029, file: !1075, line: 2779, column: 11)
!5112 = !DILocation(line: 2779, column: 54, scope: !5111)
!5113 = !DILocation(line: 2780, column: 12, scope: !5111)
!5114 = !DILocation(line: 2780, column: 48, scope: !5111)
!5115 = !DILocation(line: 2779, column: 11, scope: !5029)
!5116 = !DILocation(line: 2781, column: 21, scope: !5111)
!5117 = !DILocation(line: 2781, column: 27, scope: !5111)
!5118 = !DILocation(line: 2781, column: 9, scope: !5111)
!5119 = !DILocation(line: 2782, column: 22, scope: !5029)
!5120 = !DILocation(line: 2783, column: 5, scope: !5029)
!5121 = !DILocation(line: 2785, column: 1, scope: !1126)
!5122 = !DISubprogram(name: "GetPathComponent", scope: !597, file: !597, line: 68, type: !5123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{null, !768, !5125, !694}
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !597, line: 36, baseType: !596)
!5126 = !DISubprogram(name: "IsSceneGeometry", scope: !155, file: !155, line: 137, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!651, !768, !1627}
!5129 = !DISubprogram(name: "IsGeometry", scope: !155, file: !155, line: 136, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5130 = !DISubprogram(name: "LocaleUpper", scope: !996, file: !996, line: 103, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{null, !694}
!5133 = !DISubprogram(name: "GetMagickInfo", scope: !591, file: !591, line: 134, type: !5134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!1003, !768, !1021}
!5136 = !DISubprogram(name: "IsMagickConflict", scope: !75, file: !75, line: 528, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5137 = !DISubprogram(name: "GetMagickEndianSupport", scope: !591, file: !591, line: 126, type: !5138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!651, !1003}
!5140 = !DISubprogram(name: "GetMagickAdjoin", scope: !591, file: !591, line: 124, type: !5138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5141 = !DISubprogram(name: "OpenBlob", scope: !624, file: !624, line: 84, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!651, !1019, !635, !5144, !1021}
!5144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5145)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobMode", file: !624, line: 44, baseType: !623)
!5146 = !DISubprogram(name: "IsBlobSeekable", scope: !1624, file: !1624, line: 52, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5147 = !DISubprogram(name: "IsBlobExempt", scope: !1624, file: !1624, line: 51, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5148 = !DISubprogram(name: "ImageToFile", scope: !1624, file: !1624, line: 48, type: !5149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!651, !635, !694, !1021}
!5151 = !DISubprogram(name: "CloseBlob", scope: !624, file: !624, line: 82, type: !2890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5152 = !DISubprogram(name: "ReadBlob", scope: !624, file: !624, line: 97, type: !5153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!699, !635, !916, !823}
!5155 = !DISubprogram(name: "SeekBlob", scope: !624, file: !624, line: 89, type: !5156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!771, !635, !770, !1575}
!5158 = !DISubprogram(name: "GetMagicInfo", scope: !1054, file: !1054, line: 64, type: !5159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!1051, !1032, !916, !1021}
!5161 = !DISubprogram(name: "GetMagicName", scope: !1054, file: !1054, line: 57, type: !5162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!768, !1051}
!5164 = distinct !DISubprogram(name: "SetImageMask", scope: !1075, file: !1075, line: 2885, type: !3676, scopeLine: 2886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5165 = !{!5166, !5167}
!5166 = !DILocalVariable(name: "image", arg: 1, scope: !5164, file: !1075, line: 2885, type: !635)
!5167 = !DILocalVariable(name: "mask", arg: 2, scope: !5164, file: !1075, line: 2885, type: !912)
!5168 = !DILocation(line: 0, scope: !5164)
!5169 = !DILocation(line: 2888, column: 14, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5164, file: !1075, line: 2888, column: 7)
!5171 = !DILocation(line: 2888, column: 20, scope: !5170)
!5172 = !DILocation(line: 2888, column: 7, scope: !5164)
!5173 = !DILocation(line: 2889, column: 12, scope: !5170)
!5174 = !DILocation(line: 2889, column: 5, scope: !5170)
!5175 = !DILocation(line: 2891, column: 12, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5164, file: !1075, line: 2891, column: 7)
!5177 = !DILocation(line: 2891, column: 7, scope: !5164)
!5178 = !DILocation(line: 2892, column: 16, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !1075, line: 2892, column: 9)
!5180 = !DILocation(line: 2892, column: 34, scope: !5179)
!5181 = !DILocation(line: 2892, column: 24, scope: !5179)
!5182 = !DILocation(line: 2892, column: 43, scope: !5179)
!5183 = !DILocation(line: 2892, column: 53, scope: !5179)
!5184 = !DILocation(line: 2892, column: 68, scope: !5179)
!5185 = !DILocation(line: 2892, column: 58, scope: !5179)
!5186 = !DILocation(line: 2892, column: 9, scope: !5176)
!5187 = !DILocation(line: 2893, column: 7, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !1075, line: 2893, column: 7)
!5189 = distinct !DILexicalBlock(scope: !5179, file: !1075, line: 2893, column: 7)
!5190 = !DILocation(line: 2894, column: 14, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5164, file: !1075, line: 2894, column: 7)
!5192 = !DILocation(line: 2894, column: 19, scope: !5191)
!5193 = !DILocation(line: 2894, column: 7, scope: !5164)
!5194 = !DILocation(line: 2895, column: 17, scope: !5191)
!5195 = !DILocation(line: 2895, column: 16, scope: !5191)
!5196 = !DILocation(line: 2895, column: 5, scope: !5191)
!5197 = !DILocation(line: 2896, column: 15, scope: !5164)
!5198 = !DILocation(line: 2896, column: 14, scope: !5164)
!5199 = !DILocation(line: 2897, column: 7, scope: !5164)
!5200 = !DILocation(line: 0, scope: !2352, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 2899, column: 7, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5164, file: !1075, line: 2899, column: 7)
!5203 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !5201)
!5204 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !5201)
!5205 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !5201)
!5206 = !DILocation(line: 2899, column: 47, scope: !5202)
!5207 = !DILocation(line: 2899, column: 7, scope: !5164)
!5208 = !DILocation(line: 2901, column: 15, scope: !5164)
!5209 = !DILocation(line: 2901, column: 14, scope: !5164)
!5210 = !DILocation(line: 2902, column: 19, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5164, file: !1075, line: 2902, column: 7)
!5212 = !DILocation(line: 2905, column: 1, scope: !5164)
!5213 = distinct !DISubprogram(name: "SetImageOpacity", scope: !1075, file: !1075, line: 2932, type: !5214, scopeLine: 2934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!651, !635, !5216}
!5216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223, !5224, !5228}
!5218 = !DILocalVariable(name: "image", arg: 1, scope: !5213, file: !1075, line: 2932, type: !635)
!5219 = !DILocalVariable(name: "opacity", arg: 2, scope: !5213, file: !1075, line: 2933, type: !5216)
!5220 = !DILocalVariable(name: "image_view", scope: !5213, file: !1075, line: 2936, type: !2272)
!5221 = !DILocalVariable(name: "exception", scope: !5213, file: !1075, line: 2939, type: !1021)
!5222 = !DILocalVariable(name: "status", scope: !5213, file: !1075, line: 2942, type: !651)
!5223 = !DILocalVariable(name: "y", scope: !5213, file: !1075, line: 2945, type: !699)
!5224 = !DILocalVariable(name: "q", scope: !5225, file: !1075, line: 2962, type: !2304)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !1075, line: 2960, column: 3)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !1075, line: 2959, column: 3)
!5227 = distinct !DILexicalBlock(scope: !5213, file: !1075, line: 2959, column: 3)
!5228 = !DILocalVariable(name: "x", scope: !5225, file: !1075, line: 2965, type: !699)
!5229 = !DILocation(line: 0, scope: !5213)
!5230 = !DILocation(line: 2948, column: 14, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5213, file: !1075, line: 2948, column: 7)
!5232 = !DILocation(line: 2948, column: 20, scope: !5231)
!5233 = !DILocation(line: 2948, column: 7, scope: !5213)
!5234 = !DILocation(line: 2949, column: 12, scope: !5231)
!5235 = !DILocation(line: 2949, column: 5, scope: !5231)
!5236 = !DILocation(line: 2951, column: 10, scope: !5213)
!5237 = !DILocation(line: 2951, column: 15, scope: !5213)
!5238 = !DILocation(line: 2953, column: 22, scope: !5213)
!5239 = !DILocation(line: 2954, column: 14, scope: !5213)
!5240 = !DILocation(line: 2959, column: 34, scope: !5226)
!5241 = !DILocation(line: 2959, column: 15, scope: !5226)
!5242 = !DILocation(line: 2959, column: 3, scope: !5227)
!5243 = !DILocation(line: 2967, column: 16, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5225, file: !1075, line: 2967, column: 9)
!5245 = !DILocation(line: 2967, column: 9, scope: !5225)
!5246 = !DILocation(line: 2969, column: 57, scope: !5225)
!5247 = !DILocation(line: 2969, column: 7, scope: !5225)
!5248 = !DILocation(line: 0, scope: !5225)
!5249 = !DILocation(line: 2970, column: 11, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5225, file: !1075, line: 2970, column: 9)
!5251 = !DILocation(line: 2970, column: 9, scope: !5225)
!5252 = !DILocation(line: 2975, column: 17, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !1075, line: 2975, column: 5)
!5254 = distinct !DILexicalBlock(scope: !5225, file: !1075, line: 2975, column: 5)
!5255 = !DILocation(line: 2975, column: 5, scope: !5254)
!5256 = !DILocation(line: 2977, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5253, file: !1075, line: 2976, column: 5)
!5258 = !DILocation(line: 2978, column: 8, scope: !5257)
!5259 = !DILocation(line: 2975, column: 46, scope: !5253)
!5260 = distinct !{!5260, !5255, !5261, !2119, !2120}
!5261 = !DILocation(line: 2979, column: 5, scope: !5254)
!5262 = !DILocation(line: 2980, column: 9, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5225, file: !1075, line: 2980, column: 9)
!5264 = !DILocation(line: 2980, column: 60, scope: !5263)
!5265 = !DILocation(line: 2980, column: 9, scope: !5225)
!5266 = !DILocation(line: 2982, column: 3, scope: !5226)
!5267 = !DILocation(line: 2959, column: 41, scope: !5226)
!5268 = distinct !{!5268, !5242, !5269, !2119, !2120}
!5269 = !DILocation(line: 2982, column: 3, scope: !5227)
!5270 = !DILocation(line: 2952, column: 9, scope: !5213)
!5271 = !DILocation(line: 2983, column: 14, scope: !5213)
!5272 = !DILocation(line: 2984, column: 3, scope: !5213)
!5273 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !426, file: !426, line: 99, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5274 = distinct !DISubprogram(name: "SetImageVirtualPixelMethod", scope: !1075, file: !1075, line: 3014, type: !5275, scopeLine: 3016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!984, !912, !5277}
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!5278 = !{!5279, !5280}
!5279 = !DILocalVariable(name: "image", arg: 1, scope: !5274, file: !1075, line: 3014, type: !912)
!5280 = !DILocalVariable(name: "virtual_pixel_method", arg: 2, scope: !5274, file: !1075, line: 3015, type: !5277)
!5281 = !DILocation(line: 0, scope: !5274)
!5282 = !DILocation(line: 3019, column: 14, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5274, file: !1075, line: 3019, column: 7)
!5284 = !DILocation(line: 3019, column: 20, scope: !5283)
!5285 = !DILocation(line: 3019, column: 7, scope: !5274)
!5286 = !DILocation(line: 3020, column: 68, scope: !5283)
!5287 = !DILocation(line: 3020, column: 12, scope: !5283)
!5288 = !DILocation(line: 3020, column: 5, scope: !5283)
!5289 = !DILocation(line: 3021, column: 10, scope: !5274)
!5290 = !DILocation(line: 3021, column: 3, scope: !5274)
!5291 = !DISubprogram(name: "SetPixelCacheVirtualMethod", scope: !4155, file: !4155, line: 80, type: !5275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5292 = distinct !DISubprogram(name: "SmushImages", scope: !1075, file: !1075, line: 3201, type: !5293, scopeLine: 3203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5295)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!635, !912, !1627, !3276, !1021}
!5295 = !{!5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313}
!5296 = !DILocalVariable(name: "images", arg: 1, scope: !5292, file: !1075, line: 3201, type: !912)
!5297 = !DILocalVariable(name: "stack", arg: 2, scope: !5292, file: !1075, line: 3202, type: !1627)
!5298 = !DILocalVariable(name: "offset", arg: 3, scope: !5292, file: !1075, line: 3202, type: !3276)
!5299 = !DILocalVariable(name: "exception", arg: 4, scope: !5292, file: !1075, line: 3202, type: !1021)
!5300 = !DILocalVariable(name: "smush_view", scope: !5292, file: !1075, line: 3207, type: !2272)
!5301 = !DILocalVariable(name: "image", scope: !5292, file: !1075, line: 3210, type: !912)
!5302 = !DILocalVariable(name: "smush_image", scope: !5292, file: !1075, line: 3213, type: !635)
!5303 = !DILocalVariable(name: "matte", scope: !5292, file: !1075, line: 3216, type: !651)
!5304 = !DILocalVariable(name: "proceed", scope: !5292, file: !1075, line: 3217, type: !651)
!5305 = !DILocalVariable(name: "status", scope: !5292, file: !1075, line: 3218, type: !651)
!5306 = !DILocalVariable(name: "n", scope: !5292, file: !1075, line: 3221, type: !771)
!5307 = !DILocalVariable(name: "geometry", scope: !5292, file: !1075, line: 3224, type: !707)
!5308 = !DILocalVariable(name: "next", scope: !5292, file: !1075, line: 3227, type: !912)
!5309 = !DILocalVariable(name: "height", scope: !5292, file: !1075, line: 3230, type: !646)
!5310 = !DILocalVariable(name: "number_images", scope: !5292, file: !1075, line: 3231, type: !646)
!5311 = !DILocalVariable(name: "width", scope: !5292, file: !1075, line: 3232, type: !646)
!5312 = !DILocalVariable(name: "x_offset", scope: !5292, file: !1075, line: 3235, type: !699)
!5313 = !DILocalVariable(name: "y_offset", scope: !5292, file: !1075, line: 3236, type: !699)
!5314 = !DILocation(line: 0, scope: !5292)
!5315 = !DILocation(line: 3223, column: 3, scope: !5292)
!5316 = !DILocation(line: 3224, column: 5, scope: !5292)
!5317 = !DILocation(line: 3243, column: 15, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3243, column: 7)
!5319 = !DILocation(line: 3243, column: 21, scope: !5318)
!5320 = !DILocation(line: 3243, column: 7, scope: !5292)
!5321 = !DILocation(line: 3244, column: 69, scope: !5318)
!5322 = !DILocation(line: 3244, column: 12, scope: !5318)
!5323 = !DILocation(line: 3244, column: 5, scope: !5318)
!5324 = !DILocation(line: 3248, column: 16, scope: !5292)
!5325 = !DILocation(line: 3250, column: 16, scope: !5292)
!5326 = !DILocation(line: 3251, column: 17, scope: !5292)
!5327 = !DILocation(line: 3252, column: 8, scope: !5292)
!5328 = !DILocation(line: 3253, column: 16, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !1075, line: 3253, column: 3)
!5330 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3253, column: 3)
!5331 = !DILocation(line: 3253, column: 3, scope: !5330)
!5332 = !DILocation(line: 3258, column: 9, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !1075, line: 3254, column: 3)
!5334 = !DILocation(line: 3255, column: 15, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5333, file: !1075, line: 3255, column: 9)
!5336 = !DILocation(line: 3255, column: 21, scope: !5335)
!5337 = !DILocation(line: 3255, column: 9, scope: !5333)
!5338 = !DILocation(line: 3257, column: 18, scope: !5333)
!5339 = !DILocation(line: 3267, column: 18, scope: !5333)
!5340 = !DILocation(line: 3267, column: 10, scope: !5333)
!5341 = !DILocation(line: 3268, column: 15, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5333, file: !1075, line: 3268, column: 9)
!5343 = !DILocation(line: 3268, column: 24, scope: !5342)
!5344 = !DILocation(line: 3268, column: 9, scope: !5333)
!5345 = !DILocation(line: 3270, column: 15, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5333, file: !1075, line: 3270, column: 9)
!5347 = !DILocation(line: 3270, column: 9, scope: !5333)
!5348 = !DILocation(line: 3253, column: 40, scope: !5329)
!5349 = distinct !{!5349, !5331, !5350, !2119, !2120}
!5350 = !DILocation(line: 3272, column: 3, scope: !5330)
!5351 = !DILocation(line: 3260, column: 19, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !1075, line: 3260, column: 13)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !1075, line: 3259, column: 7)
!5354 = distinct !DILexicalBlock(scope: !5333, file: !1075, line: 3258, column: 9)
!5355 = !DILocation(line: 3260, column: 13, scope: !5353)
!5356 = !DILocation(line: 3262, column: 23, scope: !5353)
!5357 = !DILocation(line: 3262, column: 15, scope: !5353)
!5358 = !DILocation(line: 3263, column: 19, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5353, file: !1075, line: 3263, column: 13)
!5360 = !DILocation(line: 3263, column: 28, scope: !5359)
!5361 = !DILocation(line: 3263, column: 13, scope: !5353)
!5362 = !DILocation(line: 3276, column: 15, scope: !5292)
!5363 = !DILocation(line: 3277, column: 19, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3277, column: 7)
!5365 = !DILocation(line: 3277, column: 7, scope: !5292)
!5366 = !DILocation(line: 0, scope: !2352, inlinedAt: !5367)
!5367 = distinct !DILocation(line: 3279, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3279, column: 7)
!5369 = !DILocation(line: 2357, column: 23, scope: !2352, inlinedAt: !5367)
!5370 = !DILocation(line: 2358, column: 44, scope: !2352, inlinedAt: !5367)
!5371 = !DILocation(line: 2358, column: 10, scope: !2352, inlinedAt: !5367)
!5372 = !DILocation(line: 3279, column: 53, scope: !5368)
!5373 = !DILocation(line: 3279, column: 7, scope: !5292)
!5374 = !DILocation(line: 3281, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5368, file: !1075, line: 3280, column: 5)
!5376 = !DILocation(line: 3282, column: 19, scope: !5375)
!5377 = !DILocation(line: 3283, column: 7, scope: !5375)
!5378 = !DILocation(line: 3285, column: 16, scope: !5292)
!5379 = !DILocation(line: 3285, column: 21, scope: !5292)
!5380 = !DILocation(line: 3286, column: 10, scope: !5292)
!5381 = !DILocation(line: 3290, column: 14, scope: !5292)
!5382 = !DILocation(line: 3291, column: 15, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !1075, line: 3291, column: 3)
!5384 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3291, column: 3)
!5385 = !DILocation(line: 3291, column: 3, scope: !5384)
!5386 = !DILocation(line: 3295, column: 9, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5383, file: !1075, line: 3292, column: 3)
!5388 = !DILocation(line: 3293, column: 5, scope: !5387)
!5389 = !DILocation(line: 3294, column: 34, scope: !5387)
!5390 = !DILocation(line: 3294, column: 49, scope: !5387)
!5391 = !DILocation(line: 3294, column: 61, scope: !5387)
!5392 = !DILocation(line: 3294, column: 5, scope: !5387)
!5393 = !DILocalVariable(name: "smush_image", arg: 1, scope: !5394, file: !1075, line: 3059, type: !912)
!5394 = distinct !DISubprogram(name: "SmushXGap", scope: !1075, file: !1075, line: 3059, type: !5395, scopeLine: 3061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!699, !912, !912, !3276, !1021}
!5397 = !{!5393, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411}
!5398 = !DILocalVariable(name: "images", arg: 2, scope: !5394, file: !1075, line: 3059, type: !912)
!5399 = !DILocalVariable(name: "offset", arg: 3, scope: !5394, file: !1075, line: 3060, type: !3276)
!5400 = !DILocalVariable(name: "exception", arg: 4, scope: !5394, file: !1075, line: 3060, type: !1021)
!5401 = !DILocalVariable(name: "left_view", scope: !5394, file: !1075, line: 3063, type: !2272)
!5402 = !DILocalVariable(name: "right_view", scope: !5394, file: !1075, line: 3064, type: !2272)
!5403 = !DILocalVariable(name: "left_image", scope: !5394, file: !1075, line: 3067, type: !912)
!5404 = !DILocalVariable(name: "right_image", scope: !5394, file: !1075, line: 3068, type: !912)
!5405 = !DILocalVariable(name: "left_geometry", scope: !5394, file: !1075, line: 3071, type: !707)
!5406 = !DILocalVariable(name: "right_geometry", scope: !5394, file: !1075, line: 3072, type: !707)
!5407 = !DILocalVariable(name: "p", scope: !5394, file: !1075, line: 3075, type: !988)
!5408 = !DILocalVariable(name: "i", scope: !5394, file: !1075, line: 3078, type: !699)
!5409 = !DILocalVariable(name: "y", scope: !5394, file: !1075, line: 3079, type: !699)
!5410 = !DILocalVariable(name: "gap", scope: !5394, file: !1075, line: 3082, type: !646)
!5411 = !DILocalVariable(name: "x", scope: !5394, file: !1075, line: 3085, type: !699)
!5412 = !DILocation(line: 0, scope: !5394, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 3302, column: 19, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !1075, line: 3301, column: 7)
!5415 = distinct !DILexicalBlock(scope: !5387, file: !1075, line: 3295, column: 9)
!5416 = !DILocation(line: 3070, column: 3, scope: !5394, inlinedAt: !5413)
!5417 = !DILocation(line: 3071, column: 5, scope: !5394, inlinedAt: !5413)
!5418 = !DILocation(line: 3072, column: 5, scope: !5394, inlinedAt: !5413)
!5419 = !DILocation(line: 3087, column: 15, scope: !5420, inlinedAt: !5413)
!5420 = distinct !DILexicalBlock(scope: !5394, file: !1075, line: 3087, column: 7)
!5421 = !DILocation(line: 3087, column: 24, scope: !5420, inlinedAt: !5413)
!5422 = !DILocation(line: 3087, column: 7, scope: !5394, inlinedAt: !5413)
!5423 = !DILocation(line: 3090, column: 3, scope: !5394, inlinedAt: !5413)
!5424 = !DILocation(line: 3091, column: 38, scope: !5394, inlinedAt: !5413)
!5425 = !DILocation(line: 3091, column: 59, scope: !5394, inlinedAt: !5413)
!5426 = !DILocation(line: 3092, column: 18, scope: !5394, inlinedAt: !5413)
!5427 = !DILocation(line: 3091, column: 3, scope: !5394, inlinedAt: !5413)
!5428 = !DILocation(line: 3093, column: 22, scope: !5394, inlinedAt: !5413)
!5429 = !DILocation(line: 3094, column: 3, scope: !5394, inlinedAt: !5413)
!5430 = !DILocation(line: 3095, column: 37, scope: !5394, inlinedAt: !5413)
!5431 = !DILocation(line: 3095, column: 57, scope: !5394, inlinedAt: !5413)
!5432 = !DILocation(line: 3096, column: 17, scope: !5394, inlinedAt: !5413)
!5433 = !DILocation(line: 3095, column: 3, scope: !5394, inlinedAt: !5413)
!5434 = !DILocation(line: 3097, column: 20, scope: !5394, inlinedAt: !5413)
!5435 = !DILocation(line: 3098, column: 13, scope: !5394, inlinedAt: !5413)
!5436 = !DILocation(line: 3099, column: 14, scope: !5394, inlinedAt: !5413)
!5437 = !DILocation(line: 3100, column: 40, scope: !5438, inlinedAt: !5413)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !1075, line: 3100, column: 3)
!5439 = distinct !DILexicalBlock(scope: !5394, file: !1075, line: 3100, column: 3)
!5440 = !DILocation(line: 3100, column: 15, scope: !5438, inlinedAt: !5413)
!5441 = !DILocation(line: 3100, column: 3, scope: !5439, inlinedAt: !5413)
!5442 = !DILocation(line: 3102, column: 34, scope: !5443, inlinedAt: !5413)
!5443 = distinct !DILexicalBlock(scope: !5444, file: !1075, line: 3102, column: 5)
!5444 = distinct !DILexicalBlock(scope: !5438, file: !1075, line: 3101, column: 3)
!5445 = !DILocation(line: 3102, column: 10, scope: !5443, inlinedAt: !5413)
!5446 = !DILocation(line: 0, scope: !5443, inlinedAt: !5413)
!5447 = !DILocation(line: 3102, column: 47, scope: !5448, inlinedAt: !5413)
!5448 = distinct !DILexicalBlock(scope: !5443, file: !1075, line: 3102, column: 5)
!5449 = !DILocation(line: 3102, column: 5, scope: !5443, inlinedAt: !5413)
!5450 = !DILocation(line: 3104, column: 61, scope: !5451, inlinedAt: !5413)
!5451 = distinct !DILexicalBlock(scope: !5448, file: !1075, line: 3103, column: 5)
!5452 = !DILocation(line: 3104, column: 62, scope: !5451, inlinedAt: !5413)
!5453 = !DILocation(line: 3104, column: 9, scope: !5451, inlinedAt: !5413)
!5454 = !DILocation(line: 3105, column: 14, scope: !5455, inlinedAt: !5413)
!5455 = distinct !DILexicalBlock(scope: !5451, file: !1075, line: 3105, column: 11)
!5456 = !DILocation(line: 3105, column: 45, scope: !5455, inlinedAt: !5413)
!5457 = !DILocation(line: 3106, column: 12, scope: !5455, inlinedAt: !5413)
!5458 = !DILocation(line: 3106, column: 31, scope: !5455, inlinedAt: !5413)
!5459 = !DILocation(line: 3106, column: 54, scope: !5455, inlinedAt: !5413)
!5460 = !DILocation(line: 3107, column: 25, scope: !5455, inlinedAt: !5413)
!5461 = !DILocation(line: 3107, column: 34, scope: !5455, inlinedAt: !5413)
!5462 = !DILocation(line: 3107, column: 38, scope: !5455, inlinedAt: !5413)
!5463 = !DILocation(line: 3105, column: 11, scope: !5451, inlinedAt: !5413)
!5464 = distinct !{!5464, !5449, !5465, !2119, !2120}
!5465 = !DILocation(line: 3109, column: 5, scope: !5443, inlinedAt: !5413)
!5466 = !DILocation(line: 3110, column: 29, scope: !5444, inlinedAt: !5413)
!5467 = !DILocation(line: 3110, column: 38, scope: !5444, inlinedAt: !5413)
!5468 = !DILocation(line: 3111, column: 42, scope: !5469, inlinedAt: !5413)
!5469 = distinct !DILexicalBlock(scope: !5470, file: !1075, line: 3111, column: 5)
!5470 = distinct !DILexicalBlock(scope: !5444, file: !1075, line: 3111, column: 5)
!5471 = !DILocation(line: 3111, column: 17, scope: !5469, inlinedAt: !5413)
!5472 = !DILocation(line: 3111, column: 5, scope: !5470, inlinedAt: !5413)
!5473 = !DILocation(line: 3113, column: 63, scope: !5474, inlinedAt: !5413)
!5474 = distinct !DILexicalBlock(scope: !5469, file: !1075, line: 3112, column: 5)
!5475 = !DILocation(line: 3113, column: 64, scope: !5474, inlinedAt: !5413)
!5476 = !DILocation(line: 3113, column: 9, scope: !5474, inlinedAt: !5413)
!5477 = !DILocation(line: 3115, column: 14, scope: !5478, inlinedAt: !5413)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !1075, line: 3115, column: 11)
!5479 = !DILocation(line: 3115, column: 45, scope: !5478, inlinedAt: !5413)
!5480 = !DILocation(line: 3116, column: 12, scope: !5478, inlinedAt: !5413)
!5481 = !DILocation(line: 3116, column: 31, scope: !5478, inlinedAt: !5413)
!5482 = !DILocation(line: 3116, column: 54, scope: !5478, inlinedAt: !5413)
!5483 = !DILocation(line: 3111, column: 52, scope: !5469, inlinedAt: !5413)
!5484 = distinct !{!5484, !5472, !5485, !2119, !2120}
!5485 = !DILocation(line: 3119, column: 5, scope: !5470, inlinedAt: !5413)
!5486 = !DILocation(line: 0, scope: !5470, inlinedAt: !5413)
!5487 = !DILocation(line: 3120, column: 11, scope: !5488, inlinedAt: !5413)
!5488 = distinct !DILexicalBlock(scope: !5444, file: !1075, line: 3120, column: 9)
!5489 = !DILocation(line: 3120, column: 9, scope: !5444, inlinedAt: !5413)
!5490 = !DILocation(line: 3100, column: 47, scope: !5438, inlinedAt: !5413)
!5491 = distinct !{!5491, !5441, !5492, !2119, !2120}
!5492 = !DILocation(line: 3122, column: 3, scope: !5439, inlinedAt: !5413)
!5493 = !DILocation(line: 0, scope: !5439, inlinedAt: !5413)
!5494 = !DILocation(line: 3123, column: 14, scope: !5394, inlinedAt: !5413)
!5495 = !DILocation(line: 3124, column: 13, scope: !5394, inlinedAt: !5413)
!5496 = !DILocation(line: 3125, column: 34, scope: !5497, inlinedAt: !5413)
!5497 = distinct !DILexicalBlock(scope: !5394, file: !1075, line: 3125, column: 7)
!5498 = !DILocation(line: 3125, column: 9, scope: !5497, inlinedAt: !5413)
!5499 = !DILocation(line: 3125, column: 7, scope: !5394, inlinedAt: !5413)
!5500 = !DILocation(line: 3128, column: 1, scope: !5394, inlinedAt: !5413)
!5501 = !DILocation(line: 3303, column: 28, scope: !5414)
!5502 = !DILocation(line: 0, scope: !5415)
!5503 = !DILocation(line: 3305, column: 12, scope: !5387)
!5504 = !DILocation(line: 0, scope: !2473, inlinedAt: !5505)
!5505 = distinct !DILocation(line: 3306, column: 13, scope: !5387)
!5506 = !DILocation(line: 30, column: 3, scope: !2473, inlinedAt: !5505)
!5507 = !DILocation(line: 31, column: 5, scope: !2473, inlinedAt: !5505)
!5508 = !DILocation(line: 33, column: 14, scope: !2487, inlinedAt: !5505)
!5509 = !DILocation(line: 33, column: 31, scope: !2487, inlinedAt: !5505)
!5510 = !DILocation(line: 33, column: 7, scope: !2473, inlinedAt: !5505)
!5511 = !DILocation(line: 35, column: 70, scope: !2473, inlinedAt: !5505)
!5512 = !DILocation(line: 35, column: 10, scope: !2473, inlinedAt: !5505)
!5513 = !DILocation(line: 36, column: 17, scope: !2473, inlinedAt: !5505)
!5514 = !DILocation(line: 36, column: 63, scope: !2473, inlinedAt: !5505)
!5515 = !DILocation(line: 36, column: 10, scope: !2473, inlinedAt: !5505)
!5516 = !DILocation(line: 37, column: 1, scope: !2473, inlinedAt: !5505)
!5517 = !DILocation(line: 3307, column: 17, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5387, file: !1075, line: 3307, column: 9)
!5519 = !DILocation(line: 3307, column: 9, scope: !5387)
!5520 = !DILocation(line: 3311, column: 36, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !1075, line: 3310, column: 7)
!5522 = distinct !DILexicalBlock(scope: !5387, file: !1075, line: 3309, column: 9)
!5523 = !DILocation(line: 3311, column: 17, scope: !5521)
!5524 = !DILocation(line: 3319, column: 11, scope: !5387)
!5525 = !DILocation(line: 3291, column: 52, scope: !5383)
!5526 = distinct !{!5526, !5385, !5527, !2119, !2120}
!5527 = !DILocation(line: 3320, column: 3, scope: !5384)
!5528 = !DILocation(line: 3297, column: 28, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5415, file: !1075, line: 3296, column: 7)
!5530 = !DILocalVariable(name: "smush_image", arg: 1, scope: !5531, file: !1075, line: 3130, type: !912)
!5531 = distinct !DISubprogram(name: "SmushYGap", scope: !1075, file: !1075, line: 3130, type: !5395, scopeLine: 3132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5532 = !{!5530, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546}
!5533 = !DILocalVariable(name: "images", arg: 2, scope: !5531, file: !1075, line: 3130, type: !912)
!5534 = !DILocalVariable(name: "offset", arg: 3, scope: !5531, file: !1075, line: 3131, type: !3276)
!5535 = !DILocalVariable(name: "exception", arg: 4, scope: !5531, file: !1075, line: 3131, type: !1021)
!5536 = !DILocalVariable(name: "bottom_view", scope: !5531, file: !1075, line: 3134, type: !2272)
!5537 = !DILocalVariable(name: "top_view", scope: !5531, file: !1075, line: 3135, type: !2272)
!5538 = !DILocalVariable(name: "bottom_image", scope: !5531, file: !1075, line: 3138, type: !912)
!5539 = !DILocalVariable(name: "top_image", scope: !5531, file: !1075, line: 3139, type: !912)
!5540 = !DILocalVariable(name: "bottom_geometry", scope: !5531, file: !1075, line: 3142, type: !707)
!5541 = !DILocalVariable(name: "top_geometry", scope: !5531, file: !1075, line: 3143, type: !707)
!5542 = !DILocalVariable(name: "p", scope: !5531, file: !1075, line: 3146, type: !988)
!5543 = !DILocalVariable(name: "i", scope: !5531, file: !1075, line: 3149, type: !699)
!5544 = !DILocalVariable(name: "x", scope: !5531, file: !1075, line: 3150, type: !699)
!5545 = !DILocalVariable(name: "gap", scope: !5531, file: !1075, line: 3153, type: !646)
!5546 = !DILocalVariable(name: "y", scope: !5531, file: !1075, line: 3156, type: !699)
!5547 = !DILocation(line: 0, scope: !5531, inlinedAt: !5548)
!5548 = distinct !DILocation(line: 3298, column: 19, scope: !5529)
!5549 = !DILocation(line: 3141, column: 3, scope: !5531, inlinedAt: !5548)
!5550 = !DILocation(line: 3142, column: 5, scope: !5531, inlinedAt: !5548)
!5551 = !DILocation(line: 3143, column: 5, scope: !5531, inlinedAt: !5548)
!5552 = !DILocation(line: 3158, column: 15, scope: !5553, inlinedAt: !5548)
!5553 = distinct !DILexicalBlock(scope: !5531, file: !1075, line: 3158, column: 7)
!5554 = !DILocation(line: 3158, column: 24, scope: !5553, inlinedAt: !5548)
!5555 = !DILocation(line: 3158, column: 7, scope: !5531, inlinedAt: !5548)
!5556 = !DILocation(line: 3161, column: 3, scope: !5531, inlinedAt: !5548)
!5557 = !DILocation(line: 3162, column: 39, scope: !5531, inlinedAt: !5548)
!5558 = !DILocation(line: 3162, column: 61, scope: !5531, inlinedAt: !5548)
!5559 = !DILocation(line: 3163, column: 19, scope: !5531, inlinedAt: !5548)
!5560 = !DILocation(line: 3162, column: 3, scope: !5531, inlinedAt: !5548)
!5561 = !DILocation(line: 3164, column: 21, scope: !5531, inlinedAt: !5548)
!5562 = !DILocation(line: 3165, column: 3, scope: !5531, inlinedAt: !5548)
!5563 = !DILocation(line: 3166, column: 36, scope: !5531, inlinedAt: !5548)
!5564 = !DILocation(line: 3166, column: 55, scope: !5531, inlinedAt: !5548)
!5565 = !DILocation(line: 3166, column: 71, scope: !5531, inlinedAt: !5548)
!5566 = !DILocation(line: 3166, column: 3, scope: !5531, inlinedAt: !5548)
!5567 = !DILocation(line: 3168, column: 21, scope: !5531, inlinedAt: !5548)
!5568 = !DILocation(line: 3169, column: 12, scope: !5531, inlinedAt: !5548)
!5569 = !DILocation(line: 3170, column: 15, scope: !5531, inlinedAt: !5548)
!5570 = !DILocation(line: 3171, column: 40, scope: !5571, inlinedAt: !5548)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !1075, line: 3171, column: 3)
!5572 = distinct !DILexicalBlock(scope: !5531, file: !1075, line: 3171, column: 3)
!5573 = !DILocation(line: 3171, column: 15, scope: !5571, inlinedAt: !5548)
!5574 = !DILocation(line: 3171, column: 3, scope: !5572, inlinedAt: !5548)
!5575 = !DILocation(line: 3173, column: 33, scope: !5576, inlinedAt: !5548)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !1075, line: 3173, column: 5)
!5577 = distinct !DILexicalBlock(scope: !5571, file: !1075, line: 3172, column: 3)
!5578 = !DILocation(line: 3173, column: 10, scope: !5576, inlinedAt: !5548)
!5579 = !DILocation(line: 0, scope: !5576, inlinedAt: !5548)
!5580 = !DILocation(line: 3173, column: 43, scope: !5581, inlinedAt: !5548)
!5581 = distinct !DILexicalBlock(scope: !5576, file: !1075, line: 3173, column: 5)
!5582 = !DILocation(line: 3173, column: 5, scope: !5576, inlinedAt: !5548)
!5583 = !DILocation(line: 3175, column: 57, scope: !5584, inlinedAt: !5548)
!5584 = distinct !DILexicalBlock(scope: !5581, file: !1075, line: 3174, column: 5)
!5585 = !DILocation(line: 3175, column: 58, scope: !5584, inlinedAt: !5548)
!5586 = !DILocation(line: 3175, column: 9, scope: !5584, inlinedAt: !5548)
!5587 = !DILocation(line: 3176, column: 14, scope: !5588, inlinedAt: !5548)
!5588 = distinct !DILexicalBlock(scope: !5584, file: !1075, line: 3176, column: 11)
!5589 = !DILocation(line: 3176, column: 45, scope: !5588, inlinedAt: !5548)
!5590 = !DILocation(line: 3177, column: 12, scope: !5588, inlinedAt: !5548)
!5591 = !DILocation(line: 3177, column: 31, scope: !5588, inlinedAt: !5548)
!5592 = !DILocation(line: 3177, column: 54, scope: !5588, inlinedAt: !5548)
!5593 = !DILocation(line: 3178, column: 24, scope: !5588, inlinedAt: !5548)
!5594 = !DILocation(line: 3178, column: 30, scope: !5588, inlinedAt: !5548)
!5595 = !DILocation(line: 3178, column: 34, scope: !5588, inlinedAt: !5548)
!5596 = !DILocation(line: 3176, column: 11, scope: !5584, inlinedAt: !5548)
!5597 = distinct !{!5597, !5582, !5598, !2119, !2120}
!5598 = !DILocation(line: 3180, column: 5, scope: !5576, inlinedAt: !5548)
!5599 = !DILocation(line: 3181, column: 28, scope: !5577, inlinedAt: !5548)
!5600 = !DILocation(line: 3181, column: 34, scope: !5577, inlinedAt: !5548)
!5601 = !DILocation(line: 3182, column: 43, scope: !5602, inlinedAt: !5548)
!5602 = distinct !DILexicalBlock(scope: !5603, file: !1075, line: 3182, column: 5)
!5603 = distinct !DILexicalBlock(scope: !5577, file: !1075, line: 3182, column: 5)
!5604 = !DILocation(line: 3182, column: 17, scope: !5602, inlinedAt: !5548)
!5605 = !DILocation(line: 3182, column: 5, scope: !5603, inlinedAt: !5548)
!5606 = !DILocation(line: 3184, column: 63, scope: !5607, inlinedAt: !5548)
!5607 = distinct !DILexicalBlock(scope: !5602, file: !1075, line: 3183, column: 5)
!5608 = !DILocation(line: 3184, column: 64, scope: !5607, inlinedAt: !5548)
!5609 = !DILocation(line: 3184, column: 9, scope: !5607, inlinedAt: !5548)
!5610 = !DILocation(line: 3186, column: 14, scope: !5611, inlinedAt: !5548)
!5611 = distinct !DILexicalBlock(scope: !5607, file: !1075, line: 3186, column: 11)
!5612 = !DILocation(line: 3186, column: 45, scope: !5611, inlinedAt: !5548)
!5613 = !DILocation(line: 3187, column: 12, scope: !5611, inlinedAt: !5548)
!5614 = !DILocation(line: 3187, column: 31, scope: !5611, inlinedAt: !5548)
!5615 = !DILocation(line: 3187, column: 54, scope: !5611, inlinedAt: !5548)
!5616 = !DILocation(line: 3182, column: 50, scope: !5602, inlinedAt: !5548)
!5617 = distinct !{!5617, !5605, !5618, !2119, !2120}
!5618 = !DILocation(line: 3190, column: 5, scope: !5603, inlinedAt: !5548)
!5619 = !DILocation(line: 0, scope: !5603, inlinedAt: !5548)
!5620 = !DILocation(line: 3191, column: 11, scope: !5621, inlinedAt: !5548)
!5621 = distinct !DILexicalBlock(scope: !5577, file: !1075, line: 3191, column: 9)
!5622 = !DILocation(line: 3191, column: 9, scope: !5577, inlinedAt: !5548)
!5623 = !DILocation(line: 3171, column: 50, scope: !5571, inlinedAt: !5548)
!5624 = distinct !{!5624, !5574, !5625, !2119, !2120}
!5625 = !DILocation(line: 3193, column: 3, scope: !5572, inlinedAt: !5548)
!5626 = !DILocation(line: 0, scope: !5572, inlinedAt: !5548)
!5627 = !DILocation(line: 3194, column: 15, scope: !5531, inlinedAt: !5548)
!5628 = !DILocation(line: 3195, column: 12, scope: !5531, inlinedAt: !5548)
!5629 = !DILocation(line: 3196, column: 34, scope: !5630, inlinedAt: !5548)
!5630 = distinct !DILexicalBlock(scope: !5531, file: !1075, line: 3196, column: 7)
!5631 = !DILocation(line: 3196, column: 9, scope: !5630, inlinedAt: !5548)
!5632 = !DILocation(line: 3196, column: 7, scope: !5531, inlinedAt: !5548)
!5633 = !DILocation(line: 3199, column: 1, scope: !5531, inlinedAt: !5548)
!5634 = !DILocation(line: 3317, column: 36, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5522, file: !1075, line: 3315, column: 7)
!5636 = !DILocation(line: 3317, column: 17, scope: !5635)
!5637 = !DILocation(line: 3321, column: 13, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3321, column: 7)
!5639 = !DILocation(line: 3321, column: 7, scope: !5292)
!5640 = !DILocation(line: 3322, column: 18, scope: !5638)
!5641 = !DILocation(line: 3322, column: 25, scope: !5638)
!5642 = !DILocation(line: 3322, column: 5, scope: !5638)
!5643 = !DILocation(line: 3324, column: 18, scope: !5638)
!5644 = !DILocation(line: 3324, column: 22, scope: !5638)
!5645 = !DILocation(line: 3325, column: 14, scope: !5292)
!5646 = !DILocation(line: 3326, column: 14, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5292, file: !1075, line: 3326, column: 7)
!5648 = !DILocation(line: 3326, column: 7, scope: !5292)
!5649 = !DILocation(line: 3327, column: 17, scope: !5647)
!5650 = !DILocation(line: 3327, column: 5, scope: !5647)
!5651 = !DILocation(line: 3329, column: 1, scope: !5292)
!5652 = !DISubprogram(name: "CompositeImage", scope: !170, file: !170, line: 110, type: !5653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!651, !635, !5655, !912, !3276, !3276}
!5655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!5656 = distinct !DISubprogram(name: "StripImage", scope: !1075, file: !1075, line: 3353, type: !2890, scopeLine: 3354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5657)
!5657 = !{!5658, !5659}
!5658 = !DILocalVariable(name: "image", arg: 1, scope: !5656, file: !1075, line: 3353, type: !635)
!5659 = !DILocalVariable(name: "status", scope: !5656, file: !1075, line: 3356, type: !651)
!5660 = !DILocation(line: 0, scope: !5656)
!5661 = !DILocation(line: 3359, column: 14, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5656, file: !1075, line: 3359, column: 7)
!5663 = !DILocation(line: 3359, column: 20, scope: !5662)
!5664 = !DILocation(line: 3359, column: 7, scope: !5656)
!5665 = !DILocation(line: 3360, column: 12, scope: !5662)
!5666 = !DILocation(line: 3360, column: 5, scope: !5662)
!5667 = !DILocation(line: 3361, column: 3, scope: !5656)
!5668 = !DILocation(line: 3362, column: 10, scope: !5656)
!5669 = !DILocation(line: 3363, column: 10, scope: !5656)
!5670 = !DILocation(line: 3364, column: 10, scope: !5656)
!5671 = !DILocation(line: 3365, column: 10, scope: !5656)
!5672 = !DILocation(line: 3367, column: 3, scope: !5656)
!5673 = !DISubprogram(name: "DeleteImageProperty", scope: !3458, file: !3458, line: 37, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5674 = !DISubprogram(name: "SetImageArtifact", scope: !3735, file: !3735, line: 36, type: !5675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!651, !635, !768, !768}
!5677 = distinct !DISubprogram(name: "SyncImagesSettings", scope: !1075, file: !1075, line: 3503, type: !5678, scopeLine: 3505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5680)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!651, !856, !635}
!5680 = !{!5681, !5682, !5683}
!5681 = !DILocalVariable(name: "image_info", arg: 1, scope: !5677, file: !1075, line: 3503, type: !856)
!5682 = !DILocalVariable(name: "images", arg: 2, scope: !5677, file: !1075, line: 3504, type: !635)
!5683 = !DILocalVariable(name: "image", scope: !5677, file: !1075, line: 3507, type: !635)
!5684 = !DILocation(line: 0, scope: !5677)
!5685 = !DILocation(line: 3513, column: 15, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5677, file: !1075, line: 3513, column: 7)
!5687 = !DILocation(line: 3513, column: 21, scope: !5686)
!5688 = !DILocation(line: 3513, column: 7, scope: !5677)
!5689 = !DILocation(line: 3514, column: 69, scope: !5686)
!5690 = !DILocation(line: 3514, column: 12, scope: !5686)
!5691 = !DILocation(line: 3514, column: 5, scope: !5686)
!5692 = !DILocation(line: 3516, column: 3, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5677, file: !1075, line: 3516, column: 3)
!5694 = !DILocation(line: 3517, column: 12, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5693, file: !1075, line: 3516, column: 3)
!5696 = !DILocation(line: 3516, column: 42, scope: !5695)
!5697 = !DILocation(line: 3516, column: 17, scope: !5695)
!5698 = distinct !{!5698, !5692, !5699, !2119, !2120}
!5699 = !DILocation(line: 3517, column: 46, scope: !5693)
!5700 = !DILocation(line: 3518, column: 10, scope: !5677)
!5701 = !DILocation(line: 3519, column: 3, scope: !5677)
!5702 = !DISubprogram(name: "DeleteImageOption", scope: !500, file: !500, line: 163, type: !5703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!651, !856, !768}
!5705 = !DISubprogram(name: "ResetImageOptionIterator", scope: !500, file: !500, line: 177, type: !5706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{null, !1019}
!5708 = !DISubprogram(name: "GetNextImageOption", scope: !500, file: !500, line: 153, type: !5709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!694, !1019}
!5711 = !DISubprogram(name: "DecodePixelGamma", scope: !328, file: !328, line: 179, type: !2961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5712 = !DISubprogram(name: "InterpretLocaleValue", scope: !3453, file: !3453, line: 56, type: !5713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1564)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!672, !1753, !5715}
!5715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1071)
