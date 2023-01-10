; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/wand/magick-wand.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ConfigureInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-wand.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MagickWand\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ContainsNoIterators\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ClearMagickWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !1094 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1099, metadata !DIExpression()), !dbg !1100
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1101
  %0 = load i32, ptr %debug, align 8, !dbg !1101, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1109
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1110

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1111
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 82, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1112
  br label %if.end, !dbg !1113

if.end:                                           ; preds = %if.then, %entry
  %quantize_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 4, !dbg !1114
  %1 = load ptr, ptr %quantize_info, align 8, !dbg !1114, !tbaa !1115
  %call1 = tail call ptr @DestroyQuantizeInfo(ptr noundef %1) #8, !dbg !1116
  store ptr %call1, ptr %quantize_info, align 8, !dbg !1117, !tbaa !1115
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1118
  %2 = load ptr, ptr %image_info, align 8, !dbg !1118, !tbaa !1119
  %call3 = tail call ptr @DestroyImageInfo(ptr noundef %2) #8, !dbg !1120
  store ptr %call3, ptr %image_info, align 8, !dbg !1121, !tbaa !1119
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1122
  %3 = load ptr, ptr %images, align 8, !dbg !1122, !tbaa !1123
  %call5 = tail call ptr @DestroyImageList(ptr noundef %3) #8, !dbg !1124
  store ptr %call5, ptr %images, align 8, !dbg !1125, !tbaa !1123
  %call7 = tail call ptr @AcquireImageInfo() #8, !dbg !1126
  store ptr %call7, ptr %image_info, align 8, !dbg !1127, !tbaa !1119
  %call9 = tail call ptr @CloneQuantizeInfo(ptr noundef null) #8, !dbg !1128
  store ptr %call9, ptr %quantize_info, align 8, !dbg !1129, !tbaa !1115
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 6, !dbg !1130
  store i32 0, ptr %insert_before, align 8, !dbg !1131, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 7, !dbg !1133
  store i32 0, ptr %image_pending, align 4, !dbg !1134, !tbaa !1135
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1136
  %4 = load ptr, ptr %exception, align 8, !dbg !1136, !tbaa !1137
  tail call void @ClearMagickException(ptr noundef %4) #8, !dbg !1138
  %call11 = tail call i32 @IsEventLogging() #8, !dbg !1139
  store i32 %call11, ptr %debug, align 8, !dbg !1140, !tbaa !1103
  ret void, !dbg !1141
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !1142 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1148 ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1151 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1154 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare !dbg !1158 ptr @AcquireImageInfo() local_unnamed_addr #2

declare !dbg !1161 ptr @CloneQuantizeInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1166 void @ClearMagickException(ptr noundef) local_unnamed_addr #2

declare !dbg !1169 i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneMagickWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !1172 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1176, metadata !DIExpression()), !dbg !1181
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1182
  %0 = load i32, ptr %debug, align 8, !dbg !1182, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1184
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1186
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 124, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1187
  br label %if.end, !dbg !1188

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 4160) #9, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1177, metadata !DIExpression()), !dbg !1181
  %cmp2 = icmp eq ptr %call1, null, !dbg !1190
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !1191

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #8, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1178, metadata !DIExpression()), !dbg !1192
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #8, !dbg !1192
  %name4 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1192
  %call6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #8, !dbg !1192
  call void @CatchException(ptr noundef nonnull %exception) #8, !dbg !1192
  %call7 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #8, !dbg !1192
  call void @MagickWandTerminus(), !dbg !1192
  call void @_exit(i32 noundef 1) #10, !dbg !1192
  unreachable, !dbg !1192

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 4160) #8, !dbg !1193
  %call10 = tail call i64 @AcquireWandId() #8, !dbg !1194
  store i64 %call10, ptr %call1, align 8, !dbg !1195, !tbaa !1196
  %name11 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 1, !dbg !1197
  %conv = uitofp i64 %call10 to double, !dbg !1198
  %call14 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name11, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #8, !dbg !1199
  %call15 = tail call ptr @AcquireExceptionInfo() #8, !dbg !1200
  %exception16 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 2, !dbg !1201
  store ptr %call15, ptr %exception16, align 8, !dbg !1202, !tbaa !1137
  %exception18 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1203
  %1 = load ptr, ptr %exception18, align 8, !dbg !1203, !tbaa !1137
  tail call void @InheritException(ptr noundef %call15, ptr noundef %1) #8, !dbg !1204
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1205
  %2 = load ptr, ptr %image_info, align 8, !dbg !1205, !tbaa !1119
  %call19 = tail call ptr @CloneImageInfo(ptr noundef %2) #8, !dbg !1206
  %image_info20 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 3, !dbg !1207
  store ptr %call19, ptr %image_info20, align 8, !dbg !1208, !tbaa !1119
  %quantize_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 4, !dbg !1209
  %3 = load ptr, ptr %quantize_info, align 8, !dbg !1209, !tbaa !1115
  %call21 = tail call ptr @CloneQuantizeInfo(ptr noundef %3) #8, !dbg !1210
  %quantize_info22 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 4, !dbg !1211
  store ptr %call21, ptr %quantize_info22, align 8, !dbg !1212, !tbaa !1115
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1213
  %4 = load ptr, ptr %images, align 8, !dbg !1213, !tbaa !1123
  %5 = load ptr, ptr %exception16, align 8, !dbg !1214, !tbaa !1137
  %call24 = tail call ptr @CloneImageList(ptr noundef %4, ptr noundef %5) #8, !dbg !1215
  %images25 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 5, !dbg !1216
  store ptr %call24, ptr %images25, align 8, !dbg !1217, !tbaa !1123
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 6, !dbg !1218
  store i32 0, ptr %insert_before, align 8, !dbg !1219, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 7, !dbg !1220
  store i32 0, ptr %image_pending, align 4, !dbg !1221, !tbaa !1135
  %call26 = tail call i32 @IsEventLogging() #8, !dbg !1222
  %debug27 = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 8, !dbg !1223
  store i32 %call26, ptr %debug27, align 8, !dbg !1224, !tbaa !1103
  %cmp29.not = icmp eq i32 %call26, 0, !dbg !1225
  br i1 %cmp29.not, label %if.end35, label %if.then31, !dbg !1227

if.then31:                                        ; preds = %if.end8
  %call34 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 142, ptr noundef nonnull @.str.2, ptr noundef nonnull %name11) #8, !dbg !1228
  br label %if.end35, !dbg !1229

if.end35:                                         ; preds = %if.then31, %if.end8
  %signature = getelementptr inbounds %struct._MagickWand, ptr %call1, i64 0, i32 9, !dbg !1230
  store i64 2880220587, ptr %signature, align 8, !dbg !1231, !tbaa !1232
  ret ptr %call1, !dbg !1233
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: allocsize(0)
declare !dbg !1234 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !1238 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1239 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1243 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !1244 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickWandTerminus() local_unnamed_addr #0 !dbg !1247 {
entry:
  tail call void @DestroyWandIds() #8, !dbg !1250
  tail call void @MagickCoreTerminus() #8, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare !dbg !1253 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1256 i64 @AcquireWandId() local_unnamed_addr #2

declare !dbg !1260 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1266 ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare !dbg !1269 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1274 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1279 ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyMagickWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !1282 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1286, metadata !DIExpression()), !dbg !1287
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1288
  %0 = load i32, ptr %debug, align 8, !dbg !1288, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1290
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1291

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1292
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1293
  br label %if.end, !dbg !1294

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1295
  %1 = load ptr, ptr %images, align 8, !dbg !1295, !tbaa !1123
  %call1 = tail call ptr @DestroyImageList(ptr noundef %1) #8, !dbg !1296
  store ptr %call1, ptr %images, align 8, !dbg !1297, !tbaa !1123
  %quantize_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 4, !dbg !1298
  %2 = load ptr, ptr %quantize_info, align 8, !dbg !1298, !tbaa !1115
  %cmp3.not = icmp eq ptr %2, null, !dbg !1300
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1301

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %2) #8, !dbg !1302
  store ptr %call6, ptr %quantize_info, align 8, !dbg !1303, !tbaa !1115
  br label %if.end8, !dbg !1304

if.end8:                                          ; preds = %if.then4, %if.end
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1305
  %3 = load ptr, ptr %image_info, align 8, !dbg !1305, !tbaa !1119
  %cmp9.not = icmp eq ptr %3, null, !dbg !1307
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1308

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %3) #8, !dbg !1309
  store ptr %call12, ptr %image_info, align 8, !dbg !1310, !tbaa !1119
  br label %if.end14, !dbg !1311

if.end14:                                         ; preds = %if.then10, %if.end8
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1312
  %4 = load ptr, ptr %exception, align 8, !dbg !1312, !tbaa !1137
  %cmp15.not = icmp eq ptr %4, null, !dbg !1314
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !1315

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #8, !dbg !1316
  store ptr %call18, ptr %exception, align 8, !dbg !1317, !tbaa !1137
  br label %if.end20, !dbg !1318

if.end20:                                         ; preds = %if.then16, %if.end14
  %5 = load i64, ptr %wand, align 8, !dbg !1319, !tbaa !1196
  tail call void @RelinquishWandId(i64 noundef %5) #8, !dbg !1320
  %signature = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 9, !dbg !1321
  store i64 -2880220588, ptr %signature, align 8, !dbg !1322, !tbaa !1232
  %call21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %wand) #8, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1286, metadata !DIExpression()), !dbg !1287
  ret ptr %call21, !dbg !1324
}

declare !dbg !1325 void @RelinquishWandId(i64 noundef) local_unnamed_addr #2

declare !dbg !1328 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMagickWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !1331 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1335, metadata !DIExpression()), !dbg !1336
  %cmp = icmp eq ptr %wand, null, !dbg !1337
  br i1 %cmp, label %return, label %if.end, !dbg !1339

if.end:                                           ; preds = %entry
  %signature = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 9, !dbg !1340
  %0 = load i64, ptr %signature, align 8, !dbg !1340, !tbaa !1232
  %cmp1.not = icmp eq i64 %0, 2880220587, !dbg !1342
  br i1 %cmp1.not, label %if.end3, label %return, !dbg !1343

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1344
  %call = tail call i32 @LocaleNCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str.6, i64 noundef 10) #8, !dbg !1346
  %cmp4.not = icmp eq i32 %call, 0, !dbg !1347
  %. = zext i1 %cmp4.not to i32, !dbg !1336
  br label %return, !dbg !1336

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end3 ], !dbg !1336
  ret i32 %retval.0, !dbg !1348
}

declare !dbg !1349 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickClearException(ptr noundef %wand) local_unnamed_addr #0 !dbg !1353 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1357, metadata !DIExpression()), !dbg !1358
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1359
  %0 = load i32, ptr %debug, align 8, !dbg !1359, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1361
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1362

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1363
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 248, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1364
  br label %if.end, !dbg !1365

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1366
  %1 = load ptr, ptr %exception, align 8, !dbg !1366, !tbaa !1137
  tail call void @ClearMagickException(ptr noundef %1) #8, !dbg !1367
  ret i32 1, !dbg !1368
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetException(ptr noundef %wand, ptr nocapture noundef writeonly %severity) local_unnamed_addr #0 !dbg !1369 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %severity, metadata !1375, metadata !DIExpression()), !dbg !1377
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1378
  %0 = load i32, ptr %debug, align 8, !dbg !1378, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1380
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1381

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1382
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 287, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1383
  br label %if.end, !dbg !1384

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1385
  %1 = load ptr, ptr %exception, align 8, !dbg !1385, !tbaa !1137
  %2 = load i32, ptr %1, align 8, !dbg !1386, !tbaa !1387
  store i32 %2, ptr %severity, align 4, !dbg !1390, !tbaa !1391
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #11, !dbg !1392
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1376, metadata !DIExpression()), !dbg !1377
  %cmp3 = icmp eq ptr %call2, null, !dbg !1393
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !1395

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %exception, align 8, !dbg !1396, !tbaa !1137
  %name6 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1398
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 294, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name6) #8, !dbg !1399
  br label %cleanup, !dbg !1400

if.end9:                                          ; preds = %if.end
  store i8 0, ptr %call2, align 1, !dbg !1401, !tbaa !1391
  %4 = load ptr, ptr %exception, align 8, !dbg !1402, !tbaa !1137
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %4, i64 0, i32 2, !dbg !1404
  %5 = load ptr, ptr %reason, align 8, !dbg !1404, !tbaa !1405
  %cmp11.not = icmp eq ptr %5, null, !dbg !1406
  br i1 %cmp11.not, label %if.end19, label %if.then12, !dbg !1407

if.then12:                                        ; preds = %if.end9
  %6 = load i32, ptr %4, align 8, !dbg !1408, !tbaa !1387
  %call17 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %6, ptr noundef nonnull %5) #8, !dbg !1409
  %call18 = tail call i64 @CopyMagickString(ptr noundef nonnull %call2, ptr noundef %call17, i64 noundef 4096) #8, !dbg !1410
  %.pre = load ptr, ptr %exception, align 8, !dbg !1411, !tbaa !1137
  br label %if.end19, !dbg !1413

if.end19:                                         ; preds = %if.then12, %if.end9
  %7 = phi ptr [ %.pre, %if.then12 ], [ %4, %if.end9 ], !dbg !1411
  %description21 = getelementptr inbounds %struct._ExceptionInfo, ptr %7, i64 0, i32 3, !dbg !1414
  %8 = load ptr, ptr %description21, align 8, !dbg !1414, !tbaa !1415
  %cmp22.not = icmp eq ptr %8, null, !dbg !1416
  br i1 %cmp22.not, label %cleanup, label %if.then23, !dbg !1417

if.then23:                                        ; preds = %if.end19
  %call24 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.7, i64 noundef 4096) #8, !dbg !1418
  %9 = load ptr, ptr %exception, align 8, !dbg !1420, !tbaa !1137
  %10 = load i32, ptr %9, align 8, !dbg !1421, !tbaa !1387
  %description28 = getelementptr inbounds %struct._ExceptionInfo, ptr %9, i64 0, i32 3, !dbg !1422
  %11 = load ptr, ptr %description28, align 8, !dbg !1422, !tbaa !1415
  %call29 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %10, ptr noundef %11) #8, !dbg !1423
  %call30 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef %call29, i64 noundef 4096) #8, !dbg !1424
  %call31 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.8, i64 noundef 4096) #8, !dbg !1425
  br label %cleanup, !dbg !1426

cleanup:                                          ; preds = %if.end19, %if.then23, %if.then4
  ret ptr %call2, !dbg !1427
}

; Function Attrs: allocsize(0,1)
declare !dbg !1428 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !1431 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1434 ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1437 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetExceptionType(ptr noundef %wand) local_unnamed_addr #0 !dbg !1438 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1442, metadata !DIExpression()), !dbg !1443
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1444
  %0 = load i32, ptr %debug, align 8, !dbg !1444, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1446
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1447

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1448
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1449
  br label %if.end, !dbg !1450

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1451
  %1 = load ptr, ptr %exception, align 8, !dbg !1451, !tbaa !1137
  %2 = load i32, ptr %1, align 8, !dbg !1452, !tbaa !1387
  ret i32 %2, !dbg !1453
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetIteratorIndex(ptr noundef %wand) local_unnamed_addr #0 !dbg !1454 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1458, metadata !DIExpression()), !dbg !1459
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1460
  %0 = load i32, ptr %debug, align 8, !dbg !1460, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1462
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1463

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1464
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 372, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1465
  br label %if.end, !dbg !1466

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1467
  %1 = load ptr, ptr %images, align 8, !dbg !1467, !tbaa !1123
  %cmp1 = icmp eq ptr %1, null, !dbg !1469
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1470

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1471
  %2 = load ptr, ptr %exception, align 8, !dbg !1471, !tbaa !1137
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1473
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 375, i32 noundef 470, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #8, !dbg !1474
  br label %return, !dbg !1475

if.end6:                                          ; preds = %if.end
  %call8 = tail call i64 @GetImageIndexInList(ptr noundef nonnull %1) #8, !dbg !1476
  br label %return, !dbg !1477

return:                                           ; preds = %if.end6, %if.then2
  %retval.0 = phi i64 [ -1, %if.then2 ], [ %call8, %if.end6 ], !dbg !1459
  ret i64 %retval.0, !dbg !1478
}

declare !dbg !1479 i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryConfigureOption(ptr noundef %option) local_unnamed_addr #0 !dbg !1482 {
entry:
  %number_options = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %option, metadata !1486, metadata !DIExpression()), !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_options) #8, !dbg !1492
  %call = tail call ptr @AcquireExceptionInfo() #8, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %call, metadata !1489, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1491
  %call1 = call ptr @GetConfigureInfoList(ptr noundef %option, ptr noundef nonnull %number_options, ptr noundef %call) #8, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1488, metadata !DIExpression()), !dbg !1491
  %call2 = call ptr @DestroyExceptionInfo(ptr noundef %call) #8, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1489, metadata !DIExpression()), !dbg !1491
  %cmp = icmp eq ptr %call1, null, !dbg !1496
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1498

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %call1, align 8, !dbg !1499, !tbaa !1500
  %value3 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 2, !dbg !1501
  %1 = load ptr, ptr %value3, align 8, !dbg !1501, !tbaa !1502
  %call4 = call ptr @AcquireString(ptr noundef %1) #8, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1487, metadata !DIExpression()), !dbg !1491
  %call5 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #8, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1488, metadata !DIExpression()), !dbg !1491
  br label %cleanup, !dbg !1506

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %entry ], !dbg !1491
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_options) #8, !dbg !1507
  ret ptr %retval.0, !dbg !1507
}

declare !dbg !1508 ptr @GetConfigureInfoList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1512 ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryConfigureOptions(ptr noundef %pattern, ptr noundef %number_options) local_unnamed_addr #0 !dbg !1513 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1518, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !1519, metadata !DIExpression()), !dbg !1522
  %call = tail call ptr @AcquireExceptionInfo() #8, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %call, metadata !1521, metadata !DIExpression()), !dbg !1522
  %call1 = tail call ptr @GetConfigureList(ptr noundef %pattern, ptr noundef %number_options, ptr noundef %call) #8, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1520, metadata !DIExpression()), !dbg !1522
  %call2 = tail call ptr @DestroyExceptionInfo(ptr noundef %call) #8, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1521, metadata !DIExpression()), !dbg !1522
  ret ptr %call1, !dbg !1526
}

declare !dbg !1527 ptr @GetConfigureList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryFontMetrics(ptr noundef %wand, ptr noundef %drawing_wand, ptr noundef %text) local_unnamed_addr #0 !dbg !1530 {
entry:
  %metrics = alloca %struct._TypeMetric, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1539, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %drawing_wand, metadata !1540, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %text, metadata !1541, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics) #8, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %metrics, metadata !1545, metadata !DIExpression()), !dbg !1561
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1562
  %0 = load i32, ptr %debug, align 8, !dbg !1562, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1564
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1565

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1566
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 535, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1567
  br label %if.end, !dbg !1568

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1569
  %1 = load ptr, ptr %images, align 8, !dbg !1569, !tbaa !1123
  %cmp1 = icmp eq ptr %1, null, !dbg !1571
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1572

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1573
  %2 = load ptr, ptr %exception, align 8, !dbg !1573, !tbaa !1137
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1575
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 539, i32 noundef 470, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #8, !dbg !1576
  br label %cleanup, !dbg !1577

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @AcquireQuantumMemory(i64 noundef 13, i64 noundef 8) #11, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1542, metadata !DIExpression()), !dbg !1559
  %cmp8 = icmp eq ptr %call7, null, !dbg !1579
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !1581

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @PeekDrawingWand(ptr noundef %drawing_wand) #8, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1543, metadata !DIExpression()), !dbg !1559
  %cmp12 = icmp eq ptr %call11, null, !dbg !1583
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1585

