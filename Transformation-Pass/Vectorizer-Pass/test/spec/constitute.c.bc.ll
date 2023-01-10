; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/constitute.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/constitute.c"
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
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._DelegateInfo = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr, ptr, i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [89 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/constitute.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"NonZeroWidthAndHeightRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"NotAuthorized\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"NoDecodeDelegateForThisImageFormat\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"Coder (%s) generated an image despite an error (%d), notify the developers\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"SubimageSpecificationReturnsNoImages\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"AnErrorHasOccurredReadingFromFile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"tiff:Orientation\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"exif:Orientation\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"exif:XResolution\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"exif:YResolution\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"tiff:ResolutionUnit\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"exif:ResolutionUnit\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"caption\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"8bim\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"date:modify\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"date:create\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"dispose\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"CorruptImage\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"clipmask\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"NoClipPathDefined\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"delegate:bimodal\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"NoEncodeDelegateForThisImageFormat\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"AnErrorHasOccurredWritingToFile\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Write/Image\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ConstituteImage(i64 noundef %columns, i64 noundef %rows, ptr noundef %map, i32 noundef %storage, ptr noundef %pixels, ptr noundef %exception) local_unnamed_addr #0 !dbg !1074 {
entry:
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1081, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %map, metadata !1083, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %storage, metadata !1084, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !1085, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1086, metadata !DIExpression()), !dbg !1089
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 142, ptr noundef nonnull @.str.2, ptr noundef %map) #7, !dbg !1090
  %call1 = tail call ptr @AcquireImage(ptr noundef null) #7, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1087, metadata !DIExpression()), !dbg !1089
  %cmp = icmp eq ptr %call1, null, !dbg !1092
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1094

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i64 %columns, 0, !dbg !1095
  %cmp3 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp2, %cmp3, !dbg !1097
  br i1 %or.cond, label %if.then4, label %if.end6, !dbg !1097

if.then4:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 53, !dbg !1098
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #7, !dbg !1098
  br label %cleanup, !dbg !1098

if.end6:                                          ; preds = %if.end
  %columns7 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !1100
  store i64 %columns, ptr %columns7, align 8, !dbg !1101, !tbaa !1102
  %rows8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !1121
  store i64 %rows, ptr %rows8, align 8, !dbg !1122, !tbaa !1123
  %call9 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call1) #7, !dbg !1124
  %call10 = tail call i32 @ImportImagePixels(ptr noundef nonnull %call1, i64 noundef 0, i64 noundef 0, i64 noundef %columns, i64 noundef %rows, ptr noundef %map, i32 noundef %storage, ptr noundef %pixels) #7, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1088, metadata !DIExpression()), !dbg !1089
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1126
  br i1 %cmp11, label %if.then12, label %cleanup, !dbg !1128

if.then12:                                        ; preds = %if.end6
  %exception13 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !1129
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception13) #7, !dbg !1131
  %call14 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #7, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1087, metadata !DIExpression()), !dbg !1089
  br label %cleanup, !dbg !1133

cleanup:                                          ; preds = %if.end6, %if.then12, %entry, %if.then4
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry ], [ %call14, %if.then12 ], [ %call1, %if.end6 ], !dbg !1089
  ret ptr %retval.0, !dbg !1134
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1135 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1141 ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1144 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1148 i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

declare !dbg !1151 i32 @ImportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1155 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1160 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PingImage(ptr noundef %image_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1163 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1165, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1166, metadata !DIExpression()), !dbg !1169
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1170
  %0 = load i32, ptr %debug, align 8, !dbg !1170, !tbaa !1172
  %cmp.not = icmp eq i32 %0, 0, !dbg !1174
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1175

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1176
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 221, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !1177
  br label %if.end, !dbg !1178

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #7, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1168, metadata !DIExpression()), !dbg !1169
  %ping = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 34, !dbg !1180
  store i32 1, ptr %ping, align 8, !dbg !1181, !tbaa !1182
  %call2 = tail call ptr @ReadStream(ptr noundef %call1, ptr noundef nonnull @PingStream, ptr noundef %exception) #7, !dbg !1183
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1167, metadata !DIExpression()), !dbg !1169
  %cmp3.not = icmp eq ptr %call2, null, !dbg !1184
  br i1 %cmp3.not, label %if.end9, label %if.then4, !dbg !1186

if.then4:                                         ; preds = %if.end
  %timer = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 46, !dbg !1187
  tail call void @ResetTimer(ptr noundef nonnull %timer) #7, !dbg !1189
  %verbose = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 35, !dbg !1190
  %1 = load i32, ptr %verbose, align 4, !dbg !1190, !tbaa !1192
  %cmp5.not = icmp eq i32 %1, 0, !dbg !1193
  br i1 %cmp5.not, label %if.end9, label %if.then6, !dbg !1194

if.then6:                                         ; preds = %if.then4
  %2 = load ptr, ptr @stdout, align 8, !dbg !1195, !tbaa !1196
  %call7 = tail call i32 @IdentifyImage(ptr noundef nonnull %call2, ptr noundef %2, i32 noundef 0) #7, !dbg !1197
  br label %if.end9, !dbg !1198

if.end9:                                          ; preds = %if.then4, %if.then6, %if.end
  %call10 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #7, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1168, metadata !DIExpression()), !dbg !1169
  ret ptr %call2, !dbg !1200
}

declare !dbg !1201 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1204 ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i64 @PingStream(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %pixels, i64 noundef returned %columns) #4 !dbg !1207 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1209, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !1210, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1211, metadata !DIExpression()), !dbg !1212
  ret i64 %columns, !dbg !1213
}

declare !dbg !1214 void @ResetTimer(ptr noundef) local_unnamed_addr #3

declare !dbg !1218 i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1223 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PingImages(ptr noundef %image_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1226 {
entry:
  %filename = alloca [4096 x i8], align 16
  %images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1228, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1229, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #7, !dbg !1240
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !1230, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %images) #7, !dbg !1242
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1243
  %0 = load i32, ptr %debug, align 8, !dbg !1243, !tbaa !1172
  %cmp.not = icmp eq i32 %0, 0, !dbg !1245
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1246

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1247
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 280, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename1) #7, !dbg !1248
  br label %if.end, !dbg !1249

if.end:                                           ; preds = %if.then, %entry
  %filename2 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1250
  %scene = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 10, !dbg !1251
  %1 = load i64, ptr %scene, align 8, !dbg !1251, !tbaa !1252
  %conv = trunc i64 %1 to i32, !dbg !1253
  %call5 = call i64 @InterpretImageFilename(ptr noundef nonnull %image_info, ptr noundef null, ptr noundef nonnull %filename2, i32 noundef %conv, ptr noundef nonnull %filename) #7, !dbg !1254
  %call9 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull %filename2) #7, !dbg !1255
  %cmp10.not = icmp eq i32 %call9, 0, !dbg !1256
  br i1 %cmp10.not, label %if.end47, label %if.then12, !dbg !1257

if.then12:                                        ; preds = %if.end
  %call14 = call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #7, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1233, metadata !DIExpression()), !dbg !1239
  %call15 = call ptr @AcquireExceptionInfo() #7, !dbg !1259
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1234, metadata !DIExpression()), !dbg !1260
  %call16 = call i32 @SetImageInfo(ptr noundef %call14, i32 noundef 0, ptr noundef %call15) #7, !dbg !1261
  %call17 = call ptr @DestroyExceptionInfo(ptr noundef %call15) #7, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1234, metadata !DIExpression()), !dbg !1260
  %number_scenes = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 11, !dbg !1263
  %2 = load i64, ptr %number_scenes, align 8, !dbg !1263, !tbaa !1265
  %cmp18 = icmp eq i64 %2, 0, !dbg !1266
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !1267

if.then20:                                        ; preds = %if.then12
  %call21 = call ptr @DestroyImageInfo(ptr noundef nonnull %call14) #7, !dbg !1268
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1233, metadata !DIExpression()), !dbg !1239
  %call22 = call ptr @PingImage(ptr noundef nonnull %image_info, ptr noundef %exception), !dbg !1270
  br label %cleanup49, !dbg !1271

if.end23:                                         ; preds = %if.then12
  %filename25 = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 51, !dbg !1272
  %call27 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename25, i64 noundef 4096) #7, !dbg !1273
  %call28 = call ptr @NewImageList() #7, !dbg !1274
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1232, metadata !DIExpression()), !dbg !1239
  store ptr %call28, ptr %images, align 8, !dbg !1275, !tbaa !1196
  %scene29 = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 10, !dbg !1276
  %3 = load i64, ptr %scene29, align 8, !dbg !1276, !tbaa !1252
  %4 = load i64, ptr %number_scenes, align 8, !dbg !1277, !tbaa !1265
  %add = add i64 %4, %3, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %add, metadata !1237, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %3, metadata !1238, metadata !DIExpression()), !dbg !1260
  %cmp3277 = icmp slt i64 %3, %add, !dbg !1279
  br i1 %cmp3277, label %for.body, label %for.end, !dbg !1282

for.body:                                         ; preds = %if.end23, %for.inc
  %scene13.078 = phi i64 [ %inc, %for.inc ], [ %3, %if.end23 ]
  call void @llvm.dbg.value(metadata i64 %scene13.078, metadata !1238, metadata !DIExpression()), !dbg !1260
  %conv35 = trunc i64 %scene13.078 to i32, !dbg !1283
  %call38 = call i64 @InterpretImageFilename(ptr noundef %image_info, ptr noundef null, ptr noundef nonnull %filename, i32 noundef %conv35, ptr noundef nonnull %filename25) #7, !dbg !1285
  %call39 = call ptr @PingImage(ptr noundef %call14, ptr noundef %exception), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1231, metadata !DIExpression()), !dbg !1239
  %cmp40 = icmp eq ptr %call39, null, !dbg !1287
  br i1 %cmp40, label %for.inc, label %if.end43, !dbg !1289

if.end43:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %images, metadata !1232, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef nonnull %call39) #7, !dbg !1290
  br label %for.inc, !dbg !1291

for.inc:                                          ; preds = %for.body, %if.end43
  %inc = add i64 %scene13.078, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1238, metadata !DIExpression()), !dbg !1260
  %exitcond.not = icmp eq i64 %inc, %add, !dbg !1279
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1282, !llvm.loop !1293

for.end:                                          ; preds = %for.inc, %if.end23
  %call44 = call ptr @DestroyImageInfo(ptr noundef %call14) #7, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1233, metadata !DIExpression()), !dbg !1239
  %5 = load ptr, ptr %images, align 8, !dbg !1298, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %5, metadata !1232, metadata !DIExpression()), !dbg !1239
  br label %cleanup49, !dbg !1299

if.end47:                                         ; preds = %if.end
  %call48 = call ptr @PingImage(ptr noundef nonnull %image_info, ptr noundef %exception), !dbg !1300
  br label %cleanup49, !dbg !1301

cleanup49:                                        ; preds = %if.then20, %for.end, %if.end47
  %retval.1 = phi ptr [ %call48, %if.end47 ], [ %call22, %if.then20 ], [ %5, %for.end ], !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %images) #7, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #7, !dbg !1302
  ret ptr %retval.1, !dbg !1302
}

declare !dbg !1303 i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1306 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1309 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !1312 i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1316 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1319 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1322 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !1326 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadImage(ptr noundef %image_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1330 {
entry:
  %filename = alloca [4096 x i8], align 16
  %magick = alloca [4096 x i8], align 16
  %magick_filename = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %next = alloca ptr, align 8
  %magick_path = alloca [4096 x i8], align 16
  %timestamp = alloca [4096 x i8], align 16
  %geometry = alloca %struct._RectangleInfo, align 8
  %geometry_info540 = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1332, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1333, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #7, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !1334, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick) #7, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !1335, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick_filename) #7, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %magick_filename, metadata !1336, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #7, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1341, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #7, !dbg !1410
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1411
  %0 = load i32, ptr %debug, align 8, !dbg !1411, !tbaa !1172
  %cmp.not = icmp eq i32 %0, 0, !dbg !1413
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1414

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1415
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 399, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename1) #7, !dbg !1416
  br label %if.end, !dbg !1417

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #7, !dbg !1418
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1352, metadata !DIExpression()), !dbg !1403
  %filename4 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 51, !dbg !1419
  %call6 = call i64 @CopyMagickString(ptr noundef nonnull %magick_filename, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !1420
  %call7 = call i32 @SetImageInfo(ptr noundef %call2, i32 noundef 0, ptr noundef %exception) #7, !dbg !1421
  %call11 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !1422
  %magick13 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 48, !dbg !1423
  %call15 = call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick13, i64 noundef 4096) #7, !dbg !1424
  call void @llvm.dbg.value(metadata i32 1, metadata !1355, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 1, metadata !1357, metadata !DIExpression()), !dbg !1403
  %call18 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 1, ptr noundef nonnull %magick13) #7, !dbg !1425
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1427
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !1428

if.then20:                                        ; preds = %if.end
  %call21 = tail call ptr @__errno_location() #8, !dbg !1429
  store i32 1, ptr %call21, align 4, !dbg !1431, !tbaa !1432
  %call24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 412, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #7, !dbg !1433
  %call25 = call ptr @DestroyImageInfo(ptr noundef %call2) #7, !dbg !1434
  call void @llvm.dbg.value(metadata ptr %call25, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1435

if.end26:                                         ; preds = %if.end
  %call27 = call ptr @AcquireExceptionInfo() #7, !dbg !1436
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1340, metadata !DIExpression()), !dbg !1403
  %call30 = call ptr @GetMagickInfo(ptr noundef nonnull %magick13, ptr noundef %call27) #7, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %call30, metadata !1339, metadata !DIExpression()), !dbg !1403
  %call31 = call ptr @DestroyExceptionInfo(ptr noundef %call27) #7, !dbg !1438
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1340, metadata !DIExpression()), !dbg !1403
  %cmp32.not = icmp eq ptr %call30, null, !dbg !1439
  br i1 %cmp32.not, label %if.end87, label %if.then33, !dbg !1440

if.then33:                                        ; preds = %if.end26
  %call34 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %call30) #7, !dbg !1441
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1442
  br i1 %cmp35, label %land.lhs.true50.sink.split, label %if.else, !dbg !1443

if.else:                                          ; preds = %if.then33
  %endian37 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !1444
  %1 = load i32, ptr %endian37, align 4, !dbg !1444, !tbaa !1445
  %cmp38 = icmp eq i32 %1, 0, !dbg !1446
  br i1 %cmp38, label %land.lhs.true, label %land.lhs.true50, !dbg !1447

land.lhs.true:                                    ; preds = %if.else
  %call39 = call i32 @GetMagickRawSupport(ptr noundef nonnull %call30) #7, !dbg !1448
  %cmp40.not = icmp eq i32 %call39, 0, !dbg !1449
  br i1 %cmp40.not, label %land.lhs.true50, label %land.lhs.true50.sink.split, !dbg !1450

land.lhs.true50.sink.split:                       ; preds = %land.lhs.true, %if.then33
  %.sink = phi i32 [ 0, %if.then33 ], [ 1, %land.lhs.true ]
  %endian44 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 14, !dbg !1451
  store i32 %.sink, ptr %endian44, align 4, !dbg !1451, !tbaa !1445
  br label %land.lhs.true50, !dbg !1452

land.lhs.true50:                                  ; preds = %land.lhs.true50.sink.split, %if.else, %land.lhs.true
  %call51 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %call30) #7, !dbg !1452
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !1453
  br i1 %cmp52.not, label %lor.lhs.false, label %if.then54, !dbg !1454

if.then54:                                        ; preds = %land.lhs.true50
  %call55 = call ptr @AcquireImage(ptr noundef %call2) #7, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %call55, metadata !1350, metadata !DIExpression()), !dbg !1403
  %filename56 = getelementptr inbounds %struct._Image, ptr %call55, i64 0, i32 53, !dbg !1456
  %call60 = call i64 @CopyMagickString(ptr noundef nonnull %filename56, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !1457
  %call61 = call i32 @OpenBlob(ptr noundef nonnull %image_info, ptr noundef %call55, i32 noundef 2, ptr noundef %exception) #7, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1365, metadata !DIExpression()), !dbg !1459
  %cmp62 = icmp eq i32 %call61, 0, !dbg !1460
  br i1 %cmp62, label %if.then64, label %if.end67, !dbg !1462

if.then64:                                        ; preds = %if.then54
  %call65 = call ptr @DestroyImageInfo(ptr noundef %call2) #7, !dbg !1463
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1352, metadata !DIExpression()), !dbg !1403
  %call66 = call ptr @DestroyImage(ptr noundef %call55) #7, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1350, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1466

if.end67:                                         ; preds = %if.then54
  %call68 = call i32 @IsBlobSeekable(ptr noundef %call55) #7, !dbg !1467
  %cmp69 = icmp eq i32 %call68, 0, !dbg !1469
  br i1 %cmp69, label %if.then71, label %cleanup, !dbg !1470

if.then71:                                        ; preds = %if.end67
  store i8 0, ptr %filename4, align 8, !dbg !1471, !tbaa !1473
  %call76 = call i32 @ImageToFile(ptr noundef %call55, ptr noundef nonnull %filename4, ptr noundef %exception) #7, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %call76, metadata !1365, metadata !DIExpression()), !dbg !1459
  %cmp77 = icmp eq i32 %call76, 0, !dbg !1475
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !1477

if.then79:                                        ; preds = %if.then71
  %call80 = call i32 @CloseBlob(ptr noundef %call55) #7, !dbg !1478
  %call81 = call ptr @DestroyImageInfo(ptr noundef nonnull %call2) #7, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %call81, metadata !1352, metadata !DIExpression()), !dbg !1403
  %call82 = call ptr @DestroyImage(ptr noundef %call55) #7, !dbg !1481
  call void @llvm.dbg.value(metadata ptr %call82, metadata !1350, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1482

if.end83:                                         ; preds = %if.then71
  %temporary = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 2, !dbg !1483
  store i32 1, ptr %temporary, align 8, !dbg !1484, !tbaa !1485
  br label %cleanup, !dbg !1486

cleanup:                                          ; preds = %if.end67, %if.end83
  %call85 = call i32 @CloseBlob(ptr noundef %call55) #7, !dbg !1487
  %call86 = call ptr @DestroyImage(ptr noundef %call55) #7, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %call86, metadata !1350, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %lor.lhs.false

if.end87:                                         ; preds = %if.end26
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1352, metadata !DIExpression()), !dbg !1403
  %call88 = call ptr @NewImageList() #7, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %call88, metadata !1350, metadata !DIExpression()), !dbg !1403
  br label %if.then94, !dbg !1490

lor.lhs.false:                                    ; preds = %cleanup, %land.lhs.true50
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1352, metadata !DIExpression()), !dbg !1403
  %call88811 = call ptr @NewImageList() #7, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %call88, metadata !1350, metadata !DIExpression()), !dbg !1403
  %call91 = call ptr @GetImageDecoder(ptr noundef nonnull %call30) #7, !dbg !1492
  %cmp92 = icmp eq ptr %call91, null, !dbg !1493
  br i1 %cmp92, label %if.then94, label %land.lhs.true113, !dbg !1494

if.then94:                                        ; preds = %if.end87, %lor.lhs.false
  %call97 = call ptr @GetDelegateInfo(ptr noundef nonnull %magick13, ptr noundef null, ptr noundef %exception) #7, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %call97, metadata !1338, metadata !DIExpression()), !dbg !1403
  %cmp98 = icmp eq ptr %call97, null, !dbg !1497
  br i1 %cmp98, label %if.then100, label %if.end110, !dbg !1499

if.then100:                                       ; preds = %if.then94
  %call101 = call i32 @SetImageInfo(ptr noundef %call2, i32 noundef 0, ptr noundef %exception) #7, !dbg !1500
  %call105 = call i64 @CopyMagickString(ptr noundef nonnull %filename4, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !1502
  %call108 = call ptr @GetMagickInfo(ptr noundef nonnull %magick13, ptr noundef %exception) #7, !dbg !1503
  call void @llvm.dbg.value(metadata ptr %call108, metadata !1339, metadata !DIExpression()), !dbg !1403
  br label %if.end110, !dbg !1504

if.end110:                                        ; preds = %if.then94, %if.then100
  %magick_info.0 = phi ptr [ %call108, %if.then100 ], [ %call30, %if.then94 ], !dbg !1403
  call void @llvm.dbg.value(metadata ptr %magick_info.0, metadata !1339, metadata !DIExpression()), !dbg !1403
  %cmp111.not = icmp eq ptr %magick_info.0, null, !dbg !1505
  br i1 %cmp111.not, label %if.else131, label %land.lhs.true113, !dbg !1506

land.lhs.true113:                                 ; preds = %lor.lhs.false, %if.end110
  %magick_info.0828 = phi ptr [ %magick_info.0, %if.end110 ], [ %call30, %lor.lhs.false ]
  %call114 = call ptr @GetImageDecoder(ptr noundef nonnull %magick_info.0828) #7, !dbg !1507
  %cmp115.not = icmp eq ptr %call114, null, !dbg !1508
  br i1 %cmp115.not, label %if.else131, label %if.then117, !dbg !1509

if.then117:                                       ; preds = %land.lhs.true113
  %call118 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %magick_info.0828) #7, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %call118, metadata !1354, metadata !DIExpression()), !dbg !1403
  %and = and i32 %call118, 1, !dbg !1512
  %cmp119 = icmp eq i32 %and, 0, !dbg !1514
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !1515

if.then121:                                       ; preds = %if.then117
  %semaphore = getelementptr inbounds %struct._MagickInfo, ptr %magick_info.0828, i64 0, i32 22, !dbg !1516
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1516, !tbaa !1517
  call void @LockSemaphoreInfo(ptr noundef %2) #7, !dbg !1519
  br label %if.end122, !dbg !1519

if.end122:                                        ; preds = %if.then121, %if.then117
  %call123 = call ptr @GetImageDecoder(ptr noundef nonnull %magick_info.0828) #7, !dbg !1520
  %call124 = call ptr %call123(ptr noundef %call2, ptr noundef %exception) #7, !dbg !1520
  call void @llvm.dbg.value(metadata ptr %call124, metadata !1350, metadata !DIExpression()), !dbg !1403
  br i1 %cmp119, label %if.end226.sink.split, label %if.end226, !dbg !1521

if.else131:                                       ; preds = %land.lhs.true113, %if.end110
  %call134 = call ptr @GetDelegateInfo(ptr noundef nonnull %magick13, ptr noundef null, ptr noundef %exception) #7, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %call134, metadata !1338, metadata !DIExpression()), !dbg !1403
  %cmp135 = icmp eq ptr %call134, null, !dbg !1523
  br i1 %cmp135, label %if.then137, label %if.end150, !dbg !1525

if.then137:                                       ; preds = %if.else131
  %call140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 501, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %magick13) #7, !dbg !1526
  %temporary141 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 2, !dbg !1528
  %3 = load i32, ptr %temporary141, align 8, !dbg !1528, !tbaa !1485
  %cmp142.not = icmp eq i32 %3, 0, !dbg !1530
  br i1 %cmp142.not, label %if.end148, label %if.then144, !dbg !1531

if.then144:                                       ; preds = %if.then137
  %call147 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename4) #7, !dbg !1532
  br label %if.end148, !dbg !1533

if.end148:                                        ; preds = %if.then144, %if.then137
  %call149 = call ptr @DestroyImageInfo(ptr noundef nonnull %call2) #7, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %call149, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1535

if.end150:                                        ; preds = %if.else131
  %call151 = call ptr @AcquireImage(ptr noundef %call2) #7, !dbg !1536
  call void @llvm.dbg.value(metadata ptr %call151, metadata !1350, metadata !DIExpression()), !dbg !1403
  %cmp152 = icmp eq ptr %call151, null, !dbg !1537
  br i1 %cmp152, label %if.then154, label %if.end156, !dbg !1539

if.then154:                                       ; preds = %if.end150
  %call155 = call ptr @DestroyImageInfo(ptr noundef %call2) #7, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1542

if.end156:                                        ; preds = %if.end150
  %filename157 = getelementptr inbounds %struct._Image, ptr %call151, i64 0, i32 53, !dbg !1543
  %call161 = call i64 @CopyMagickString(ptr noundef nonnull %filename157, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !1544
  store i8 0, ptr %filename4, align 8, !dbg !1545, !tbaa !1473
  %call164 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %call134) #7, !dbg !1546
  %cmp165 = icmp eq i32 %call164, 0, !dbg !1548
  br i1 %cmp165, label %if.then167, label %if.end169, !dbg !1549

if.then167:                                       ; preds = %if.end156
  %semaphore168 = getelementptr inbounds %struct._DelegateInfo, ptr %call134, i64 0, i32 11, !dbg !1550
  %4 = load ptr, ptr %semaphore168, align 8, !dbg !1550, !tbaa !1551
  call void @LockSemaphoreInfo(ptr noundef %4) #7, !dbg !1553
  br label %if.end169, !dbg !1553

if.end169:                                        ; preds = %if.then167, %if.end156
  %call172 = call i32 @InvokeDelegate(ptr noundef nonnull %call2, ptr noundef nonnull %call151, ptr noundef nonnull %magick13, ptr noundef null, ptr noundef %exception) #7, !dbg !1554
  %call173 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %call134) #7, !dbg !1555
  %cmp174 = icmp eq i32 %call173, 0, !dbg !1557
  br i1 %cmp174, label %if.then176, label %if.end178, !dbg !1558

if.then176:                                       ; preds = %if.end169
  %semaphore177 = getelementptr inbounds %struct._DelegateInfo, ptr %call134, i64 0, i32 11, !dbg !1559
  %5 = load ptr, ptr %semaphore177, align 8, !dbg !1559, !tbaa !1551
  call void @UnlockSemaphoreInfo(ptr noundef %5) #7, !dbg !1560
  br label %if.end178, !dbg !1560

if.end178:                                        ; preds = %if.then176, %if.end169
  %call179 = call ptr @DestroyImageList(ptr noundef nonnull %call151) #7, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %call179, metadata !1350, metadata !DIExpression()), !dbg !1403
  %temporary180 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 2, !dbg !1562
  store i32 1, ptr %temporary180, align 8, !dbg !1563, !tbaa !1485
  %call181 = call i32 @SetImageInfo(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef %exception) #7, !dbg !1564
  %call184 = call ptr @GetMagickInfo(ptr noundef nonnull %magick13, ptr noundef %exception) #7, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %call184, metadata !1339, metadata !DIExpression()), !dbg !1403
  %cmp185 = icmp eq ptr %call184, null, !dbg !1566
  br i1 %cmp185, label %if.then191, label %lor.lhs.false187, !dbg !1567

lor.lhs.false187:                                 ; preds = %if.end178
  %call188 = call ptr @GetImageDecoder(ptr noundef nonnull %call184) #7, !dbg !1568
  %cmp189 = icmp eq ptr %call188, null, !dbg !1569
  br i1 %cmp189, label %if.then191, label %if.end210, !dbg !1570

if.then191:                                       ; preds = %lor.lhs.false187, %if.end178
  %call194 = call i32 @IsPathAccessible(ptr noundef nonnull %filename4) #7, !dbg !1571
  %cmp195.not = icmp eq i32 %call194, 0, !dbg !1572
  br i1 %cmp195.not, label %if.else201, label %if.then197, !dbg !1573

if.then197:                                       ; preds = %if.then191
  %call200 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 535, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %magick13) #7, !dbg !1574
  br label %if.end208, !dbg !1575

if.else201:                                       ; preds = %if.then191
  %call202 = tail call ptr @__errno_location() #8, !dbg !1576
  %6 = load i32, ptr %call202, align 4, !dbg !1576, !tbaa !1432
  %call203 = call ptr @GetExceptionMessage(i32 noundef %6) #7, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %call203, metadata !1368, metadata !DIExpression()), !dbg !1577
  %call206 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 540, i32 noundef 430, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename4, ptr noundef %call203) #7, !dbg !1576
  %call207 = call ptr @DestroyString(ptr noundef %call203) #7, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %call207, metadata !1368, metadata !DIExpression()), !dbg !1577
  br label %if.end208

if.end208:                                        ; preds = %if.else201, %if.then197
  %call209 = call ptr @DestroyImageInfo(ptr noundef nonnull %call2) #7, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %call209, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1579

if.end210:                                        ; preds = %lor.lhs.false187
  %call211 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %call184) #7, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %call211, metadata !1354, metadata !DIExpression()), !dbg !1403
  %and212 = and i32 %call211, 1, !dbg !1581
  %cmp213 = icmp eq i32 %and212, 0, !dbg !1583
  br i1 %cmp213, label %if.then215, label %if.end217, !dbg !1584

if.then215:                                       ; preds = %if.end210
  %semaphore216 = getelementptr inbounds %struct._MagickInfo, ptr %call184, i64 0, i32 22, !dbg !1585
  %7 = load ptr, ptr %semaphore216, align 8, !dbg !1585, !tbaa !1517
  call void @LockSemaphoreInfo(ptr noundef %7) #7, !dbg !1586
  br label %if.end217, !dbg !1586

if.end217:                                        ; preds = %if.then215, %if.end210
  %call218 = call ptr @GetImageDecoder(ptr noundef nonnull %call184) #7, !dbg !1587
  %call219 = call ptr %call218(ptr noundef nonnull %call2, ptr noundef %exception) #7, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %call219, metadata !1350, metadata !DIExpression()), !dbg !1403
  br i1 %cmp213, label %if.end226.sink.split, label %if.end226, !dbg !1589

if.end226.sink.split:                             ; preds = %if.end217, %if.end122
  %call184.sink = phi ptr [ %magick_info.0828, %if.end122 ], [ %call184, %if.end217 ]
  %image.0.ph = phi ptr [ %call124, %if.end122 ], [ %call219, %if.end217 ]
  %semaphore224 = getelementptr inbounds %struct._MagickInfo, ptr %call184.sink, i64 0, i32 22, !dbg !1590
  %8 = load ptr, ptr %semaphore224, align 8, !dbg !1590, !tbaa !1517
  call void @UnlockSemaphoreInfo(ptr noundef %8) #7, !dbg !1590
  br label %if.end226, !dbg !1591

if.end226:                                        ; preds = %if.end226.sink.split, %if.end217, %if.end122
  %image.0 = phi ptr [ %call124, %if.end122 ], [ %call219, %if.end217 ], [ %image.0.ph, %if.end226.sink.split ], !dbg !1590
  call void @llvm.dbg.value(metadata ptr %image.0, metadata !1350, metadata !DIExpression()), !dbg !1403
  %temporary227 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 2, !dbg !1591
  %9 = load i32, ptr %temporary227, align 8, !dbg !1591, !tbaa !1485
  %cmp228.not = icmp eq i32 %9, 0, !dbg !1593
  br i1 %cmp228.not, label %if.end243, label %if.then230, !dbg !1594

if.then230:                                       ; preds = %if.end226
  %call233 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename4) #7, !dbg !1595
  store i32 0, ptr %temporary227, align 8, !dbg !1597, !tbaa !1485
  %cond = icmp eq ptr %image.0, null, !dbg !1598
  br i1 %cond, label %if.then246, label %if.end243.thread, !dbg !1598

if.end243.thread:                                 ; preds = %if.then230
  %filename238 = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 53, !dbg !1599
  %call241 = call i64 @CopyMagickString(ptr noundef nonnull %filename238, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !1601
  br label %if.end248, !dbg !1602

if.end243:                                        ; preds = %if.end226
  %cmp244 = icmp eq ptr %image.0, null, !dbg !1603
  br i1 %cmp244, label %if.then246, label %if.end248, !dbg !1602

if.then246:                                       ; preds = %if.then230, %if.end243
  %call247 = call ptr @DestroyImageInfo(ptr noundef nonnull %call2) #7, !dbg !1605
  call void @llvm.dbg.value(metadata ptr %call247, metadata !1352, metadata !DIExpression()), !dbg !1403
  br label %cleanup604, !dbg !1607

if.end248:                                        ; preds = %if.end243.thread, %if.end243
  %10 = load i32, ptr %exception, align 8, !dbg !1608, !tbaa !1610
  %cmp249 = icmp ugt i32 %10, 399, !dbg !1611
  br i1 %cmp249, label %if.then251, label %if.end256, !dbg !1612

if.then251:                                       ; preds = %if.end248
  %magick252 = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 55, !dbg !1613
  %call255 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 564, ptr noundef nonnull @.str.9, ptr noundef nonnull %magick252, i32 noundef %10) #7, !dbg !1614
  br label %if.end256, !dbg !1615

if.end256:                                        ; preds = %if.then251, %if.end248
  %call257 = call i32 @IsBlobTemporary(ptr noundef nonnull %image.0) #7, !dbg !1616
  %cmp258.not = icmp eq i32 %call257, 0, !dbg !1618
  br i1 %cmp258.not, label %if.end264, label %if.then260, !dbg !1619

if.then260:                                       ; preds = %if.end256
  %call263 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename4) #7, !dbg !1620
  br label %if.end264, !dbg !1621

if.end264:                                        ; preds = %if.then260, %if.end256
  %call265 = call ptr @GetNextImageInList(ptr noundef nonnull %image.0) #7, !dbg !1622
  %cmp266.not = icmp eq ptr %call265, null, !dbg !1623
  br i1 %cmp266.not, label %if.end285, label %land.lhs.true268, !dbg !1624

land.lhs.true268:                                 ; preds = %if.end264
  %scenes = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 9, !dbg !1625
  %11 = load ptr, ptr %scenes, align 8, !dbg !1625, !tbaa !1626
  %call269 = call i32 @IsSceneGeometry(ptr noundef %11, i32 noundef 0) #7, !dbg !1627
  %cmp270.not = icmp eq i32 %call269, 0, !dbg !1628
  br i1 %cmp270.not, label %if.end285, label %if.then272, !dbg !1629

if.then272:                                       ; preds = %land.lhs.true268
  %12 = load ptr, ptr %scenes, align 8, !dbg !1630, !tbaa !1626
  %call274 = call ptr @CloneImages(ptr noundef nonnull %image.0, ptr noundef %12, ptr noundef nonnull %exception) #7, !dbg !1631
  call void @llvm.dbg.value(metadata ptr %call274, metadata !1375, metadata !DIExpression()), !dbg !1632
  %cmp275 = icmp eq ptr %call274, null, !dbg !1633
  br i1 %cmp275, label %if.then277, label %if.else281, !dbg !1635

if.then277:                                       ; preds = %if.then272
  %call280 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 577, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #7, !dbg !1636
  br label %if.end285, !dbg !1637

if.else281:                                       ; preds = %if.then272
  %call282 = call ptr @DestroyImageList(ptr noundef nonnull %image.0) #7, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %call282, metadata !1350, metadata !DIExpression()), !dbg !1403
  %call283 = call ptr @GetFirstImageInList(ptr noundef nonnull %call274) #7, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call283, metadata !1350, metadata !DIExpression()), !dbg !1403
  br label %if.end285

if.end285:                                        ; preds = %if.then277, %if.else281, %land.lhs.true268, %if.end264
  %image.2 = phi ptr [ %image.0, %land.lhs.true268 ], [ %image.0, %if.end264 ], [ %image.0, %if.then277 ], [ %call283, %if.else281 ], !dbg !1641
  call void @llvm.dbg.value(metadata ptr %image.2, metadata !1350, metadata !DIExpression()), !dbg !1403
  %call286 = call i32 @GetBlobError(ptr noundef %image.2) #7, !dbg !1642
  %cmp287.not = icmp eq i32 %call286, 0, !dbg !1643
  br i1 %cmp287.not, label %if.end297, label %if.then289, !dbg !1644

if.then289:                                       ; preds = %if.end285
  %call291 = tail call ptr @__errno_location() #8, !dbg !1645
  %13 = load i32, ptr %call291, align 4, !dbg !1645, !tbaa !1432
  %call292 = call ptr @GetExceptionMessage(i32 noundef %13) #7, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %call292, metadata !1378, metadata !DIExpression()), !dbg !1646
  %call295 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 587, i32 noundef 430, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename4, ptr noundef %call292) #7, !dbg !1645
  %call296 = call ptr @DestroyString(ptr noundef %call292) #7, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %call296, metadata !1378, metadata !DIExpression()), !dbg !1646
  br label %if.end297, !dbg !1645

if.end297:                                        ; preds = %if.then289, %if.end285
  call void @llvm.dbg.value(metadata ptr %image.2, metadata !1351, metadata !DIExpression()), !dbg !1403
  store ptr %image.2, ptr %next, align 8, !dbg !1647, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %image.2, metadata !1350, metadata !DIExpression()), !dbg !1403
  %cmp298.not841 = icmp eq ptr %image.2, null, !dbg !1648
  br i1 %cmp298.not841, label %for.end, label %for.body.lr.ph, !dbg !1649

for.body.lr.ph:                                   ; preds = %if.end297
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 7
  %stream = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 44
  %height458 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  %sigma568 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info540, i64 0, i32 1
  %verbose = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 35
  br label %for.body, !dbg !1649

for.body:                                         ; preds = %for.body.lr.ph, %if.end600
  %image.3843 = phi ptr [ %image.2, %for.body.lr.ph ], [ %109, %if.end600 ]
  %storemerge842 = phi ptr [ %image.2, %for.body.lr.ph ], [ %call601, %if.end600 ]
  call void @llvm.dbg.value(metadata ptr %image.3843, metadata !1350, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %storemerge842, metadata !1351, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %magick_path) #7, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %magick_path, metadata !1381, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %timestamp) #7, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %timestamp, metadata !1386, metadata !DIExpression()), !dbg !1652
  %taint = getelementptr inbounds %struct._Image, ptr %storemerge842, i64 0, i32 5, !dbg !1653
  store i32 0, ptr %taint, align 4, !dbg !1654, !tbaa !1655
  call void @GetPathComponent(ptr noundef nonnull %magick_filename, i32 noundef 1, ptr noundef nonnull %magick_path) #7, !dbg !1656
  %14 = load i8, ptr %magick_path, align 16, !dbg !1657, !tbaa !1473
  %cmp304 = icmp eq i8 %14, 0, !dbg !1659
  br i1 %cmp304, label %if.then306, label %if.end311, !dbg !1660

if.then306:                                       ; preds = %for.body
  %15 = load ptr, ptr %next, align 8, !dbg !1661, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %15, metadata !1351, metadata !DIExpression()), !dbg !1403
  %magick307 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 55, !dbg !1662
  %call310 = call i64 @CopyMagickString(ptr noundef nonnull %magick307, ptr noundef nonnull %magick, i64 noundef 4096) #7, !dbg !1663
  br label %if.end311, !dbg !1664

if.end311:                                        ; preds = %if.then306, %for.body
  %16 = load ptr, ptr %next, align 8, !dbg !1665, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %16, metadata !1351, metadata !DIExpression()), !dbg !1403
  %magick_filename312 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 54, !dbg !1666
  %call315 = call i64 @CopyMagickString(ptr noundef nonnull %magick_filename312, ptr noundef nonnull %magick_filename, i64 noundef 4096) #7, !dbg !1667
  %call316 = call i32 @IsBlobTemporary(ptr noundef %image.3843) #7, !dbg !1668
  %cmp317.not = icmp eq i32 %call316, 0, !dbg !1670
  br i1 %cmp317.not, label %if.end324, label %if.then319, !dbg !1671

if.then319:                                       ; preds = %if.end311
  %17 = load ptr, ptr %next, align 8, !dbg !1672, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %17, metadata !1351, metadata !DIExpression()), !dbg !1403
  %filename320 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 53, !dbg !1673
  %call323 = call i64 @CopyMagickString(ptr noundef nonnull %filename320, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !1674
  br label %if.end324, !dbg !1675

if.end324:                                        ; preds = %if.then319, %if.end311
  %18 = load ptr, ptr %next, align 8, !dbg !1676, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %18, metadata !1351, metadata !DIExpression()), !dbg !1403
  %magick_columns = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 56, !dbg !1678
  %19 = load i64, ptr %magick_columns, align 8, !dbg !1678, !tbaa !1679
  %cmp325 = icmp eq i64 %19, 0, !dbg !1680
  br i1 %cmp325, label %if.then327, label %if.end329, !dbg !1681

if.then327:                                       ; preds = %if.end324
  %columns = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7, !dbg !1682
  %20 = load i64, ptr %columns, align 8, !dbg !1682, !tbaa !1102
  store i64 %20, ptr %magick_columns, align 8, !dbg !1683, !tbaa !1679
  br label %if.end329, !dbg !1684

if.end329:                                        ; preds = %if.then327, %if.end324
  call void @llvm.dbg.value(metadata ptr %18, metadata !1351, metadata !DIExpression()), !dbg !1403
  %magick_rows = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 57, !dbg !1685
  %21 = load i64, ptr %magick_rows, align 8, !dbg !1685, !tbaa !1687
  %cmp330 = icmp eq i64 %21, 0, !dbg !1688
  br i1 %cmp330, label %if.then332, label %if.end334, !dbg !1689

if.then332:                                       ; preds = %if.end329
  %rows = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8, !dbg !1690
  %22 = load i64, ptr %rows, align 8, !dbg !1690, !tbaa !1123
  store i64 %22, ptr %magick_rows, align 8, !dbg !1691, !tbaa !1687
  br label %if.end334, !dbg !1692

if.end334:                                        ; preds = %if.then332, %if.end329
  call void @llvm.dbg.value(metadata ptr %18, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call335 = call ptr @GetImageProperty(ptr noundef nonnull %18, ptr noundef nonnull @.str.12) #7, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %call335, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp336 = icmp eq ptr %call335, null, !dbg !1694
  br i1 %cmp336, label %if.end340, label %if.then343, !dbg !1696

if.end340:                                        ; preds = %if.end334
  %23 = load ptr, ptr %next, align 8, !dbg !1697, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %23, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call339 = call ptr @GetImageProperty(ptr noundef %23, ptr noundef nonnull @.str.13) #7, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %call339, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp341.not = icmp eq ptr %call339, null, !dbg !1699
  br i1 %cmp341.not, label %if.end348, label %if.then343, !dbg !1701

if.then343:                                       ; preds = %if.end334, %if.end340
  %value.0831 = phi ptr [ %call339, %if.end340 ], [ %call335, %if.end334 ]
  call void @llvm.dbg.value(metadata ptr %call339, metadata !1702, metadata !DIExpression()) #7, !dbg !1709
  %call.i = call i64 @strtol(ptr nocapture noundef nonnull %value.0831, ptr noundef null, i32 noundef 10) #7, !dbg !1712
  %conv345 = trunc i64 %call.i to i32, !dbg !1713
  %24 = load ptr, ptr %next, align 8, !dbg !1714, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %24, metadata !1351, metadata !DIExpression()), !dbg !1403
  %orientation = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 4, !dbg !1715
  store i32 %conv345, ptr %orientation, align 8, !dbg !1716, !tbaa !1717
  %call346 = call i32 @DeleteImageProperty(ptr noundef %24, ptr noundef nonnull @.str.12) #7, !dbg !1718
  %25 = load ptr, ptr %next, align 8, !dbg !1719, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %25, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call347 = call i32 @DeleteImageProperty(ptr noundef %25, ptr noundef nonnull @.str.13) #7, !dbg !1720
  br label %if.end348, !dbg !1721

if.end348:                                        ; preds = %if.then343, %if.end340
  %26 = load ptr, ptr %next, align 8, !dbg !1722, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %26, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call349 = call ptr @GetImageProperty(ptr noundef %26, ptr noundef nonnull @.str.14) #7, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %call349, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp350.not = icmp eq ptr %call349, null, !dbg !1724
  br i1 %cmp350.not, label %if.end363, label %if.then352, !dbg !1726

if.then352:                                       ; preds = %if.end348
  %27 = load ptr, ptr %next, align 8, !dbg !1727, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %27, metadata !1351, metadata !DIExpression()), !dbg !1403
  %x_resolution = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 24, !dbg !1729
  %28 = load double, ptr %x_resolution, align 8, !dbg !1729, !tbaa !1730
  store double %28, ptr %geometry_info, align 8, !dbg !1731, !tbaa !1732
  store double 1.000000e+00, ptr %sigma, align 8, !dbg !1734, !tbaa !1735
  %call353 = call i32 @ParseGeometry(ptr noundef nonnull %call349, ptr noundef nonnull %geometry_info) #7, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %call353, metadata !1353, metadata !DIExpression()), !dbg !1403
  %29 = load double, ptr %sigma, align 8, !dbg !1737, !tbaa !1735
  %cmp355 = fcmp une double %29, 0.000000e+00, !dbg !1739
  br i1 %cmp355, label %if.then357, label %if.then352.if.end361_crit_edge, !dbg !1740

if.then352.if.end361_crit_edge:                   ; preds = %if.then352
  %.pre = load ptr, ptr %next, align 8, !dbg !1741, !tbaa !1196
  br label %if.end361, !dbg !1740

if.then357:                                       ; preds = %if.then352
  %30 = load double, ptr %geometry_info, align 8, !dbg !1742, !tbaa !1732
  %div = fdiv double %30, %29, !dbg !1743
  %31 = load ptr, ptr %next, align 8, !dbg !1744, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %31, metadata !1351, metadata !DIExpression()), !dbg !1403
  %x_resolution360 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 24, !dbg !1745
  store double %div, ptr %x_resolution360, align 8, !dbg !1746, !tbaa !1730
  br label %if.end361, !dbg !1744

if.end361:                                        ; preds = %if.then352.if.end361_crit_edge, %if.then357
  %32 = phi ptr [ %.pre, %if.then352.if.end361_crit_edge ], [ %31, %if.then357 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %32, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call362 = call i32 @DeleteImageProperty(ptr noundef %32, ptr noundef nonnull @.str.14) #7, !dbg !1747
  br label %if.end363, !dbg !1748

if.end363:                                        ; preds = %if.end361, %if.end348
  %33 = load ptr, ptr %next, align 8, !dbg !1749, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %33, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call364 = call ptr @GetImageProperty(ptr noundef %33, ptr noundef nonnull @.str.15) #7, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %call364, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp365.not = icmp eq ptr %call364, null, !dbg !1751
  br i1 %cmp365.not, label %if.end381, label %if.then367, !dbg !1753

if.then367:                                       ; preds = %if.end363
  %34 = load ptr, ptr %next, align 8, !dbg !1754, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %34, metadata !1351, metadata !DIExpression()), !dbg !1403
  %y_resolution = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 25, !dbg !1756
  %35 = load double, ptr %y_resolution, align 8, !dbg !1756, !tbaa !1757
  store double %35, ptr %geometry_info, align 8, !dbg !1758, !tbaa !1732
  store double 1.000000e+00, ptr %sigma, align 8, !dbg !1759, !tbaa !1735
  %call370 = call i32 @ParseGeometry(ptr noundef nonnull %call364, ptr noundef nonnull %geometry_info) #7, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %call370, metadata !1353, metadata !DIExpression()), !dbg !1403
  %36 = load double, ptr %sigma, align 8, !dbg !1761, !tbaa !1735
  %cmp372 = fcmp une double %36, 0.000000e+00, !dbg !1763
  br i1 %cmp372, label %if.then374, label %if.then367.if.end379_crit_edge, !dbg !1764

if.then367.if.end379_crit_edge:                   ; preds = %if.then367
  %.pre844 = load ptr, ptr %next, align 8, !dbg !1765, !tbaa !1196
  br label %if.end379, !dbg !1764

if.then374:                                       ; preds = %if.then367
  %37 = load double, ptr %geometry_info, align 8, !dbg !1766, !tbaa !1732
  %div377 = fdiv double %37, %36, !dbg !1767
  %38 = load ptr, ptr %next, align 8, !dbg !1768, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %38, metadata !1351, metadata !DIExpression()), !dbg !1403
  %y_resolution378 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 25, !dbg !1769
  store double %div377, ptr %y_resolution378, align 8, !dbg !1770, !tbaa !1757
  br label %if.end379, !dbg !1768

if.end379:                                        ; preds = %if.then367.if.end379_crit_edge, %if.then374
  %39 = phi ptr [ %.pre844, %if.then367.if.end379_crit_edge ], [ %38, %if.then374 ], !dbg !1765
  call void @llvm.dbg.value(metadata ptr %39, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call380 = call i32 @DeleteImageProperty(ptr noundef %39, ptr noundef nonnull @.str.15) #7, !dbg !1771
  br label %if.end381, !dbg !1772

if.end381:                                        ; preds = %if.end379, %if.end363
  %40 = load ptr, ptr %next, align 8, !dbg !1773, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %40, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call382 = call ptr @GetImageProperty(ptr noundef %40, ptr noundef nonnull @.str.16) #7, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %call382, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp383 = icmp eq ptr %call382, null, !dbg !1775
  br i1 %cmp383, label %if.end387, label %if.then390, !dbg !1777

if.end387:                                        ; preds = %if.end381
  %41 = load ptr, ptr %next, align 8, !dbg !1778, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %41, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call386 = call ptr @GetImageProperty(ptr noundef %41, ptr noundef nonnull @.str.17) #7, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %call386, metadata !1337, metadata !DIExpression()), !dbg !1403
  %cmp388.not = icmp eq ptr %call386, null, !dbg !1780
  br i1 %cmp388.not, label %if.end395, label %if.then390, !dbg !1782

if.then390:                                       ; preds = %if.end381, %if.end387
  %value.1834 = phi ptr [ %call386, %if.end387 ], [ %call382, %if.end381 ]
  call void @llvm.dbg.value(metadata ptr %call386, metadata !1702, metadata !DIExpression()) #7, !dbg !1783
  %call.i807 = call i64 @strtol(ptr nocapture noundef nonnull %value.1834, ptr noundef null, i32 noundef 10) #7, !dbg !1786
  %42 = trunc i64 %call.i807 to i32, !dbg !1787
  %conv392 = add i32 %42, -1, !dbg !1787
  %43 = load ptr, ptr %next, align 8, !dbg !1788, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %43, metadata !1351, metadata !DIExpression()), !dbg !1403
  %units = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 19, !dbg !1789
  store i32 %conv392, ptr %units, align 8, !dbg !1790, !tbaa !1791
  %call393 = call i32 @DeleteImageProperty(ptr noundef %43, ptr noundef nonnull @.str.17) #7, !dbg !1792
  %44 = load ptr, ptr %next, align 8, !dbg !1793, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %44, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call394 = call i32 @DeleteImageProperty(ptr noundef %44, ptr noundef nonnull @.str.16) #7, !dbg !1794
  br label %if.end395, !dbg !1795

if.end395:                                        ; preds = %if.then390, %if.end387
  %45 = load ptr, ptr %next, align 8, !dbg !1796, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %45, metadata !1351, metadata !DIExpression()), !dbg !1403
  %page = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26, !dbg !1798
  %46 = load i64, ptr %page, align 8, !dbg !1799, !tbaa !1800
  %cmp396 = icmp eq i64 %46, 0, !dbg !1801
  br i1 %cmp396, label %if.then398, label %if.end402, !dbg !1802

if.then398:                                       ; preds = %if.end395
  %columns399 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7, !dbg !1803
  %47 = load i64, ptr %columns399, align 8, !dbg !1803, !tbaa !1102
  store i64 %47, ptr %page, align 8, !dbg !1804, !tbaa !1800
  br label %if.end402, !dbg !1805

if.end402:                                        ; preds = %if.then398, %if.end395
  call void @llvm.dbg.value(metadata ptr %45, metadata !1351, metadata !DIExpression()), !dbg !1403
  %height = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26, i32 1, !dbg !1806
  %48 = load i64, ptr %height, align 8, !dbg !1806, !tbaa !1808
  %cmp404 = icmp eq i64 %48, 0, !dbg !1809
  br i1 %cmp404, label %if.then406, label %if.end410, !dbg !1810

if.then406:                                       ; preds = %if.end402
  %rows407 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 8, !dbg !1811
  %49 = load i64, ptr %rows407, align 8, !dbg !1811, !tbaa !1123
  store i64 %49, ptr %height, align 8, !dbg !1812, !tbaa !1808
  br label %if.end410, !dbg !1813

if.end410:                                        ; preds = %if.then406, %if.end402
  %call411 = call ptr @GetImageOption(ptr noundef nonnull %call2, ptr noundef nonnull @.str.18) #7, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %call411, metadata !1387, metadata !DIExpression()), !dbg !1815
  %cmp412.not = icmp eq ptr %call411, null, !dbg !1816
  br i1 %cmp412.not, label %if.end418, label %if.then414, !dbg !1818

if.then414:                                       ; preds = %if.end410
  %50 = load ptr, ptr %next, align 8, !dbg !1819, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %50, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call415 = call ptr @InterpretImageProperties(ptr noundef %call2, ptr noundef %50, ptr noundef nonnull %call411) #7, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call415, metadata !1385, metadata !DIExpression()), !dbg !1815
  %51 = load ptr, ptr %next, align 8, !dbg !1822, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %51, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call416 = call i32 @SetImageProperty(ptr noundef %51, ptr noundef nonnull @.str.18, ptr noundef %call415) #7, !dbg !1823
  %call417 = call ptr @DestroyString(ptr noundef %call415) #7, !dbg !1824
  call void @llvm.dbg.value(metadata ptr %call417, metadata !1385, metadata !DIExpression()), !dbg !1815
  br label %if.end418, !dbg !1825

if.end418:                                        ; preds = %if.then414, %if.end410
  %call419 = call ptr @GetImageOption(ptr noundef %call2, ptr noundef nonnull @.str.19) #7, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %call419, metadata !1387, metadata !DIExpression()), !dbg !1815
  %cmp420.not = icmp eq ptr %call419, null, !dbg !1827
  br i1 %cmp420.not, label %if.end426, label %if.then422, !dbg !1829

if.then422:                                       ; preds = %if.end418
  %52 = load ptr, ptr %next, align 8, !dbg !1830, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %52, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call423 = call ptr @InterpretImageProperties(ptr noundef %call2, ptr noundef %52, ptr noundef nonnull %call419) #7, !dbg !1832
  call void @llvm.dbg.value(metadata ptr %call423, metadata !1385, metadata !DIExpression()), !dbg !1815
  %53 = load ptr, ptr %next, align 8, !dbg !1833, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %53, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call424 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.19, ptr noundef %call423) #7, !dbg !1834
  %call425 = call ptr @DestroyString(ptr noundef %call423) #7, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call425, metadata !1385, metadata !DIExpression()), !dbg !1815
  br label %if.end426, !dbg !1836

if.end426:                                        ; preds = %if.then422, %if.end418
  %call427 = call ptr @GetImageOption(ptr noundef %call2, ptr noundef nonnull @.str.20) #7, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %call427, metadata !1387, metadata !DIExpression()), !dbg !1815
  %cmp428.not = icmp eq ptr %call427, null, !dbg !1838
  br i1 %cmp428.not, label %if.end434, label %if.then430, !dbg !1840

if.then430:                                       ; preds = %if.end426
  %54 = load ptr, ptr %next, align 8, !dbg !1841, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %54, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call431 = call ptr @InterpretImageProperties(ptr noundef %call2, ptr noundef %54, ptr noundef nonnull %call427) #7, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %call431, metadata !1385, metadata !DIExpression()), !dbg !1815
  %55 = load ptr, ptr %next, align 8, !dbg !1844, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %55, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call432 = call i32 @SetImageProperty(ptr noundef %55, ptr noundef nonnull @.str.20, ptr noundef %call431) #7, !dbg !1845
  %call433 = call ptr @DestroyString(ptr noundef %call431) #7, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %call433, metadata !1385, metadata !DIExpression()), !dbg !1815
  br label %if.end434, !dbg !1847

if.end434:                                        ; preds = %if.then430, %if.end426
  %56 = load ptr, ptr %next, align 8, !dbg !1848, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %56, metadata !1351, metadata !DIExpression()), !dbg !1403
  %magick435 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 55, !dbg !1850
  %call437 = call i32 @LocaleCompare(ptr noundef nonnull %magick435, ptr noundef nonnull @.str.21) #7, !dbg !1851
  %cmp438 = icmp eq i32 %call437, 0, !dbg !1852
  br i1 %cmp438, label %if.then440, label %if.end443, !dbg !1853

if.then440:                                       ; preds = %if.end434
  %57 = load ptr, ptr %next, align 8, !dbg !1854, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %57, metadata !1351, metadata !DIExpression()), !dbg !1403
  %page441 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 26, !dbg !1855
  %call442 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.22, ptr noundef nonnull %page441) #7, !dbg !1856
  br label %if.end443, !dbg !1857

if.end443:                                        ; preds = %if.then440, %if.end434
  %58 = load ptr, ptr %extract, align 8, !dbg !1858, !tbaa !1859
  %cmp444.not = icmp eq ptr %58, null, !dbg !1860
  br i1 %cmp444.not, label %if.end496, label %land.lhs.true446, !dbg !1861

land.lhs.true446:                                 ; preds = %if.end443
  %59 = load ptr, ptr %stream, align 8, !dbg !1862, !tbaa !1863
  %cmp447 = icmp eq ptr %59, null, !dbg !1864
  br i1 %cmp447, label %if.then449, label %if.end496, !dbg !1865

if.then449:                                       ; preds = %land.lhs.true446
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #7, !dbg !1866
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !1389, metadata !DIExpression()), !dbg !1867
  %call451 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %58, ptr noundef nonnull %geometry) #7, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %call451, metadata !1353, metadata !DIExpression()), !dbg !1403
  %60 = load ptr, ptr %next, align 8, !dbg !1869, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %60, metadata !1351, metadata !DIExpression()), !dbg !1403
  %columns452 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7, !dbg !1870
  %61 = load i64, ptr %columns452, align 8, !dbg !1870, !tbaa !1102
  %62 = load i64, ptr %geometry, align 8, !dbg !1871, !tbaa !1872
  %cmp454.not = icmp eq i64 %61, %62, !dbg !1873
  br i1 %cmp454.not, label %lor.lhs.false456, label %if.then461, !dbg !1874

lor.lhs.false456:                                 ; preds = %if.then449
  %rows457 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 8, !dbg !1875
  %63 = load i64, ptr %rows457, align 8, !dbg !1875, !tbaa !1123
  %64 = load i64, ptr %height458, align 8, !dbg !1876, !tbaa !1877
  %cmp459.not = icmp eq i64 %63, %64, !dbg !1878
  br i1 %cmp459.not, label %if.end495, label %if.then461, !dbg !1879

if.then461:                                       ; preds = %lor.lhs.false456, %if.then449
  %65 = and i32 %call451, 3, !dbg !1880
  %66 = icmp eq i32 %65, 0, !dbg !1880
  br i1 %66, label %if.else475, label %if.then469, !dbg !1880

if.then469:                                       ; preds = %if.then461
  call void @llvm.dbg.value(metadata ptr %60, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call470 = call ptr @CropImage(ptr noundef nonnull %60, ptr noundef nonnull %geometry, ptr noundef nonnull %exception) #7, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %call470, metadata !1392, metadata !DIExpression()), !dbg !1882
  %cmp471.not = icmp eq ptr %call470, null, !dbg !1883
  br i1 %cmp471.not, label %if.end495, label %if.end495.sink.split, !dbg !1885

if.else475:                                       ; preds = %if.then461
  %67 = and i32 %call451, 12, !dbg !1886
  %68 = icmp eq i32 %67, 0, !dbg !1886
  br i1 %68, label %if.end495, label %if.then483, !dbg !1886

if.then483:                                       ; preds = %if.else475
  call void @llvm.dbg.value(metadata ptr %60, metadata !1351, metadata !DIExpression()), !dbg !1403
  %69 = load ptr, ptr %extract, align 8, !dbg !1887, !tbaa !1859
  %call485 = call i32 @ParseRegionGeometry(ptr noundef nonnull %60, ptr noundef %69, ptr noundef nonnull %geometry, ptr noundef nonnull %exception) #7, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %call485, metadata !1353, metadata !DIExpression()), !dbg !1403
  %70 = load ptr, ptr %next, align 8, !dbg !1889, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %70, metadata !1351, metadata !DIExpression()), !dbg !1403
  %71 = load i64, ptr %geometry, align 8, !dbg !1890, !tbaa !1872
  %72 = load i64, ptr %height458, align 8, !dbg !1891, !tbaa !1877
  %filter = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 32, !dbg !1892
  %73 = load i32, ptr %filter, align 8, !dbg !1892, !tbaa !1893
  %blur = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 30, !dbg !1894
  %74 = load double, ptr %blur, align 8, !dbg !1894, !tbaa !1895
  %call488 = call ptr @ResizeImage(ptr noundef %70, i64 noundef %71, i64 noundef %72, i32 noundef %73, double noundef %74, ptr noundef nonnull %exception) #7, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %call488, metadata !1397, metadata !DIExpression()), !dbg !1897
  %cmp489.not = icmp eq ptr %call488, null, !dbg !1898
  br i1 %cmp489.not, label %if.end495, label %if.end495.sink.split, !dbg !1900

if.end495.sink.split:                             ; preds = %if.then483, %if.then469
  %call488.sink = phi ptr [ %call470, %if.then469 ], [ %call488, %if.then483 ]
  call void @ReplaceImageInList(ptr noundef nonnull %next, ptr noundef nonnull %call488.sink) #7, !dbg !1901
  br label %if.end495, !dbg !1902

if.end495:                                        ; preds = %if.end495.sink.split, %if.then483, %if.else475, %if.then469, %lor.lhs.false456
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #7, !dbg !1902
  br label %if.end496, !dbg !1903

if.end496:                                        ; preds = %if.end495, %land.lhs.true446, %if.end443
  %75 = load ptr, ptr %next, align 8, !dbg !1904, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %75, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call497 = call ptr @GetImageProfile(ptr noundef %75, ptr noundef nonnull @.str.23) #7, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %call497, metadata !1388, metadata !DIExpression()), !dbg !1815
  %cmp498 = icmp eq ptr %call497, null, !dbg !1906
  br i1 %cmp498, label %if.end502, label %if.then505, !dbg !1908

if.end502:                                        ; preds = %if.end496
  %76 = load ptr, ptr %next, align 8, !dbg !1909, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %76, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call501 = call ptr @GetImageProfile(ptr noundef %76, ptr noundef nonnull @.str.24) #7, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %call501, metadata !1388, metadata !DIExpression()), !dbg !1815
  %cmp503.not = icmp eq ptr %call501, null, !dbg !1911
  br i1 %cmp503.not, label %if.end502.if.end509_crit_edge, label %if.then505, !dbg !1913

if.end502.if.end509_crit_edge:                    ; preds = %if.end502
  %.pre845 = load ptr, ptr %next, align 8, !dbg !1914, !tbaa !1196
  br label %if.end509, !dbg !1913

if.then505:                                       ; preds = %if.end496, %if.end502
  %profile.0837 = phi ptr [ %call501, %if.end502 ], [ %call497, %if.end496 ]
  %call506 = call i64 @GetStringInfoLength(ptr noundef nonnull %profile.0837) #7, !dbg !1915
  %77 = load ptr, ptr %next, align 8, !dbg !1917, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %77, metadata !1351, metadata !DIExpression()), !dbg !1403
  %length = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 62, i32 1, !dbg !1918
  store i64 %call506, ptr %length, align 8, !dbg !1919, !tbaa !1920
  %call507 = call ptr @GetStringInfoDatum(ptr noundef nonnull %profile.0837) #7, !dbg !1921
  %78 = load ptr, ptr %next, align 8, !dbg !1922, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %78, metadata !1351, metadata !DIExpression()), !dbg !1403
  %info = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 62, i32 2, !dbg !1923
  store ptr %call507, ptr %info, align 8, !dbg !1924, !tbaa !1925
  br label %if.end509, !dbg !1926

if.end509:                                        ; preds = %if.end502.if.end509_crit_edge, %if.then505
  %79 = phi ptr [ %.pre845, %if.end502.if.end509_crit_edge ], [ %78, %if.then505 ], !dbg !1914
  call void @llvm.dbg.value(metadata ptr %79, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call510 = call ptr @GetImageProfile(ptr noundef %79, ptr noundef nonnull @.str.25) #7, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %call510, metadata !1388, metadata !DIExpression()), !dbg !1815
  %cmp511 = icmp eq ptr %call510, null, !dbg !1928
  br i1 %cmp511, label %if.end515, label %if.then518, !dbg !1930

if.end515:                                        ; preds = %if.end509
  %80 = load ptr, ptr %next, align 8, !dbg !1931, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %80, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call514 = call ptr @GetImageProfile(ptr noundef %80, ptr noundef nonnull @.str.26) #7, !dbg !1932
  call void @llvm.dbg.value(metadata ptr %call514, metadata !1388, metadata !DIExpression()), !dbg !1815
  %cmp516.not = icmp eq ptr %call514, null, !dbg !1933
  br i1 %cmp516.not, label %if.end515.if.end524_crit_edge, label %if.then518, !dbg !1935

if.end515.if.end524_crit_edge:                    ; preds = %if.end515
  %.pre846 = load ptr, ptr %next, align 8, !dbg !1936, !tbaa !1196
  br label %if.end524, !dbg !1935

if.then518:                                       ; preds = %if.end509, %if.end515
  %profile.1840 = phi ptr [ %call514, %if.end515 ], [ %call510, %if.end509 ]
  %call519 = call i64 @GetStringInfoLength(ptr noundef nonnull %profile.1840) #7, !dbg !1937
  %81 = load ptr, ptr %next, align 8, !dbg !1939, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %81, metadata !1351, metadata !DIExpression()), !dbg !1403
  %length520 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 63, i32 1, !dbg !1940
  store i64 %call519, ptr %length520, align 8, !dbg !1941, !tbaa !1942
  %call521 = call ptr @GetStringInfoDatum(ptr noundef nonnull %profile.1840) #7, !dbg !1943
  %82 = load ptr, ptr %next, align 8, !dbg !1944, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %82, metadata !1351, metadata !DIExpression()), !dbg !1403
  %info523 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 63, i32 2, !dbg !1945
  store ptr %call521, ptr %info523, align 8, !dbg !1946, !tbaa !1947
  br label %if.end524, !dbg !1948

if.end524:                                        ; preds = %if.end515.if.end524_crit_edge, %if.then518
  %83 = phi ptr [ %.pre846, %if.end515.if.end524_crit_edge ], [ %82, %if.then518 ], !dbg !1936
  call void @llvm.dbg.value(metadata ptr %83, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call525 = call ptr @GetBlobProperties(ptr noundef %83) #7, !dbg !1949
  %st_mtim = getelementptr inbounds %struct.stat, ptr %call525, i64 0, i32 12, !dbg !1950
  %84 = load i64, ptr %st_mtim, align 8, !dbg !1950, !tbaa !1951
  %call527 = call i64 @FormatMagickTime(i64 noundef %84, i64 noundef 4096, ptr noundef nonnull %timestamp) #7, !dbg !1954
  %85 = load ptr, ptr %next, align 8, !dbg !1955, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %85, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call529 = call i32 @SetImageProperty(ptr noundef %85, ptr noundef nonnull @.str.27, ptr noundef nonnull %timestamp) #7, !dbg !1956
  %86 = load ptr, ptr %next, align 8, !dbg !1957, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %86, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call530 = call ptr @GetBlobProperties(ptr noundef %86) #7, !dbg !1958
  %st_ctim = getelementptr inbounds %struct.stat, ptr %call530, i64 0, i32 13, !dbg !1959
  %87 = load i64, ptr %st_ctim, align 8, !dbg !1959, !tbaa !1960
  %call533 = call i64 @FormatMagickTime(i64 noundef %87, i64 noundef 4096, ptr noundef nonnull %timestamp) #7, !dbg !1961
  %88 = load ptr, ptr %next, align 8, !dbg !1962, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %88, metadata !1351, metadata !DIExpression()), !dbg !1403
  %call535 = call i32 @SetImageProperty(ptr noundef %88, ptr noundef nonnull @.str.28, ptr noundef nonnull %timestamp) #7, !dbg !1963
  %call536 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.29) #7, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %call536, metadata !1387, metadata !DIExpression()), !dbg !1815
  %cmp537.not = icmp eq ptr %call536, null, !dbg !1965
  br i1 %cmp537.not, label %if.end588, label %if.then539, !dbg !1966

if.then539:                                       ; preds = %if.end524
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info540) #7, !dbg !1967
  call void @llvm.dbg.declare(metadata ptr %geometry_info540, metadata !1400, metadata !DIExpression()), !dbg !1968
  %call541 = call i32 @ParseGeometry(ptr noundef nonnull %call536, ptr noundef nonnull %geometry_info540) #7, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %call541, metadata !1353, metadata !DIExpression()), !dbg !1403
  %and542 = and i32 %call541, 32768, !dbg !1970
  %cmp543.not = icmp eq i32 %and542, 0, !dbg !1972
  br i1 %cmp543.not, label %if.else556, label %if.then545, !dbg !1973

if.then545:                                       ; preds = %if.then539
  %89 = load ptr, ptr %next, align 8, !dbg !1974, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %89, metadata !1351, metadata !DIExpression()), !dbg !1403
  %delay = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 40, !dbg !1977
  %90 = load i64, ptr %delay, align 8, !dbg !1977, !tbaa !1978
  %91 = load double, ptr %geometry_info540, align 8, !dbg !1979, !tbaa !1732
  %add = fadd double %91, 5.000000e-01, !dbg !1980
  %92 = call double @llvm.floor.f64(double %add), !dbg !1981
  %conv547 = fptoui double %92 to i64, !dbg !1982
  %cmp548 = icmp ugt i64 %90, %conv547, !dbg !1983
  br i1 %cmp548, label %if.then550, label %if.end578, !dbg !1984

if.then550:                                       ; preds = %if.then545
  store i64 %conv547, ptr %delay, align 8, !dbg !1985, !tbaa !1978
  br label %if.end578, !dbg !1986

if.else556:                                       ; preds = %if.then539
  %and557 = and i32 %call541, 16384, !dbg !1987
  %cmp558.not = icmp eq i32 %and557, 0, !dbg !1989
  br i1 %cmp558.not, label %if.else572, label %if.then560, !dbg !1990

if.then560:                                       ; preds = %if.else556
  %93 = load ptr, ptr %next, align 8, !dbg !1991, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %93, metadata !1351, metadata !DIExpression()), !dbg !1403
  %delay561 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 40, !dbg !1994
  %94 = load i64, ptr %delay561, align 8, !dbg !1994, !tbaa !1978
  %95 = load double, ptr %geometry_info540, align 8, !dbg !1995, !tbaa !1732
  %add563 = fadd double %95, 5.000000e-01, !dbg !1996
  %96 = call double @llvm.floor.f64(double %add563), !dbg !1997
  %conv564 = fptoui double %96 to i64, !dbg !1998
  %cmp565 = icmp ult i64 %94, %conv564, !dbg !1999
  br i1 %cmp565, label %if.then567, label %if.end578, !dbg !2000