if.then13:                                        ; preds = %if.end10
  %call14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call7) #8, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1542, metadata !DIExpression()), !dbg !1559
  br label %cleanup, !dbg !1588

if.end15:                                         ; preds = %if.end10
  %text16 = getelementptr inbounds %struct._DrawInfo, ptr %call11, i64 0, i32 21, !dbg !1589
  %call17 = tail call ptr @CloneString(ptr noundef nonnull %text16, ptr noundef %text) #8, !dbg !1590
  %call18 = call ptr @ResetMagickMemory(ptr noundef nonnull %metrics, i32 noundef 0, i64 noundef 120) #8, !dbg !1591
  %3 = load ptr, ptr %images, align 8, !dbg !1592, !tbaa !1123
  %call20 = call i32 @GetTypeMetrics(ptr noundef %3, ptr noundef nonnull %call11, ptr noundef nonnull %metrics) #8, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1544, metadata !DIExpression()), !dbg !1559
  %call21 = call ptr @DestroyDrawInfo(ptr noundef nonnull %call11) #8, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1543, metadata !DIExpression()), !dbg !1559
  %cmp22 = icmp eq i32 %call20, 0, !dbg !1595
  br i1 %cmp22, label %if.then23, label %if.end28, !dbg !1597

if.then23:                                        ; preds = %if.end15
  %exception24 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1598
  %4 = load ptr, ptr %exception24, align 8, !dbg !1598, !tbaa !1137
  %5 = load ptr, ptr %images, align 8, !dbg !1600, !tbaa !1123
  %exception26 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 58, !dbg !1601
  call void @InheritException(ptr noundef %4, ptr noundef nonnull %exception26) #8, !dbg !1602
  %call27 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call7) #8, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1542, metadata !DIExpression()), !dbg !1559
  br label %cleanup, !dbg !1604

if.end28:                                         ; preds = %if.end15
  %6 = load double, ptr %metrics, align 8, !dbg !1605, !tbaa !1606
  store double %6, ptr %call7, align 8, !dbg !1611, !tbaa !1612
  %y = getelementptr inbounds %struct._PointInfo, ptr %metrics, i64 0, i32 1, !dbg !1613
  %7 = load double, ptr %y, align 8, !dbg !1613, !tbaa !1614
  %arrayidx30 = getelementptr inbounds double, ptr %call7, i64 1, !dbg !1615
  store double %7, ptr %arrayidx30, align 8, !dbg !1616, !tbaa !1612
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !1617
  %8 = load double, ptr %ascent, align 8, !dbg !1617, !tbaa !1618
  %arrayidx31 = getelementptr inbounds double, ptr %call7, i64 2, !dbg !1619
  store double %8, ptr %arrayidx31, align 8, !dbg !1620, !tbaa !1612
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !1621
  %9 = load double, ptr %descent, align 8, !dbg !1621, !tbaa !1622
  %arrayidx32 = getelementptr inbounds double, ptr %call7, i64 3, !dbg !1623
  store double %9, ptr %arrayidx32, align 8, !dbg !1624, !tbaa !1612
  %width = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3, !dbg !1625
  %10 = load double, ptr %width, align 8, !dbg !1625, !tbaa !1626
  %arrayidx33 = getelementptr inbounds double, ptr %call7, i64 4, !dbg !1627
  store double %10, ptr %arrayidx33, align 8, !dbg !1628, !tbaa !1612
  %height = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 4, !dbg !1629
  %11 = load double, ptr %height, align 8, !dbg !1629, !tbaa !1630
  %arrayidx34 = getelementptr inbounds double, ptr %call7, i64 5, !dbg !1631
  store double %11, ptr %arrayidx34, align 8, !dbg !1632, !tbaa !1612
  %max_advance = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 5, !dbg !1633
  %12 = load double, ptr %max_advance, align 8, !dbg !1633, !tbaa !1634
  %arrayidx35 = getelementptr inbounds double, ptr %call7, i64 6, !dbg !1635
  store double %12, ptr %arrayidx35, align 8, !dbg !1636, !tbaa !1612
  %bounds = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, !dbg !1637
  %13 = load double, ptr %bounds, align 8, !dbg !1638, !tbaa !1639
  %arrayidx36 = getelementptr inbounds double, ptr %call7, i64 7, !dbg !1640
  store double %13, ptr %arrayidx36, align 8, !dbg !1641, !tbaa !1612
  %y1 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 1, !dbg !1642
  %14 = load double, ptr %y1, align 8, !dbg !1642, !tbaa !1643
  %arrayidx38 = getelementptr inbounds double, ptr %call7, i64 8, !dbg !1644
  store double %14, ptr %arrayidx38, align 8, !dbg !1645, !tbaa !1612
  %x2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 2, !dbg !1646
  %15 = load double, ptr %x2, align 8, !dbg !1646, !tbaa !1647
  %arrayidx40 = getelementptr inbounds double, ptr %call7, i64 9, !dbg !1648
  store double %15, ptr %arrayidx40, align 8, !dbg !1649, !tbaa !1612
  %y2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 3, !dbg !1650
  %16 = load double, ptr %y2, align 8, !dbg !1650, !tbaa !1651
  %arrayidx42 = getelementptr inbounds double, ptr %call7, i64 10, !dbg !1652
  store double %16, ptr %arrayidx42, align 8, !dbg !1653, !tbaa !1612
  %origin = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, !dbg !1654
  %17 = load double, ptr %origin, align 8, !dbg !1655, !tbaa !1656
  %arrayidx44 = getelementptr inbounds double, ptr %call7, i64 11, !dbg !1657
  store double %17, ptr %arrayidx44, align 8, !dbg !1658, !tbaa !1612
  %y46 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, i32 1, !dbg !1659
  %18 = load double, ptr %y46, align 8, !dbg !1659, !tbaa !1660
  %arrayidx47 = getelementptr inbounds double, ptr %call7, i64 12, !dbg !1661
  store double %18, ptr %arrayidx47, align 8, !dbg !1662, !tbaa !1612
  br label %cleanup, !dbg !1663

cleanup:                                          ; preds = %if.end6, %if.end28, %if.then23, %if.then13, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then13 ], [ null, %if.then23 ], [ %call7, %if.end28 ], [ null, %if.end6 ], !dbg !1559
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics) #8, !dbg !1664
  ret ptr %retval.0, !dbg !1664
}

declare !dbg !1665 ptr @PeekDrawingWand(ptr noundef) local_unnamed_addr #2

declare !dbg !1668 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1671 i32 @GetTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1678 ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryMultilineFontMetrics(ptr noundef %wand, ptr noundef %drawing_wand, ptr noundef %text) local_unnamed_addr #0 !dbg !1681 {
entry:
  %metrics = alloca %struct._TypeMetric, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1683, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %drawing_wand, metadata !1684, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %text, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics) #8, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %metrics, metadata !1689, metadata !DIExpression()), !dbg !1692
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1693
  %0 = load i32, ptr %debug, align 8, !dbg !1693, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1695
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1696

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1697
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1698
  br label %if.end, !dbg !1699

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1700
  %1 = load ptr, ptr %images, align 8, !dbg !1700, !tbaa !1123
  %cmp1 = icmp eq ptr %1, null, !dbg !1702
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1703

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1704
  %2 = load ptr, ptr %exception, align 8, !dbg !1704, !tbaa !1137
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1706
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, i32 noundef 470, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #8, !dbg !1707
  br label %cleanup, !dbg !1708

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @AcquireQuantumMemory(i64 noundef 13, i64 noundef 8) #11, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1686, metadata !DIExpression()), !dbg !1690
  %cmp8 = icmp eq ptr %call7, null, !dbg !1710
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !1712

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @PeekDrawingWand(ptr noundef %drawing_wand) #8, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1687, metadata !DIExpression()), !dbg !1690
  %cmp12 = icmp eq ptr %call11, null, !dbg !1714
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1716

if.then13:                                        ; preds = %if.end10
  %call14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call7) #8, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1686, metadata !DIExpression()), !dbg !1690
  br label %cleanup, !dbg !1719

if.end15:                                         ; preds = %if.end10
  %text16 = getelementptr inbounds %struct._DrawInfo, ptr %call11, i64 0, i32 21, !dbg !1720
  %call17 = tail call ptr @CloneString(ptr noundef nonnull %text16, ptr noundef %text) #8, !dbg !1721
  %call18 = call ptr @ResetMagickMemory(ptr noundef nonnull %metrics, i32 noundef 0, i64 noundef 120) #8, !dbg !1722
  %3 = load ptr, ptr %images, align 8, !dbg !1723, !tbaa !1123
  %call20 = call i32 @GetMultilineTypeMetrics(ptr noundef %3, ptr noundef nonnull %call11, ptr noundef nonnull %metrics) #8, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1688, metadata !DIExpression()), !dbg !1690
  %call21 = call ptr @DestroyDrawInfo(ptr noundef nonnull %call11) #8, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1687, metadata !DIExpression()), !dbg !1690
  %cmp22 = icmp eq i32 %call20, 0, !dbg !1726
  br i1 %cmp22, label %if.then23, label %if.end28, !dbg !1728

if.then23:                                        ; preds = %if.end15
  %exception24 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1729
  %4 = load ptr, ptr %exception24, align 8, !dbg !1729, !tbaa !1137
  %5 = load ptr, ptr %images, align 8, !dbg !1731, !tbaa !1123
  %exception26 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 58, !dbg !1732
  call void @InheritException(ptr noundef %4, ptr noundef nonnull %exception26) #8, !dbg !1733
  %call27 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call7) #8, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1686, metadata !DIExpression()), !dbg !1690
  br label %cleanup, !dbg !1735

if.end28:                                         ; preds = %if.end15
  %6 = load double, ptr %metrics, align 8, !dbg !1736, !tbaa !1606
  store double %6, ptr %call7, align 8, !dbg !1737, !tbaa !1612
  %y = getelementptr inbounds %struct._PointInfo, ptr %metrics, i64 0, i32 1, !dbg !1738
  %7 = load double, ptr %y, align 8, !dbg !1738, !tbaa !1614
  %arrayidx30 = getelementptr inbounds double, ptr %call7, i64 1, !dbg !1739
  store double %7, ptr %arrayidx30, align 8, !dbg !1740, !tbaa !1612
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !1741
  %8 = load double, ptr %ascent, align 8, !dbg !1741, !tbaa !1618
  %arrayidx31 = getelementptr inbounds double, ptr %call7, i64 2, !dbg !1742
  store double %8, ptr %arrayidx31, align 8, !dbg !1743, !tbaa !1612
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !1744
  %9 = load double, ptr %descent, align 8, !dbg !1744, !tbaa !1622
  %arrayidx32 = getelementptr inbounds double, ptr %call7, i64 3, !dbg !1745
  store double %9, ptr %arrayidx32, align 8, !dbg !1746, !tbaa !1612
  %width = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 3, !dbg !1747
  %10 = load double, ptr %width, align 8, !dbg !1747, !tbaa !1626
  %arrayidx33 = getelementptr inbounds double, ptr %call7, i64 4, !dbg !1748
  store double %10, ptr %arrayidx33, align 8, !dbg !1749, !tbaa !1612
  %height = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 4, !dbg !1750
  %11 = load double, ptr %height, align 8, !dbg !1750, !tbaa !1630
  %arrayidx34 = getelementptr inbounds double, ptr %call7, i64 5, !dbg !1751
  store double %11, ptr %arrayidx34, align 8, !dbg !1752, !tbaa !1612
  %max_advance = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 5, !dbg !1753
  %12 = load double, ptr %max_advance, align 8, !dbg !1753, !tbaa !1634
  %arrayidx35 = getelementptr inbounds double, ptr %call7, i64 6, !dbg !1754
  store double %12, ptr %arrayidx35, align 8, !dbg !1755, !tbaa !1612
  %bounds = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, !dbg !1756
  %13 = load double, ptr %bounds, align 8, !dbg !1757, !tbaa !1639
  %arrayidx36 = getelementptr inbounds double, ptr %call7, i64 7, !dbg !1758
  store double %13, ptr %arrayidx36, align 8, !dbg !1759, !tbaa !1612
  %y1 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 1, !dbg !1760
  %14 = load double, ptr %y1, align 8, !dbg !1760, !tbaa !1643
  %arrayidx38 = getelementptr inbounds double, ptr %call7, i64 8, !dbg !1761
  store double %14, ptr %arrayidx38, align 8, !dbg !1762, !tbaa !1612
  %x2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 2, !dbg !1763
  %15 = load double, ptr %x2, align 8, !dbg !1763, !tbaa !1647
  %arrayidx40 = getelementptr inbounds double, ptr %call7, i64 9, !dbg !1764
  store double %15, ptr %arrayidx40, align 8, !dbg !1765, !tbaa !1612
  %y2 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 8, i32 3, !dbg !1766
  %16 = load double, ptr %y2, align 8, !dbg !1766, !tbaa !1651
  %arrayidx42 = getelementptr inbounds double, ptr %call7, i64 10, !dbg !1767
  store double %16, ptr %arrayidx42, align 8, !dbg !1768, !tbaa !1612
  %origin = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, !dbg !1769
  %17 = load double, ptr %origin, align 8, !dbg !1770, !tbaa !1656
  %arrayidx44 = getelementptr inbounds double, ptr %call7, i64 11, !dbg !1771
  store double %17, ptr %arrayidx44, align 8, !dbg !1772, !tbaa !1612
  %y46 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 9, i32 1, !dbg !1773
  %18 = load double, ptr %y46, align 8, !dbg !1773, !tbaa !1660
  %arrayidx47 = getelementptr inbounds double, ptr %call7, i64 12, !dbg !1774
  store double %18, ptr %arrayidx47, align 8, !dbg !1775, !tbaa !1612
  br label %cleanup, !dbg !1776

cleanup:                                          ; preds = %if.end6, %if.end28, %if.then23, %if.then13, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then13 ], [ null, %if.then23 ], [ %call7, %if.end28 ], [ null, %if.end6 ], !dbg !1690
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics) #8, !dbg !1777
  ret ptr %retval.0, !dbg !1777
}

declare !dbg !1778 i32 @GetMultilineTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryFonts(ptr noundef %pattern, ptr noundef %number_fonts) local_unnamed_addr #0 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1781, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %number_fonts, metadata !1782, metadata !DIExpression()), !dbg !1785
  %call = tail call ptr @AcquireExceptionInfo() #8, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %call, metadata !1784, metadata !DIExpression()), !dbg !1785
  %call1 = tail call ptr @GetTypeList(ptr noundef %pattern, ptr noundef %number_fonts, ptr noundef %call) #8, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1783, metadata !DIExpression()), !dbg !1785
  %call2 = tail call ptr @DestroyExceptionInfo(ptr noundef %call) #8, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1784, metadata !DIExpression()), !dbg !1785
  ret ptr %call1, !dbg !1789
}

declare !dbg !1790 ptr @GetTypeList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickQueryFormats(ptr noundef %pattern, ptr noundef %number_formats) local_unnamed_addr #0 !dbg !1791 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1793, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %number_formats, metadata !1794, metadata !DIExpression()), !dbg !1797
  %call = tail call ptr @AcquireExceptionInfo() #8, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %call, metadata !1796, metadata !DIExpression()), !dbg !1797
  %call1 = tail call ptr @GetMagickList(ptr noundef %pattern, ptr noundef %number_formats, ptr noundef %call) #8, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1795, metadata !DIExpression()), !dbg !1797
  %call2 = tail call ptr @DestroyExceptionInfo(ptr noundef %call) #8, !dbg !1800
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1796, metadata !DIExpression()), !dbg !1797
  ret ptr %call1, !dbg !1801
}

declare !dbg !1802 ptr @GetMagickList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickRelinquishMemory(ptr noundef %memory) local_unnamed_addr #0 !dbg !1804 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !1806, metadata !DIExpression()), !dbg !1807
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 794, ptr noundef nonnull @.str.11) #8, !dbg !1808
  %call1 = tail call ptr @RelinquishMagickMemory(ptr noundef %memory) #8, !dbg !1809
  ret ptr %call1, !dbg !1810
}

; Function Attrs: nounwind uwtable
define dso_local void @MagickResetIterator(ptr noundef %wand) local_unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1813, metadata !DIExpression()), !dbg !1814
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1815
  %0 = load i32, ptr %debug, align 8, !dbg !1815, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1817
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1818

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1819
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1820
  br label %if.end, !dbg !1821

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1822
  %1 = load ptr, ptr %images, align 8, !dbg !1822, !tbaa !1123
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef %1) #8, !dbg !1823
  store ptr %call1, ptr %images, align 8, !dbg !1824, !tbaa !1123
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 6, !dbg !1825
  store i32 0, ptr %insert_before, align 8, !dbg !1826, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 7, !dbg !1827
  store i32 1, ptr %image_pending, align 4, !dbg !1828, !tbaa !1135
  ret void, !dbg !1829
}

declare !dbg !1830 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickSetFirstIterator(ptr noundef %wand) local_unnamed_addr #0 !dbg !1833 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1835, metadata !DIExpression()), !dbg !1836
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1837
  %0 = load i32, ptr %debug, align 8, !dbg !1837, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1839
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1840

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1841
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 879, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1842
  br label %if.end, !dbg !1843

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1844
  %1 = load ptr, ptr %images, align 8, !dbg !1844, !tbaa !1123
  %call1 = tail call ptr @GetFirstImageInList(ptr noundef %1) #8, !dbg !1845
  store ptr %call1, ptr %images, align 8, !dbg !1846, !tbaa !1123
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 6, !dbg !1847
  store i32 1, ptr %insert_before, align 8, !dbg !1848, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 7, !dbg !1849
  store i32 0, ptr %image_pending, align 4, !dbg !1850, !tbaa !1135
  ret void, !dbg !1851
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetIteratorIndex(ptr noundef %wand, i64 noundef %index) local_unnamed_addr #0 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1857, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %index, metadata !1858, metadata !DIExpression()), !dbg !1860
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1861
  %0 = load i32, ptr %debug, align 8, !dbg !1861, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1863
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1864

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1865
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 935, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1866
  br label %if.end, !dbg !1867

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1868
  %1 = load ptr, ptr %images, align 8, !dbg !1868, !tbaa !1123
  %cmp1 = icmp eq ptr %1, null, !dbg !1870
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1871

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @GetImageFromList(ptr noundef nonnull %1, i64 noundef %index) #8, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1859, metadata !DIExpression()), !dbg !1860
  %cmp6 = icmp eq ptr %call5, null, !dbg !1873
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !1875

if.then7:                                         ; preds = %if.end3
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1876
  %2 = load ptr, ptr %exception, align 8, !dbg !1876, !tbaa !1137
  %3 = load ptr, ptr %images, align 8, !dbg !1878, !tbaa !1123
  %exception9 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 58, !dbg !1879
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %exception9) #8, !dbg !1880
  br label %cleanup, !dbg !1881

if.end10:                                         ; preds = %if.end3
  store ptr %call5, ptr %images, align 8, !dbg !1882, !tbaa !1123
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 6, !dbg !1883
  store i32 0, ptr %insert_before, align 8, !dbg !1884, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 7, !dbg !1885
  store i32 0, ptr %image_pending, align 4, !dbg !1886, !tbaa !1135
  br label %cleanup, !dbg !1887

cleanup:                                          ; preds = %if.end, %if.end10, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end10 ], [ 0, %if.end ], !dbg !1860
  ret i32 %retval.0, !dbg !1888
}

declare !dbg !1889 ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickSetLastIterator(ptr noundef %wand) local_unnamed_addr #0 !dbg !1892 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1894, metadata !DIExpression()), !dbg !1895
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1896
  %0 = load i32, ptr %debug, align 8, !dbg !1896, !tbaa !1103
  %cmp.not = icmp eq i32 %0, 0, !dbg !1898
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1899

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1900
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1901
  br label %if.end, !dbg !1902

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1903
  %1 = load ptr, ptr %images, align 8, !dbg !1903, !tbaa !1123
  %call1 = tail call ptr @GetLastImageInList(ptr noundef %1) #8, !dbg !1904
  store ptr %call1, ptr %images, align 8, !dbg !1905, !tbaa !1123
  %insert_before = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 6, !dbg !1906
  store i32 0, ptr %insert_before, align 8, !dbg !1907, !tbaa !1132
  %image_pending = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 7, !dbg !1908
  store i32 1, ptr %image_pending, align 4, !dbg !1909, !tbaa !1135
  ret void, !dbg !1910
}

declare !dbg !1911 ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickWandGenesis() local_unnamed_addr #0 !dbg !1912 {
entry:
  %call = tail call i32 @IsMagickCoreInstantiated() #8, !dbg !1913
  %cmp = icmp eq i32 %call, 0, !dbg !1915
  br i1 %cmp, label %if.then, label %if.end, !dbg !1916

if.then:                                          ; preds = %entry
  tail call void @MagickCoreGenesis(ptr noundef null, i32 noundef 0) #8, !dbg !1917
  br label %if.end, !dbg !1917

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1918
}

declare !dbg !1919 i32 @IsMagickCoreInstantiated() local_unnamed_addr #2

declare !dbg !1920 void @MagickCoreGenesis(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1924 void @DestroyWandIds() local_unnamed_addr #2

declare !dbg !1925 void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @NewMagickWand() local_unnamed_addr #0 !dbg !1926 {
entry:
  %depth = alloca i64, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception6 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %depth) #8, !dbg !1939
  call void @llvm.dbg.value(metadata i64 16, metadata !1932, metadata !DIExpression()), !dbg !1940
  store i64 16, ptr %depth, align 8, !dbg !1941, !tbaa !1942
  call void @llvm.dbg.value(metadata ptr %depth, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !1940
  %call = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %depth) #8, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %call, metadata !1930, metadata !DIExpression()), !dbg !1940
  %0 = load i64, ptr %depth, align 8, !dbg !1944, !tbaa !1942
  call void @llvm.dbg.value(metadata i64 %0, metadata !1932, metadata !DIExpression()), !dbg !1940
  %cmp.not = icmp eq i64 %0, 16, !dbg !1945
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1946

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #8, !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1933, metadata !DIExpression()), !dbg !1947
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #8, !dbg !1947
  %call1 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1074, i32 noundef 470, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %call) #8, !dbg !1947
  call void @CatchException(ptr noundef nonnull %exception) #8, !dbg !1947
  %call2 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #8, !dbg !1947
  call void @MagickWandTerminus(), !dbg !1947
  call void @_exit(i32 noundef -229) #10, !dbg !1947
  unreachable, !dbg !1947

if.end:                                           ; preds = %entry
  %call3 = call ptr @AcquireMagickMemory(i64 noundef 4160) #9, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1931, metadata !DIExpression()), !dbg !1940
  %cmp4 = icmp eq ptr %call3, null, !dbg !1949
  br i1 %cmp4, label %if.then5, label %if.end11, !dbg !1950

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception6) #8, !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %exception6, metadata !1936, metadata !DIExpression()), !dbg !1951
  call void @GetExceptionInfo(ptr noundef nonnull %exception6) #8, !dbg !1951
  %call7 = tail call ptr @__errno_location() #12, !dbg !1951
  %1 = load i32, ptr %call7, align 4, !dbg !1951, !tbaa !1952
  %call8 = call ptr @GetExceptionMessage(i32 noundef %1) #8, !dbg !1951
  %call9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1078, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call8) #8, !dbg !1951
  call void @CatchException(ptr noundef nonnull %exception6) #8, !dbg !1951
  %call10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception6) #8, !dbg !1951
  call void @MagickWandTerminus(), !dbg !1951
  call void @_exit(i32 noundef 1) #10, !dbg !1951
  unreachable, !dbg !1951

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @ResetMagickMemory(ptr noundef nonnull %call3, i32 noundef 0, i64 noundef 4160) #8, !dbg !1953
  %call13 = call i64 @AcquireWandId() #8, !dbg !1954
  store i64 %call13, ptr %call3, align 8, !dbg !1955, !tbaa !1196
  %name = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 1, !dbg !1956
  %conv = uitofp i64 %call13 to double, !dbg !1957
  %call15 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #8, !dbg !1958
  %call16 = call ptr @NewImageList() #8, !dbg !1959
  %images = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 5, !dbg !1960
  store ptr %call16, ptr %images, align 8, !dbg !1961, !tbaa !1123
  %call17 = call ptr @AcquireImageInfo() #8, !dbg !1962
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 3, !dbg !1963
  store ptr %call17, ptr %image_info, align 8, !dbg !1964, !tbaa !1119
  %call18 = call ptr @AcquireExceptionInfo() #8, !dbg !1965
  %exception19 = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 2, !dbg !1966
  store ptr %call18, ptr %exception19, align 8, !dbg !1967, !tbaa !1137
  %call20 = call ptr @CloneQuantizeInfo(ptr noundef null) #8, !dbg !1968
  %quantize_info = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 4, !dbg !1969
  store ptr %call20, ptr %quantize_info, align 8, !dbg !1970, !tbaa !1115
  %call21 = call i32 @IsEventLogging() #8, !dbg !1971
  %debug = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 8, !dbg !1972
  store i32 %call21, ptr %debug, align 8, !dbg !1973, !tbaa !1103
  %cmp23.not = icmp eq i32 %call21, 0, !dbg !1974
  br i1 %cmp23.not, label %if.end29, label %if.then25, !dbg !1976

if.then25:                                        ; preds = %if.end11
  %call28 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1089, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #8, !dbg !1977
  br label %if.end29, !dbg !1978

if.end29:                                         ; preds = %if.then25, %if.end11
  %signature = getelementptr inbounds %struct._MagickWand, ptr %call3, i64 0, i32 9, !dbg !1979
  store i64 2880220587, ptr %signature, align 8, !dbg !1980, !tbaa !1232
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %depth) #8, !dbg !1981
  ret ptr %call3, !dbg !1982
}

declare !dbg !1983 ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #2

declare !dbg !1987 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1991 ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @NewMagickWandFromImage(ptr noundef %image) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1998, metadata !DIExpression()), !dbg !2000
  %call = tail call ptr @NewMagickWand(), !dbg !2001
  call void @llvm.dbg.value(metadata ptr %call, metadata !1999, metadata !DIExpression()), !dbg !2000
  %exception = getelementptr inbounds %struct._MagickWand, ptr %call, i64 0, i32 2, !dbg !2002
  %0 = load ptr, ptr %exception, align 8, !dbg !2002, !tbaa !1137
  %call1 = tail call ptr @CloneImage(ptr noundef %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %0) #8, !dbg !2003
  %images = getelementptr inbounds %struct._MagickWand, ptr %call, i64 0, i32 5, !dbg !2004
  store ptr %call1, ptr %images, align 8, !dbg !2005, !tbaa !1123
  ret ptr %call, !dbg !2006
}