if.then567:                                       ; preds = %if.then560
  %97 = load double, ptr %sigma568, align 8, !dbg !2001, !tbaa !1735
  %add569 = fadd double %97, 5.000000e-01, !dbg !2002
  %98 = call double @llvm.floor.f64(double %add569), !dbg !2003
  %conv570 = fptosi double %98 to i64, !dbg !2004
  %ticks_per_second = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 41, !dbg !2005
  store i64 %conv570, ptr %ticks_per_second, align 8, !dbg !2006, !tbaa !2007
  br label %if.end578, !dbg !2008

if.else572:                                       ; preds = %if.else556
  %99 = load double, ptr %geometry_info540, align 8, !dbg !2009, !tbaa !1732
  %add574 = fadd double %99, 5.000000e-01, !dbg !2010
  %100 = call double @llvm.floor.f64(double %add574), !dbg !2011
  %conv575 = fptoui double %100 to i64, !dbg !2012
  %101 = load ptr, ptr %next, align 8, !dbg !2013, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %101, metadata !1351, metadata !DIExpression()), !dbg !1403
  %delay576 = getelementptr inbounds %struct._Image, ptr %101, i64 0, i32 40, !dbg !2014
  store i64 %conv575, ptr %delay576, align 8, !dbg !2015, !tbaa !1978
  br label %if.end578

if.end578:                                        ; preds = %if.else572, %if.then567, %if.then560, %if.then545, %if.then550
  %102 = phi ptr [ %101, %if.else572 ], [ %93, %if.then567 ], [ %93, %if.then560 ], [ %89, %if.then545 ], [ %89, %if.then550 ]
  %and579 = and i32 %call541, 8, !dbg !2016
  %cmp580.not = icmp eq i32 %and579, 0, !dbg !2018
  br i1 %cmp580.not, label %if.end587, label %if.then582, !dbg !2019

if.then582:                                       ; preds = %if.end578
  %103 = load double, ptr %sigma568, align 8, !dbg !2020, !tbaa !1735
  %add584 = fadd double %103, 5.000000e-01, !dbg !2021
  %104 = call double @llvm.floor.f64(double %add584), !dbg !2022
  %conv585 = fptosi double %104 to i64, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %102, metadata !1351, metadata !DIExpression()), !dbg !1403
  %ticks_per_second586 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 41, !dbg !2024
  store i64 %conv585, ptr %ticks_per_second586, align 8, !dbg !2025, !tbaa !2007
  br label %if.end587, !dbg !2026

if.end587:                                        ; preds = %if.then582, %if.end578
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info540) #7, !dbg !2027
  br label %if.end588, !dbg !2028

if.end588:                                        ; preds = %if.end587, %if.end524
  %call589 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.30) #7, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %call589, metadata !1387, metadata !DIExpression()), !dbg !1815
  %cmp590.not = icmp eq ptr %call589, null, !dbg !2030
  br i1 %cmp590.not, label %if.end595, label %if.then592, !dbg !2032

if.then592:                                       ; preds = %if.end588
  %call593 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %call589) #7, !dbg !2033
  %conv594 = trunc i64 %call593 to i32, !dbg !2034
  %105 = load ptr, ptr %next, align 8, !dbg !2035, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %105, metadata !1351, metadata !DIExpression()), !dbg !1403
  %dispose = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 37, !dbg !2036
  store i32 %conv594, ptr %dispose, align 4, !dbg !2037, !tbaa !2038
  br label %if.end595, !dbg !2035

if.end595:                                        ; preds = %if.then592, %if.end588
  %106 = load i32, ptr %verbose, align 4, !dbg !2039, !tbaa !1192
  %cmp596.not = icmp eq i32 %106, 0, !dbg !2041
  br i1 %cmp596.not, label %if.end600, label %if.then598, !dbg !2042

if.then598:                                       ; preds = %if.end595
  %107 = load ptr, ptr %next, align 8, !dbg !2043, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %107, metadata !1351, metadata !DIExpression()), !dbg !1403
  %108 = load ptr, ptr @stderr, align 8, !dbg !2044, !tbaa !1196
  %call599 = call i32 @IdentifyImage(ptr noundef %107, ptr noundef %108, i32 noundef 0) #7, !dbg !2045
  br label %if.end600, !dbg !2046

if.end600:                                        ; preds = %if.then598, %if.end595
  %109 = load ptr, ptr %next, align 8, !dbg !2047, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %109, metadata !1351, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %109, metadata !1350, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %timestamp) #7, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick_path) #7, !dbg !2048
  %call601 = call ptr @GetNextImageInList(ptr noundef %109) #7, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %call601, metadata !1351, metadata !DIExpression()), !dbg !1403
  store ptr %call601, ptr %next, align 8, !dbg !1647, !tbaa !1196
  %cmp298.not = icmp eq ptr %call601, null, !dbg !1648
  br i1 %cmp298.not, label %for.end, label %for.body, !dbg !1649, !llvm.loop !2050

for.end:                                          ; preds = %if.end600, %if.end297
  %image.3.lcssa = phi ptr [ null, %if.end297 ], [ %109, %if.end600 ], !dbg !1403
  %call602 = call ptr @DestroyImageInfo(ptr noundef nonnull %call2) #7, !dbg !2052
  call void @llvm.dbg.value(metadata ptr %call602, metadata !1352, metadata !DIExpression()), !dbg !1403
  %call603 = call ptr @GetFirstImageInList(ptr noundef %image.3.lcssa) #7, !dbg !2053
  br label %cleanup604, !dbg !2054

cleanup604:                                       ; preds = %if.then64, %if.then79, %for.end, %if.then246, %if.end208, %if.then154, %if.end148, %if.then20
  %retval.1 = phi ptr [ null, %if.then20 ], [ null, %if.then246 ], [ %call603, %for.end ], [ null, %if.end148 ], [ null, %if.then154 ], [ null, %if.end208 ], [ null, %if.then79 ], [ null, %if.then64 ], !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #7, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #7, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick_filename) #7, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %magick) #7, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #7, !dbg !2055
  ret ptr %retval.1, !dbg !2055
}

declare !dbg !2056 i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !2061 ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2064 i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !2067 i32 @GetMagickRawSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !2068 i32 @GetMagickSeekableStream(ptr noundef) local_unnamed_addr #3

declare !dbg !2069 i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2074 i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #3

declare !dbg !2078 i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2081 i32 @CloseBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !2082 ptr @GetImageDecoder(ptr noundef) local_unnamed_addr #3

declare !dbg !2085 ptr @GetDelegateInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2088 i32 @GetMagickThreadSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !2091 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2094 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2095 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

declare !dbg !2099 i32 @GetDelegateThreadSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !2102 i32 @InvokeDelegate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2105 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare !dbg !2106 i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

declare !dbg !2107 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

declare !dbg !2111 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !2114 i32 @IsBlobTemporary(ptr noundef) local_unnamed_addr #3

declare !dbg !2115 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !2118 i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2121 ptr @CloneImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2124 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !2125 i32 @GetBlobError(ptr noundef) local_unnamed_addr #3

declare !dbg !2126 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2130 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2134 i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2137 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2141 ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2144 ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2147 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2150 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2154 ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2160 void @ReplaceImageInList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2163 i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2166 ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2172 ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2175 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

declare !dbg !2178 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !2181 i64 @FormatMagickTime(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2185 ptr @GetBlobProperties(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare !dbg !2225 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadImages(ptr noundef %image_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !2230 {
entry:
  %filename = alloca [4096 x i8], align 16
  %images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2232, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2233, metadata !DIExpression()), !dbg !2243
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #7, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !2234, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %images) #7, !dbg !2246
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !2247
  %0 = load i32, ptr %debug, align 8, !dbg !2247, !tbaa !1172
  %cmp.not = icmp eq i32 %0, 0, !dbg !2249
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2250

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2251
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename1) #7, !dbg !2252
  br label %if.end, !dbg !2253

if.end:                                           ; preds = %if.then, %entry
  %filename2 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2254
  %scene = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 10, !dbg !2255
  %1 = load i64, ptr %scene, align 8, !dbg !2255, !tbaa !1252
  %conv = trunc i64 %1 to i32, !dbg !2256
  %call5 = call i64 @InterpretImageFilename(ptr noundef nonnull %image_info, ptr noundef null, ptr noundef nonnull %filename2, i32 noundef %conv, ptr noundef nonnull %filename) #7, !dbg !2257
  %call9 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull %filename2) #7, !dbg !2258
  %cmp10.not = icmp eq i32 %call9, 0, !dbg !2259
  br i1 %cmp10.not, label %if.end47, label %if.then12, !dbg !2260

if.then12:                                        ; preds = %if.end
  %call14 = call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #7, !dbg !2261
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2237, metadata !DIExpression()), !dbg !2243
  %call15 = call ptr @AcquireExceptionInfo() #7, !dbg !2262
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2238, metadata !DIExpression()), !dbg !2263
  %call16 = call i32 @SetImageInfo(ptr noundef %call14, i32 noundef 0, ptr noundef %call15) #7, !dbg !2264
  %call17 = call ptr @DestroyExceptionInfo(ptr noundef %call15) #7, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2238, metadata !DIExpression()), !dbg !2263
  %number_scenes = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 11, !dbg !2266
  %2 = load i64, ptr %number_scenes, align 8, !dbg !2266, !tbaa !1265
  %cmp18 = icmp eq i64 %2, 0, !dbg !2268
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !2269

if.then20:                                        ; preds = %if.then12
  %call21 = call ptr @DestroyImageInfo(ptr noundef nonnull %call14) #7, !dbg !2270
  call void @llvm.dbg.value(metadata ptr %call21, metadata !2237, metadata !DIExpression()), !dbg !2243
  %call22 = call ptr @ReadImage(ptr noundef nonnull %image_info, ptr noundef %exception), !dbg !2272
  br label %cleanup49, !dbg !2273

if.end23:                                         ; preds = %if.then12
  %filename25 = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 51, !dbg !2274
  %call27 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename25, i64 noundef 4096) #7, !dbg !2275
  %call28 = call ptr @NewImageList() #7, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2236, metadata !DIExpression()), !dbg !2243
  store ptr %call28, ptr %images, align 8, !dbg !2277, !tbaa !1196
  %scene29 = getelementptr inbounds %struct._ImageInfo, ptr %call14, i64 0, i32 10, !dbg !2278
  %3 = load i64, ptr %scene29, align 8, !dbg !2278, !tbaa !1252
  %4 = load i64, ptr %number_scenes, align 8, !dbg !2279, !tbaa !1265
  %add = add i64 %4, %3, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %add, metadata !2241, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %3, metadata !2242, metadata !DIExpression()), !dbg !2263
  %cmp3277 = icmp slt i64 %3, %add, !dbg !2281
  br i1 %cmp3277, label %for.body, label %for.end, !dbg !2284

for.body:                                         ; preds = %if.end23, %for.inc
  %scene13.078 = phi i64 [ %inc, %for.inc ], [ %3, %if.end23 ]
  call void @llvm.dbg.value(metadata i64 %scene13.078, metadata !2242, metadata !DIExpression()), !dbg !2263
  %conv35 = trunc i64 %scene13.078 to i32, !dbg !2285
  %call38 = call i64 @InterpretImageFilename(ptr noundef %image_info, ptr noundef null, ptr noundef nonnull %filename, i32 noundef %conv35, ptr noundef nonnull %filename25) #7, !dbg !2287
  %call39 = call ptr @ReadImage(ptr noundef %call14, ptr noundef %exception), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %call39, metadata !2235, metadata !DIExpression()), !dbg !2243
  %cmp40 = icmp eq ptr %call39, null, !dbg !2289
  br i1 %cmp40, label %for.inc, label %if.end43, !dbg !2291

if.end43:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %images, metadata !2236, metadata !DIExpression(DW_OP_deref)), !dbg !2243
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef nonnull %call39) #7, !dbg !2292
  br label %for.inc, !dbg !2293

for.inc:                                          ; preds = %for.body, %if.end43
  %inc = add i64 %scene13.078, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2242, metadata !DIExpression()), !dbg !2263
  %exitcond.not = icmp eq i64 %inc, %add, !dbg !2281
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2284, !llvm.loop !2295

for.end:                                          ; preds = %for.inc, %if.end23
  %call44 = call ptr @DestroyImageInfo(ptr noundef %call14) #7, !dbg !2297
  call void @llvm.dbg.value(metadata ptr %call44, metadata !2237, metadata !DIExpression()), !dbg !2243
  %5 = load ptr, ptr %images, align 8, !dbg !2298, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !2243
  br label %cleanup49, !dbg !2299

if.end47:                                         ; preds = %if.end
  %call48 = call ptr @ReadImage(ptr noundef nonnull %image_info, ptr noundef %exception), !dbg !2300
  br label %cleanup49, !dbg !2301

cleanup49:                                        ; preds = %if.then20, %for.end, %if.end47
  %retval.1 = phi ptr [ %call48, %if.end47 ], [ %call22, %if.then20 ], [ %5, %for.end ], !dbg !2243
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %images) #7, !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #7, !dbg !2302
  ret ptr %retval.1, !dbg !2302
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadInlineImage(ptr noundef %image_info, ptr noundef %content, ptr noundef %exception) local_unnamed_addr #0 !dbg !2303 {
entry:
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2307, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %content, metadata !2308, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2309, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #7, !dbg !2316
  %call = tail call ptr @NewImageList() #7, !dbg !2317
  call void @llvm.dbg.value(metadata ptr %call, metadata !2310, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %content, metadata !2314, metadata !DIExpression()), !dbg !2315
  br label %for.cond, !dbg !2318

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %content, %entry ], [ %incdec.ptr, %for.inc ], !dbg !2320
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2314, metadata !DIExpression()), !dbg !2315
  %0 = load i8, ptr %p.0, align 1, !dbg !2321, !tbaa !1473
  switch i8 %0, label %for.inc [
    i8 0, label %if.then
    i8 44, label %if.end14
  ], !dbg !2323

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !2324
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2314, metadata !DIExpression()), !dbg !2315
  br label %for.cond, !dbg !2325, !llvm.loop !2326

if.then:                                          ; preds = %for.cond
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2329
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 910, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #7, !dbg !2329
  %cmp9.not = icmp eq ptr %call, null, !dbg !2332
  br i1 %cmp9.not, label %cleanup, label %if.then11, !dbg !2329

if.then11:                                        ; preds = %if.then
  %call12 = tail call i32 @CloseBlob(ptr noundef nonnull %call) #7, !dbg !2334
  %call13 = tail call ptr @DestroyImageList(ptr noundef nonnull %call) #7, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2310, metadata !DIExpression()), !dbg !2315
  br label %cleanup, !dbg !2334

if.end14:                                         ; preds = %for.cond
  %incdec.ptr15 = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %incdec.ptr15, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 0, metadata !2313, metadata !DIExpression()), !dbg !2315
  store i64 0, ptr %length, align 8, !dbg !2337, !tbaa !2338
  call void @llvm.dbg.value(metadata ptr %length, metadata !2313, metadata !DIExpression(DW_OP_deref)), !dbg !2315
  %call16 = call ptr @Base64Decode(ptr noundef nonnull %incdec.ptr15, ptr noundef nonnull %length) #7, !dbg !2339
  call void @llvm.dbg.value(metadata ptr %call16, metadata !2312, metadata !DIExpression()), !dbg !2315
  %1 = load i64, ptr %length, align 8, !dbg !2340, !tbaa !2338
  call void @llvm.dbg.value(metadata i64 %1, metadata !2313, metadata !DIExpression()), !dbg !2315
  %cmp17 = icmp eq i64 %1, 0, !dbg !2342
  br i1 %cmp17, label %if.then19, label %if.end29, !dbg !2343

if.then19:                                        ; preds = %if.end14
  %filename20 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2344
  %call22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 915, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename20) #7, !dbg !2344
  %cmp23.not = icmp eq ptr %call, null, !dbg !2346
  br i1 %cmp23.not, label %cleanup, label %if.then25, !dbg !2344

if.then25:                                        ; preds = %if.then19
  %call26 = call i32 @CloseBlob(ptr noundef nonnull %call) #7, !dbg !2348
  %call27 = call ptr @DestroyImageList(ptr noundef nonnull %call) #7, !dbg !2348
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2310, metadata !DIExpression()), !dbg !2315
  br label %cleanup, !dbg !2348

if.end29:                                         ; preds = %if.end14
  %call30 = call ptr @CloneImageInfo(ptr noundef %image_info) #7, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %call30, metadata !2311, metadata !DIExpression()), !dbg !2315
  %call31 = call ptr @SetImageInfoProgressMonitor(ptr noundef %call30, ptr noundef null, ptr noundef null) #7, !dbg !2351
  %filename32 = getelementptr inbounds %struct._ImageInfo, ptr %call30, i64 0, i32 51, !dbg !2352
  store i8 0, ptr %filename32, align 8, !dbg !2353, !tbaa !1473
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call30, i64 0, i32 48, !dbg !2354
  store i8 0, ptr %magick, align 8, !dbg !2355, !tbaa !1473
  %2 = load i64, ptr %length, align 8, !dbg !2356, !tbaa !2338
  call void @llvm.dbg.value(metadata i64 %2, metadata !2313, metadata !DIExpression()), !dbg !2315
  %call35 = call ptr @BlobToImage(ptr noundef %call30, ptr noundef %call16, i64 noundef %2, ptr noundef %exception) #7, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %call35, metadata !2310, metadata !DIExpression()), !dbg !2315
  %call36 = call ptr @RelinquishMagickMemory(ptr noundef %call16) #7, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %call36, metadata !2312, metadata !DIExpression()), !dbg !2315
  %call37 = call ptr @DestroyImageInfo(ptr noundef %call30) #7, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2311, metadata !DIExpression()), !dbg !2315
  br label %cleanup, !dbg !2360

cleanup:                                          ; preds = %if.then19, %if.then25, %if.then, %if.then11, %if.end29
  %retval.0 = phi ptr [ %call35, %if.end29 ], [ null, %if.then11 ], [ null, %if.then ], [ null, %if.then25 ], [ null, %if.then19 ], !dbg !2315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #7, !dbg !2361
  ret ptr %retval.0, !dbg !2361
}

declare !dbg !2362 ptr @Base64Decode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2366 ptr @SetImageInfoProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2370 ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2373 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteImage(ptr noundef %image_info, ptr noundef %image) local_unnamed_addr #0 !dbg !2377 {
entry:
  %filename = alloca [4096 x i8], align 16
  %filename155 = alloca [4096 x i8], align 16
  %extension = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2379, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata ptr %image, metadata !2380, metadata !DIExpression()), !dbg !2411
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #7, !dbg !2412
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !2381, metadata !DIExpression()), !dbg !2413
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2414
  %0 = load i32, ptr %debug, align 8, !dbg !2414, !tbaa !2416
  %cmp.not = icmp eq i32 %0, 0, !dbg !2417
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2418

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2419
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename1) #7, !dbg !2420
  br label %if.end, !dbg !2421

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call ptr @AcquireExceptionInfo() #7, !dbg !2422
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2385, metadata !DIExpression()), !dbg !2411
  %call3 = tail call ptr @CloneImageInfo(ptr noundef %image_info) #7, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2386, metadata !DIExpression()), !dbg !2411
  %filename4 = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 51, !dbg !2424
  %filename6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2425
  %call8 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename4, ptr noundef nonnull %filename6, i64 noundef 4096) #7, !dbg !2426
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 48, !dbg !2427
  %1 = load i8, ptr %magick, align 8, !dbg !2429, !tbaa !1473
  %cmp10 = icmp eq i8 %1, 0, !dbg !2430
  br i1 %cmp10, label %if.then12, label %if.end18, !dbg !2431

if.then12:                                        ; preds = %if.end
  %magick15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !2432
  %call17 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick15, i64 noundef 4096) #7, !dbg !2433
  br label %if.end18, !dbg !2434

if.end18:                                         ; preds = %if.then12, %if.end
  %call19 = tail call i32 @SetImageInfo(ptr noundef nonnull %call3, i32 noundef 1, ptr noundef %call2) #7, !dbg !2435
  %call22 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.32) #7, !dbg !2436
  %cmp23 = icmp eq i32 %call22, 0, !dbg !2438
  br i1 %cmp23, label %if.then25, label %if.end36, !dbg !2439

if.then25:                                        ; preds = %if.end18
  %clip_mask = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 38, !dbg !2440
  %2 = load ptr, ptr %clip_mask, align 8, !dbg !2440, !tbaa !2443
  %cmp26 = icmp eq ptr %2, null, !dbg !2444
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !2445

if.then28:                                        ; preds = %if.then25
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2446
  %call31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 410, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename6) #7, !dbg !2448
  %call32 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call3) #7, !dbg !2449
  call void @llvm.dbg.value(metadata ptr %call32, metadata !2386, metadata !DIExpression()), !dbg !2411
  br label %cleanup, !dbg !2450

if.end33:                                         ; preds = %if.then25
  call void @llvm.dbg.value(metadata ptr %2, metadata !2380, metadata !DIExpression()), !dbg !2411
  %call35 = tail call i32 @SetImageInfo(ptr noundef nonnull %call3, i32 noundef 1, ptr noundef %call2) #7, !dbg !2451
  br label %if.end36, !dbg !2452

if.end36:                                         ; preds = %if.end33, %if.end18
  %image.addr.0 = phi ptr [ %2, %if.end33 ], [ %image, %if.end18 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.0, metadata !2380, metadata !DIExpression()), !dbg !2411
  %filename38 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 53, !dbg !2453
  %call40 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename38, i64 noundef 4096) #7, !dbg !2454
  %call45 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !2455
  call void @llvm.dbg.value(metadata i32 1, metadata !2390, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 2, metadata !2391, metadata !DIExpression()), !dbg !2411
  %call48 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %magick) #7, !dbg !2456
  %cmp49 = icmp eq i32 %call48, 0, !dbg !2458
  br i1 %cmp49, label %if.then57, label %if.end62, !dbg !2459

if.then57:                                        ; preds = %if.end36
  %call52 = call ptr @DestroyExceptionInfo(ptr noundef %call2) #7, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2385, metadata !DIExpression()), !dbg !2411
  %call53 = call ptr @DestroyImageInfo(ptr noundef nonnull %call3) #7, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %call53, metadata !2386, metadata !DIExpression()), !dbg !2411
  %call54 = tail call ptr @__errno_location() #8, !dbg !2463
  store i32 1, ptr %call54, align 4, !dbg !2464, !tbaa !1432
  %exception58 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2465
  %call60 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception58, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #7, !dbg !2465
  br label %cleanup, !dbg !2465

if.end62:                                         ; preds = %if.end36
  %call65 = call ptr @GetMagickInfo(ptr noundef nonnull %magick, ptr noundef %call2) #7, !dbg !2468
  call void @llvm.dbg.value(metadata ptr %call65, metadata !2384, metadata !DIExpression()), !dbg !2411
  %call66 = call ptr @DestroyExceptionInfo(ptr noundef %call2) #7, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2385, metadata !DIExpression()), !dbg !2411
  %cmp67.not = icmp eq ptr %call65, null, !dbg !2470
  br i1 %cmp67.not, label %if.end87, label %if.then69, !dbg !2471

if.then69:                                        ; preds = %if.end62
  %call70 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %call65) #7, !dbg !2472
  %cmp71 = icmp eq i32 %call70, 0, !dbg !2473
  br i1 %cmp71, label %if.end87.sink.split, label %if.else, !dbg !2474

if.else:                                          ; preds = %if.then69
  %endian74 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !2475
  %3 = load i32, ptr %endian74, align 4, !dbg !2475, !tbaa !1445
  %cmp75 = icmp eq i32 %3, 0, !dbg !2476
  br i1 %cmp75, label %land.lhs.true, label %if.end87, !dbg !2477

land.lhs.true:                                    ; preds = %if.else
  %call77 = call i32 @GetMagickRawSupport(ptr noundef nonnull %call65) #7, !dbg !2478
  %cmp78.not = icmp eq i32 %call77, 0, !dbg !2479
  br i1 %cmp78.not, label %if.end87, label %if.end87.sink.split, !dbg !2480

if.end87.sink.split:                              ; preds = %land.lhs.true, %if.then69
  %.sink = phi i32 [ 0, %if.then69 ], [ 1, %land.lhs.true ]
  %endian = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 34, !dbg !2481
  store i32 %.sink, ptr %endian, align 8, !dbg !2481, !tbaa !2482
  br label %if.end87, !dbg !2483

if.end87:                                         ; preds = %if.end87.sink.split, %land.lhs.true, %if.else, %if.end62
  %call88 = call i32 @SyncImageProfiles(ptr noundef nonnull %image.addr.0) #7, !dbg !2483
  %call89 = call ptr @GetImageOption(ptr noundef %image_info, ptr noundef nonnull @.str.34) #7, !dbg !2484
  call void @llvm.dbg.value(metadata ptr %call89, metadata !2382, metadata !DIExpression()), !dbg !2411
  %cmp90.not = icmp eq ptr %call89, null, !dbg !2485
  br i1 %cmp90.not, label %if.end147, label %land.lhs.true92, !dbg !2487

land.lhs.true92:                                  ; preds = %if.end87
  %call93 = call i32 @IsMagickTrue(ptr noundef nonnull %call89) #7, !dbg !2488
  %cmp94.not = icmp eq i32 %call93, 0, !dbg !2489
  br i1 %cmp94.not, label %if.end147, label %land.lhs.true96, !dbg !2490

land.lhs.true96:                                  ; preds = %land.lhs.true92
  %page = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 8, !dbg !2491
  %4 = load ptr, ptr %page, align 8, !dbg !2491, !tbaa !2492
  %cmp97 = icmp eq ptr %4, null, !dbg !2493
  br i1 %cmp97, label %land.lhs.true99, label %if.end147, !dbg !2494

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %call100 = call ptr @GetPreviousImageInList(ptr noundef nonnull %image.addr.0) #7, !dbg !2495
  %cmp101 = icmp eq ptr %call100, null, !dbg !2496
  br i1 %cmp101, label %land.lhs.true103, label %if.end147, !dbg !2497

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %call104 = call ptr @GetNextImageInList(ptr noundef nonnull %image.addr.0) #7, !dbg !2498
  %cmp105 = icmp eq ptr %call104, null, !dbg !2499
  br i1 %cmp105, label %land.lhs.true107, label %if.end147, !dbg !2500

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %call108 = call i32 @IsTaintImage(ptr noundef nonnull %image.addr.0) #7, !dbg !2501
  %cmp109 = icmp eq i32 %call108, 0, !dbg !2502
  br i1 %cmp109, label %if.then111, label %if.end147, !dbg !2503

if.then111:                                       ; preds = %land.lhs.true107
  %magick112 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 55, !dbg !2504
  %exception116 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2506
  %call117 = call ptr @GetDelegateInfo(ptr noundef nonnull %magick112, ptr noundef nonnull %magick, ptr noundef nonnull %exception116) #7, !dbg !2507
  call void @llvm.dbg.value(metadata ptr %call117, metadata !2383, metadata !DIExpression()), !dbg !2411
  %cmp118.not = icmp eq ptr %call117, null, !dbg !2508
  br i1 %cmp118.not, label %if.end147, label %land.lhs.true120, !dbg !2510

land.lhs.true120:                                 ; preds = %if.then111
  %call121 = call i64 @GetDelegateMode(ptr noundef nonnull %call117) #7, !dbg !2511
  %cmp122 = icmp eq i64 %call121, 0, !dbg !2512
  br i1 %cmp122, label %land.lhs.true124, label %if.end147, !dbg !2513

land.lhs.true124:                                 ; preds = %land.lhs.true120
  %magick_filename = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 54, !dbg !2514
  %call126 = call i32 @IsPathAccessible(ptr noundef nonnull %magick_filename) #7, !dbg !2515
  %cmp127.not = icmp eq i32 %call126, 0, !dbg !2516
  br i1 %cmp127.not, label %if.end147, label %if.then129, !dbg !2517

if.then129:                                       ; preds = %land.lhs.true124
  %call134 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %magick_filename, i64 noundef 4096) #7, !dbg !2518
  %call140 = call i32 @InvokeDelegate(ptr noundef nonnull %call3, ptr noundef nonnull %image.addr.0, ptr noundef nonnull %magick112, ptr noundef nonnull %magick, ptr noundef nonnull %exception116) #7, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %call140, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call141 = call ptr @DestroyImageInfo(ptr noundef nonnull %call3) #7, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %call141, metadata !2386, metadata !DIExpression()), !dbg !2411
  %call145 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !2522
  br label %cleanup, !dbg !2523

if.end147:                                        ; preds = %if.then111, %land.lhs.true120, %land.lhs.true124, %land.lhs.true107, %land.lhs.true103, %land.lhs.true99, %land.lhs.true96, %land.lhs.true92, %if.end87
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 0, metadata !2388, metadata !DIExpression()), !dbg !2411
  br i1 %cmp67.not, label %if.else205, label %land.lhs.true150, !dbg !2524

land.lhs.true150:                                 ; preds = %if.end147
  %call151 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %call65) #7, !dbg !2525
  %cmp152.not = icmp eq i32 %call151, 0, !dbg !2526
  br i1 %cmp152.not, label %land.lhs.true187, label %if.then154, !dbg !2527

if.then154:                                       ; preds = %land.lhs.true150
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename155) #7, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %filename155, metadata !2398, metadata !DIExpression()), !dbg !2529
  %call159 = call i64 @CopyMagickString(ptr noundef nonnull %filename155, ptr noundef nonnull %filename38, i64 noundef 4096) #7, !dbg !2530
  %exception160 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2531
  %call161 = call i32 @OpenBlob(ptr noundef %image_info, ptr noundef nonnull %image.addr.0, i32 noundef 4, ptr noundef nonnull %exception160) #7, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %call161, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call165 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename155, i64 noundef 4096) #7, !dbg !2533
  %cmp166.not = icmp eq i32 %call161, 0, !dbg !2534
  br i1 %cmp166.not, label %if.end183, label %if.then168, !dbg !2536

if.then168:                                       ; preds = %if.then154
  %call169 = call i32 @IsBlobSeekable(ptr noundef nonnull %image.addr.0) #7, !dbg !2537
  %cmp170 = icmp eq i32 %call169, 0, !dbg !2540
  br i1 %cmp170, label %if.then172, label %if.end181, !dbg !2541

if.then172:                                       ; preds = %if.then168
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 3, !dbg !2542
  store i32 1, ptr %adjoin, align 4, !dbg !2544, !tbaa !2545
  %call177 = call i64 @CopyMagickString(ptr noundef nonnull %filename4, ptr noundef nonnull %filename38, i64 noundef 4096) #7, !dbg !2546
  %call180 = call i32 @AcquireUniqueFilename(ptr noundef nonnull %filename38) #7, !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !2388, metadata !DIExpression()), !dbg !2411
  br label %if.end181, !dbg !2548

if.end181:                                        ; preds = %if.then172, %if.then168
  %temporary.0 = phi i32 [ 1, %if.then172 ], [ 0, %if.then168 ], !dbg !2411
  call void @llvm.dbg.value(metadata i32 %temporary.0, metadata !2388, metadata !DIExpression()), !dbg !2411
  %call182 = call i32 @CloseBlob(ptr noundef nonnull %image.addr.0) #7, !dbg !2549
  br label %if.end183, !dbg !2550

if.end183:                                        ; preds = %if.end181, %if.then154
  %temporary.1 = phi i32 [ %temporary.0, %if.end181 ], [ 0, %if.then154 ], !dbg !2411
  call void @llvm.dbg.value(metadata i32 %temporary.1, metadata !2388, metadata !DIExpression()), !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename155) #7, !dbg !2551
  br label %land.lhs.true187, !dbg !2552

land.lhs.true187:                                 ; preds = %if.end183, %land.lhs.true150
  %status.0.ph = phi i32 [ 0, %land.lhs.true150 ], [ %call161, %if.end183 ]
  %temporary.2.ph = phi i32 [ 0, %land.lhs.true150 ], [ %temporary.1, %if.end183 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2388, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 undef, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call188 = call ptr @GetImageEncoder(ptr noundef nonnull %call65) #7, !dbg !2553
  %cmp189.not = icmp eq ptr %call188, null, !dbg !2554
  br i1 %cmp189.not, label %if.else205, label %if.then191, !dbg !2555

if.then191:                                       ; preds = %land.lhs.true187
  %call192 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %call65) #7, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %call192, metadata !2389, metadata !DIExpression()), !dbg !2411
  %and = and i32 %call192, 2, !dbg !2558
  %cmp193 = icmp eq i32 %and, 0, !dbg !2560
  br i1 %cmp193, label %if.then195, label %if.end196, !dbg !2561

if.then195:                                       ; preds = %if.then191
  %semaphore = getelementptr inbounds %struct._MagickInfo, ptr %call65, i64 0, i32 22, !dbg !2562
  %5 = load ptr, ptr %semaphore, align 8, !dbg !2562, !tbaa !1517
  call void @LockSemaphoreInfo(ptr noundef %5) #7, !dbg !2563
  br label %if.end196, !dbg !2563

if.end196:                                        ; preds = %if.then195, %if.then191
  %call197 = call ptr @GetImageEncoder(ptr noundef nonnull %call65) #7, !dbg !2564
  %call198 = call i32 %call197(ptr noundef nonnull %call3, ptr noundef nonnull %image.addr.0) #7, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %call198, metadata !2387, metadata !DIExpression()), !dbg !2411
  br i1 %cmp193, label %if.then202, label %if.end338, !dbg !2565

if.then202:                                       ; preds = %if.end196
  %semaphore203 = getelementptr inbounds %struct._MagickInfo, ptr %call65, i64 0, i32 22, !dbg !2566
  %6 = load ptr, ptr %semaphore203, align 8, !dbg !2566, !tbaa !1517
  call void @UnlockSemaphoreInfo(ptr noundef %6) #7, !dbg !2568
  br label %if.end338, !dbg !2568

if.else205:                                       ; preds = %if.end147, %land.lhs.true187
  %temporary.2549 = phi i32 [ %temporary.2.ph, %land.lhs.true187 ], [ 0, %if.end147 ]
  %status.0546 = phi i32 [ %status.0.ph, %land.lhs.true187 ], [ 0, %if.end147 ]
  %exception208 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2569
  %call209 = call ptr @GetDelegateInfo(ptr noundef null, ptr noundef nonnull %magick, ptr noundef nonnull %exception208) #7, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %call209, metadata !2383, metadata !DIExpression()), !dbg !2411
  %cmp210.not = icmp eq ptr %call209, null, !dbg !2571
  br i1 %cmp210.not, label %if.else235, label %if.then212, !dbg !2572

if.then212:                                       ; preds = %if.else205
  store i8 0, ptr %filename4, align 8, !dbg !2573, !tbaa !1473
  %call215 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %call209) #7, !dbg !2575
  %cmp216 = icmp eq i32 %call215, 0, !dbg !2577
  br i1 %cmp216, label %if.then218, label %if.end220, !dbg !2578