declare !dbg !2007 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMagickWandInstantiated() local_unnamed_addr #0 !dbg !2010 {
entry:
  %call = tail call i32 @IsMagickCoreInstantiated() #8, !dbg !2011
  ret i32 %call, !dbg !2012
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1087, !1088, !1089, !1090, !1091, !1092}
!llvm.ident = !{!1093}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !554, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "c164eff20c0049a1630a14d8ddf5e0fc")
!2 = !{!3, !77, !82, !107, !119, !129, !135, !140, !177, !191, !224, !246, !251, !259, !294, !309, !380, !388, !394, !411, !423, !444, !451, !476, !482, !488, !493, !499, !505, !512, !520, !533, !539, !545, !549}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 28, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!7 = !DIEnumerator(name: "UndefinedException", value: 0)
!8 = !DIEnumerator(name: "WarningException", value: 300)
!9 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!10 = !DIEnumerator(name: "TypeWarning", value: 305)
!11 = !DIEnumerator(name: "OptionWarning", value: 310)
!12 = !DIEnumerator(name: "DelegateWarning", value: 315)
!13 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!14 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!15 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!16 = !DIEnumerator(name: "BlobWarning", value: 335)
!17 = !DIEnumerator(name: "StreamWarning", value: 340)
!18 = !DIEnumerator(name: "CacheWarning", value: 345)
!19 = !DIEnumerator(name: "CoderWarning", value: 350)
!20 = !DIEnumerator(name: "FilterWarning", value: 352)
!21 = !DIEnumerator(name: "ModuleWarning", value: 355)
!22 = !DIEnumerator(name: "DrawWarning", value: 360)
!23 = !DIEnumerator(name: "ImageWarning", value: 365)
!24 = !DIEnumerator(name: "WandWarning", value: 370)
!25 = !DIEnumerator(name: "RandomWarning", value: 375)
!26 = !DIEnumerator(name: "XServerWarning", value: 380)
!27 = !DIEnumerator(name: "MonitorWarning", value: 385)
!28 = !DIEnumerator(name: "RegistryWarning", value: 390)
!29 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!30 = !DIEnumerator(name: "PolicyWarning", value: 399)
!31 = !DIEnumerator(name: "ErrorException", value: 400)
!32 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!33 = !DIEnumerator(name: "TypeError", value: 405)
!34 = !DIEnumerator(name: "OptionError", value: 410)
!35 = !DIEnumerator(name: "DelegateError", value: 415)
!36 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!37 = !DIEnumerator(name: "CorruptImageError", value: 425)
!38 = !DIEnumerator(name: "FileOpenError", value: 430)
!39 = !DIEnumerator(name: "BlobError", value: 435)
!40 = !DIEnumerator(name: "StreamError", value: 440)
!41 = !DIEnumerator(name: "CacheError", value: 445)
!42 = !DIEnumerator(name: "CoderError", value: 450)
!43 = !DIEnumerator(name: "FilterError", value: 452)
!44 = !DIEnumerator(name: "ModuleError", value: 455)
!45 = !DIEnumerator(name: "DrawError", value: 460)
!46 = !DIEnumerator(name: "ImageError", value: 465)
!47 = !DIEnumerator(name: "WandError", value: 470)
!48 = !DIEnumerator(name: "RandomError", value: 475)
!49 = !DIEnumerator(name: "XServerError", value: 480)
!50 = !DIEnumerator(name: "MonitorError", value: 485)
!51 = !DIEnumerator(name: "RegistryError", value: 490)
!52 = !DIEnumerator(name: "ConfigureError", value: 495)
!53 = !DIEnumerator(name: "PolicyError", value: 499)
!54 = !DIEnumerator(name: "FatalErrorException", value: 700)
!55 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!56 = !DIEnumerator(name: "TypeFatalError", value: 705)
!57 = !DIEnumerator(name: "OptionFatalError", value: 710)
!58 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!59 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!60 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!61 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!62 = !DIEnumerator(name: "BlobFatalError", value: 735)
!63 = !DIEnumerator(name: "StreamFatalError", value: 740)
!64 = !DIEnumerator(name: "CacheFatalError", value: 745)
!65 = !DIEnumerator(name: "CoderFatalError", value: 750)
!66 = !DIEnumerator(name: "FilterFatalError", value: 752)
!67 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!68 = !DIEnumerator(name: "DrawFatalError", value: 760)
!69 = !DIEnumerator(name: "ImageFatalError", value: 765)
!70 = !DIEnumerator(name: "WandFatalError", value: 770)
!71 = !DIEnumerator(name: "RandomFatalError", value: 775)
!72 = !DIEnumerator(name: "XServerFatalError", value: 780)
!73 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!74 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!75 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!76 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 211, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "MagickFalse", value: 0)
!81 = !DIEnumerator(name: "MagickTrue", value: 1)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 25, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!85 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!86 = !DIEnumerator(name: "NoCompression", value: 1)
!87 = !DIEnumerator(name: "BZipCompression", value: 2)
!88 = !DIEnumerator(name: "DXT1Compression", value: 3)
!89 = !DIEnumerator(name: "DXT3Compression", value: 4)
!90 = !DIEnumerator(name: "DXT5Compression", value: 5)
!91 = !DIEnumerator(name: "FaxCompression", value: 6)
!92 = !DIEnumerator(name: "Group4Compression", value: 7)
!93 = !DIEnumerator(name: "JPEGCompression", value: 8)
!94 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!95 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!96 = !DIEnumerator(name: "LZWCompression", value: 11)
!97 = !DIEnumerator(name: "RLECompression", value: 12)
!98 = !DIEnumerator(name: "ZipCompression", value: 13)
!99 = !DIEnumerator(name: "ZipSCompression", value: 14)
!100 = !DIEnumerator(name: "PizCompression", value: 15)
!101 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!102 = !DIEnumerator(name: "B44Compression", value: 17)
!103 = !DIEnumerator(name: "B44ACompression", value: 18)
!104 = !DIEnumerator(name: "LZMACompression", value: 19)
!105 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!106 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 75, baseType: !5, size: 32, elements: !109)
!108 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!111 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!112 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!113 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!114 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!115 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!116 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!117 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!118 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 63, baseType: !5, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128}
!121 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!122 = !DIEnumerator(name: "NoInterlace", value: 1)
!123 = !DIEnumerator(name: "LineInterlace", value: 2)
!124 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!125 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!126 = !DIEnumerator(name: "GIFInterlace", value: 5)
!127 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!128 = !DIEnumerator(name: "PNGInterlace", value: 7)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 30, baseType: !5, size: 32, elements: !131)
!130 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!133 = !DIEnumerator(name: "LSBEndian", value: 1)
!134 = !DIEnumerator(name: "MSBEndian", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 88, baseType: !5, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!138 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!139 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 25, baseType: !5, size: 32, elements: !142)
!141 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!143 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!144 = !DIEnumerator(name: "RGBColorspace", value: 1)
!145 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!146 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!147 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!148 = !DIEnumerator(name: "LabColorspace", value: 5)
!149 = !DIEnumerator(name: "XYZColorspace", value: 6)
!150 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!151 = !DIEnumerator(name: "YCCColorspace", value: 8)
!152 = !DIEnumerator(name: "YIQColorspace", value: 9)
!153 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!154 = !DIEnumerator(name: "YUVColorspace", value: 11)
!155 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!156 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!157 = !DIEnumerator(name: "HSBColorspace", value: 14)
!158 = !DIEnumerator(name: "HSLColorspace", value: 15)
!159 = !DIEnumerator(name: "HWBColorspace", value: 16)
!160 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!161 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!162 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!163 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!164 = !DIEnumerator(name: "LogColorspace", value: 21)
!165 = !DIEnumerator(name: "CMYColorspace", value: 22)
!166 = !DIEnumerator(name: "LuvColorspace", value: 23)
!167 = !DIEnumerator(name: "HCLColorspace", value: 24)
!168 = !DIEnumerator(name: "LCHColorspace", value: 25)
!169 = !DIEnumerator(name: "LMSColorspace", value: 26)
!170 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!171 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!172 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!173 = !DIEnumerator(name: "HSIColorspace", value: 30)
!174 = !DIEnumerator(name: "HSVColorspace", value: 31)
!175 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!176 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 47, baseType: !5, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!179 = !DIEnumerator(name: "UndefinedType", value: 0)
!180 = !DIEnumerator(name: "BilevelType", value: 1)
!181 = !DIEnumerator(name: "GrayscaleType", value: 2)
!182 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!183 = !DIEnumerator(name: "PaletteType", value: 4)
!184 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!185 = !DIEnumerator(name: "TrueColorType", value: 6)
!186 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!187 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!188 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!189 = !DIEnumerator(name: "OptimizeType", value: 10)
!190 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 27, baseType: !5, size: 32, elements: !193)
!192 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!194 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!195 = !DIEnumerator(name: "RotatePreview", value: 1)
!196 = !DIEnumerator(name: "ShearPreview", value: 2)
!197 = !DIEnumerator(name: "RollPreview", value: 3)
!198 = !DIEnumerator(name: "HuePreview", value: 4)
!199 = !DIEnumerator(name: "SaturationPreview", value: 5)
!200 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!201 = !DIEnumerator(name: "GammaPreview", value: 7)
!202 = !DIEnumerator(name: "SpiffPreview", value: 8)
!203 = !DIEnumerator(name: "DullPreview", value: 9)
!204 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!205 = !DIEnumerator(name: "QuantizePreview", value: 11)
!206 = !DIEnumerator(name: "DespecklePreview", value: 12)
!207 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!208 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!209 = !DIEnumerator(name: "SharpenPreview", value: 15)
!210 = !DIEnumerator(name: "BlurPreview", value: 16)
!211 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!212 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!213 = !DIEnumerator(name: "SpreadPreview", value: 19)
!214 = !DIEnumerator(name: "SolarizePreview", value: 20)
!215 = !DIEnumerator(name: "ShadePreview", value: 21)
!216 = !DIEnumerator(name: "RaisePreview", value: 22)
!217 = !DIEnumerator(name: "SegmentPreview", value: 23)
!218 = !DIEnumerator(name: "SwirlPreview", value: 24)
!219 = !DIEnumerator(name: "ImplodePreview", value: 25)
!220 = !DIEnumerator(name: "WavePreview", value: 26)
!221 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!222 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!223 = !DIEnumerator(name: "JPEGPreview", value: 29)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 177, baseType: !5, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!226 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!227 = !DIEnumerator(name: "RedChannel", value: 1)
!228 = !DIEnumerator(name: "GrayChannel", value: 1)
!229 = !DIEnumerator(name: "CyanChannel", value: 1)
!230 = !DIEnumerator(name: "GreenChannel", value: 2)
!231 = !DIEnumerator(name: "MagentaChannel", value: 2)
!232 = !DIEnumerator(name: "BlueChannel", value: 4)
!233 = !DIEnumerator(name: "YellowChannel", value: 4)
!234 = !DIEnumerator(name: "AlphaChannel", value: 8)
!235 = !DIEnumerator(name: "OpacityChannel", value: 8)
!236 = !DIEnumerator(name: "MatteChannel", value: 8)
!237 = !DIEnumerator(name: "BlackChannel", value: 32)
!238 = !DIEnumerator(name: "IndexChannel", value: 32)
!239 = !DIEnumerator(name: "CompositeChannels", value: 47)
!240 = !DIEnumerator(name: "AllChannels", value: 134217727)
!241 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!242 = !DIEnumerator(name: "RGBChannels", value: 128)
!243 = !DIEnumerator(name: "GrayChannels", value: 128)
!244 = !DIEnumerator(name: "SyncChannels", value: 256)
!245 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 204, baseType: !5, size: 32, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "UndefinedClass", value: 0)
!249 = !DIEnumerator(name: "DirectClass", value: 1)
!250 = !DIEnumerator(name: "PseudoClass", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 42, baseType: !5, size: 32, elements: !253)
!252 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!255 = !DIEnumerator(name: "SaturationIntent", value: 1)
!256 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!257 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!258 = !DIEnumerator(name: "RelativeIntent", value: 4)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 32, baseType: !5, size: 32, elements: !261)
!260 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!262 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!263 = !DIEnumerator(name: "PointFilter", value: 1)
!264 = !DIEnumerator(name: "BoxFilter", value: 2)
!265 = !DIEnumerator(name: "TriangleFilter", value: 3)
!266 = !DIEnumerator(name: "HermiteFilter", value: 4)
!267 = !DIEnumerator(name: "HanningFilter", value: 5)
!268 = !DIEnumerator(name: "HammingFilter", value: 6)
!269 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!270 = !DIEnumerator(name: "GaussianFilter", value: 8)
!271 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!272 = !DIEnumerator(name: "CubicFilter", value: 10)
!273 = !DIEnumerator(name: "CatromFilter", value: 11)
!274 = !DIEnumerator(name: "MitchellFilter", value: 12)
!275 = !DIEnumerator(name: "JincFilter", value: 13)
!276 = !DIEnumerator(name: "SincFilter", value: 14)
!277 = !DIEnumerator(name: "SincFastFilter", value: 15)
!278 = !DIEnumerator(name: "KaiserFilter", value: 16)
!279 = !DIEnumerator(name: "WelshFilter", value: 17)
!280 = !DIEnumerator(name: "ParzenFilter", value: 18)
!281 = !DIEnumerator(name: "BohmanFilter", value: 19)
!282 = !DIEnumerator(name: "BartlettFilter", value: 20)
!283 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!284 = !DIEnumerator(name: "LanczosFilter", value: 22)
!285 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!286 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!287 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!288 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!289 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!290 = !DIEnumerator(name: "CosineFilter", value: 28)
!291 = !DIEnumerator(name: "SplineFilter", value: 29)
!292 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!293 = !DIEnumerator(name: "SentinelFilter", value: 31)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 77, baseType: !5, size: 32, elements: !296)
!295 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!297 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!298 = !DIEnumerator(name: "ForgetGravity", value: 0)
!299 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!300 = !DIEnumerator(name: "NorthGravity", value: 2)
!301 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!302 = !DIEnumerator(name: "WestGravity", value: 4)
!303 = !DIEnumerator(name: "CenterGravity", value: 5)
!304 = !DIEnumerator(name: "EastGravity", value: 6)
!305 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!306 = !DIEnumerator(name: "SouthGravity", value: 8)
!307 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!308 = !DIEnumerator(name: "StaticGravity", value: 10)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !310, line: 25, baseType: !5, size: 32, elements: !311)
!310 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!312 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!313 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!314 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!315 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!316 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!317 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!318 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!319 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!320 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!321 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!322 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!323 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!324 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!325 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!326 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!327 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!328 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!329 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!330 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!331 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!332 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!333 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!334 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!335 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!336 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!337 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!338 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!339 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!340 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!341 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!342 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!343 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!344 = !DIEnumerator(name: "InCompositeOp", value: 32)
!345 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!346 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!347 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!348 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!349 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!350 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!351 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!352 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!353 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!354 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!355 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!356 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!357 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!358 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!359 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!360 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!361 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!362 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!363 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!364 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!365 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!366 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!367 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!368 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!369 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!370 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!371 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!372 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!373 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!374 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!375 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!376 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!377 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!378 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!379 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !381, line: 25, baseType: !5, size: 32, elements: !382)
!381 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!384 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!385 = !DIEnumerator(name: "NoneDispose", value: 1)
!386 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!387 = !DIEnumerator(name: "PreviousDispose", value: 3)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !389, line: 25, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!390 = !{!391, !392, !393}
!391 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!392 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!393 = !DIEnumerator(name: "RunningTimerState", value: 2)
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !395, line: 31, baseType: !5, size: 32, elements: !396)
!395 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!397 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!398 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!399 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!400 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!401 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!402 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!403 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!404 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!405 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!406 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!407 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!408 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!409 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!410 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !395, line: 67, baseType: !5, size: 32, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!413 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!414 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!415 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!416 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!417 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!418 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!419 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!420 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!421 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!422 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 27, baseType: !5, size: 32, elements: !425)
!424 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!426 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!427 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!428 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!429 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!430 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!431 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!432 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!433 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!434 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!435 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!436 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!437 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!438 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!439 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!440 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!441 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!442 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!443 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !445, line: 27, baseType: !5, size: 32, elements: !446)
!445 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3eab4066ac81fc10b9d90b7cb7db1009")
!446 = !{!447, !448, !449, !450}
!447 = !DIEnumerator(name: "UndefinedDitherMethod", value: 0)
!448 = !DIEnumerator(name: "NoDitherMethod", value: 1)
!449 = !DIEnumerator(name: "RiemersmaDitherMethod", value: 2)
!450 = !DIEnumerator(name: "FloydSteinbergDitherMethod", value: 3)
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !452, line: 34, baseType: !5, size: 32, elements: !453)
!452 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!454 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!455 = !DIEnumerator(name: "NoEvents", value: 0)
!456 = !DIEnumerator(name: "TraceEvent", value: 1)
!457 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!458 = !DIEnumerator(name: "BlobEvent", value: 4)
!459 = !DIEnumerator(name: "CacheEvent", value: 8)
!460 = !DIEnumerator(name: "CoderEvent", value: 16)
!461 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!462 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!463 = !DIEnumerator(name: "DrawEvent", value: 128)
!464 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!465 = !DIEnumerator(name: "ImageEvent", value: 512)
!466 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!467 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!468 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!469 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!470 = !DIEnumerator(name: "TransformEvent", value: 16384)
!471 = !DIEnumerator(name: "UserEvent", value: 36864)
!472 = !DIEnumerator(name: "WandEvent", value: 65536)
!473 = !DIEnumerator(name: "X11Event", value: 131072)
!474 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!475 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!476 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 70, baseType: !5, size: 32, elements: !478)
!477 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!478 = !{!479, !480, !481}
!479 = !DIEnumerator(name: "UndefinedGradient", value: 0)
!480 = !DIEnumerator(name: "LinearGradient", value: 1)
!481 = !DIEnumerator(name: "RadialGradient", value: 2)
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 129, baseType: !5, size: 32, elements: !483)
!483 = !{!484, !485, !486, !487}
!484 = !DIEnumerator(name: "UndefinedSpread", value: 0)
!485 = !DIEnumerator(name: "PadSpread", value: 1)
!486 = !DIEnumerator(name: "ReflectSpread", value: 2)
!487 = !DIEnumerator(name: "RepeatSpread", value: 3)
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 62, baseType: !5, size: 32, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIEnumerator(name: "UndefinedRule", value: 0)
!491 = !DIEnumerator(name: "EvenOddRule", value: 1)
!492 = !DIEnumerator(name: "NonZeroRule", value: 2)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 77, baseType: !5, size: 32, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIEnumerator(name: "UndefinedCap", value: 0)
!496 = !DIEnumerator(name: "ButtCap", value: 1)
!497 = !DIEnumerator(name: "RoundCap", value: 2)
!498 = !DIEnumerator(name: "SquareCap", value: 3)
!499 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 85, baseType: !5, size: 32, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIEnumerator(name: "UndefinedJoin", value: 0)
!502 = !DIEnumerator(name: "MiterJoin", value: 1)
!503 = !DIEnumerator(name: "RoundJoin", value: 2)
!504 = !DIEnumerator(name: "BevelJoin", value: 3)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 46, baseType: !5, size: 32, elements: !506)
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIEnumerator(name: "UndefinedDecoration", value: 0)
!508 = !DIEnumerator(name: "NoDecoration", value: 1)
!509 = !DIEnumerator(name: "UnderlineDecoration", value: 2)
!510 = !DIEnumerator(name: "OverlineDecoration", value: 3)
!511 = !DIEnumerator(name: "LineThroughDecoration", value: 4)
!512 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !513, line: 40, baseType: !5, size: 32, elements: !514)
!513 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!514 = !{!515, !516, !517, !518, !519}
!515 = !DIEnumerator(name: "UndefinedStyle", value: 0)
!516 = !DIEnumerator(name: "NormalStyle", value: 1)
!517 = !DIEnumerator(name: "ItalicStyle", value: 2)
!518 = !DIEnumerator(name: "ObliqueStyle", value: 3)
!519 = !DIEnumerator(name: "AnyStyle", value: 4)
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !513, line: 25, baseType: !5, size: 32, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!522 = !DIEnumerator(name: "UndefinedStretch", value: 0)
!523 = !DIEnumerator(name: "NormalStretch", value: 1)
!524 = !DIEnumerator(name: "UltraCondensedStretch", value: 2)
!525 = !DIEnumerator(name: "ExtraCondensedStretch", value: 3)
!526 = !DIEnumerator(name: "CondensedStretch", value: 4)
!527 = !DIEnumerator(name: "SemiCondensedStretch", value: 5)
!528 = !DIEnumerator(name: "SemiExpandedStretch", value: 6)
!529 = !DIEnumerator(name: "ExpandedStretch", value: 7)
!530 = !DIEnumerator(name: "ExtraExpandedStretch", value: 8)
!531 = !DIEnumerator(name: "UltraExpandedStretch", value: 9)
!532 = !DIEnumerator(name: "AnyStretch", value: 10)
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 30, baseType: !5, size: 32, elements: !534)
!534 = !{!535, !536, !537, !538}
!535 = !DIEnumerator(name: "UndefinedAlign", value: 0)
!536 = !DIEnumerator(name: "LeftAlign", value: 1)
!537 = !DIEnumerator(name: "CenterAlign", value: 2)
!538 = !DIEnumerator(name: "RightAlign", value: 3)
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 38, baseType: !5, size: 32, elements: !540)
!540 = !{!541, !542, !543, !544}
!541 = !DIEnumerator(name: "UndefinedPathUnits", value: 0)
!542 = !DIEnumerator(name: "UserSpace", value: 1)
!543 = !DIEnumerator(name: "UserSpaceOnUse", value: 2)
!544 = !DIEnumerator(name: "ObjectBoundingBox", value: 3)
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 123, baseType: !5, size: 32, elements: !546)
!546 = !{!547, !548}
!547 = !DIEnumerator(name: "UndefinedReference", value: 0)
!548 = !DIEnumerator(name: "GradientReference", value: 1)
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 55, baseType: !5, size: 32, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIEnumerator(name: "UndefinedDirection", value: 0)
!552 = !DIEnumerator(name: "RightToLeftDirection", value: 1)
!553 = !DIEnumerator(name: "LeftToRightDirection", value: 2)
!554 = !{!555, !556, !572, !573, !593, !638, !606, !586, !938, !595, !673, !940, !956, !957}
!555 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !445, line: 57, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !445, line: 35, size: 384, elements: !559)
!559 = !{!560, !563, !564, !566, !568, !569, !570}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !558, file: !445, line: 38, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !562, line: 46, baseType: !555)
!562 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !558, file: !445, line: 41, baseType: !561, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !558, file: !445, line: 44, baseType: !565, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !78, line: 215, baseType: !77)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !558, file: !445, line: 47, baseType: !567, size: 32, offset: 160)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !141, line: 61, baseType: !140)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !558, file: !445, line: 50, baseType: !565, size: 32, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !558, file: !445, line: 53, baseType: !561, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !558, file: !445, line: 56, baseType: !571, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !445, line: 33, baseType: !444)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickWand", file: !575, line: 69, baseType: !576)
!575 = !DIFile(filename: "apps/538.imagick_r/src/wand/MagickWand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ffc9981fe595b674b5932183b4455d96")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickWand", file: !577, line: 50, size: 33280, elements: !578)
!577 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-wand-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "acd9e5d3507eb9a242a35f2a3efc4904")
!578 = !{!579, !580, !585, !605, !932, !933, !934, !935, !936, !937}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !576, file: !577, line: 53, baseType: !561, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !577, line: 56, baseType: !581, size: 32768, offset: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 32768, elements: !583)
!582 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!583 = !{!584}
!584 = !DISubrange(count: 4096)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !576, file: !577, line: 59, baseType: !586, size: 64, offset: 32832)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !78, line: 219, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !4, line: 102, size: 448, elements: !589)
!589 = !{!590, !592, !594, !596, !597, !598, !599, !604}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !588, file: !4, line: 105, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !4, line: 100, baseType: !3)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !588, file: !4, line: 108, baseType: !593, size: 32, offset: 32)
!593 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !588, file: !4, line: 111, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !588, file: !4, line: 112, baseType: !595, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !588, file: !4, line: 115, baseType: !572, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !588, file: !4, line: 118, baseType: !565, size: 32, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !588, file: !4, line: 121, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !602, line: 26, baseType: !603)
!602 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !602, line: 25, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !588, file: !4, line: 124, baseType: !561, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !576, file: !577, line: 62, baseType: !606, size: 64, offset: 32896)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !78, line: 223, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !108, line: 356, size: 134336, elements: !609)
!609 = !{!610, !612, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !627, !629, !631, !632, !633, !634, !635, !636, !637, !639, !640, !650, !651, !652, !653, !654, !655, !656, !658, !660, !666, !667, !668, !669, !670, !672, !846, !847, !848, !849, !850, !861, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !929, !930, !931}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !608, file: !108, line: 359, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !83, line: 49, baseType: !82)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !608, file: !108, line: 362, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !108, line: 86, baseType: !107)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !608, file: !108, line: 365, baseType: !565, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !608, file: !108, line: 366, baseType: !565, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !608, file: !108, line: 367, baseType: !565, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !608, file: !108, line: 368, baseType: !565, size: 32, offset: 160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !608, file: !108, line: 371, baseType: !595, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !608, file: !108, line: 372, baseType: !595, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !608, file: !108, line: 373, baseType: !595, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !608, file: !108, line: 374, baseType: !595, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !608, file: !108, line: 377, baseType: !561, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !608, file: !108, line: 378, baseType: !561, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !608, file: !108, line: 379, baseType: !561, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !608, file: !108, line: 382, baseType: !626, size: 32, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !108, line: 73, baseType: !119)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !608, file: !108, line: 385, baseType: !628, size: 32, offset: 672)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !130, line: 35, baseType: !129)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !608, file: !108, line: 388, baseType: !630, size: 32, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !108, line: 93, baseType: !135)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !608, file: !108, line: 391, baseType: !561, size: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !608, file: !108, line: 394, baseType: !595, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !608, file: !108, line: 395, baseType: !595, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !608, file: !108, line: 396, baseType: !595, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !608, file: !108, line: 397, baseType: !595, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !608, file: !108, line: 398, baseType: !595, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !608, file: !108, line: 401, baseType: !638, size: 64, offset: 1152)
!638 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !608, file: !108, line: 402, baseType: !638, size: 64, offset: 1216)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !608, file: !108, line: 405, baseType: !641, size: 64, offset: 1280)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !395, line: 148, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !395, line: 131, size: 64, elements: !643)
!643 = !{!644, !647, !648, !649}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !642, file: !395, line: 143, baseType: !645, size: 16)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !78, line: 93, baseType: !646)
!646 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !642, file: !395, line: 144, baseType: !645, size: 16, offset: 16)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !642, file: !395, line: 145, baseType: !645, size: 16, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !642, file: !395, line: 146, baseType: !645, size: 16, offset: 48)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !608, file: !108, line: 406, baseType: !641, size: 64, offset: 1344)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !608, file: !108, line: 407, baseType: !641, size: 64, offset: 1408)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !608, file: !108, line: 410, baseType: !565, size: 32, offset: 1472)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !608, file: !108, line: 411, baseType: !565, size: 32, offset: 1504)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !608, file: !108, line: 414, baseType: !561, size: 64, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !608, file: !108, line: 417, baseType: !567, size: 32, offset: 1600)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !108, line: 420, baseType: !657, size: 32, offset: 1632)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !108, line: 61, baseType: !177)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !608, file: !108, line: 423, baseType: !659, size: 32, offset: 1664)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !192, line: 59, baseType: !191)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !608, file: !108, line: 426, baseType: !661, size: 64, offset: 1728)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !662, line: 77, baseType: !663)
!662 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !664, line: 193, baseType: !665)
!664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!665 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !608, file: !108, line: 429, baseType: !565, size: 32, offset: 1792)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !608, file: !108, line: 430, baseType: !565, size: 32, offset: 1824)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !608, file: !108, line: 433, baseType: !595, size: 64, offset: 1856)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !608, file: !108, line: 434, baseType: !595, size: 64, offset: 1920)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !608, file: !108, line: 437, baseType: !671, size: 32, offset: 1984)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !78, line: 202, baseType: !224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !608, file: !108, line: 440, baseType: !673, size: 64, offset: 2048)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !78, line: 221, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !108, line: 150, size: 105920, elements: !676)
!676 = !{!677, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !691, !692, !693, !694, !695, !709, !711, !712, !713, !714, !715, !716, !717, !718, !719, !727, !728, !729, !730, !731, !732, !734, !735, !736, !738, !740, !742, !744, !745, !746, !747, !748, !749, !750, !758, !773, !787, !788, !789, !790, !794, !798, !799, !800, !801, !802, !803, !804, !805, !807, !808, !818, !819, !821, !822, !823, !824, !825, !826, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !843, !845}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !675, file: !108, line: 153, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !78, line: 209, baseType: !246)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !675, file: !108, line: 156, baseType: !567, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !675, file: !108, line: 159, baseType: !611, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !675, file: !108, line: 162, baseType: !561, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !675, file: !108, line: 165, baseType: !613, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !675, file: !108, line: 168, baseType: !565, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !675, file: !108, line: 169, baseType: !565, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !675, file: !108, line: 172, baseType: !561, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !675, file: !108, line: 173, baseType: !561, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !675, file: !108, line: 174, baseType: !561, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !675, file: !108, line: 175, baseType: !561, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !675, file: !108, line: 178, baseType: !690, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !675, file: !108, line: 179, baseType: !641, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !675, file: !108, line: 180, baseType: !641, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !675, file: !108, line: 181, baseType: !641, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !675, file: !108, line: 184, baseType: !638, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !675, file: !108, line: 187, baseType: !696, size: 768, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !108, line: 128, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !108, line: 121, size: 768, elements: !698)
!698 = !{!699, !706, !707, !708}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !697, file: !108, line: 124, baseType: !700, size: 192)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !108, line: 101, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !108, line: 95, size: 192, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !701, file: !108, line: 98, baseType: !638, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !701, file: !108, line: 99, baseType: !638, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !701, file: !108, line: 100, baseType: !638, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !697, file: !108, line: 125, baseType: !700, size: 192, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !697, file: !108, line: 126, baseType: !700, size: 192, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !697, file: !108, line: 127, baseType: !700, size: 192, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !675, file: !108, line: 190, baseType: !710, size: 32, offset: 1664)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !252, line: 49, baseType: !251)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !675, file: !108, line: 193, baseType: !572, size: 64, offset: 1728)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !675, file: !108, line: 196, baseType: !630, size: 32, offset: 1792)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !675, file: !108, line: 199, baseType: !595, size: 64, offset: 1856)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !675, file: !108, line: 200, baseType: !595, size: 64, offset: 1920)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !675, file: !108, line: 201, baseType: !595, size: 64, offset: 1984)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !675, file: !108, line: 204, baseType: !661, size: 64, offset: 2048)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !675, file: !108, line: 207, baseType: !638, size: 64, offset: 2112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !675, file: !108, line: 208, baseType: !638, size: 64, offset: 2176)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !675, file: !108, line: 211, baseType: !720, size: 256, offset: 2240)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !295, line: 130, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !295, line: 121, size: 256, elements: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !721, file: !295, line: 124, baseType: !561, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !721, file: !295, line: 125, baseType: !561, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !721, file: !295, line: 128, baseType: !661, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !721, file: !295, line: 129, baseType: !661, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !675, file: !108, line: 212, baseType: !720, size: 256, offset: 2496)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !675, file: !108, line: 213, baseType: !720, size: 256, offset: 2752)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !675, file: !108, line: 216, baseType: !638, size: 64, offset: 3008)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !675, file: !108, line: 217, baseType: !638, size: 64, offset: 3072)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !675, file: !108, line: 218, baseType: !638, size: 64, offset: 3136)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !675, file: !108, line: 221, baseType: !733, size: 32, offset: 3200)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !260, line: 66, baseType: !259)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !675, file: !108, line: 224, baseType: !626, size: 32, offset: 3232)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !675, file: !108, line: 227, baseType: !628, size: 32, offset: 3264)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !675, file: !108, line: 230, baseType: !737, size: 32, offset: 3296)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !295, line: 91, baseType: !294)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !675, file: !108, line: 233, baseType: !739, size: 32, offset: 3328)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !310, line: 99, baseType: !309)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !675, file: !108, line: 236, baseType: !741, size: 32, offset: 3360)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !381, line: 32, baseType: !380)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !675, file: !108, line: 239, baseType: !743, size: 64, offset: 3392)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !675, file: !108, line: 242, baseType: !561, size: 64, offset: 3456)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !675, file: !108, line: 243, baseType: !561, size: 64, offset: 3520)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !675, file: !108, line: 246, baseType: !661, size: 64, offset: 3584)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !675, file: !108, line: 249, baseType: !561, size: 64, offset: 3648)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !675, file: !108, line: 250, baseType: !561, size: 64, offset: 3712)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !675, file: !108, line: 253, baseType: !661, size: 64, offset: 3776)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !675, file: !108, line: 256, baseType: !751, size: 192, offset: 3840)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !752, line: 68, baseType: !753)
!752 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !752, line: 62, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !753, file: !752, line: 65, baseType: !638, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !753, file: !752, line: 66, baseType: !638, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !753, file: !752, line: 67, baseType: !638, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !675, file: !108, line: 259, baseType: !759, size: 512, offset: 4032)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !389, line: 51, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !389, line: 40, size: 512, elements: !761)
!761 = !{!762, !769, !770, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !760, file: !389, line: 43, baseType: !763, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !389, line: 38, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !389, line: 32, size: 192, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !764, file: !389, line: 35, baseType: !638, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !764, file: !389, line: 36, baseType: !638, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !764, file: !389, line: 37, baseType: !638, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !760, file: !389, line: 44, baseType: !763, size: 192, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !389, line: 47, baseType: !771, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !389, line: 30, baseType: !388)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !760, file: !389, line: 50, baseType: !561, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !675, file: !108, line: 262, baseType: !774, size: 64, offset: 4544)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !775, line: 26, baseType: !776)
!775 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!565, !779, !781, !784, !572}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !78, line: 150, baseType: !783)
!783 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !78, line: 151, baseType: !786)
!786 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !675, file: !108, line: 265, baseType: !572, size: 64, offset: 4608)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !675, file: !108, line: 266, baseType: !572, size: 64, offset: 4672)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !675, file: !108, line: 267, baseType: !572, size: 64, offset: 4736)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !675, file: !108, line: 270, baseType: !791, size: 64, offset: 4800)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !83, line: 52, baseType: !793)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !83, line: 51, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !675, file: !108, line: 273, baseType: !795, size: 64, offset: 4864)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !78, line: 217, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !78, line: 217, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !675, file: !108, line: 276, baseType: !581, size: 32768, offset: 4928)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !675, file: !108, line: 277, baseType: !581, size: 32768, offset: 37696)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !675, file: !108, line: 278, baseType: !581, size: 32768, offset: 70464)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !675, file: !108, line: 281, baseType: !561, size: 64, offset: 103232)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !675, file: !108, line: 282, baseType: !561, size: 64, offset: 103296)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !675, file: !108, line: 285, baseType: !587, size: 448, offset: 103360)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !675, file: !108, line: 288, baseType: !565, size: 32, offset: 103808)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !108, line: 291, baseType: !806, size: 64, offset: 103872)
!806 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !661)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !675, file: !108, line: 294, baseType: !600, size: 64, offset: 103936)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !675, file: !108, line: 297, baseType: !809, size: 256, offset: 104000)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !252, line: 40, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !252, line: 27, size: 256, elements: !811)
!811 = !{!812, !813, !814, !817}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !810, file: !252, line: 30, baseType: !595, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !810, file: !252, line: 33, baseType: !561, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !810, file: !252, line: 36, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !810, file: !252, line: 39, baseType: !561, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !675, file: !108, line: 298, baseType: !809, size: 256, offset: 104256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !675, file: !108, line: 299, baseType: !820, size: 64, offset: 104512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !675, file: !108, line: 302, baseType: !561, size: 64, offset: 104576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !675, file: !108, line: 305, baseType: !561, size: 64, offset: 104640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !675, file: !108, line: 308, baseType: !743, size: 64, offset: 104704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !675, file: !108, line: 309, baseType: !743, size: 64, offset: 104768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !108, line: 310, baseType: !743, size: 64, offset: 104832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !675, file: !108, line: 313, baseType: !827, size: 32, offset: 104896)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !395, line: 47, baseType: !394)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !675, file: !108, line: 316, baseType: !565, size: 32, offset: 104928)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !675, file: !108, line: 319, baseType: !641, size: 64, offset: 104960)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !675, file: !108, line: 322, baseType: !743, size: 64, offset: 105024)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !675, file: !108, line: 325, baseType: !720, size: 256, offset: 105088)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !675, file: !108, line: 328, baseType: !572, size: 64, offset: 105344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !675, file: !108, line: 329, baseType: !572, size: 64, offset: 105408)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !108, line: 332, baseType: !657, size: 32, offset: 105472)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !675, file: !108, line: 335, baseType: !565, size: 32, offset: 105504)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !675, file: !108, line: 338, baseType: !785, size: 64, offset: 105536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !675, file: !108, line: 341, baseType: !565, size: 32, offset: 105600)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !675, file: !108, line: 344, baseType: !561, size: 64, offset: 105664)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !675, file: !108, line: 347, baseType: !840, size: 64, offset: 105728)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !841, line: 7, baseType: !842)
!841 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !664, line: 160, baseType: !665)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !675, file: !108, line: 350, baseType: !844, size: 32, offset: 105792)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !395, line: 79, baseType: !411)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !675, file: !108, line: 353, baseType: !561, size: 64, offset: 105856)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !608, file: !108, line: 443, baseType: !572, size: 64, offset: 2112)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !608, file: !108, line: 446, baseType: !774, size: 64, offset: 2176)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !608, file: !108, line: 449, baseType: !572, size: 64, offset: 2240)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !608, file: !108, line: 450, baseType: !572, size: 64, offset: 2304)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !608, file: !108, line: 453, baseType: !851, size: 64, offset: 2368)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !852, line: 26, baseType: !853)
!852 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!561, !856, !858, !860}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !608, file: !108, line: 456, baseType: !862, size: 64, offset: 2432)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !864, line: 7, baseType: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !866, line: 49, size: 1728, elements: !867)
!866 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !883, !885, !886, !887, !889, !890, !892, !896, !899, !901, !904, !907, !908, !909, !910, !911}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !865, file: !866, line: 51, baseType: !593, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !865, file: !866, line: 54, baseType: !595, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !865, file: !866, line: 55, baseType: !595, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !865, file: !866, line: 56, baseType: !595, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !865, file: !866, line: 57, baseType: !595, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !865, file: !866, line: 58, baseType: !595, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !865, file: !866, line: 59, baseType: !595, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !865, file: !866, line: 60, baseType: !595, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !865, file: !866, line: 61, baseType: !595, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !865, file: !866, line: 64, baseType: !595, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !865, file: !866, line: 65, baseType: !595, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !865, file: !866, line: 66, baseType: !595, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !865, file: !866, line: 68, baseType: !881, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !866, line: 36, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !865, file: !866, line: 70, baseType: !884, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !865, file: !866, line: 72, baseType: !593, size: 32, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !865, file: !866, line: 73, baseType: !593, size: 32, offset: 928)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !865, file: !866, line: 74, baseType: !888, size: 64, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !664, line: 152, baseType: !665)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !865, file: !866, line: 77, baseType: !646, size: 16, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !865, file: !866, line: 78, baseType: !891, size: 8, offset: 1040)
!891 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !865, file: !866, line: 79, baseType: !893, size: 8, offset: 1048)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 8, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 1)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !865, file: !866, line: 81, baseType: !897, size: 64, offset: 1088)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !866, line: 43, baseType: null)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !865, file: !866, line: 89, baseType: !900, size: 64, offset: 1152)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !664, line: 153, baseType: !665)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !865, file: !866, line: 91, baseType: !902, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !866, line: 37, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !865, file: !866, line: 92, baseType: !905, size: 64, offset: 1280)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !866, line: 38, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !865, file: !866, line: 93, baseType: !884, size: 64, offset: 1344)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !865, file: !866, line: 94, baseType: !572, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !865, file: !866, line: 95, baseType: !561, size: 64, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !865, file: !866, line: 96, baseType: !593, size: 32, offset: 1536)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !865, file: !866, line: 98, baseType: !912, size: 160, offset: 1568)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 160, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 20)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !608, file: !108, line: 459, baseType: !572, size: 64, offset: 2496)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !608, file: !108, line: 462, baseType: !561, size: 64, offset: 2560)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !608, file: !108, line: 465, baseType: !581, size: 32768, offset: 2624)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !608, file: !108, line: 466, baseType: !581, size: 32768, offset: 35392)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !608, file: !108, line: 467, baseType: !581, size: 32768, offset: 68160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !608, file: !108, line: 468, baseType: !581, size: 32768, offset: 100928)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !608, file: !108, line: 471, baseType: !565, size: 32, offset: 133696)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !608, file: !108, line: 474, baseType: !595, size: 64, offset: 133760)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !608, file: !108, line: 477, baseType: !561, size: 64, offset: 133824)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !608, file: !108, line: 478, baseType: !561, size: 64, offset: 133888)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !608, file: !108, line: 481, baseType: !641, size: 64, offset: 133952)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !608, file: !108, line: 484, baseType: !561, size: 64, offset: 134016)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !608, file: !108, line: 487, baseType: !928, size: 32, offset: 134080)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !608, file: !108, line: 490, baseType: !641, size: 64, offset: 134112)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !608, file: !108, line: 493, baseType: !572, size: 64, offset: 134208)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !608, file: !108, line: 496, baseType: !565, size: 32, offset: 134272)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_info", scope: !576, file: !577, line: 65, baseType: !556, size: 64, offset: 32960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "images", scope: !576, file: !577, line: 68, baseType: !673, size: 64, offset: 33024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "insert_before", scope: !576, file: !577, line: 71, baseType: !565, size: 32, offset: 33088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "image_pending", scope: !576, file: !577, line: 72, baseType: !565, size: 32, offset: 33120)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !576, file: !577, line: 73, baseType: !565, size: 32, offset: 33152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !576, file: !577, line: 76, baseType: !561, size: 64, offset: 33216)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigureInfo", file: !944, line: 44, baseType: !945)
!944 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ConfigureInfo", file: !944, line: 27, size: 448, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !954, !955}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !945, file: !944, line: 30, baseType: !595, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !944, line: 31, baseType: !595, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !945, file: !944, line: 32, baseType: !595, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !945, file: !944, line: 35, baseType: !565, size: 32, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !945, file: !944, line: 36, baseType: !565, size: 32, offset: 224)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !945, file: !944, line: 39, baseType: !953, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !945, file: !944, line: 40, baseType: !953, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !945, file: !944, line: 43, baseType: !561, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "DrawInfo", file: !477, line: 333, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DrawInfo", file: !477, line: 205, size: 5760, elements: !960)
!960 = !{!961, !962, !963, !964, !974, !975, !976, !977, !978, !1027, !1028, !1029, !1030, !1031, !1032, !1034, !1036, !1038, !1039, !1040, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1050, !1052, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1066, !1067, !1068, !1080, !1081, !1082, !1083, !1084, !1085}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !959, file: !477, line: 208, baseType: !595, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !959, file: !477, line: 209, baseType: !595, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "viewbox", scope: !959, file: !477, line: 212, baseType: !720, size: 256, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "affine", scope: !959, file: !477, line: 215, baseType: !965, size: 384, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !295, line: 102, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !295, line: 93, size: 384, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !966, file: !295, line: 96, baseType: !638, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !966, file: !295, line: 97, baseType: !638, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !966, file: !295, line: 98, baseType: !638, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !966, file: !295, line: 99, baseType: !638, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !966, file: !295, line: 100, baseType: !638, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !966, file: !295, line: 101, baseType: !638, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !959, file: !477, line: 218, baseType: !737, size: 32, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !959, file: !477, line: 221, baseType: !641, size: 64, offset: 800)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "stroke", scope: !959, file: !477, line: 222, baseType: !641, size: 64, offset: 864)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_width", scope: !959, file: !477, line: 225, baseType: !638, size: 64, offset: 960)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !959, file: !477, line: 228, baseType: !979, size: 1024, offset: 1024)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientInfo", file: !477, line: 184, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GradientInfo", file: !477, line: 153, size: 1024, elements: !981)
!981 = !{!982, !984, !985, !993, !1015, !1016, !1018, !1019, !1020, !1026}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !980, file: !477, line: 156, baseType: !983, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientType", file: !477, line: 75, baseType: !476)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "bounding_box", scope: !980, file: !477, line: 159, baseType: !720, size: 256, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gradient_vector", scope: !980, file: !477, line: 162, baseType: !986, size: 256, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "SegmentInfo", file: !108, line: 110, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SegmentInfo", file: !108, line: 103, size: 256, elements: !988)
!988 = !{!989, !990, !991, !992}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !987, file: !108, line: 106, baseType: !638, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !987, file: !108, line: 107, baseType: !638, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !987, file: !108, line: 108, baseType: !638, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !987, file: !108, line: 109, baseType: !638, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stops", scope: !980, file: !477, line: 165, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "StopInfo", file: !477, line: 151, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StopInfo", file: !477, line: 144, size: 512, elements: !997)
!997 = !{!998, !1014}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !996, file: !477, line: 147, baseType: !999, size: 448)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !395, line: 127, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !395, line: 104, size: 448, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1010, !1011, !1012, !1013}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1000, file: !395, line: 107, baseType: !678, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1000, file: !395, line: 110, baseType: !567, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !1000, file: !395, line: 113, baseType: !565, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1000, file: !395, line: 116, baseType: !638, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1000, file: !395, line: 119, baseType: !561, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1000, file: !395, line: 122, baseType: !1008, size: 32, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !78, line: 78, baseType: !1009)
!1009 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1000, file: !395, line: 123, baseType: !1008, size: 32, offset: 288)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1000, file: !395, line: 124, baseType: !1008, size: 32, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !1000, file: !395, line: 125, baseType: !1008, size: 32, offset: 352)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !395, line: 126, baseType: !1008, size: 32, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !996, file: !477, line: 150, baseType: !1008, size: 32, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "number_stops", scope: !980, file: !477, line: 168, baseType: !561, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "spread", scope: !980, file: !477, line: 171, baseType: !1017, size: 32, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "SpreadMethod", file: !477, line: 135, baseType: !482)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !980, file: !477, line: 174, baseType: !565, size: 32, offset: 736)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !980, file: !477, line: 177, baseType: !561, size: 64, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !980, file: !477, line: 180, baseType: !1021, size: 128, offset: 832)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !477, line: 142, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !477, line: 137, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1022, file: !477, line: 140, baseType: !638, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1022, file: !477, line: 141, baseType: !638, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !980, file: !477, line: 183, baseType: !1008, size: 32, offset: 960)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fill_pattern", scope: !959, file: !477, line: 231, baseType: !673, size: 64, offset: 2048)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !959, file: !477, line: 232, baseType: !673, size: 64, offset: 2112)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_pattern", scope: !959, file: !477, line: 233, baseType: !673, size: 64, offset: 2176)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_antialias", scope: !959, file: !477, line: 236, baseType: !565, size: 32, offset: 2240)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "text_antialias", scope: !959, file: !477, line: 237, baseType: !565, size: 32, offset: 2272)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fill_rule", scope: !959, file: !477, line: 240, baseType: !1033, size: 32, offset: 2304)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "FillRule", file: !477, line: 68, baseType: !488)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "linecap", scope: !959, file: !477, line: 243, baseType: !1035, size: 32, offset: 2336)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineCap", file: !477, line: 83, baseType: !493)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "linejoin", scope: !959, file: !477, line: 246, baseType: !1037, size: 32, offset: 2368)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineJoin", file: !477, line: 91, baseType: !499)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "miterlimit", scope: !959, file: !477, line: 249, baseType: !561, size: 64, offset: 2432)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dash_offset", scope: !959, file: !477, line: 252, baseType: !638, size: 64, offset: 2496)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "decorate", scope: !959, file: !477, line: 255, baseType: !1041, size: 32, offset: 2560)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecorationType", file: !477, line: 53, baseType: !505)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !959, file: !477, line: 258, baseType: !739, size: 32, offset: 2592)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !959, file: !477, line: 261, baseType: !595, size: 64, offset: 2624)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !959, file: !477, line: 264, baseType: !561, size: 64, offset: 2688)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !959, file: !477, line: 267, baseType: !595, size: 64, offset: 2752)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !959, file: !477, line: 268, baseType: !595, size: 64, offset: 2816)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !959, file: !477, line: 269, baseType: !595, size: 64, offset: 2880)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !959, file: !477, line: 272, baseType: !1049, size: 32, offset: 2944)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleType", file: !513, line: 47, baseType: !512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !959, file: !477, line: 275, baseType: !1051, size: 32, offset: 2976)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "StretchType", file: !513, line: 38, baseType: !520)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !959, file: !477, line: 278, baseType: !561, size: 64, offset: 3008)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !959, file: !477, line: 281, baseType: !595, size: 64, offset: 3072)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !959, file: !477, line: 284, baseType: !638, size: 64, offset: 3136)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !959, file: !477, line: 287, baseType: !595, size: 64, offset: 3200)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !959, file: !477, line: 290, baseType: !1057, size: 32, offset: 3264)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignType", file: !477, line: 36, baseType: !533)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "undercolor", scope: !959, file: !477, line: 293, baseType: !641, size: 64, offset: 3296)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !959, file: !477, line: 294, baseType: !641, size: 64, offset: 3360)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !959, file: !477, line: 297, baseType: !595, size: 64, offset: 3456)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dash_pattern", scope: !959, file: !477, line: 300, baseType: !956, size: 64, offset: 3520)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !959, file: !477, line: 303, baseType: !595, size: 64, offset: 3584)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !959, file: !477, line: 306, baseType: !986, size: 256, offset: 3648)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "clip_units", scope: !959, file: !477, line: 309, baseType: !1065, size: 32, offset: 3904)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClipPathUnits", file: !477, line: 44, baseType: !539)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !959, file: !477, line: 312, baseType: !645, size: 16, offset: 3936)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !959, file: !477, line: 315, baseType: !565, size: 32, offset: 3968)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "element_reference", scope: !959, file: !477, line: 318, baseType: !1069, size: 1344, offset: 4032)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementReference", file: !477, line: 203, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ElementReference", file: !477, line: 186, size: 1344, elements: !1071)
!1071 = !{!1072, !1073, !1075, !1076, !1077, !1079}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1070, file: !477, line: 189, baseType: !595, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1070, file: !477, line: 192, baseType: !1074, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReferenceType", file: !477, line: 127, baseType: !545)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !1070, file: !477, line: 195, baseType: !979, size: 1024, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1070, file: !477, line: 198, baseType: !561, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1070, file: !477, line: 201, baseType: !1078, size: 64, offset: 1216)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1070, file: !477, line: 202, baseType: !1078, size: 64, offset: 1280)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !959, file: !477, line: 321, baseType: !565, size: 32, offset: 5376)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !959, file: !477, line: 324, baseType: !561, size: 64, offset: 5440)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kerning", scope: !959, file: !477, line: 327, baseType: !638, size: 64, offset: 5504)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "interword_spacing", scope: !959, file: !477, line: 328, baseType: !638, size: 64, offset: 5568)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "interline_spacing", scope: !959, file: !477, line: 329, baseType: !638, size: 64, offset: 5632)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !959, file: !477, line: 332, baseType: !1086, size: 32, offset: 5696)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectionType", file: !477, line: 60, baseType: !549)
!1087 = !{i32 7, !"Dwarf Version", i32 5}
!1088 = !{i32 2, !"Debug Info Version", i32 3}
!1089 = !{i32 1, !"wchar_size", i32 4}
!1090 = !{i32 7, !"PIC Level", i32 2}
!1091 = !{i32 7, !"PIE Level", i32 2}
!1092 = !{i32 7, !"uwtable", i32 2}
!1093 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1094 = distinct !DISubprogram(name: "ClearMagickWand", scope: !1095, file: !1095, line: 77, type: !1096, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1098)
!1095 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c164eff20c0049a1630a14d8ddf5e0fc")
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !573}
!1098 = !{!1099}
!1099 = !DILocalVariable(name: "wand", arg: 1, scope: !1094, file: !1095, line: 77, type: !573)
!1100 = !DILocation(line: 0, scope: !1094)
!1101 = !DILocation(line: 81, column: 13, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1094, file: !1095, line: 81, column: 7)
!1103 = !{!1104, !1106, i64 4144}
!1104 = !{!"_MagickWand", !1105, i64 0, !1106, i64 8, !1108, i64 4104, !1108, i64 4112, !1108, i64 4120, !1108, i64 4128, !1106, i64 4136, !1106, i64 4140, !1106, i64 4144, !1105, i64 4152}
!1105 = !{!"long", !1106, i64 0}
!1106 = !{!"omnipotent char", !1107, i64 0}
!1107 = !{!"Simple C/C++ TBAA"}
!1108 = !{!"any pointer", !1106, i64 0}
!1109 = !DILocation(line: 81, column: 19, scope: !1102)
!1110 = !DILocation(line: 81, column: 7, scope: !1094)
!1111 = !DILocation(line: 82, column: 66, scope: !1102)
!1112 = !DILocation(line: 82, column: 12, scope: !1102)
!1113 = !DILocation(line: 82, column: 5, scope: !1102)
!1114 = !DILocation(line: 83, column: 49, scope: !1094)
!1115 = !{!1104, !1108, i64 4120}
!1116 = !DILocation(line: 83, column: 23, scope: !1094)
!1117 = !DILocation(line: 83, column: 22, scope: !1094)
!1118 = !DILocation(line: 84, column: 43, scope: !1094)
!1119 = !{!1104, !1108, i64 4112}
!1120 = !DILocation(line: 84, column: 20, scope: !1094)
!1121 = !DILocation(line: 84, column: 19, scope: !1094)
!1122 = !DILocation(line: 85, column: 39, scope: !1094)
!1123 = !{!1104, !1108, i64 4128}
!1124 = !DILocation(line: 85, column: 16, scope: !1094)
!1125 = !DILocation(line: 85, column: 15, scope: !1094)
!1126 = !DILocation(line: 86, column: 20, scope: !1094)
!1127 = !DILocation(line: 86, column: 19, scope: !1094)
!1128 = !DILocation(line: 87, column: 23, scope: !1094)
!1129 = !DILocation(line: 87, column: 22, scope: !1094)
!1130 = !DILocation(line: 88, column: 9, scope: !1094)
!1131 = !DILocation(line: 88, column: 22, scope: !1094)
!1132 = !{!1104, !1106, i64 4136}
!1133 = !DILocation(line: 89, column: 9, scope: !1094)
!1134 = !DILocation(line: 89, column: 22, scope: !1094)
!1135 = !{!1104, !1106, i64 4140}
!1136 = !DILocation(line: 90, column: 30, scope: !1094)
!1137 = !{!1104, !1108, i64 4104}
!1138 = !DILocation(line: 90, column: 3, scope: !1094)
!1139 = !DILocation(line: 91, column: 15, scope: !1094)
!1140 = !DILocation(line: 91, column: 14, scope: !1094)
!1141 = !DILocation(line: 92, column: 1, scope: !1094)
!1142 = !DISubprogram(name: "LogMagickEvent", scope: !452, file: !452, line: 83, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!565, !1145, !779, !779, !860, !779, null}
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !452, line: 58, baseType: !451)
!1147 = !{}
!1148 = !DISubprogram(name: "DestroyQuantizeInfo", scope: !445, file: !445, line: 73, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!556, !556}
!1151 = !DISubprogram(name: "DestroyImageInfo", scope: !108, file: !108, line: 522, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!606, !606}
!1154 = !DISubprogram(name: "DestroyImageList", scope: !1155, file: !1155, line: 28, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1155 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!673, !673}
!1158 = !DISubprogram(name: "AcquireImageInfo", scope: !108, file: !108, line: 520, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!606}
!1161 = !DISubprogram(name: "CloneQuantizeInfo", scope: !445, file: !445, line: 72, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!556, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!1166 = !DISubprogram(name: "ClearMagickException", scope: !4, file: !4, line: 165, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !586}
!1169 = !DISubprogram(name: "IsEventLogging", scope: !452, file: !452, line: 80, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!565}
!1172 = distinct !DISubprogram(name: "CloneMagickWand", scope: !1095, file: !1095, line: 116, type: !1173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!573, !938}
!1175 = !{!1176, !1177, !1178}
!1176 = !DILocalVariable(name: "wand", arg: 1, scope: !1172, file: !1095, line: 116, type: !938)
!1177 = !DILocalVariable(name: "clone_wand", scope: !1172, file: !1095, line: 119, type: !573)
!1178 = !DILocalVariable(name: "exception", scope: !1179, file: !1095, line: 127, type: !587)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !1095, line: 127, column: 5)
!1180 = distinct !DILexicalBlock(scope: !1172, file: !1095, line: 126, column: 7)
!1181 = !DILocation(line: 0, scope: !1172)
!1182 = !DILocation(line: 123, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1172, file: !1095, line: 123, column: 7)
!1184 = !DILocation(line: 123, column: 19, scope: !1183)
!1185 = !DILocation(line: 123, column: 7, scope: !1172)
!1186 = !DILocation(line: 124, column: 66, scope: !1183)
!1187 = !DILocation(line: 124, column: 12, scope: !1183)
!1188 = !DILocation(line: 124, column: 5, scope: !1183)
!1189 = !DILocation(line: 125, column: 29, scope: !1172)
!1190 = !DILocation(line: 126, column: 18, scope: !1180)
!1191 = !DILocation(line: 126, column: 7, scope: !1172)
!1192 = !DILocation(line: 127, column: 5, scope: !1179)
!1193 = !DILocation(line: 129, column: 10, scope: !1172)
!1194 = !DILocation(line: 130, column: 18, scope: !1172)
!1195 = !DILocation(line: 130, column: 17, scope: !1172)
!1196 = !{!1104, !1105, i64 0}
!1197 = !DILocation(line: 131, column: 41, scope: !1172)
!1198 = !DILocation(line: 132, column: 18, scope: !1172)
!1199 = !DILocation(line: 131, column: 10, scope: !1172)
!1200 = !DILocation(line: 133, column: 25, scope: !1172)
!1201 = !DILocation(line: 133, column: 15, scope: !1172)
!1202 = !DILocation(line: 133, column: 24, scope: !1172)
!1203 = !DILocation(line: 134, column: 48, scope: !1172)
!1204 = !DILocation(line: 134, column: 3, scope: !1172)
!1205 = !DILocation(line: 135, column: 47, scope: !1172)
!1206 = !DILocation(line: 135, column: 26, scope: !1172)
!1207 = !DILocation(line: 135, column: 15, scope: !1172)
!1208 = !DILocation(line: 135, column: 25, scope: !1172)
!1209 = !DILocation(line: 136, column: 53, scope: !1172)
!1210 = !DILocation(line: 136, column: 29, scope: !1172)
!1211 = !DILocation(line: 136, column: 15, scope: !1172)
!1212 = !DILocation(line: 136, column: 28, scope: !1172)
!1213 = !DILocation(line: 137, column: 43, scope: !1172)
!1214 = !DILocation(line: 137, column: 62, scope: !1172)
!1215 = !DILocation(line: 137, column: 22, scope: !1172)
!1216 = !DILocation(line: 137, column: 15, scope: !1172)
!1217 = !DILocation(line: 137, column: 21, scope: !1172)
!1218 = !DILocation(line: 138, column: 15, scope: !1172)
!1219 = !DILocation(line: 138, column: 28, scope: !1172)
!1220 = !DILocation(line: 139, column: 15, scope: !1172)
!1221 = !DILocation(line: 139, column: 28, scope: !1172)
!1222 = !DILocation(line: 140, column: 21, scope: !1172)
!1223 = !DILocation(line: 140, column: 15, scope: !1172)
!1224 = !DILocation(line: 140, column: 20, scope: !1172)
!1225 = !DILocation(line: 141, column: 25, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1172, file: !1095, line: 141, column: 7)
!1227 = !DILocation(line: 141, column: 7, scope: !1172)
!1228 = !DILocation(line: 142, column: 12, scope: !1226)
!1229 = !DILocation(line: 142, column: 5, scope: !1226)
!1230 = !DILocation(line: 143, column: 15, scope: !1172)
!1231 = !DILocation(line: 143, column: 24, scope: !1172)
!1232 = !{!1104, !1105, i64 4152}
!1233 = !DILocation(line: 144, column: 3, scope: !1172)
!1234 = !DISubprogram(name: "AcquireMagickMemory", scope: !1235, file: !1235, line: 40, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1235 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!572, !860}
!1238 = !DISubprogram(name: "GetExceptionInfo", scope: !4, file: !4, line: 166, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1239 = !DISubprogram(name: "ThrowMagickException", scope: !4, file: !4, line: 156, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!565, !586, !779, !779, !860, !1242, !779, !779, null}
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!1243 = !DISubprogram(name: "CatchException", scope: !4, file: !4, line: 164, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1244 = !DISubprogram(name: "DestroyExceptionInfo", scope: !4, file: !4, line: 148, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!586, !586}
!1247 = distinct !DISubprogram(name: "MagickWandTerminus", scope: !1095, file: !1095, line: 1033, type: !1248, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1147)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null}
!1250 = !DILocation(line: 1035, column: 3, scope: !1247)
!1251 = !DILocation(line: 1036, column: 3, scope: !1247)
!1252 = !DILocation(line: 1037, column: 1, scope: !1247)
!1253 = !DISubprogram(name: "ResetMagickMemory", scope: !1235, file: !1235, line: 52, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!572, !572, !593, !860}
!1256 = !DISubprogram(name: "AcquireWandId", scope: !1257, file: !1257, line: 26, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1257 = !DIFile(filename: "apps/538.imagick_r/src/wand/wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04fee0d7de953bb2b067eac76943bcb6")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!561}
!1260 = !DISubprogram(name: "FormatLocaleString", scope: !1261, file: !1261, line: 71, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1261 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!661, !1264, !860, !1265, null}
!1264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !595)
!1265 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !779)
!1266 = !DISubprogram(name: "AcquireExceptionInfo", scope: !4, file: !4, line: 146, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!586}
!1269 = !DISubprogram(name: "InheritException", scope: !4, file: !4, line: 167, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !586, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!1274 = !DISubprogram(name: "CloneImageInfo", scope: !108, file: !108, line: 521, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!606, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!1279 = !DISubprogram(name: "CloneImageList", scope: !1155, file: !1155, line: 26, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!673, !856, !586}
!1282 = distinct !DISubprogram(name: "DestroyMagickWand", scope: !1095, file: !1095, line: 169, type: !1283, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!573, !573}
!1285 = !{!1286}
!1286 = !DILocalVariable(name: "wand", arg: 1, scope: !1282, file: !1095, line: 169, type: !573)
!1287 = !DILocation(line: 0, scope: !1282)
!1288 = !DILocation(line: 173, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !1095, line: 173, column: 7)
!1290 = !DILocation(line: 173, column: 19, scope: !1289)
!1291 = !DILocation(line: 173, column: 7, scope: !1282)
!1292 = !DILocation(line: 174, column: 66, scope: !1289)
!1293 = !DILocation(line: 174, column: 12, scope: !1289)
!1294 = !DILocation(line: 174, column: 5, scope: !1289)
!1295 = !DILocation(line: 175, column: 39, scope: !1282)
!1296 = !DILocation(line: 175, column: 16, scope: !1282)
!1297 = !DILocation(line: 175, column: 15, scope: !1282)
!1298 = !DILocation(line: 176, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1282, file: !1095, line: 176, column: 7)
!1300 = !DILocation(line: 176, column: 27, scope: !1299)
!1301 = !DILocation(line: 176, column: 7, scope: !1282)
!1302 = !DILocation(line: 177, column: 25, scope: !1299)
!1303 = !DILocation(line: 177, column: 24, scope: !1299)
!1304 = !DILocation(line: 177, column: 5, scope: !1299)
!1305 = !DILocation(line: 178, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1282, file: !1095, line: 178, column: 7)
!1307 = !DILocation(line: 178, column: 24, scope: !1306)
!1308 = !DILocation(line: 178, column: 7, scope: !1282)
!1309 = !DILocation(line: 179, column: 22, scope: !1306)
!1310 = !DILocation(line: 179, column: 21, scope: !1306)
!1311 = !DILocation(line: 179, column: 5, scope: !1306)
!1312 = !DILocation(line: 180, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1282, file: !1095, line: 180, column: 7)
!1314 = !DILocation(line: 180, column: 23, scope: !1313)
!1315 = !DILocation(line: 180, column: 7, scope: !1282)
!1316 = !DILocation(line: 181, column: 21, scope: !1313)
!1317 = !DILocation(line: 181, column: 20, scope: !1313)
!1318 = !DILocation(line: 181, column: 5, scope: !1313)
!1319 = !DILocation(line: 182, column: 26, scope: !1282)
!1320 = !DILocation(line: 182, column: 3, scope: !1282)
!1321 = !DILocation(line: 183, column: 9, scope: !1282)
!1322 = !DILocation(line: 183, column: 18, scope: !1282)
!1323 = !DILocation(line: 184, column: 23, scope: !1282)
!1324 = !DILocation(line: 185, column: 3, scope: !1282)
!1325 = !DISubprogram(name: "RelinquishWandId", scope: !1257, file: !1257, line: 30, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !860}
!1328 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1235, file: !1235, line: 51, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!572, !572}
!1331 = distinct !DISubprogram(name: "IsMagickWand", scope: !1095, file: !1095, line: 210, type: !1332, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!565, !938}
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "wand", arg: 1, scope: !1331, file: !1095, line: 210, type: !938)
!1336 = !DILocation(line: 0, scope: !1331)
!1337 = !DILocation(line: 212, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1331, file: !1095, line: 212, column: 7)
!1339 = !DILocation(line: 212, column: 7, scope: !1331)
!1340 = !DILocation(line: 214, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1331, file: !1095, line: 214, column: 7)
!1342 = !DILocation(line: 214, column: 23, scope: !1341)
!1343 = !DILocation(line: 214, column: 7, scope: !1331)
!1344 = !DILocation(line: 216, column: 28, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1331, file: !1095, line: 216, column: 7)
!1346 = !DILocation(line: 216, column: 7, scope: !1345)
!1347 = !DILocation(line: 216, column: 68, scope: !1345)
!1348 = !DILocation(line: 219, column: 1, scope: !1331)
!1349 = !DISubprogram(name: "LocaleNCompare", scope: !1350, file: !1350, line: 67, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1350 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!593, !779, !779, !860}
!1353 = distinct !DISubprogram(name: "MagickClearException", scope: !1095, file: !1095, line: 243, type: !1354, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!565, !573}
!1356 = !{!1357}
!1357 = !DILocalVariable(name: "wand", arg: 1, scope: !1353, file: !1095, line: 243, type: !573)
!1358 = !DILocation(line: 0, scope: !1353)
!1359 = !DILocation(line: 247, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1353, file: !1095, line: 247, column: 7)
!1361 = !DILocation(line: 247, column: 19, scope: !1360)
!1362 = !DILocation(line: 247, column: 7, scope: !1353)
!1363 = !DILocation(line: 248, column: 66, scope: !1360)
!1364 = !DILocation(line: 248, column: 12, scope: !1360)
!1365 = !DILocation(line: 248, column: 5, scope: !1360)
!1366 = !DILocation(line: 249, column: 30, scope: !1353)
!1367 = !DILocation(line: 249, column: 3, scope: !1353)
!1368 = !DILocation(line: 250, column: 3, scope: !1353)
!1369 = distinct !DISubprogram(name: "MagickGetException", scope: !1095, file: !1095, line: 278, type: !1370, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1373)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!595, !938, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1373 = !{!1374, !1375, !1376}
!1374 = !DILocalVariable(name: "wand", arg: 1, scope: !1369, file: !1095, line: 278, type: !938)
!1375 = !DILocalVariable(name: "severity", arg: 2, scope: !1369, file: !1095, line: 279, type: !1372)
!1376 = !DILocalVariable(name: "description", scope: !1369, file: !1095, line: 282, type: !595)
!1377 = !DILocation(line: 0, scope: !1369)
!1378 = !DILocation(line: 286, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1369, file: !1095, line: 286, column: 7)
!1380 = !DILocation(line: 286, column: 19, scope: !1379)
!1381 = !DILocation(line: 286, column: 7, scope: !1369)
!1382 = !DILocation(line: 287, column: 66, scope: !1379)
!1383 = !DILocation(line: 287, column: 12, scope: !1379)
!1384 = !DILocation(line: 287, column: 5, scope: !1379)
!1385 = !DILocation(line: 289, column: 19, scope: !1369)
!1386 = !DILocation(line: 289, column: 30, scope: !1369)
!1387 = !{!1388, !1106, i64 0}
!1388 = !{!"_ExceptionInfo", !1106, i64 0, !1389, i64 4, !1108, i64 8, !1108, i64 16, !1108, i64 24, !1106, i64 32, !1108, i64 40, !1105, i64 48}
!1389 = !{!"int", !1106, i64 0}
!1390 = !DILocation(line: 289, column: 12, scope: !1369)
!1391 = !{!1106, !1106, i64 0}
!1392 = !DILocation(line: 290, column: 24, scope: !1369)
!1393 = !DILocation(line: 292, column: 19, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1369, file: !1095, line: 292, column: 7)
!1395 = !DILocation(line: 292, column: 7, scope: !1369)
!1396 = !DILocation(line: 294, column: 41, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !1095, line: 293, column: 5)
!1398 = !DILocation(line: 295, column: 47, scope: !1397)
!1399 = !DILocation(line: 294, column: 14, scope: !1397)
!1400 = !DILocation(line: 296, column: 7, scope: !1397)
!1401 = !DILocation(line: 298, column: 15, scope: !1369)
!1402 = !DILocation(line: 299, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1369, file: !1095, line: 299, column: 7)
!1404 = !DILocation(line: 299, column: 24, scope: !1403)
!1405 = !{!1388, !1108, i64 8}
!1406 = !DILocation(line: 299, column: 31, scope: !1403)
!1407 = !DILocation(line: 299, column: 7, scope: !1369)
!1408 = !DILocation(line: 301, column: 24, scope: !1403)
!1409 = !DILocation(line: 300, column: 41, scope: !1403)
!1410 = !DILocation(line: 300, column: 12, scope: !1403)
!1411 = !DILocation(line: 302, column: 13, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1369, file: !1095, line: 302, column: 7)
!1413 = !DILocation(line: 300, column: 5, scope: !1403)
!1414 = !DILocation(line: 302, column: 24, scope: !1412)
!1415 = !{!1388, !1108, i64 16}
!1416 = !DILocation(line: 302, column: 36, scope: !1412)
!1417 = !DILocation(line: 302, column: 7, scope: !1369)
!1418 = !DILocation(line: 304, column: 14, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1412, file: !1095, line: 303, column: 5)
!1420 = !DILocation(line: 306, column: 15, scope: !1419)
!1421 = !DILocation(line: 306, column: 26, scope: !1419)
!1422 = !DILocation(line: 306, column: 52, scope: !1419)
!1423 = !DILocation(line: 305, column: 50, scope: !1419)
!1424 = !DILocation(line: 305, column: 14, scope: !1419)
!1425 = !DILocation(line: 307, column: 14, scope: !1419)
!1426 = !DILocation(line: 308, column: 5, scope: !1419)
!1427 = !DILocation(line: 310, column: 1, scope: !1369)
!1428 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1235, file: !1235, line: 42, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!572, !860, !860}
!1431 = !DISubprogram(name: "CopyMagickString", scope: !1350, file: !1350, line: 78, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!561, !595, !779, !860}
!1434 = !DISubprogram(name: "GetLocaleExceptionMessage", scope: !4, file: !4, line: 140, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!779, !1242, !779}
!1437 = !DISubprogram(name: "ConcatenateMagickString", scope: !1350, file: !1350, line: 76, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1438 = distinct !DISubprogram(name: "MagickGetExceptionType", scope: !1095, file: !1095, line: 335, type: !1439, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!591, !938}
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "wand", arg: 1, scope: !1438, file: !1095, line: 335, type: !938)
!1443 = !DILocation(line: 0, scope: !1438)
!1444 = !DILocation(line: 339, column: 13, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !1095, line: 339, column: 7)
!1446 = !DILocation(line: 339, column: 19, scope: !1445)
!1447 = !DILocation(line: 339, column: 7, scope: !1438)
!1448 = !DILocation(line: 340, column: 66, scope: !1445)
!1449 = !DILocation(line: 340, column: 12, scope: !1445)
!1450 = !DILocation(line: 340, column: 5, scope: !1445)
!1451 = !DILocation(line: 341, column: 16, scope: !1438)
!1452 = !DILocation(line: 341, column: 27, scope: !1438)
!1453 = !DILocation(line: 341, column: 3, scope: !1438)
!1454 = distinct !DISubprogram(name: "MagickGetIteratorIndex", scope: !1095, file: !1095, line: 367, type: !1455, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!661, !573}
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "wand", arg: 1, scope: !1454, file: !1095, line: 367, type: !573)
!1459 = !DILocation(line: 0, scope: !1454)
!1460 = !DILocation(line: 371, column: 13, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !1095, line: 371, column: 7)
!1462 = !DILocation(line: 371, column: 19, scope: !1461)
!1463 = !DILocation(line: 371, column: 7, scope: !1454)
!1464 = !DILocation(line: 372, column: 66, scope: !1461)
!1465 = !DILocation(line: 372, column: 12, scope: !1461)
!1466 = !DILocation(line: 372, column: 5, scope: !1461)
!1467 = !DILocation(line: 373, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !1095, line: 373, column: 7)
!1469 = !DILocation(line: 373, column: 20, scope: !1468)
!1470 = !DILocation(line: 373, column: 7, scope: !1454)
!1471 = !DILocation(line: 375, column: 41, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !1095, line: 374, column: 5)
!1473 = !DILocation(line: 376, column: 44, scope: !1472)
!1474 = !DILocation(line: 375, column: 14, scope: !1472)
!1475 = !DILocation(line: 377, column: 7, scope: !1472)
!1476 = !DILocation(line: 379, column: 10, scope: !1454)
!1477 = !DILocation(line: 379, column: 3, scope: !1454)
!1478 = !DILocation(line: 380, column: 1, scope: !1454)
!1479 = !DISubprogram(name: "GetImageIndexInList", scope: !1155, file: !1155, line: 48, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!661, !856}
!1482 = distinct !DISubprogram(name: "MagickQueryConfigureOption", scope: !1095, file: !1095, line: 405, type: !1483, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!595, !779}
!1485 = !{!1486, !1487, !1488, !1489, !1490}
!1486 = !DILocalVariable(name: "option", arg: 1, scope: !1482, file: !1095, line: 405, type: !779)
!1487 = !DILocalVariable(name: "value", scope: !1482, file: !1095, line: 408, type: !595)
!1488 = !DILocalVariable(name: "configure_info", scope: !1482, file: !1095, line: 411, type: !940)
!1489 = !DILocalVariable(name: "exception", scope: !1482, file: !1095, line: 414, type: !586)
!1490 = !DILocalVariable(name: "number_options", scope: !1482, file: !1095, line: 417, type: !561)
!1491 = !DILocation(line: 0, scope: !1482)
!1492 = !DILocation(line: 416, column: 3, scope: !1482)
!1493 = !DILocation(line: 419, column: 13, scope: !1482)
!1494 = !DILocation(line: 420, column: 18, scope: !1482)
!1495 = !DILocation(line: 421, column: 13, scope: !1482)
!1496 = !DILocation(line: 422, column: 22, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1482, file: !1095, line: 422, column: 7)
!1498 = !DILocation(line: 422, column: 7, scope: !1482)
!1499 = !DILocation(line: 424, column: 23, scope: !1482)
!1500 = !{!1108, !1108, i64 0}
!1501 = !DILocation(line: 424, column: 42, scope: !1482)
!1502 = !{!1503, !1108, i64 16}
!1503 = !{!"_ConfigureInfo", !1108, i64 0, !1108, i64 8, !1108, i64 16, !1106, i64 24, !1106, i64 28, !1108, i64 32, !1108, i64 40, !1105, i64 48}
!1504 = !DILocation(line: 424, column: 9, scope: !1482)
!1505 = !DILocation(line: 426, column: 5, scope: !1482)
!1506 = !DILocation(line: 427, column: 3, scope: !1482)
!1507 = !DILocation(line: 428, column: 1, scope: !1482)
!1508 = !DISubprogram(name: "GetConfigureInfoList", scope: !944, file: !944, line: 55, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!940, !779, !1511, !586}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!1512 = !DISubprogram(name: "AcquireString", scope: !1350, file: !1350, line: 43, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1513 = distinct !DISubprogram(name: "MagickQueryConfigureOptions", scope: !1095, file: !1095, line: 458, type: !1514, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1517)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1516, !779, !1511}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!1517 = !{!1518, !1519, !1520, !1521}
!1518 = !DILocalVariable(name: "pattern", arg: 1, scope: !1513, file: !1095, line: 458, type: !779)
!1519 = !DILocalVariable(name: "number_options", arg: 2, scope: !1513, file: !1095, line: 459, type: !1511)
!1520 = !DILocalVariable(name: "options", scope: !1513, file: !1095, line: 462, type: !1516)
!1521 = !DILocalVariable(name: "exception", scope: !1513, file: !1095, line: 465, type: !586)
!1522 = !DILocation(line: 0, scope: !1513)
!1523 = !DILocation(line: 467, column: 13, scope: !1513)
!1524 = !DILocation(line: 468, column: 11, scope: !1513)
!1525 = !DILocation(line: 469, column: 13, scope: !1513)
!1526 = !DILocation(line: 470, column: 3, scope: !1513)
!1527 = !DISubprogram(name: "GetConfigureList", scope: !944, file: !944, line: 47, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1516, !779, !1511, !586}
!1530 = distinct !DISubprogram(name: "MagickQueryFontMetrics", scope: !1095, file: !1095, line: 517, type: !1531, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1538)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!956, !573, !1533, !779}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "DrawingWand", file: !1536, line: 28, baseType: !1537)
!1536 = !DIFile(filename: "apps/538.imagick_r/src/wand/drawing-wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "441f6e8459fa09d8c2e29ef53b62f3d8")
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DrawingWand", file: !1536, line: 27, flags: DIFlagFwdDecl)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1539 = !DILocalVariable(name: "wand", arg: 1, scope: !1530, file: !1095, line: 517, type: !573)
!1540 = !DILocalVariable(name: "drawing_wand", arg: 2, scope: !1530, file: !1095, line: 518, type: !1533)
!1541 = !DILocalVariable(name: "text", arg: 3, scope: !1530, file: !1095, line: 518, type: !779)
!1542 = !DILocalVariable(name: "font_metrics", scope: !1530, file: !1095, line: 521, type: !956)
!1543 = !DILocalVariable(name: "draw_info", scope: !1530, file: !1095, line: 524, type: !957)
!1544 = !DILocalVariable(name: "status", scope: !1530, file: !1095, line: 527, type: !565)
!1545 = !DILocalVariable(name: "metrics", scope: !1530, file: !1095, line: 530, type: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypeMetric", file: !477, line: 372, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TypeMetric", file: !477, line: 353, size: 960, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pixels_per_em", scope: !1547, file: !477, line: 356, baseType: !1021, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !1547, file: !477, line: 359, baseType: !638, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !1547, file: !477, line: 360, baseType: !638, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1547, file: !477, line: 361, baseType: !638, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1547, file: !477, line: 362, baseType: !638, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance", scope: !1547, file: !477, line: 363, baseType: !638, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "underline_position", scope: !1547, file: !477, line: 364, baseType: !638, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "underline_thickness", scope: !1547, file: !477, line: 365, baseType: !638, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1547, file: !477, line: 368, baseType: !986, size: 256, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1547, file: !477, line: 371, baseType: !1021, size: 128, offset: 832)
!1559 = !DILocation(line: 0, scope: !1530)
!1560 = !DILocation(line: 529, column: 3, scope: !1530)
!1561 = !DILocation(line: 530, column: 5, scope: !1530)
!1562 = !DILocation(line: 534, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1530, file: !1095, line: 534, column: 7)
!1564 = !DILocation(line: 534, column: 19, scope: !1563)
!1565 = !DILocation(line: 534, column: 7, scope: !1530)
!1566 = !DILocation(line: 535, column: 66, scope: !1563)
!1567 = !DILocation(line: 535, column: 12, scope: !1563)
!1568 = !DILocation(line: 535, column: 5, scope: !1563)
!1569 = !DILocation(line: 537, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1530, file: !1095, line: 537, column: 7)
!1571 = !DILocation(line: 537, column: 20, scope: !1570)
!1572 = !DILocation(line: 537, column: 7, scope: !1530)
!1573 = !DILocation(line: 539, column: 41, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !1095, line: 538, column: 5)
!1575 = !DILocation(line: 540, column: 41, scope: !1574)
!1576 = !DILocation(line: 539, column: 14, scope: !1574)
!1577 = !DILocation(line: 541, column: 7, scope: !1574)
!1578 = !DILocation(line: 543, column: 27, scope: !1530)
!1579 = !DILocation(line: 544, column: 20, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1530, file: !1095, line: 544, column: 7)
!1581 = !DILocation(line: 544, column: 7, scope: !1530)
!1582 = !DILocation(line: 546, column: 13, scope: !1530)
!1583 = !DILocation(line: 547, column: 17, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1530, file: !1095, line: 547, column: 7)
!1585 = !DILocation(line: 547, column: 7, scope: !1530)
!1586 = !DILocation(line: 549, column: 31, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !1095, line: 548, column: 5)
!1588 = !DILocation(line: 550, column: 7, scope: !1587)
!1589 = !DILocation(line: 552, column: 34, scope: !1530)
!1590 = !DILocation(line: 552, column: 10, scope: !1530)
!1591 = !DILocation(line: 553, column: 10, scope: !1530)
!1592 = !DILocation(line: 554, column: 31, scope: !1530)
!1593 = !DILocation(line: 554, column: 10, scope: !1530)
!1594 = !DILocation(line: 555, column: 13, scope: !1530)
!1595 = !DILocation(line: 556, column: 14, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1530, file: !1095, line: 556, column: 7)
!1597 = !DILocation(line: 556, column: 7, scope: !1530)
!1598 = !DILocation(line: 558, column: 30, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !1095, line: 557, column: 5)
!1600 = !DILocation(line: 558, column: 47, scope: !1599)
!1601 = !DILocation(line: 558, column: 55, scope: !1599)
!1602 = !DILocation(line: 558, column: 7, scope: !1599)
!1603 = !DILocation(line: 559, column: 31, scope: !1599)
!1604 = !DILocation(line: 560, column: 7, scope: !1599)
!1605 = !DILocation(line: 562, column: 41, scope: !1530)
!1606 = !{!1607, !1609, i64 0}
!1607 = !{!"_TypeMetric", !1608, i64 0, !1609, i64 16, !1609, i64 24, !1609, i64 32, !1609, i64 40, !1609, i64 48, !1609, i64 56, !1609, i64 64, !1610, i64 72, !1608, i64 104}
!1608 = !{!"_PointInfo", !1609, i64 0, !1609, i64 8}
!1609 = !{!"double", !1106, i64 0}
!1610 = !{!"_SegmentInfo", !1609, i64 0, !1609, i64 8, !1609, i64 16, !1609, i64 24}
!1611 = !DILocation(line: 562, column: 18, scope: !1530)
!1612 = !{!1609, !1609, i64 0}
!1613 = !DILocation(line: 563, column: 41, scope: !1530)
!1614 = !{!1607, !1609, i64 8}
!1615 = !DILocation(line: 563, column: 3, scope: !1530)
!1616 = !DILocation(line: 563, column: 18, scope: !1530)
!1617 = !DILocation(line: 564, column: 27, scope: !1530)
!1618 = !{!1607, !1609, i64 16}
!1619 = !DILocation(line: 564, column: 3, scope: !1530)
!1620 = !DILocation(line: 564, column: 18, scope: !1530)
!1621 = !DILocation(line: 565, column: 27, scope: !1530)
!1622 = !{!1607, !1609, i64 24}
!1623 = !DILocation(line: 565, column: 3, scope: !1530)
!1624 = !DILocation(line: 565, column: 18, scope: !1530)
!1625 = !DILocation(line: 566, column: 27, scope: !1530)
!1626 = !{!1607, !1609, i64 32}
!1627 = !DILocation(line: 566, column: 3, scope: !1530)
!1628 = !DILocation(line: 566, column: 18, scope: !1530)
!1629 = !DILocation(line: 567, column: 27, scope: !1530)
!1630 = !{!1607, !1609, i64 40}
!1631 = !DILocation(line: 567, column: 3, scope: !1530)
!1632 = !DILocation(line: 567, column: 18, scope: !1530)
!1633 = !DILocation(line: 568, column: 27, scope: !1530)
!1634 = !{!1607, !1609, i64 48}
!1635 = !DILocation(line: 568, column: 3, scope: !1530)
!1636 = !DILocation(line: 568, column: 18, scope: !1530)
!1637 = !DILocation(line: 569, column: 27, scope: !1530)
!1638 = !DILocation(line: 569, column: 34, scope: !1530)
!1639 = !{!1607, !1609, i64 72}
!1640 = !DILocation(line: 569, column: 3, scope: !1530)
!1641 = !DILocation(line: 569, column: 18, scope: !1530)
!1642 = !DILocation(line: 570, column: 34, scope: !1530)
!1643 = !{!1607, !1609, i64 80}
!1644 = !DILocation(line: 570, column: 3, scope: !1530)
!1645 = !DILocation(line: 570, column: 18, scope: !1530)
!1646 = !DILocation(line: 571, column: 34, scope: !1530)
!1647 = !{!1607, !1609, i64 88}
!1648 = !DILocation(line: 571, column: 3, scope: !1530)
!1649 = !DILocation(line: 571, column: 18, scope: !1530)
!1650 = !DILocation(line: 572, column: 35, scope: !1530)
!1651 = !{!1607, !1609, i64 96}
!1652 = !DILocation(line: 572, column: 3, scope: !1530)
!1653 = !DILocation(line: 572, column: 19, scope: !1530)
!1654 = !DILocation(line: 573, column: 28, scope: !1530)
!1655 = !DILocation(line: 573, column: 35, scope: !1530)
!1656 = !{!1607, !1609, i64 104}
!1657 = !DILocation(line: 573, column: 3, scope: !1530)
!1658 = !DILocation(line: 573, column: 19, scope: !1530)
!1659 = !DILocation(line: 574, column: 35, scope: !1530)
!1660 = !{!1607, !1609, i64 112}
!1661 = !DILocation(line: 574, column: 3, scope: !1530)
!1662 = !DILocation(line: 574, column: 19, scope: !1530)
!1663 = !DILocation(line: 575, column: 3, scope: !1530)
!1664 = !DILocation(line: 576, column: 1, scope: !1530)
!1665 = !DISubprogram(name: "PeekDrawingWand", scope: !1536, file: !1536, line: 63, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!957, !1533}
!1668 = !DISubprogram(name: "CloneString", scope: !1350, file: !1350, line: 44, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!595, !1516, !779}
!1671 = !DISubprogram(name: "GetTypeMetrics", scope: !1672, file: !1672, line: 31, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1672 = !DIFile(filename: "apps/538.imagick_r/src/magick/annotate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "31b56aa83cbe48792cad832046a8451e")
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!565, !673, !1675, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1678 = !DISubprogram(name: "DestroyDrawInfo", scope: !477, file: !477, line: 377, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!957, !957}
!1681 = distinct !DISubprogram(name: "MagickQueryMultilineFontMetrics", scope: !1095, file: !1095, line: 625, type: !1531, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1683 = !DILocalVariable(name: "wand", arg: 1, scope: !1681, file: !1095, line: 625, type: !573)
!1684 = !DILocalVariable(name: "drawing_wand", arg: 2, scope: !1681, file: !1095, line: 626, type: !1533)
!1685 = !DILocalVariable(name: "text", arg: 3, scope: !1681, file: !1095, line: 626, type: !779)
!1686 = !DILocalVariable(name: "font_metrics", scope: !1681, file: !1095, line: 629, type: !956)
!1687 = !DILocalVariable(name: "draw_info", scope: !1681, file: !1095, line: 632, type: !957)
!1688 = !DILocalVariable(name: "status", scope: !1681, file: !1095, line: 635, type: !565)
!1689 = !DILocalVariable(name: "metrics", scope: !1681, file: !1095, line: 638, type: !1546)
!1690 = !DILocation(line: 0, scope: !1681)
!1691 = !DILocation(line: 637, column: 3, scope: !1681)
!1692 = !DILocation(line: 638, column: 5, scope: !1681)
!1693 = !DILocation(line: 642, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1681, file: !1095, line: 642, column: 7)
!1695 = !DILocation(line: 642, column: 19, scope: !1694)
!1696 = !DILocation(line: 642, column: 7, scope: !1681)
!1697 = !DILocation(line: 643, column: 66, scope: !1694)
!1698 = !DILocation(line: 643, column: 12, scope: !1694)
!1699 = !DILocation(line: 643, column: 5, scope: !1694)
!1700 = !DILocation(line: 645, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1681, file: !1095, line: 645, column: 7)
!1702 = !DILocation(line: 645, column: 20, scope: !1701)
!1703 = !DILocation(line: 645, column: 7, scope: !1681)
!1704 = !DILocation(line: 647, column: 41, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !1095, line: 646, column: 5)
!1706 = !DILocation(line: 648, column: 41, scope: !1705)
!1707 = !DILocation(line: 647, column: 14, scope: !1705)
!1708 = !DILocation(line: 649, column: 7, scope: !1705)
!1709 = !DILocation(line: 651, column: 27, scope: !1681)
!1710 = !DILocation(line: 652, column: 20, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1681, file: !1095, line: 652, column: 7)
!1712 = !DILocation(line: 652, column: 7, scope: !1681)
!1713 = !DILocation(line: 654, column: 13, scope: !1681)
!1714 = !DILocation(line: 655, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1681, file: !1095, line: 655, column: 7)
!1716 = !DILocation(line: 655, column: 7, scope: !1681)
!1717 = !DILocation(line: 657, column: 31, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !1095, line: 656, column: 5)
!1719 = !DILocation(line: 658, column: 7, scope: !1718)
!1720 = !DILocation(line: 660, column: 34, scope: !1681)
!1721 = !DILocation(line: 660, column: 10, scope: !1681)
!1722 = !DILocation(line: 661, column: 10, scope: !1681)
!1723 = !DILocation(line: 662, column: 40, scope: !1681)
!1724 = !DILocation(line: 662, column: 10, scope: !1681)
!1725 = !DILocation(line: 663, column: 13, scope: !1681)
!1726 = !DILocation(line: 664, column: 14, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1681, file: !1095, line: 664, column: 7)
!1728 = !DILocation(line: 664, column: 7, scope: !1681)
!1729 = !DILocation(line: 666, column: 30, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !1095, line: 665, column: 5)
!1731 = !DILocation(line: 666, column: 47, scope: !1730)
!1732 = !DILocation(line: 666, column: 55, scope: !1730)
!1733 = !DILocation(line: 666, column: 7, scope: !1730)
!1734 = !DILocation(line: 667, column: 31, scope: !1730)
!1735 = !DILocation(line: 668, column: 7, scope: !1730)
!1736 = !DILocation(line: 670, column: 41, scope: !1681)
!1737 = !DILocation(line: 670, column: 18, scope: !1681)
!1738 = !DILocation(line: 671, column: 41, scope: !1681)
!1739 = !DILocation(line: 671, column: 3, scope: !1681)
!1740 = !DILocation(line: 671, column: 18, scope: !1681)
!1741 = !DILocation(line: 672, column: 27, scope: !1681)
!1742 = !DILocation(line: 672, column: 3, scope: !1681)
!1743 = !DILocation(line: 672, column: 18, scope: !1681)
!1744 = !DILocation(line: 673, column: 27, scope: !1681)
!1745 = !DILocation(line: 673, column: 3, scope: !1681)
!1746 = !DILocation(line: 673, column: 18, scope: !1681)
!1747 = !DILocation(line: 674, column: 27, scope: !1681)
!1748 = !DILocation(line: 674, column: 3, scope: !1681)
!1749 = !DILocation(line: 674, column: 18, scope: !1681)
!1750 = !DILocation(line: 675, column: 27, scope: !1681)
!1751 = !DILocation(line: 675, column: 3, scope: !1681)
!1752 = !DILocation(line: 675, column: 18, scope: !1681)
!1753 = !DILocation(line: 676, column: 27, scope: !1681)
!1754 = !DILocation(line: 676, column: 3, scope: !1681)
!1755 = !DILocation(line: 676, column: 18, scope: !1681)
!1756 = !DILocation(line: 677, column: 27, scope: !1681)
!1757 = !DILocation(line: 677, column: 34, scope: !1681)
!1758 = !DILocation(line: 677, column: 3, scope: !1681)
!1759 = !DILocation(line: 677, column: 18, scope: !1681)
!1760 = !DILocation(line: 678, column: 34, scope: !1681)
!1761 = !DILocation(line: 678, column: 3, scope: !1681)
!1762 = !DILocation(line: 678, column: 18, scope: !1681)
!1763 = !DILocation(line: 679, column: 34, scope: !1681)
!1764 = !DILocation(line: 679, column: 3, scope: !1681)
!1765 = !DILocation(line: 679, column: 18, scope: !1681)
!1766 = !DILocation(line: 680, column: 35, scope: !1681)
!1767 = !DILocation(line: 680, column: 3, scope: !1681)
!1768 = !DILocation(line: 680, column: 19, scope: !1681)
!1769 = !DILocation(line: 681, column: 28, scope: !1681)
!1770 = !DILocation(line: 681, column: 35, scope: !1681)
!1771 = !DILocation(line: 681, column: 3, scope: !1681)
!1772 = !DILocation(line: 681, column: 19, scope: !1681)
!1773 = !DILocation(line: 682, column: 35, scope: !1681)
!1774 = !DILocation(line: 682, column: 3, scope: !1681)
!1775 = !DILocation(line: 682, column: 19, scope: !1681)
!1776 = !DILocation(line: 683, column: 3, scope: !1681)
!1777 = !DILocation(line: 684, column: 1, scope: !1681)
!1778 = !DISubprogram(name: "GetMultilineTypeMetrics", scope: !1672, file: !1672, line: 30, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1779 = distinct !DISubprogram(name: "MagickQueryFonts", scope: !1095, file: !1095, line: 712, type: !1514, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1780)
!1780 = !{!1781, !1782, !1783, !1784}
!1781 = !DILocalVariable(name: "pattern", arg: 1, scope: !1779, file: !1095, line: 712, type: !779)
!1782 = !DILocalVariable(name: "number_fonts", arg: 2, scope: !1779, file: !1095, line: 713, type: !1511)
!1783 = !DILocalVariable(name: "fonts", scope: !1779, file: !1095, line: 716, type: !1516)
!1784 = !DILocalVariable(name: "exception", scope: !1779, file: !1095, line: 719, type: !586)
!1785 = !DILocation(line: 0, scope: !1779)
!1786 = !DILocation(line: 721, column: 13, scope: !1779)
!1787 = !DILocation(line: 722, column: 9, scope: !1779)
!1788 = !DILocation(line: 723, column: 13, scope: !1779)
!1789 = !DILocation(line: 724, column: 3, scope: !1779)
!1790 = !DISubprogram(name: "GetTypeList", scope: !513, file: !513, line: 88, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1791 = distinct !DISubprogram(name: "MagickQueryFormats", scope: !1095, file: !1095, line: 754, type: !1514, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1792)
!1792 = !{!1793, !1794, !1795, !1796}
!1793 = !DILocalVariable(name: "pattern", arg: 1, scope: !1791, file: !1095, line: 754, type: !779)
!1794 = !DILocalVariable(name: "number_formats", arg: 2, scope: !1791, file: !1095, line: 755, type: !1511)
!1795 = !DILocalVariable(name: "formats", scope: !1791, file: !1095, line: 758, type: !1516)
!1796 = !DILocalVariable(name: "exception", scope: !1791, file: !1095, line: 761, type: !586)
!1797 = !DILocation(line: 0, scope: !1791)
!1798 = !DILocation(line: 763, column: 13, scope: !1791)
!1799 = !DILocation(line: 764, column: 11, scope: !1791)
!1800 = !DILocation(line: 765, column: 13, scope: !1791)
!1801 = !DILocation(line: 766, column: 3, scope: !1791)
!1802 = !DISubprogram(name: "GetMagickList", scope: !1803, file: !1803, line: 106, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1803 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1804 = distinct !DISubprogram(name: "MagickRelinquishMemory", scope: !1095, file: !1095, line: 792, type: !1329, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1805)
!1805 = !{!1806}
!1806 = !DILocalVariable(name: "memory", arg: 1, scope: !1804, file: !1095, line: 792, type: !572)
!1807 = !DILocation(line: 0, scope: !1804)
!1808 = !DILocation(line: 794, column: 10, scope: !1804)
!1809 = !DILocation(line: 795, column: 10, scope: !1804)
!1810 = !DILocation(line: 795, column: 3, scope: !1804)
!1811 = distinct !DISubprogram(name: "MagickResetIterator", scope: !1095, file: !1095, line: 830, type: !1096, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1812)
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "wand", arg: 1, scope: !1811, file: !1095, line: 830, type: !573)
!1814 = !DILocation(line: 0, scope: !1811)
!1815 = !DILocation(line: 834, column: 13, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !1095, line: 834, column: 7)
!1817 = !DILocation(line: 834, column: 19, scope: !1816)
!1818 = !DILocation(line: 834, column: 7, scope: !1811)
!1819 = !DILocation(line: 835, column: 66, scope: !1816)
!1820 = !DILocation(line: 835, column: 12, scope: !1816)
!1821 = !DILocation(line: 835, column: 5, scope: !1816)
!1822 = !DILocation(line: 836, column: 42, scope: !1811)
!1823 = !DILocation(line: 836, column: 16, scope: !1811)
!1824 = !DILocation(line: 836, column: 15, scope: !1811)
!1825 = !DILocation(line: 837, column: 9, scope: !1811)
!1826 = !DILocation(line: 837, column: 22, scope: !1811)
!1827 = !DILocation(line: 838, column: 9, scope: !1811)
!1828 = !DILocation(line: 838, column: 22, scope: !1811)
!1829 = !DILocation(line: 839, column: 1, scope: !1811)
!1830 = !DISubprogram(name: "GetFirstImageInList", scope: !1155, file: !1155, line: 30, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!673, !856}
!1833 = distinct !DISubprogram(name: "MagickSetFirstIterator", scope: !1095, file: !1095, line: 874, type: !1096, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1834)
!1834 = !{!1835}
!1835 = !DILocalVariable(name: "wand", arg: 1, scope: !1833, file: !1095, line: 874, type: !573)
!1836 = !DILocation(line: 0, scope: !1833)
!1837 = !DILocation(line: 878, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !1095, line: 878, column: 7)
!1839 = !DILocation(line: 878, column: 19, scope: !1838)
!1840 = !DILocation(line: 878, column: 7, scope: !1833)
!1841 = !DILocation(line: 879, column: 66, scope: !1838)
!1842 = !DILocation(line: 879, column: 12, scope: !1838)
!1843 = !DILocation(line: 879, column: 5, scope: !1838)
!1844 = !DILocation(line: 880, column: 42, scope: !1833)
!1845 = !DILocation(line: 880, column: 16, scope: !1833)
!1846 = !DILocation(line: 880, column: 15, scope: !1833)
!1847 = !DILocation(line: 881, column: 9, scope: !1833)
!1848 = !DILocation(line: 881, column: 22, scope: !1833)
!1849 = !DILocation(line: 882, column: 9, scope: !1833)
!1850 = !DILocation(line: 882, column: 22, scope: !1833)
!1851 = !DILocation(line: 883, column: 1, scope: !1833)
!1852 = distinct !DISubprogram(name: "MagickSetIteratorIndex", scope: !1095, file: !1095, line: 926, type: !1853, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1856)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!565, !573, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!1856 = !{!1857, !1858, !1859}
!1857 = !DILocalVariable(name: "wand", arg: 1, scope: !1852, file: !1095, line: 926, type: !573)
!1858 = !DILocalVariable(name: "index", arg: 2, scope: !1852, file: !1095, line: 927, type: !1855)
!1859 = !DILocalVariable(name: "image", scope: !1852, file: !1095, line: 930, type: !673)
!1860 = !DILocation(line: 0, scope: !1852)
!1861 = !DILocation(line: 934, column: 13, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !1095, line: 934, column: 7)
!1863 = !DILocation(line: 934, column: 19, scope: !1862)
!1864 = !DILocation(line: 934, column: 7, scope: !1852)
!1865 = !DILocation(line: 935, column: 66, scope: !1862)
!1866 = !DILocation(line: 935, column: 12, scope: !1862)
!1867 = !DILocation(line: 935, column: 5, scope: !1862)
!1868 = !DILocation(line: 936, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1852, file: !1095, line: 936, column: 7)
!1870 = !DILocation(line: 936, column: 20, scope: !1869)
!1871 = !DILocation(line: 936, column: 7, scope: !1852)
!1872 = !DILocation(line: 938, column: 9, scope: !1852)
!1873 = !DILocation(line: 939, column: 13, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1852, file: !1095, line: 939, column: 7)
!1875 = !DILocation(line: 939, column: 7, scope: !1852)
!1876 = !DILocation(line: 941, column: 30, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !1095, line: 940, column: 5)
!1878 = !DILocation(line: 941, column: 47, scope: !1877)
!1879 = !DILocation(line: 941, column: 55, scope: !1877)
!1880 = !DILocation(line: 941, column: 7, scope: !1877)
!1881 = !DILocation(line: 942, column: 7, scope: !1877)
!1882 = !DILocation(line: 944, column: 15, scope: !1852)
!1883 = !DILocation(line: 945, column: 9, scope: !1852)
!1884 = !DILocation(line: 945, column: 22, scope: !1852)
!1885 = !DILocation(line: 946, column: 9, scope: !1852)
!1886 = !DILocation(line: 946, column: 22, scope: !1852)
!1887 = !DILocation(line: 947, column: 3, scope: !1852)
!1888 = !DILocation(line: 948, column: 1, scope: !1852)
!1889 = !DISubprogram(name: "GetImageFromList", scope: !1155, file: !1155, line: 31, type: !1890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!673, !856, !1855}
!1892 = distinct !DISubprogram(name: "MagickSetLastIterator", scope: !1095, file: !1095, line: 980, type: !1096, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "wand", arg: 1, scope: !1892, file: !1095, line: 980, type: !573)
!1895 = !DILocation(line: 0, scope: !1892)
!1896 = !DILocation(line: 984, column: 13, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !1095, line: 984, column: 7)
!1898 = !DILocation(line: 984, column: 19, scope: !1897)
!1899 = !DILocation(line: 984, column: 7, scope: !1892)
!1900 = !DILocation(line: 985, column: 66, scope: !1897)
!1901 = !DILocation(line: 985, column: 12, scope: !1897)
!1902 = !DILocation(line: 985, column: 5, scope: !1897)
!1903 = !DILocation(line: 986, column: 41, scope: !1892)
!1904 = !DILocation(line: 986, column: 16, scope: !1892)
!1905 = !DILocation(line: 986, column: 15, scope: !1892)
!1906 = !DILocation(line: 987, column: 9, scope: !1892)
!1907 = !DILocation(line: 987, column: 22, scope: !1892)
!1908 = !DILocation(line: 988, column: 9, scope: !1892)
!1909 = !DILocation(line: 988, column: 22, scope: !1892)
!1910 = !DILocation(line: 989, column: 1, scope: !1892)
!1911 = !DISubprogram(name: "GetLastImageInList", scope: !1155, file: !1155, line: 32, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1912 = distinct !DISubprogram(name: "MagickWandGenesis", scope: !1095, file: !1095, line: 1009, type: !1248, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1147)
!1913 = !DILocation(line: 1011, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !1095, line: 1011, column: 7)
!1915 = !DILocation(line: 1011, column: 34, scope: !1914)
!1916 = !DILocation(line: 1011, column: 7, scope: !1912)
!1917 = !DILocation(line: 1012, column: 5, scope: !1914)
!1918 = !DILocation(line: 1013, column: 1, scope: !1912)
!1919 = !DISubprogram(name: "IsMagickCoreInstantiated", scope: !1803, file: !1803, line: 129, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1920 = !DISubprogram(name: "MagickCoreGenesis", scope: !1803, file: !1803, line: 146, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !779, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!1924 = !DISubprogram(name: "DestroyWandIds", scope: !1257, file: !1257, line: 29, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1925 = !DISubprogram(name: "MagickCoreTerminus", scope: !1803, file: !1803, line: 147, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1926 = distinct !DISubprogram(name: "NewMagickWand", scope: !1095, file: !1095, line: 1060, type: !1927, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!573}
!1929 = !{!1930, !1931, !1932, !1933, !1936}
!1930 = !DILocalVariable(name: "quantum", scope: !1926, file: !1095, line: 1063, type: !779)
!1931 = !DILocalVariable(name: "wand", scope: !1926, file: !1095, line: 1066, type: !573)
!1932 = !DILocalVariable(name: "depth", scope: !1926, file: !1095, line: 1069, type: !561)
!1933 = !DILocalVariable(name: "exception", scope: !1934, file: !1095, line: 1074, type: !587)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1095, line: 1074, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !1095, line: 1073, column: 7)
!1936 = !DILocalVariable(name: "exception", scope: !1937, file: !1095, line: 1077, type: !587)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1095, line: 1077, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1926, file: !1095, line: 1076, column: 7)
!1939 = !DILocation(line: 1068, column: 3, scope: !1926)
!1940 = !DILocation(line: 0, scope: !1926)
!1941 = !DILocation(line: 1071, column: 8, scope: !1926)
!1942 = !{!1105, !1105, i64 0}
!1943 = !DILocation(line: 1072, column: 11, scope: !1926)
!1944 = !DILocation(line: 1073, column: 7, scope: !1935)
!1945 = !DILocation(line: 1073, column: 13, scope: !1935)
!1946 = !DILocation(line: 1073, column: 7, scope: !1926)
!1947 = !DILocation(line: 1074, column: 5, scope: !1934)
!1948 = !DILocation(line: 1075, column: 23, scope: !1926)
!1949 = !DILocation(line: 1076, column: 12, scope: !1938)
!1950 = !DILocation(line: 1076, column: 7, scope: !1926)
!1951 = !DILocation(line: 1077, column: 5, scope: !1937)
!1952 = !{!1389, !1389, i64 0}
!1953 = !DILocation(line: 1079, column: 10, scope: !1926)
!1954 = !DILocation(line: 1080, column: 12, scope: !1926)
!1955 = !DILocation(line: 1080, column: 11, scope: !1926)
!1956 = !DILocation(line: 1081, column: 35, scope: !1926)
!1957 = !DILocation(line: 1082, column: 5, scope: !1926)
!1958 = !DILocation(line: 1081, column: 10, scope: !1926)
!1959 = !DILocation(line: 1083, column: 16, scope: !1926)
!1960 = !DILocation(line: 1083, column: 9, scope: !1926)
!1961 = !DILocation(line: 1083, column: 15, scope: !1926)
!1962 = !DILocation(line: 1084, column: 20, scope: !1926)
!1963 = !DILocation(line: 1084, column: 9, scope: !1926)
!1964 = !DILocation(line: 1084, column: 19, scope: !1926)
!1965 = !DILocation(line: 1085, column: 19, scope: !1926)
!1966 = !DILocation(line: 1085, column: 9, scope: !1926)
!1967 = !DILocation(line: 1085, column: 18, scope: !1926)
!1968 = !DILocation(line: 1086, column: 23, scope: !1926)
!1969 = !DILocation(line: 1086, column: 9, scope: !1926)
!1970 = !DILocation(line: 1086, column: 22, scope: !1926)
!1971 = !DILocation(line: 1087, column: 15, scope: !1926)
!1972 = !DILocation(line: 1087, column: 9, scope: !1926)
!1973 = !DILocation(line: 1087, column: 14, scope: !1926)
!1974 = !DILocation(line: 1088, column: 19, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1926, file: !1095, line: 1088, column: 7)
!1976 = !DILocation(line: 1088, column: 7, scope: !1926)
!1977 = !DILocation(line: 1089, column: 12, scope: !1975)
!1978 = !DILocation(line: 1089, column: 5, scope: !1975)
!1979 = !DILocation(line: 1090, column: 9, scope: !1926)
!1980 = !DILocation(line: 1090, column: 18, scope: !1926)
!1981 = !DILocation(line: 1092, column: 1, scope: !1926)
!1982 = !DILocation(line: 1091, column: 3, scope: !1926)
!1983 = !DISubprogram(name: "GetMagickQuantumDepth", scope: !1984, file: !1984, line: 98, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1984 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!779, !1511}
!1987 = !DISubprogram(name: "GetExceptionMessage", scope: !4, file: !4, line: 137, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!595, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!1991 = !DISubprogram(name: "NewImageList", scope: !1155, file: !1155, line: 36, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!673}
!1994 = distinct !DISubprogram(name: "NewMagickWandFromImage", scope: !1095, file: !1095, line: 1116, type: !1995, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!573, !856}
!1997 = !{!1998, !1999}
!1998 = !DILocalVariable(name: "image", arg: 1, scope: !1994, file: !1095, line: 1116, type: !856)
!1999 = !DILocalVariable(name: "wand", scope: !1994, file: !1095, line: 1119, type: !573)
!2000 = !DILocation(line: 0, scope: !1994)
!2001 = !DILocation(line: 1121, column: 8, scope: !1994)
!2002 = !DILocation(line: 1122, column: 54, scope: !1994)
!2003 = !DILocation(line: 1122, column: 16, scope: !1994)
!2004 = !DILocation(line: 1122, column: 9, scope: !1994)
!2005 = !DILocation(line: 1122, column: 15, scope: !1994)
!2006 = !DILocation(line: 1123, column: 3, scope: !1994)
!2007 = !DISubprogram(name: "CloneImage", scope: !108, file: !108, line: 508, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1147)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!673, !856, !860, !860, !1923, !586}
!2010 = distinct !DISubprogram(name: "IsMagickWandInstantiated", scope: !1095, file: !1095, line: 1146, type: !1170, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1147)
!2011 = !DILocation(line: 1148, column: 10, scope: !2010)
!2012 = !DILocation(line: 1148, column: 3, scope: !2010)