if.then218:                                       ; preds = %if.then212
  %semaphore219 = getelementptr inbounds %struct._DelegateInfo, ptr %call209, i64 0, i32 11, !dbg !2579
  %7 = load ptr, ptr %semaphore219, align 8, !dbg !2579, !tbaa !1551
  call void @LockSemaphoreInfo(ptr noundef %7) #7, !dbg !2580
  br label %if.end220, !dbg !2580

if.end220:                                        ; preds = %if.then218, %if.then212
  %call224 = call i32 @InvokeDelegate(ptr noundef nonnull %call3, ptr noundef nonnull %image.addr.0, ptr noundef null, ptr noundef nonnull %magick, ptr noundef nonnull %exception208) #7, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %call224, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call225 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %call209) #7, !dbg !2582
  %cmp226 = icmp eq i32 %call225, 0, !dbg !2584
  br i1 %cmp226, label %if.then228, label %if.end230, !dbg !2585

if.then228:                                       ; preds = %if.end220
  %semaphore229 = getelementptr inbounds %struct._DelegateInfo, ptr %call209, i64 0, i32 11, !dbg !2586
  %8 = load ptr, ptr %semaphore229, align 8, !dbg !2586, !tbaa !1551
  call void @UnlockSemaphoreInfo(ptr noundef %8) #7, !dbg !2587
  br label %if.end230, !dbg !2587

if.end230:                                        ; preds = %if.then228, %if.end220
  %call234 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !2588
  br label %if.end338, !dbg !2589

if.else235:                                       ; preds = %if.else205
  %call236 = call ptr @AcquireExceptionInfo() #7, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %call236, metadata !2385, metadata !DIExpression()), !dbg !2411
  %call239 = call ptr @GetMagickInfo(ptr noundef nonnull %magick, ptr noundef %call236) #7, !dbg !2591
  call void @llvm.dbg.value(metadata ptr %call239, metadata !2384, metadata !DIExpression()), !dbg !2411
  %call240 = call ptr @DestroyExceptionInfo(ptr noundef %call236) #7, !dbg !2592
  call void @llvm.dbg.value(metadata ptr %call240, metadata !2385, metadata !DIExpression()), !dbg !2411
  %affirm = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 4, !dbg !2593
  %9 = load i32, ptr %affirm, align 8, !dbg !2593, !tbaa !2595
  %cmp241 = icmp eq i32 %9, 0, !dbg !2596
  %cmp244 = icmp eq ptr %call239, null
  %or.cond = select i1 %cmp241, i1 %cmp244, i1 false, !dbg !2597
  br i1 %or.cond, label %if.then246, label %if.end256, !dbg !2597

if.then246:                                       ; preds = %if.else235
  %magick249 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 55, !dbg !2598
  %call251 = call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick249, i64 noundef 4096) #7, !dbg !2600
  %call255 = call ptr @GetMagickInfo(ptr noundef nonnull %magick, ptr noundef nonnull %exception208) #7, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %call255, metadata !2384, metadata !DIExpression()), !dbg !2411
  br label %if.end256, !dbg !2602

if.end256:                                        ; preds = %if.then246, %if.else235
  %magick_info.0 = phi ptr [ %call255, %if.then246 ], [ %call239, %if.else235 ], !dbg !2603
  call void @llvm.dbg.value(metadata ptr %magick_info.0, metadata !2384, metadata !DIExpression()), !dbg !2411
  %cmp257 = icmp eq ptr %magick_info.0, null, !dbg !2604
  br i1 %cmp257, label %if.then262, label %lor.lhs.false, !dbg !2605

lor.lhs.false:                                    ; preds = %if.end256
  %call259 = call ptr @GetImageEncoder(ptr noundef nonnull %magick_info.0) #7, !dbg !2606
  %cmp260 = icmp eq ptr %call259, null, !dbg !2607
  br i1 %cmp260, label %if.then262, label %lor.lhs.false287, !dbg !2608

if.then262:                                       ; preds = %lor.lhs.false, %if.end256
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %extension) #7, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %extension, metadata !2401, metadata !DIExpression()), !dbg !2610
  call void @GetPathComponent(ptr noundef nonnull %filename38, i32 noundef 6, ptr noundef nonnull %extension) #7, !dbg !2611
  %10 = load i8, ptr %extension, align 16, !dbg !2612, !tbaa !1473
  %cmp268.not = icmp eq i8 %10, 0, !dbg !2614
  %magick275 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 55
  %spec.select = select i1 %cmp268.not, ptr %magick275, ptr %extension, !dbg !2615
  %call273 = call ptr @GetMagickInfo(ptr noundef nonnull %spec.select, ptr noundef nonnull %exception208) #7, !dbg !2616
  call void @llvm.dbg.value(metadata ptr %call273, metadata !2384, metadata !DIExpression()), !dbg !2411
  %call283 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !2617
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %extension) #7, !dbg !2618
  %cmp285 = icmp eq ptr %call273, null, !dbg !2619
  br i1 %cmp285, label %if.then291, label %lor.lhs.false287, !dbg !2621

lor.lhs.false287:                                 ; preds = %lor.lhs.false, %if.then262
  %magick_info.2552 = phi ptr [ %call273, %if.then262 ], [ %magick_info.0, %lor.lhs.false ]
  %call288 = call ptr @GetImageEncoder(ptr noundef nonnull %magick_info.2552) #7, !dbg !2622
  %cmp289 = icmp eq ptr %call288, null, !dbg !2623
  br i1 %cmp289, label %if.then291, label %land.lhs.true316, !dbg !2624

if.then291:                                       ; preds = %lor.lhs.false287, %if.then262
  %magick292 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 55, !dbg !2625
  %call295 = call ptr @GetMagickInfo(ptr noundef nonnull %magick292, ptr noundef nonnull %exception208) #7, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %call295, metadata !2384, metadata !DIExpression()), !dbg !2411
  %cmp296 = icmp eq ptr %call295, null, !dbg !2628
  br i1 %cmp296, label %if.end313.thread556, label %lor.lhs.false298, !dbg !2630

if.end313.thread556:                              ; preds = %if.then291
  %call306557 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception208, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, i32 noundef 420, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %magick) #7, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %call295, metadata !2384, metadata !DIExpression()), !dbg !2411
  br label %if.end338, !dbg !2632

lor.lhs.false298:                                 ; preds = %if.then291
  %call299 = call ptr @GetImageEncoder(ptr noundef nonnull %call295) #7, !dbg !2634
  %cmp300 = icmp eq ptr %call299, null, !dbg !2635
  br i1 %cmp300, label %if.end313, label %if.else307, !dbg !2636

if.else307:                                       ; preds = %lor.lhs.false298
  %call311 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception208, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1168, i32 noundef 320, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %magick) #7, !dbg !2637
  br label %land.lhs.true316

if.end313:                                        ; preds = %lor.lhs.false298
  %call306 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception208, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, i32 noundef 420, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %magick) #7, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %call295, metadata !2384, metadata !DIExpression()), !dbg !2411
  br label %land.lhs.true316, !dbg !2632

land.lhs.true316:                                 ; preds = %lor.lhs.false287, %if.else307, %if.end313
  %magick_info.3555 = phi ptr [ %call295, %if.end313 ], [ %magick_info.2552, %lor.lhs.false287 ], [ %call295, %if.else307 ]
  %call317 = call ptr @GetImageEncoder(ptr noundef nonnull %magick_info.3555) #7, !dbg !2638
  %cmp318.not = icmp eq ptr %call317, null, !dbg !2639
  br i1 %cmp318.not, label %if.end338, label %if.then320, !dbg !2640

if.then320:                                       ; preds = %land.lhs.true316
  %call321 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %magick_info.3555) #7, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %call321, metadata !2389, metadata !DIExpression()), !dbg !2411
  %and322 = and i32 %call321, 2, !dbg !2643
  %cmp323 = icmp eq i32 %and322, 0, !dbg !2645
  br i1 %cmp323, label %if.then325, label %if.end327, !dbg !2646

if.then325:                                       ; preds = %if.then320
  %semaphore326 = getelementptr inbounds %struct._MagickInfo, ptr %magick_info.3555, i64 0, i32 22, !dbg !2647
  %11 = load ptr, ptr %semaphore326, align 8, !dbg !2647, !tbaa !1517
  call void @LockSemaphoreInfo(ptr noundef %11) #7, !dbg !2648
  br label %if.end327, !dbg !2648

if.end327:                                        ; preds = %if.then325, %if.then320
  %call328 = call ptr @GetImageEncoder(ptr noundef nonnull %magick_info.3555) #7, !dbg !2649
  %call329 = call i32 %call328(ptr noundef nonnull %call3, ptr noundef nonnull %image.addr.0) #7, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %call329, metadata !2387, metadata !DIExpression()), !dbg !2411
  br i1 %cmp323, label %if.then333, label %if.end338, !dbg !2650

if.then333:                                       ; preds = %if.end327
  %semaphore334 = getelementptr inbounds %struct._MagickInfo, ptr %magick_info.3555, i64 0, i32 22, !dbg !2651
  %12 = load ptr, ptr %semaphore334, align 8, !dbg !2651, !tbaa !1517
  call void @UnlockSemaphoreInfo(ptr noundef %12) #7, !dbg !2653
  br label %if.end338, !dbg !2653

if.end338:                                        ; preds = %if.end313.thread556, %if.end230, %if.end327, %if.then333, %land.lhs.true316, %if.end196, %if.then202
  %temporary.2547 = phi i32 [ %temporary.2.ph, %if.then202 ], [ %temporary.2.ph, %if.end196 ], [ %temporary.2549, %if.end230 ], [ %temporary.2549, %if.then333 ], [ %temporary.2549, %if.end327 ], [ %temporary.2549, %land.lhs.true316 ], [ %temporary.2549, %if.end313.thread556 ]
  %status.1 = phi i32 [ %call198, %if.then202 ], [ %call198, %if.end196 ], [ %call224, %if.end230 ], [ %call329, %if.then333 ], [ %call329, %if.end327 ], [ %status.0546, %land.lhs.true316 ], [ %status.0546, %if.end313.thread556 ], !dbg !2411
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call339 = call i32 @GetBlobError(ptr noundef nonnull %image.addr.0) #7, !dbg !2654
  %cmp340.not = icmp eq i32 %call339, 0, !dbg !2655
  br i1 %cmp340.not, label %if.end350, label %if.then342, !dbg !2656

if.then342:                                       ; preds = %if.end338
  %call343 = tail call ptr @__errno_location() #8, !dbg !2657
  %13 = load i32, ptr %call343, align 4, !dbg !2657, !tbaa !1432
  %call344 = call ptr @GetExceptionMessage(i32 noundef %13) #7, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %call344, metadata !2408, metadata !DIExpression()), !dbg !2658
  %exception345 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2657
  %call348 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception345, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1189, i32 noundef 430, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename38, ptr noundef %call344) #7, !dbg !2657
  %call349 = call ptr @DestroyString(ptr noundef %call344) #7, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %call349, metadata !2408, metadata !DIExpression()), !dbg !2658
  br label %if.end350, !dbg !2657

if.end350:                                        ; preds = %if.then342, %if.end338
  %cmp351.not = icmp eq i32 %temporary.2547, 0, !dbg !2659
  br i1 %cmp351.not, label %if.end376, label %if.then353, !dbg !2661

if.then353:                                       ; preds = %if.end350
  %exception354 = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 58, !dbg !2662
  %call355 = call i32 @OpenBlob(ptr noundef nonnull %call3, ptr noundef nonnull %image.addr.0, i32 noundef 2, ptr noundef nonnull %exception354) #7, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %call355, metadata !2387, metadata !DIExpression()), !dbg !2411
  %cmp356.not = icmp eq i32 %call355, 0, !dbg !2665
  br i1 %cmp356.not, label %if.end366, label %if.then358, !dbg !2667

if.then358:                                       ; preds = %if.then353
  %call361 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename4) #7, !dbg !2668
  %call365 = call i32 @ImageToFile(ptr noundef nonnull %image.addr.0, ptr noundef nonnull %filename4, ptr noundef nonnull %exception354) #7, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %call365, metadata !2387, metadata !DIExpression()), !dbg !2411
  br label %if.end366, !dbg !2671

if.end366:                                        ; preds = %if.then358, %if.then353
  %status.2 = phi i32 [ %call365, %if.then358 ], [ 0, %if.then353 ], !dbg !2672
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call367 = call i32 @CloseBlob(ptr noundef nonnull %image.addr.0) #7, !dbg !2673
  %call370 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename38) #7, !dbg !2674
  %call375 = call i64 @CopyMagickString(ptr noundef nonnull %filename38, ptr noundef nonnull %filename4, i64 noundef 4096) #7, !dbg !2675
  br label %if.end376, !dbg !2676

if.end376:                                        ; preds = %if.end366, %if.end350
  %status.3 = phi i32 [ %status.2, %if.end366 ], [ %status.1, %if.end350 ], !dbg !2411
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2387, metadata !DIExpression()), !dbg !2411
  %call379 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.37) #7, !dbg !2677
  %cmp380.not = icmp eq i32 %call379, 0, !dbg !2679
  br i1 %cmp380.not, label %if.end387, label %land.lhs.true382, !dbg !2680

land.lhs.true382:                                 ; preds = %if.end376
  %verbose = getelementptr inbounds %struct._ImageInfo, ptr %call3, i64 0, i32 35, !dbg !2681
  %14 = load i32, ptr %verbose, align 4, !dbg !2681, !tbaa !1192
  %cmp383.not = icmp eq i32 %14, 0, !dbg !2682
  br i1 %cmp383.not, label %if.end387, label %if.then385, !dbg !2683

if.then385:                                       ; preds = %land.lhs.true382
  %15 = load ptr, ptr @stderr, align 8, !dbg !2684, !tbaa !1196
  %call386 = call i32 @IdentifyImage(ptr noundef nonnull %image.addr.0, ptr noundef %15, i32 noundef 0) #7, !dbg !2685
  br label %if.end387, !dbg !2686

if.end387:                                        ; preds = %if.then385, %land.lhs.true382, %if.end376
  %call388 = call ptr @DestroyImageInfo(ptr noundef nonnull %call3) #7, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %call388, metadata !2386, metadata !DIExpression()), !dbg !2411
  br label %cleanup, !dbg !2688

cleanup:                                          ; preds = %if.then57, %if.end387, %if.then129, %if.then28
  %retval.0 = phi i32 [ 0, %if.then28 ], [ %call140, %if.then129 ], [ %status.3, %if.end387 ], [ 0, %if.then57 ], !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #7, !dbg !2689
  ret i32 %retval.0, !dbg !2689
}

declare !dbg !2690 i32 @SyncImageProfiles(ptr noundef) local_unnamed_addr #3

declare !dbg !2691 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !2693 ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !2694 i32 @IsTaintImage(ptr noundef) local_unnamed_addr #3

declare !dbg !2695 i64 @GetDelegateMode(ptr noundef) local_unnamed_addr #3

declare !dbg !2698 i32 @AcquireUniqueFilename(ptr noundef) local_unnamed_addr #3

declare !dbg !2701 ptr @GetImageEncoder(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteImages(ptr noundef %image_info, ptr noundef %images, ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !2704 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2708, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %images, metadata !2709, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2710, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2711, metadata !DIExpression()), !dbg !2726
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !2727
  %0 = load i32, ptr %debug, align 8, !dbg !2727, !tbaa !2416
  %cmp.not = icmp eq i32 %0, 0, !dbg !2729
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2730

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !2731
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1286, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename1) #7, !dbg !2732
  br label %if.end, !dbg !2733

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call ptr @CloneImageInfo(ptr noundef %image_info) #7, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2714, metadata !DIExpression()), !dbg !2726
  %call3 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %images) #7, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2709, metadata !DIExpression()), !dbg !2726
  %blob4 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 52, !dbg !2736
  %1 = load ptr, ptr %blob4, align 8, !dbg !2736, !tbaa !2737
  %call5 = tail call ptr @CloneBlobInfo(ptr noundef %1) #7, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2712, metadata !DIExpression()), !dbg !2726
  tail call void @DestroyBlob(ptr noundef %call3) #7, !dbg !2739
  store ptr %call5, ptr %blob4, align 8, !dbg !2740, !tbaa !2737
  %cmp7.not = icmp eq ptr %filename, null, !dbg !2741
  %cmp9.not145 = icmp eq ptr %call3, null
  %or.cond = select i1 %cmp7.not, i1 true, i1 %cmp9.not145, !dbg !2743
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2720, metadata !DIExpression()), !dbg !2726
  br i1 %or.cond, label %if.end14, label %for.body, !dbg !2743

for.body:                                         ; preds = %if.end, %for.body
  %p.0146 = phi ptr [ %call13, %for.body ], [ %call3, %if.end ]
  call void @llvm.dbg.value(metadata ptr %p.0146, metadata !2720, metadata !DIExpression()), !dbg !2726
  %filename10 = getelementptr inbounds %struct._Image, ptr %p.0146, i64 0, i32 53, !dbg !2744
  %call12 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename10, ptr noundef nonnull %filename, i64 noundef 4096) #7, !dbg !2747
  %call13 = tail call ptr @GetNextImageInList(ptr noundef nonnull %p.0146) #7, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2720, metadata !DIExpression()), !dbg !2726
  %cmp9.not = icmp eq ptr %call13, null, !dbg !2749
  br i1 %cmp9.not, label %if.end14, label %for.body, !dbg !2750, !llvm.loop !2751

if.end14:                                         ; preds = %for.body, %if.end
  %filename15 = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 51, !dbg !2753
  %filename17 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 53, !dbg !2754
  %call19 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename15, ptr noundef nonnull %filename17, i64 noundef 4096) #7, !dbg !2755
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 48, !dbg !2756
  %2 = load i8, ptr %magick, align 8, !dbg !2758, !tbaa !1473
  %cmp21 = icmp eq i8 %2, 0, !dbg !2759
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !2760

if.then23:                                        ; preds = %if.end14
  %magick26 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 55, !dbg !2761
  %call28 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick26, i64 noundef 4096) #7, !dbg !2762
  br label %if.end29, !dbg !2763

if.end29:                                         ; preds = %if.then23, %if.end14
  %call30 = tail call ptr @AcquireExceptionInfo() #7, !dbg !2764
  call void @llvm.dbg.value(metadata ptr %call30, metadata !2713, metadata !DIExpression()), !dbg !2726
  %call31 = tail call i64 @GetImageListLength(ptr noundef %call3) #7, !dbg !2765
  %conv32 = trunc i64 %call31 to i32, !dbg !2766
  %call33 = tail call i32 @SetImageInfo(ptr noundef nonnull %call2, i32 noundef %conv32, ptr noundef %call30) #7, !dbg !2767
  %call34 = tail call ptr @DestroyExceptionInfo(ptr noundef %call30) #7, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2713, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2720, metadata !DIExpression()), !dbg !2726
  %call36147 = tail call ptr @GetNextImageInList(ptr noundef %call3) #7, !dbg !2769
  %cmp37.not148 = icmp eq ptr %call36147, null, !dbg !2770
  br i1 %cmp37.not148, label %for.end58, label %for.body39, !dbg !2771

for.body39:                                       ; preds = %if.end29, %for.inc56
  %p.1149 = phi ptr [ %call57, %for.inc56 ], [ %call3, %if.end29 ]
  call void @llvm.dbg.value(metadata ptr %p.1149, metadata !2720, metadata !DIExpression()), !dbg !2726
  %scene = getelementptr inbounds %struct._Image, ptr %p.1149, i64 0, i32 39, !dbg !2772
  %3 = load i64, ptr %scene, align 8, !dbg !2772, !tbaa !2773
  %call40 = tail call ptr @GetNextImageInList(ptr noundef %p.1149) #7, !dbg !2774
  %scene41 = getelementptr inbounds %struct._Image, ptr %call40, i64 0, i32 39, !dbg !2775
  %4 = load i64, ptr %scene41, align 8, !dbg !2775, !tbaa !2773
  %cmp42.not = icmp ult i64 %3, %4, !dbg !2776
  br i1 %cmp42.not, label %for.inc56, label %if.then44, !dbg !2777

if.then44:                                        ; preds = %for.body39
  call void @llvm.dbg.value(metadata i64 undef, metadata !2721, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2720, metadata !DIExpression()), !dbg !2726
  br i1 %cmp9.not145, label %for.end58.thread, label %for.body50.preheader, !dbg !2779

for.end58.thread:                                 ; preds = %if.then44
  call void @llvm.dbg.value(metadata i32 1, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr null, metadata !2717, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2726
  %call59165 = tail call i64 @GetImageListLength(ptr noundef %call3) #7, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %call59, metadata !2718, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2720, metadata !DIExpression()), !dbg !2726
  br label %for.end92, !dbg !2782

for.body50.preheader:                             ; preds = %if.then44
  %scene46 = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 39, !dbg !2784
  %5 = load i64, ptr %scene46, align 8, !dbg !2784, !tbaa !2773
  call void @llvm.dbg.value(metadata i64 %5, metadata !2721, metadata !DIExpression()), !dbg !2778
  br label %for.body50, !dbg !2779

for.body50:                                       ; preds = %for.body50.preheader, %for.body50
  %i45.0152 = phi i64 [ %inc, %for.body50 ], [ %5, %for.body50.preheader ]
  %p.2151 = phi ptr [ %call53, %for.body50 ], [ %call3, %for.body50.preheader ]
  call void @llvm.dbg.value(metadata i64 %i45.0152, metadata !2721, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %p.2151, metadata !2720, metadata !DIExpression()), !dbg !2726
  %inc = add nsw i64 %i45.0152, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2721, metadata !DIExpression()), !dbg !2778
  %scene51 = getelementptr inbounds %struct._Image, ptr %p.2151, i64 0, i32 39, !dbg !2787
  store i64 %i45.0152, ptr %scene51, align 8, !dbg !2788, !tbaa !2773
  %call53 = tail call ptr @GetNextImageInList(ptr noundef nonnull %p.2151) #7, !dbg !2789
  call void @llvm.dbg.value(metadata ptr %call53, metadata !2720, metadata !DIExpression()), !dbg !2726
  %cmp48.not = icmp eq ptr %call53, null, !dbg !2790
  br i1 %cmp48.not, label %for.end58, label %for.body50, !dbg !2779, !llvm.loop !2791

for.inc56:                                        ; preds = %for.body39
  %call57 = tail call ptr @GetNextImageInList(ptr noundef nonnull %p.1149) #7, !dbg !2793
  call void @llvm.dbg.value(metadata ptr %call57, metadata !2720, metadata !DIExpression()), !dbg !2726
  %call36 = tail call ptr @GetNextImageInList(ptr noundef %call57) #7, !dbg !2769
  %cmp37.not = icmp eq ptr %call36, null, !dbg !2770
  br i1 %cmp37.not, label %for.end58, label %for.body39, !dbg !2771, !llvm.loop !2794

for.end58:                                        ; preds = %for.inc56, %for.body50, %if.end29
  call void @llvm.dbg.value(metadata i32 1, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr null, metadata !2717, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2726
  %call59 = tail call i64 @GetImageListLength(ptr noundef %call3) #7, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %call59, metadata !2718, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2720, metadata !DIExpression()), !dbg !2726
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %call2, i64 0, i32 3, !dbg !2796
  br i1 %cmp9.not145, label %for.end92, label %for.body63.lr.ph, !dbg !2782

for.body63.lr.ph:                                 ; preds = %for.end58
  %cmp64.not = icmp eq i64 %call59, 1
  br i1 %cmp64.not, label %for.body63.us, label %for.body63, !dbg !2800

for.body63.us:                                    ; preds = %for.body63.lr.ph, %for.inc90.us
  %p.3157.us = phi ptr [ %call91.us, %for.inc90.us ], [ %call3, %for.body63.lr.ph ]
  %status.0156.us = phi i32 [ %and.us, %for.inc90.us ], [ 1, %for.body63.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %p.3157.us, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %status.0156.us, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 undef, metadata !2716, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr null, metadata !2717, metadata !DIExpression()), !dbg !2726
  %call69.us = call i32 @WriteImage(ptr noundef %call2, ptr noundef nonnull %p.3157.us), !dbg !2801
  %and.us = and i32 %call69.us, %status.0156.us, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %and.us, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @GetImageException(ptr noundef nonnull %p.3157.us, ptr noundef %exception) #7, !dbg !2803
  %6 = load i32, ptr %adjoin, align 4, !dbg !2796, !tbaa !2545
  %cmp76.not.us = icmp eq i32 %6, 0, !dbg !2804
  br i1 %cmp76.not.us, label %for.inc90.us, label %for.end92, !dbg !2805

for.inc90.us:                                     ; preds = %for.body63.us
  call void @llvm.dbg.value(metadata i64 undef, metadata !2716, metadata !DIExpression()), !dbg !2726
  %call91.us = call ptr @GetNextImageInList(ptr noundef nonnull %p.3157.us) #7, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %call91.us, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %and.us, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr null, metadata !2717, metadata !DIExpression()), !dbg !2726
  %cmp61.not.us = icmp eq ptr %call91.us, null, !dbg !2807
  br i1 %cmp61.not.us, label %for.end92, label %for.body63.us, !dbg !2782, !llvm.loop !2808

for.body63:                                       ; preds = %for.body63.lr.ph, %for.inc90
  %p.3157 = phi ptr [ %call91, %for.inc90 ], [ %call3, %for.body63.lr.ph ]
  %status.0156 = phi i32 [ %and, %for.inc90 ], [ 1, %for.body63.lr.ph ]
  %i.0154 = phi i64 [ %inc83, %for.inc90 ], [ 0, %for.body63.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %p.3157, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %status.0156, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr undef, metadata !2717, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %i.0154, metadata !2716, metadata !DIExpression()), !dbg !2726
  %client_data = getelementptr inbounds %struct._Image, ptr %p.3157, i64 0, i32 48, !dbg !2810
  %7 = load ptr, ptr %client_data, align 8, !dbg !2810, !tbaa !2812
  %call67 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %p.3157, ptr noundef null, ptr noundef %7) #7, !dbg !2813
  call void @llvm.dbg.value(metadata ptr %call67, metadata !2717, metadata !DIExpression()), !dbg !2726
  %call69 = call i32 @WriteImage(ptr noundef %call2, ptr noundef nonnull %p.3157), !dbg !2801
  %and = and i32 %call69, %status.0156, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %and, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @GetImageException(ptr noundef nonnull %p.3157, ptr noundef %exception) #7, !dbg !2803
  %8 = load ptr, ptr %client_data, align 8, !dbg !2814, !tbaa !2812
  %call74 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %p.3157, ptr noundef %call67, ptr noundef %8) #7, !dbg !2816
  %9 = load i32, ptr %adjoin, align 4, !dbg !2796, !tbaa !2545
  %cmp76.not141 = icmp eq i32 %9, 0, !dbg !2804
  br i1 %cmp76.not141, label %if.then82, label %for.end92, !dbg !2805

if.then82:                                        ; preds = %for.body63
  %inc83 = add nuw nsw i64 %i.0154, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %inc83, metadata !2716, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %p.3157, metadata !2820, metadata !DIExpression()) #7, !dbg !2830
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !2826, metadata !DIExpression()) #7, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %i.0154, metadata !2827, metadata !DIExpression()) #7, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %call59, metadata !2828, metadata !DIExpression()) #7, !dbg !2830
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2832
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2829, metadata !DIExpression()) #7, !dbg !2833
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %p.3157, i64 0, i32 47, !dbg !2834
  %10 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2834, !tbaa !2836
  %cmp.i = icmp eq ptr %10, null, !dbg !2837
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2838

SetImageProgress.exit.thread:                     ; preds = %if.then82
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2715, metadata !DIExpression()), !dbg !2726
  br label %for.inc90, !dbg !2840

SetImageProgress.exit:                            ; preds = %if.then82
  %filename.i = getelementptr inbounds %struct._Image, ptr %p.3157, i64 0, i32 53, !dbg !2841
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef nonnull %filename.i) #7, !dbg !2842
  %11 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2843, !tbaa !2836
  %12 = load ptr, ptr %client_data, align 8, !dbg !2844, !tbaa !2812
  %call4.i = call i32 %11(ptr noundef nonnull %message.i, i64 noundef %i.0154, i64 noundef %call59, ptr noundef %12) #7, !dbg !2845
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2715, metadata !DIExpression()), !dbg !2726
  %cmp85 = icmp eq i32 %call4.i, 0, !dbg !2846
  br i1 %cmp85, label %for.end92, label %for.inc90, !dbg !2840

for.inc90:                                        ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  call void @llvm.dbg.value(metadata i64 %inc83, metadata !2716, metadata !DIExpression()), !dbg !2726
  %call91 = call ptr @GetNextImageInList(ptr noundef nonnull %p.3157) #7, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %call91, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %and, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %call67, metadata !2717, metadata !DIExpression()), !dbg !2726
  %cmp61.not = icmp eq ptr %call91, null, !dbg !2807
  br i1 %cmp61.not, label %for.end92, label %for.body63, !dbg !2782, !llvm.loop !2808

for.end92:                                        ; preds = %for.inc90, %SetImageProgress.exit, %for.body63, %for.inc90.us, %for.body63.us, %for.end58.thread, %for.end58
  %status.1 = phi i32 [ 1, %for.end58 ], [ 1, %for.end58.thread ], [ %and.us, %for.body63.us ], [ %and.us, %for.inc90.us ], [ %and, %for.body63 ], [ %and, %SetImageProgress.exit ], [ %and, %for.inc90 ], !dbg !2726
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2719, metadata !DIExpression()), !dbg !2726
  %call93 = call ptr @DestroyImageInfo(ptr noundef %call2) #7, !dbg !2848
  call void @llvm.dbg.value(metadata ptr %call93, metadata !2714, metadata !DIExpression()), !dbg !2726
  %cmp94.not = icmp ne i32 %status.1, 0, !dbg !2849
  %cond = zext i1 %cmp94.not to i32, !dbg !2850
  ret i32 %cond, !dbg !2851
}

declare !dbg !2852 ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2857 void @DestroyBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !2860 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare !dbg !2863 ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2866 void @GetImageException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2869 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1067, !1068, !1069, !1070, !1071, !1072}
!llvm.ident = !{!1073}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !634, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/constitute.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "5218a560e948a12ed2e113a6347dbc1d")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !379, !404, !437, !459, !480, !486, !496, !503, !513, !518, !530, !558}
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
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378}
!371 = !DIEnumerator(name: "UndefinedPixel", value: 0)
!372 = !DIEnumerator(name: "CharPixel", value: 1)
!373 = !DIEnumerator(name: "DoublePixel", value: 2)
!374 = !DIEnumerator(name: "FloatPixel", value: 3)
!375 = !DIEnumerator(name: "IntegerPixel", value: 4)
!376 = !DIEnumerator(name: "LongPixel", value: 5)
!377 = !DIEnumerator(name: "QuantumPixel", value: 6)
!378 = !DIEnumerator(name: "ShortPixel", value: 7)
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
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !405, line: 27, baseType: !5, size: 32, elements: !406)
!405 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!407 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!408 = !DIEnumerator(name: "RotatePreview", value: 1)
!409 = !DIEnumerator(name: "ShearPreview", value: 2)
!410 = !DIEnumerator(name: "RollPreview", value: 3)
!411 = !DIEnumerator(name: "HuePreview", value: 4)
!412 = !DIEnumerator(name: "SaturationPreview", value: 5)
!413 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!414 = !DIEnumerator(name: "GammaPreview", value: 7)
!415 = !DIEnumerator(name: "SpiffPreview", value: 8)
!416 = !DIEnumerator(name: "DullPreview", value: 9)
!417 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!418 = !DIEnumerator(name: "QuantizePreview", value: 11)
!419 = !DIEnumerator(name: "DespecklePreview", value: 12)
!420 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!421 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!422 = !DIEnumerator(name: "SharpenPreview", value: 15)
!423 = !DIEnumerator(name: "BlurPreview", value: 16)
!424 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!425 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!426 = !DIEnumerator(name: "SpreadPreview", value: 19)
!427 = !DIEnumerator(name: "SolarizePreview", value: 20)
!428 = !DIEnumerator(name: "ShadePreview", value: 21)
!429 = !DIEnumerator(name: "RaisePreview", value: 22)
!430 = !DIEnumerator(name: "SegmentPreview", value: 23)
!431 = !DIEnumerator(name: "SwirlPreview", value: 24)
!432 = !DIEnumerator(name: "ImplodePreview", value: 25)
!433 = !DIEnumerator(name: "WavePreview", value: 26)
!434 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!435 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!436 = !DIEnumerator(name: "JPEGPreview", value: 29)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!439 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!440 = !DIEnumerator(name: "RedChannel", value: 1)
!441 = !DIEnumerator(name: "GrayChannel", value: 1)
!442 = !DIEnumerator(name: "CyanChannel", value: 1)
!443 = !DIEnumerator(name: "GreenChannel", value: 2)
!444 = !DIEnumerator(name: "MagentaChannel", value: 2)
!445 = !DIEnumerator(name: "BlueChannel", value: 4)
!446 = !DIEnumerator(name: "YellowChannel", value: 4)
!447 = !DIEnumerator(name: "AlphaChannel", value: 8)
!448 = !DIEnumerator(name: "OpacityChannel", value: 8)
!449 = !DIEnumerator(name: "MatteChannel", value: 8)
!450 = !DIEnumerator(name: "BlackChannel", value: 32)
!451 = !DIEnumerator(name: "IndexChannel", value: 32)
!452 = !DIEnumerator(name: "CompositeChannels", value: 47)
!453 = !DIEnumerator(name: "AllChannels", value: 134217727)
!454 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!455 = !DIEnumerator(name: "RGBChannels", value: 128)
!456 = !DIEnumerator(name: "GrayChannels", value: 128)
!457 = !DIEnumerator(name: "SyncChannels", value: 256)
!458 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !460, line: 27, baseType: !5, size: 32, elements: !461)
!460 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!462 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!463 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!464 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!465 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!466 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!467 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!468 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!469 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!470 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!471 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!472 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!473 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!474 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!475 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!476 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!477 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!478 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!479 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!480 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !481, line: 28, baseType: !5, size: 32, elements: !482)
!481 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!482 = !{!483, !484, !485}
!483 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!484 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!485 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 28, baseType: !5, size: 32, elements: !488)
!487 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6242d97ee47d0d7f0e3878e07f1ce5b1")
!488 = !{!489, !490, !491, !492, !493, !494, !495}
!489 = !DIEnumerator(name: "UndefinedPolicyDomain", value: 0)
!490 = !DIEnumerator(name: "CoderPolicyDomain", value: 1)
!491 = !DIEnumerator(name: "DelegatePolicyDomain", value: 2)
!492 = !DIEnumerator(name: "FilterPolicyDomain", value: 3)
!493 = !DIEnumerator(name: "PathPolicyDomain", value: 4)
!494 = !DIEnumerator(name: "ResourcePolicyDomain", value: 5)
!495 = !DIEnumerator(name: "SystemPolicyDomain", value: 6)
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 39, baseType: !5, size: 32, elements: !497)
!497 = !{!498, !499, !500, !501, !502}
!498 = !DIEnumerator(name: "UndefinedPolicyRights", value: 0)
!499 = !DIEnumerator(name: "NoPolicyRights", value: 0)
!500 = !DIEnumerator(name: "ReadPolicyRights", value: 1)
!501 = !DIEnumerator(name: "WritePolicyRights", value: 2)
!502 = !DIEnumerator(name: "ExecutePolicyRights", value: 4)
!503 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !504, line: 35, baseType: !5, size: 32, elements: !505)
!504 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!505 = !{!506, !507, !508, !509, !510, !511, !512}
!506 = !DIEnumerator(name: "UndefinedBlobMode", value: 0)
!507 = !DIEnumerator(name: "ReadBlobMode", value: 1)
!508 = !DIEnumerator(name: "ReadBinaryBlobMode", value: 2)
!509 = !DIEnumerator(name: "WriteBlobMode", value: 3)
!510 = !DIEnumerator(name: "WriteBinaryBlobMode", value: 4)
!511 = !DIEnumerator(name: "AppendBlobMode", value: 5)
!512 = !DIEnumerator(name: "AppendBinaryBlobMode", value: 6)
!513 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !481, line: 35, baseType: !5, size: 32, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIEnumerator(name: "NoThreadSupport", value: 0)
!516 = !DIEnumerator(name: "DecoderThreadSupport", value: 1)
!517 = !DIEnumerator(name: "EncoderThreadSupport", value: 2)
!518 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !519, line: 25, baseType: !5, size: 32, elements: !520)
!519 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529}
!521 = !DIEnumerator(name: "UndefinedPath", value: 0)
!522 = !DIEnumerator(name: "MagickPath", value: 1)
!523 = !DIEnumerator(name: "RootPath", value: 2)
!524 = !DIEnumerator(name: "HeadPath", value: 3)
!525 = !DIEnumerator(name: "TailPath", value: 4)
!526 = !DIEnumerator(name: "BasePath", value: 5)
!527 = !DIEnumerator(name: "ExtensionPath", value: 6)
!528 = !DIEnumerator(name: "SubimagePath", value: 7)
!529 = !DIEnumerator(name: "CanonicalPath", value: 8)
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 25, baseType: !5, size: 32, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!532 = !DIEnumerator(name: "NoValue", value: 0)
!533 = !DIEnumerator(name: "XValue", value: 1)
!534 = !DIEnumerator(name: "XiValue", value: 1)
!535 = !DIEnumerator(name: "YValue", value: 2)
!536 = !DIEnumerator(name: "PsiValue", value: 2)
!537 = !DIEnumerator(name: "WidthValue", value: 4)
!538 = !DIEnumerator(name: "RhoValue", value: 4)
!539 = !DIEnumerator(name: "HeightValue", value: 8)
!540 = !DIEnumerator(name: "SigmaValue", value: 8)
!541 = !DIEnumerator(name: "ChiValue", value: 16)
!542 = !DIEnumerator(name: "XiNegative", value: 32)
!543 = !DIEnumerator(name: "XNegative", value: 32)
!544 = !DIEnumerator(name: "PsiNegative", value: 64)
!545 = !DIEnumerator(name: "YNegative", value: 64)
!546 = !DIEnumerator(name: "ChiNegative", value: 128)
!547 = !DIEnumerator(name: "PercentValue", value: 4096)
!548 = !DIEnumerator(name: "AspectValue", value: 8192)
!549 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!550 = !DIEnumerator(name: "LessValue", value: 16384)
!551 = !DIEnumerator(name: "GreaterValue", value: 32768)
!552 = !DIEnumerator(name: "MinimumValue", value: 65536)
!553 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!554 = !DIEnumerator(name: "AreaValue", value: 131072)
!555 = !DIEnumerator(name: "DecimalValue", value: 262144)
!556 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!557 = !DIEnumerator(name: "AllValues", value: 2147483647)
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 25, baseType: !560, size: 32, elements: !561)
!559 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!560 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!562 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!563 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!564 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!565 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!566 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!567 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!568 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!569 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!570 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!571 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!572 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!573 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!574 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!575 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!576 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!577 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!578 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!579 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!580 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!581 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!582 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!583 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!584 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!585 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!586 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!587 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!588 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!589 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!590 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!591 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!592 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!593 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!594 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!595 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!596 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!597 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!598 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!599 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!600 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!601 = !DIEnumerator(name: "MagickListOptions", value: 38)
!602 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!603 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!604 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!605 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!606 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!607 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!608 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!609 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!610 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!611 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!612 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!613 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!614 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!615 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!616 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!617 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!618 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!619 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!620 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!621 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!622 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!623 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!624 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!625 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!626 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!627 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!628 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!629 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!630 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!631 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!632 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!633 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!634 = !{!635, !636, !748, !709, !560, !697, !988, !650, !1000, !1036, !643, !665, !816, !907, !1055, !656, !778, !811, !871, !1008, !1065, !5, !1066}
!635 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !73, line: 356, size: 134336, elements: !639)
!639 = !{!640, !642, !644, !646, !647, !648, !649, !652, !653, !654, !655, !658, !659, !660, !662, !664, !666, !667, !668, !669, !670, !671, !672, !674, !675, !685, !686, !687, !688, !689, !690, !692, !694, !696, !702, !703, !704, !705, !706, !708, !902, !903, !904, !905, !906, !917, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !985, !986, !987}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !638, file: !73, line: 359, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !638, file: !73, line: 362, baseType: !643, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !638, file: !73, line: 365, baseType: !645, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !638, file: !73, line: 366, baseType: !645, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !638, file: !73, line: 367, baseType: !645, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !638, file: !73, line: 368, baseType: !645, size: 32, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !638, file: !73, line: 371, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !638, file: !73, line: 372, baseType: !650, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !638, file: !73, line: 373, baseType: !650, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !638, file: !73, line: 374, baseType: !650, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !638, file: !73, line: 377, baseType: !656, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !657, line: 46, baseType: !635)
!657 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !638, file: !73, line: 378, baseType: !656, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !638, file: !73, line: 379, baseType: !656, size: 64, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !638, file: !73, line: 382, baseType: !661, size: 32, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !638, file: !73, line: 385, baseType: !663, size: 32, offset: 672)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !638, file: !73, line: 388, baseType: !665, size: 32, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !638, file: !73, line: 391, baseType: !656, size: 64, offset: 768)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !638, file: !73, line: 394, baseType: !650, size: 64, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !638, file: !73, line: 395, baseType: !650, size: 64, offset: 896)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !638, file: !73, line: 396, baseType: !650, size: 64, offset: 960)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !638, file: !73, line: 397, baseType: !650, size: 64, offset: 1024)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !638, file: !73, line: 398, baseType: !650, size: 64, offset: 1088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !638, file: !73, line: 401, baseType: !673, size: 64, offset: 1152)
!673 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !638, file: !73, line: 402, baseType: !673, size: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !638, file: !73, line: 405, baseType: !676, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !678)
!678 = !{!679, !682, !683, !684}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !677, file: !326, line: 143, baseType: !680, size: 16)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !681)
!681 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !677, file: !326, line: 144, baseType: !680, size: 16, offset: 16)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !677, file: !326, line: 145, baseType: !680, size: 16, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !677, file: !326, line: 146, baseType: !680, size: 16, offset: 48)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !638, file: !73, line: 406, baseType: !676, size: 64, offset: 1344)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !638, file: !73, line: 407, baseType: !676, size: 64, offset: 1408)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !638, file: !73, line: 410, baseType: !645, size: 32, offset: 1472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !638, file: !73, line: 411, baseType: !645, size: 32, offset: 1504)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !638, file: !73, line: 414, baseType: !656, size: 64, offset: 1536)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !638, file: !73, line: 417, baseType: !691, size: 32, offset: 1600)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !73, line: 420, baseType: !693, size: 32, offset: 1632)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !638, file: !73, line: 423, baseType: !695, size: 32, offset: 1664)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !405, line: 59, baseType: !404)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !638, file: !73, line: 426, baseType: !697, size: 64, offset: 1728)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !698, line: 77, baseType: !699)
!698 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !700, line: 193, baseType: !701)
!700 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!701 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !638, file: !73, line: 429, baseType: !645, size: 32, offset: 1792)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !638, file: !73, line: 430, baseType: !645, size: 32, offset: 1824)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !638, file: !73, line: 433, baseType: !650, size: 64, offset: 1856)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !638, file: !73, line: 434, baseType: !650, size: 64, offset: 1920)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !638, file: !73, line: 437, baseType: !707, size: 32, offset: 1984)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !437)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !638, file: !73, line: 440, baseType: !709, size: 64, offset: 2048)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !712)
!712 = !{!713, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !727, !728, !729, !730, !731, !745, !747, !749, !750, !751, !752, !753, !754, !755, !756, !764, !765, !766, !767, !768, !769, !771, !772, !773, !775, !777, !779, !781, !782, !783, !784, !785, !786, !787, !795, !810, !824, !825, !826, !827, !831, !835, !839, !840, !841, !842, !843, !860, !861, !863, !864, !874, !875, !877, !878, !879, !880, !881, !882, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !899, !901}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !711, file: !73, line: 153, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !711, file: !73, line: 156, baseType: !691, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !711, file: !73, line: 159, baseType: !641, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !711, file: !73, line: 162, baseType: !656, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !711, file: !73, line: 165, baseType: !643, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !711, file: !73, line: 168, baseType: !645, size: 32, offset: 224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !711, file: !73, line: 169, baseType: !645, size: 32, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !711, file: !73, line: 172, baseType: !656, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !711, file: !73, line: 173, baseType: !656, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !711, file: !73, line: 174, baseType: !656, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !711, file: !73, line: 175, baseType: !656, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !711, file: !73, line: 178, baseType: !726, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !711, file: !73, line: 179, baseType: !676, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !711, file: !73, line: 180, baseType: !676, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !711, file: !73, line: 181, baseType: !676, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !711, file: !73, line: 184, baseType: !673, size: 64, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !711, file: !73, line: 187, baseType: !732, size: 768, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !734)
!734 = !{!735, !742, !743, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !733, file: !73, line: 124, baseType: !736, size: 192)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !737, file: !73, line: 98, baseType: !673, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !737, file: !73, line: 99, baseType: !673, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !737, file: !73, line: 100, baseType: !673, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !733, file: !73, line: 125, baseType: !736, size: 192, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !733, file: !73, line: 126, baseType: !736, size: 192, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !733, file: !73, line: 127, baseType: !736, size: 192, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !711, file: !73, line: 190, baseType: !746, size: 32, offset: 1664)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !711, file: !73, line: 193, baseType: !748, size: 64, offset: 1728)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !711, file: !73, line: 196, baseType: !665, size: 32, offset: 1792)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !711, file: !73, line: 199, baseType: !650, size: 64, offset: 1856)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !711, file: !73, line: 200, baseType: !650, size: 64, offset: 1920)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !711, file: !73, line: 201, baseType: !650, size: 64, offset: 1984)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !711, file: !73, line: 204, baseType: !697, size: 64, offset: 2048)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !711, file: !73, line: 207, baseType: !673, size: 64, offset: 2112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !711, file: !73, line: 208, baseType: !673, size: 64, offset: 2176)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !711, file: !73, line: 211, baseType: !757, size: 256, offset: 2240)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !759)
!759 = !{!760, !761, !762, !763}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !758, file: !153, line: 124, baseType: !656, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !758, file: !153, line: 125, baseType: !656, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !758, file: !153, line: 128, baseType: !697, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !758, file: !153, line: 129, baseType: !697, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !711, file: !73, line: 212, baseType: !757, size: 256, offset: 2496)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !711, file: !73, line: 213, baseType: !757, size: 256, offset: 2752)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !711, file: !73, line: 216, baseType: !673, size: 64, offset: 3008)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !711, file: !73, line: 217, baseType: !673, size: 64, offset: 3072)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !711, file: !73, line: 218, baseType: !673, size: 64, offset: 3136)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !711, file: !73, line: 221, baseType: !770, size: 32, offset: 3200)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !711, file: !73, line: 224, baseType: !661, size: 32, offset: 3232)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !711, file: !73, line: 227, baseType: !663, size: 32, offset: 3264)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !711, file: !73, line: 230, baseType: !774, size: 32, offset: 3296)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !711, file: !73, line: 233, baseType: !776, size: 32, offset: 3328)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !711, file: !73, line: 236, baseType: !778, size: 32, offset: 3360)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !711, file: !73, line: 239, baseType: !780, size: 64, offset: 3392)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !711, file: !73, line: 242, baseType: !656, size: 64, offset: 3456)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !711, file: !73, line: 243, baseType: !656, size: 64, offset: 3520)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !711, file: !73, line: 246, baseType: !697, size: 64, offset: 3584)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !711, file: !73, line: 249, baseType: !656, size: 64, offset: 3648)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !711, file: !73, line: 250, baseType: !656, size: 64, offset: 3712)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !711, file: !73, line: 253, baseType: !697, size: 64, offset: 3776)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !711, file: !73, line: 256, baseType: !788, size: 192, offset: 3840)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !789, line: 68, baseType: !790)
!789 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !789, line: 62, size: 192, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !790, file: !789, line: 65, baseType: !673, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !790, file: !789, line: 66, baseType: !673, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !790, file: !789, line: 67, baseType: !673, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !711, file: !73, line: 259, baseType: !796, size: 512, offset: 4032)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !798)
!798 = !{!799, !806, !807, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !797, file: !247, line: 43, baseType: !800, size: 192)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !801, file: !247, line: 35, baseType: !673, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !801, file: !247, line: 36, baseType: !673, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !801, file: !247, line: 37, baseType: !673, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !797, file: !247, line: 44, baseType: !800, size: 192, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !797, file: !247, line: 47, baseType: !808, size: 32, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !797, file: !247, line: 50, baseType: !656, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !711, file: !73, line: 262, baseType: !811, size: 64, offset: 4544)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !812, line: 26, baseType: !813)
!812 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!645, !816, !818, !821, !748}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !820)
!820 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !823)
!823 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !711, file: !73, line: 265, baseType: !748, size: 64, offset: 4608)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !711, file: !73, line: 266, baseType: !748, size: 64, offset: 4672)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !711, file: !73, line: 267, baseType: !748, size: 64, offset: 4736)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !711, file: !73, line: 270, baseType: !828, size: 64, offset: 4800)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !830)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !711, file: !73, line: 273, baseType: !832, size: 64, offset: 4864)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !711, file: !73, line: 276, baseType: !836, size: 32768, offset: 4928)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32768, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 4096)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !711, file: !73, line: 277, baseType: !836, size: 32768, offset: 37696)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !711, file: !73, line: 278, baseType: !836, size: 32768, offset: 70464)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !711, file: !73, line: 281, baseType: !656, size: 64, offset: 103232)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !711, file: !73, line: 282, baseType: !656, size: 64, offset: 103296)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !711, file: !73, line: 285, baseType: !844, size: 448, offset: 103360)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !846)
!846 = !{!847, !849, !850, !851, !852, !853, !854, !859}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !845, file: !253, line: 105, baseType: !848, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !845, file: !253, line: 108, baseType: !560, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !845, file: !253, line: 111, baseType: !650, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !845, file: !253, line: 112, baseType: !650, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !845, file: !253, line: 115, baseType: !748, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !845, file: !253, line: 118, baseType: !645, size: 32, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !845, file: !253, line: 121, baseType: !855, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !857, line: 26, baseType: !858)
!857 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !857, line: 25, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !845, file: !253, line: 124, baseType: !656, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !711, file: !73, line: 288, baseType: !645, size: 32, offset: 103808)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !73, line: 291, baseType: !862, size: 64, offset: 103872)
!862 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !697)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !711, file: !73, line: 294, baseType: !855, size: 64, offset: 103936)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !711, file: !73, line: 297, baseType: !865, size: 256, offset: 104000)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !867)
!867 = !{!868, !869, !870, !873}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !89, line: 30, baseType: !650, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !866, file: !89, line: 33, baseType: !656, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !866, file: !89, line: 36, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !866, file: !89, line: 39, baseType: !656, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !711, file: !73, line: 298, baseType: !865, size: 256, offset: 104256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !711, file: !73, line: 299, baseType: !876, size: 64, offset: 104512)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !711, file: !73, line: 302, baseType: !656, size: 64, offset: 104576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !711, file: !73, line: 305, baseType: !656, size: 64, offset: 104640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !711, file: !73, line: 308, baseType: !780, size: 64, offset: 104704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !711, file: !73, line: 309, baseType: !780, size: 64, offset: 104768)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !73, line: 310, baseType: !780, size: 64, offset: 104832)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !711, file: !73, line: 313, baseType: !883, size: 32, offset: 104896)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !711, file: !73, line: 316, baseType: !645, size: 32, offset: 104928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !711, file: !73, line: 319, baseType: !676, size: 64, offset: 104960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !711, file: !73, line: 322, baseType: !780, size: 64, offset: 105024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !711, file: !73, line: 325, baseType: !757, size: 256, offset: 105088)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !711, file: !73, line: 328, baseType: !748, size: 64, offset: 105344)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !711, file: !73, line: 329, baseType: !748, size: 64, offset: 105408)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !73, line: 332, baseType: !693, size: 32, offset: 105472)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !711, file: !73, line: 335, baseType: !645, size: 32, offset: 105504)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !711, file: !73, line: 338, baseType: !822, size: 64, offset: 105536)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !711, file: !73, line: 341, baseType: !645, size: 32, offset: 105600)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !711, file: !73, line: 344, baseType: !656, size: 64, offset: 105664)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !711, file: !73, line: 347, baseType: !896, size: 64, offset: 105728)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !897, line: 7, baseType: !898)
!897 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !700, line: 160, baseType: !701)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !711, file: !73, line: 350, baseType: !900, size: 32, offset: 105792)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !711, file: !73, line: 353, baseType: !656, size: 64, offset: 105856)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !638, file: !73, line: 443, baseType: !748, size: 64, offset: 2112)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !638, file: !73, line: 446, baseType: !811, size: 64, offset: 2176)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !638, file: !73, line: 449, baseType: !748, size: 64, offset: 2240)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !638, file: !73, line: 450, baseType: !748, size: 64, offset: 2304)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !638, file: !73, line: 453, baseType: !907, size: 64, offset: 2368)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !908, line: 26, baseType: !909)
!908 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!656, !912, !914, !916}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !638, file: !73, line: 456, baseType: !918, size: 64, offset: 2432)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !920, line: 7, baseType: !921)
!920 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !922, line: 49, size: 1728, elements: !923)
!922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !939, !941, !942, !943, !945, !946, !948, !952, !955, !957, !960, !963, !964, !965, !966, !967}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !921, file: !922, line: 51, baseType: !560, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !921, file: !922, line: 54, baseType: !650, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !921, file: !922, line: 55, baseType: !650, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !921, file: !922, line: 56, baseType: !650, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !921, file: !922, line: 57, baseType: !650, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !921, file: !922, line: 58, baseType: !650, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !921, file: !922, line: 59, baseType: !650, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !921, file: !922, line: 60, baseType: !650, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !921, file: !922, line: 61, baseType: !650, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !921, file: !922, line: 64, baseType: !650, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !921, file: !922, line: 65, baseType: !650, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !921, file: !922, line: 66, baseType: !650, size: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !921, file: !922, line: 68, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !922, line: 36, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !921, file: !922, line: 70, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !921, file: !922, line: 72, baseType: !560, size: 32, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !921, file: !922, line: 73, baseType: !560, size: 32, offset: 928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !921, file: !922, line: 74, baseType: !944, size: 64, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !700, line: 152, baseType: !701)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !921, file: !922, line: 77, baseType: !681, size: 16, offset: 1024)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !921, file: !922, line: 78, baseType: !947, size: 8, offset: 1040)
!947 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !921, file: !922, line: 79, baseType: !949, size: 8, offset: 1048)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 8, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 1)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !921, file: !922, line: 81, baseType: !953, size: 64, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !922, line: 43, baseType: null)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !921, file: !922, line: 89, baseType: !956, size: 64, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !700, line: 153, baseType: !701)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !921, file: !922, line: 91, baseType: !958, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !922, line: 37, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !921, file: !922, line: 92, baseType: !961, size: 64, offset: 1280)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !922, line: 38, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !921, file: !922, line: 93, baseType: !940, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !921, file: !922, line: 94, baseType: !748, size: 64, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !921, file: !922, line: 95, baseType: !656, size: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !921, file: !922, line: 96, baseType: !560, size: 32, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !921, file: !922, line: 98, baseType: !968, size: 160, offset: 1568)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 160, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 20)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !638, file: !73, line: 459, baseType: !748, size: 64, offset: 2496)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !638, file: !73, line: 462, baseType: !656, size: 64, offset: 2560)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !638, file: !73, line: 465, baseType: !836, size: 32768, offset: 2624)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !638, file: !73, line: 466, baseType: !836, size: 32768, offset: 35392)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !638, file: !73, line: 467, baseType: !836, size: 32768, offset: 68160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !638, file: !73, line: 468, baseType: !836, size: 32768, offset: 100928)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !638, file: !73, line: 471, baseType: !645, size: 32, offset: 133696)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !638, file: !73, line: 474, baseType: !650, size: 64, offset: 133760)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !638, file: !73, line: 477, baseType: !656, size: 64, offset: 133824)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !638, file: !73, line: 478, baseType: !656, size: 64, offset: 133888)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !638, file: !73, line: 481, baseType: !676, size: 64, offset: 133952)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !638, file: !73, line: 484, baseType: !656, size: 64, offset: 134016)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !638, file: !73, line: 487, baseType: !984, size: 32, offset: 134080)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !460, line: 47, baseType: !459)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !638, file: !73, line: 490, baseType: !676, size: 64, offset: 134112)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !638, file: !73, line: 493, baseType: !748, size: 64, offset: 134208)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !638, file: !73, line: 496, baseType: !645, size: 32, offset: 134272)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !481, line: 103, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !481, line: 51, size: 1216, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1007, !1012, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1027, !1029, !1030, !1032, !1033, !1034, !1035}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !991, file: !481, line: 54, baseType: !650, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !991, file: !481, line: 55, baseType: !650, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !991, file: !481, line: 56, baseType: !650, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !991, file: !481, line: 57, baseType: !650, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !991, file: !481, line: 58, baseType: !650, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !991, file: !481, line: 61, baseType: !636, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !991, file: !481, line: 64, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !481, line: 43, baseType: !1002)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!709, !1004, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !991, file: !481, line: 67, baseType: !1008, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !481, line: 46, baseType: !1010)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!645, !1004, !709}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !991, file: !481, line: 70, baseType: !1013, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !481, line: 49, baseType: !1015)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!645, !1017, !916}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !991, file: !481, line: 73, baseType: !748, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !991, file: !481, line: 76, baseType: !645, size: 32, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !991, file: !481, line: 77, baseType: !645, size: 32, offset: 672)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !991, file: !481, line: 78, baseType: !645, size: 32, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !991, file: !481, line: 79, baseType: !645, size: 32, offset: 736)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !991, file: !481, line: 80, baseType: !645, size: 32, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !991, file: !481, line: 83, baseType: !1026, size: 32, offset: 800)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !481, line: 33, baseType: !480)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !991, file: !481, line: 86, baseType: !1028, size: 32, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !991, file: !481, line: 89, baseType: !645, size: 32, offset: 864)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !991, file: !481, line: 92, baseType: !1031, size: 64, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !481, line: 93, baseType: !1031, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !991, file: !481, line: 96, baseType: !656, size: 64, offset: 1024)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !991, file: !481, line: 99, baseType: !650, size: 64, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !991, file: !481, line: 102, baseType: !855, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "DelegateInfo", file: !1039, line: 53, baseType: !1040)
!1039 = !DIFile(filename: "apps/538.imagick_r/src/magick/delegate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "154c582a7300696ba5d05ab32b045264")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DelegateInfo", file: !1039, line: 28, size: 704, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1052, !1053, !1054}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1040, file: !1039, line: 31, baseType: !650, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !1040, file: !1039, line: 32, baseType: !650, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !1040, file: !1039, line: 33, baseType: !650, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1040, file: !1039, line: 34, baseType: !650, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1040, file: !1039, line: 37, baseType: !697, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !1040, file: !1039, line: 40, baseType: !645, size: 32, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "spawn", scope: !1040, file: !1039, line: 41, baseType: !645, size: 32, offset: 352)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !1040, file: !1039, line: 42, baseType: !645, size: 32, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1040, file: !1039, line: 45, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !1039, line: 46, baseType: !1051, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1040, file: !1039, line: 49, baseType: !656, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1040, file: !1039, line: 52, baseType: !855, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !1058, line: 40, baseType: !1059)
!1058 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !1058, line: 29, size: 32960, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1059, file: !1058, line: 32, baseType: !836, size: 32768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !1059, file: !1058, line: 35, baseType: !871, size: 64, offset: 32768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1059, file: !1058, line: 38, baseType: !656, size: 64, offset: 32832)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1059, file: !1058, line: 39, baseType: !656, size: 64, offset: 32896)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!1067 = !{i32 7, !"Dwarf Version", i32 5}
!1068 = !{i32 2, !"Debug Info Version", i32 3}
!1069 = !{i32 1, !"wchar_size", i32 4}
!1070 = !{i32 7, !"PIC Level", i32 2}
!1071 = !{i32 7, !"PIE Level", i32 2}
!1072 = !{i32 7, !"uwtable", i32 2}
!1073 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1074 = distinct !DISubprogram(name: "ConstituteImage", scope: !1075, file: !1075, line: 128, type: !1076, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1080)
!1075 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5218a560e948a12ed2e113a6347dbc1d")
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!709, !916, !916, !816, !1078, !914, !1006}
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorageType", file: !369, line: 35, baseType: !368)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1081 = !DILocalVariable(name: "columns", arg: 1, scope: !1074, file: !1075, line: 128, type: !916)
!1082 = !DILocalVariable(name: "rows", arg: 2, scope: !1074, file: !1075, line: 129, type: !916)
!1083 = !DILocalVariable(name: "map", arg: 3, scope: !1074, file: !1075, line: 129, type: !816)
!1084 = !DILocalVariable(name: "storage", arg: 4, scope: !1074, file: !1075, line: 129, type: !1078)
!1085 = !DILocalVariable(name: "pixels", arg: 5, scope: !1074, file: !1075, line: 130, type: !914)
!1086 = !DILocalVariable(name: "exception", arg: 6, scope: !1074, file: !1075, line: 130, type: !1006)
!1087 = !DILocalVariable(name: "image", scope: !1074, file: !1075, line: 133, type: !709)
!1088 = !DILocalVariable(name: "status", scope: !1074, file: !1075, line: 136, type: !645)
!1089 = !DILocation(line: 0, scope: !1074)
!1090 = !DILocation(line: 142, column: 10, scope: !1074)
!1091 = !DILocation(line: 146, column: 9, scope: !1074)
!1092 = !DILocation(line: 147, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !1075, line: 147, column: 7)
!1094 = !DILocation(line: 147, column: 7, scope: !1074)
!1095 = !DILocation(line: 149, column: 16, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1074, file: !1075, line: 149, column: 7)
!1097 = !DILocation(line: 149, column: 22, scope: !1096)
!1098 = !DILocation(line: 150, column: 5, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !1075, line: 150, column: 5)
!1100 = !DILocation(line: 151, column: 10, scope: !1074)
!1101 = !DILocation(line: 151, column: 17, scope: !1074)
!1102 = !{!1103, !1106, i64 40}
!1103 = !{!"_Image", !1104, i64 0, !1104, i64 4, !1104, i64 8, !1106, i64 16, !1104, i64 24, !1104, i64 28, !1104, i64 32, !1106, i64 40, !1106, i64 48, !1106, i64 56, !1106, i64 64, !1107, i64 72, !1108, i64 80, !1108, i64 88, !1108, i64 96, !1110, i64 104, !1111, i64 112, !1104, i64 208, !1107, i64 216, !1104, i64 224, !1107, i64 232, !1107, i64 240, !1107, i64 248, !1106, i64 256, !1110, i64 264, !1110, i64 272, !1113, i64 280, !1113, i64 312, !1113, i64 344, !1110, i64 376, !1110, i64 384, !1110, i64 392, !1104, i64 400, !1104, i64 404, !1104, i64 408, !1104, i64 412, !1104, i64 416, !1104, i64 420, !1107, i64 424, !1106, i64 432, !1106, i64 440, !1106, i64 448, !1106, i64 456, !1106, i64 464, !1106, i64 472, !1114, i64 480, !1115, i64 504, !1107, i64 568, !1107, i64 576, !1107, i64 584, !1107, i64 592, !1107, i64 600, !1107, i64 608, !1104, i64 616, !1104, i64 4712, !1104, i64 8808, !1106, i64 12904, !1106, i64 12912, !1117, i64 12920, !1104, i64 12976, !1106, i64 12984, !1107, i64 12992, !1119, i64 13000, !1119, i64 13032, !1107, i64 13064, !1106, i64 13072, !1106, i64 13080, !1107, i64 13088, !1107, i64 13096, !1107, i64 13104, !1104, i64 13112, !1104, i64 13116, !1108, i64 13120, !1107, i64 13128, !1113, i64 13136, !1107, i64 13168, !1107, i64 13176, !1104, i64 13184, !1104, i64 13188, !1120, i64 13192, !1104, i64 13200, !1106, i64 13208, !1106, i64 13216, !1104, i64 13224, !1106, i64 13232}
!1104 = !{!"omnipotent char", !1105, i64 0}
!1105 = !{!"Simple C/C++ TBAA"}
!1106 = !{!"long", !1104, i64 0}
!1107 = !{!"any pointer", !1104, i64 0}
!1108 = !{!"_PixelPacket", !1109, i64 0, !1109, i64 2, !1109, i64 4, !1109, i64 6}
!1109 = !{!"short", !1104, i64 0}
!1110 = !{!"double", !1104, i64 0}
!1111 = !{!"_ChromaticityInfo", !1112, i64 0, !1112, i64 24, !1112, i64 48, !1112, i64 72}
!1112 = !{!"_PrimaryInfo", !1110, i64 0, !1110, i64 8, !1110, i64 16}
!1113 = !{!"_RectangleInfo", !1106, i64 0, !1106, i64 8, !1106, i64 16, !1106, i64 24}
!1114 = !{!"_ErrorInfo", !1110, i64 0, !1110, i64 8, !1110, i64 16}
!1115 = !{!"_TimerInfo", !1116, i64 0, !1116, i64 24, !1104, i64 48, !1106, i64 56}
!1116 = !{!"_Timer", !1110, i64 0, !1110, i64 8, !1110, i64 16}
!1117 = !{!"_ExceptionInfo", !1104, i64 0, !1118, i64 4, !1107, i64 8, !1107, i64 16, !1107, i64 24, !1104, i64 32, !1107, i64 40, !1106, i64 48}
!1118 = !{!"int", !1104, i64 0}
!1119 = !{!"_ProfileInfo", !1107, i64 0, !1106, i64 8, !1107, i64 16, !1106, i64 24}
!1120 = !{!"long long", !1104, i64 0}
!1121 = !DILocation(line: 152, column: 10, scope: !1074)
!1122 = !DILocation(line: 152, column: 14, scope: !1074)
!1123 = !{!1103, !1106, i64 48}
!1124 = !DILocation(line: 153, column: 10, scope: !1074)
!1125 = !DILocation(line: 154, column: 10, scope: !1074)
!1126 = !DILocation(line: 155, column: 14, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1074, file: !1075, line: 155, column: 7)
!1128 = !DILocation(line: 155, column: 7, scope: !1074)
!1129 = !DILocation(line: 157, column: 42, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1075, line: 156, column: 5)
!1131 = !DILocation(line: 157, column: 7, scope: !1130)
!1132 = !DILocation(line: 158, column: 13, scope: !1130)
!1133 = !DILocation(line: 159, column: 5, scope: !1130)
!1134 = !DILocation(line: 161, column: 1, scope: !1074)
!1135 = !DISubprogram(name: "LogMagickEvent", scope: !380, file: !380, line: 83, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!645, !1138, !816, !816, !916, !816, null}
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !380, line: 58, baseType: !379)
!1140 = !{}
!1141 = !DISubprogram(name: "AcquireImage", scope: !73, file: !73, line: 506, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!709, !1004}
!1144 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!645, !1006, !816, !816, !916, !1147, !816, !816, null}
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!1148 = !DISubprogram(name: "SetImageBackgroundColor", scope: !73, file: !73, line: 534, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!645, !709}
!1151 = !DISubprogram(name: "ImportImagePixels", scope: !326, file: !326, line: 169, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!645, !709, !1154, !1154, !916, !916, !816, !1078, !914}
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!1155 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1006, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!1160 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!709, !709}
!1163 = distinct !DISubprogram(name: "PingImage", scope: !1075, file: !1075, line: 209, type: !1002, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168}
!1165 = !DILocalVariable(name: "image_info", arg: 1, scope: !1163, file: !1075, line: 209, type: !1004)
!1166 = !DILocalVariable(name: "exception", arg: 2, scope: !1163, file: !1075, line: 210, type: !1006)
!1167 = !DILocalVariable(name: "image", scope: !1163, file: !1075, line: 213, type: !709)
!1168 = !DILocalVariable(name: "ping_info", scope: !1163, file: !1075, line: 216, type: !636)
!1169 = !DILocation(line: 0, scope: !1163)
!1170 = !DILocation(line: 220, column: 19, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !1075, line: 220, column: 7)
!1172 = !{!1173, !1104, i64 16712}
!1173 = !{!"_ImageInfo", !1104, i64 0, !1104, i64 4, !1104, i64 8, !1104, i64 12, !1104, i64 16, !1104, i64 20, !1107, i64 24, !1107, i64 32, !1107, i64 40, !1107, i64 48, !1106, i64 56, !1106, i64 64, !1106, i64 72, !1104, i64 80, !1104, i64 84, !1104, i64 88, !1106, i64 96, !1107, i64 104, !1107, i64 112, !1107, i64 120, !1107, i64 128, !1107, i64 136, !1110, i64 144, !1110, i64 152, !1108, i64 160, !1108, i64 168, !1108, i64 176, !1104, i64 184, !1104, i64 188, !1106, i64 192, !1104, i64 200, !1104, i64 204, !1104, i64 208, !1106, i64 216, !1104, i64 224, !1104, i64 228, !1107, i64 232, !1107, i64 240, !1104, i64 248, !1107, i64 256, !1107, i64 264, !1107, i64 272, !1107, i64 280, !1107, i64 288, !1107, i64 296, !1107, i64 304, !1107, i64 312, !1106, i64 320, !1104, i64 328, !1104, i64 4424, !1104, i64 8520, !1104, i64 12616, !1104, i64 16712, !1107, i64 16720, !1106, i64 16728, !1106, i64 16736, !1108, i64 16744, !1106, i64 16752, !1104, i64 16760, !1108, i64 16764, !1107, i64 16776, !1104, i64 16784}
!1174 = !DILocation(line: 220, column: 25, scope: !1171)
!1175 = !DILocation(line: 220, column: 7, scope: !1163)
!1176 = !DILocation(line: 222, column: 19, scope: !1171)
!1177 = !DILocation(line: 221, column: 12, scope: !1171)
!1178 = !DILocation(line: 221, column: 5, scope: !1171)
!1179 = !DILocation(line: 224, column: 13, scope: !1163)
!1180 = !DILocation(line: 225, column: 14, scope: !1163)
!1181 = !DILocation(line: 225, column: 18, scope: !1163)
!1182 = !{!1173, !1104, i64 224}
!1183 = !DILocation(line: 226, column: 9, scope: !1163)
!1184 = !DILocation(line: 227, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !1075, line: 227, column: 7)
!1186 = !DILocation(line: 227, column: 7, scope: !1163)
!1187 = !DILocation(line: 229, column: 26, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !1075, line: 228, column: 5)
!1189 = !DILocation(line: 229, column: 7, scope: !1188)
!1190 = !DILocation(line: 230, column: 22, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !1075, line: 230, column: 11)
!1192 = !{!1173, !1104, i64 228}
!1193 = !DILocation(line: 230, column: 30, scope: !1191)
!1194 = !DILocation(line: 230, column: 11, scope: !1188)
!1195 = !DILocation(line: 231, column: 36, scope: !1191)
!1196 = !{!1107, !1107, i64 0}
!1197 = !DILocation(line: 231, column: 16, scope: !1191)
!1198 = !DILocation(line: 231, column: 9, scope: !1191)
!1199 = !DILocation(line: 233, column: 13, scope: !1163)
!1200 = !DILocation(line: 234, column: 3, scope: !1163)
!1201 = !DISubprogram(name: "CloneImageInfo", scope: !73, file: !73, line: 521, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!636, !1004}
!1204 = !DISubprogram(name: "ReadStream", scope: !908, file: !908, line: 29, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!709, !1004, !907, !1006}
!1207 = distinct !DISubprogram(name: "PingStream", scope: !1075, file: !1075, line: 196, type: !910, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "image", arg: 1, scope: !1207, file: !1075, line: 196, type: !912)
!1210 = !DILocalVariable(name: "pixels", arg: 2, scope: !1207, file: !1075, line: 197, type: !914)
!1211 = !DILocalVariable(name: "columns", arg: 3, scope: !1207, file: !1075, line: 197, type: !916)
!1212 = !DILocation(line: 0, scope: !1207)
!1213 = !DILocation(line: 202, column: 3, scope: !1207)
!1214 = !DISubprogram(name: "ResetTimer", scope: !247, file: !247, line: 66, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1218 = !DISubprogram(name: "IdentifyImage", scope: !1219, file: !1219, line: 26, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1219 = !DIFile(filename: "apps/538.imagick_r/src/magick/identify.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2a4868f789673e3eec7ecb8762694234")
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!645, !709, !918, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!1223 = !DISubprogram(name: "DestroyImageInfo", scope: !73, file: !73, line: 522, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!636, !636}
!1226 = distinct !DISubprogram(name: "PingImages", scope: !1075, file: !1075, line: 261, type: !1002, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1237, !1238}
!1228 = !DILocalVariable(name: "image_info", arg: 1, scope: !1226, file: !1075, line: 261, type: !1004)
!1229 = !DILocalVariable(name: "exception", arg: 2, scope: !1226, file: !1075, line: 262, type: !1006)
!1230 = !DILocalVariable(name: "filename", scope: !1226, file: !1075, line: 265, type: !836)
!1231 = !DILocalVariable(name: "image", scope: !1226, file: !1075, line: 268, type: !709)
!1232 = !DILocalVariable(name: "images", scope: !1226, file: !1075, line: 269, type: !709)
!1233 = !DILocalVariable(name: "read_info", scope: !1226, file: !1075, line: 272, type: !636)
!1234 = !DILocalVariable(name: "sans", scope: !1235, file: !1075, line: 288, type: !1006)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !1075, line: 286, column: 5)
!1236 = distinct !DILexicalBlock(scope: !1226, file: !1075, line: 285, column: 7)
!1237 = !DILocalVariable(name: "extent", scope: !1235, file: !1075, line: 291, type: !697)
!1238 = !DILocalVariable(name: "scene", scope: !1235, file: !1075, line: 292, type: !697)
!1239 = !DILocation(line: 0, scope: !1226)
!1240 = !DILocation(line: 264, column: 3, scope: !1226)
!1241 = !DILocation(line: 265, column: 5, scope: !1226)
!1242 = !DILocation(line: 267, column: 3, scope: !1226)
!1243 = !DILocation(line: 279, column: 19, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1226, file: !1075, line: 279, column: 7)
!1245 = !DILocation(line: 279, column: 25, scope: !1244)
!1246 = !DILocation(line: 279, column: 7, scope: !1226)
!1247 = !DILocation(line: 281, column: 19, scope: !1244)
!1248 = !DILocation(line: 280, column: 12, scope: !1244)
!1249 = !DILocation(line: 280, column: 5, scope: !1244)
!1250 = !DILocation(line: 283, column: 71, scope: !1226)
!1251 = !DILocation(line: 284, column: 23, scope: !1226)
!1252 = !{!1173, !1106, i64 56}
!1253 = !DILocation(line: 284, column: 5, scope: !1226)
!1254 = !DILocation(line: 283, column: 10, scope: !1226)
!1255 = !DILocation(line: 285, column: 7, scope: !1236)
!1256 = !DILocation(line: 285, column: 52, scope: !1236)
!1257 = !DILocation(line: 285, column: 7, scope: !1226)
!1258 = !DILocation(line: 297, column: 17, scope: !1235)
!1259 = !DILocation(line: 298, column: 12, scope: !1235)
!1260 = !DILocation(line: 0, scope: !1235)
!1261 = !DILocation(line: 299, column: 14, scope: !1235)
!1262 = !DILocation(line: 300, column: 12, scope: !1235)
!1263 = !DILocation(line: 301, column: 22, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1235, file: !1075, line: 301, column: 11)
!1265 = !{!1173, !1106, i64 64}
!1266 = !DILocation(line: 301, column: 36, scope: !1264)
!1267 = !DILocation(line: 301, column: 11, scope: !1235)
!1268 = !DILocation(line: 303, column: 21, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !1075, line: 302, column: 9)
!1270 = !DILocation(line: 304, column: 18, scope: !1269)
!1271 = !DILocation(line: 304, column: 11, scope: !1269)
!1272 = !DILocation(line: 306, column: 51, scope: !1235)
!1273 = !DILocation(line: 306, column: 14, scope: !1235)
!1274 = !DILocation(line: 307, column: 14, scope: !1235)
!1275 = !DILocation(line: 307, column: 13, scope: !1235)
!1276 = !DILocation(line: 308, column: 36, scope: !1235)
!1277 = !DILocation(line: 308, column: 53, scope: !1235)
!1278 = !DILocation(line: 308, column: 41, scope: !1235)
!1279 = !DILocation(line: 309, column: 52, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1075, line: 309, column: 7)
!1281 = distinct !DILexicalBlock(scope: !1235, file: !1075, line: 309, column: 7)
!1282 = !DILocation(line: 309, column: 7, scope: !1281)
!1283 = !DILocation(line: 311, column: 74, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !1075, line: 310, column: 7)
!1285 = !DILocation(line: 311, column: 16, scope: !1284)
!1286 = !DILocation(line: 313, column: 15, scope: !1284)
!1287 = !DILocation(line: 314, column: 19, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !1075, line: 314, column: 13)
!1289 = !DILocation(line: 314, column: 13, scope: !1284)
!1290 = !DILocation(line: 316, column: 9, scope: !1284)
!1291 = !DILocation(line: 317, column: 7, scope: !1284)
!1292 = !DILocation(line: 309, column: 77, scope: !1280)
!1293 = distinct !{!1293, !1282, !1294, !1295, !1296}
!1294 = !DILocation(line: 317, column: 7, scope: !1281)
!1295 = !{!"llvm.loop.mustprogress"}
!1296 = !{!"llvm.loop.unroll.disable"}
!1297 = !DILocation(line: 318, column: 17, scope: !1235)
!1298 = !DILocation(line: 319, column: 14, scope: !1235)
!1299 = !DILocation(line: 319, column: 7, scope: !1235)
!1300 = !DILocation(line: 321, column: 10, scope: !1226)
!1301 = !DILocation(line: 321, column: 3, scope: !1226)
!1302 = !DILocation(line: 322, column: 1, scope: !1226)
!1303 = !DISubprogram(name: "InterpretImageFilename", scope: !73, file: !73, line: 549, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!656, !1004, !709, !816, !560, !650}
!1306 = !DISubprogram(name: "LocaleCompare", scope: !1058, file: !1058, line: 66, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!560, !816, !816}
!1309 = !DISubprogram(name: "AcquireExceptionInfo", scope: !253, file: !253, line: 146, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1006}
!1312 = !DISubprogram(name: "SetImageInfo", scope: !73, file: !73, line: 538, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!645, !636, !1315, !1006}
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1316 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1006, !1006}
!1319 = !DISubprogram(name: "CopyMagickString", scope: !1058, file: !1058, line: 78, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!656, !650, !816, !916}
!1322 = !DISubprogram(name: "NewImageList", scope: !1323, file: !1323, line: 36, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1323 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!709}
!1326 = !DISubprogram(name: "AppendImageToList", scope: !1323, file: !1323, line: 51, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !1329, !912}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!1330 = distinct !DISubprogram(name: "ReadImage", scope: !1075, file: !1075, line: 352, type: !1002, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1350, !1351, !1352, !1353, !1354, !1355, !1357, !1359, !1365, !1368, !1375, !1378, !1381, !1385, !1386, !1387, !1388, !1389, !1392, !1397, !1400}
!1332 = !DILocalVariable(name: "image_info", arg: 1, scope: !1330, file: !1075, line: 352, type: !1004)
!1333 = !DILocalVariable(name: "exception", arg: 2, scope: !1330, file: !1075, line: 353, type: !1006)
!1334 = !DILocalVariable(name: "filename", scope: !1330, file: !1075, line: 356, type: !836)
!1335 = !DILocalVariable(name: "magick", scope: !1330, file: !1075, line: 357, type: !836)
!1336 = !DILocalVariable(name: "magick_filename", scope: !1330, file: !1075, line: 358, type: !836)
!1337 = !DILocalVariable(name: "value", scope: !1330, file: !1075, line: 361, type: !816)
!1338 = !DILocalVariable(name: "delegate_info", scope: !1330, file: !1075, line: 364, type: !1036)
!1339 = !DILocalVariable(name: "magick_info", scope: !1330, file: !1075, line: 367, type: !988)
!1340 = !DILocalVariable(name: "sans_exception", scope: !1330, file: !1075, line: 370, type: !1006)
!1341 = !DILocalVariable(name: "geometry_info", scope: !1330, file: !1075, line: 373, type: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !153, line: 112, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !153, line: 104, size: 320, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !1343, file: !153, line: 107, baseType: !673, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !1343, file: !153, line: 108, baseType: !673, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !1343, file: !153, line: 109, baseType: !673, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1343, file: !153, line: 110, baseType: !673, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !1343, file: !153, line: 111, baseType: !673, size: 64, offset: 256)
!1350 = !DILocalVariable(name: "image", scope: !1330, file: !1075, line: 376, type: !709)
!1351 = !DILocalVariable(name: "next", scope: !1330, file: !1075, line: 377, type: !709)
!1352 = !DILocalVariable(name: "read_info", scope: !1330, file: !1075, line: 380, type: !636)
!1353 = !DILocalVariable(name: "flags", scope: !1330, file: !1075, line: 383, type: !1028)
!1354 = !DILocalVariable(name: "thread_support", scope: !1330, file: !1075, line: 384, type: !1028)
!1355 = !DILocalVariable(name: "domain", scope: !1330, file: !1075, line: 387, type: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyDomain", file: !487, line: 37, baseType: !486)
!1357 = !DILocalVariable(name: "rights", scope: !1330, file: !1075, line: 390, type: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyRights", file: !487, line: 46, baseType: !496)
!1359 = !DILocalVariable(name: "lsb_first", scope: !1360, file: !1075, line: 432, type: !656)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !1075, line: 430, column: 11)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1075, line: 428, column: 13)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1075, line: 425, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1075, line: 424, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 423, column: 7)
!1365 = !DILocalVariable(name: "status", scope: !1366, file: !1075, line: 443, type: !645)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1075, line: 441, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 439, column: 7)
!1368 = !DILocalVariable(name: "message", scope: !1369, file: !1075, line: 539, type: !650)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1075, line: 539, column: 13)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1075, line: 534, column: 15)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1075, line: 533, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 531, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1075, line: 497, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 486, column: 7)
!1375 = !DILocalVariable(name: "clones", scope: !1376, file: !1075, line: 573, type: !709)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1075, line: 571, column: 5)
!1377 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 569, column: 7)
!1378 = !DILocalVariable(name: "message", scope: !1379, file: !1075, line: 586, type: !650)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !1075, line: 586, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 585, column: 7)
!1381 = !DILocalVariable(name: "magick_path", scope: !1382, file: !1075, line: 591, type: !836)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1075, line: 589, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !1075, line: 588, column: 3)
!1384 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 588, column: 3)
!1385 = !DILocalVariable(name: "property", scope: !1382, file: !1075, line: 592, type: !650)
!1386 = !DILocalVariable(name: "timestamp", scope: !1382, file: !1075, line: 593, type: !836)
!1387 = !DILocalVariable(name: "option", scope: !1382, file: !1075, line: 596, type: !816)
!1388 = !DILocalVariable(name: "profile", scope: !1382, file: !1075, line: 599, type: !1055)
!1389 = !DILocalVariable(name: "geometry", scope: !1390, file: !1075, line: 682, type: !757)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !1075, line: 680, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 678, column: 9)
!1392 = !DILocalVariable(name: "crop_image", scope: !1393, file: !1075, line: 691, type: !709)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1075, line: 689, column: 15)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !1075, line: 688, column: 17)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !1075, line: 687, column: 11)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !1075, line: 685, column: 13)
!1397 = !DILocalVariable(name: "size_image", scope: !1398, file: !1075, line: 701, type: !709)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !1075, line: 699, column: 17)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !1075, line: 698, column: 19)
!1400 = !DILocalVariable(name: "geometry_info", scope: !1401, file: !1075, line: 738, type: !1342)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !1075, line: 736, column: 7)
!1402 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 735, column: 9)
!1403 = !DILocation(line: 0, scope: !1330)
!1404 = !DILocation(line: 355, column: 3, scope: !1330)
!1405 = !DILocation(line: 356, column: 5, scope: !1330)
!1406 = !DILocation(line: 357, column: 5, scope: !1330)
!1407 = !DILocation(line: 358, column: 5, scope: !1330)
!1408 = !DILocation(line: 372, column: 3, scope: !1330)
!1409 = !DILocation(line: 373, column: 5, scope: !1330)
!1410 = !DILocation(line: 375, column: 3, scope: !1330)
!1411 = !DILocation(line: 398, column: 19, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 398, column: 7)
!1413 = !DILocation(line: 398, column: 25, scope: !1412)
!1414 = !DILocation(line: 398, column: 7, scope: !1330)
!1415 = !DILocation(line: 400, column: 19, scope: !1412)
!1416 = !DILocation(line: 399, column: 12, scope: !1412)
!1417 = !DILocation(line: 399, column: 5, scope: !1412)
!1418 = !DILocation(line: 402, column: 13, scope: !1330)
!1419 = !DILocation(line: 403, column: 54, scope: !1330)
!1420 = !DILocation(line: 403, column: 10, scope: !1330)
!1421 = !DILocation(line: 404, column: 10, scope: !1330)
!1422 = !DILocation(line: 405, column: 10, scope: !1330)
!1423 = !DILocation(line: 406, column: 45, scope: !1330)
!1424 = !DILocation(line: 406, column: 10, scope: !1330)
!1425 = !DILocation(line: 409, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 409, column: 7)
!1427 = !DILocation(line: 409, column: 59, scope: !1426)
!1428 = !DILocation(line: 409, column: 7, scope: !1330)
!1429 = !DILocation(line: 411, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !1075, line: 410, column: 5)
!1431 = !DILocation(line: 411, column: 12, scope: !1430)
!1432 = !{!1118, !1118, i64 0}
!1433 = !DILocation(line: 412, column: 14, scope: !1430)
!1434 = !DILocation(line: 414, column: 17, scope: !1430)
!1435 = !DILocation(line: 415, column: 7, scope: !1430)
!1436 = !DILocation(line: 420, column: 18, scope: !1330)
!1437 = !DILocation(line: 421, column: 15, scope: !1330)
!1438 = !DILocation(line: 422, column: 18, scope: !1330)
!1439 = !DILocation(line: 423, column: 19, scope: !1364)
!1440 = !DILocation(line: 423, column: 7, scope: !1330)
!1441 = !DILocation(line: 425, column: 11, scope: !1362)
!1442 = !DILocation(line: 425, column: 47, scope: !1362)
!1443 = !DILocation(line: 425, column: 11, scope: !1363)
!1444 = !DILocation(line: 428, column: 26, scope: !1361)
!1445 = !{!1173, !1104, i64 84}
!1446 = !DILocation(line: 428, column: 33, scope: !1361)
!1447 = !DILocation(line: 428, column: 53, scope: !1361)
!1448 = !DILocation(line: 429, column: 14, scope: !1361)
!1449 = !DILocation(line: 429, column: 47, scope: !1361)
!1450 = !DILocation(line: 428, column: 13, scope: !1362)
!1451 = !DILocation(line: 0, scope: !1362)
!1452 = !DILocation(line: 440, column: 8, scope: !1367)
!1453 = !DILocation(line: 440, column: 45, scope: !1367)
!1454 = !DILocation(line: 439, column: 7, scope: !1330)
!1455 = !DILocation(line: 445, column: 13, scope: !1366)
!1456 = !DILocation(line: 446, column: 38, scope: !1366)
!1457 = !DILocation(line: 446, column: 14, scope: !1366)
!1458 = !DILocation(line: 448, column: 14, scope: !1366)
!1459 = !DILocation(line: 0, scope: !1366)
!1460 = !DILocation(line: 449, column: 18, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1366, file: !1075, line: 449, column: 11)
!1462 = !DILocation(line: 449, column: 11, scope: !1366)
!1463 = !DILocation(line: 451, column: 21, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !1075, line: 450, column: 9)
!1465 = !DILocation(line: 452, column: 17, scope: !1464)
!1466 = !DILocation(line: 453, column: 11, scope: !1464)
!1467 = !DILocation(line: 455, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1366, file: !1075, line: 455, column: 11)
!1469 = !DILocation(line: 455, column: 33, scope: !1468)
!1470 = !DILocation(line: 455, column: 11, scope: !1366)
!1471 = !DILocation(line: 460, column: 31, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !1075, line: 456, column: 9)
!1473 = !{!1104, !1104, i64 0}
!1474 = !DILocation(line: 461, column: 18, scope: !1472)
!1475 = !DILocation(line: 462, column: 22, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !1075, line: 462, column: 15)
!1477 = !DILocation(line: 462, column: 15, scope: !1472)
!1478 = !DILocation(line: 464, column: 22, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !1075, line: 463, column: 13)
!1480 = !DILocation(line: 465, column: 25, scope: !1479)
!1481 = !DILocation(line: 466, column: 21, scope: !1479)
!1482 = !DILocation(line: 467, column: 15, scope: !1479)
!1483 = !DILocation(line: 469, column: 22, scope: !1472)
!1484 = !DILocation(line: 469, column: 31, scope: !1472)
!1485 = !{!1173, !1104, i64 8}
!1486 = !DILocation(line: 470, column: 9, scope: !1472)
!1487 = !DILocation(line: 471, column: 14, scope: !1366)
!1488 = !DILocation(line: 472, column: 13, scope: !1366)
!1489 = !DILocation(line: 474, column: 9, scope: !1330)
!1490 = !DILocation(line: 475, column: 50, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 475, column: 7)
!1492 = !DILocation(line: 476, column: 8, scope: !1491)
!1493 = !DILocation(line: 476, column: 37, scope: !1491)
!1494 = !DILocation(line: 475, column: 7, scope: !1330)
!1495 = !DILocation(line: 478, column: 21, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !1075, line: 477, column: 5)
!1497 = !DILocation(line: 479, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1496, file: !1075, line: 479, column: 11)
!1499 = !DILocation(line: 479, column: 11, scope: !1496)
!1500 = !DILocation(line: 481, column: 18, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !1075, line: 480, column: 9)
!1502 = !DILocation(line: 482, column: 18, scope: !1501)
!1503 = !DILocation(line: 483, column: 23, scope: !1501)
!1504 = !DILocation(line: 484, column: 9, scope: !1501)
!1505 = !DILocation(line: 486, column: 20, scope: !1374)
!1506 = !DILocation(line: 486, column: 50, scope: !1374)
!1507 = !DILocation(line: 487, column: 8, scope: !1374)
!1508 = !DILocation(line: 487, column: 37, scope: !1374)
!1509 = !DILocation(line: 486, column: 7, scope: !1330)
!1510 = !DILocation(line: 489, column: 22, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1374, file: !1075, line: 488, column: 5)
!1512 = !DILocation(line: 490, column: 27, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !1075, line: 490, column: 11)
!1514 = !DILocation(line: 490, column: 51, scope: !1513)
!1515 = !DILocation(line: 490, column: 11, scope: !1511)
!1516 = !DILocation(line: 491, column: 40, scope: !1513)
!1517 = !{!1518, !1107, i64 144}
!1518 = !{!"_MagickInfo", !1107, i64 0, !1107, i64 8, !1107, i64 16, !1107, i64 24, !1107, i64 32, !1107, i64 40, !1107, i64 48, !1107, i64 56, !1107, i64 64, !1107, i64 72, !1104, i64 80, !1104, i64 84, !1104, i64 88, !1104, i64 92, !1104, i64 96, !1104, i64 100, !1118, i64 104, !1104, i64 108, !1107, i64 112, !1107, i64 120, !1106, i64 128, !1107, i64 136, !1107, i64 144}
!1519 = !DILocation(line: 491, column: 9, scope: !1513)
!1520 = !DILocation(line: 492, column: 13, scope: !1511)
!1521 = !DILocation(line: 493, column: 11, scope: !1511)
!1522 = !DILocation(line: 498, column: 21, scope: !1373)
!1523 = !DILocation(line: 499, column: 25, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 499, column: 11)
!1525 = !DILocation(line: 499, column: 11, scope: !1373)
!1526 = !DILocation(line: 501, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !1075, line: 500, column: 9)
!1528 = !DILocation(line: 504, column: 26, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1527, file: !1075, line: 504, column: 15)
!1530 = !DILocation(line: 504, column: 36, scope: !1529)
!1531 = !DILocation(line: 504, column: 15, scope: !1527)
!1532 = !DILocation(line: 505, column: 20, scope: !1529)
!1533 = !DILocation(line: 505, column: 13, scope: !1529)
!1534 = !DILocation(line: 506, column: 21, scope: !1527)
!1535 = !DILocation(line: 507, column: 11, scope: !1527)
!1536 = !DILocation(line: 512, column: 13, scope: !1373)
!1537 = !DILocation(line: 513, column: 17, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 513, column: 11)
!1539 = !DILocation(line: 513, column: 11, scope: !1373)
!1540 = !DILocation(line: 515, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !1075, line: 514, column: 9)
!1542 = !DILocation(line: 516, column: 11, scope: !1541)
!1543 = !DILocation(line: 518, column: 38, scope: !1373)
!1544 = !DILocation(line: 518, column: 14, scope: !1373)
!1545 = !DILocation(line: 520, column: 27, scope: !1373)
!1546 = !DILocation(line: 521, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 521, column: 11)
!1548 = !DILocation(line: 521, column: 51, scope: !1547)
!1549 = !DILocation(line: 521, column: 11, scope: !1373)
!1550 = !DILocation(line: 522, column: 42, scope: !1547)
!1551 = !{!1552, !1107, i64 80}
!1552 = !{!"_DelegateInfo", !1107, i64 0, !1107, i64 8, !1107, i64 16, !1107, i64 24, !1106, i64 32, !1104, i64 40, !1104, i64 44, !1104, i64 48, !1107, i64 56, !1107, i64 64, !1106, i64 72, !1107, i64 80}
!1553 = !DILocation(line: 522, column: 9, scope: !1547)
!1554 = !DILocation(line: 523, column: 14, scope: !1373)
!1555 = !DILocation(line: 525, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 525, column: 11)
!1557 = !DILocation(line: 525, column: 51, scope: !1556)
!1558 = !DILocation(line: 525, column: 11, scope: !1373)
!1559 = !DILocation(line: 526, column: 44, scope: !1556)
!1560 = !DILocation(line: 526, column: 9, scope: !1556)
!1561 = !DILocation(line: 527, column: 13, scope: !1373)
!1562 = !DILocation(line: 528, column: 18, scope: !1373)
!1563 = !DILocation(line: 528, column: 27, scope: !1373)
!1564 = !DILocation(line: 529, column: 14, scope: !1373)
!1565 = !DILocation(line: 530, column: 19, scope: !1373)
!1566 = !DILocation(line: 531, column: 24, scope: !1372)
!1567 = !DILocation(line: 531, column: 54, scope: !1372)
!1568 = !DILocation(line: 532, column: 12, scope: !1372)
!1569 = !DILocation(line: 532, column: 41, scope: !1372)
!1570 = !DILocation(line: 531, column: 11, scope: !1373)
!1571 = !DILocation(line: 534, column: 15, scope: !1370)
!1572 = !DILocation(line: 534, column: 53, scope: !1370)
!1573 = !DILocation(line: 534, column: 15, scope: !1371)
!1574 = !DILocation(line: 535, column: 20, scope: !1370)
!1575 = !DILocation(line: 535, column: 13, scope: !1370)
!1576 = !DILocation(line: 539, column: 13, scope: !1369)
!1577 = !DILocation(line: 0, scope: !1369)
!1578 = !DILocation(line: 541, column: 21, scope: !1371)
!1579 = !DILocation(line: 542, column: 11, scope: !1371)
!1580 = !DILocation(line: 544, column: 22, scope: !1373)
!1581 = !DILocation(line: 545, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1373, file: !1075, line: 545, column: 11)
!1583 = !DILocation(line: 545, column: 51, scope: !1582)
!1584 = !DILocation(line: 545, column: 11, scope: !1373)
!1585 = !DILocation(line: 546, column: 40, scope: !1582)
!1586 = !DILocation(line: 546, column: 9, scope: !1582)
!1587 = !DILocation(line: 547, column: 24, scope: !1373)
!1588 = !DILocation(line: 547, column: 23, scope: !1373)
!1589 = !DILocation(line: 548, column: 11, scope: !1373)
!1590 = !DILocation(line: 0, scope: !1374)
!1591 = !DILocation(line: 551, column: 18, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 551, column: 7)
!1593 = !DILocation(line: 551, column: 28, scope: !1592)
!1594 = !DILocation(line: 551, column: 7, scope: !1330)
!1595 = !DILocation(line: 553, column: 14, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !1075, line: 552, column: 5)
!1597 = !DILocation(line: 554, column: 27, scope: !1596)
!1598 = !DILocation(line: 555, column: 11, scope: !1596)
!1599 = !DILocation(line: 556, column: 40, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !1075, line: 555, column: 11)
!1601 = !DILocation(line: 556, column: 16, scope: !1600)
!1602 = !DILocation(line: 558, column: 7, scope: !1330)
!1603 = !DILocation(line: 558, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 558, column: 7)
!1605 = !DILocation(line: 560, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !1075, line: 559, column: 5)
!1607 = !DILocation(line: 561, column: 7, scope: !1606)
!1608 = !DILocation(line: 563, column: 18, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 563, column: 7)
!1610 = !{!1117, !1104, i64 0}
!1611 = !DILocation(line: 563, column: 27, scope: !1609)
!1612 = !DILocation(line: 563, column: 7, scope: !1330)
!1613 = !DILocation(line: 566, column: 38, scope: !1609)
!1614 = !DILocation(line: 564, column: 12, scope: !1609)
!1615 = !DILocation(line: 564, column: 5, scope: !1609)
!1616 = !DILocation(line: 567, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1330, file: !1075, line: 567, column: 7)
!1618 = !DILocation(line: 567, column: 30, scope: !1617)
!1619 = !DILocation(line: 567, column: 7, scope: !1330)
!1620 = !DILocation(line: 568, column: 12, scope: !1617)
!1621 = !DILocation(line: 568, column: 5, scope: !1617)
!1622 = !DILocation(line: 569, column: 8, scope: !1377)
!1623 = !DILocation(line: 569, column: 34, scope: !1377)
!1624 = !DILocation(line: 569, column: 53, scope: !1377)
!1625 = !DILocation(line: 570, column: 35, scope: !1377)
!1626 = !{!1173, !1107, i64 48}
!1627 = !DILocation(line: 570, column: 8, scope: !1377)
!1628 = !DILocation(line: 570, column: 55, scope: !1377)
!1629 = !DILocation(line: 569, column: 7, scope: !1330)
!1630 = !DILocation(line: 575, column: 43, scope: !1376)
!1631 = !DILocation(line: 575, column: 14, scope: !1376)
!1632 = !DILocation(line: 0, scope: !1376)
!1633 = !DILocation(line: 576, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1376, file: !1075, line: 576, column: 11)
!1635 = !DILocation(line: 576, column: 11, scope: !1376)
!1636 = !DILocation(line: 577, column: 16, scope: !1634)
!1637 = !DILocation(line: 577, column: 9, scope: !1634)
!1638 = !DILocation(line: 581, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !1075, line: 580, column: 9)
!1640 = !DILocation(line: 582, column: 17, scope: !1639)
!1641 = !DILocation(line: 492, column: 12, scope: !1511)
!1642 = !DILocation(line: 585, column: 7, scope: !1380)
!1643 = !DILocation(line: 585, column: 27, scope: !1380)
!1644 = !DILocation(line: 585, column: 7, scope: !1330)
!1645 = !DILocation(line: 586, column: 5, scope: !1379)
!1646 = !DILocation(line: 0, scope: !1379)
!1647 = !DILocation(line: 0, scope: !1384)
!1648 = !DILocation(line: 588, column: 25, scope: !1383)
!1649 = !DILocation(line: 588, column: 3, scope: !1384)
!1650 = !DILocation(line: 590, column: 5, scope: !1382)
!1651 = !DILocation(line: 591, column: 7, scope: !1382)
!1652 = !DILocation(line: 593, column: 7, scope: !1382)
!1653 = !DILocation(line: 601, column: 11, scope: !1382)
!1654 = !DILocation(line: 601, column: 16, scope: !1382)
!1655 = !{!1103, !1104, i64 28}
!1656 = !DILocation(line: 602, column: 5, scope: !1382)
!1657 = !DILocation(line: 603, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 603, column: 9)
!1659 = !DILocation(line: 603, column: 22, scope: !1658)
!1660 = !DILocation(line: 603, column: 9, scope: !1382)
!1661 = !DILocation(line: 604, column: 31, scope: !1658)
!1662 = !DILocation(line: 604, column: 37, scope: !1658)
!1663 = !DILocation(line: 604, column: 14, scope: !1658)
!1664 = !DILocation(line: 604, column: 7, scope: !1658)
!1665 = !DILocation(line: 605, column: 29, scope: !1382)
!1666 = !DILocation(line: 605, column: 35, scope: !1382)
!1667 = !DILocation(line: 605, column: 12, scope: !1382)
!1668 = !DILocation(line: 607, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 607, column: 9)
!1670 = !DILocation(line: 607, column: 32, scope: !1669)
!1671 = !DILocation(line: 607, column: 9, scope: !1382)
!1672 = !DILocation(line: 608, column: 31, scope: !1669)
!1673 = !DILocation(line: 608, column: 37, scope: !1669)
!1674 = !DILocation(line: 608, column: 14, scope: !1669)
!1675 = !DILocation(line: 608, column: 7, scope: !1669)
!1676 = !DILocation(line: 609, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 609, column: 9)
!1678 = !DILocation(line: 609, column: 15, scope: !1677)
!1679 = !{!1103, !1106, i64 12904}
!1680 = !DILocation(line: 609, column: 30, scope: !1677)
!1681 = !DILocation(line: 609, column: 9, scope: !1382)
!1682 = !DILocation(line: 610, column: 34, scope: !1677)
!1683 = !DILocation(line: 610, column: 27, scope: !1677)
!1684 = !DILocation(line: 610, column: 7, scope: !1677)
!1685 = !DILocation(line: 611, column: 15, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 611, column: 9)
!1687 = !{!1103, !1106, i64 12912}
!1688 = !DILocation(line: 611, column: 27, scope: !1686)
!1689 = !DILocation(line: 611, column: 9, scope: !1382)
!1690 = !DILocation(line: 612, column: 31, scope: !1686)
!1691 = !DILocation(line: 612, column: 24, scope: !1686)
!1692 = !DILocation(line: 612, column: 7, scope: !1686)
!1693 = !DILocation(line: 613, column: 11, scope: !1382)
!1694 = !DILocation(line: 614, column: 15, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 614, column: 9)
!1696 = !DILocation(line: 614, column: 9, scope: !1382)
!1697 = !DILocation(line: 615, column: 30, scope: !1695)
!1698 = !DILocation(line: 615, column: 13, scope: !1695)
!1699 = !DILocation(line: 616, column: 15, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 616, column: 9)
!1701 = !DILocation(line: 616, column: 9, scope: !1382)
!1702 = !DILocalVariable(name: "value", arg: 1, scope: !1703, file: !1704, line: 68, type: !1707)
!1703 = distinct !DISubprogram(name: "StringToLong", scope: !1704, file: !1704, line: 68, type: !1705, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1708)
!1704 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!701, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !816)
!1708 = !{!1702}
!1709 = !DILocation(line: 0, scope: !1703, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 618, column: 45, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1700, file: !1075, line: 617, column: 7)
!1712 = !DILocation(line: 70, column: 10, scope: !1703, inlinedAt: !1710)
!1713 = !DILocation(line: 618, column: 27, scope: !1711)
!1714 = !DILocation(line: 618, column: 9, scope: !1711)
!1715 = !DILocation(line: 618, column: 15, scope: !1711)
!1716 = !DILocation(line: 618, column: 26, scope: !1711)
!1717 = !{!1103, !1104, i64 24}
!1718 = !DILocation(line: 619, column: 16, scope: !1711)
!1719 = !DILocation(line: 620, column: 36, scope: !1711)
!1720 = !DILocation(line: 620, column: 16, scope: !1711)
!1721 = !DILocation(line: 621, column: 7, scope: !1711)
!1722 = !DILocation(line: 622, column: 28, scope: !1382)
!1723 = !DILocation(line: 622, column: 11, scope: !1382)
!1724 = !DILocation(line: 623, column: 15, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 623, column: 9)
!1726 = !DILocation(line: 623, column: 9, scope: !1382)
!1727 = !DILocation(line: 625, column: 27, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !1075, line: 624, column: 7)
!1729 = !DILocation(line: 625, column: 33, scope: !1728)
!1730 = !{!1103, !1110, i64 264}
!1731 = !DILocation(line: 625, column: 26, scope: !1728)
!1732 = !{!1733, !1110, i64 0}
!1733 = !{!"_GeometryInfo", !1110, i64 0, !1110, i64 8, !1110, i64 16, !1110, i64 24, !1110, i64 32}
!1734 = !DILocation(line: 626, column: 28, scope: !1728)
!1735 = !{!1733, !1110, i64 8}
!1736 = !DILocation(line: 627, column: 15, scope: !1728)
!1737 = !DILocation(line: 628, column: 27, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1728, file: !1075, line: 628, column: 13)
!1739 = !DILocation(line: 628, column: 33, scope: !1738)
!1740 = !DILocation(line: 628, column: 13, scope: !1728)
!1741 = !DILocation(line: 630, column: 36, scope: !1728)
!1742 = !DILocation(line: 629, column: 44, scope: !1738)
!1743 = !DILocation(line: 629, column: 47, scope: !1738)
!1744 = !DILocation(line: 629, column: 11, scope: !1738)
!1745 = !DILocation(line: 629, column: 17, scope: !1738)
!1746 = !DILocation(line: 629, column: 29, scope: !1738)
!1747 = !DILocation(line: 630, column: 16, scope: !1728)
!1748 = !DILocation(line: 631, column: 7, scope: !1728)
!1749 = !DILocation(line: 632, column: 28, scope: !1382)
!1750 = !DILocation(line: 632, column: 11, scope: !1382)
!1751 = !DILocation(line: 633, column: 15, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 633, column: 9)
!1753 = !DILocation(line: 633, column: 9, scope: !1382)
!1754 = !DILocation(line: 635, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !1075, line: 634, column: 7)
!1756 = !DILocation(line: 635, column: 33, scope: !1755)
!1757 = !{!1103, !1110, i64 272}
!1758 = !DILocation(line: 635, column: 26, scope: !1755)
!1759 = !DILocation(line: 636, column: 28, scope: !1755)
!1760 = !DILocation(line: 637, column: 15, scope: !1755)
!1761 = !DILocation(line: 638, column: 27, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1755, file: !1075, line: 638, column: 13)
!1763 = !DILocation(line: 638, column: 33, scope: !1762)
!1764 = !DILocation(line: 638, column: 13, scope: !1755)
!1765 = !DILocation(line: 640, column: 36, scope: !1755)
!1766 = !DILocation(line: 639, column: 44, scope: !1762)
!1767 = !DILocation(line: 639, column: 47, scope: !1762)
!1768 = !DILocation(line: 639, column: 11, scope: !1762)
!1769 = !DILocation(line: 639, column: 17, scope: !1762)
!1770 = !DILocation(line: 639, column: 29, scope: !1762)
!1771 = !DILocation(line: 640, column: 16, scope: !1755)
!1772 = !DILocation(line: 641, column: 7, scope: !1755)
!1773 = !DILocation(line: 642, column: 28, scope: !1382)
!1774 = !DILocation(line: 642, column: 11, scope: !1382)
!1775 = !DILocation(line: 643, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 643, column: 9)
!1777 = !DILocation(line: 643, column: 9, scope: !1382)
!1778 = !DILocation(line: 644, column: 30, scope: !1776)
!1779 = !DILocation(line: 644, column: 13, scope: !1776)
!1780 = !DILocation(line: 645, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 645, column: 9)
!1782 = !DILocation(line: 645, column: 9, scope: !1382)
!1783 = !DILocation(line: 0, scope: !1703, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 647, column: 39, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !1075, line: 646, column: 7)
!1786 = !DILocation(line: 70, column: 10, scope: !1703, inlinedAt: !1784)
!1787 = !DILocation(line: 647, column: 21, scope: !1785)
!1788 = !DILocation(line: 647, column: 9, scope: !1785)
!1789 = !DILocation(line: 647, column: 15, scope: !1785)
!1790 = !DILocation(line: 647, column: 20, scope: !1785)
!1791 = !{!1103, !1104, i64 224}
!1792 = !DILocation(line: 648, column: 16, scope: !1785)
!1793 = !DILocation(line: 649, column: 36, scope: !1785)
!1794 = !DILocation(line: 649, column: 16, scope: !1785)
!1795 = !DILocation(line: 650, column: 7, scope: !1785)
!1796 = !DILocation(line: 651, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 651, column: 9)
!1798 = !DILocation(line: 651, column: 15, scope: !1797)
!1799 = !DILocation(line: 651, column: 20, scope: !1797)
!1800 = !{!1103, !1106, i64 280}
!1801 = !DILocation(line: 651, column: 26, scope: !1797)
!1802 = !DILocation(line: 651, column: 9, scope: !1382)
!1803 = !DILocation(line: 652, column: 30, scope: !1797)
!1804 = !DILocation(line: 652, column: 23, scope: !1797)
!1805 = !DILocation(line: 652, column: 7, scope: !1797)
!1806 = !DILocation(line: 653, column: 20, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 653, column: 9)
!1808 = !{!1103, !1106, i64 288}
!1809 = !DILocation(line: 653, column: 27, scope: !1807)
!1810 = !DILocation(line: 653, column: 9, scope: !1382)
!1811 = !DILocation(line: 654, column: 31, scope: !1807)
!1812 = !DILocation(line: 654, column: 24, scope: !1807)
!1813 = !DILocation(line: 654, column: 7, scope: !1807)
!1814 = !DILocation(line: 655, column: 12, scope: !1382)
!1815 = !DILocation(line: 0, scope: !1382)
!1816 = !DILocation(line: 656, column: 16, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 656, column: 9)
!1818 = !DILocation(line: 656, column: 9, scope: !1382)
!1819 = !DILocation(line: 658, column: 53, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !1075, line: 657, column: 7)
!1821 = !DILocation(line: 658, column: 18, scope: !1820)
!1822 = !DILocation(line: 659, column: 33, scope: !1820)
!1823 = !DILocation(line: 659, column: 16, scope: !1820)
!1824 = !DILocation(line: 660, column: 18, scope: !1820)
!1825 = !DILocation(line: 661, column: 7, scope: !1820)
!1826 = !DILocation(line: 662, column: 12, scope: !1382)
!1827 = !DILocation(line: 663, column: 16, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 663, column: 9)
!1829 = !DILocation(line: 663, column: 9, scope: !1382)
!1830 = !DILocation(line: 665, column: 53, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !1075, line: 664, column: 7)
!1832 = !DILocation(line: 665, column: 18, scope: !1831)
!1833 = !DILocation(line: 666, column: 33, scope: !1831)
!1834 = !DILocation(line: 666, column: 16, scope: !1831)
!1835 = !DILocation(line: 667, column: 18, scope: !1831)
!1836 = !DILocation(line: 668, column: 7, scope: !1831)
!1837 = !DILocation(line: 669, column: 12, scope: !1382)
!1838 = !DILocation(line: 670, column: 16, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 670, column: 9)
!1840 = !DILocation(line: 670, column: 9, scope: !1382)
!1841 = !DILocation(line: 672, column: 53, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !1075, line: 671, column: 7)
!1843 = !DILocation(line: 672, column: 18, scope: !1842)
!1844 = !DILocation(line: 673, column: 33, scope: !1842)
!1845 = !DILocation(line: 673, column: 16, scope: !1842)
!1846 = !DILocation(line: 674, column: 18, scope: !1842)
!1847 = !DILocation(line: 675, column: 7, scope: !1842)
!1848 = !DILocation(line: 676, column: 23, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 676, column: 9)
!1850 = !DILocation(line: 676, column: 29, scope: !1849)
!1851 = !DILocation(line: 676, column: 9, scope: !1849)
!1852 = !DILocation(line: 676, column: 44, scope: !1849)
!1853 = !DILocation(line: 676, column: 9, scope: !1382)
!1854 = !DILocation(line: 677, column: 47, scope: !1849)
!1855 = !DILocation(line: 677, column: 53, scope: !1849)
!1856 = !DILocation(line: 677, column: 14, scope: !1849)
!1857 = !DILocation(line: 677, column: 7, scope: !1849)
!1858 = !DILocation(line: 678, column: 21, scope: !1391)
!1859 = !{!1173, !1107, i64 32}
!1860 = !DILocation(line: 678, column: 29, scope: !1391)
!1861 = !DILocation(line: 678, column: 47, scope: !1391)
!1862 = !DILocation(line: 679, column: 21, scope: !1391)
!1863 = !{!1173, !1107, i64 296}
!1864 = !DILocation(line: 679, column: 28, scope: !1391)
!1865 = !DILocation(line: 678, column: 9, scope: !1382)
!1866 = !DILocation(line: 681, column: 9, scope: !1390)
!1867 = !DILocation(line: 682, column: 11, scope: !1390)
!1868 = !DILocation(line: 684, column: 15, scope: !1390)
!1869 = !DILocation(line: 685, column: 14, scope: !1396)
!1870 = !DILocation(line: 685, column: 20, scope: !1396)
!1871 = !DILocation(line: 685, column: 40, scope: !1396)
!1872 = !{!1113, !1106, i64 0}
!1873 = !DILocation(line: 685, column: 28, scope: !1396)
!1874 = !DILocation(line: 685, column: 47, scope: !1396)
!1875 = !DILocation(line: 686, column: 20, scope: !1396)
!1876 = !DILocation(line: 686, column: 37, scope: !1396)
!1877 = !{!1113, !1106, i64 8}
!1878 = !DILocation(line: 686, column: 25, scope: !1396)
!1879 = !DILocation(line: 685, column: 13, scope: !1390)
!1880 = !DILocation(line: 688, column: 41, scope: !1394)
!1881 = !DILocation(line: 693, column: 28, scope: !1393)
!1882 = !DILocation(line: 0, scope: !1393)
!1883 = !DILocation(line: 694, column: 32, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1393, file: !1075, line: 694, column: 21)
!1885 = !DILocation(line: 694, column: 21, scope: !1393)
!1886 = !DILocation(line: 698, column: 47, scope: !1399)
!1887 = !DILocation(line: 703, column: 61, scope: !1398)
!1888 = !DILocation(line: 703, column: 25, scope: !1398)
!1889 = !DILocation(line: 705, column: 42, scope: !1398)
!1890 = !DILocation(line: 705, column: 56, scope: !1398)
!1891 = !DILocation(line: 705, column: 71, scope: !1398)
!1892 = !DILocation(line: 706, column: 27, scope: !1398)
!1893 = !{!1103, !1104, i64 400}
!1894 = !DILocation(line: 706, column: 40, scope: !1398)
!1895 = !{!1103, !1110, i64 384}
!1896 = !DILocation(line: 705, column: 30, scope: !1398)
!1897 = !DILocation(line: 0, scope: !1398)
!1898 = !DILocation(line: 707, column: 34, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1398, file: !1075, line: 707, column: 23)
!1900 = !DILocation(line: 707, column: 23, scope: !1398)
!1901 = !DILocation(line: 0, scope: !1394)
!1902 = !DILocation(line: 711, column: 7, scope: !1391)
!1903 = !DILocation(line: 711, column: 7, scope: !1390)
!1904 = !DILocation(line: 712, column: 29, scope: !1382)
!1905 = !DILocation(line: 712, column: 13, scope: !1382)
!1906 = !DILocation(line: 713, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 713, column: 9)
!1908 = !DILocation(line: 713, column: 9, scope: !1382)
!1909 = !DILocation(line: 714, column: 31, scope: !1907)
!1910 = !DILocation(line: 714, column: 15, scope: !1907)
!1911 = !DILocation(line: 715, column: 17, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 715, column: 9)
!1913 = !DILocation(line: 715, column: 9, scope: !1382)
!1914 = !DILocation(line: 720, column: 29, scope: !1382)
!1915 = !DILocation(line: 717, column: 36, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !1075, line: 716, column: 7)
!1917 = !DILocation(line: 717, column: 9, scope: !1916)
!1918 = !DILocation(line: 717, column: 29, scope: !1916)
!1919 = !DILocation(line: 717, column: 35, scope: !1916)
!1920 = !{!1103, !1106, i64 13008}
!1921 = !DILocation(line: 718, column: 34, scope: !1916)
!1922 = !DILocation(line: 718, column: 9, scope: !1916)
!1923 = !DILocation(line: 718, column: 29, scope: !1916)
!1924 = !DILocation(line: 718, column: 33, scope: !1916)
!1925 = !{!1103, !1107, i64 13016}
!1926 = !DILocation(line: 719, column: 7, scope: !1916)
!1927 = !DILocation(line: 720, column: 13, scope: !1382)
!1928 = !DILocation(line: 721, column: 17, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 721, column: 9)
!1930 = !DILocation(line: 721, column: 9, scope: !1382)
!1931 = !DILocation(line: 722, column: 31, scope: !1929)
!1932 = !DILocation(line: 722, column: 15, scope: !1929)
!1933 = !DILocation(line: 723, column: 17, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 723, column: 9)
!1935 = !DILocation(line: 723, column: 9, scope: !1382)
!1936 = !DILocation(line: 728, column: 47, scope: !1382)
!1937 = !DILocation(line: 725, column: 35, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !1075, line: 724, column: 7)
!1939 = !DILocation(line: 725, column: 9, scope: !1938)
!1940 = !DILocation(line: 725, column: 28, scope: !1938)
!1941 = !DILocation(line: 725, column: 34, scope: !1938)
!1942 = !{!1103, !1106, i64 13040}
!1943 = !DILocation(line: 726, column: 33, scope: !1938)
!1944 = !DILocation(line: 726, column: 9, scope: !1938)
!1945 = !DILocation(line: 726, column: 28, scope: !1938)
!1946 = !DILocation(line: 726, column: 32, scope: !1938)
!1947 = !{!1103, !1107, i64 13048}
!1948 = !DILocation(line: 727, column: 7, scope: !1938)
!1949 = !DILocation(line: 728, column: 29, scope: !1382)
!1950 = !DILocation(line: 728, column: 54, scope: !1382)
!1951 = !{!1952, !1106, i64 88}
!1952 = !{!"stat", !1106, i64 0, !1106, i64 8, !1106, i64 16, !1118, i64 24, !1118, i64 28, !1118, i64 32, !1118, i64 36, !1106, i64 40, !1106, i64 48, !1106, i64 56, !1106, i64 64, !1953, i64 72, !1953, i64 88, !1953, i64 104, !1104, i64 120}
!1953 = !{!"timespec", !1106, i64 0, !1106, i64 8}
!1954 = !DILocation(line: 728, column: 12, scope: !1382)
!1955 = !DILocation(line: 730, column: 29, scope: !1382)
!1956 = !DILocation(line: 730, column: 12, scope: !1382)
!1957 = !DILocation(line: 731, column: 47, scope: !1382)
!1958 = !DILocation(line: 731, column: 29, scope: !1382)
!1959 = !DILocation(line: 731, column: 54, scope: !1382)
!1960 = !{!1952, !1106, i64 104}
!1961 = !DILocation(line: 731, column: 12, scope: !1382)
!1962 = !DILocation(line: 733, column: 29, scope: !1382)
!1963 = !DILocation(line: 733, column: 12, scope: !1382)
!1964 = !DILocation(line: 734, column: 12, scope: !1382)
!1965 = !DILocation(line: 735, column: 16, scope: !1402)
!1966 = !DILocation(line: 735, column: 9, scope: !1382)
!1967 = !DILocation(line: 737, column: 9, scope: !1401)
!1968 = !DILocation(line: 738, column: 11, scope: !1401)
!1969 = !DILocation(line: 740, column: 15, scope: !1401)
!1970 = !DILocation(line: 741, column: 20, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1401, file: !1075, line: 741, column: 13)
!1972 = !DILocation(line: 741, column: 36, scope: !1971)
!1973 = !DILocation(line: 741, column: 13, scope: !1401)
!1974 = !DILocation(line: 743, column: 17, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1075, line: 743, column: 17)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !1075, line: 742, column: 11)
!1977 = !DILocation(line: 743, column: 23, scope: !1975)
!1978 = !{!1103, !1106, i64 440}
!1979 = !DILocation(line: 743, column: 60, scope: !1975)
!1980 = !DILocation(line: 743, column: 63, scope: !1975)
!1981 = !DILocation(line: 743, column: 40, scope: !1975)
!1982 = !DILocation(line: 743, column: 31, scope: !1975)
!1983 = !DILocation(line: 743, column: 29, scope: !1975)
!1984 = !DILocation(line: 743, column: 17, scope: !1976)
!1985 = !DILocation(line: 744, column: 26, scope: !1975)
!1986 = !DILocation(line: 744, column: 15, scope: !1975)
!1987 = !DILocation(line: 747, column: 22, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1971, file: !1075, line: 747, column: 15)
!1989 = !DILocation(line: 747, column: 35, scope: !1988)
!1990 = !DILocation(line: 747, column: 15, scope: !1971)
!1991 = !DILocation(line: 749, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1075, line: 749, column: 19)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !1075, line: 748, column: 13)
!1994 = !DILocation(line: 749, column: 25, scope: !1992)
!1995 = !DILocation(line: 749, column: 62, scope: !1992)
!1996 = !DILocation(line: 749, column: 65, scope: !1992)
!1997 = !DILocation(line: 749, column: 42, scope: !1992)
!1998 = !DILocation(line: 749, column: 33, scope: !1992)
!1999 = !DILocation(line: 749, column: 31, scope: !1992)
!2000 = !DILocation(line: 749, column: 19, scope: !1993)
!2001 = !DILocation(line: 750, column: 70, scope: !1992)
!2002 = !DILocation(line: 750, column: 75, scope: !1992)
!2003 = !DILocation(line: 750, column: 50, scope: !1992)
!2004 = !DILocation(line: 750, column: 40, scope: !1992)
!2005 = !DILocation(line: 750, column: 23, scope: !1992)
!2006 = !DILocation(line: 750, column: 39, scope: !1992)
!2007 = !{!1103, !1106, i64 448}
!2008 = !DILocation(line: 750, column: 17, scope: !1992)
!2009 = !DILocation(line: 753, column: 54, scope: !1988)
!2010 = !DILocation(line: 753, column: 57, scope: !1988)
!2011 = !DILocation(line: 753, column: 34, scope: !1988)
!2012 = !DILocation(line: 753, column: 25, scope: !1988)
!2013 = !DILocation(line: 753, column: 13, scope: !1988)
!2014 = !DILocation(line: 753, column: 19, scope: !1988)
!2015 = !DILocation(line: 753, column: 24, scope: !1988)
!2016 = !DILocation(line: 754, column: 20, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1401, file: !1075, line: 754, column: 13)
!2018 = !DILocation(line: 754, column: 34, scope: !2017)
!2019 = !DILocation(line: 754, column: 13, scope: !1401)
!2020 = !DILocation(line: 755, column: 64, scope: !2017)
!2021 = !DILocation(line: 755, column: 69, scope: !2017)
!2022 = !DILocation(line: 755, column: 44, scope: !2017)
!2023 = !DILocation(line: 755, column: 34, scope: !2017)
!2024 = !DILocation(line: 755, column: 17, scope: !2017)
!2025 = !DILocation(line: 755, column: 33, scope: !2017)
!2026 = !DILocation(line: 755, column: 11, scope: !2017)
!2027 = !DILocation(line: 756, column: 7, scope: !1402)
!2028 = !DILocation(line: 756, column: 7, scope: !1401)
!2029 = !DILocation(line: 757, column: 12, scope: !1382)
!2030 = !DILocation(line: 758, column: 16, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 758, column: 9)
!2032 = !DILocation(line: 758, column: 9, scope: !1382)
!2033 = !DILocation(line: 759, column: 35, scope: !2031)
!2034 = !DILocation(line: 759, column: 21, scope: !2031)
!2035 = !DILocation(line: 759, column: 7, scope: !2031)
!2036 = !DILocation(line: 759, column: 13, scope: !2031)
!2037 = !DILocation(line: 759, column: 20, scope: !2031)
!2038 = !{!1103, !1104, i64 420}
!2039 = !DILocation(line: 761, column: 20, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1382, file: !1075, line: 761, column: 9)
!2041 = !DILocation(line: 761, column: 28, scope: !2040)
!2042 = !DILocation(line: 761, column: 9, scope: !1382)
!2043 = !DILocation(line: 762, column: 28, scope: !2040)
!2044 = !DILocation(line: 762, column: 33, scope: !2040)
!2045 = !DILocation(line: 762, column: 14, scope: !2040)
!2046 = !DILocation(line: 762, column: 7, scope: !2040)
!2047 = !DILocation(line: 763, column: 11, scope: !1382)
!2048 = !DILocation(line: 764, column: 3, scope: !1383)
!2049 = !DILocation(line: 588, column: 49, scope: !1383)
!2050 = distinct !{!2050, !1649, !2051, !1295, !1296}
!2051 = !DILocation(line: 764, column: 3, scope: !1384)
!2052 = !DILocation(line: 765, column: 13, scope: !1330)
!2053 = !DILocation(line: 766, column: 10, scope: !1330)
!2054 = !DILocation(line: 766, column: 3, scope: !1330)
!2055 = !DILocation(line: 767, column: 1, scope: !1330)
!2056 = !DISubprogram(name: "IsRightsAuthorized", scope: !487, file: !487, line: 59, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!645, !2059, !2060, !816}
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!2061 = !DISubprogram(name: "GetMagickInfo", scope: !481, file: !481, line: 134, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!988, !816, !1006}
!2064 = !DISubprogram(name: "GetMagickEndianSupport", scope: !481, file: !481, line: 126, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!645, !988}
!2067 = !DISubprogram(name: "GetMagickRawSupport", scope: !481, file: !481, line: 127, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2068 = !DISubprogram(name: "GetMagickSeekableStream", scope: !481, file: !481, line: 128, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2069 = !DISubprogram(name: "OpenBlob", scope: !504, file: !504, line: 84, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!645, !1004, !709, !2072, !1006}
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobMode", file: !504, line: 44, baseType: !503)
!2074 = !DISubprogram(name: "IsBlobSeekable", scope: !2075, file: !2075, line: 52, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2075 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!645, !912}
!2078 = !DISubprogram(name: "ImageToFile", scope: !2075, file: !2075, line: 48, type: !2079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!645, !709, !650, !1006}
!2081 = !DISubprogram(name: "CloseBlob", scope: !504, file: !504, line: 82, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2082 = !DISubprogram(name: "GetImageDecoder", scope: !481, file: !481, line: 113, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!1000, !988}
!2085 = !DISubprogram(name: "GetDelegateInfo", scope: !1039, file: !1039, line: 64, type: !2086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!1036, !816, !816, !1006}
!2088 = !DISubprogram(name: "GetMagickThreadSupport", scope: !481, file: !481, line: 142, type: !2089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!1028, !988}
!2091 = !DISubprogram(name: "LockSemaphoreInfo", scope: !857, file: !857, line: 37, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !855}
!2094 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !857, file: !857, line: 39, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2095 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !2096, file: !2096, line: 47, type: !2097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2096 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!645, !816}
!2099 = !DISubprogram(name: "GetDelegateThreadSupport", scope: !1039, file: !1039, line: 72, type: !2100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!645, !1036}
!2102 = !DISubprogram(name: "InvokeDelegate", scope: !1039, file: !1039, line: 73, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!645, !636, !709, !816, !816, !1006}
!2105 = !DISubprogram(name: "DestroyImageList", scope: !1323, file: !1323, line: 28, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2106 = !DISubprogram(name: "IsPathAccessible", scope: !519, file: !519, line: 53, type: !2097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2107 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!650, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!2111 = !DISubprogram(name: "DestroyString", scope: !1058, file: !1058, line: 46, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!650, !650}
!2114 = !DISubprogram(name: "IsBlobTemporary", scope: !2075, file: !2075, line: 53, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2115 = !DISubprogram(name: "GetNextImageInList", scope: !1323, file: !1323, line: 33, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!709, !912}
!2118 = !DISubprogram(name: "IsSceneGeometry", scope: !153, file: !153, line: 137, type: !2119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!645, !816, !1222}
!2121 = !DISubprogram(name: "CloneImages", scope: !1323, file: !1323, line: 27, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!709, !912, !816, !1006}
!2124 = !DISubprogram(name: "GetFirstImageInList", scope: !1323, file: !1323, line: 30, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2125 = !DISubprogram(name: "GetBlobError", scope: !2075, file: !2075, line: 47, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2126 = !DISubprogram(name: "GetPathComponent", scope: !519, file: !519, line: 68, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !816, !2129, !650}
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !519, line: 36, baseType: !518)
!2130 = !DISubprogram(name: "GetImageProperty", scope: !2131, file: !2131, line: 31, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2131 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!816, !912, !816}
!2134 = !DISubprogram(name: "DeleteImageProperty", scope: !2131, file: !2131, line: 37, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!645, !709, !816}
!2137 = !DISubprogram(name: "ParseGeometry", scope: !153, file: !153, line: 143, type: !2138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1028, !816, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!2141 = !DISubprogram(name: "GetImageOption", scope: !559, file: !559, line: 158, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!816, !1004, !816}
!2144 = !DISubprogram(name: "InterpretImageProperties", scope: !2131, file: !2131, line: 27, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!650, !1004, !709, !816}
!2147 = !DISubprogram(name: "SetImageProperty", scope: !2131, file: !2131, line: 40, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!645, !709, !816, !816}
!2150 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !153, file: !153, line: 141, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!1028, !816, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!2154 = !DISubprogram(name: "CropImage", scope: !2155, file: !2155, line: 29, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2155 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38be0c2b8a82bf966e7f55606c3e2192")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!709, !912, !2158, !1006}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!2160 = !DISubprogram(name: "ReplaceImageInList", scope: !1323, file: !1323, line: 56, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !1329, !709}
!2163 = !DISubprogram(name: "ParseRegionGeometry", scope: !153, file: !153, line: 148, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!1028, !912, !816, !2153, !1006}
!2166 = !DISubprogram(name: "ResizeImage", scope: !2167, file: !2167, line: 38, type: !2168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2167 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!709, !912, !916, !916, !2170, !2171, !1006}
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!2172 = !DISubprogram(name: "GetImageProfile", scope: !89, file: !89, line: 55, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!1055, !912, !816}
!2175 = !DISubprogram(name: "GetStringInfoLength", scope: !1058, file: !1058, line: 80, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!656, !1055}
!2178 = !DISubprogram(name: "GetStringInfoDatum", scope: !1058, file: !1058, line: 97, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!871, !1055}
!2181 = !DISubprogram(name: "FormatMagickTime", scope: !1058, file: !1058, line: 84, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!697, !2184, !916, !650}
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!2185 = !DISubprogram(name: "GetBlobProperties", scope: !504, file: !504, line: 69, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!2188, !912}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2191, line: 46, size: 1152, elements: !2192)
!2191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!2192 = !{!2193, !2195, !2197, !2199, !2201, !2203, !2205, !2206, !2207, !2208, !2210, !2212, !2219, !2220, !2221}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2190, file: !2191, line: 48, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !700, line: 145, baseType: !635)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2190, file: !2191, line: 53, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !700, line: 148, baseType: !635)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2190, file: !2191, line: 61, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !700, line: 151, baseType: !635)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2190, file: !2191, line: 62, baseType: !2200, size: 32, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !700, line: 150, baseType: !5)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2190, file: !2191, line: 64, baseType: !2202, size: 32, offset: 224)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !700, line: 146, baseType: !5)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2190, file: !2191, line: 65, baseType: !2204, size: 32, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !700, line: 147, baseType: !5)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2190, file: !2191, line: 67, baseType: !560, size: 32, offset: 288)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2190, file: !2191, line: 69, baseType: !2194, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2190, file: !2191, line: 74, baseType: !944, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2190, file: !2191, line: 78, baseType: !2209, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !700, line: 174, baseType: !701)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2190, file: !2191, line: 80, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !700, line: 179, baseType: !701)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2190, file: !2191, line: 91, baseType: !2213, size: 128, offset: 576)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2214, line: 10, size: 128, elements: !2215)
!2214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2213, file: !2214, line: 12, baseType: !898, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2213, file: !2214, line: 16, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !700, line: 196, baseType: !701)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2190, file: !2191, line: 92, baseType: !2213, size: 128, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2190, file: !2191, line: 93, baseType: !2213, size: 128, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2190, file: !2191, line: 106, baseType: !2222, size: 192, offset: 960)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 192, elements: !2223)
!2223 = !{!2224}
!2224 = !DISubrange(count: 3)
!2225 = !DISubprogram(name: "ParseCommandOption", scope: !559, file: !559, line: 172, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!697, !2228, !1222, !816}
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !559, line: 99, baseType: !558)
!2230 = distinct !DISubprogram(name: "ReadImages", scope: !1075, file: !1075, line: 793, type: !1002, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2241, !2242}
!2232 = !DILocalVariable(name: "image_info", arg: 1, scope: !2230, file: !1075, line: 793, type: !1004)
!2233 = !DILocalVariable(name: "exception", arg: 2, scope: !2230, file: !1075, line: 794, type: !1006)
!2234 = !DILocalVariable(name: "filename", scope: !2230, file: !1075, line: 797, type: !836)
!2235 = !DILocalVariable(name: "image", scope: !2230, file: !1075, line: 800, type: !709)
!2236 = !DILocalVariable(name: "images", scope: !2230, file: !1075, line: 801, type: !709)
!2237 = !DILocalVariable(name: "read_info", scope: !2230, file: !1075, line: 804, type: !636)
!2238 = !DILocalVariable(name: "sans", scope: !2239, file: !1075, line: 820, type: !1006)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !1075, line: 818, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2230, file: !1075, line: 817, column: 7)
!2241 = !DILocalVariable(name: "extent", scope: !2239, file: !1075, line: 823, type: !697)
!2242 = !DILocalVariable(name: "scene", scope: !2239, file: !1075, line: 824, type: !697)
!2243 = !DILocation(line: 0, scope: !2230)
!2244 = !DILocation(line: 796, column: 3, scope: !2230)
!2245 = !DILocation(line: 797, column: 5, scope: !2230)
!2246 = !DILocation(line: 799, column: 3, scope: !2230)
!2247 = !DILocation(line: 811, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2230, file: !1075, line: 811, column: 7)
!2249 = !DILocation(line: 811, column: 25, scope: !2248)
!2250 = !DILocation(line: 811, column: 7, scope: !2230)
!2251 = !DILocation(line: 813, column: 19, scope: !2248)
!2252 = !DILocation(line: 812, column: 12, scope: !2248)
!2253 = !DILocation(line: 812, column: 5, scope: !2248)
!2254 = !DILocation(line: 815, column: 71, scope: !2230)
!2255 = !DILocation(line: 816, column: 23, scope: !2230)
!2256 = !DILocation(line: 816, column: 5, scope: !2230)
!2257 = !DILocation(line: 815, column: 10, scope: !2230)
!2258 = !DILocation(line: 817, column: 7, scope: !2240)
!2259 = !DILocation(line: 817, column: 52, scope: !2240)
!2260 = !DILocation(line: 817, column: 7, scope: !2230)
!2261 = !DILocation(line: 829, column: 17, scope: !2239)
!2262 = !DILocation(line: 830, column: 12, scope: !2239)
!2263 = !DILocation(line: 0, scope: !2239)
!2264 = !DILocation(line: 831, column: 14, scope: !2239)
!2265 = !DILocation(line: 832, column: 12, scope: !2239)
!2266 = !DILocation(line: 833, column: 22, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2239, file: !1075, line: 833, column: 11)
!2268 = !DILocation(line: 833, column: 36, scope: !2267)
!2269 = !DILocation(line: 833, column: 11, scope: !2239)
!2270 = !DILocation(line: 835, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !1075, line: 834, column: 9)
!2272 = !DILocation(line: 836, column: 18, scope: !2271)
!2273 = !DILocation(line: 836, column: 11, scope: !2271)
!2274 = !DILocation(line: 838, column: 51, scope: !2239)
!2275 = !DILocation(line: 838, column: 14, scope: !2239)
!2276 = !DILocation(line: 839, column: 14, scope: !2239)
!2277 = !DILocation(line: 839, column: 13, scope: !2239)
!2278 = !DILocation(line: 840, column: 36, scope: !2239)
!2279 = !DILocation(line: 840, column: 53, scope: !2239)
!2280 = !DILocation(line: 840, column: 41, scope: !2239)
!2281 = !DILocation(line: 841, column: 52, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !1075, line: 841, column: 7)
!2283 = distinct !DILexicalBlock(scope: !2239, file: !1075, line: 841, column: 7)
!2284 = !DILocation(line: 841, column: 7, scope: !2283)
!2285 = !DILocation(line: 843, column: 74, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !1075, line: 842, column: 7)
!2287 = !DILocation(line: 843, column: 16, scope: !2286)
!2288 = !DILocation(line: 845, column: 15, scope: !2286)
!2289 = !DILocation(line: 846, column: 19, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !1075, line: 846, column: 13)
!2291 = !DILocation(line: 846, column: 13, scope: !2286)
!2292 = !DILocation(line: 848, column: 9, scope: !2286)
!2293 = !DILocation(line: 849, column: 7, scope: !2286)
!2294 = !DILocation(line: 841, column: 77, scope: !2282)
!2295 = distinct !{!2295, !2284, !2296, !1295, !1296}
!2296 = !DILocation(line: 849, column: 7, scope: !2283)
!2297 = !DILocation(line: 850, column: 17, scope: !2239)
!2298 = !DILocation(line: 851, column: 14, scope: !2239)
!2299 = !DILocation(line: 851, column: 7, scope: !2239)
!2300 = !DILocation(line: 853, column: 10, scope: !2230)
!2301 = !DILocation(line: 853, column: 3, scope: !2230)
!2302 = !DILocation(line: 854, column: 1, scope: !2230)
!2303 = distinct !DISubprogram(name: "ReadInlineImage", scope: !1075, file: !1075, line: 886, type: !2304, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!709, !1004, !816, !1006}
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2307 = !DILocalVariable(name: "image_info", arg: 1, scope: !2303, file: !1075, line: 886, type: !1004)
!2308 = !DILocalVariable(name: "content", arg: 2, scope: !2303, file: !1075, line: 887, type: !816)
!2309 = !DILocalVariable(name: "exception", arg: 3, scope: !2303, file: !1075, line: 887, type: !1006)
!2310 = !DILocalVariable(name: "image", scope: !2303, file: !1075, line: 890, type: !709)
!2311 = !DILocalVariable(name: "read_info", scope: !2303, file: !1075, line: 893, type: !636)
!2312 = !DILocalVariable(name: "blob", scope: !2303, file: !1075, line: 896, type: !871)
!2313 = !DILocalVariable(name: "length", scope: !2303, file: !1075, line: 899, type: !656)
!2314 = !DILocalVariable(name: "p", scope: !2303, file: !1075, line: 902, type: !816)
!2315 = !DILocation(line: 0, scope: !2303)
!2316 = !DILocation(line: 898, column: 3, scope: !2303)
!2317 = !DILocation(line: 907, column: 9, scope: !2303)
!2318 = !DILocation(line: 908, column: 8, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2303, file: !1075, line: 908, column: 3)
!2320 = !DILocation(line: 0, scope: !2319)
!2321 = !DILocation(line: 908, column: 20, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !1075, line: 908, column: 3)
!2323 = !DILocation(line: 908, column: 31, scope: !2322)
!2324 = !DILocation(line: 908, column: 49, scope: !2322)
!2325 = !DILocation(line: 908, column: 3, scope: !2322)
!2326 = distinct !{!2326, !2327, !2328, !1295, !1296}
!2327 = !DILocation(line: 908, column: 3, scope: !2319)
!2328 = !DILocation(line: 908, column: 53, scope: !2319)
!2329 = !DILocation(line: 910, column: 5, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1075, line: 910, column: 5)
!2331 = distinct !DILexicalBlock(scope: !2303, file: !1075, line: 909, column: 7)
!2332 = !DILocation(line: 910, column: 5, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !1075, line: 910, column: 5)
!2334 = !DILocation(line: 910, column: 5, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2333, file: !1075, line: 910, column: 5)
!2336 = !DILocation(line: 911, column: 4, scope: !2303)
!2337 = !DILocation(line: 912, column: 9, scope: !2303)
!2338 = !{!1106, !1106, i64 0}
!2339 = !DILocation(line: 913, column: 8, scope: !2303)
!2340 = !DILocation(line: 914, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2303, file: !1075, line: 914, column: 7)
!2342 = !DILocation(line: 914, column: 14, scope: !2341)
!2343 = !DILocation(line: 914, column: 7, scope: !2303)
!2344 = !DILocation(line: 915, column: 5, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !1075, line: 915, column: 5)
!2346 = !DILocation(line: 915, column: 5, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2345, file: !1075, line: 915, column: 5)
!2348 = !DILocation(line: 915, column: 5, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2347, file: !1075, line: 915, column: 5)
!2350 = !DILocation(line: 916, column: 13, scope: !2303)
!2351 = !DILocation(line: 917, column: 10, scope: !2303)
!2352 = !DILocation(line: 919, column: 15, scope: !2303)
!2353 = !DILocation(line: 919, column: 23, scope: !2303)
!2354 = !DILocation(line: 920, column: 15, scope: !2303)
!2355 = !DILocation(line: 920, column: 21, scope: !2303)
!2356 = !DILocation(line: 921, column: 36, scope: !2303)
!2357 = !DILocation(line: 921, column: 9, scope: !2303)
!2358 = !DILocation(line: 922, column: 26, scope: !2303)
!2359 = !DILocation(line: 923, column: 13, scope: !2303)
!2360 = !DILocation(line: 924, column: 3, scope: !2303)
!2361 = !DILocation(line: 925, column: 1, scope: !2303)
!2362 = !DISubprogram(name: "Base64Decode", scope: !519, file: !519, line: 62, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!871, !816, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!2366 = !DISubprogram(name: "SetImageInfoProgressMonitor", scope: !812, file: !812, line: 31, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!811, !636, !2369, !748}
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!2370 = !DISubprogram(name: "BlobToImage", scope: !2075, file: !2075, line: 41, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!709, !1004, !914, !916, !1006}
!2373 = !DISubprogram(name: "RelinquishMagickMemory", scope: !2374, file: !2374, line: 51, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2374 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!748, !748}
!2377 = distinct !DISubprogram(name: "WriteImage", scope: !1075, file: !1075, line: 955, type: !1010, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2398, !2401, !2408}
!2379 = !DILocalVariable(name: "image_info", arg: 1, scope: !2377, file: !1075, line: 955, type: !1004)
!2380 = !DILocalVariable(name: "image", arg: 2, scope: !2377, file: !1075, line: 956, type: !709)
!2381 = !DILocalVariable(name: "filename", scope: !2377, file: !1075, line: 959, type: !836)
!2382 = !DILocalVariable(name: "option", scope: !2377, file: !1075, line: 962, type: !816)
!2383 = !DILocalVariable(name: "delegate_info", scope: !2377, file: !1075, line: 965, type: !1036)
!2384 = !DILocalVariable(name: "magick_info", scope: !2377, file: !1075, line: 968, type: !988)
!2385 = !DILocalVariable(name: "sans_exception", scope: !2377, file: !1075, line: 971, type: !1006)
!2386 = !DILocalVariable(name: "write_info", scope: !2377, file: !1075, line: 974, type: !636)
!2387 = !DILocalVariable(name: "status", scope: !2377, file: !1075, line: 977, type: !645)
!2388 = !DILocalVariable(name: "temporary", scope: !2377, file: !1075, line: 978, type: !645)
!2389 = !DILocalVariable(name: "thread_support", scope: !2377, file: !1075, line: 981, type: !1028)
!2390 = !DILocalVariable(name: "domain", scope: !2377, file: !1075, line: 984, type: !1356)
!2391 = !DILocalVariable(name: "rights", scope: !2377, file: !1075, line: 987, type: !1358)
!2392 = !DILocalVariable(name: "lsb_first", scope: !2393, file: !1075, line: 1042, type: !656)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !1075, line: 1040, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !1075, line: 1038, column: 13)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !1075, line: 1035, column: 11)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !1075, line: 1034, column: 5)
!2397 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1033, column: 7)
!2398 = !DILocalVariable(name: "filename", scope: !2399, file: !1075, line: 1081, type: !836)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !1075, line: 1079, column: 5)
!2400 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1077, column: 7)
!2401 = !DILocalVariable(name: "extension", scope: !2402, file: !1075, line: 1149, type: !836)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !1075, line: 1147, column: 13)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !1075, line: 1145, column: 15)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !1075, line: 1134, column: 9)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !1075, line: 1119, column: 11)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !1075, line: 1116, column: 5)
!2407 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1102, column: 7)
!2408 = !DILocalVariable(name: "message", scope: !2409, file: !1075, line: 1188, type: !650)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !1075, line: 1188, column: 5)
!2410 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1187, column: 7)
!2411 = !DILocation(line: 0, scope: !2377)
!2412 = !DILocation(line: 958, column: 3, scope: !2377)
!2413 = !DILocation(line: 959, column: 5, scope: !2377)
!2414 = !DILocation(line: 994, column: 14, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 994, column: 7)
!2416 = !{!1103, !1104, i64 12976}
!2417 = !DILocation(line: 994, column: 20, scope: !2415)
!2418 = !DILocation(line: 994, column: 7, scope: !2377)
!2419 = !DILocation(line: 996, column: 19, scope: !2415)
!2420 = !DILocation(line: 995, column: 12, scope: !2415)
!2421 = !DILocation(line: 995, column: 5, scope: !2415)
!2422 = !DILocation(line: 999, column: 18, scope: !2377)
!2423 = !DILocation(line: 1000, column: 14, scope: !2377)
!2424 = !DILocation(line: 1001, column: 39, scope: !2377)
!2425 = !DILocation(line: 1001, column: 55, scope: !2377)
!2426 = !DILocation(line: 1001, column: 10, scope: !2377)
!2427 = !DILocation(line: 1002, column: 20, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1002, column: 7)
!2429 = !DILocation(line: 1002, column: 7, scope: !2428)
!2430 = !DILocation(line: 1002, column: 27, scope: !2428)
!2431 = !DILocation(line: 1002, column: 7, scope: !2377)
!2432 = !DILocation(line: 1003, column: 55, scope: !2428)
!2433 = !DILocation(line: 1003, column: 12, scope: !2428)
!2434 = !DILocation(line: 1003, column: 5, scope: !2428)
!2435 = !DILocation(line: 1004, column: 10, scope: !2377)
!2436 = !DILocation(line: 1005, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1005, column: 7)
!2438 = !DILocation(line: 1005, column: 52, scope: !2437)
!2439 = !DILocation(line: 1005, column: 7, scope: !2377)
!2440 = !DILocation(line: 1007, column: 18, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !1075, line: 1007, column: 11)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !1075, line: 1006, column: 5)
!2443 = !{!1103, !1107, i64 424}
!2444 = !DILocation(line: 1007, column: 28, scope: !2441)
!2445 = !DILocation(line: 1007, column: 11, scope: !2442)
!2446 = !DILocation(line: 1009, column: 47, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2441, file: !1075, line: 1008, column: 9)
!2448 = !DILocation(line: 1009, column: 18, scope: !2447)
!2449 = !DILocation(line: 1011, column: 22, scope: !2447)
!2450 = !DILocation(line: 1012, column: 11, scope: !2447)
!2451 = !DILocation(line: 1015, column: 14, scope: !2442)
!2452 = !DILocation(line: 1016, column: 5, scope: !2442)
!2453 = !DILocation(line: 1017, column: 43, scope: !2377)
!2454 = !DILocation(line: 1017, column: 10, scope: !2377)
!2455 = !DILocation(line: 1018, column: 10, scope: !2377)
!2456 = !DILocation(line: 1021, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1021, column: 7)
!2458 = !DILocation(line: 1021, column: 60, scope: !2457)
!2459 = !DILocation(line: 1021, column: 7, scope: !2377)
!2460 = !DILocation(line: 1023, column: 22, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !1075, line: 1022, column: 5)
!2462 = !DILocation(line: 1024, column: 18, scope: !2461)
!2463 = !DILocation(line: 1025, column: 7, scope: !2461)
!2464 = !DILocation(line: 1025, column: 12, scope: !2461)
!2465 = !DILocation(line: 1026, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !1075, line: 1026, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !1075, line: 1026, column: 7)
!2468 = !DILocation(line: 1031, column: 15, scope: !2377)
!2469 = !DILocation(line: 1032, column: 18, scope: !2377)
!2470 = !DILocation(line: 1033, column: 19, scope: !2397)
!2471 = !DILocation(line: 1033, column: 7, scope: !2377)
!2472 = !DILocation(line: 1035, column: 11, scope: !2395)
!2473 = !DILocation(line: 1035, column: 47, scope: !2395)
!2474 = !DILocation(line: 1035, column: 11, scope: !2396)
!2475 = !DILocation(line: 1038, column: 26, scope: !2394)
!2476 = !DILocation(line: 1038, column: 33, scope: !2394)
!2477 = !DILocation(line: 1038, column: 53, scope: !2394)
!2478 = !DILocation(line: 1039, column: 14, scope: !2394)
!2479 = !DILocation(line: 1039, column: 47, scope: !2394)
!2480 = !DILocation(line: 1038, column: 13, scope: !2395)
!2481 = !DILocation(line: 0, scope: !2395)
!2482 = !{!1103, !1104, i64 408}
!2483 = !DILocation(line: 1048, column: 10, scope: !2377)
!2484 = !DILocation(line: 1049, column: 10, scope: !2377)
!2485 = !DILocation(line: 1050, column: 15, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1050, column: 7)
!2487 = !DILocation(line: 1050, column: 39, scope: !2486)
!2488 = !DILocation(line: 1051, column: 8, scope: !2486)
!2489 = !DILocation(line: 1051, column: 29, scope: !2486)
!2490 = !DILocation(line: 1051, column: 45, scope: !2486)
!2491 = !DILocation(line: 1052, column: 20, scope: !2486)
!2492 = !{!1173, !1107, i64 40}
!2493 = !DILocation(line: 1052, column: 25, scope: !2486)
!2494 = !DILocation(line: 1052, column: 43, scope: !2486)
!2495 = !DILocation(line: 1053, column: 8, scope: !2486)
!2496 = !DILocation(line: 1053, column: 38, scope: !2486)
!2497 = !DILocation(line: 1053, column: 57, scope: !2486)
!2498 = !DILocation(line: 1054, column: 8, scope: !2486)
!2499 = !DILocation(line: 1054, column: 34, scope: !2486)
!2500 = !DILocation(line: 1054, column: 53, scope: !2486)
!2501 = !DILocation(line: 1055, column: 8, scope: !2486)
!2502 = !DILocation(line: 1055, column: 28, scope: !2486)
!2503 = !DILocation(line: 1050, column: 7, scope: !2377)
!2504 = !DILocation(line: 1057, column: 44, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2486, file: !1075, line: 1056, column: 5)
!2506 = !DILocation(line: 1058, column: 17, scope: !2505)
!2507 = !DILocation(line: 1057, column: 21, scope: !2505)
!2508 = !DILocation(line: 1059, column: 26, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !1075, line: 1059, column: 11)
!2510 = !DILocation(line: 1059, column: 58, scope: !2509)
!2511 = !DILocation(line: 1060, column: 12, scope: !2509)
!2512 = !DILocation(line: 1060, column: 43, scope: !2509)
!2513 = !DILocation(line: 1060, column: 49, scope: !2509)
!2514 = !DILocation(line: 1061, column: 36, scope: !2509)
!2515 = !DILocation(line: 1061, column: 12, scope: !2509)
!2516 = !DILocation(line: 1061, column: 53, scope: !2509)
!2517 = !DILocation(line: 1059, column: 11, scope: !2505)
!2518 = !DILocation(line: 1066, column: 18, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2509, file: !1075, line: 1062, column: 9)
!2520 = !DILocation(line: 1068, column: 18, scope: !2519)
!2521 = !DILocation(line: 1070, column: 22, scope: !2519)
!2522 = !DILocation(line: 1071, column: 18, scope: !2519)
!2523 = !DILocation(line: 1072, column: 11, scope: !2519)
!2524 = !DILocation(line: 1077, column: 50, scope: !2400)
!2525 = !DILocation(line: 1078, column: 8, scope: !2400)
!2526 = !DILocation(line: 1078, column: 45, scope: !2400)
!2527 = !DILocation(line: 1077, column: 7, scope: !2377)
!2528 = !DILocation(line: 1080, column: 7, scope: !2399)
!2529 = !DILocation(line: 1081, column: 9, scope: !2399)
!2530 = !DILocation(line: 1083, column: 14, scope: !2399)
!2531 = !DILocation(line: 1084, column: 68, scope: !2399)
!2532 = !DILocation(line: 1084, column: 14, scope: !2399)
!2533 = !DILocation(line: 1085, column: 14, scope: !2399)
!2534 = !DILocation(line: 1086, column: 18, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2399, file: !1075, line: 1086, column: 11)
!2536 = !DILocation(line: 1086, column: 11, scope: !2399)
!2537 = !DILocation(line: 1088, column: 15, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !1075, line: 1088, column: 15)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !1075, line: 1087, column: 9)
!2540 = !DILocation(line: 1088, column: 37, scope: !2538)
!2541 = !DILocation(line: 1088, column: 15, scope: !2539)
!2542 = !DILocation(line: 1093, column: 27, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !1075, line: 1089, column: 13)
!2544 = !DILocation(line: 1093, column: 33, scope: !2543)
!2545 = !{!1173, !1104, i64 12}
!2546 = !DILocation(line: 1094, column: 22, scope: !2543)
!2547 = !DILocation(line: 1096, column: 22, scope: !2543)
!2548 = !DILocation(line: 1098, column: 13, scope: !2543)
!2549 = !DILocation(line: 1099, column: 18, scope: !2539)
!2550 = !DILocation(line: 1100, column: 9, scope: !2539)
!2551 = !DILocation(line: 1101, column: 5, scope: !2400)
!2552 = !DILocation(line: 1101, column: 5, scope: !2399)
!2553 = !DILocation(line: 1103, column: 8, scope: !2407)
!2554 = !DILocation(line: 1103, column: 37, scope: !2407)
!2555 = !DILocation(line: 1102, column: 7, scope: !2377)
!2556 = !DILocation(line: 1108, column: 22, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2407, file: !1075, line: 1104, column: 5)
!2558 = !DILocation(line: 1109, column: 27, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !1075, line: 1109, column: 11)
!2560 = !DILocation(line: 1109, column: 51, scope: !2559)
!2561 = !DILocation(line: 1109, column: 11, scope: !2557)
!2562 = !DILocation(line: 1110, column: 40, scope: !2559)
!2563 = !DILocation(line: 1110, column: 9, scope: !2559)
!2564 = !DILocation(line: 1111, column: 14, scope: !2557)
!2565 = !DILocation(line: 1112, column: 11, scope: !2557)
!2566 = !DILocation(line: 1113, column: 42, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2557, file: !1075, line: 1112, column: 11)
!2568 = !DILocation(line: 1113, column: 9, scope: !2567)
!2569 = !DILocation(line: 1118, column: 17, scope: !2406)
!2570 = !DILocation(line: 1117, column: 21, scope: !2406)
!2571 = !DILocation(line: 1119, column: 25, scope: !2405)
!2572 = !DILocation(line: 1119, column: 11, scope: !2406)
!2573 = !DILocation(line: 1124, column: 32, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2405, file: !1075, line: 1120, column: 9)
!2575 = !DILocation(line: 1125, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2574, file: !1075, line: 1125, column: 15)
!2577 = !DILocation(line: 1125, column: 55, scope: !2576)
!2578 = !DILocation(line: 1125, column: 15, scope: !2574)
!2579 = !DILocation(line: 1126, column: 46, scope: !2576)
!2580 = !DILocation(line: 1126, column: 13, scope: !2576)
!2581 = !DILocation(line: 1127, column: 18, scope: !2574)
!2582 = !DILocation(line: 1129, column: 15, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2574, file: !1075, line: 1129, column: 15)
!2584 = !DILocation(line: 1129, column: 55, scope: !2583)
!2585 = !DILocation(line: 1129, column: 15, scope: !2574)
!2586 = !DILocation(line: 1130, column: 48, scope: !2583)
!2587 = !DILocation(line: 1130, column: 13, scope: !2583)
!2588 = !DILocation(line: 1131, column: 18, scope: !2574)
!2589 = !DILocation(line: 1132, column: 9, scope: !2574)
!2590 = !DILocation(line: 1135, column: 26, scope: !2404)
!2591 = !DILocation(line: 1136, column: 23, scope: !2404)
!2592 = !DILocation(line: 1137, column: 26, scope: !2404)
!2593 = !DILocation(line: 1138, column: 28, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2404, file: !1075, line: 1138, column: 15)
!2595 = !{!1173, !1104, i64 16}
!2596 = !DILocation(line: 1138, column: 35, scope: !2594)
!2597 = !DILocation(line: 1138, column: 51, scope: !2594)
!2598 = !DILocation(line: 1141, column: 65, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !1075, line: 1140, column: 13)
!2600 = !DILocation(line: 1141, column: 22, scope: !2599)
!2601 = !DILocation(line: 1143, column: 27, scope: !2599)
!2602 = !DILocation(line: 1144, column: 13, scope: !2599)
!2603 = !DILocation(line: 0, scope: !2404)
!2604 = !DILocation(line: 1145, column: 28, scope: !2403)
!2605 = !DILocation(line: 1145, column: 58, scope: !2403)
!2606 = !DILocation(line: 1146, column: 16, scope: !2403)
!2607 = !DILocation(line: 1146, column: 45, scope: !2403)
!2608 = !DILocation(line: 1145, column: 15, scope: !2404)
!2609 = !DILocation(line: 1148, column: 15, scope: !2402)
!2610 = !DILocation(line: 1149, column: 17, scope: !2402)
!2611 = !DILocation(line: 1151, column: 15, scope: !2402)
!2612 = !DILocation(line: 1152, column: 19, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2402, file: !1075, line: 1152, column: 19)
!2614 = !DILocation(line: 1152, column: 30, scope: !2613)
!2615 = !DILocation(line: 1152, column: 19, scope: !2402)
!2616 = !DILocation(line: 0, scope: !2613)
!2617 = !DILocation(line: 1156, column: 22, scope: !2402)
!2618 = !DILocation(line: 1157, column: 13, scope: !2403)
!2619 = !DILocation(line: 1158, column: 28, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2404, file: !1075, line: 1158, column: 15)
!2621 = !DILocation(line: 1158, column: 58, scope: !2620)
!2622 = !DILocation(line: 1159, column: 16, scope: !2620)
!2623 = !DILocation(line: 1159, column: 45, scope: !2620)
!2624 = !DILocation(line: 1158, column: 15, scope: !2404)
!2625 = !DILocation(line: 1161, column: 48, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !1075, line: 1160, column: 13)
!2627 = !DILocation(line: 1161, column: 27, scope: !2626)
!2628 = !DILocation(line: 1162, column: 32, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !1075, line: 1162, column: 19)
!2630 = !DILocation(line: 1162, column: 62, scope: !2629)
!2631 = !DILocation(line: 1164, column: 24, scope: !2629)
!2632 = !DILocation(line: 1172, column: 58, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2404, file: !1075, line: 1172, column: 15)
!2634 = !DILocation(line: 1163, column: 20, scope: !2629)
!2635 = !DILocation(line: 1163, column: 49, scope: !2629)
!2636 = !DILocation(line: 1162, column: 19, scope: !2626)
!2637 = !DILocation(line: 1168, column: 24, scope: !2629)
!2638 = !DILocation(line: 1173, column: 16, scope: !2633)
!2639 = !DILocation(line: 1173, column: 45, scope: !2633)
!2640 = !DILocation(line: 1172, column: 15, scope: !2404)
!2641 = !DILocation(line: 1178, column: 30, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2633, file: !1075, line: 1174, column: 13)
!2643 = !DILocation(line: 1179, column: 35, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2642, file: !1075, line: 1179, column: 19)
!2645 = !DILocation(line: 1179, column: 59, scope: !2644)
!2646 = !DILocation(line: 1179, column: 19, scope: !2642)
!2647 = !DILocation(line: 1180, column: 48, scope: !2644)
!2648 = !DILocation(line: 1180, column: 17, scope: !2644)
!2649 = !DILocation(line: 1181, column: 22, scope: !2642)
!2650 = !DILocation(line: 1182, column: 19, scope: !2642)
!2651 = !DILocation(line: 1183, column: 50, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2642, file: !1075, line: 1182, column: 19)
!2653 = !DILocation(line: 1183, column: 17, scope: !2652)
!2654 = !DILocation(line: 1187, column: 7, scope: !2410)
!2655 = !DILocation(line: 1187, column: 27, scope: !2410)
!2656 = !DILocation(line: 1187, column: 7, scope: !2377)
!2657 = !DILocation(line: 1188, column: 5, scope: !2409)
!2658 = !DILocation(line: 0, scope: !2409)
!2659 = !DILocation(line: 1190, column: 17, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1190, column: 7)
!2661 = !DILocation(line: 1190, column: 7, scope: !2377)
!2662 = !DILocation(line: 1195, column: 67, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !1075, line: 1191, column: 5)
!2664 = !DILocation(line: 1195, column: 14, scope: !2663)
!2665 = !DILocation(line: 1196, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !1075, line: 1196, column: 11)
!2667 = !DILocation(line: 1196, column: 11, scope: !2663)
!2668 = !DILocation(line: 1198, column: 18, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !1075, line: 1197, column: 9)
!2670 = !DILocation(line: 1199, column: 18, scope: !2669)
!2671 = !DILocation(line: 1200, column: 9, scope: !2669)
!2672 = !DILocation(line: 0, scope: !2663)
!2673 = !DILocation(line: 1201, column: 14, scope: !2663)
!2674 = !DILocation(line: 1202, column: 14, scope: !2663)
!2675 = !DILocation(line: 1203, column: 14, scope: !2663)
!2676 = !DILocation(line: 1205, column: 5, scope: !2663)
!2677 = !DILocation(line: 1206, column: 8, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2377, file: !1075, line: 1206, column: 7)
!2679 = !DILocation(line: 1206, column: 49, scope: !2678)
!2680 = !DILocation(line: 1206, column: 55, scope: !2678)
!2681 = !DILocation(line: 1207, column: 20, scope: !2678)
!2682 = !DILocation(line: 1207, column: 28, scope: !2678)
!2683 = !DILocation(line: 1206, column: 7, scope: !2377)
!2684 = !DILocation(line: 1208, column: 32, scope: !2678)
!2685 = !DILocation(line: 1208, column: 12, scope: !2678)
!2686 = !DILocation(line: 1208, column: 5, scope: !2678)
!2687 = !DILocation(line: 1209, column: 14, scope: !2377)
!2688 = !DILocation(line: 1210, column: 3, scope: !2377)
!2689 = !DILocation(line: 1211, column: 1, scope: !2377)
!2690 = !DISubprogram(name: "SyncImageProfiles", scope: !89, file: !89, line: 63, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2691 = !DISubprogram(name: "IsMagickTrue", scope: !2692, file: !2692, line: 38, type: !2097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2692 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!2693 = !DISubprogram(name: "GetPreviousImageInList", scope: !1323, file: !1323, line: 34, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2694 = !DISubprogram(name: "IsTaintImage", scope: !73, file: !73, line: 527, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2695 = !DISubprogram(name: "GetDelegateMode", scope: !1039, file: !1039, line: 68, type: !2696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!697, !1036}
!2698 = !DISubprogram(name: "AcquireUniqueFilename", scope: !519, file: !519, line: 48, type: !2699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!645, !650}
!2701 = !DISubprogram(name: "GetImageEncoder", scope: !481, file: !481, line: 116, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!1008, !988}
!2704 = distinct !DISubprogram(name: "WriteImages", scope: !1075, file: !1075, line: 1249, type: !2705, scopeLine: 1251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!645, !1004, !709, !816, !1006}
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2708 = !DILocalVariable(name: "image_info", arg: 1, scope: !2704, file: !1075, line: 1249, type: !1004)
!2709 = !DILocalVariable(name: "images", arg: 2, scope: !2704, file: !1075, line: 1250, type: !709)
!2710 = !DILocalVariable(name: "filename", arg: 3, scope: !2704, file: !1075, line: 1250, type: !816)
!2711 = !DILocalVariable(name: "exception", arg: 4, scope: !2704, file: !1075, line: 1250, type: !1006)
!2712 = !DILocalVariable(name: "blob", scope: !2704, file: !1075, line: 1255, type: !832)
!2713 = !DILocalVariable(name: "sans_exception", scope: !2704, file: !1075, line: 1258, type: !1006)
!2714 = !DILocalVariable(name: "write_info", scope: !2704, file: !1075, line: 1261, type: !636)
!2715 = !DILocalVariable(name: "proceed", scope: !2704, file: !1075, line: 1264, type: !645)
!2716 = !DILocalVariable(name: "i", scope: !2704, file: !1075, line: 1267, type: !819)
!2717 = !DILocalVariable(name: "progress_monitor", scope: !2704, file: !1075, line: 1270, type: !811)
!2718 = !DILocalVariable(name: "number_images", scope: !2704, file: !1075, line: 1273, type: !822)
!2719 = !DILocalVariable(name: "status", scope: !2704, file: !1075, line: 1276, type: !1028)
!2720 = !DILocalVariable(name: "p", scope: !2704, file: !1075, line: 1279, type: !709)
!2721 = !DILocalVariable(name: "i", scope: !2722, file: !1075, line: 1308, type: !697)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !1075, line: 1306, column: 7)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !1075, line: 1305, column: 9)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !1075, line: 1304, column: 3)
!2725 = distinct !DILexicalBlock(scope: !2704, file: !1075, line: 1304, column: 3)
!2726 = !DILocation(line: 0, scope: !2704)
!2727 = !DILocation(line: 1285, column: 15, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2704, file: !1075, line: 1285, column: 7)
!2729 = !DILocation(line: 1285, column: 21, scope: !2728)
!2730 = !DILocation(line: 1285, column: 7, scope: !2704)
!2731 = !DILocation(line: 1286, column: 69, scope: !2728)
!2732 = !DILocation(line: 1286, column: 12, scope: !2728)
!2733 = !DILocation(line: 1286, column: 5, scope: !2728)
!2734 = !DILocation(line: 1288, column: 14, scope: !2704)
!2735 = !DILocation(line: 1289, column: 10, scope: !2704)
!2736 = !DILocation(line: 1290, column: 30, scope: !2704)
!2737 = !{!1103, !1107, i64 608}
!2738 = !DILocation(line: 1290, column: 8, scope: !2704)
!2739 = !DILocation(line: 1291, column: 3, scope: !2704)
!2740 = !DILocation(line: 1292, column: 15, scope: !2704)
!2741 = !DILocation(line: 1293, column: 16, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2704, file: !1075, line: 1293, column: 7)
!2743 = !DILocation(line: 1293, column: 7, scope: !2704)
!2744 = !DILocation(line: 1295, column: 34, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1075, line: 1294, column: 5)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !1075, line: 1294, column: 5)
!2747 = !DILocation(line: 1295, column: 14, scope: !2745)
!2748 = !DILocation(line: 1294, column: 43, scope: !2745)
!2749 = !DILocation(line: 1294, column: 22, scope: !2745)
!2750 = !DILocation(line: 1294, column: 5, scope: !2746)
!2751 = distinct !{!2751, !2750, !2752, !1295, !1296}
!2752 = !DILocation(line: 1295, column: 65, scope: !2746)
!2753 = !DILocation(line: 1296, column: 39, scope: !2704)
!2754 = !DILocation(line: 1296, column: 56, scope: !2704)
!2755 = !DILocation(line: 1296, column: 10, scope: !2704)
!2756 = !DILocation(line: 1297, column: 20, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2704, file: !1075, line: 1297, column: 7)
!2758 = !DILocation(line: 1297, column: 7, scope: !2757)
!2759 = !DILocation(line: 1297, column: 27, scope: !2757)
!2760 = !DILocation(line: 1297, column: 7, scope: !2704)
!2761 = !DILocation(line: 1298, column: 56, scope: !2757)
!2762 = !DILocation(line: 1298, column: 12, scope: !2757)
!2763 = !DILocation(line: 1298, column: 5, scope: !2757)
!2764 = !DILocation(line: 1299, column: 18, scope: !2704)
!2765 = !DILocation(line: 1300, column: 49, scope: !2704)
!2766 = !DILocation(line: 1300, column: 34, scope: !2704)
!2767 = !DILocation(line: 1300, column: 10, scope: !2704)
!2768 = !DILocation(line: 1302, column: 18, scope: !2704)
!2769 = !DILocation(line: 1304, column: 11, scope: !2724)
!2770 = !DILocation(line: 1304, column: 33, scope: !2724)
!2771 = !DILocation(line: 1304, column: 3, scope: !2725)
!2772 = !DILocation(line: 1305, column: 12, scope: !2723)
!2773 = !{!1103, !1106, i64 432}
!2774 = !DILocation(line: 1305, column: 21, scope: !2723)
!2775 = !DILocation(line: 1305, column: 44, scope: !2723)
!2776 = !DILocation(line: 1305, column: 18, scope: !2723)
!2777 = !DILocation(line: 1305, column: 9, scope: !2724)
!2778 = !DILocation(line: 0, scope: !2722)
!2779 = !DILocation(line: 1314, column: 9, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2722, file: !1075, line: 1314, column: 9)
!2781 = !DILocation(line: 1324, column: 17, scope: !2704)
!2782 = !DILocation(line: 1325, column: 3, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2704, file: !1075, line: 1325, column: 3)
!2784 = !DILocation(line: 1313, column: 29, scope: !2722)
!2785 = !DILocation(line: 1315, column: 30, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !1075, line: 1314, column: 9)
!2787 = !DILocation(line: 1315, column: 14, scope: !2786)
!2788 = !DILocation(line: 1315, column: 19, scope: !2786)
!2789 = !DILocation(line: 1314, column: 47, scope: !2786)
!2790 = !DILocation(line: 1314, column: 26, scope: !2786)
!2791 = distinct !{!2791, !2779, !2792, !1295, !1296}
!2792 = !DILocation(line: 1315, column: 30, scope: !2780)
!2793 = !DILocation(line: 1304, column: 54, scope: !2724)
!2794 = distinct !{!2794, !2771, !2795, !1295, !1296}
!2795 = !DILocation(line: 1317, column: 7, scope: !2725)
!2796 = !DILocation(line: 1334, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1334, column: 9)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !1075, line: 1326, column: 3)
!2799 = distinct !DILexicalBlock(scope: !2783, file: !1075, line: 1325, column: 3)
!2800 = !DILocation(line: 1332, column: 9, scope: !2798)
!2801 = !DILocation(line: 1330, column: 13, scope: !2798)
!2802 = !DILocation(line: 1330, column: 11, scope: !2798)
!2803 = !DILocation(line: 1331, column: 5, scope: !2798)
!2804 = !DILocation(line: 1334, column: 28, scope: !2797)
!2805 = !DILocation(line: 1334, column: 9, scope: !2798)
!2806 = !DILocation(line: 1325, column: 41, scope: !2799)
!2807 = !DILocation(line: 1325, column: 20, scope: !2799)
!2808 = distinct !{!2808, !2782, !2809, !1295, !1296}
!2809 = !DILocation(line: 1342, column: 3, scope: !2783)
!2810 = !DILocation(line: 1329, column: 12, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1327, column: 9)
!2812 = !{!1103, !1107, i64 576}
!2813 = !DILocation(line: 1328, column: 24, scope: !2811)
!2814 = !DILocation(line: 1333, column: 60, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1332, column: 9)
!2816 = !DILocation(line: 1333, column: 14, scope: !2815)
!2817 = !DILocation(line: 1338, column: 51, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !1075, line: 1337, column: 7)
!2819 = distinct !DILexicalBlock(scope: !2798, file: !1075, line: 1336, column: 9)
!2820 = !DILocalVariable(name: "image", arg: 1, scope: !2821, file: !2822, line: 27, type: !912)
!2821 = distinct !DISubprogram(name: "SetImageProgress", scope: !2822, file: !2822, line: 27, type: !2823, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2825)
!2822 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!645, !912, !816, !818, !821}
!2825 = !{!2820, !2826, !2827, !2828, !2829}
!2826 = !DILocalVariable(name: "tag", arg: 2, scope: !2821, file: !2822, line: 28, type: !816)
!2827 = !DILocalVariable(name: "offset", arg: 3, scope: !2821, file: !2822, line: 28, type: !818)
!2828 = !DILocalVariable(name: "extent", arg: 4, scope: !2821, file: !2822, line: 28, type: !821)
!2829 = !DILocalVariable(name: "message", scope: !2821, file: !2822, line: 31, type: !836)
!2830 = !DILocation(line: 0, scope: !2821, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1338, column: 17, scope: !2818)
!2832 = !DILocation(line: 30, column: 3, scope: !2821, inlinedAt: !2831)
!2833 = !DILocation(line: 31, column: 5, scope: !2821, inlinedAt: !2831)
!2834 = !DILocation(line: 33, column: 14, scope: !2835, inlinedAt: !2831)
!2835 = distinct !DILexicalBlock(scope: !2821, file: !2822, line: 33, column: 7)
!2836 = !{!1103, !1107, i64 568}
!2837 = !DILocation(line: 33, column: 31, scope: !2835, inlinedAt: !2831)
!2838 = !DILocation(line: 33, column: 7, scope: !2821, inlinedAt: !2831)
!2839 = !DILocation(line: 37, column: 1, scope: !2821, inlinedAt: !2831)
!2840 = !DILocation(line: 1339, column: 13, scope: !2818)
!2841 = !DILocation(line: 35, column: 70, scope: !2821, inlinedAt: !2831)
!2842 = !DILocation(line: 35, column: 10, scope: !2821, inlinedAt: !2831)
!2843 = !DILocation(line: 36, column: 17, scope: !2821, inlinedAt: !2831)
!2844 = !DILocation(line: 36, column: 63, scope: !2821, inlinedAt: !2831)
!2845 = !DILocation(line: 36, column: 10, scope: !2821, inlinedAt: !2831)
!2846 = !DILocation(line: 1339, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2818, file: !1075, line: 1339, column: 13)
!2848 = !DILocation(line: 1343, column: 14, scope: !2704)
!2849 = !DILocation(line: 1344, column: 17, scope: !2704)
!2850 = !DILocation(line: 1344, column: 10, scope: !2704)
!2851 = !DILocation(line: 1344, column: 3, scope: !2704)
!2852 = !DISubprogram(name: "CloneBlobInfo", scope: !504, file: !504, line: 62, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!832, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!2857 = !DISubprogram(name: "DestroyBlob", scope: !2075, file: !2075, line: 68, type: !2858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !709}
!2860 = !DISubprogram(name: "GetImageListLength", scope: !1323, file: !1323, line: 45, type: !2861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!656, !912}
!2863 = !DISubprogram(name: "SetImageProgressMonitor", scope: !812, file: !812, line: 30, type: !2864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!811, !709, !2369, !748}
!2866 = !DISubprogram(name: "GetImageException", scope: !73, file: !73, line: 565, type: !2867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{null, !709, !1006}
!2869 = !DISubprogram(name: "FormatLocaleString", scope: !2870, file: !2870, line: 71, type: !2871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1140)
!2870 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!697, !2873, !916, !1707, null}
!2873 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !650)
